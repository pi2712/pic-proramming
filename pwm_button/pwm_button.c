#include<htc.h>
#include<stdio.h>
#include<stdlib.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_ON & CP_OFF & CPD_OFF
& BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
unsigned int i=0;
main()
{
	lcd_init();

	TRISC2=0;
	TRISC1=0;
	TRISB=0XFF;

	ANSEL=ANSELH=0;

	TMR2=0;
	PR2=82;

	//tmr2 config
	TMR2IF=0;
	T2CKPS1=0;
	T2CKPS0=1;
	
	TOUTPS3=0;
	TOUTPS2=0;
	TOUTPS1=0;
	TOUTPS0=0;

	TMR2ON=1;

	//che do PWM CCP1
	CCP1M3=1;
	CCP1M2=1;
	CCP1M1=0;
	CCP1M0=0;
	
	


	while(1)
	{

		if(!RB0)
		{
			while(!RB0){};
			i++;	
		}

		if(!RB1)
		{
			while(!RB1){};
			i--;	
		}
		CCPR1L=0;
		if(i==1)
		{
			CCPR1L = 12;	
		}
		else if(i==2)
		{
			CCPR1L = 25;		
		}
		else if(i==3)
		{
			CCPR1L = 37;		
		}
		else if(i==4)
		{
			CCPR1L = 49;		
		}
		else if(i==5)
		{
			CCPR1L = 61;		
		}
		else if(i==6)
		{
			CCPR1L = 74;		
		}
		else if(i==7)
		{
			i=1;		
		}
		lcd_gotoxy(0,0);
		printf("dem:%u",i);
		lcd_gotoxy(0,1);
		printf("ccp:%u",CCPR1L);
	}

}


void putch(char ki_tu)
{
	lcd_putc(ki_tu);
}