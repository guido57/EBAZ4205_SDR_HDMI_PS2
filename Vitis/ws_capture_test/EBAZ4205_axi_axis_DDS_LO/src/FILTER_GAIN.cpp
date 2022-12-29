/*
 ---------------------------------------------------------------------------------------------------
    FILTER_GAIN.h
    FILTER GAIN interface driver class for the Xilinx DDS compiler
    with AXI GPIO v2.0 as interface to the Xilinx DDS compiler
    Guido Giorgetti, IW5ALZ, SIENA, 2022
    forked from DC9ST, TU Kaiserslautern, 2014
  -------------------------------------------------------
*/

#include "IP_Driver.h"
#include <iostream>
#include <math.h> // for pow

#include "FILTER_GAIN.h"

using namespace std;

// constructor & deconstructor

// class constructor
FILTER_GAIN::FILTER_GAIN(int base_address, int size_in_k) {
	cerr << "setup FILTER_GAIN IP core:" << endl;
	filter_gain_iface_core_ = new IP_Driver(base_address, size_in_k);
}

// class deconstructor	
FILTER_GAIN::~FILTER_GAIN() {
	delete filter_gain_iface_core_;
}



// public functions

//sets Decimation Rate (4 ... 8192)
int FILTER_GAIN::set_filter_gain(int filter_gain) {
	
	if(filter_gain < 4)    filter_gain = 4;
	if(filter_gain > 8192) filter_gain = 8192;

	// send instruction to DDS
	filter_gain_iface_core_ -> write(0x00, filter_gain);
	
	current_filter_gain = filter_gain;
	
	return current_filter_gain;
}


// reads the current Decimation Rate
int FILTER_GAIN::get_filter_gain() {
	return current_filter_gain;
}



