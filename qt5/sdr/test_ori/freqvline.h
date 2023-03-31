#ifndef FREQVLINE_H
#define FREQVLINE_H

#include <QtCharts/QChartGlobal>
#include <QtWidgets/QGraphicsItem>


QT_CHARTS_BEGIN_NAMESPACE
class QChart;
QT_CHARTS_END_NAMESPACE

QT_CHARTS_USE_NAMESPACE

class FreqVLine
{
public:
    FreqVLine(QChart *chart);
    void updatePosition(QPointF position);
    void incDecPosition(QPoint angledelta);


private:
    QGraphicsLineItem *m_xLine;
    QGraphicsTextItem *m_xText;
    QChart *m_chart;
    QPointF actualPosition; // use x position only

};

#endif // FREQVLINE_H
