# EBAZ4205_SDR

## Description

This repository contains the Vivado project, the Vitis project and a Python app to display the 0-32 MHz radio spectrum in a full view and tune HF radio stations.
This project is the continuation of https://github.com/guido57/EBAZ4205_Spectrum which is a 0-32 MHz radio spectrum viewer only. 

## Getting Started for FPGA or EBAZ4205 beginners

Before going straight to this project, I strongly reccomend to carefully prepare your HW / SW environment, following the instructions contained in:
* [HW is in my Cheap (35$) and powerful FPGA Programming Hackaday project](https://hackaday.io/project/187351-cheap-35-and-powerful-fpga-programming)
* [SW is in my EBAZ4205 repository](https://github.com/guido57/EBAZ4205)

In this project there's nothing esoteric, but it is quite complex because it requires: 
* Hardware assembling (you can use a solder iron on SMD, don't you?) 
* FPGA Zynq7010 design and programming with Xilinx Vivado 
* flashing Linux on the Zynq7010 FPGA with Xilinx Petalinux
* building a C++ program running on Linux
* building a Python program on Windows

## Getting Started

* [HW is in my 30 MHz Spectrum and SDR in an FPGA Hackaday project](https://hackaday.io/project/186329-30mhz-spectrum-and-sdr-in-a-fpga)
* SW is here :) 

## Software

The following chapters describe the three main SW sub-projects (folders of this repository)

* Zynq: the Xilinx Vivado project to program the Zynq7010 PL (Programmable Logic)
* Vitis: the Xilinx Vitis project to build the TCP_server Linux app running on the Zynq7010 PS (Processing System)
* SpectrumPy: the Python software for Windows to display the spectrum and tune the radio stations

The Petalinux project is not in this Repository because is the same of [my EBAZ4205 repository](https://github.com/guido57/EBAZ4205)

![block diagram](https://github.com/guido57/EBAZ4205_SDR/blob/main/docs/slide.png)

## Zynq

This is the Xilinx Vivado 2021.2 project that let's you to program the Zynq7010 FPGA (PL side) contained in the EBAZ4205 board. 

After programming it, the EBAZ4205 will:

* supply a 64 MHz clock to the AD9226 board
* receive the 12 bits samples from the AD9226
* receive commands from the Linux TCP_server program to:
  * capture a frame of samples (16384 samples at a time)
  * capture a continuos stream of sampled data via DMA
  * switch between the ADC input and a local RF test generator  
  * change the local RF test generator frequency in the range 100 KHz - 30 MHz

## Vitis

This is the Xilinx Vitis 2021.2 project that let's you to build a C++ app running on the Zynq7010 PS to:
* create a TCP server to send data/receive command to/from the SpectrumPy app
* "send commands"/"receive data" to/from the Zynq7010 PL

## SpectrumPy

This is the Python software receiving sampled data from EBAZ4205 and displaying spectrum and waterfall in its User Interface.
It lets you to send commands to EBA4205 also to:
  * switch between the ADC input and a local RF test generator  
  * change the local RF test generator frequency in the range 100 KHz - 30 MHz
  * change the waterfall colors
  
  Please note that the following UI controls don't work yet:
  * Gain (dB)
  * NFFT 
  * Freq Correction
  * Center Frequency (Hz)
  
  ![](https://github.com/guido57/EBAZ4205_SDR/blob/main/docs/SpectrumPy.png)


## License

* MIT
