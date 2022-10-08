#include<htc.h>
#include<stdio.h>
#include<stdlib.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_ON & CP_OFF & CPD_OFF
& BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned long long int pulse,tam,kq,dem;


main()
{
	TRISC0=1;
	TRISD=0X00;

	TMR1ON=1;
	TMR1GE=0; 
	T1OSCEN=1;
	TMR1CS=1;
	T1CKPS1=0;
	T1CKPS0=0;
	T1SYNC=0;

	TMR1IF=0;
	TMR1IE=1;
	PEIE=1;
	GIE=1;

	TMR1=0;

	lcd_init();

	while(1)
	{
		pulse=65535*dem+TMR1;
		tam=pulse;
		__delay_ms(1000);
		pulse=65535*dem+TMR1;
		kq=pulse-tam;
		lcd_gotoxy(0,0);
		printf("%lluHz",kq);
	}
	
	
}

void putch(char ki_tu)
{
	lcd_putc(ki_tu);
}

void interrupt ngat()
{
	if(TMR1IF&&TMR1IE)
	{
		dem++;
		TMR1IF=0;
	}
	
}