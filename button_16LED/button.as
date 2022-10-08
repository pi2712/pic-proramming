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
# 8 "C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_rb0
	FNCALL	_main,_rb1
	FNCALL	_main,_rb2
	FNCALL	_main,_rb3
	FNCALL	_main,_rb4
	FNCALL	_main,_rb5
	FNCALL	_main,_rb6
	FNCALL	_main,_rb7
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_i
	global	_fl_RB0
	global	_fl_RB1
	global	_fl_RB2
	global	_fl_RB3
	global	_fl_RB4
	global	_fl_RB5
	global	_fl_RB6
	global	_fl_RB7
	global	_PORTC
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_IOCB
_IOCB	set	150
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"button.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_fl_RB0:
       ds      1

_fl_RB1:
       ds      1

_fl_RB2:
       ds      1

_fl_RB3:
       ds      1

_fl_RB4:
       ds      1

_fl_RB5:
       ds      1

_fl_RB6:
       ds      1

_fl_RB7:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_rb0
?_rb0:	; 0 bytes @ 0x0
	global	?_rb1
?_rb1:	; 0 bytes @ 0x0
	global	?_rb2
?_rb2:	; 0 bytes @ 0x0
	global	?_rb3
?_rb3:	; 0 bytes @ 0x0
	global	?_rb4
?_rb4:	; 0 bytes @ 0x0
	global	?_rb5
?_rb5:	; 0 bytes @ 0x0
	global	?_rb6
?_rb6:	; 0 bytes @ 0x0
	global	?_rb7
?_rb7:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_rb0
??_rb0:	; 0 bytes @ 0x0
	global	??_rb1
??_rb1:	; 0 bytes @ 0x0
	global	??_rb2
??_rb2:	; 0 bytes @ 0x0
	global	??_rb3
??_rb3:	; 0 bytes @ 0x0
	global	??_rb4
??_rb4:	; 0 bytes @ 0x0
	global	??_rb5
??_rb5:	; 0 bytes @ 0x0
	global	??_rb6
??_rb6:	; 0 bytes @ 0x0
	global	??_rb7
