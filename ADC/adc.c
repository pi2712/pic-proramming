#include<htc.h>
#include<stdio.h>
#include <math.h>

#define _XTAL_FREQ 20000000

__CONFIG( FOSC_HS& WDTE_OFF & PWRTE_ON & MCLRE_ON & CP_OFF & CPD_OFF 
& BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);


char chuc, dv;
 int adc;
 float res;
unsigned char maled[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};



void main()
 {

   //TRISB = 0b00000000;
	 TRISB1 = TRISB2 = 0;
   //RB1 = RB2  = 1;
   

   TRISC = 0x00;
   TRISD=0X00;
	PORTC=0X00;

	
	TRISA0=1;/// khoi tao ngo vao
	ANS0=1;////khoi tao anolog
	/// thiet lap adc qua viec thiet lap adcs1:adcs0
	ADCS1=1;//// lua chon tan so fosc/32
	ADCS0=0;
	/// lua chon dien ap tham chieu, co´ 2 nguôn, nguô`n nôi va nguon ngoai
	/// neu su dung nguon tham chieu ngoai thi noi dien ao tham chieu vao chan vref+- 
	// neu su dung tham chieu ngoai thi khai bao VCFG1=1; VCFG0=1;
	VCFG1=0; VCFG0=0;/// tham chieu trong
	/// lua chon kênh do , duoc quy dinh boi 4bit CHS3:0
	/// de chon nhie kenh thi` cho tung kenh hoat dong roi tat thong qua cho chuyen doi kenh nay xong thi qua kenh kia bang viec khai bao lai chs3:0
	CHS3=CHS2=CHS1=CHS0=0;
	//// lua chon dinh dang ket qua 10bi hay 8 bit va dinh dang ben trai hay ben phai
	//// lay 10 bit thi dinh dang ben phai, ADRESH*256+ADRESL
	/// lay 8bit thi dinh dang ben tra´i, luc nay thi lay ADRESH
	ADFM=1;// dinh dang phai 10 bit
	ADON=1;//// on bo ADC
	
	///// chowf thoi gian chuyen doi, nho nhat la` 4.67ms
	
	////bat dau chuyen doi bang viec set bit GODONE=1;


 while(1)
{    
	GO_nDONE=1;
	__delay_ms(10);
	while(GO_nDONE==1){}
	

	adc = ADRESH*256 + ADRESL;	
    res = (adc/1023.0)*100.0;
  	if (res<100)
	{
   chuc =  ((int)res)/10;
   dv   =  ((int)res)%10;
 
   PORTC=maled[chuc];
   RB1=1;
   __delay_ms(200);
   RB1=0;
   __delay_ms(200);

   PORTC=maled[dv];
   RB2=1;
   __delay_ms(200);
   RB2=0;
   __delay_ms(200);
	
}
else
{
	res=99;
	   chuc =  ((int)res)/10;
   dv   =  ((int)res)%10;
 
   PORTC=maled[chuc];
   RB1=1;
   __delay_ms(200);
   RB1=0;
   __delay_ms(200);

   PORTC=maled[dv];
   RB2=1;
   __delay_ms(200);
   RB2=0;
   __delay_ms(200);
}
}
}

