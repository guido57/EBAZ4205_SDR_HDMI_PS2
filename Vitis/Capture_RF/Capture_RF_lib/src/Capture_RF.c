#include <stdio.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

#include "Capture_RF.h"

void write_mem(int offset, int data) {
	*((int *)((volatile char*)ptr + offset)) = data;
}

int read_mem(int offset) {
	return *(int *)((volatile char*)ptr + offset);
}

void set_devuio(char * devuio_){

	strcpy(devuio,devuio_);
}

char * get_devuio(){
	return devuio;
}


void * get_ptr(){

	fd = open (devuio, O_RDWR);
	if (fd < 1) {
		printf("Cannot open %s\r\n", devuio);
		return (void *) 0;
	}

	// map memory
	void * ptr = mmap(NULL, mem_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	if (ptr == MAP_FAILED) {
		printf("Cannot mmap\r\n");

		return (void * ) 0;
	}

	return ptr;
}

int open_capture(){

	ptr = get_ptr();

	return (int) ptr;
}

int close_capture(){

    if (ptr != NULL)
    	munmap ((void *)ptr, mem_size);

    return 0;
}

// --------------------------------------------------------------------------------------------------
// Send a capture command to the axis_capture_rf block located in capture-test.xprj Vivado project
// --------------------------------------------------------------------------------------------------
void capture() {
	write_mem(0x0,0x00000002); 	// stops ongoing capture, if it is running (clear capture start and clear busy bit = resets module:execution is required, if the module is stuck (e.g. because a capture has been started which cannot be finished, because there is no valid data to capture))
	write_mem(0x0,0x00000000);  	// capture starts on rising edge of bit 0 in reg 0
	write_mem(0x0,0x00000001);
}

// --------------------------------------------------------------------------------------------------
// Read 2048 x 32 bits decimal signed integers from the axis_capture_rf block located in capture-test.xprj Vivado project
// --------------------------------------------------------------------------------------------------
int read2048(int *data_array) {

	// wait for capture to be finished
	int module_busy;
	int timeout_max_ = 10000000;
	int timeout_counter_ = 0;


	do {
		module_busy = read_mem(0x04);
		timeout_counter_ ++;
	}
	while ( (module_busy == 1) && (timeout_counter_ < timeout_max_) );

	if (timeout_counter_ == timeout_max_){
		printf("Timeout waiting for completing capture\r\n");
		return -3;
	}

	int check_address;
	for (int i=0; i < num_captured_words; i++) {
		timeout_counter_ = 0;

		write_mem(0x14, i);  // request address for read

		do {
			check_address = read_mem(0x18);
			timeout_counter_++;
		}
		while ( (check_address != i) && (timeout_counter_ < 1000) ); // wait until address is applied

		if (timeout_counter_ == 1000){
			return -1;
		}
		data_array[i] = read_mem(0x10);
	}
	return 0;
}



int captureread2048(int * data_array){

	if(ptr == NULL)
		open_capture();

	if(ptr == NULL)
		return -1;

	capture();

    int rv = read2048(data_array);

    return rv;
}


