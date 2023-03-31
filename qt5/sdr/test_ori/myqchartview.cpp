#include "myqchartview.h"
#include <QDebug>
#include <QLineSeries>
#include <QDateTime>

MyQChartView::MyQChartView(QWidget *parent) : QChartView(parent)
{
    int a = 3;
}

void MyQChartView::mouseMoveEvent(QMouseEvent *event)
{
    // this->chart()->series()
    //QPointF p = this->chart()->mapToValue(event->pos(), this->chart()->series()[0]);
//    QLineSeries * x = (QLineSeries *)this->chart()->series()[1];
//    QDateTime startTime = QDateTime::fromString("2021年10月19日 00:00:00", "yyyy年MM月dd日 hh:mm:ss");
//    qDebug() << x->points().length();

    //emit mouseMoveSignal(p);
    QChartView::mouseMoveEvent(event);
}
