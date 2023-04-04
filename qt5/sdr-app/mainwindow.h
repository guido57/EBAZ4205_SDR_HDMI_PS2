#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTimer>
#include <QThread>
#include <QChart>
#include <QChartView>
#include <QtCharts>
#include <QDateTimeAxis>
#include "uio.h"

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
    Ui::MainWindow *ui;

    ADCTestSwitch * dev_adc_test_switch;
    DDS * dev_dds_lo;
    DDS * dev_dds_test_gen;
    FilterGain * dev_if_filter_gain;
    DataCaptureRF * dev_rf_capture;
    int SetDDSLOFreq(int freq_hz);
    void SetDDSTestGenFreq(QString freq_hz_str);


public slots:
    void SetADCTestGen(bool ADC);

protected:

private slots:

private:

};
#endif // MAINWINDOW_H
