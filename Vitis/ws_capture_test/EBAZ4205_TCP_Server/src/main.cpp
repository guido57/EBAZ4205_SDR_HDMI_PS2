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

#include "data_capture.h"
#include "dds.h"
#include "mux.h"

int * captured_data_rf_;
int  num_captured_words  = 16384; // 1 word is 32 bits. Therefore 16384 x 4 ) 65536 bytes are captured at each capture
int size_in_k = 64;

int * IQ; // array of IQ integers sent to the client

// Create the DDS object with a clock frequency=64000 KHz (64MHz) and 27 bit step phase width
DDS *dds;

// Create the MUX object to select ADC input or RF generator
MUX *mux;

// Create the Data_Capture object to capture sampled data from axis_capture_RF
Data_Capture *dc;



// get milliseconds
long millis(){

  struct timeval tm;
  gettimeofday(&tm, NULL);
  long msecs = tm.tv_sec * 1000 + tm.tv_usec/1000 + 0.5;
  return msecs;
}

void handle_rx(int sd, int command){

	struct timeval my_time;
	bool send_a_frame = false;

	switch(command >> 28) // the bits 31 30 29 28 (quartet) acts as a 4 bits command
	{
	  case 0:
		/* set phase increment */
		//if(command < freqMin || command > freqMax) continue;
		//*((uint32_t *)(cfg_c + 4)) = (uint32_t)floor(command/125.0e6*(1<<30)+0.5);
		break;
	  case 1:
		/* set sample rate */
		switch(command & 3)
		{
		  case 0: // the bit1 and bit0 encode the sample rate
			//freqMin = 25000;
			//*((uint32_t *)(cfg + 8)) = 1250;
			break;
		  case 1:
			//freqMin = 50000;
			//*((uint32_t *)(cfg + 8)) = 625;
			break;
		  case 2:
			//freqMin = 125000;
			//*((uint32_t *)(cfg + 8)) = 250;
			break;
		  case 3:
			//freqMin = 250000;
			//*((uint32_t *)(cfg + 8)) = 125;
			break;
		}
		break;
		case 2:
			/* send a frame */
			send_a_frame = true;
			//printf("Send a frame to the client\r\n");
		break;
		case 3:
		{
			/* set RF Generator frequency */
			int generator_frequency = command & 0x0FFFFFFF;
			printf("Setting generator frequency at %d Hz\r\n", generator_frequency);
			double f_out = generator_frequency/1000.0; // frequency in KHz
			dds->set_frequency(f_out);
			break;
		}
		case 4:
		{
			/* activate RF Generator or ADC */
			int sel = command & 0x0FFFFFFF;
			if(sel == 0)
				printf("Select RF Generator\r\n");
			else if(sel == 1)
				printf("Select ADC input\r\n");
			else
				printf("Undefined %d value for select RF Generator or ADC input\r\n",sel);
			mux->select(sel);
			break;
		}
	}

	//long now = millis();
	//if(now > last_msecs + 400){
	if(send_a_frame){
	  send_a_frame = false;
	  // Capture a frame (65536 samples x 32 bits signed integers)
	  //last_msecs = now;

	  int ret = dc->capture_and_read(captured_data_rf_);
	  if(ret != 0)
		  printf("Error %d on capture_and_read!\r\n",ret);

	  // we must send 2048 IQ samples (32 bits each). I and Q are interleaved. 2048words * 2iq * 4 bytes = 16384 bytes
	  // The samples are: I0              Q0              I1             Q1       ... I2047                   Q2047
	  // The bytes are : I00 I01 I02 I03 Q00 Q01 Q02 Q03 I10 I11 I12 I13 Q10 Q11  ... I2047_0 I2047_1 I2047_3 Q2047_0 Q2047_1 Q2047_2 Q2047_3
	  // the number of bytes in: 2048 x 2 x 4 = 16384 bytes
	  // we don't have Q samples so we set them to 0
	  for(int i=0;i< num_captured_words;i++){
		  IQ[i*2  ]   = captured_data_rf_[i]; // I sample
		  IQ[i*2+1]   = 0;                    // Q sample
	  }

	  gettimeofday(&my_time, NULL);
	  int num_bytes = num_captured_words*8;
	  //printf("%f msecs: sending %d IQ samples (32 + 32 bits each)\r\n", my_time.tv_sec * 1000 + my_time.tv_usec/1000.0,num_captured_words);
	  //int numsent = send(sockClient, IQ, num_bytes, 0 );
	  //send(sd , buffer , strlen(buffer) , 0 );
	  int numsent = send(sd , IQ , num_bytes, 0 );
	  if(numsent<0){
		  printf("error sending to sockClient %d with error %d\r\n",sd, errno);
	  }else{
		  //printf("sent %d bytes\r\n", numsent);
	  }

	} // endif
}


