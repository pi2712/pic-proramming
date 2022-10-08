opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 8 "C:\Online Class\HK6\Practice_Micro\pwm_button\pwm_button.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Online Class\HK6\Practice_Micro\pwm_button\pwm_button.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_printf
	FNCALL	_printf,_putch
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_putch,_lcd_putc
	FNCALL	_lcd_putc,_lcd_put_byte
	FNCALL	_lcd_putc,_lcd_busy
	FNCALL	_lcd_putc,_lcd_gotoxy
	FNCALL	_lcd_putc,_isprint
	FNCALL	_lcd_gotoxy,_lcd_put_byte
	FNCALL	_lcd_gotoxy,_lcd_busy
	FNCALL	_lcd_init,_lcd_put_byte
	FNCALL	_lcd_init,_lcd_busy
	FNROOT	_main
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_i
	global	_CCPR1L
_CCPR1L	set	21
	global	_TMR2
_TMR2	set	17
	global	_CCP1M0
_CCP1M0	set	184
	global	_CCP1M1
_CCP1M1	set	185
	global	_CCP1M2
_CCP1M2	set	186
	global	_CCP1M3
_CCP1M3	set	187
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR2IF
_TMR2IF	set	97
	global	_TMR2ON
_TMR2ON	set	146
	global	_TOUTPS0
_TOUTPS0	set	147
	global	_TOUTPS1
_TOUTPS1	set	148
	global	_TOUTPS2
_TOUTPS2	set	149
	global	_TOUTPS3
_TOUTPS3	set	150
	global	_PR2
_PR2	set	146
	global	_TRISB
_TRISB	set	134
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISD1
_TRISD1	set	1089
	global	_TRISD2
_TRISD2	set	1090
	global	_TRISD3
_TRISD3	set	1091
	global	_TRISD4
_TRISD4	set	1092
	global	_TRISD5
_TRISD5	set	1093
	global	_TRISD6
_TRISD6	set	1094
	global	_TRISD7
_TRISD7	set	1095
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	
STR_1:	
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	117	;'u'
	retlw	0
psect	strings
	
STR_2:	
	retlw	99	;'c'
	retlw	99	;'c'
	retlw	112	;'p'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	117	;'u'
	retlw	0
psect	strings
	file	"pwm_button.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_i:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_putc
?_lcd_putc:	; 0 bytes @ 0x0
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0x0
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0x0
	global	?_isprint
?_isprint:	; 1 bit 
	global	??_isprint
??_isprint:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_lcd_busy
?_lcd_busy:	; 1 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x0
	global	_isprint$3632
_isprint$3632:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x1
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x1
	global	isprint@c
isprint@c:	; 1 bytes @ 0x1
	ds	1
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0x3
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0x5
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x5
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x6
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	1
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x8
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x8
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x9
	global	putch@ki_tu
putch@ki_tu:	; 1 bytes @ 0x9
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0xC
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_printf
??_printf:	; 0 bytes @ 0x0
	ds	2
	global	printf@ap
printf@ap:	; 1 bytes @ 0x2
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0x3
	ds	4
	global	printf@f
printf@f:	; 1 bytes @ 0x7
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x8
	ds	1
	global	printf@c
printf@c:	; 1 bytes @ 0x9
	ds	1
