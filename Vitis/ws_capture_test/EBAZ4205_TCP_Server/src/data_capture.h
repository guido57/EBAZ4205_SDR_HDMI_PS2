#ifndef DATA_CAPTURE_H
#define DATA_CAPTURE_H

/*
  ---------------------------------------------------------------------------------------------------
    Data_Capture.h
    Data Capture module class
    This ist the SW for the Data Capture module (in VHDL), which can capture high speed data in a RAM.
    This RAM can be read by the Zynq PS to retrieve the data.
    Stefan Scholl, DC9ST, TU Kaiserslautern, 2015
  ---------------------------------------------------------------------------------------------------
*/

#include "IP_Driver.h"

/** @brief Driver for Data Capture Module
*   Transferres high speed data from the BRAM the PS memory*/
class Data_Capture {

protected:

	IP_Driver *data_capture_core_;
	int num_captured_words_;
	int timeout_counter_;
	const int timeout_max_;
	int *data_array_int2double_;  	//required for integer to double conversion in capture_and_read method

public:
	/** @brief class constructor
	 *  @param base_adress address of the spi core (from Vivado), e.g. 0x44C00000
	 *  @param size_in_k size of the required adress space in k (from Vivado)
     *  @param num_captured_words number of words to be captured (from IP core properties in Vivado) */
	Data_Capture(int base_address, int size_in_k, int num_captured_words);

	/** @brief class deconstructor */
	~Data_Capture();

	/** @brief returns number of captured words (memory depth) */
	int get_num_captured_words() {return num_captured_words_;}


	/** @brief starts capture (non blocking)  */
	void capture();

    /** @brief reads data, that has been captured previously by capture() (non blocking)
     *  @param data_array pointer to a data array, into which the function writes the captured data
	 *  @return 0: no errors, -1: timeout during read (maybe IP addess wrong), -2: module busy / capture in progess  */
	int read(int *data_array);

    /** @brief captures data and reads it out (blocking), for integer array
	 *  @param data_array pointer to integer data array, into which the function writes the captured data
	 *  @return 0: no errors, -1: timeout during read (maybe IP addess wrong), -3: capture timeout = capture takes too long (read not possible)  */
	int capture_and_read(int *data_array);

	/** @brief captures data and reads it out (blocking), overloaded for double array
	 *  @param data_array pointer to double data array, into which the function writes the captured data, needs to be "num_captured_words" long
	 *  @return 0: no errors, -1: timeout during read (maybe IP addess wrong), -3: capture timeout = capture takes too long (read not possible)  */
	int capture_and_read(double *data_array);

	/** @brief captures data and reads it out (blocking), overloaded for double array and with size specification
	 *  @param data_array pointer to double data array of size "size", into which the function writes the captured data
	 *  @param size size if array data_array
	 *  @return 0: no errors, -1: timeout during read (maybe IP addess wrong), -3: capture timeout = capture takes too long (read not possible)  */
	int capture_and_read(double *data_array, int size);

};

#endif /* DATA_CAPTURE_H */