??_rb7:	; 0 bytes @ 0x0
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0x3
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       8
;; BANK0           80      6       6
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ngat in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_rb0
;;   _main->_rb1
;;   _main->_rb2
;;   _main->_rb3
;;   _main->_rb4
;;   _main->_rb5
;;   _main->_rb6
;;   _main->_rb7
;;
;; Critical Paths under _ngat in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ngat in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ngat in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ngat in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0       0
;;                                              3 BANK0      3     3      0
;;                                _rb0
;;                                _rb1
;;                                _rb2
;;                                _rb3
;;                                _rb4
;;                                _rb5
;;                                _rb6
;;                                _rb7
;; ---------------------------------------------------------------------------------
;; (1) _rb7                                                  3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _rb6                                                  3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _rb5                                                  3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _rb4                                                  3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _rb3                                                  3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _rb2                                                  3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _rb1                                                  3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _rb0                                                  3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _ngat                                                 5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _rb0
;;   _rb1
;;   _rb2
;;   _rb3
;;   _rb4
;;   _rb5
;;   _rb6
;;   _rb7
;;
;; _ngat (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       E       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      6       6       5        7.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       F      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  1060[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_rb0
;;		_rb1
;;		_rb2
;;		_rb3
;;		_rb4
;;		_rb5
;;		_rb6
;;		_rb7
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	16
	
l3111:	
;button.c: 16: ANSEL=ANSELH=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	17
	
l3113:	
;button.c: 17: IOCB=0XFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(150)^080h	;volatile
	line	18
	
l3115:	
;button.c: 18: RBIF=0;
	bcf	(88/8),(88)&7
	line	19
	
l3117:	
;button.c: 19: RBIE=1;
	bsf	(91/8),(91)&7
	line	20
	
l3119:	
;button.c: 20: GIE=1;
	bsf	(95/8),(95)&7
	line	21
	
l3121:	
;button.c: 21: PEIE=1;
	bsf	(94/8),(94)&7
	line	23
	
l3123:	
;button.c: 23: TRISB=0XFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	24
;button.c: 24: TRISC=0X00;
	clrf	(135)^080h	;volatile
	line	25
;button.c: 25: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	27
	
l3125:	
;button.c: 27: PORTC=0XFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(7)	;volatile
	line	28
	
l3127:	
;button.c: 28: PORTD=0XFF;
	movlw	(0FFh)
	movwf	(8)	;volatile
	line	34
	
l3129:	
;button.c: 33: {
;button.c: 34: if(fl_RB0==1)
	btfss	(_fl_RB0/8),(_fl_RB0)&7
	goto	u471
	goto	u470
u471:
	goto	l1062
u470:
	line	36
	
l3131:	
;button.c: 35: {
;button.c: 36: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	37
;button.c: 37: PORTD=0X00;
	clrf	(8)	;volatile
	line	38
	
l3133:	
;button.c: 38: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u557:
	decfsz	((??_main+0)+0),f
	goto	u557
	decfsz	((??_main+0)+0+1),f
	goto	u557
	decfsz	((??_main+0)+0+2),f
	goto	u557
	nop2
opt asmopt_on

	line	39
	
l3135:	
;button.c: 39: rb0();
	fcall	_rb0
	line	40
;button.c: 40: }
	goto	l3129
	line	41
	
l1062:	
;button.c: 41: else if(fl_RB1==1)
	btfss	(_fl_RB1/8),(_fl_RB1)&7
	goto	u481
	goto	u480
u481:
	goto	l1064
u480:
	line	43
	
l3137:	
;button.c: 42: {
;button.c: 43: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	44
;button.c: 44: PORTD=0X00;
	clrf	(8)	;volatile
	line	45
	
l3139:	
;button.c: 45: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u567:
	decfsz	((??_main+0)+0),f
	goto	u567
	decfsz	((??_main+0)+0+1),f
	goto	u567
	decfsz	((??_main+0)+0+2),f
	goto	u567
	nop2
opt asmopt_on

	line	46
	
l3141:	
;button.c: 46: rb1();
	fcall	_rb1
	line	47
;button.c: 47: }
	goto	l3129
	line	48
	
l1064:	
;button.c: 48: else if(fl_RB2==1)
	btfss	(_fl_RB2/8),(_fl_RB2)&7
	goto	u491
	goto	u490
u491:
	goto	l1066
u490:
	line	50
	
l3143:	
;button.c: 49: {
;button.c: 50: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	51
;button.c: 51: PORTD=0X00;
	clrf	(8)	;volatile
	line	52
	
l3145:	
;button.c: 52: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u577:
	decfsz	((??_main+0)+0),f
	goto	u577
	decfsz	((??_main+0)+0+1),f
	goto	u577
	decfsz	((??_main+0)+0+2),f
	goto	u577
	nop2
opt asmopt_on

	line	53
	
l3147:	
;button.c: 53: rb2();
	fcall	_rb2
	line	54
;button.c: 54: }
	goto	l3129
	line	55
	
l1066:	
;button.c: 55: else if(fl_RB3==1)
	btfss	(_fl_RB3/8),(_fl_RB3)&7
	goto	u501
	goto	u500
u501:
	goto	l1068
u500:
	line	57
	
l3149:	
;button.c: 56: {
;button.c: 57: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	58
;button.c: 58: PORTD=0X00;
	clrf	(8)	;volatile
	line	59
	
l3151:	
;button.c: 59: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u587:
	decfsz	((??_main+0)+0),f
	goto	u587
	decfsz	((??_main+0)+0+1),f
	goto	u587
	decfsz	((??_main+0)+0+2),f
	goto	u587
	nop2
opt asmopt_on

	line	60
	
l3153:	
;button.c: 60: rb3();
	fcall	_rb3
	line	61
;button.c: 61: }
	goto	l3129
	line	62
	
l1068:	
;button.c: 62: else if(fl_RB4==1)
	btfss	(_fl_RB4/8),(_fl_RB4)&7
	goto	u511
	goto	u510
u511:
	goto	l1070
u510:
	line	64
	
l3155:	
;button.c: 63: {
;button.c: 64: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	65
;button.c: 65: PORTD=0X00;
	clrf	(8)	;volatile
	line	66
	
l3157:	
;button.c: 66: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u597:
	decfsz	((??_main+0)+0),f
	goto	u597
	decfsz	((??_main+0)+0+1),f
	goto	u597
	decfsz	((??_main+0)+0+2),f
	goto	u597
	nop2
opt asmopt_on

	line	67
	
l3159:	
;button.c: 67: rb4();
	fcall	_rb4
	line	68
;button.c: 68: }
	goto	l3129
	line	69
	
l1070:	
;button.c: 69: else if(fl_RB5==1)
	btfss	(_fl_RB5/8),(_fl_RB5)&7
	goto	u521
	goto	u520
u521:
	goto	l1072
u520:
	line	71
	
l3161:	
;button.c: 70: {
;button.c: 71: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	72
;button.c: 72: PORTD=0X00;
	clrf	(8)	;volatile
	line	73
	
l3163:	
;button.c: 73: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u607:
	decfsz	((??_main+0)+0),f
	goto	u607
	decfsz	((??_main+0)+0+1),f
	goto	u607
	decfsz	((??_main+0)+0+2),f
	goto	u607
	nop2
opt asmopt_on

	line	74
	
l3165:	
;button.c: 74: rb5();
	fcall	_rb5
	line	75
;button.c: 75: }
	goto	l3129
	line	76
	
l1072:	
;button.c: 76: else if(fl_RB6==1)
	btfss	(_fl_RB6/8),(_fl_RB6)&7
	goto	u531
	goto	u530
u531:
	goto	l1074
u530:
	line	78
	
l3167:	
;button.c: 77: {
;button.c: 78: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	79
;button.c: 79: PORTD=0X00;
	clrf	(8)	;volatile
	line	80
	
l3169:	
;button.c: 80: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u617:
	decfsz	((??_main+0)+0),f
	goto	u617
	decfsz	((??_main+0)+0+1),f
	goto	u617
	decfsz	((??_main+0)+0+2),f
	goto	u617
	nop2
opt asmopt_on

	line	81
	
l3171:	
;button.c: 81: rb6();
	fcall	_rb6
	line	82
;button.c: 82: }
	goto	l3129
	line	83
	
l1074:	
;button.c: 83: else if(fl_RB7==1)
	btfss	(_fl_RB7/8),(_fl_RB7)&7
	goto	u541
	goto	u540
u541:
	goto	l1071
u540:
	line	85
	
l3173:	
;button.c: 84: {
;button.c: 85: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	86
;button.c: 86: PORTD=0X00;
	clrf	(8)	;volatile
	line	87
	
l3175:	
;button.c: 87: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u627:
	decfsz	((??_main+0)+0),f
	goto	u627
	decfsz	((??_main+0)+0+1),f
	goto	u627
	decfsz	((??_main+0)+0+2),f
	goto	u627
	nop2
opt asmopt_on

	line	88
	
l3177:	
;button.c: 88: rb7();
	fcall	_rb7
	goto	l3129
	line	90
	
l1071:	
	goto	l3129
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	91
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_rb7
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:

;; *************** function _rb7 *****************
;; Defined at:
;;		line 320 in file "C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text359
	file	"C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
	line	320
	global	__size_of_rb7
	__size_of_rb7	equ	__end_of_rb7-_rb7
	
_rb7:	
	opt	stack 6
; Regs used in _rb7: [wreg+status,2]
	line	321
	
l3105:	
;button.c: 321: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rb7+0)+0+2),f
movlw	19
movwf	((??_rb7+0)+0+1),f
	movlw	177
movwf	((??_rb7+0)+0),f
u637:
	decfsz	((??_rb7+0)+0),f
	goto	u637
	decfsz	((??_rb7+0)+0+1),f
	goto	u637
	decfsz	((??_rb7+0)+0+2),f
	goto	u637
	nop2
opt asmopt_on

	line	322
;button.c: 322: PORTC=0XFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	323
;button.c: 323: PORTD=0XFF;
	movlw	(0FFh)
	movwf	(8)	;volatile
	line	324
;button.c: 324: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_rb7+0)+0+2),f
movlw	19
movwf	((??_rb7+0)+0+1),f
	movlw	177
