#include "freqvline.h"
#include <QtCharts/QChart>
#include <QtGui/QPainter>
#include <QtGui/QCursor>
#include <QtGui/QTextDocument>

QT_CHARTS_USE_NAMESPACE

FreqVLine::FreqVLine(QChart *chart) :
    m_xLine(new QGraphicsLineItem(chart)),
    m_xText(new QGraphicsTextItem(chart)),
    m_chart(chart)
{
    m_xLine->setPen(QPen(Qt::green, 0.0));
    m_xLine->setZValue(11);
    m_xText->setZValue(11);
    m_xText->document()->setDocumentMargin(0);
    m_xText->setDefaultTextColor(Qt::black);
}

void FreqVLine::updatePosition(QPointF position)
{
    QLineF xLine(position.x(), m_chart->plotArea().top(),
                 position.x(), m_chart->plotArea().bottom());
    m_xLine->setLine(xLine);

    QString xText = QString("%1").arg(m_chart->mapToValue(position).x());
    m_xText->setHtml(QString("<div style='background-color: #00ff00;'>") + xText + "</div>");
    m_xText->setPos(position.x() - m_xText->boundingRect().width() / 2.0, m_chart->plotArea().bottom());

    if (!m_chart->plotArea().contains(position))
    {
        m_xLine->hide();
        m_xText->hide();
    }
    else
    {
        m_xLine->show();
        m_xText->show();
        actualPosition = position; // store the actual position
    }
}
void FreqVLine::incDecPosition(QPoint angledelta)
{
    QPointF ap = m_chart->mapToValue(actualPosition);
    if(angledelta.y() == 120)
        ap.setX(ap.x()+0.1);
    else
        ap.setX(ap.x()-0.1);

    updatePosition(m_chart->mapToPosition(ap));
}

