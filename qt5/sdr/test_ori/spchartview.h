#ifndef SPCHARTVIEW_H
#define SPCHARTVIEW_H

#include <QtCharts>
#include <crosshairs.h>
#include <freqvline.h>
QT_CHARTS_USE_NAMESPACE

class SpChartView : public QChartView
{
    Q_OBJECT
public:
    Crosshairs * m_crosshairs;
    FreqVLine * m_freqvline;
    explicit SpChartView(QWidget * parent = nullptr);
    void setSeries();
    void setZoom(int zoom_, float center_freq_hz = -1.0);

    QLineSeries *series;  // Series
    QAreaSeries *aseries; // Area Series
    QChart *chart;

protected:
    void mouseMoveEvent(QMouseEvent * event) override;
    void mousePressEvent(QMouseEvent * event) override;
    void wheelEvent(QWheelEvent * event) override;


    float fmin_hz = 0;
    float fmax_hz = 32000000;
    int min_point = 0;
    int max_point = 1024;

    float fmin_view_hz;
    float fmax_view_hz;
};


#endif // SPCHARTVIEW_H