movwf	((??_rb7+0)+0),f
u647:
	decfsz	((??_rb7+0)+0),f
	goto	u647
	decfsz	((??_rb7+0)+0+1),f
	goto	u647
	decfsz	((??_rb7+0)+0+2),f
	goto	u647
	nop2
opt asmopt_on

	line	325
	
l3107:	
;button.c: 325: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	326
	
l3109:	
;button.c: 326: PORTD=0X00;
	clrf	(8)	;volatile
	line	327
	
l1142:	
	return
	opt stack 0
GLOBAL	__end_of_rb7
	__end_of_rb7:
;; =============== function _rb7 ends ============

	signat	_rb7,88
	global	_rb6
psect	text360,local,class=CODE,delta=2
global __ptext360
__ptext360:

;; *************** function _rb6 *****************
;; Defined at:
;;		line 307 in file "C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text360
	file	"C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
	line	307
	global	__size_of_rb6
	__size_of_rb6	equ	__end_of_rb6-_rb6
	
_rb6:	
	opt	stack 6
; Regs used in _rb6: [wreg+status,2+status,0+btemp+1]
	line	308
	
l3087:	
;button.c: 308: PORTC=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	309
;button.c: 309: PORTD=0X80;
	movlw	(080h)
	movwf	(8)	;volatile
	line	310
	
l3089:	
;button.c: 310: for(i=0;i<8;i++)
	clrf	(_i)
	clrf	(_i+1)
	
l3091:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u465
	movlw	low(08h)
	subwf	(_i),w
u465:

	skipc
	goto	u461
	goto	u460
u461:
	goto	l3095
u460:
	goto	l1139
	line	312
	
l3095:	
;button.c: 311: {
;button.c: 312: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rb6+0)+0+2),f
movlw	19
movwf	((??_rb6+0)+0+1),f
	movlw	177
movwf	((??_rb6+0)+0),f
u657:
	decfsz	((??_rb6+0)+0),f
	goto	u657
	decfsz	((??_rb6+0)+0+1),f
	goto	u657
	decfsz	((??_rb6+0)+0+2),f
	goto	u657
	nop2
opt asmopt_on

	line	313
	
l3097:	
;button.c: 313: PORTC=PORTC<<1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(7),f	;volatile
	line	314
	
l3099:	
;button.c: 314: PORTD=PORTD>>1;
	clrc
	rrf	(8),f	;volatile
	line	310
	
l3101:	
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	goto	l3091
	line	317
	
l1139:	
	return
	opt stack 0
GLOBAL	__end_of_rb6
	__end_of_rb6:
;; =============== function _rb6 ends ============

	signat	_rb6,88
	global	_rb5
psect	text361,local,class=CODE,delta=2
global __ptext361
__ptext361:

;; *************** function _rb5 *****************
;; Defined at:
;;		line 294 in file "C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text361
	file	"C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
	line	294
	global	__size_of_rb5
	__size_of_rb5	equ	__end_of_rb5-_rb5
	
_rb5:	
	opt	stack 6
; Regs used in _rb5: [wreg+status,2+status,0+btemp+1]
	line	295
	
l3069:	
;button.c: 295: PORTC=0X80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	296
;button.c: 296: PORTD=0X01;
	movlw	(01h)
	movwf	(8)	;volatile
	line	297
	
l3071:	
;button.c: 297: for(i=0;i<8;i++)
	clrf	(_i)
	clrf	(_i+1)
	
l3073:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u455
	movlw	low(08h)
	subwf	(_i),w
u455:

	skipc
	goto	u451
	goto	u450
u451:
	goto	l3077
u450:
	goto	l1134
	line	299
	
l3077:	
;button.c: 298: {
;button.c: 299: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rb5+0)+0+2),f
movlw	19
movwf	((??_rb5+0)+0+1),f
	movlw	177
movwf	((??_rb5+0)+0),f
u667:
	decfsz	((??_rb5+0)+0),f
	goto	u667
	decfsz	((??_rb5+0)+0+1),f
	goto	u667
	decfsz	((??_rb5+0)+0+2),f
	goto	u667
	nop2
opt asmopt_on

	line	300
	
l3079:	
;button.c: 300: PORTC=PORTC>>1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rrf	(7),f	;volatile
	line	301
	
l3081:	
;button.c: 301: PORTD=PORTD<<1;
	clrc
	rlf	(8),f	;volatile
	line	297
	
l3083:	
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	goto	l3073
	line	304
	
l1134:	
	return
	opt stack 0
GLOBAL	__end_of_rb5
	__end_of_rb5:
