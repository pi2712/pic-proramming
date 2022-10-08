#include<htc.h>
#include<stdio.h>
#include<stdlib.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_ON & CP_OFF & CPD_OFF
& BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

float dem,sum,tam,kq;
float rpm;

main()
{
	TRISA4=1;
	TRISD=0X00;	

	ANSEL=ANSELH=0;
	T0CS=1;
	T0SE=0;
	PSA=1;


	TMR0=0;

	T0IE  = 1;
	T0IF = 0;
	GIE=1; 

	lcd_init();

	while(1)
	{
		sum=dem*256+TMR0;
		tam=sum;
		__delay_ms(1000);
		sum=dem*256+TMR0;
		kq=sum-tam;

		rpm=(kq*60)/360;
		
		lcd_gotoxy(0,0);
		printf("pps:%3.0f",kq);

		lcd_gotoxy(0,1);
		printf("rpm: %3.1f",rpm);
	}
}

void putch(char ki_tu)
{
	lcd_putc(ki_tu);
}

void interrupt ngat()
{
	if(T0IE&&T0IF)
	{
		dem++;
		T0IF=0;
	
	
}
}