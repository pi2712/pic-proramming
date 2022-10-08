#include<htc.h>
#include<stdio.h>
#include<stdlib.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_ON & CP_OFF & CPD_OFF
& BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned int dem,canhlen,canhxuong;
float dis;

main()
{
	lcd_init();
	ANSEL=ANSELH=0;
	TRISA0=0;

	//config timer1
	TMR1ON=1;
	TMR1GE=0;

	TMR1CS=0;
	T1CKPS1=0;
	T1CKPS0=0;
	T1SYNC=1;	

	TMR1H=0;
	TMR1L=0;

	//Capture 1 canh len CCP1
	CCP1M3 = 0;
	CCP1M2 = 1;
	CCP1M1 = 0;
	CCP1M0 = 1;
	
	CCPR1H=CCPR1L=0;  

	//Capture 1 canh xuong CCP2
	CCP2M3=0;
	CCP2M2=1;
	CCP2M1=0;
	CCP2M0=0;

	CCPR2H=CCPR2L=0;  
	//interrupt config CCP1
	CCP1IE=1;
	CCP1IF=0;
	PEIE=1;
	GIE=1;

	//interrupt config CCP2
	CCP2IE=1;
	CCP2IF=0;
	PEIE=1;
	GIE=1;

	while(1)
	{
		RA0=1;
		__delay_us(10);
		RA0=0;
		__delay_ms(10);

		dem = canhxuong - canhlen;
		dis = ((dem/5000000.0)/2.0)*34324.0;
		lcd_gotoxy(0,0);
		printf("Distance: %2.1f",dis);
		lcd_gotoxy(0,1);
		printf("dem: %5u",dem);


	}

	
}

void interrupt ngat()
{
	if(CCP1IF)
	{
		CCP1IF=0;
		canhlen = CCPR1;
		
	}

	if(CCP2IF)
	{
		CCP2IF=0;
		canhxuong=CCPR2;
	}
}

void putch(char c)
{
	lcd_putc(c);
}






