#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QByteArray>
#include <QDebug>
#include <QValueAxis>
#include <QDateTimeAxis>
#include <QFileDialog>


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
    {


    ui->setupUi(this);

}

MainWindow::~MainWindow()
{
    delete ui;
}
