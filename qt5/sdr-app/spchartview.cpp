#include "spchartview.h"
#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "qtimer.h"
#include <QDebug>
#include <QLineSeries>
#include <QDateTime>
#include <QRandomGenerator>
#include <time.h>

SpChartView::SpChartView(QWidget *parent) : QChartView(parent)
{
    chart = new QChart();
    upper_series = new QLineSeries();
    area_series = new QAreaSeries();
    //area_series->setColor(QColorConstants::DarkBlue);
    area_series->setBorderColor(QColorConstants::DarkBlue);
    chart->legend()->hide();

    // Axis X creation
    axisXK = new QValueAxis();
    //axisXK->setRange(imin*fs, imax*fs);
    axisXK->setLabelFormat("%'d");

    // Axis Y creation
    axisY = new QValueAxis();
    ymin_view=0; ymax_view = 200;
    axisY->setRange(ymin_view, ymax_view);
    axisY->setLabelFormat("%'d");
    axisY->setTickCount(11);
    axisY->setTickInterval(10);

    // add axes to the chart
    chart->addAxis(axisXK, Qt::AlignBottom);
    chart->addAxis(axisY, Qt::AlignLeft);

    // FFTW preparation (plan)
    mFftIn  = fftw_alloc_real(FREQ_BINS * 2);
    mFftOut = fftw_alloc_real(FREQ_BINS * 2);
    mFftPlan = fftw_plan_r2r_1d(FREQ_BINS * 2, mFftIn, mFftOut, FFTW_R2HC,FFTW_ESTIMATE);

    // prepare chart
    chart->addSeries(area_series);
    this->setChart(chart);
    this->setMinimumSize(200,400); // more than half screen
    chart->setTitle("Simple line chart example");

    // initial view includes the full range
    fmax_view_hz = fmax_hz;
    fmin_view_hz = fmin_hz;

    m_crosshairs = new Crosshairs(chart);
    m_freqvline = new FreqVLine(chart);

    mouse_pressed = false;
    mw = (MainWindow *) parent->parent()->parent();

    timer = new QTimer(this);
    connect(timer, &QTimer::timeout, this, QOverload<>::of(& SpChartView::executeFFTW_setSeries));
    timer->start(300);
}

void init_fft_win(char const * window_name, double * w, unsigned n);

void SpChartView::change_fft_window(QString fft_window_name){
    QByteArray ba = fft_window_name.toLocal8Bit();
    char const * c_str = ba.data();
    init_fft_win(c_str, (double *) win_coe, FREQ_BINS * 2);
    // every time the fft window changes ...
    // ... execute the fft
    executeFFTW();
    // ... and update the chart
    setSeries();
}

void SpChartView::executeFFTW_setSeries(){

    if(!mouse_pressed && capturing_RF){
        executeFFTW();
        // update the chart
        setSeries();
    }

}

void SpChartView::executeFFTW_mockup_data()
{
    // Create an AM 50 KHz modulated carrier at 1MHz
    float fs = 64000000.0; // 32MHz
    float f0 = 1000000.0; // 1 MHz
    float fm = 50000.0;   // 50 KHz
    std::uniform_real_distribution noise_gen(-0.5, 0.5);
    for(int i= 0; i < FREQ_BINS * 2; i++){
        double mynoise = noise_gen(*QRandomGenerator::global());
        data_in[i] = mynoise + sin(6.28 * f0 * i / fs)*(1 + 0.3 * sin(6.28 * fm * i/ fs)) ;
    }

    // apply the windowing
    for(int i=0; i < FREQ_BINS * 2; i++)
        data_in[i] = data_in[i] * win_coe[i];

    // copy time samples to the FFT input
    memcpy(mFftIn, data_in, FREQ_BINS * 2 *sizeof(double));

    // execute the fft
    fftw_execute(mFftPlan);

    for(int i=0; i <FREQ_BINS;i++)
        data[i] = 20 * log( abs(mFftOut[i]) );
}

void SpChartView::executeFFTW()
{
    if(!capturing_RF)
        return;

    // Capture 2048 samples by the Capture_RF IP
    mw->dev_rf_capture->CaptureRead2048();

    //the captured word (32 bits is composed:
    // 31 ................ 20 19 18 17  16 15 ... 0
    // MSB 12 bits signed LSB  0  0  0 OTR  0 ... 0

    // convert signed 12 bits to signed 32 bits
    qint32 signed12;
    int OTR = 0;
    // prepare an array of FREQ_BINS * 2 samples

    // using 2048 (NUM_TIME_SAMPLES) time samples at a time
    for(int i=0; i < FREQ_BINS * 2; i++){
        OTR += (mw->dev_rf_capture->data_array_2048[i%NUM_TIME_SAMPLES]>>16) & 0x1;
        signed12 = ((qint32) mw->dev_rf_capture->data_array_2048[i%NUM_TIME_SAMPLES])>>20;
        // apply the windowing
        data_in[i] = win_coe[i] * signed12;
    }

    // copy time samples to the FFT input
    memcpy(mFftIn, data_in,  FREQ_BINS * 2 *sizeof(double));

    // execute the fft
    fftw_execute(mFftPlan);

    double averaging = mw->ui->doubleSpinBoxAlfa->value();
    for(int i=0; i < FREQ_BINS;i++)
        data[i] = data[i] * averaging + (1-averaging) * 20 * log( abs(mFftOut[i]) );
}

