#include "spchartview.h"
#include <QRandomGenerator>

SpChartView::SpChartView(QWidget * parent) : QChartView(parent)
{
    /*

    // set the initial zoom (1) and fmin_view_hz and fmax_view_hz
    setZoom(1,-1.0);

    aseries = new QAreaSeries();
    aseries->setUpperSeries(series);

    chart = new QChart();
    chart->legend()->hide();
    chart->addSeries(aseries);
    chart->createDefaultAxes();
    chart->setTitle("Simple line chart example");

    m_crosshairs = new Crosshairs(chart);
    m_freqvline = new FreqVLine(chart);

    this->setChart(chart);
    */
}

void SpChartView::setSeries(){
    series = new QLineSeries();
    std::uniform_real_distribution dist(1.5, 3.5);
    int imin = int((fmin_view_hz - fmin_hz)/ (fmax_hz-fmin_hz));
    int imax = int((fmin_view_hz - fmin_hz)/ (fmax_hz-fmin_hz));

    float freq_step_hz = (fmax_view_hz - fmin_view_hz)/1024;
    for(int i= imin; i < imax; i++){
        float yy = dist(*QRandomGenerator::global()); // temporary random value
        series->append( fmin_view_hz + i * freq_step_hz   , yy);
    }
}

/*
 * Calculate fmin_view_hz and fmax_view_hz applying zoom around centerfreq_hz
*/
void SpChartView::setZoom(int zoom, float centerfreq_hz ){

    if(centerfreq_hz == -1.0){
        fmax_view_hz = fmax_hz;
        fmin_view_hz = fmin_hz;

    }else{

        if(zoom <1)
            zoom = 1;

        int actual_zoom = (fmax_hz-fmin_hz)/(fmax_view_hz-fmin_view_hz);

        fmax_view_hz = centerfreq_hz + (fmax_view_hz - centerfreq_hz)/zoom;
        if(fmax_view_hz > fmax_hz)
            fmax_view_hz = fmax_hz;
        fmin_view_hz = centerfreq_hz - (centerfreq_hz - fmin_view_hz)/zoom;
        if(fmin_view_hz < fmin_hz)
            fmin_view_hz = fmin_hz;
    }
    setSeries();
}

/*
 * draw crosshairs at mouse position
 */
void SpChartView::mouseMoveEvent(QMouseEvent *event)
{
    //m_crosshairs->updatePosition(event->pos());
    QChartView::mouseMoveEvent(event);
}

/*
*  Draw the green vertical line (tuned frequency) at mouse press position
*/
void SpChartView::mousePressEvent(QMouseEvent *event)
{
    //m_freqvline->updatePosition(event->pos());
    QChartView::mouseMoveEvent(event);
}

void SpChartView::wheelEvent(QWheelEvent * event){
    /*
    QPointF qpf = event->position();
    QRectF pa = chart->plotArea();
    if(qpf.x() < pa.left()){
        //y zoom
        int aa = 3;
    }else if(qpf.y() > pa.bottom()){
        //x zoom
        int actual_zoom = (fmax_view_hz - fmin_view_hz)/(fmax_hz-fmin_hz);
        float actual_freq =  (event->position().x() - chart->plotArea().left())*(fmax_view_hz-fmin_view_hz)
                / (chart->plotArea().right()-chart->plotArea().left());
        int zoom = (event->angleDelta().y() == 120) ? actual_zoom+1 : actual_zoom-1;
        setZoom(zoom, actual_freq);
    }else
        // increase / decrease tuned frequency
        m_freqvline->incDecPosition(event->angleDelta());
    */
    QChartView::wheelEvent(event);
}
