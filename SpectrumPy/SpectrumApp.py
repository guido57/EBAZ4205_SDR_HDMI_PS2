# For Args
import sys
import numpy as np
from scipy.signal import find_peaks
import time
# for GUI 
from PyQt5 import QtGui, QtWidgets, uic
from PyQt5.QtCore import QTimer
# For graphs
import pyqtgraph as pg
from TCPThread import TCPThread
from matplotlib import mlab as mlab

# Supported gain values (29): 0.0 0.9 1.4 2.7 3.7 7.7 8.7 12.5 14.4 15.7 16.6 19.7 20.7 22.9 25.4 28.0 29.7 32.8 33.8 36.4 37.2 38.6 40.2 42.1 43.4 43.9 44.5 48.0 49.6
pg.setConfigOptions(antialias=True)
#pg.setConfigOption('background', '#f0f0f0')
pg.setConfigOption('background', '#000000')
pg.setConfigOption('foreground', '#a0a0a0')

def millis():
    return round(time.time() * 1000)

class MainWindow(QtWidgets.QMainWindow):
    TCPThread = None
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        uic.loadUi("MainApp.ui", self)

        # Variables for UI and SDR
        self.center_freq = 0          # Hz
        self.gen_freq = 1000000       # Hz
        self.band_width = 32e6        # Hz
        self.FREQBINS = 8192          # num frequency bins viewed  
        self.FFToversampling = 8      # number of frequency bins averaged to get FREQBINS
        self.doublesided = False      # if IQ are both present -> doublesided = True
                                      # if I exists but Q=0    -> doublesided = False
        self.PPM = 60                 # ppm frequency correction
        self.isRunning = False        
        self.gain= 0.0                # the gain applied to the received samples

        self.aspect_ratio = 1.0       # FREQBINS/screen width eg. 1024/800
        self.PSDwindow = mlab.window_hanning   # can be changed by the combobox
        self.isPeaks = False          # show relative peaks on spectrumView  
        self.tmp = 0
        self.history_length = 128     # waterfall history length

        # calculate the frequency range to show in spectrum and waterfall
        # it ranges from cf - bw/2 to cf + bw/2 if doublesided = True
        # it ranges from 0 to cf + bw           if doublesided = False
        self.calc_freq = lambda bw,nfreqs,cf: np.linspace(0,bw,nfreqs) + cf
        self.freq = self.calc_freq(self.band_width,self.FREQBINS,self.center_freq)
        # temporary spectrum data
        self.data = np.random.rand(self.FREQBINS)*1e-6
        # temporary waterfall history
        self.history = np.zeros(shape=(self.history_length, self.FREQBINS))
        
        # Show and build the waterfall view ...    
        self.waterfallView.plot()
        self.waterfallView.setLabel("bottom", "Frequency", units="Hz")
        self.waterfallView.setLabel("left", "Time")
        self.waterfallView.setLimits(xMin=self.freq[0],xMax=self.freq[-1],yMin=-self.history_length,yMax=0)
        # ... and assign an initial image to it
        self.img_waterfall = pg.ImageItem()
        self.waterfallView.addItem(self.img_waterfall)
        
        """
        grad = QtGui.QLinearGradient(0, 0, 0, 0.000004)
        grad.setColorAt(0.000007, pg.mkColor('#000000'))
        grad.setColorAt(0.000005, pg.mkColor('b'))
        brush = QtGui.QBrush(grad)
        """
        
        # Show and build the spectrum view ...    
        self.spectrumView.setTitle('Power Spectral Density')
        self.spectrumView.setLimits(xMin=self.freq[0],xMax=self.freq[-1])
        self.curve = self.spectrumView.plot(x = self.freq,
                                            y = self.data,
                                            pen = 'w',
                                            fillLevel = -10,
                                            fillBrush = (55,155,255,100),
                                            padding = 0.0,
                                            autoRange=True) 
        self.curve.setPen((255,255,195,90), width=1)
        self.spectrumView.setLogMode(x=None, y=True)
        self.spectrumView.showGrid(x=True, y=True, alpha=0.8)
        self.spectrumView.setLabel("bottom", "Frequency", units="Hz")
        # ... set dB as y axis
        self.spectrumView.setLabel("left", "Power", units="dBm")
        self.spectrumView.setLimits(yMin=-10,yMax=0)
        self.spectrumView.setYRange(-10,10,padding=None,update=False)
        dy = [(value, str(10*value)) for value in list(range(0,-13,-1))]
        ay = self.spectrumView.getAxis('left')  
        ay.setTicks([dy, []])
        # ... get rid of the m(milli) M(mega) ... modifiers before Units. e.g. mdB
        ay.enableAutoSIPrefix(enable=False)
        
        self.spectrumView.showButtons()

         # Create crosshair
        self.vLine = pg.InfiniteLine(angle=90, movable=False, pen='#aaaabb')
        self.vLine.setZValue(1000)
        self.hLine = pg.InfiniteLine(angle=0, movable=False, pen='#aaaabb')
        self.hLine.setZValue(1000)
        self.spectrumView.addItem(self.vLine, ignoreBounds=True)
        self.spectrumView.addItem(self.hLine, ignoreBounds=True)
        self.vLine2 = pg.InfiniteLine(angle=90, movable=False, pen='#aaaabb')
        self.vLine2.setZValue(1000)
        self.waterfallView.addItem(self.vLine2,ignoreBounds=True)
        
        # Link ranges and focus of spectrum and waterfall
        self.spectrumView.setXLink(self.waterfallView)
        
        # Create and show the histogram i.e. the gradient color level selector
        self.histogram_layout = pg.GraphicsLayoutWidget()
        self.verticalLayout.addWidget(self.histogram_layout)
        self.histogram = pg.HistogramLUTItem(fillHistogram=False)
        self.histogram_layout.addItem(self.histogram)
        # Load a predefined gradient. Currently defined gradients are: 
        self.gradient_presets = ['thermal', 'flame', 'yellowy', 'bipolar', 'spectrum', 'cyclic', 'greyclip', 'grey']
        self.histogram.gradient.loadPreset(self.gradient_presets[1])
        #self.histogram.setHistogramRange(-50, 0)
        self.histogram.setLevels(-1.0e-3, 1.0e-2)
        self.histogram.setHistogramRange(-2.0e-2, 2.0e-3, padding=1)
        
        # horizontal Labels 
        self.lblFreq.setText(str(self.center_freq))

        # tuner frequency: TODO
        self.spinBoxFrequency.setValue(self.center_freq)
        self.spinBoxPPM.setValue(self.PPM)
        
        # Radio buttons to select ADC input or RF generator
        self.radioButtonGenerator.clicked.connect(self.selectADCorGenerator)
        self.radioButtonADC.clicked.connect(self.selectADCorGenerator)
        
        # RF generator frequency
        self.spinBoxGenFrequency.setValue(self.gen_freq)

        # averaging filter for psd
        self.doubleSpinBoxAlfa.setValue(0.9)
        self.comboBoxGain.currentIndex=21
        self.pushButtonConnect.clicked.connect(self.initThread)

        # window (hamming ...) for psd
        self.comboBoxWindow.currentIndexChanged.connect(self.setWindow) #Hamming and so on       
        
    def reset_plots(self):
        self.PPM = self.spinBoxPPM.value()
        self.gain = float(self.comboBoxGain.currentText())
        self.FREQBINS =8192
        self.FFToversampling = int(4*self.FREQBINS/int(self.comboBoxNFFT.currentText()))
        self.freq = self.calc_freq(self.band_width, self.FREQBINS ,self.center_freq)
        self.data = np.random.rand(self.FREQBINS)*0.000001
        self.history = np.zeros(shape=(self.history_length, self.FREQBINS))

        self.waterfallView.setLimits(xMin=self.freq[0],xMax=self.freq[-1],yMin=-self.history_length,yMax=0)

        calc_ratio =lambda : (self.freq[-1] - self.freq[0]) / self.FREQBINS
        xFactor = calc_ratio()/self.aspect_ratio
        yFactor = 1
        self.img_waterfall.setTransform(QtGui.QTransform.fromScale(xFactor, yFactor), True)
        
        self.aspect_ratio = calc_ratio()

        self.histogram.setImageItem(self.img_waterfall)

        # set the curve for relative maximum values (peaks)
        if self.isPeaks:
            self.curvePeaks = self.spectrumView.plot(self.freq,self.freq*1.0e-5, pen=None, symbol='d',symbolBrush=(215,155,255,200))
    
    def initThread(self):
        if self.isRunning:
            self.TCPThread.isRunning = False
            self.isRunning=False
            self.pushButtonConnect.setText('Connect')

        else:
            self.reset_plots()
            if(self.TCPThread is None):
                self.TCPThread = TCPThread(
                    psd_window = self.PSDwindow
                )
                self.TCPThread.signalRx.connect(self.updateData)
                self.spinBoxGenFrequency.valueChanged.connect(self.sdrSetGenFrequency)        
            if self.TCPThread.socket is not None:
                self.TCPThread.start()
                self.isRunning = True
                self.pushButtonConnect.setText('Stop')
                self.TCPThread.isRunning = True
                #self.radioButtonGenerator.click()
                self.selectADCorGenerator() # select ADC or Generator according to radioButtons
    
            # User interactions on plot
            self.mouseProxy = pg.SignalProxy(self.spectrumView.scene().sigMouseMoved,
                                            rateLimit=60,
                                            slot=self.mouse_moved)
            self.spectrumView.scene().sigMouseClicked.connect(self.mouse_clicked)
            
            self.spinBoxFrequency.valueChanged.connect(self.sdrSetFrequency)        
            # GUI Timer Threads for plots 
            self.render_timer = QTimer()
            self.render_timer.setInterval(40)
            self.render_timer.timeout.connect(self.render)
            self.render_timer.start()

            # GUI Timer Threads for waterfall rolling data
            self.data_roll_timer = QTimer()
            self.data_roll_timer.setInterval(50)
            self.data_roll_timer.timeout.connect(self.rollData)
            self.data_roll_timer.start()
    
    def updateData(self,data_os):
        # FFT downsample
        # len(data_os) should be always 8192
        #self.FFToversampling = 8 # from 8192 to 1024
        #self.FFToversampling = int(len(data_os)/self.FREQBINS) # from 8192 to 1024
        #data_os[:] = data_os[:] / 1000000000
        '''
        data = np.zeros(self.FREQBINS)
        k = 0
        for i in range(0, 8192, int(4/self.FFToversampling)) :
            data[int(i/4)] += data_os[i]
            if k < self.FFToversampling - 1:
                k += 1 
            else:
                data[int(i/4)]  /= self.FFToversampling
                k = 0        
        
        #data[:] =data[0:8192:int(8/self.FFToversampling)]
        '''
        data = data_os[:]
        self.data = data*(1.0-self.doubleSpinBoxAlfa.value())+self.data*(self.doubleSpinBoxAlfa.value())
        """
        if(self.counter%1==0):
            self.history = np.roll(self.history, -1, axis=0)
            self.history[-1] = data
        """
        
    def rollData(self):
        self.history = np.roll(self.history, -1, axis=0)
        self.history[-1] = self.data

    def render(self):
        try:
            #self.counter += 1
            self.curve.setData(self.freq,self.data.astype(float),autoLevels=True, autoRange=False)
            if self.isPeaks:
                idx, _ = find_peaks(self.data,distance=50)
                self.curvePeaks.setData(self.freq[idx],self.data[idx])
            
            self.spectrumView.enableAutoRange(axis='y', enable=False)
        
            self.img_waterfall.setImage(self.history.T,levels=self.histogram.getLevels())
            self.img_waterfall.setPos(self.freq[0],-self.history_length)
            
        except Exception as e:
            raise(e)
        
        # when render is finished, request a new frame
        self.TCPThread.signalTx.emit(b'\x00\x00\x00\x20') # # request a frame

    def sdrSetFrequency(self):
        if self.isRunning:
            if self.doublesided:
                self.center_freq = self.spinBoxFrequency.value()
                self.freq = self.calc_freq(self.band_width,self.FREQBINS,self.center_freq)
            else:
                self.center_freq = 0
                self.freq = self.calc_freq(self.band_width,self.FREQBINS,self.center_freq)
            self.spectrumView.setLimits(xMin=self.freq[0],xMax=self.freq[-1])
            self.waterfallView.setLimits(xMin=self.freq[0],xMax=self.freq[-1])
            
            self.sdrThread.sdr_tune(self.center_freq)

    def sdrSetGenFrequency(self):
            self.gen_freq = self.spinBoxGenFrequency.value()
            cmd = 0x30000000 | self.gen_freq
            cmd_bytes = cmd.to_bytes(4,'little')
            #self.TCPThread.signalTx.emit(b'\x00\x00\x00\x03') # set DDS generator frequency
            self.TCPThread.signalTx.emit(cmd_bytes) 

    def selectADCorGenerator(self):
            valueADC = self.radioButtonADC.isChecked()
            valueGenerator = self.radioButtonGenerator.isChecked()
            if(valueADC):
                cmd = 0x40000001
            if(valueGenerator):
                cmd = 0x40000000
            cmd_bytes = cmd.to_bytes(4,'little')
            self.TCPThread.signalTx.emit(cmd_bytes) 

    def setWindow(self, index):
        
        win = self.comboBoxWindow.itemText(index)
        if win == "None":
            self.TCPThread.PSDwindow = mlab.window_none
        elif win == "Blackman":
            self.TCPThread.PSDwindow = self.TCPThread.window_blackman
        elif win == "Bartlett":
            self.TCPThread.PSDwindow = self.TCPThread.window_bartlett
        elif win == "Hamming":
            self.TCPThread.PSDwindow = self.TCPThread.window_hamming
        elif win == "Hanning":
            self.TCPThread.PSDwindow = mlab.window_hanning

    def mouse_clicked(self,evt):
        self.center_freq=round(self.tmp/10e3)*10e3
        self.spinBoxFrequency.setValue(self.center_freq)

    def mouse_moved(self, evt):
        """Update crosshair when mouse is moved"""
        pos = evt[0]

        if self.spectrumView.sceneBoundingRect().contains(pos):
            mousePoint = self.spectrumView.plotItem.vb.mapSceneToView(pos)
            # I think i should just update the variables and set GUI values in timer thread
            self.vLine.setPos( round(mousePoint.x()/5e3)*5e3 )
            self.vLine2.setPos(round(mousePoint.x()/5e3)*5e3 )
            self.hLine.setPos( (mousePoint.y()) )
            self.tmp=mousePoint.x()
            self.lblFreq.setText( f'{round(mousePoint.x()/1e6,3)} MHz, {round(10*mousePoint.y(),1)}' )

    """
    self.rangeChanged = pg.SignalProxy(self.spectrumView.sigXRangeChanged, rateLimit=10, slot=self.range_changed)
    def range_changed(self,evt):
        xmin,xmax=evt[1]
    """

if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    window = MainWindow()
    window.show()
    app.exec_()