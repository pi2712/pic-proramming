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
# 8 "C:\Online Class\HK6\Practice_Micro\h_bridge motor\h_bridge.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Online Class\HK6\Practice_Micro\h_bridge motor\h_bridge.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNROOT	_main
	global	_i
	global	_CCPR1L
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
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
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
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
	global	_TRISD
_TRISD	set	136
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"h_bridge.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

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
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       2
;; BANK0           80      0       0
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
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;; (0) _main                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      0       2       1       14.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       2       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       2      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "C:\Online Class\HK6\Practice_Micro\h_bridge motor\h_bridge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  1026[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Online Class\HK6\Practice_Micro\h_bridge motor\h_bridge.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	16
	
l3499:	
;h_bridge.c: 16: TRISC2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	17
;h_bridge.c: 17: TRISC1=0;
	bcf	(1081/8)^080h,(1081)&7
	line	18
	
l3501:	
;h_bridge.c: 18: TRISB=0XFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	19
	
l3503:	
;h_bridge.c: 19: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	20
	
l3505:	
;h_bridge.c: 20: RD4=0;RD5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(68/8),(68)&7
	
l3507:	
	bcf	(69/8),(69)&7
	line	23
	
l3509:	
;h_bridge.c: 23: ANSEL=ANSELH=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	25
	
l3511:	
;h_bridge.c: 25: TMR2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(17)	;volatile
	line	30
	
l3513:	
;h_bridge.c: 30: TMR2IF=0;
	bcf	(97/8),(97)&7
	line	31
	
l3515:	
;h_bridge.c: 31: T2CKPS1=0;
	bcf	(145/8),(145)&7
	line	32
	
l3517:	
;h_bridge.c: 32: T2CKPS0=1;
	bsf	(144/8),(144)&7
	line	34
	
l3519:	
;h_bridge.c: 34: TOUTPS3=0;
	bcf	(150/8),(150)&7
	line	35
	
l3521:	
;h_bridge.c: 35: TOUTPS2=0;
	bcf	(149/8),(149)&7
	line	36
	
l3523:	
;h_bridge.c: 36: TOUTPS1=0;
	bcf	(148/8),(148)&7
	line	37
	
l3525:	
;h_bridge.c: 37: TOUTPS0=0;
	bcf	(147/8),(147)&7
	line	39
	
l3527:	
;h_bridge.c: 39: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	42
	
l3529:	
;h_bridge.c: 42: CCP1M3=1;
	bsf	(187/8),(187)&7
	line	43
	
l3531:	
;h_bridge.c: 43: CCP1M2=1;
	bsf	(186/8),(186)&7
	line	44
	
l3533:	
;h_bridge.c: 44: CCP1M1=0;
	bcf	(185/8),(185)&7
	line	45
	
l3535:	
;h_bridge.c: 45: CCP1M0=0;
	bcf	(184/8),(184)&7
	line	53
	
l3537:	
;h_bridge.c: 51: {
;h_bridge.c: 53: if(!RB0)
	btfsc	(48/8),(48)&7
	goto	u11
	goto	u10
u11:
	goto	l3543
u10:
	line	55
	
l1029:	
	btfss	(48/8),(48)&7
	goto	u21
	goto	u20
u21:
	goto	l1029
u20:
	line	56
	
l3541:	
;h_bridge.c: 56: i=1;
	clrf	(_i)
	incf	(_i),f
	clrf	(_i+1)
	line	59
	
l3543:	
;h_bridge.c: 57: }
;h_bridge.c: 59: if(!RB1)
	btfsc	(49/8),(49)&7
	goto	u31
	goto	u30
u31:
	goto	l1032
u30:
	line	61
	
l1033:	
	btfss	(49/8),(49)&7
	goto	u41
	goto	u40
u41:
	goto	l1033
u40:
	line	62
	
l3547:	
;h_bridge.c: 62: i=2;
	movlw	02h
	movwf	(_i)
	clrf	(_i+1)
	line	63
	
l1032:	
	line	64
;h_bridge.c: 63: }
;h_bridge.c: 64: if(i==2)
		movf	(_i),w
	xorlw	2
	iorwf	(_i+1),w

	skipz
	goto	u51
	goto	u50
u51:
	goto	l3555
u50:
	line	67
	
l3549:	
;h_bridge.c: 65: {
;h_bridge.c: 67: PR2=82;
	movlw	(052h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	68
;h_bridge.c: 68: CCPR1L=57;
	movlw	(039h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	69
	
l3551:	
;h_bridge.c: 69: RD5=1;RD4=0;
	bsf	(69/8),(69)&7
	
l3553:	
	bcf	(68/8),(68)&7
	line	71
;h_bridge.c: 71: }
	goto	l3537
	line	72
	
l3555:	
;h_bridge.c: 72: else if(i==1)
	decf	(_i),w
	iorwf	(_i+1),w

	skipz
	goto	u61
	goto	u60
u61:
	goto	l3537
u60:
	line	75
	
l3557:	
;h_bridge.c: 73: {
;h_bridge.c: 75: PR2=124;
	movlw	(07Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	76
;h_bridge.c: 76: CCPR1L=112;
	movlw	(070h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	77
	
l3559:	
;h_bridge.c: 77: RD5=0;
	bcf	(69/8),(69)&7
	line	78
	
l3561:	
;h_bridge.c: 78: RD4=1;
	bsf	(68/8),(68)&7
	goto	l3537
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	85
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
