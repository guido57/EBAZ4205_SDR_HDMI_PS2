from PyQt5.QtCore import QThread, pyqtSignal
from matplotlib import mlab as mlab
import numpy as np
import time
import socket
import debugpy

class TCPThread(QThread):
    signalRx = pyqtSignal(object)
    signalTx = pyqtSignal(object)
    isRunning = False
    def __init__(self, psd_window=mlab.window_hanning ) :
        QThread.__init__(self)
    
        _address = "192.168.1.87"
        _port = 1001
        # configure device
        if self.Connect(address=_address,port=_port):
            self.isRunning = True
            self.PSDwindow = psd_window
            print("Connected to " + _address + ":" + str(_port))
            
        else:
            print("Cannot connect to " + _address + ":" + str(_port))
            return

        self.CHUNK = 16384
        # when a signalTX is emitted, a command is sent to ebaz4205 by TCP
        self.signalTx.connect(self.Send)

    def __del__(self):
        if self.isRunning:
            self.wait()

    def run(self):
        debugpy.debug_this_thread()
        data = b''
        while self.isRunning:
            # check if 16384 samples (131072 bytes) are available
            if len(data) < 131072:
                try:
                    chunk = self.socket.recv(131072 - len(data))
                    if chunk == '':
                        break
                    data += chunk
                except BlockingIOError:
                    pass
                except Exception as exc:
                    print(exc.strerror)
            
            else:
                # 131072 bytes are available
                self.send_signalRx(data)
                data = b''

            time.sleep(0.001)

        """
        Return *x* times the Hanning (or Hann) window of len(*x*).
        See Also
        --------
        window_none : Another window algorithm.
        """
    def window_hamming(self, x):
        return np.hamming(len(x))*x
    def window_bartlett(self, x):
        return np.bartlett(len(x))*x
    def window_blackman(self, x):
        return np.blackman(len(x))*x

    def send_signalRx(self,iq):
        # iq contains iq interleaved samples. I0 Q0 I1 Q1 ... I2047 Q2047
        # iq length should be 16384 bytes
        countOTR = 0
        ii_int = list(range(0,self.CHUNK))
        qq_int = list(range(0,self.CHUNK)) # it should always be 0
        for i in range(0,self.CHUNK):
            # samples are on 12 bits signed (from b31 to b19)
            # b18=0 b17=0 b16=OTR b15 ... b0 =0 
            #ii_intb31_b0 = int.from_bytes(iq[i*8  :i*8+4],"little",signed=True) 
            ii_OTR    = (iq[i*8+2] & 0x01) 
            ii_int[i] = int.from_bytes( [0,0,iq[i*8+2] & 0xF0,iq[i*8+3]],"little",signed=True)
            if(ii_OTR == 1):
                countOTR = countOTR+1        
            qq_intb31_b0 = int.from_bytes(iq[i*8+4:i*8+8],"little",signed=True)
            qq_int[i] =  qq_intb31_b0 #& 0xFFFFFFFF
            qq_OTR = (qq_intb31_b0 & 0x00010000) >> 16

        if(countOTR>0):
            a = 5

        iq_int_np = np.array(ii_int) + 1j*np.array(qq_int)
        
        #power, _ = mlab.psd(iq_int_np, NFFT=self.CHUNK, window=self.PSDwindow, Fs=64e6, scale_by_freq=False)
        #power = power[len(power)>>1:] # get only the right spectrum (Freq >= 0)
        power, _ = mlab.psd(ii_int, NFFT=16384, window=self.PSDwindow, Fs=64e6, scale_by_freq=False)
        #power_sqrt = np.sqrt(power)
        totpower = sum(power) / 2**64
        power = power[0:-1] / (2**64)
        self.signalRx.emit(power)
        #print(str(len(iq)) + " bytes. Total power=" + str(totpower) + "  NumBins=" + str(len(power)) + " imin=" + hex(min(ii_int)) + " imax=" + hex(max(ii_int)) +  " countOTR=" + str(countOTR) )


    def Connect(self, address='192.168.1.1', port= 1001):
        try:
            _socket = socket.socket(
                socket.AF_INET, socket.SOCK_STREAM)
            _socket.connect((address, port))
            _socket.setblocking(False)
            _socket.setsockopt(socket.SOL_SOCKET, socket.SO_SNDBUF, 32)  # Buffer size 32 bytes
            self.socket = _socket
            return True
        except IOError as e:
            self.socket = None
            
            return False

    def Close(self):
        self.isRunning = False
        self.socket.close()
        self.socket = None

    def Send(self, data):
        try:
            if(self.socket is not None):
                self.socket.sendall(data, )
                return True
            else:
                return False
        except IOError as e:
            return False
        except Exception as exc:
            pass
    
     
def millis():
    return round(time.time() * 1000)
   


