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
# 9 "C:\Online Class\HK6\Practice_Micro\lcd_itr\lcd_itr.c"
	psect config,class=CONFIG,delta=2 ;#
# 9 "C:\Online Class\HK6\Practice_Micro\lcd_itr\lcd_itr.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_seg
	FNCALL	_seg,___lbmod
	FNCALL	_seg,___lbdiv
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_MA7DOAN
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
	file	"C:\Online Class\HK6\Practice_Micro\lcd_itr\lcd_itr.c"
	line	14
_MA7DOAN:
	retlw	0C0h
	retlw	0F9h
	retlw	0A4h
	retlw	0B0h
	retlw	099h
	retlw	092h
	retlw	082h
	retlw	0F8h
	retlw	080h
	retlw	090h
	global	_MA7DOAN
	global	_dem
	global	_chuc
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_chuc:
       ds      2

	global	_donvi
_donvi:
       ds      2

	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_INTEDG
_INTEDG	set	1038
	global	_TRISB0
_TRISB0	set	1072
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"lcd.itr.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_dem:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_seg
?_seg:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	global	seg@count
seg@count:	; 1 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x0
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x0
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	ds	1
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x1
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x1
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x1
	ds	1
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x2
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x3
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x3
	ds	1
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x4
	ds	1
	global	??_seg
??_seg:	; 0 bytes @ 0x5
	global	??_main
??_main:	; 0 bytes @ 0x5
;;Data sizes: Strings 0, constant 10, data 0, bss 1, persistent 4 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
;; BANK0           80      5       5
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
;;   _seg->___lbmod
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     394
;;                                _seg
;; ---------------------------------------------------------------------------------
;; (1) _seg                                                  1     1      0     394
;;                            ___lbmod
;;                            ___lbdiv
;; ---------------------------------------------------------------------------------
;; (2) ___lbmod                                              5     4      1     232
;;                                              0 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (2) ___lbdiv                                              4     3      1     162
;;                                              0 BANK0      4     3      1
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ngat                                                 5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _seg
;;     ___lbmod
;;     ___lbdiv
;;
;; _ngat (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       F       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      5       5       5        6.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      11      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "C:\Online Class\HK6\Practice_Micro\lcd_itr\lcd_itr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_seg
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Online Class\HK6\Practice_Micro\lcd_itr\lcd_itr.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	19
	
l3714:	
;lcd_itr.c: 19: ANSEL = ANSELH= 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	20
	
l3716:	
;lcd_itr.c: 20: TRISB0 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	21
;lcd_itr.c: 21: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	22
	
l3718:	
;lcd_itr.c: 22: PORTA =0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	24
	
l3720:	
;lcd_itr.c: 24: TRISC = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	25
	
l3722:	
;lcd_itr.c: 25: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	27
	
l3724:	
;lcd_itr.c: 27: INTE = 1;
	bsf	(92/8),(92)&7
	line	28
	
l3726:	
;lcd_itr.c: 28: INTF = 0;
	bcf	(89/8),(89)&7
	line	29
	
l3728:	
;lcd_itr.c: 29: GIE = 1;
	bsf	(95/8),(95)&7
	line	30
	
l3730:	
;lcd_itr.c: 30: INTEDG = 0;
	bcf	(1038/8)^080h,(1038)&7
	line	34
	
l3732:	
;lcd_itr.c: 33: {
;lcd_itr.c: 34: seg(dem);
	movf	(_dem),w
	fcall	_seg
	goto	l3732
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	37
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_seg
psect	text125,local,class=CODE,delta=2
global __ptext125
__ptext125:

;; *************** function _seg *****************
;; Defined at:
;;		line 51 in file "C:\Online Class\HK6\Practice_Micro\lcd_itr\lcd_itr.c"
;; Parameters:    Size  Location     Type
;;  count           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  count           1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 15F/20
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbmod
;;		___lbdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text125
	file	"C:\Online Class\HK6\Practice_Micro\lcd_itr\lcd_itr.c"
	line	51
	global	__size_of_seg
	__size_of_seg	equ	__end_of_seg-_seg
	
_seg:	
	opt	stack 5
; Regs used in _seg: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	52
	
l3708:	
;lcd_itr.c: 52: donvi=dem%10;
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lbmod)
	movf	(_dem),w
	fcall	___lbmod
	movwf	(_donvi)
	clrf	(_donvi+1)
	line	53
;lcd_itr.c: 53: chuc=dem/10;
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_dem),w
	fcall	___lbdiv
	movwf	(_chuc)
	clrf	(_chuc+1)
	line	54
	
