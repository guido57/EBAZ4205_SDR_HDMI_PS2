//Example code: A simple server side code, which echos back the received message.
//Handle multiple socket connections with select and fd_set on Linux
#include <stdio.h>
#include <string.h>   //strlen
#include <stdlib.h>
#include <errno.h>
#include <unistd.h>   //close
#include <arpa/inet.h>    //close
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/time.h> //FD_SET, FD_ISSET, FD_ZERO macros

#define TRUE   1
#define FALSE  0
#define PORT 1001

#include "dds.h"
#include "mux.h"
#include "FILTER_GAIN.h"
#include "DEC_RATE.h"

int size_in_k = 64;

// Create the DDS object acting as a Local Oscillator
DDS *dds_lo;

// Create the DDS object acting as a Signal Generator
DDS *dds_sg;

// Create the DEC_RATE to change the CIC filter Decimation Rate between 4 and 8192
DEC_RATE *dec_rate_CIC_I;
DEC_RATE *dec_rate_CIC_Q;

// Create the FILTER_GAIN to change the CIC-FIR gain between 1 and 65535
FILTER_GAIN *filter_gain;

// Create the MUX object to select ADC input or RF generator
MUX *mux;

// Create the LED_RED object to turn on/off the red LED
MUX *led_red;

// get milliseconds
long millis(){

  struct timeval tm;
  gettimeofday(&tm, NULL);
  long msecs = tm.tv_sec * 1000 + tm.tv_usec/1000 + 0.5;
  return msecs;
}


int main(int argc , char *argv[])
{

    // Create the DDS object acting ad a Local Oscillator with a clock frequency=64000 KHz (64MHz) and 26 bit step phase width
    dds_lo = new DDS(0x43C60000, size_in_k, 64000.0, 26);

    // Create the DDS object acting a a Signal Generator with a clock frequency=64000 KHz (64MHz) and 26 bit step phase width
    //dds_sg = new DDS(0x43C40000, size_in_k, 64000.0, 26);
    // set its frequency at 10MHz
    //dds_sg->set_frequency(10000.0); // 10000.0 KHz = 10 MHz

    // Create the DEC_RATE object and set Decimation Rate
    dec_rate_CIC_I = new DEC_RATE(0x43C30000, size_in_k);
    dec_rate_CIC_Q = new DEC_RATE(0x43C10000, size_in_k);
    dec_rate_CIC_I->set_dec_rate(1024);
    dec_rate_CIC_Q->set_dec_rate(1024);

    // Create the FILTER_GAIN object and set its gain
    filter_gain = new FILTER_GAIN(0x41220000, size_in_k);
    filter_gain->set_filter_gain(4);

    // Create the MUX object to select ADC input or RF generator
    mux = new MUX(0x41210000, size_in_k);
    // select Signal Generator Input
	mux->select(0);

    //led_red = new MUX(0x43C50000, size_in_k);
    //led_red->select(0);
    //led_red->select(1);
    //led_red->select(0);
    //led_red->select(1);



    int sel = 0;
	int sel_red_led = 0;
	int filter_gain_value = 4;
	int dec_rate = 1024;
    double f = 10000.0;
	for(int i = 0; i<1000;i++){
		mux->select(sel);
		//led_red->select(sel_red_led);
		dds_lo->set_frequency(f); // 10000 KHz
		filter_gain->set_filter_gain(filter_gain_value);
		dec_rate_CIC_I->set_dec_rate(dec_rate);
	    dec_rate_CIC_Q->set_dec_rate(dec_rate);
}


    return 0;
}
