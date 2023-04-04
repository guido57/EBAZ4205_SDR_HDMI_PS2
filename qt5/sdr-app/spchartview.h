#ifndef SPCHARTVIEW_H
#define SPCHARTVIEW_H

#include <QWidget>
#include <QChartView>
#include <QLineSeries>
#include <QAreaSeries>
#include <QValueAxis>
#include <freqvline.h>
#include <crosshairs.h>
#include "fftw3.h"
#include "mainwindow.h"

#define NUM_TIME_SAMPLES   2048
#define FREQ_BINS          1024

QT_CHARTS_USE_NAMESPACE

class SpChartView : public QChartView
{
    Q_OBJECT
public:
    explicit SpChartView(QWidget *parent = nullptr);
    void setSeries(int points_when_zooming = 500);
    void setAreaSeries(int points_when_zooming = 500);
    void setLineSeries(int points_when_zooming = 500);
    void setData1024();
    void setHZoom(int zoom, float centerfreq_hz );
    void setHShift(QPointF press_pos, QPointF release_pos);
    void setVShift(QPointF press_pos, QPointF release_pos);

    Crosshairs * m_crosshairs;
    FreqVLine * m_freqvline;
    QLineSeries *upper_series;  // Series in Hz   (upper)
    QAreaSeries *area_series; // Area Series
    QChart *chart;
    void executeFFTW_mockup_data();
    void executeFFTW();
    void executeFFTW_setSeries();

 public slots:
    void change_fft_window(QString fft_window_name);
    void StartStopCapturing(int start);

protected:
    void mouseMoveEvent(QMouseEvent *event) override;
    void mousePressEvent(QMouseEvent * event) override;
    void mouseReleaseEvent(QMouseEvent * event) override;
    void wheelEvent(QWheelEvent * event) override;

    float fmin_hz = 0;
    float fmax_hz = 32000000;
    int min_point = 0;
    int max_point = FREQ_BINS;
    int hzoom = 1;
    float fmin_view_hz;
    float fmax_view_hz;

    float ymin = -200;
    float ymax = 400;
    int vzoom = 1;
    float ymin_view;
    float ymax_view;

signals:
    void mouseMoveSignal(QPointF point);

private:
    double data_in[FREQ_BINS*2];
    double win_coe[FREQ_BINS*2];
    double data[FREQ_BINS*2];
    QPointF last_press_pos, last_move_pos;
    bool mouse_pressed;
    QValueAxis *axisXK;
    QValueAxis *axisY;
    int last_shift_time = -1;

    QTimer *timer;

    fftw_plan mFftPlan;
    double *mFftIn;     // fft input
    double *mFftOut;    // fft output

    MainWindow * mw;

    int capturing_RF = 0;

};

#endif // SPCHARTVIEW_H