;; =============== function _rb5 ends ============

	signat	_rb5,88
	global	_rb4
psect	text362,local,class=CODE,delta=2
global __ptext362
__ptext362:

;; *************** function _rb4 *****************
;; Defined at:
;;		line 272 in file "C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text362
	file	"C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
	line	272
	global	__size_of_rb4
	__size_of_rb4	equ	__end_of_rb4-_rb4
	
_rb4:	
	opt	stack 6
; Regs used in _rb4: [wreg+status,2+status,0+btemp+1]
	line	273
	
l3035:	
;button.c: 273: PORTD=0X80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	275
	
l3037:	
;button.c: 275: for(i=0;i<8;i++)
	clrf	(_i)
	clrf	(_i+1)
	
l3039:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u435
	movlw	low(08h)
	subwf	(_i),w
u435:

	skipc
	goto	u431
	goto	u430
u431:
	goto	l3043
u430:
	goto	l3051
	line	277
	
l3043:	
;button.c: 276: {
;button.c: 277: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rb4+0)+0+2),f
movlw	19
movwf	((??_rb4+0)+0+1),f
	movlw	177
movwf	((??_rb4+0)+0),f
u677:
	decfsz	((??_rb4+0)+0),f
	goto	u677
	decfsz	((??_rb4+0)+0+1),f
	goto	u677
	decfsz	((??_rb4+0)+0+2),f
	goto	u677
	nop2
opt asmopt_on

	line	278
	
l3045:	
;button.c: 278: PORTD=(PORTD>>1)+0x80;
	setc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rrf	(8),f	;volatile
	line	275
	
l3047:	
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	goto	l3039
	line	281
	
l3051:	
;button.c: 280: }
;button.c: 281: PORTC=0X80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	282
;button.c: 282: for(i=7;i<15;i++)
	movlw	07h
	movwf	(_i)
	clrf	(_i+1)
	
l3053:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u445
	movlw	low(0Fh)
	subwf	(_i),w
u445:

	skipc
	goto	u441
	goto	u440
u441:
	goto	l3057
u440:
	goto	l3065
	line	284
	
l3057:	
;button.c: 283: {
;button.c: 284: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rb4+0)+0+2),f
movlw	19
movwf	((??_rb4+0)+0+1),f
	movlw	177
movwf	((??_rb4+0)+0),f
u687:
	decfsz	((??_rb4+0)+0),f
	goto	u687
	decfsz	((??_rb4+0)+0+1),f
	goto	u687
	decfsz	((??_rb4+0)+0+2),f
	goto	u687
	nop2
opt asmopt_on

	line	285
	
l3059:	
;button.c: 285: PORTC=(PORTC>>1)+0x80;
	setc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rrf	(7),f	;volatile
	line	282
	
l3061:	
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	goto	l3053
	line	288
	
l3065:	
;button.c: 287: }
;button.c: 288: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	289
;button.c: 289: PORTD=0X00;
	clrf	(8)	;volatile
	line	290
	
l3067:	
;button.c: 290: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_rb4+0)+0+2),f
movlw	19
movwf	((??_rb4+0)+0+1),f
	movlw	177
movwf	((??_rb4+0)+0),f
u697:
	decfsz	((??_rb4+0)+0),f
	goto	u697
	decfsz	((??_rb4+0)+0+1),f
	goto	u697
	decfsz	((??_rb4+0)+0+2),f
	goto	u697
	nop2
opt asmopt_on

	line	291
	
l1129:	
	return
	opt stack 0
GLOBAL	__end_of_rb4
	__end_of_rb4:
;; =============== function _rb4 ends ============

	signat	_rb4,88
	global	_rb3
psect	text363,local,class=CODE,delta=2
global __ptext363
__ptext363:

;; *************** function _rb3 *****************
;; Defined at:
;;		line 252 in file "C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text363
	file	"C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
	line	252
	global	__size_of_rb3
	__size_of_rb3	equ	__end_of_rb3-_rb3
	
_rb3:	
	opt	stack 6
; Regs used in _rb3: [wreg+status,2+status,0+btemp+1]
	line	253
	
l3001:	
;button.c: 253: PORTC=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	254
	
l3003:	
;button.c: 254: for(i=0;i<8;i++)
	clrf	(_i)
	clrf	(_i+1)
	
l3005:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u415
	movlw	low(08h)
	subwf	(_i),w
u415:

	skipc
	goto	u411
	goto	u410
u411:
	goto	l3009
u410:
	goto	l3017
	line	256
	
l3009:	
;button.c: 255: {
;button.c: 256: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rb3+0)+0+2),f
movlw	19
movwf	((??_rb3+0)+0+1),f
	movlw	177
movwf	((??_rb3+0)+0),f
u707:
	decfsz	((??_rb3+0)+0),f
	goto	u707
	decfsz	((??_rb3+0)+0+1),f
	goto	u707
	decfsz	((??_rb3+0)+0+2),f
	goto	u707
	nop2
opt asmopt_on

	line	257
	
l3011:	
;button.c: 257: PORTC=(PORTC<<1)+0x01;
	setc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rlf	(7),f	;volatile
	line	254
	
l3013:	
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	goto	l3005
	line	260
	
l3017:	
;button.c: 258: }
;button.c: 260: PORTD=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	261
;button.c: 261: for(i=7;i<15;i++)
	movlw	07h
	movwf	(_i)
	clrf	(_i+1)
	
l3019:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u425
	movlw	low(0Fh)
	subwf	(_i),w
u425:

	skipc
	goto	u421
	goto	u420
u421:
	goto	l3023
u420:
	goto	l3031
	line	263
	
l3023:	
;button.c: 262: {
;button.c: 263: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rb3+0)+0+2),f
movlw	19
movwf	((??_rb3+0)+0+1),f
	movlw	177
