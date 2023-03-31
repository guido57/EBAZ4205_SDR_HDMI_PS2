import os
import mmap
import numpy as np
import time
import ctypes

DEV_ADC_TEST_SWITCH = "/dev/uio0"
DEV_DDS_TEST_GEN    = "/dev/uio1" 
DEV_DDS_LO          = "/dev/uio2"
DEV_FILTER_GAIN     = "/dev/uio3" 
DEV_DEC_RATE_I      = "/dev/uio4"
DEV_DEC_RATE_Q      = "/dev/uio5"
DEV_RF_CAPTURE      = "/dev/uio6"

MAP_MASK = mmap.PAGESIZE - 1

class UIO:
    def __init__(self, devuio ) :
        self.devuio = devuio
        self.fd = os.open(devuio, os.O_RDWR | os.O_SYNC)
        self.mem = mmap.mmap(self.fd, mmap.PAGESIZE, mmap.MAP_SHARED, 
		       mmap.PROT_READ | mmap.PROT_WRITE, offset=0)

    def __del__(self):
        self.Close()

    def Close(self):
        self.mem.close()
        os.close(self.fd)

    def read_addr(self, addr, length):
        global MAP_MASK
        self.mem.seek(addr & MAP_MASK)
        # print mem.size()
        val = 0x0
        for i in range(length):
            val |= self.mem.read_byte() << (i * 8)
        return val

    def write_addr(self, addr, value_int, length):
        global MAP_MASK
        self.mem.seek(addr & MAP_MASK)
        self.mem.write(value_int.to_bytes(length,'little',signed=False))
    
#
#   Manage the Direct Digital Synthesizer (Local Oscillator or Test Generator)
#
class DDS(UIO):
    def __init__(self, uio_dev, b_phase_width= 26, master_clock_hz = 64000000 ) :
        UIO.__init__(self,uio_dev)
        self.uio_dev = uio_dev
        self.b_phase_width = b_phase_width
        self.master_clock_hz = master_clock_hz
	
    def SetFreq(self, freq_hz):
	    #calculate phase increment from specified frequency
        pinc = int( freq_hz * pow(2, self.b_phase_width) / self.master_clock_hz )
	    #// add valid bit to instruction 
        dds_instruction = 0x80000000 | pinc	

	    # send instruction to DDS
        #dds_iface_core_ -> write(0x00, dds_instruction);
        self.write_addr(0,dds_instruction,length=4)
	
	    #wait for transaction to complete
        timeout_counter = 1000000
        while timeout_counter > 0:
            rv = self.read_addr(4,4)
            if(rv == 1):
                break
            timeout_counter = timeout_counter-1	    

	    # reset instruction
        #dds_iface_core_ -> write(0x00, pinc);	// first: clear valid bit, but keep phase increment (avoids phase increment reset while valid is still asserted, occurs due to cdc)
        self.write_addr(0, pinc, 4)
        # dds_iface_core_ -> write(0x00, 0x00000000);     // second: clear complete instruction
        self.write_addr(0, 0, 4)
        
        if (timeout_counter <= 0):
            return -1 #  // catch timeout
    
        # calculate real set frequency
        self.current_freq_hz = pinc * self.master_clock_hz / pow(2,self.b_phase_width)
	
        return self.current_freq_hz

#
#   Manage the Switch between ADC input and "test generator" input
#
class ADC_TEST_SWITCH(UIO):
    def __init__(self, devuio ) :
        UIO.__init__(self, devuio)
        self.devuio = devuio
        
    def SetADC(self):
        instruction = 0x00000001	
        self.write_addr(0,instruction,length=4)

    def SetTestGen(self):
        instruction = 0x00000000	
        self.write_addr(0,instruction,length=4)


#
#   Set the Filter Gain 
#   All the gains between 4 and 8192 are allowed
#   
class FILTER_GAIN(UIO):
    def __init__(self, devuio ) :
        UIO.__init__(self, devuio)
        self.devuio = devuio
        
    def SetFilterGain(self, filter_gain):
        if(filter_gain < 4):
            filter_gain = 4
        if(filter_gain > 8192):
            filter_gain = 8192

        self.write_addr(0, filter_gain,length=4)
        self.current_filter_gain = filter_gain
        return self.current_filter_gain

    def GetFilterGain(self):
        return self.current_filter_gain

