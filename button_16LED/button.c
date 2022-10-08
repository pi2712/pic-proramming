#include<htc.h>
#include<stdio.h>



#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_ON & CP_OFF & CPD_OFF
& BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
int i;
bit fl_RB0, fl_RB1,fl_RB2, fl_RB3,fl_RB4,fl_RB5,fl_RB6,fl_RB7;
void rb0(),rb1(),rb2(),rb3(),rb4(),rb5(),rb6(),rb7();

main()
{
	ANSEL=ANSELH=0;
	IOCB=0XFF;
	RBIF=0;
	RBIE=1;
	GIE=1;
	PEIE=1;

	TRISB=0XFF;
	TRISC=0X00;
	TRISD=0X00;
	
	PORTC=0XFF;
	PORTD=0XFF;



	while(1)
	{
		if(fl_RB0==1)
		{	
			PORTC=0X00;
			PORTD=0X00;
			__delay_ms(50);
			rb0();
		}
		else if(fl_RB1==1)
		{
			PORTC=0X00;
			PORTD=0X00;
			__delay_ms(50);
			rb1();
		}	
		else if(fl_RB2==1)
		{
			PORTC=0X00;
			PORTD=0X00;
			__delay_ms(50);
			rb2();
		}
		else if(fl_RB3==1)
		{
			PORTC=0X00;
			PORTD=0X00;
			__delay_ms(50);
			rb3();
		}	
		else if(fl_RB4==1)
		{
			PORTC=0X00;
			PORTD=0X00;
			__delay_ms(50);
			rb4();
		}
		else if(fl_RB5==1)
		{
			PORTC=0X00;
			PORTD=0X00;
			__delay_ms(50);
			rb5();
		}
		else if(fl_RB6==1)
		{
			PORTC=0X00;
			PORTD=0X00;
			__delay_ms(50);
			rb6();
		}
		else if(fl_RB7==1)
		{
			PORTC=0X00;
			PORTD=0X00;
			__delay_ms(50);
			rb7();
		}
	}
}

void interrupt ngat()
{
	if(RBIF && RBIE)
	{
		if(RB0)
		{			
			fl_RB0=1;
			fl_RB1=0;
			fl_RB2=0;
			fl_RB3=0;
			fl_RB4=0;
			fl_RB5=0;
			fl_RB6=0;
			fl_RB7=0;
		
		}
		else if (RB1)
		{
			__delay_ms(100);
			fl_RB0=0;
			fl_RB1=1;
			fl_RB2=0;
			fl_RB3=0;
			fl_RB4=0;
			fl_RB5=0;
			fl_RB6=0;
			fl_RB7=0;

		}
		else if (RB2)
		{
			__delay_ms(100);
			fl_RB0=0;
			fl_RB1=0;
			fl_RB2=1;
			fl_RB3=0;
			fl_RB4=0;
			fl_RB5=0;
			fl_RB6=0;
			fl_RB7=0;

		}
		else if (RB3)
		{
			__delay_ms(100);
			fl_RB0=0;
			fl_RB1=0;
			fl_RB2=0;
			fl_RB3=1;
			fl_RB4=0;
			fl_RB5=0;
			fl_RB6=0;
			fl_RB7=0;

		}
		else if (RB4)
		{
			__delay_ms(100);
			fl_RB0=0;
			fl_RB1=0;
			fl_RB2=0;
			fl_RB3=0;
			fl_RB4=1;
			fl_RB5=0;
			fl_RB6=0;
			fl_RB7=0;

		}
		else if (RB5)
		{
			__delay_ms(100);
			fl_RB0=0;
			fl_RB1=0;
			fl_RB2=0;
			fl_RB3=0;
			fl_RB4=0;
			fl_RB5=1;
			fl_RB6=0;
			fl_RB7=0;

		}
		else if (RB6)
		{
			__delay_ms(100);
			fl_RB0=0;
			fl_RB1=0;
			fl_RB2=0;
			fl_RB3=0;
			fl_RB4=0;
			fl_RB5=0;
			fl_RB6=1;
			fl_RB7=0;

		}
		else if (RB7)
		{
			__delay_ms(100);
			fl_RB0=0;
			fl_RB1=0;
			fl_RB2=0;
			fl_RB3=0;
			fl_RB4=0;
			fl_RB5=0;
			fl_RB6=0;
			fl_RB7=1;

		}
	}
	RBIF=0;
}

void rb0()
{
	PORTD=0X80;
	
	for(i=0;i<8;i++)
	{
	__delay_ms(200);
	PORTD=PORTD>>1;
	
	}
	PORTC=0X80;
	for(i=7;i<15;i++)
	{
	__delay_ms(200);
	PORTC=PORTC>>1;
		
	}
}

void rb1()
{
	PORTC=0X01;
	for(i=0;i<8;i++)
	{
	__delay_ms(200);
	PORTC=PORTC<<1;
	}

	PORTD=0X01;
	for(i=7;i<15;i++)
	{
	__delay_ms(200);
	PORTD=PORTD<<1;
		
	}
}

void rb2()
{
	__delay_ms(200);
	PORTC=0xAA;
	PORTD=0XAA;
	__delay_ms(200);
	PORTC=0X55;
	PORTD=0X55;
}

void rb3()
{
	PORTC=0X01;
	for(i=0;i<8;i++)
	{
	__delay_ms(200);
	PORTC=(PORTC<<1)+0x01;
	}

	PORTD=0X01;
	for(i=7;i<15;i++)
	{
	__delay_ms(200);
	PORTD=(PORTD<<1)+0x01;
	}
	PORTC=0X00;
	PORTD=0X00;
	__delay_ms(200);
}

void rb4()
{
	PORTD=0X80;
	
	for(i=0;i<8;i++)
	{
	__delay_ms(200);
	PORTD=(PORTD>>1)+0x80;
	
	}
	PORTC=0X80;
	for(i=7;i<15;i++)
	{
	__delay_ms(200);
	PORTC=(PORTC>>1)+0x80;
		
	}
	PORTC=0X00;
	PORTD=0X00;
	__delay_ms(200);
}

void rb5()
{
	PORTC=0X80;
	PORTD=0X01;
	for(i=0;i<8;i++)
	{	
		__delay_ms(200);
		PORTC=PORTC>>1;
		PORTD=PORTD<<1;
		
	}
}

void rb6()
{
	PORTC=0X01;
	PORTD=0X80;
	for(i=0;i<8;i++)
	{	
		__delay_ms(200);
		PORTC=PORTC<<1;
		PORTD=PORTD>>1;
		
	}
}

void rb7()
{
	__delay_ms(200);
	PORTC=0XFF;
	PORTD=0XFF;
	__delay_ms(200);
	PORTC=0X00;
	PORTD=0X00;
}