/*
 * Calculate fmin_view_hz and fmax_view_hz applying zoom around centerfreq_hz

            <---------- display ------------------->
 |----------|-----------------------------|---------|------------------------------------------|
 fmin       fmin_view               centerfreq   fmax_view                                   fmax

example
zoom = 4
0           2M                           8M        10M                                        32M


                          <-- display -------->
 |------------------------|---------------|----|-----------------------------------------------|
 fmin                  fmin_view   centerfreq fmax_view                                      fmax
new_zoom = 8
0                         5M             8M    9M                                             32M

*/
void SpChartView::setHZoom(int new_hzoom, float centerfreq_hz ){

    if(new_hzoom <1)
        new_hzoom = 1;

    fmin_view_hz = centerfreq_hz - 1.0 * hzoom / new_hzoom  * (centerfreq_hz - fmin_view_hz);
    if(fmin_view_hz < fmin_hz) fmin_view_hz = fmin_hz;
    if(fmin_view_hz > fmax_hz) fmin_view_hz = fmax_hz - 1;

    fmax_view_hz = fmin_view_hz + (fmax_hz - fmin_hz) / new_hzoom;
    if(fmax_view_hz > fmax_hz) fmax_view_hz = fmax_hz;
    if(fmax_view_hz < fmin_view_hz) fmax_view_hz = fmin_view_hz+1;

    if(new_hzoom==1){
        fmax_view_hz = fmax_hz;
        fmin_view_hz = fmin_hz;
    }

    hzoom = new_hzoom;
}

void SpChartView::setSeries(int points_when_zooming){
    if(mw->ui->cbAreaSeries->isChecked()){
        setAreaSeries(points_when_zooming);
    }else{
        setLineSeries(points_when_zooming);
    }
}

void SpChartView::setLineSeries(int points_when_zooming){
    clock_t start = clock();
    float fs = (fmax_hz-fmin_hz)/(FREQ_BINS);
    int imin = int(fmin_view_hz / fs);
    int imax = int(fmax_view_hz / fs);
    // place no more than points_when_zooming
    //int istep = 1 + int ( (imax-imin) / points_when_zooming );
    int istep = 1;
    chart->removeAllSeries();

    upper_series = new QLineSeries();
    for(int i= imin; i <= imax; i+=istep){
        upper_series->append( i * fs, data[i]);
    }
    clock_t after_creating_series = clock();

    // set the new x range
    axisXK->setRange(imin*fs, imax*fs);
    clock_t after_setting_range = clock();

    // add series to the chart
    chart->addSeries(upper_series);
    clock_t after_adding_series = clock();

    // attach axes to the series
    upper_series->attachAxis(axisY);
    upper_series->attachAxis(axisXK);

    double elapsed1 = 1e6*(after_creating_series - start)/CLOCKS_PER_SEC;
    double elapsed2 = 1e6*(after_setting_range - after_creating_series)/CLOCKS_PER_SEC;
    double elapsed3 = 1e6*(after_adding_series - after_setting_range)/CLOCKS_PER_SEC;
    double elapsed4 = 1e6*(clock() -  after_adding_series)/CLOCKS_PER_SEC;
    chart->setTitle(QString("new_zoom=%1 imin=%2 imax=%3 setSeries took %4 %5 %6 %7 usecs")
                        .arg(hzoom)
                        .arg(imin)
                        .arg(imax)
                        .arg(elapsed1)
                        .arg(elapsed2)
                        .arg(elapsed3)
                        .arg(elapsed4)
                    );
}


void SpChartView::setAreaSeries(int points_when_zooming){
    clock_t start = clock();
    float fs = (fmax_hz-fmin_hz)/(FREQ_BINS);
    int imin = int(fmin_view_hz / fs);
    int imax = int(fmax_view_hz / fs);
    // place no more than 1000 points
    int istep = 1 + int ( (imax-imin) / points_when_zooming );

    chart->removeAllSeries();
    upper_series = new QLineSeries();
    area_series = new QAreaSeries();
    area_series->setBorderColor(QColorConstants::DarkBlue);

    for(int i= imin; i <= imax; i+=istep){
        upper_series->append( i * fs, data[i]);
    }
    clock_t after_creating_series = clock();
    area_series->setUpperSeries(upper_series);

    // set the new x range
    axisXK->setRange(imin*fs, imax*fs);
    clock_t after_setting_range = clock();

    // add series to the chart
    chart->addSeries(area_series);
    clock_t after_adding_series = clock();

    // attach axes to the series
    area_series->attachAxis(axisY);
    area_series->attachAxis(axisXK);

    double elapsed1 = 1e6*(after_creating_series - start)/CLOCKS_PER_SEC;
    double elapsed2 = 1e6*(after_setting_range - after_creating_series)/CLOCKS_PER_SEC;
    double elapsed3 = 1e6*(after_adding_series - after_setting_range)/CLOCKS_PER_SEC;
    double elapsed4 = 1e6*(clock() -  after_adding_series)/CLOCKS_PER_SEC;
    chart->setTitle(QString("new_zoom=%1 imin=%2 imax=%3 setSeries took %4 %5 %6 %7 usecs")
                        .arg(hzoom)
                        .arg(imin)
                        .arg(imax)
                        .arg(elapsed1)
                        .arg(elapsed2)
                        .arg(elapsed3)
                        .arg(elapsed4)
                    );
}