movwf	((??_rb3+0)+0),f
u717:
	decfsz	((??_rb3+0)+0),f
	goto	u717
	decfsz	((??_rb3+0)+0+1),f
	goto	u717
	decfsz	((??_rb3+0)+0+2),f
	goto	u717
	nop2
opt asmopt_on

	line	264
	
l3025:	
;button.c: 264: PORTD=(PORTD<<1)+0x01;
	setc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rlf	(8),f	;volatile
	line	261
	
l3027:	
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	goto	l3019
	line	266
	
l3031:	
;button.c: 265: }
;button.c: 266: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	267
;button.c: 267: PORTD=0X00;
	clrf	(8)	;volatile
	line	268
	
l3033:	
;button.c: 268: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_rb3+0)+0+2),f
movlw	19
movwf	((??_rb3+0)+0+1),f
	movlw	177
movwf	((??_rb3+0)+0),f
u727:
	decfsz	((??_rb3+0)+0),f
	goto	u727
	decfsz	((??_rb3+0)+0+1),f
	goto	u727
	decfsz	((??_rb3+0)+0+2),f
	goto	u727
	nop2
opt asmopt_on

	line	269
	
l1122:	
	return
	opt stack 0
GLOBAL	__end_of_rb3
	__end_of_rb3:
;; =============== function _rb3 ends ============

	signat	_rb3,88
	global	_rb2
psect	text364,local,class=CODE,delta=2
global __ptext364
__ptext364:

;; *************** function _rb2 *****************
;; Defined at:
;;		line 242 in file "C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text364
	file	"C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
	line	242
	global	__size_of_rb2
	__size_of_rb2	equ	__end_of_rb2-_rb2
	
_rb2:	
	opt	stack 6
; Regs used in _rb2: [wreg]
	line	243
	
l2999:	
;button.c: 243: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rb2+0)+0+2),f
movlw	19
movwf	((??_rb2+0)+0+1),f
	movlw	177
movwf	((??_rb2+0)+0),f
u737:
	decfsz	((??_rb2+0)+0),f
	goto	u737
	decfsz	((??_rb2+0)+0+1),f
	goto	u737
	decfsz	((??_rb2+0)+0+2),f
	goto	u737
	nop2
opt asmopt_on

	line	244
;button.c: 244: PORTC=0xAA;
	movlw	(0AAh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	245
;button.c: 245: PORTD=0XAA;
	movlw	(0AAh)
	movwf	(8)	;volatile
	line	246
;button.c: 246: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_rb2+0)+0+2),f
movlw	19
movwf	((??_rb2+0)+0+1),f
	movlw	177
movwf	((??_rb2+0)+0),f
u747:
	decfsz	((??_rb2+0)+0),f
	goto	u747
	decfsz	((??_rb2+0)+0+1),f
	goto	u747
	decfsz	((??_rb2+0)+0+2),f
	goto	u747
	nop2
opt asmopt_on

	line	247
;button.c: 247: PORTC=0X55;
	movlw	(055h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	248
;button.c: 248: PORTD=0X55;
	movlw	(055h)
	movwf	(8)	;volatile
	line	249
	
l1115:	
	return
	opt stack 0
GLOBAL	__end_of_rb2
	__end_of_rb2:
;; =============== function _rb2 ends ============

	signat	_rb2,88
	global	_rb1
psect	text365,local,class=CODE,delta=2
global __ptext365
__ptext365:

;; *************** function _rb1 *****************
;; Defined at:
;;		line 224 in file "C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text365
	file	"C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
	line	224
	global	__size_of_rb1
	__size_of_rb1	equ	__end_of_rb1-_rb1
	
_rb1:	
	opt	stack 6
; Regs used in _rb1: [wreg+status,2+status,0+btemp+1]
	line	225
	
l2969:	
;button.c: 225: PORTC=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	226
	
l2971:	
;button.c: 226: for(i=0;i<8;i++)
	clrf	(_i)
	clrf	(_i+1)
	
l2973:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u395
	movlw	low(08h)
	subwf	(_i),w
u395:

	skipc
	goto	u391
	goto	u390
u391:
	goto	l2977
u390:
	goto	l2985
	line	228
	
l2977:	
;button.c: 227: {
;button.c: 228: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rb1+0)+0+2),f
movlw	19
movwf	((??_rb1+0)+0+1),f
	movlw	177
movwf	((??_rb1+0)+0),f
u757:
	decfsz	((??_rb1+0)+0),f
	goto	u757
	decfsz	((??_rb1+0)+0+1),f
	goto	u757
	decfsz	((??_rb1+0)+0+2),f
	goto	u757
	nop2
opt asmopt_on

	line	229
	
l2979:	
;button.c: 229: PORTC=PORTC<<1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(7),f	;volatile
	line	226
	
l2981:	
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	goto	l2973
	line	232
	
l2985:	
;button.c: 230: }
;button.c: 232: PORTD=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	233
;button.c: 233: for(i=7;i<15;i++)
	movlw	07h
	movwf	(_i)
	clrf	(_i+1)
	
l2987:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u405
	movlw	low(0Fh)
	subwf	(_i),w
u405:

	skipc
	goto	u401
	goto	u400
u401:
	goto	l2991
u400:
	goto	l1112
	line	235
	
l2991:	
;button.c: 234: {
;button.c: 235: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rb1+0)+0+2),f
movlw	19
movwf	((??_rb1+0)+0+1),f
	movlw	177
movwf	((??_rb1+0)+0),f
u767:
	decfsz	((??_rb1+0)+0),f
	goto	u767
	decfsz	((??_rb1+0)+0+1),f
	goto	u767
	decfsz	((??_rb1+0)+0+2),f
	goto	u767
	nop2
