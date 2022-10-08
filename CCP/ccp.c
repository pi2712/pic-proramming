#include<htc.h>
#include<stdio.h>
#include<stdlib.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_ON & CP_OFF & CPD_OFF
& BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned long int dem, ccp_old,ccp=0;
float fre;
;
main()
{
	lcd_init();
	ANSEL = ANSELH = 0;

	TRISC2=1;
	TRISD=0X00;

	//config timer1
	TMR1ON=1;
	TMR1GE=0;

	TMR1CS=0;
	T1CKPS1=0;
	T1CKPS0=0;
	T1SYNC=1;

	TMR1H=0;
	TMR1L=0;
	
	//Capture 1 canh len
	CCP1M3 = 0;
	CCP1M2 = 1;
	CCP1M1 = 0;
	CCP1M0 = 1;
	
	CCPR1H=CCPR1L=0;  

	//interrupt config
	CCP1IE=1;
	CCP1IF=0;
	PEIE=1;
	GIE=1;

	TRISD=0X00;


	while(1)
	{

		fre = 1.0/(dem/5000000.0);
		lcd_gotoxy(0,0);	
		printf("fre: %6.1f",fre);
		lcd_gotoxy(0,1);
		printf("%6u",dem);
	}
}

void putch(char c)
{
	lcd_putc(c);
}

void interrupt ngat()
{
	if(CCP1IF&&CCP1IE)
	{	
		dem = CCPR1 - ccp_old;
		ccp_old = CCPR1;

	}
	CCP1IF = 0;
}