;;Data sizes: Strings 14, constant 10, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     10      12
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 7
;;		 -> STR_2(CODE[7]), STR_1(CODE[7]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(COMMON[2]), 
;;
;; S3114$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_printf
;;   _printf->___lwmod
;;   _putch->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   _lcd_gotoxy->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_printf
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0    1908
;;                           _lcd_init
;;                         _lcd_gotoxy
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              13    11      2    1351
;;                                             12 COMMON     2     0      2
;;                                              0 BANK0     10    10      0
;;                              _putch
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0     713
;;                                              9 COMMON     1     1      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (3) _lcd_putc                                             1     1      0     691
;;                                              8 COMMON     1     1      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (4) _lcd_gotoxy                                           3     2      1     313
;;                                              5 COMMON     3     2      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             4     4      0     244
;;                                              5 COMMON     3     3      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (5) _lcd_busy                                             2     2      0      23
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (5) _lcd_put_byte                                         5     4      1     221
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     159
;;                                              7 COMMON     5     1      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     162
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (4) _isprint                                              2     2      0      68
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
;;   _lcd_gotoxy
;;     _lcd_put_byte
;;     _lcd_busy
;;   _printf
;;     _putch
;;       _lcd_putc
;;         _lcd_put_byte
;;         _lcd_busy
;;         _lcd_gotoxy
;;           _lcd_put_byte
;;           _lcd_busy
;;         _isprint
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      1A       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      A       C       5       15.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      1F      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "C:\Online Class\HK6\Practice_Micro\pwm_button\pwm_button.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  1034[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_init
;;		_lcd_gotoxy
;;		_printf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Online Class\HK6\Practice_Micro\pwm_button\pwm_button.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	13
	
l4099:	
;pwm_button.c: 13: lcd_init();
	fcall	_lcd_init
	line	15
	
l4101:	
;pwm_button.c: 15: TRISC2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	16
	
l4103:	
;pwm_button.c: 16: TRISC1=0;
	bcf	(1081/8)^080h,(1081)&7
	line	17
	
l4105:	
;pwm_button.c: 17: TRISB=0XFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	19
	
l4107:	
;pwm_button.c: 19: ANSEL=ANSELH=0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	21
	
l4109:	
;pwm_button.c: 21: TMR2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(17)	;volatile
	line	22
	
l4111:	
;pwm_button.c: 22: PR2=82;
	movlw	(052h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	25
	
l4113:	
;pwm_button.c: 25: TMR2IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7
	line	26
	
l4115:	
;pwm_button.c: 26: T2CKPS1=0;
	bcf	(145/8),(145)&7
	line	27
	
l4117:	
;pwm_button.c: 27: T2CKPS0=1;
	bsf	(144/8),(144)&7
	line	29
	
l4119:	
;pwm_button.c: 29: TOUTPS3=0;
	bcf	(150/8),(150)&7
	line	30
	
l4121:	
;pwm_button.c: 30: TOUTPS2=0;
	bcf	(149/8),(149)&7
	line	31
	
l4123:	
;pwm_button.c: 31: TOUTPS1=0;
	bcf	(148/8),(148)&7
	line	32
	
l4125:	
;pwm_button.c: 32: TOUTPS0=0;
	bcf	(147/8),(147)&7
	line	34
	
l4127:	
;pwm_button.c: 34: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	37
	
l4129:	
;pwm_button.c: 37: CCP1M3=1;
	bsf	(187/8),(187)&7
	line	38
	
l4131:	
;pwm_button.c: 38: CCP1M2=1;
	bsf	(186/8),(186)&7
	line	39
	
l4133:	
;pwm_button.c: 39: CCP1M1=0;
	bcf	(185/8),(185)&7
	line	40
	
l4135:	
;pwm_button.c: 40: CCP1M0=0;
	bcf	(184/8),(184)&7
	line	48
	
l4137:	
;pwm_button.c: 46: {
;pwm_button.c: 48: if(!RB0)
	btfsc	(48/8),(48)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l4143
u1000:
	line	50
	
l1037:	
	btfss	(48/8),(48)&7
	goto	u1011
	goto	u1010
u1011:
	goto	l1037
u1010:
	line	51
	
l4141:	
;pwm_button.c: 51: i++;
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	line	54
	
l4143:	
;pwm_button.c: 52: }
;pwm_button.c: 54: if(!RB1)
	btfsc	(49/8),(49)&7
	goto	u1021
	goto	u1020
u1021:
	goto	l4149
u1020:
	line	56
	
l1041:	
	btfss	(49/8),(49)&7
	goto	u1031
	goto	u1030
u1031:
	goto	l1041
u1030:
	line	57
	
l4147:	
;pwm_button.c: 57: i--;
	movlw	low(01h)
	subwf	(_i),f
	movlw	high(01h)
	skipc
	decf	(_i+1),f
	subwf	(_i+1),f
	line	59
	
l4149:	
;pwm_button.c: 58: }
;pwm_button.c: 59: CCPR1L=0;
	clrf	(21)	;volatile
	line	60
	
l4151:	
;pwm_button.c: 60: if(i==1)
	decf	(_i),w
	iorwf	(_i+1),w

	skipz
	goto	u1041
	goto	u1040
u1041:
	goto	l4155
u1040:
	line	62
	
l4153:	
;pwm_button.c: 61: {
;pwm_button.c: 62: CCPR1L = 12;
	movlw	(0Ch)
	movwf	(21)	;volatile
	line	63
;pwm_button.c: 63: }
	goto	l4179
	line	64
	
l4155:	
;pwm_button.c: 64: else if(i==2)
		movf	(_i),w
	xorlw	2
	iorwf	(_i+1),w

	skipz
	goto	u1051
	goto	u1050
u1051:
	goto	l4159
u1050:
	line	66
	
l4157:	
;pwm_button.c: 65: {
;pwm_button.c: 66: CCPR1L = 25;
	movlw	(019h)
	movwf	(21)	;volatile
	line	67
;pwm_button.c: 67: }
	goto	l4179
	line	68
	
l4159:	
;pwm_button.c: 68: else if(i==3)
		movf	(_i),w
	xorlw	3
	iorwf	(_i+1),w

	skipz
	goto	u1061
	goto	u1060
u1061:
	goto	l4163
u1060:
	line	70
	
l4161:	
;pwm_button.c: 69: {
;pwm_button.c: 70: CCPR1L = 37;
	movlw	(025h)
	movwf	(21)	;volatile
	line	71
;pwm_button.c: 71: }
	goto	l4179
	line	72
	
l4163:	
;pwm_button.c: 72: else if(i==4)
		movf	(_i),w
	xorlw	4
	iorwf	(_i+1),w

	skipz
	goto	u1071
	goto	u1070
u1071:
	goto	l4167
u1070:
	line	74
	
l4165:	
;pwm_button.c: 73: {
;pwm_button.c: 74: CCPR1L = 49;
	movlw	(031h)
	movwf	(21)	;volatile
	line	75
;pwm_button.c: 75: }
	goto	l4179
	line	76
	
l4167:	
;pwm_button.c: 76: else if(i==5)
		movf	(_i),w
	xorlw	5
	iorwf	(_i+1),w

	skipz
	goto	u1081
	goto	u1080
u1081:
	goto	l4171
u1080:
	line	78
	
l4169:	
;pwm_button.c: 77: {
;pwm_button.c: 78: CCPR1L = 61;
	movlw	(03Dh)
	movwf	(21)	;volatile
	line	79
;pwm_button.c: 79: }
	goto	l4179
	line	80
	
l4171:	
;pwm_button.c: 80: else if(i==6)
		movf	(_i),w
	xorlw	6
	iorwf	(_i+1),w

	skipz
	goto	u1091
	goto	u1090
u1091:
	goto	l4175
u1090:
	line	82
	
l4173:	
;pwm_button.c: 81: {
;pwm_button.c: 82: CCPR1L = 74;
	movlw	(04Ah)
	movwf	(21)	;volatile
	line	83
;pwm_button.c: 83: }
	goto	l4179
	line	84
	
l4175:	
;pwm_button.c: 84: else if(i==7)
		movf	(_i),w
	xorlw	7
	iorwf	(_i+1),w

	skipz
	goto	u1101
	goto	u1100
u1101:
	goto	l1051
u1100:
	line	86
	
l4177:	
;pwm_button.c: 85: {
;pwm_button.c: 86: i=1;
	clrf	(_i)
	incf	(_i),f
	clrf	(_i+1)
	goto	l4179
	line	88
	
l1051:	
	
l4179:	
;pwm_button.c: 87: }
;pwm_button.c: 88: lcd_gotoxy(0,0);
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	89
	
l4181:	
;pwm_button.c: 89: printf("dem:%u",i);
	movf	(_i+1),w
	movwf	(?_printf+1)
	movf	(_i),w
	movwf	(?_printf)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	90
	
l4183:	
;pwm_button.c: 90: lcd_gotoxy(0,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	91
	
l4185:	
;pwm_button.c: 91: printf("ccp:%u",CCPR1L);
	movf	(21),w	;volatile
	movwf	(?_printf)
	clrf	(?_printf+1)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	goto	l4137
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	94
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_printf
psect	text188,local,class=CODE,delta=2
global __ptext188
__ptext188:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(7), STR_1(7), 
;; Auto vars:     Size  Location     Type
;;  f               1    7[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(7), STR_1(7), 
;;  _val            4    3[BANK0 ] struct .
;;  c               1    9[BANK0 ] char 
;;  prec            1    8[BANK0 ] char 
;;  ap              1    2[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  flag            1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   12[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         2      10       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_putch
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text188
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 3
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	movwf	(printf@f)
	
l4063:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	540
	goto	l4097
	line	542
	
l4065:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u951
	goto	u950
u951:
	goto	l4071
u950:
	line	545
	
l4067:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l4097
	line	638
	
l4071:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
; rangetable           122     6 (fixed)
; spacedrange          242     9 (fixed)
; locatedrange         118     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2185
	xorlw	117^0	; case 117
	skipnz
	goto	l4073
	goto	l4097
	opt asmopt_on

	line	1281
	
l4073:	
	movf	(printf@ap),w
	movwf	fsr0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l4075:	
	incf	(printf@ap),f
	incf	(printf@ap),f
	line	1300
	
l4077:	
	clrf	(printf@c)
	incf	(printf@c),f
	line	1301
	
l4083:	
	clrc
	rlf	(printf@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+0)+0
	fcall	stringdir
	movwf	(??_printf+0)+0+1
	movf	1+(??_printf+0)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u965
	movf	0+(??_printf+0)+0,w
	subwf	(printf@_val),w
u965:
	skipnc
	goto	u961
	goto	u960
u961:
	goto	l4087
u960:
	goto	l4091
	line	1300
	
l4087:	
	incf	(printf@c),f
	
l4089:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u971
	goto	u970
u971:
	goto	l4083
u970:
	line	1467
	
l4091:	
	movf	(printf@c),w
	movwf	(printf@prec)
	line	1469
	goto	l4095
	line	1484
	
l4093:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(printf@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(printf@_val+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(printf@_val),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(printf@c)
	line	1516
	movf	(printf@c),w
	fcall	_putch
	line	1469
	
l4095:	
	decf	(printf@prec),f
	incf	((printf@prec)),w
	skipz
	goto	u981
	goto	u980
u981:
	goto	l4093
u980:
	line	540
	
l4097:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u991
	goto	u990
u991:
	goto	l4065
u990:
	line	1533
	
l2185:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text189,local,class=CODE,delta=2
global __ptext189
__ptext189:

;; *************** function _putch *****************
;; Defined at:
;;		line 98 in file "C:\Online Class\HK6\Practice_Micro\pwm_button\pwm_button.c"
;; Parameters:    Size  Location     Type
;;  ki_tu           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ki_tu           1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text189
	file	"C:\Online Class\HK6\Practice_Micro\pwm_button\pwm_button.c"
	line	98
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 3
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@ki_tu stored from wreg
	movwf	(putch@ki_tu)
	line	99
	
l4061:	
;pwm_button.c: 99: lcd_putc(ki_tu);
	movf	(putch@ki_tu),w
	fcall	_lcd_putc
	line	100
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text190,local,class=CODE,delta=2
global __ptext190
__ptext190:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "C:\Online Class\HK6\Practice_Micro\pwm_button\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;;		_lcd_gotoxy
;;		_isprint
;; This function is called by:
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text190
	file	"C:\Online Class\HK6\Practice_Micro\pwm_button\lcd(16).c"
	line	143
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 3
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	movwf	(lcd_putc@c)
	line	144
	
l4043:	
;lcd(16).c: 144: switch(c){
	goto	l4059
	line	146
	
l4045:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l4047:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u921
	goto	u920
u921:
	goto	l4047
u920:
	goto	l2144
	line	150
	
l4049:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l2144
	line	153
	
l4051:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u931
	goto	u930
u931:
	goto	l2144
u930:
	line	154
	
l4053:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l4055:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u941
	goto	u940
u941:
	goto	l4055
u940:
	goto	l2144
	line	144
	
l4059:	
	movf	(lcd_putc@c),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 10 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	10^0	; case 10
	skipnz
	goto	l4049
	xorlw	12^10	; case 12
	skipnz
	goto	l4045
	goto	l4051
	opt asmopt_on

	line	159
	
l2144:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_gotoxy
psect	text191,local,class=CODE,delta=2
global __ptext191
__ptext191:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "C:\Online Class\HK6\Practice_Micro\pwm_button\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    6[COMMON] unsigned char 
;;  address         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text191
	file	"C:\Online Class\HK6\Practice_Micro\pwm_button\lcd(16).c"
	line	162
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
	opt	stack 3
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	line	165
	movwf	(lcd_gotoxy@col)
	
l4031:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u900
	goto	l4035
u900:
	line	166
	
l4033:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l4037
	line	168
	
l4035:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l4037:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l4039:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l4041:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u911
	goto	u910
u911:
	goto	l4041
u910:
	line	173
	
l2152:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text192,local,class=CODE,delta=2
global __ptext192
__ptext192:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 5 in file "C:\Online Class\HK6\Practice_Micro\pwm_button\lcd(16).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text192
	file	"C:\Online Class\HK6\Practice_Micro\pwm_button\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l3993:	
;lcd(16).c: 6: unsigned char i;
;lcd(16).c: 7: TRISD3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1091/8)^080h,(1091)&7
	line	8
;lcd(16).c: 8: TRISD1 = 0;
	bcf	(1089/8)^080h,(1089)&7
	line	9
;lcd(16).c: 9: TRISD2 = 0;
	bcf	(1090/8)^080h,(1090)&7
	line	10
;lcd(16).c: 10: TRISD4 = 0;
	bcf	(1092/8)^080h,(1092)&7
	line	11
;lcd(16).c: 11: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	12
;lcd(16).c: 12: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	13
;lcd(16).c: 13: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	14
;lcd(16).c: 14: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(67/8),(67)&7
	line	15
;lcd(16).c: 15: RD1 = 0;
	bcf	(65/8),(65)&7
	line	16
;lcd(16).c: 16: RD2 = 0;
	bcf	(66/8),(66)&7
	line	18
	
l3995:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u1117:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1117
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1117
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1117
	nop2
opt asmopt_on

	line	21
	
l3997:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l3999:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u1127:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1127
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1127
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1127
	nop2
opt asmopt_on

	line	23
;lcd(16).c: 23: lcd_put_byte(0,0x30);
	movlw	(030h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	24
	
l4001:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u1137:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1137
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1137
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1137
	nop2
opt asmopt_on

	line	25
	
l4003:	
;lcd(16).c: 25: lcd_put_byte(0,0x32);
	movlw	(032h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	26
;lcd(16).c: 26: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u1147:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1147
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1147
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1147
	nop2
opt asmopt_on

	line	27
;lcd(16).c: 27: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u1157:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1157
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1157
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1157
	nop2
opt asmopt_on

	line	28
;lcd(16).c: 28: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u1167:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1167
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1167
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1167
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l4005:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u831
	goto	u830
u831:
	goto	l4005
u830:
	line	31
	
l4007:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l4009:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u841
	goto	u840
u841:
	goto	l4009
u840:
	line	34
	
l4011:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l4013:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u851
	goto	u850
u851:
	goto	l4013
u850:
	line	36
	
l4015:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l4017:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u861
	goto	u860
u861:
	goto	l4017
u860:
	line	39
	
l4019:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l4021:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u871
	goto	u870
u871:
	goto	l4021
u870:
	line	41
	
l4023:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l4025:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u881
	goto	u880
u881:
	goto	l4025
u880:
	line	43
	
l4027:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l4029:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u891
	goto	u890
u891:
	goto	l4029
u890:
	line	45
	
l2118:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_busy
psect	text193,local,class=CODE,delta=2
global __ptext193
__ptext193:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "C:\Online Class\HK6\Practice_Micro\pwm_button\lcd(16).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  busy            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text193
	file	"C:\Online Class\HK6\Practice_Micro\pwm_button\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 3
; Regs used in _lcd_busy: [wreg]
	line	50
	
l3979:	
;lcd(16).c: 48: unsigned char busy;
;lcd(16).c: 50: TRISD4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1092/8)^080h,(1092)&7
	line	51
;lcd(16).c: 51: TRISD5 = 1;
	bsf	(1093/8)^080h,(1093)&7
	line	52
;lcd(16).c: 52: TRISD6 = 1;
	bsf	(1094/8)^080h,(1094)&7
	line	53
;lcd(16).c: 53: TRISD7 = 1;
	bsf	(1095/8)^080h,(1095)&7
	line	55
;lcd(16).c: 55: RD2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(66/8),(66)&7
	line	56
;lcd(16).c: 56: RD1 = 0;
	bcf	(65/8),(65)&7
	line	57
	
l3981:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1177:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1177
opt asmopt_on

	line	58
	
l3983:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1187:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1187
opt asmopt_on

	line	61
;lcd(16).c: 61: busy = RD7;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	movlw	1
	movwf	(lcd_busy@busy)
	line	63
	
l3985:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1197:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1197
opt asmopt_on

	line	65
	
l3987:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1207:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1207
opt asmopt_on

	line	67
	
l3989:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(lcd_busy@busy),w
	line	71
	
l2121:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text194,local,class=CODE,delta=2
global __ptext194
__ptext194:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "C:\Online Class\HK6\Practice_Micro\pwm_button\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  b               1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1    3[COMMON] unsigned char 
;;  temp            1    4[COMMON] struct _BYTE_VAL
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text194
	file	"C:\Online Class\HK6\Practice_Micro\pwm_button\lcd(16).c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
	opt	stack 3
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	movwf	(lcd_put_byte@rs)
	
l3943:	
;lcd(16).c: 107: BYTE_VAL temp;
;lcd(16).c: 109: TRISD4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1092/8)^080h,(1092)&7
	line	110
;lcd(16).c: 110: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	111
;lcd(16).c: 111: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	112
;lcd(16).c: 112: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	114
;lcd(16).c: 114: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(65/8),(65)&7
	line	115
	
l3945:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u660
	goto	l3949
u660:
	
l3947:	
	bsf	(65/8),(65)&7
	line	117
	
l3949:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1217:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1217
opt asmopt_on

	line	118
	
l3951:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1227:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1227
opt asmopt_on

	line	120
	
l3953:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l3955:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u671
	goto	u670
	
u671:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u684
u670:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u684:
	line	126
	
l3957:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u691
	goto	u690
	
u691:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u704
u690:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u704:
	line	127
	
l3959:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u711
	goto	u710
	
u711:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u724
u710:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u724:
	line	128
	
l3961:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u731
	goto	u730
	
u731:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u744
u730:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u744:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1237:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1237
opt asmopt_on

	line	130
	
l3963:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1247:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1247
opt asmopt_on

	line	132
	
l3965:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l3967:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u751
	goto	u750
	
u751:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u764
u750:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u764:
	line	135
	
l3969:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u771
	goto	u770
	
u771:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u784
u770:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u784:
	line	136
	
l3971:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u791
	goto	u790
	
u791:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u804
u790:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u804:
	line	137
	
l3973:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u811
	goto	u810
	
u811:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u824
u810:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u824:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1257:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1257
opt asmopt_on

	line	139
	
l3975:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1267:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1267
opt asmopt_on

	line	141
	
l3977:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l2129:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	___lwmod
psect	text195,local,class=CODE,delta=2
global __ptext195
__ptext195:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] unsigned int 
;;  dividend        2    9[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text195
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3923:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u621
	goto	u620
u621:
	goto	l3939
u620:
	line	9
	
l3925:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l3929
	line	11
	
l3927:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l3929:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u631
	goto	u630
u631:
	goto	l3927
u630:
	line	15
	
l3931:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u645
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u645:
	skipc
	goto	u641
	goto	u640
u641:
	goto	l3935
u640:
	line	16
	
l3933:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l3935:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l3937:	
	decfsz	(___lwmod@counter),f
	goto	u651
	goto	u650
u651:
	goto	l3931
u650:
	line	20
	
l3939:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l3202:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text196,local,class=CODE,delta=2
global __ptext196
__ptext196:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMMON] unsigned int 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text196
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3897:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3899:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u581
	goto	u580
u581:
	goto	l3919
u580:
	line	11
	
l3901:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3905
	line	13
	
l3903:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3905:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u591
	goto	u590
u591:
	goto	l3903
u590:
	line	17
	
l3907:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3909:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u605
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u605:
	skipc
	goto	u601
	goto	u600
u601:
	goto	l3915
u600:
	line	19
	
l3911:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3913:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3915:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3917:	
	decfsz	(___lwdiv@counter),f
	goto	u611
	goto	u610
u611:
	goto	l3907
u610:
	line	25
	
l3919:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l3192:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_isprint
psect	text197,local,class=CODE,delta=2
global __ptext197
__ptext197:

;; *************** function _isprint *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text197
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
	line	13
	global	__size_of_isprint
	__size_of_isprint	equ	__end_of_isprint-_isprint
	
_isprint:	
	opt	stack 4
; Regs used in _isprint: [wreg+status,2+status,0]
;isprint@c stored from wreg
	movwf	(isprint@c)
	line	14
	
l3885:	
	clrf	(_isprint$3632)
	
l3887:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u561
	goto	u560
u561:
	goto	l3893
u560:
	
l3889:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u571
	goto	u570
u571:
	goto	l3893
u570:
	
l3891:	
	clrf	(_isprint$3632)
	incf	(_isprint$3632),f
	
l3893:	
	rrf	(_isprint$3632),w
	
	line	15
	
l3170:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