#
#   Set the Decimation Rate of the CIC filter (I or Q)
#   Any power of two between 4 and 8192 is allowed
# 
class DecimationRate(UIO):
    def __init__(self, uio_dev ) :
        UIO.__init__(self,uio_dev)
        self.uio_dev = uio_dev
        
    def SetDecimationRate(self, dec_rate):
        self.dec_rate = dec_rate
	    # add valid bit to instruction 
        dec_rate = 0x80000000 | dec_rate

	    # send instruction 
        #dds_iface_core_ -> write(0x00, dds_instruction);
        self.write_addr(0, dec_rate,length=4)
	
	    #wait for transaction to complete
        timeout_counter = 1000000
        while timeout_counter > 0:
            rv = self.read_addr(4,4)
            if(rv == 1):
                break
            timeout_counter = timeout_counter-1	    

	    # reset instruction
        #dds_iface_core_ -> write(0x00, pinc);	// first: clear valid bit, but keep phase increment (avoids phase increment reset while valid is still asserted, occurs due to cdc)
        self.write_addr(0, self.dec_rate, 4)
        # dds_iface_core_ -> write(0x00, 0x00000000);     // second: clear complete instruction
        self.write_addr(0, 0, 4)
        
        if (timeout_counter <= 0):
            return -1 #  // catch timeout
    
        return self.dec_rate

class DataCaptureRF:
    def __init__(self, uiodev ) :
        self.uiodev = uiodev
        # Carica la shared library in C
        self.lib = ctypes.CDLL('libCapture_RF_lib.so')

        # Define the signature of the C function captureread2048
        self.lib.captureread2048.argtypes = [ctypes.POINTER(ctypes.c_int)]
        self.lib.captureread2048.restype = ctypes.c_int#

        # Define the signature of the C function get_devuio
        self.lib.get_devuio.restype = ctypes.c_char_p
        
        # Define the signature of the C function set_devuio
        self.lib.set_devuio.argtypes = [ctypes.c_char_p]
        self.lib.set_devuio(uiodev.encode())

        # Create an array of 2048 integers
        self.array2048 = np.zeros(2048, dtype=np.int32)
        # Convert it to a C array
        self.c_array2048 = (ctypes.c_int * len(self.array2048))(*self.array2048)

    # --------------------------------------------------------------------------------------------------
    # Read 2048 x 32 bits decimal signed integers from the axis_capture_rf block located in capture-test.xprj Vivado project
    # --------------------------------------------------------------------------------------------------
    def Read(self):
        #start = time.time()
        return self.lib.captureread2048(self.c_array2048)
        #self.elapsed_secs =  time.time() - start
                

if __name__ == '__main__':
    
    dds_lo = DDS(DEV_DDS_LO)
    dds_lo.SetFreq(1000000)
    
    dds_test_gen = DDS(DEV_DDS_TEST_GEN)
    dds_test_gen.SetFreq(1050000)
    
    adc_test_sw = ADC_TEST_SWITCH(DEV_ADC_TEST_SWITCH)
    adc_test_sw.SetTestGen()
    adc_test_sw.SetADC()
    adc_test_sw.SetTestGen()
    #adc_test_sw.SetADC()
    
    filter_gain = FILTER_GAIN(DEV_FILTER_GAIN)
    filter_gain.SetFilterGain(16)

    dec_rate_I = DecimationRate(DEV_DEC_RATE_I)
    dec_rate_Q = DecimationRate(DEV_DEC_RATE_Q)
    dec_rate_I.SetDecimationRate(64)
    dec_rate_Q.SetDecimationRate(64)

    #xx = np.zeros(2048, dtype=int)
    #capture_RF_ = DataCapture(DEV_RF_CAPTURE)
    #capture_RF_.Capture()
    #capture_RF_.Read(xx)
    # Now xx should contain 2048 integers 

    # test to capture 1000 x 2048 words (32bits)
    #start = time.time()
    #for k in range(0,2000):
    #    capture_RF_.Capture()
    #    capture_RF_.Read(xx)
    #elapsed_secs =  time.time() - start
    #print("capturing 1000 x 2048 words took ", elapsed_secs, " seconds")

    crf = DataCaptureRF(DEV_RF_CAPTURE)
    
    # first method
    start = time.time()
    crf.Read()
    elapsed_secs =  time.time() - start
    print("crf.Read took ", elapsed_secs, " seconds")
    
    # second method
    start = time.time()
    crf.lib.captureread2048(crf.c_array2048)
    elapsed_secs =  time.time() - start
    print("crf.captureread2048 took ", elapsed_secs, " seconds")
    
    #third method
    my_array = np.zeros(2048, dtype=np.int32)

    # Convert it to a C array
    c_array = (ctypes.c_int * len(my_array))(*my_array)
    start = time.time()
    crf.lib.captureread2048(c_array)
    elapsed_secs =  time.time() - start
    print("crf.captureread2048 on external array took ", elapsed_secs, " seconds")
    
    
    print("The first 16 captured words are:")
    for i in range(0,16):
        print("[", i, "] ", hex(crf.c_array2048[i]))
    
    