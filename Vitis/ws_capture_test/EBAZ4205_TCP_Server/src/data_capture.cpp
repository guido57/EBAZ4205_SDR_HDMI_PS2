/*
  -------------------------------------------------------
    Data_Capture.cpp
    Data Capture Module class
    Stefan Scholl, DC9ST, TU Kaiserslautern, 2015
  -------------------------------------------------------
*/

#include "IP_Driver.h"
#include "Data_Capture.h"
#include <iostream>
#include <math.h> // für pow
#include <stdlib.h>

using namespace std;

// constructor & deconstructor

// class constructor
Data_Capture::Data_Capture(int base_address, int size_in_k, int num_captured_words) : timeout_max_(10000000) {
	cerr << "setup Capture IP core:" << endl;
	data_capture_core_ = new IP_Driver(base_address, size_in_k);
	num_captured_words_ = num_captured_words;
	data_array_int2double_ = new int[num_captured_words_];
}

// class deconstructor
Data_Capture::~Data_Capture() {
	delete[] data_array_int2double_;
	delete data_capture_core_;
}



// public functions

// --------------------------------------------------------------------------------------------------
// Send a capture command to the axis_capture_rf block located in capture-test.xprj Vivado project
// --------------------------------------------------------------------------------------------------
void Data_Capture::capture() {
	data_capture_core_ -> write(0x0,0x00000002); 	// stops ongoing capture, if it is running (clear capture start and clear busy bit = resets module:execution is required, if the module is stuck (e.g. because a capture has been started which cannot be finished, because there is no valid data to capture))
	data_capture_core_ -> write(0x0,0x00000000);  	// capture starts on rising edge of bit 0 in reg 0
	data_capture_core_ -> write(0x0,0x00000001);
}
// --------------------------------------------------------------------------------------------------
// Read 2048 x 32 bits decimal signed integers from the axis_capture_rf block located in capture-test.xprj Vivado project
// --------------------------------------------------------------------------------------------------
int Data_Capture::read(int *data_array) {

	if (data_capture_core_ -> read(0x04) == 1)
		return -2; // capture module is busy and should not be read

	int check_address;

	for (int i=0; i < num_captured_words_; i++) {
		timeout_counter_ = 0;

		data_capture_core_ -> write(0x14, i);  // request address for read

		do {
			check_address = data_capture_core_ -> read(0x18);
			timeout_counter_++;
		}
		while ( (check_address != i) && (timeout_counter_ < 1000) ); // wait until address is applied

		if (timeout_counter_ == 1000){
			return -1;
		}
		data_array[i] = data_capture_core_ -> read(0x10);
	}

	return 0;
}


// --------------------------------------------------------------------------------------------------
// Capture and Read 2048 x 32 bits decimal signed integers from the axis_capture_rf block located in
// capture-test.xprj Vivado project
// --------------------------------------------------------------------------------------------------
int Data_Capture::capture_and_read(int *data_array) {

	// capture data
	capture();

	// wait for capture to be finished
	int module_busy;
	timeout_counter_ = 0;

	do {
		module_busy = data_capture_core_ -> read(0x04);
		timeout_counter_ ++;
	}
	while ( (module_busy == 1) && (timeout_counter_ < timeout_max_) );

	if (timeout_counter_ == timeout_max_)
		return -3;

	// read the data
	int read_error = read(data_array);
	if (read_error == -1)
		return -1;

	return 0;
}


//overloaded version of above method for double arrays
int Data_Capture::capture_and_read(double *data_array) {
	int err_code = 0;
	err_code = capture_and_read(data_array_int2double_);

	for (int i=0; i < num_captured_words_; i++)
		data_array[i] = (double) data_array_int2double_[i];

	return err_code;
}

//overloaded version of above method for double arrays and smaller sized arrays
int Data_Capture::capture_and_read(double *data_array, int size) {
	int err_code = 0;
	err_code = capture_and_read(data_array_int2double_);

	if (num_captured_words_ < size) {
		std::cerr << "ERROR: Data_Capture.cpp: capture_and_read() specified array size (=" << size << ") larger than num_captured_words of IP Core" << std::endl;
		exit(1);
	}

	for (int i=0; i < size; i++)
		data_array[i] = (double) data_array_int2double_[i];

	return err_code;
}
