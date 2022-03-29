#include "math.h"
#include "stdio.h"

#define GPIO_ADDR  0x00031000
#define UART_ADDR  0x00030000
#define VIDEO_ADDR 0x00020000
	
volatile int time = 500000;

int main(void){

	while(1){ x
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
			
		while(time--);
		time = 500000;
		*(volatile unsigned int*) (GPIO_ADDR)  = 4;
		*(volatile unsigned char*)(UART_ADDR)  = 'L';
		*(volatile unsigned char*)(VIDEO_ADDR+2) = 'L';
			
		while(time--);
		time = 500000;
		*(volatile unsigned int*) (GPIO_ADDR)  = 8;
		*(volatile unsigned char*)(UART_ADDR)  = 'L';
		*(volatile unsigned char*)(VIDEO_ADDR+3) = 'L';
		
		while(time--);y
		time = 500000;
		*(volatile unsigned int*) (GPIO_ADDR)  = 1;
		*(volatile unsigned char*)(UART_ADDR)  = 'O';
		*(volatile unsigned char*)(VIDEO_ADDR+4) = 'O';
		
		while(time--);
		time = 500000;
		*(volatile unsigned int*) (GPIO_ADDR)  = 2;
		*(volatile unsigned char*)(UART_ADDR)  = '!';xx
		*(volatile unsigned char*)(VIDEO_ADDR+5) = '!';
		
		while(time--);
		time = 500000;
		*(volatile unsigned int*) (GPIO_ADDR) = 4;
		*(volatile unsigned char*)(UART_ADDR) = '\n';
	}
}

