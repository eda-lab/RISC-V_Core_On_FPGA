#include "math.h"
#include "stdio.h"

#define GPIO_ADDR  0x00031000
#define UART_ADDR  0x00030000
#define VIDEO_ADDR 0x00020000
	
volatile int time = 500000;

int main(void){

	while(1){
		while(time--);
		time = 500000;
		*(volatile unsigned int*) (GPIO_ADDR)  = 1;
		*(volatile unsigned char*)(UART_ADDR)  = 'H';
		*(volatile unsigned char*)(VIDEO_ADDR) = 'H';
 		
		while(time--);
		time = 500000;
		*(volatile unsigned int*) (GPIO_ADDR)  = 2;
		*(volatile unsigned char*)(UART_ADDR)  = 'E';
		*(volatile unsigned char*)(VIDEO_ADDR+1) = 'E';

	}
}

