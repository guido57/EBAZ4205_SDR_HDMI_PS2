#ifndef DDS_H
#define DDS_H

/*
  ---------------------------------------------------------------------------------------------------
    DDS.h
    DDS interface driver class for the Xilinx DDS core
    with AXI -> AXIS core (dds_axi_interface) as interface to the Xilinx DDS core
    Stefan Scholl, DC9ST, TU Kaiserslautern, 2014
  ---------------------------------------------------------------------------------------------------
*/

#include "IP_Driver.h"

/** @brief Driver for the Xilinx DDS core using the axi_dds_interface core  */
class DDS {

private:

	IP_Driver *dds_iface_core_;	// low level driver
	double current_frequency_; 	// current frequency in Hz
	double f_clk_; 				// (master) clock frequency in Hz
	int B_phase_width_;			// phase width (bits)

public:
	/** @brief class constructor
	 *  @param base_adress address of the spi core (from Vivado), e.g. 0x44C00000
	 *  @param size_in_k size of the required adress space in k (from Vivado)
	 *  @param f_clk clock (master) clock frequency of the core in kHz
	 *  @param B_phase_width phase width (look up in vivado under block design -> DDS menu -> Summary -> Phase Width (not Phase Angle Width)) 	 */
	DDS(int base_address, int size_in_k, double f_clk, int B_phase_width);

	/** @brief class deconstructor */	
	~DDS();

	/** @brief sets DDS output frequency in kHz
	  * @return actually set frequency in kHz or -1 if a timeout has occured  */
	double set_frequency(double f_out);

	/** @brief reads the current DDS output frequency in kHz
	 *  @return frequency in kHz */
	double get_frequency();
};

#endif /* DDS_H */
