/*
  ---------------------------------------------------------------------------------------------------
    MUX.h
    MUX interface driver class
    Guido Giorgetti, IW5ALZ, SIENA, 2022
    forked from DC9ST, TU Kaiserslautern, 2014
  ---------------------------------------------------------------------------------------------------
*/

#include "IP_Driver.h"
#include "MUX.h"
#include <iostream>
#include <math.h> // for pow

using namespace std;

// constructor & deconstructor

// class constructor
MUX::MUX(int base_address, int size_in_k) {
	cerr << "setup DDS IP core:" << endl;	
	mux_iface_core_ = new IP_Driver(base_address, size_in_k);
}

// class deconstructor	
MUX::~MUX() {
	delete mux_iface_core_;
}



// public functions

void MUX::select(int sel) {
	
	int instruction =  sel;
	// send instruction to GPIO2. Its address is at offset 0x08
	mux_iface_core_ -> write(0x08, instruction);
}





