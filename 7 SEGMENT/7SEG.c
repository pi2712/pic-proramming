#include<htc.h>
#include<stdio.h>



#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_ON & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
 
unsigned char dem=0;
void seg(unsigned char count);
 void main()
 {	
	ANSEL = ANSELH= 0;
	TRISB0 = 1;
	TRISA = 0x00;
	PORTA =0xFF;

	TRISC = 0x00;

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
	if(dem<=8)
		{dem++;}
	else {dem = 0;}
///
	INTF = 0;
}


void seg(unsigned char count)
{	if(count == 0) {PORTC = 0x3F;}
	if(count == 1) {PORTC = 0X06;}
	if(count == 2) {PORTC = 0X5B;}
	if(count == 3) {PORTC = 0X4F;}
	if(count == 4) {PORTC = 0X66;}
	if(count == 5) {PORTC = 0X6D;}
	if(count == 6) {PORTC = 0X7D;}
	if(count == 7) {PORTC = 0X07;}
	if(count == 8) {PORTC = 0X7F;}
	if(count == 9) {PORTC = 0X6F;}

}