int main(int argc , char *argv[])
{
    int opt = TRUE;
    int master_socket , addrlen , new_socket , client_socket[30] ,
          max_clients = 30 , activity, i , valread , sd;
    int max_sd;
    struct sockaddr_in address;

    char buffer[1025];  //data buffer of 1K

    // Create the DDS object with a clock frequency=64000 KHz (64MHz) and 26 bit step phase width
    dds = new DDS(0x41210000, size_in_k, 64000.0, 26);

    // Create the MUX object to select ADC input or RF generator
    mux = new MUX(0x41210000, size_in_k);

    // Create the Data_Capture object to capture sampled data from axis_capture_RF
    dc = new Data_Capture(0x43C00000, size_in_k, num_captured_words);

    //allocate memory for captured_data_rf_
    if (captured_data_rf_) delete[] captured_data_rf_;
    captured_data_rf_ = new int[num_captured_words];
    if (IQ) delete[] IQ;
    IQ = new int[num_captured_words*2];

    //set of socket descriptors
    fd_set readfds;

    //a message
    //char *message = "ECHO Daemon v1.0 \r\n";

    //initialise all client_socket[] to 0 so not checked
    for (i = 0; i < max_clients; i++)
    {
        client_socket[i] = 0;
    }

    //create a master socket
    if( (master_socket = socket(AF_INET , SOCK_STREAM , 0)) == 0)
    {
        perror("socket failed");
        exit(EXIT_FAILURE);
    }

    //set master socket to allow multiple connections ,
    //this is just a good habit, it will work without this
    if( setsockopt(master_socket, SOL_SOCKET, SO_REUSEADDR, (char *)&opt,
          sizeof(opt)) < 0 )
    {
        perror("setsockopt");
        exit(EXIT_FAILURE);
    }

    //type of socket created
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons( PORT );

    //bind the socket to localhost port 8888
    if (bind(master_socket, (struct sockaddr *)&address, sizeof(address))<0)
    {
        perror("bind failed");
        exit(EXIT_FAILURE);
    }
    printf("Listener on port %d \n", PORT);

    //try to specify maximum of 3 pending connections for the master socket
    if (listen(master_socket, 3) < 0)
    {
        perror("listen");
        exit(EXIT_FAILURE);
    }

    //accept the incoming connection
    addrlen = sizeof(address);
    puts("Waiting for connections ...");

    while(TRUE)
    {
        //clear the socket set
        FD_ZERO(&readfds);

        //add master socket to set
        FD_SET(master_socket, &readfds);
        max_sd = master_socket;

        //add child sockets to set
        for ( i = 0 ; i < max_clients ; i++)
        {
            //socket descriptor
            sd = client_socket[i];

            //if valid socket descriptor then add to read list
            if(sd > 0)
                FD_SET( sd , &readfds);

            //highest file descriptor number, need it for the select function
            if(sd > max_sd)
                max_sd = sd;
        }

        //wait for an activity on one of the sockets , timeout is NULL ,
        //so wait indefinitely
        activity = select( max_sd + 1 , &readfds , NULL , NULL , NULL);

        if ((activity < 0) && (errno!=EINTR))
        {
            printf("select error");
        }

        //If something happened on the master socket ,
        //then its an incoming connection
        if (FD_ISSET(master_socket, &readfds))
        {
            if ((new_socket = accept(master_socket,
                    (struct sockaddr *)&address, (socklen_t*)&addrlen))<0)
            {
                perror("accept");
                exit(EXIT_FAILURE);
            }

            //inform user of socket number - used in send and receive commands
            printf("New connection , socket fd is %d , ip is : %s , port : %d\n" , new_socket , inet_ntoa(address.sin_addr) , ntohs
                  (address.sin_port));

            //send new connection greeting message
            /*
            if( send(new_socket, message, strlen(message), 0) != strlen(message) )
            {
                perror("send");
            }
			*/
            puts("Welcome message sent successfully");

            //add new socket to array of sockets
            for (i = 0; i < max_clients; i++)
            {
                //if position is empty
                if( client_socket[i] == 0 )
                {
                    client_socket[i] = new_socket;
                    printf("Adding to list of sockets as %d\n" , i);

                    break;
                }
            }
        }

        //else its some IO operation on some other socket
        for (i = 0; i < max_clients; i++)
        {
            sd = client_socket[i];

            if (FD_ISSET( sd , &readfds))
            {
                //Check if it was for closing , and also read the
                //incoming message
                if ((valread = read( sd , buffer, 1024)) == 0)
                {
                    //Somebody disconnected , get his details and print
                    getpeername(sd , (struct sockaddr*)&address , \
                        (socklen_t*)&addrlen);
                    printf("Host disconnected , ip %s , port %d \n" ,
                          inet_ntoa(address.sin_addr) , ntohs(address.sin_port));

                    //Close the socket and mark as 0 in list for reuse
                    close( sd );
                    client_socket[i] = 0;
                }

                //Echo back the message that came in
                else
                {
                	// read the received data 4 by 4 bytes as they are uint32_t commands
                	for(int i=0; i < valread; i+=4){
						uint32_t * command = (uint32_t *) buffer;
						//send(sd , buffer , strlen(buffer) , 0 );
						handle_rx(sd, *command);
                    }
                }
            }
        }
    }

    return 0;
}
