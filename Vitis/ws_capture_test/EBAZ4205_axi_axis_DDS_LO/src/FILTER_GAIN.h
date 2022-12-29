#ifndef FILTER_GAIN_H
#define FILTER_GAIN_H

/*
  ---------------------------------------------------------------------------------------------------
    FILTER_GAIN.h
    Decimation Rate interface driver class for the Xilinx DDS compiler
    with AXI GPIO v2.0 as interface to the Xilinx DDS compiler
    Guido Giorgetti, IW5ALZ, SIENA, 2022
    forked from DC9ST, TU Kaiserslautern, 2014
  ---------------------------------------------------------------------------------------------------
*/

#include "IP_Driver.h"

/** @brief Driver for the Decimation Rate  */
class FILTER_GAIN {

private:

	IP_Driver *filter_gain_iface_core_;	// low level driver
	double current_filter_gain; 	// current Decimation Rate

public:
	/** @brief class constructor
	 *  @param base_adress address of the spi core (from Vivado), e.g. 0x44C00000
	 *  @param size_in_k size of the required adress space in k (from Vivado)
	**/
	FILTER_GAIN(int base_address, int size_in_k);

	/** @brief class deconstructor */	
	~FILTER_GAIN();

	/** @brief sets Decimation Rate
	  * @return actual Decimation Rate or -1 if a timeout has occured  */
	int set_filter_gain(int decimation_rate);

	/** @brief reads the current Decimation Rate
	 *  @return current Decimation Rate */
	int get_filter_gain();
};

#endif /* FILTER_GAIN_H */
