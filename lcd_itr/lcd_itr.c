#include<htc.h>
#include<stdio.h>
#include "lcd(16).h"



#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_ON & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
 
unsigned char dem=0;
unsigned int chuc, donvi;
const unsigned char MA7DOAN[10]={00xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};

void seg(unsigned char count);
 void main()
 {	
	ANSEL = ANSELH= 0;
	TRISB0 = 1;
	TRISA = 0x00;
	PORTA =0xFF;

	TRISC = 0x00;
	TRISD = 0x00;
	
	INTE = 1;
	INTF = 0;
	GIE = 1;
	INTEDG = 0; // ngat xung xuong

while(1)
	{
	seg(dem);
	}

}
void interrupt ngat()
{
//////
	__delay_ms(50);
	if(dem<=99)
		{dem++;}
	else {dem = 0;}
///
	INTF = 0;
}


void seg(unsigned char count)
{	
	donvi=dem%10;
	chuc=dem/10;
	PORTC=MA7DOAN[chuc];
	PORTD=MA7DOAN[donvi];
}