#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QChartView>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    spChart = new QChart();
    ui->spChartView->setChart(spChart);
    ui->spChartView->setMinimumSize(200,200);
    ui->spChartView->setZoom(1, -1.0);
    ui->spChartView->setSeries();
    spChart->addSeries(ui->spChartView->series);

}

MainWindow::~MainWindow()
{
    delete ui;
}