l3710:	
;lcd_itr.c: 54: PORTC=MA7DOAN[chuc];
	movf	(_chuc),w
	addlw	low((_MA7DOAN-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(7)	;volatile
	line	55
	
l3712:	
;lcd_itr.c: 55: PORTD=MA7DOAN[donvi];
	movf	(_donvi),w
	addlw	low((_MA7DOAN-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(8)	;volatile
	line	56
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_seg
	__end_of_seg:
;; =============== function _seg ends ============

	signat	_seg,4216
	global	___lbmod
psect	text126,local,class=CODE,delta=2
global __ptext126
__ptext126:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    2[BANK0 ] unsigned char 
;;  rem             1    4[BANK0 ] unsigned char 
;;  counter         1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_seg
;; This function uses a non-reentrant model
;;
psect	text126
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 5
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l3690:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3692:	
	clrf	(___lbmod@rem)
	line	12
	
l3694:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u165:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u165
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3696:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3698:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u171
	goto	u170
u171:
	goto	l3702
u170:
	line	15
	
l3700:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3702:	
	decfsz	(___lbmod@counter),f
	goto	u181
	goto	u180
u181:
	goto	l3694
u180:
	line	17
	
l3704:	
	movf	(___lbmod@rem),w
	line	18
	
l3177:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text127,local,class=CODE,delta=2
global __ptext127
__ptext127:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    1[BANK0 ] unsigned char 
;;  quotient        1    3[BANK0 ] unsigned char 
;;  counter         1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_seg
;; This function uses a non-reentrant model
;;
psect	text127
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 5
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l3666:	
	clrf	(___lbdiv@quotient)
	line	10
	
l3668:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u120
	goto	l3686
u120:
	line	11
	
l3670:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l3674
	
l3166:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l3672:	
	incf	(___lbdiv@counter),f
	line	12
	
l3674:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u131
	goto	u130
u131:
	goto	l3166
u130:
	line	16
	
l3168:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l3676:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u141
	goto	u140
u141:
	goto	l3682
u140:
	line	19
	
l3678:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l3680:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l3682:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l3684:	
	decfsz	(___lbdiv@counter),f
	goto	u151
	goto	u150
u151:
	goto	l3168
u150:
	line	25
	
l3686:	
	movf	(___lbdiv@quotient),w
	line	26
	
l3171:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	_ngat
psect	text128,local,class=CODE,delta=2
global __ptext128
__ptext128:

;; *************** function _ngat *****************
;; Defined at:
;;		line 39 in file "C:\Online Class\HK6\Practice_Micro\lcd_itr\lcd_itr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
psect	text128
	file	"C:\Online Class\HK6\Practice_Micro\lcd_itr\lcd_itr.c"
	line	39
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 5
; Regs used in _ngat: [wreg+status,2+status,0]
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
psect	text128
	line	41
	
i1l3538:	
;lcd_itr.c: 41: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_ngat+0)+0+2),f
movlw	69
movwf	((??_ngat+0)+0+1),f
	movlw	169
movwf	((??_ngat+0)+0),f
u19_27:
	decfsz	((??_ngat+0)+0),f
	goto	u19_27
	decfsz	((??_ngat+0)+0+1),f
	goto	u19_27
	decfsz	((??_ngat+0)+0+2),f
	goto	u19_27
	nop2
opt asmopt_on

	line	42
;lcd_itr.c: 42: if(dem<=99)
	movlw	(064h)
	subwf	(_dem),w
	skipnc
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l3542
u1_20:
	line	43
	
i1l3540:	
;lcd_itr.c: 43: {dem++;}
	incf	(_dem),f
	goto	i1l3544
	line	44
	
i1l3542:	
;lcd_itr.c: 44: else {dem = 0;}
	clrf	(_dem)
	line	46
	
i1l3544:	
;lcd_itr.c: 46: INTF = 0;
	bcf	(89/8),(89)&7
	line	47
	
i1l1045:	
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
psect	text129,local,class=CODE,delta=2
global __ptext129
__ptext129:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
