#ifndef MYQCHARTVIEW_H
#define MYQCHARTVIEW_H

#include <QWidget>
#include <QChartView>
QT_CHARTS_USE_NAMESPACE

class MyQChartView : public QChartView
{
    Q_OBJECT
public:
    explicit MyQChartView(QWidget *parent = nullptr);

protected:
    void mouseMoveEvent(QMouseEvent *event) override;

signals:
    void mouseMoveSignal(QPointF point);
};

#endif // MYQCHARTVIEW_H
