/*
 ---------------------------------------------------------------------------------------------------
    DDS.h
    DDS interface driver class for the Xilinx DDS compiler
    with AXI GPIO v2.0 as interface to the Xilinx DDS compiler
    Guido Giorgetti, IW5ALZ, SIENA, 2022
    forked from DC9ST, TU Kaiserslautern, 2014
  -------------------------------------------------------
*/

#include "IP_Driver.h"
#include "DDS.h"
#include <iostream>
#include <math.h> // for pow

using namespace std;

// constructor & deconstructor

// class constructor
DDS::DDS(int base_address, int size_in_k, double f_clk, int B_phase_width) {
	cerr << "setup DDS IP core:" << endl;	
	dds_iface_core_ = new IP_Driver(base_address, size_in_k);
	f_clk_ = f_clk*1000; // convert from KHz to Hz
	B_phase_width_ = B_phase_width;
}

// class deconstructor	
DDS::~DDS() {
	delete dds_iface_core_;
}



// public functions

//sets DDS output frequency in kHz
double DDS::set_frequency(double f_out) {
	
	f_out = f_out*1000;		// convert frequency from kHz to Hz

	int pinc = (int)(f_out * pow(2,B_phase_width_) / f_clk_);  	// calculate phase increment from specified frequency
	//int dds_instruction = 0x80000000 | pinc;					// add valid bit to instruction
	int dds_instruction =  pinc;

	// send instruction to DDS
	dds_iface_core_ -> write(0x00, dds_instruction);  		
	
	// wait for transaction to complete
	//int timeout_counter = 1000000;

	//do { timeout_counter--;}
	//while ( (dds_iface_core_ -> read(0x04) != 1) && (timeout_counter > 0) );

	// reset instruction
	//dds_iface_core_ -> write(0x00, pinc);  			// first: clear valid bit, but keep phase increment (avoids phase increment reset while valid is still asserted, occurs due to cdc)
	//dds_iface_core_ -> write(0x00, 0x00000000);     // second: clear complete instruction
		
	//if (timeout_counter <= 0) return -1;  				// catch timeout

	current_frequency_ = pinc * f_clk_ / pow(2,B_phase_width_); 	// calculate acutally set frequency
	
	return current_frequency_/1000;
}


// reads the current DDS output frequency in kHz
double DDS::get_frequency() {
	return current_frequency_/1000;
}



