#ifndef UIO_H
#define UIO_H

#include <QString>
#include <QFileDevice>
#include <QIODevice>

#define DEV_ADC_TEST_SWITCH "/dev/uio0"
#define DEV_DDS_TEST_GEN    "/dev/uio1"
#define DEV_DDS_LO          "/dev/uio2"
#define DEV_FILTER_GAIN     "/dev/uio3"
#define DEV_DEC_RATE_I      "/dev/uio4"
#define DEV_DEC_RATE_Q      "/dev/uio5"
#define DEV_RF_CAPTURE      "/dev/uio6"

//#define MAP_MASK mmap.PAGESIZE - 1

class UIO : public QObject//: public QIODevice
{
    Q_OBJECT
    public:
        UIO(QString devuio); //, QObject *parent = nullptr);

        QString devuio;
        bool Open(QIODevice::OpenMode mode);
        void Close();

        quint32 readData32(quint32 offset);
        int writeData32(quint32 data, quint32 offset);

        quint32 *mapMemory(quint32 offset, quint32 size);

    private:
        int m_fd;
        bool m_isMapped;
        quint32 *m_memPtr;

};

class ADCTestSwitch : UIO{
    public:
        ADCTestSwitch(QString devuio);
        void SetADC();
        void SetTestGen();
};

class DDS : UIO {
    public:
        DDS(QString devuio_, int b_phase_width_ = 26, int master_clock_hz_ = 64000000);
        int SetFreq(int freq_hz);
        QString devuio;
        int b_phase_width;
        int master_clock_hz;
        int current_freq_hz;
};

class FilterGain : public UIO {

    Q_OBJECT
    public:
        FilterGain(QString devuio_);
        void SetFilterGain(quint32 filter_gain);
        quint32 GetFilterGain();
    public slots:
        void SetFilterGainString(QString filter_gain);

    private:
        quint32 filter_gain;
};

class DataCaptureRF : public UIO {

    Q_OBJECT
    public:
        DataCaptureRF(QString devuio_);
        void Capture();
        int Read2048();
        int CaptureRead2048();
        quint32 data_array_2048[2048];
};

#endif // UIO_H
