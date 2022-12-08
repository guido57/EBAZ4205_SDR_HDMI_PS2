#include "IP_Driver.h"

#include <iostream>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>

using namespace std;

IP_Driver::IP_Driver(int base_address, int size_in_k) {

	// open device file for memory acess
	fd = open ("/dev/mem", O_RDWR);
	if (fd < 1) {
		cerr << "Could not open /dev/mem" << endl;
		exit(-1);
	}

	// handle page alignment
	int size = size_in_k * 1024;
	int page_size = sysconf(_SC_PAGESIZE);
	int page_bound_lower = page_size * (base_address / page_size);  // round down base_adress to next page boundary
	int page_bound_upper = page_size * (1 + (base_address + size) / page_size); // round up base_adress to next page boundary
	page_offset = base_address % page_size;
	mem_size = page_bound_upper - page_bound_lower;

	// map memory
	ptr = mmap(NULL, mem_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, page_bound_lower);
	if (ptr == MAP_FAILED) {
		cerr << "Could not map memory" << endl;
		exit(-1);
	}

	// output mapping report
	cerr << hex;
	cerr << "memory map information for IP Core @ 0x" << base_address << endl;
	cerr << dec;
	cerr << "page size 	      = " << page_size << endl;
	cerr << hex;
	cerr << "lower page bound      = 0x" << page_bound_lower << endl;
	cerr << "upper page bound      = 0x" << page_bound_upper << endl;
	cerr << dec;
	cerr << "page offset           = " << page_offset << endl;
	cerr << "number of pages       = " << mem_size / page_size << endl;
	cerr << "mapped memory size    = " << mem_size << endl<<endl;

}

IP_Driver::~IP_Driver() {
	//unmap memory
	if (ptr != NULL)
		munmap ((void *)ptr, mem_size);

	close(fd);	// close device file
}

void IP_Driver::write(int address, int data) {
	*((int *)((volatile char*)ptr + page_offset + address)) = data;
}

int IP_Driver::read(int address) {
	return *(int *)((volatile char*)ptr + page_offset + address);
}
