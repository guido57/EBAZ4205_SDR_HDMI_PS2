#ifndef MUX_H
#define MUX_H

/*
  ---------------------------------------------------------------------------------------------------
    MUX.h
    MUX interface driver class
    Guido Giorgetti, IW5ALZ, SIENA, 2022
    forked from DC9ST, TU Kaiserslautern, 2014
  ---------------------------------------------------------------------------------------------------
*/

#include "IP_Driver.h"

/** @brief Driver for the Xilinx DDS core using the axi_dds_interface core  */
class MUX {

private:

	IP_Driver *mux_iface_core_;	// low level driver

public:
	/** @brief class constructor
	 *  @param base_adress address of the spi core (from Vivado), e.g. 0x44C00000
	 *  @param size_in_k size of the required adress space in k (from Vivado)
	**/
	MUX(int base_address, int size_in_k);

	/** @brief class deconstructor */	
	~MUX();

	/** @brief select the input.
	  * select(0) selects input0
	  * select(1) selects input1
	  * @return nothing */
	void select(int value);

};

#endif /* MUX_H */
