#ifndef IP_DRIVER_H
#define IP_DRIVER_H

/*
  -------------------------------------------------------
    IP_Driver.h
    generic class for an IP core driver over AXI Lite
    Stefan Scholl, DC9ST, TU Kaiserslautern, 2014
  -------------------------------------------------------
*/

/** @brief Generic IP Driver Class
 *   Class, that allows access to a AXI Lite IP core over the Zynq Memory Mapped Interface */
class IP_Driver {

public:
	IP_Driver();

	/** @brief class constructor
	 *  @param base_adress address of the ip core (from Vivado), e.g. 0x44C0000
	 *  @param size_in_k size of the required adress space in k (from Vivado)	 */
	IP_Driver(int base_address, int size_in_k);

	~IP_Driver();

	/** @brief writes data to an ip core
	 *  @param adress offset adress of the write register inside the adress space of the ip core, e.g. 0,4,8,C etc.
	 *  @param data 32 bit data to be transferred	 */
	void write(int address, int data);

	/** @brief reads data from an ip core
	 *  @param adress offset adress of the read register inside the adress space of the ip core, e.g. 0,4,8,C etc.
	 *  @return int returns a 32 bit read value 	 */
	int read(int address);

private:
	int fd;					// File Handler
	volatile void *ptr;		// pointer to mapped memory in virtual adress space
	int mem_size;			// size of mapped memory (unit: adresses)
	int page_offset;		// offset between IP adress and lower page bound
};

#endif /* IP_DRIVER_H */
