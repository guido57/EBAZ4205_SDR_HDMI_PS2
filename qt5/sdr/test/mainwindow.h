#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTimer>
#include <QThread>
#include <QChart>
#include <QChartView>
#include <QtCharts>
#include <QDateTimeAxis>


QT_CHARTS_USE_NAMESPACE

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE


class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);

    ~MainWindow();

protected:

private slots:

private:
    Ui::MainWindow *ui;

};
#endif // MAINWINDOW_H