opt asmopt_on

	line	236
	
l2993:	
;button.c: 236: PORTD=PORTD<<1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(8),f	;volatile
	line	233
	
l2995:	
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	goto	l2987
	line	239
	
l1112:	
	return
	opt stack 0
GLOBAL	__end_of_rb1
	__end_of_rb1:
;; =============== function _rb1 ends ============

	signat	_rb1,88
	global	_rb0
psect	text366,local,class=CODE,delta=2
global __ptext366
__ptext366:

;; *************** function _rb0 *****************
;; Defined at:
;;		line 205 in file "C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text366
	file	"C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
	line	205
	global	__size_of_rb0
	__size_of_rb0	equ	__end_of_rb0-_rb0
	
_rb0:	
	opt	stack 6
; Regs used in _rb0: [wreg+status,2+status,0+btemp+1]
	line	206
	
l2939:	
;button.c: 206: PORTD=0X80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	208
	
l2941:	
;button.c: 208: for(i=0;i<8;i++)
	clrf	(_i)
	clrf	(_i+1)
	
l2943:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u375
	movlw	low(08h)
	subwf	(_i),w
u375:

	skipc
	goto	u371
	goto	u370
u371:
	goto	l2947
u370:
	goto	l2955
	line	210
	
l2947:	
;button.c: 209: {
;button.c: 210: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rb0+0)+0+2),f
movlw	19
movwf	((??_rb0+0)+0+1),f
	movlw	177
movwf	((??_rb0+0)+0),f
u777:
	decfsz	((??_rb0+0)+0),f
	goto	u777
	decfsz	((??_rb0+0)+0+1),f
	goto	u777
	decfsz	((??_rb0+0)+0+2),f
	goto	u777
	nop2
opt asmopt_on

	line	211
	
l2949:	
;button.c: 211: PORTD=PORTD>>1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rrf	(8),f	;volatile
	line	208
	
l2951:	
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	goto	l2943
	line	214
	
l2955:	
;button.c: 213: }
;button.c: 214: PORTC=0X80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	215
;button.c: 215: for(i=7;i<15;i++)
	movlw	07h
	movwf	(_i)
	clrf	(_i+1)
	
l2957:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u385
	movlw	low(0Fh)
	subwf	(_i),w
u385:

	skipc
	goto	u381
	goto	u380
u381:
	goto	l2961
u380:
	goto	l1105
	line	217
	
l2961:	
;button.c: 216: {
;button.c: 217: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_rb0+0)+0+2),f
movlw	19
movwf	((??_rb0+0)+0+1),f
	movlw	177
movwf	((??_rb0+0)+0),f
u787:
	decfsz	((??_rb0+0)+0),f
	goto	u787
	decfsz	((??_rb0+0)+0+1),f
	goto	u787
	decfsz	((??_rb0+0)+0+2),f
	goto	u787
	nop2
opt asmopt_on

	line	218
	
l2963:	
;button.c: 218: PORTC=PORTC>>1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rrf	(7),f	;volatile
	line	215
	
l2965:	
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	goto	l2957
	line	221
	
l1105:	
	return
	opt stack 0
GLOBAL	__end_of_rb0
	__end_of_rb0:
;; =============== function _rb0 ends ============

	signat	_rb0,88
	global	_ngat
psect	text367,local,class=CODE,delta=2
global __ptext367
__ptext367:

;; *************** function _ngat *****************
;; Defined at:
;;		line 94 in file "C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text367
	file	"C:\Online Class\HK6\Practice_Micro\button_16LED\button.c"
	line	94
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 6
; Regs used in _ngat: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ngat+3)
	movf	pclath,w
	movwf	(??_ngat+4)
	ljmp	_ngat
psect	text367
	line	95
	
i1l2495:	
;button.c: 95: if(RBIF && RBIE)
	btfss	(88/8),(88)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l2629
u1_20:
	
i1l2497:	
	btfss	(91/8),(91)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l2629
u2_20:
	line	97
	
