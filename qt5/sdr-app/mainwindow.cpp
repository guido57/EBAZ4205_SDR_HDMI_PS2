#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QByteArray>
#include <QDebug>
#include <QValueAxis>
#include <QDateTimeAxis>
#include <QFileDialog>
#include "uio.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
    {

    ui->setupUi(this);

    // ADC - Test Generator switch
    dev_adc_test_switch = new ADCTestSwitch(DEV_ADC_TEST_SWITCH);
    dev_adc_test_switch->SetADC();
    connect(ui->radioButtonADC, &QRadioButton::clicked, this, &MainWindow::SetADCTestGen);
    connect(ui->radioButtonGenerator, &QRadioButton::clicked, this, &MainWindow::SetADCTestGen);

    // DDS Local Oscillator
    dev_dds_lo = new DDS(DEV_DDS_LO);
    connect(ui->spChartView->m_freqvline, &FreqVLine::tunedFrequencyChanged, this, &MainWindow::SetDDSLOFreq);

    // DDS Test Generator
    dev_dds_test_gen = new DDS(DEV_DDS_TEST_GEN);
    dev_dds_test_gen->SetFreq(3000000);
    ui->spinBoxTestFrequency->setValue(3000000);
    connect(ui->spinBoxTestFrequency, &QSpinBox::textChanged, this, &MainWindow::SetDDSTestGenFreq);

    // IF Filter Gain
    dev_if_filter_gain = new FilterGain(DEV_FILTER_GAIN);
    dev_if_filter_gain->SetFilterGainString(ui->comboBoxIFGain->currentText());
    connect(ui->comboBoxIFGain, &QComboBox::currentTextChanged, dev_if_filter_gain, &FilterGain::SetFilterGainString);

    // Init FFT Window ComboBox
    ui->spChartView->change_fft_window(ui->comboBoxWindow->currentText());
    connect(ui->comboBoxWindow, &QComboBox::currentTextChanged,ui->spChartView, &SpChartView::change_fft_window);

    // Capture RF
    dev_rf_capture = new DataCaptureRF(DEV_RF_CAPTURE);
    ui->spChartView->StartStopCapturing(1); // start capturing
    connect(ui->cbCaptureRF, &QCheckBox::stateChanged, ui->spChartView, &SpChartView::StartStopCapturing);

}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::SetADCTestGen(bool checked){

    if(ui->radioButtonADC->isChecked())
        dev_adc_test_switch->SetADC();
    else
        dev_adc_test_switch->SetTestGen();
}

int MainWindow::SetDDSLOFreq(int freq_hz){

    int actual_frequency = dev_dds_lo->SetFreq(freq_hz);
    if(actual_frequency > 0){
        ui->spinBoxTunedFrequency->setValue(actual_frequency);
    }
    return actual_frequency;
}

void MainWindow::SetDDSTestGenFreq(QString freq_hz_str){

    dev_dds_test_gen->SetFreq(freq_hz_str.toInt());

}
