#include "uio.h"
#include <QIODevice>
#include <QFile>
#include <math.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h>
#include <QDebug>

//**************************************************
// Class to manage a generic /dev/uio device
//**************************************************
UIO::UIO(QString devuio_): QObject(),
    m_fd(-1), m_isMapped(false), m_memPtr(nullptr) {

    devuio = devuio_;
    Open(QIODevice::ReadWrite);
}

bool UIO::Open(QIODevice::OpenMode mode)
{
    if (m_fd != -1)
    {
        Close();
    }

    m_fd = open(devuio.toUtf8().data(), O_RDWR | O_SYNC);
    if (m_fd == -1)
    {
        qCritical() << "Errore nell'apertura del file /dev/uio0";
        return false;
    }

    mapMemory(0, 65536);

    return true;
}

void UIO::Close()
{
    if (m_isMapped && m_memPtr != nullptr)
    {
        munmap(m_memPtr, 65536);
        m_isMapped = false;
        m_memPtr = nullptr;
    }

    if (m_fd != -1)
    {
        close(m_fd);
        m_fd = -1;
    }
}
/*
 *  Read the register at offset as a 32 bit unsigned int (quint32)
 *  Be careful: the offset is not in bytes but in 32 bits words (4 bytes).
 *  E.g. ReadData32(3) reads the fourth register.
 */
quint32 UIO::readData32(quint32 offset)
{

    quint32 data = m_memPtr[offset];

    return data;
}

/*
 *  Write the register at offset with data 32 bit unsigned int)
 *  Be careful: the offset is not in bytes but in 32 bits words (4 bytes).
 *  E.g. WriteData32(0x80000001, 3) writes 0x80000001 to the fourth register.
 */
int UIO::writeData32(quint32 data, quint32 offset)
{
    m_memPtr[offset] = data;  // write
    quint32 datar = m_memPtr[offset];
    if(data == datar)
        return 0;
    return 1;
}

quint32 *UIO::mapMemory(quint32 offset, quint32 size)
{
    if (!m_isMapped)
    {
        m_memPtr = reinterpret_cast<quint32*>(mmap(nullptr, size, PROT_READ | PROT_WRITE, MAP_SHARED, m_fd, offset));
        if (m_memPtr == MAP_FAILED)
        {
            qCritical() << "Errore nella mappatura della memoria";
            return nullptr;
        }

        m_isMapped = true;
    }

    return m_memPtr;
}

//********************************************************************
//   Manage the Switch between ADC input and "test generator" input
//********************************************************************
ADCTestSwitch::ADCTestSwitch(QString devuio) : UIO(devuio) {
}

void ADCTestSwitch::SetADC(){
    writeData32(0x00000001, 0);
}

void ADCTestSwitch::SetTestGen(){
    writeData32(0x00000000, 0);
}

//********************************************************************
// Manage a Direct Digital Synthesizer (Local Oscillator or Test Generator)
//********************************************************************
DDS::DDS(QString devuio_, int b_phase_width_, int master_clock_hz_ ) :
    UIO(devuio_){
    devuio = devuio_;
    b_phase_width = b_phase_width_;
    master_clock_hz = master_clock_hz_;
}

int DDS::SetFreq(int freq_hz){
    //calculate phase increment from specified frequency
    quint32 pinc = int( freq_hz * pow(2, b_phase_width) / master_clock_hz );
    // add valid bit to instruction
    quint32 dds_instruction = 0x80000000 | pinc;
    // send instruction to DDS
    int ret = writeData32(dds_instruction,0);
    if(ret == 1)
        printf("error\r\n");
    //wait for transaction to complete
    uint timeout_counter = 1000000;
    while(timeout_counter > 0 && 1 != readData32(1)){
        timeout_counter = timeout_counter-1;
    }
    // reset instruction
    writeData32(pinc, 0);
    writeData32(0x00000000, 0);     // second: clear complete instruction

    if (timeout_counter <= 0){
        printf("DDS: error setting frequency %d on device %s\r\n\r\n", freq_hz, devuio.toUtf8().data());
        return -1;  // catch timeout
    }
    // recalculate real set frequency
    current_freq_hz = int(0.5 + 1.0 * pinc * master_clock_hz / pow(2,b_phase_width));
    return current_freq_hz;
}

//********************************************************************
//   Manage the IF Filter Gain
//********************************************************************
FilterGain::FilterGain(QString devuio) : UIO(devuio) {
}

void FilterGain::SetFilterGainString(QString filter_gain_string){

    SetFilterGain(filter_gain_string.toInt());
}

void FilterGain::SetFilterGain(quint32 filter_gain_){
    if(filter_gain_ < 1)
        filter_gain = 1;
    else if(filter_gain_ > 1024)
        filter_gain = 1024;
    else
        filter_gain = filter_gain_;
    writeData32(filter_gain, 0);
}

quint32 FilterGain::GetFilterGain(){
    return filter_gain;
}
//********************************************************************
// Class to capture 2048 words (32 bit) just after the ADC (RF)
//********************************************************************
DataCaptureRF::DataCaptureRF(QString devuio) : UIO(devuio){
}
// --------------------------------------------------------------------------------------------------
// Send a capture command to the axis_capture_rf block located in capture-test.xprj Vivado project
// --------------------------------------------------------------------------------------------------
void DataCaptureRF::Capture() {
/*
    write_mem(0x0,0x00000002); 	// stops ongoing capture, if it is running (clear capture start and clear busy bit = resets module:execution is required, if the module is stuck (e.g. because a capture has been started which cannot be finished, because there is no valid data to capture))
    write_mem(0x0,0x00000000);  	// capture starts on rising edge of bit 0 in reg 0
    write_mem(0x0,0x00000001);
*/
    writeData32(0x00000002, 0); 	// stops ongoing capture, if it is running (clear capture start and clear busy bit = resets module:execution is required, if the module is stuck (e.g. because a capture has been started which cannot be finished, because there is no valid data to capture))
    writeData32(0x00000000, 0);  	// capture starts on rising edge of bit 0 in reg 0
    writeData32(0x00000001, 0);
}
// --------------------------------------------------------------------------------------------------
// Read 2048 x 32 bits decimal signed integers from the axis_capture_rf block located in capture-test.xprj Vivado project
// --------------------------------------------------------------------------------------------------
int DataCaptureRF::Read2048() {

    // wait for capture to be finished
    int module_busy;
    int timeout_max_ = 10000000;
    int timeout_counter_ = 0;
    int num_captured_words = 16384;

    do {
        module_busy = readData32(1); // second register
        timeout_counter_ ++;
    }
    while ( (module_busy == 1) && (timeout_counter_ < timeout_max_) );

    if (timeout_counter_ == timeout_max_){
        printf("Timeout waiting for completing capture\r\n");
        return -3;
    }

    int check_address;
    for (int i=0; i < num_captured_words; i++) {
        timeout_counter_ = 0;

        //write_mem(0x14, i);  // request address for read
        writeData32(i, 5); // request address for read writing the address to the 5th register

        do {
            //check_address = read_mem(0x18);
            check_address = readData32(6); // check that the address appears on the 6th register
            timeout_counter_++;
        }
        while ( (check_address != i) && (timeout_counter_ < 1000) ); // wait until address is applied

        if (timeout_counter_ == 1000){
            return -1;
        }
        //data_array[i] = read_mem(0x10);
        data_array_2048[i] = readData32(4) ; // finally read the word from the 4th register
    }
    return 0;
}

int DataCaptureRF::CaptureRead2048(){

    Capture();
    int rv = Read2048();
    return rv;
}