i1l2499:	
;button.c: 96: {
;button.c: 97: if(RB0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l1083
u3_20:
	line	99
	
i1l2501:	
;button.c: 98: {
;button.c: 99: fl_RB0=1;
	bsf	(_fl_RB0/8),(_fl_RB0)&7
	line	100
;button.c: 100: fl_RB1=0;
	bcf	(_fl_RB1/8),(_fl_RB1)&7
	line	101
;button.c: 101: fl_RB2=0;
	bcf	(_fl_RB2/8),(_fl_RB2)&7
	line	102
;button.c: 102: fl_RB3=0;
	bcf	(_fl_RB3/8),(_fl_RB3)&7
	line	103
;button.c: 103: fl_RB4=0;
	bcf	(_fl_RB4/8),(_fl_RB4)&7
	line	104
;button.c: 104: fl_RB5=0;
	bcf	(_fl_RB5/8),(_fl_RB5)&7
	line	105
;button.c: 105: fl_RB6=0;
	bcf	(_fl_RB6/8),(_fl_RB6)&7
	line	106
;button.c: 106: fl_RB7=0;
	bcf	(_fl_RB7/8),(_fl_RB7)&7
	line	108
;button.c: 108: }
	goto	i1l2629
	line	109
	
i1l1083:	
;button.c: 109: else if (RB1)
	btfss	(49/8),(49)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l1085
u4_20:
	line	111
	
i1l2503:	
;button.c: 110: {
;button.c: 111: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_ngat+0)+0+2),f
movlw	138
movwf	((??_ngat+0)+0+1),f
	movlw	86
movwf	((??_ngat+0)+0),f
u79_27:
	decfsz	((??_ngat+0)+0),f
	goto	u79_27
	decfsz	((??_ngat+0)+0+1),f
	goto	u79_27
	decfsz	((??_ngat+0)+0+2),f
	goto	u79_27
	nop2
opt asmopt_on

	line	112
	
i1l2505:	
;button.c: 112: fl_RB0=0;
	bcf	(_fl_RB0/8),(_fl_RB0)&7
	line	113
	
i1l2507:	
;button.c: 113: fl_RB1=1;
	bsf	(_fl_RB1/8),(_fl_RB1)&7
	line	114
	
i1l2509:	
;button.c: 114: fl_RB2=0;
	bcf	(_fl_RB2/8),(_fl_RB2)&7
	line	115
	
i1l2511:	
;button.c: 115: fl_RB3=0;
	bcf	(_fl_RB3/8),(_fl_RB3)&7
	line	116
	
i1l2513:	
;button.c: 116: fl_RB4=0;
	bcf	(_fl_RB4/8),(_fl_RB4)&7
	line	117
	
i1l2515:	
;button.c: 117: fl_RB5=0;
	bcf	(_fl_RB5/8),(_fl_RB5)&7
	line	118
	
i1l2517:	
;button.c: 118: fl_RB6=0;
	bcf	(_fl_RB6/8),(_fl_RB6)&7
	line	119
	
i1l2519:	
;button.c: 119: fl_RB7=0;
	bcf	(_fl_RB7/8),(_fl_RB7)&7
	line	121
;button.c: 121: }
	goto	i1l2629
	line	122
	
i1l1085:	
;button.c: 122: else if (RB2)
	btfss	(50/8),(50)&7
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l1087
u5_20:
	line	124
	
i1l2521:	
;button.c: 123: {
;button.c: 124: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_ngat+0)+0+2),f
movlw	138
movwf	((??_ngat+0)+0+1),f
	movlw	86
movwf	((??_ngat+0)+0),f
u80_27:
	decfsz	((??_ngat+0)+0),f
	goto	u80_27
	decfsz	((??_ngat+0)+0+1),f
	goto	u80_27
	decfsz	((??_ngat+0)+0+2),f
	goto	u80_27
	nop2
opt asmopt_on

	line	125
	
i1l2523:	
;button.c: 125: fl_RB0=0;
	bcf	(_fl_RB0/8),(_fl_RB0)&7
	line	126
	
i1l2525:	
;button.c: 126: fl_RB1=0;
	bcf	(_fl_RB1/8),(_fl_RB1)&7
	line	127
	
i1l2527:	
;button.c: 127: fl_RB2=1;
	bsf	(_fl_RB2/8),(_fl_RB2)&7
	goto	i1l2511
	line	135
	
i1l1087:	
;button.c: 135: else if (RB3)
	btfss	(51/8),(51)&7
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l1089
u6_20:
	line	137
	
i1l2539:	
;button.c: 136: {
;button.c: 137: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_ngat+0)+0+2),f
movlw	138
movwf	((??_ngat+0)+0+1),f
	movlw	86
movwf	((??_ngat+0)+0),f
u81_27:
	decfsz	((??_ngat+0)+0),f
	goto	u81_27
	decfsz	((??_ngat+0)+0+1),f
	goto	u81_27
	decfsz	((??_ngat+0)+0+2),f
	goto	u81_27
	nop2
opt asmopt_on

	line	138
	
i1l2541:	
;button.c: 138: fl_RB0=0;
	bcf	(_fl_RB0/8),(_fl_RB0)&7
	line	139
	
i1l2543:	
;button.c: 139: fl_RB1=0;
	bcf	(_fl_RB1/8),(_fl_RB1)&7
	line	140
	
i1l2545:	
;button.c: 140: fl_RB2=0;
	bcf	(_fl_RB2/8),(_fl_RB2)&7
	line	141
	
i1l2547:	
;button.c: 141: fl_RB3=1;
	bsf	(_fl_RB3/8),(_fl_RB3)&7
	goto	i1l2513
	line	148
	
i1l1089:	
;button.c: 148: else if (RB4)
	btfss	(52/8),(52)&7
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l1091
u7_20:
	line	150
	
i1l2557:	
;button.c: 149: {
;button.c: 150: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_ngat+0)+0+2),f
movlw	138
movwf	((??_ngat+0)+0+1),f
	movlw	86
movwf	((??_ngat+0)+0),f
u82_27:
	decfsz	((??_ngat+0)+0),f
	goto	u82_27
	decfsz	((??_ngat+0)+0+1),f
	goto	u82_27
	decfsz	((??_ngat+0)+0+2),f
	goto	u82_27
	nop2
opt asmopt_on

	line	151
	
i1l2559:	
;button.c: 151: fl_RB0=0;
	bcf	(_fl_RB0/8),(_fl_RB0)&7
	line	152
	
i1l2561:	
;button.c: 152: fl_RB1=0;
	bcf	(_fl_RB1/8),(_fl_RB1)&7
	line	153
	
i1l2563:	
;button.c: 153: fl_RB2=0;
	bcf	(_fl_RB2/8),(_fl_RB2)&7
	line	154
	
i1l2565:	
;button.c: 154: fl_RB3=0;
	bcf	(_fl_RB3/8),(_fl_RB3)&7
	line	155
	
i1l2567:	
;button.c: 155: fl_RB4=1;
	bsf	(_fl_RB4/8),(_fl_RB4)&7
	goto	i1l2515
	line	161
	
i1l1091:	
;button.c: 161: else if (RB5)
	btfss	(53/8),(53)&7
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l1093
u8_20:
	line	163
	