/*
 * Calculate fmin_view_hz and fmax_view_hz
 * applying shift by press/release positions
*/
void SpChartView::setHShift(QPointF press_pos, QPointF release_pos){

    float freq_press = chart->mapToValue(press_pos).x();
    float freq_release = chart->mapToValue(release_pos).x();
    fmax_view_hz = fmax_view_hz + freq_press - freq_release;
    if(fmax_view_hz > fmax_hz)
            fmax_view_hz = fmax_hz;

    fmin_view_hz = fmin_view_hz + freq_press - freq_release;
        if(fmin_view_hz < fmin_hz)
            fmin_view_hz = fmin_hz;
}

/*
 * Calculate ymin_view and ymax_view
 * applying shift by press/release positions
*/
void SpChartView::setVShift(QPointF press_pos, QPointF release_pos){

        float y_press = chart->mapToValue(press_pos).y();
        float y_release = chart->mapToValue(release_pos).y();
        ymax_view = ymax_view + y_press - y_release;
        if(ymax_view > ymax)
            ymax_view = ymax;

        ymin_view = ymin_view + y_press - y_release;
        if(ymin_view < ymin)
            ymin_view = ymin;

        axisY->setRange(ymin_view, ymax_view);
}

void SpChartView::mousePressEvent(QMouseEvent *event)
{
    last_move_pos = last_press_pos = event->pos();
    mouse_pressed = true;
    QChartView::mousePressEvent(event);
}

void SpChartView::mouseMoveEvent(QMouseEvent *event)
{
    // handle a mousemove only every 500 msecs at least
    // this improves performance on slow CPUs
    if( clock() > last_shift_time + 500){

        QPointF qpf = event->pos();
        QRectF pa = chart->plotArea();
        if(qpf.x() < pa.left()){
            // move is on the left of y axis
            if(mouse_pressed){
                // mouse is pressed -> y shift
                setVShift(last_move_pos, event->pos());
                last_move_pos = event->pos();
            }
        }else if(qpf.y() > pa.bottom()){
            // move is below x axis
            if(mouse_pressed){
                // mouse is pressed -> x shift
                setHShift(last_move_pos, event->pos());
                last_move_pos = event->pos();
                setSeries();
                m_freqvline->updateFrequency_hz(m_freqvline->GetActualFreq_hz());
            }
        }else{
            // move is inside the plot area -> do nothing
        }
        // in any case, update the crosshairs position
        m_crosshairs->updatePosition(event->pos());

        last_shift_time = clock();
    }
    QChartView::mouseMoveEvent(event);
}

void SpChartView::mouseReleaseEvent(QMouseEvent *event)
{
    if( last_press_pos.x() == event->pos().x()
        && last_press_pos.y() == event->pos().y() ){
        // it's a click -> update the frequency of the DDS_LO and the frequency green vertical line
        int actualFrequency_hz = chart->mapToValue(event->pos()).x(); // get the actual frequency
        actualFrequency_hz = mw->SetDDSLOFreq(actualFrequency_hz);
        if(actualFrequency_hz > 0)
            m_freqvline->updatePosition(event->pos());
    }
    mouse_pressed = false;

    QChartView::mouseReleaseEvent(event);
}

void SpChartView::wheelEvent(QWheelEvent *event)
{
    QPointF qpf = event->position();
    QRectF pa = chart->plotArea();
    if(qpf.x() < pa.left()){
        // wheel moved left of y axis -> y zoom

    }else if(qpf.y() > pa.bottom()){
        // wheel moved below x axis   -> x zoom
        QPointF ActualFreq_xy = chart->mapToValue(event->position());
        int new_hzoom = (event->angleDelta().y() == -120) ? hzoom / 2  : hzoom * 2;
        if(new_hzoom==0) new_hzoom = 1;
        setHZoom(new_hzoom, ActualFreq_xy.x());
        setSeries();
        m_freqvline->updateFrequency_hz(m_freqvline->GetActualFreq_hz());
    }else{
        // wheel moved inside the plot area ->inc / dec tuned frequency
        m_freqvline->incDecPosition(event->angleDelta());
    }
    QChartView::wheelEvent(event);
}

void SpChartView::StartStopCapturing(int start){
    capturing_RF = start;
}
