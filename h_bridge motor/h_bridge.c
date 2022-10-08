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



	TRISC2=0;
	TRISC1=0;
	TRISB=0XFF;
	TRISD=0X00;
	RD4=0;RD5=0;


	ANSEL=ANSELH=0;

	TMR2=0;



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
			i=1;	
		}

		if(!RB1)
		{
			while(!RB1){};
			i=2;	
		}
		if(i==2)
		{
			//15kH, 70
			PR2=82;
			CCPR1L=57;
			RD5=1;RD4=0;
				
		}
		else if(i==1)
		{

			PR2=124;
			CCPR1L=112;
			RD5=0;
			RD4=1;
		}

	

	}

}