i1l2575:	
;button.c: 162: {
;button.c: 163: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_ngat+0)+0+2),f
movlw	138
movwf	((??_ngat+0)+0+1),f
	movlw	86
movwf	((??_ngat+0)+0),f
u83_27:
	decfsz	((??_ngat+0)+0),f
	goto	u83_27
	decfsz	((??_ngat+0)+0+1),f
	goto	u83_27
	decfsz	((??_ngat+0)+0+2),f
	goto	u83_27
	nop2
opt asmopt_on

	line	164
	
i1l2577:	
;button.c: 164: fl_RB0=0;
	bcf	(_fl_RB0/8),(_fl_RB0)&7
	line	165
	
i1l2579:	
;button.c: 165: fl_RB1=0;
	bcf	(_fl_RB1/8),(_fl_RB1)&7
	line	166
	
i1l2581:	
;button.c: 166: fl_RB2=0;
	bcf	(_fl_RB2/8),(_fl_RB2)&7
	line	167
	
i1l2583:	
;button.c: 167: fl_RB3=0;
	bcf	(_fl_RB3/8),(_fl_RB3)&7
	line	168
	
i1l2585:	
;button.c: 168: fl_RB4=0;
	bcf	(_fl_RB4/8),(_fl_RB4)&7
	line	169
	
i1l2587:	
;button.c: 169: fl_RB5=1;
	bsf	(_fl_RB5/8),(_fl_RB5)&7
	goto	i1l2517
	line	174
	
i1l1093:	
;button.c: 174: else if (RB6)
	btfss	(54/8),(54)&7
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l1095
u9_20:
	line	176
	
i1l2593:	
;button.c: 175: {
;button.c: 176: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_ngat+0)+0+2),f
movlw	138
movwf	((??_ngat+0)+0+1),f
	movlw	86
movwf	((??_ngat+0)+0),f
u84_27:
	decfsz	((??_ngat+0)+0),f
	goto	u84_27
	decfsz	((??_ngat+0)+0+1),f
	goto	u84_27
	decfsz	((??_ngat+0)+0+2),f
	goto	u84_27
	nop2
opt asmopt_on

	line	177
	
i1l2595:	
;button.c: 177: fl_RB0=0;
	bcf	(_fl_RB0/8),(_fl_RB0)&7
	line	178
	
i1l2597:	
;button.c: 178: fl_RB1=0;
	bcf	(_fl_RB1/8),(_fl_RB1)&7
	line	179
	
i1l2599:	
;button.c: 179: fl_RB2=0;
	bcf	(_fl_RB2/8),(_fl_RB2)&7
	line	180
	
i1l2601:	
;button.c: 180: fl_RB3=0;
	bcf	(_fl_RB3/8),(_fl_RB3)&7
	line	181
	
i1l2603:	
;button.c: 181: fl_RB4=0;
	bcf	(_fl_RB4/8),(_fl_RB4)&7
	line	182
	
i1l2605:	
;button.c: 182: fl_RB5=0;
	bcf	(_fl_RB5/8),(_fl_RB5)&7
	line	183
	
i1l2607:	
;button.c: 183: fl_RB6=1;
	bsf	(_fl_RB6/8),(_fl_RB6)&7
	goto	i1l2519
	line	187
	
i1l1095:	
;button.c: 187: else if (RB7)
	btfss	(55/8),(55)&7
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l1092
u10_20:
	line	189
	
i1l2611:	
;button.c: 188: {
;button.c: 189: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_ngat+0)+0+2),f
movlw	138
movwf	((??_ngat+0)+0+1),f
	movlw	86
movwf	((??_ngat+0)+0),f
u85_27:
	decfsz	((??_ngat+0)+0),f
	goto	u85_27
	decfsz	((??_ngat+0)+0+1),f
	goto	u85_27
	decfsz	((??_ngat+0)+0+2),f
	goto	u85_27
	nop2
opt asmopt_on

	line	190
	
i1l2613:	
;button.c: 190: fl_RB0=0;
	bcf	(_fl_RB0/8),(_fl_RB0)&7
	line	191
	
i1l2615:	
;button.c: 191: fl_RB1=0;
	bcf	(_fl_RB1/8),(_fl_RB1)&7
	line	192
	
i1l2617:	
;button.c: 192: fl_RB2=0;
	bcf	(_fl_RB2/8),(_fl_RB2)&7
	line	193
	
i1l2619:	
;button.c: 193: fl_RB3=0;
	bcf	(_fl_RB3/8),(_fl_RB3)&7
	line	194
	
i1l2621:	
;button.c: 194: fl_RB4=0;
	bcf	(_fl_RB4/8),(_fl_RB4)&7
	line	195
	
i1l2623:	
;button.c: 195: fl_RB5=0;
	bcf	(_fl_RB5/8),(_fl_RB5)&7
	line	196
	
i1l2625:	
;button.c: 196: fl_RB6=0;
	bcf	(_fl_RB6/8),(_fl_RB6)&7
	line	197
	
i1l2627:	
;button.c: 197: fl_RB7=1;
	bsf	(_fl_RB7/8),(_fl_RB7)&7
	goto	i1l2629
	line	200
	
i1l1092:	
	line	201
	
i1l2629:	
;button.c: 199: }
;button.c: 200: }
;button.c: 201: RBIF=0;
	bcf	(88/8),(88)&7
	line	202
	
i1l1098:	
	movf	(??_ngat+4),w
	movwf	pclath
	swapf	(??_ngat+3)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ngat
	__end_of_ngat:
;; =============== function _ngat ends ============

	signat	_ngat,88
psect	text368,local,class=CODE,delta=2
global __ptext368
__ptext368:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
