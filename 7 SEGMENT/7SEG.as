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
# 8 "C:\Online Class\HK6\Practice_Micro\7 SEGMENT\7SEG.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Online Class\HK6\Practice_Micro\7 SEGMENT\7SEG.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_seg
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_dem
	global	_PORTA
psect	text31,local,class=CODE,delta=2
global __ptext31
__ptext31:
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
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
	global	_INTEDG
_INTEDG	set	1038
	global	_TRISB0
_TRISB0	set	1072
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"7SEG.as"
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
	ds	2
	global	??_seg
??_seg:	; 0 bytes @ 0x2
	global	seg@count
seg@count:	; 1 bytes @ 0x2
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x3
;;Data sizes: Strings 0, constant 0, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       4
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_seg
;;
;; Critical Paths under _ngat in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;; (0) _main                                                 0     0      0     150
;;                                _seg
;; ---------------------------------------------------------------------------------
;; (1) _seg                                                  1     1      0     150
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _ngat                                                 2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _seg
;;
;; _ngat (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       4       1       28.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       4       3        0.0%
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
;;DATA                 0      0       5      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "C:\Online Class\HK6\Practice_Micro\7 SEGMENT\7SEG.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 11F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_seg
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Online Class\HK6\Practice_Micro\7 SEGMENT\7SEG.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l2433:	
;7SEG.c: 15: ANSEL = ANSELH= 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	16
	
l2435:	
;7SEG.c: 16: TRISB0 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	17
;7SEG.c: 17: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	18
	
l2437:	
;7SEG.c: 18: PORTA =0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	20
	
l2439:	
;7SEG.c: 20: TRISC = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	22
	
l2441:	
;7SEG.c: 22: INTE = 1;
	bsf	(92/8),(92)&7
	line	23
	
l2443:	
;7SEG.c: 23: INTF = 0;
	bcf	(89/8),(89)&7
	line	24
	
l2445:	
;7SEG.c: 24: GIE = 1;
	bsf	(95/8),(95)&7
	line	25
	
l2447:	
;7SEG.c: 25: INTEDG = 0;
	bcf	(1038/8)^080h,(1038)&7
	line	29
	
l2449:	
;7SEG.c: 28: {
;7SEG.c: 29: seg(dem);
	movf	(_dem),w
	fcall	_seg
	goto	l2449
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	32
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_seg
psect	text32,local,class=CODE,delta=2
global __ptext32
__ptext32:

;; *************** function _seg *****************
;; Defined at:
;;		line 45 in file "C:\Online Class\HK6\Practice_Micro\7 SEGMENT\7SEG.c"
;; Parameters:    Size  Location     Type
;;  count           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  count           1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 11F/20
;;		On exit  : 11F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32
	file	"C:\Online Class\HK6\Practice_Micro\7 SEGMENT\7SEG.c"
	line	45
	global	__size_of_seg
	__size_of_seg	equ	__end_of_seg-_seg
	
_seg:	
	opt	stack 6
; Regs used in _seg: [wreg+status,2+status,0]
;seg@count stored from wreg
	movwf	(seg@count)
	
l2403:	
	movf	(seg@count),f
	skipz
	goto	u11
	goto	u10
u11:
	goto	l1040
u10:
	
l2405:	
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	
l1040:	
	line	46
;7SEG.c: 46: if(count == 1) {PORTC = 0X06;}
	decf	(seg@count),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l1041
u20:
	
l2407:	
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	
l1041:	
	line	47
;7SEG.c: 47: if(count == 2) {PORTC = 0X5B;}
	movf	(seg@count),w
	xorlw	02h
	skipz
	goto	u31
	goto	u30
u31:
	goto	l1042
u30:
	
l2409:	
	movlw	(05Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	
l1042:	
	line	48
;7SEG.c: 48: if(count == 3) {PORTC = 0X4F;}
	movf	(seg@count),w
	xorlw	03h
	skipz
	goto	u41
	goto	u40
u41:
	goto	l1043
u40:
	
l2411:	
	movlw	(04Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	
l1043:	
	line	49
;7SEG.c: 49: if(count == 4) {PORTC = 0X66;}
	movf	(seg@count),w
	xorlw	04h
	skipz
	goto	u51
	goto	u50
u51:
	goto	l1044
u50:
	
l2413:	
	movlw	(066h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	
l1044:	
	line	50
;7SEG.c: 50: if(count == 5) {PORTC = 0X6D;}
	movf	(seg@count),w
	xorlw	05h
	skipz
	goto	u61
	goto	u60
u61:
	goto	l1045
u60:
	
l2415:	
	movlw	(06Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	
l1045:	
	line	51
;7SEG.c: 51: if(count == 6) {PORTC = 0X7D;}
	movf	(seg@count),w
	xorlw	06h
	skipz
	goto	u71
	goto	u70
u71:
	goto	l1046
u70:
	
l2417:	
	movlw	(07Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	
l1046:	
	line	52
;7SEG.c: 52: if(count == 7) {PORTC = 0X07;}
	movf	(seg@count),w
	xorlw	07h
	skipz
	goto	u81
	goto	u80
u81:
	goto	l1047
u80:
	
l2419:	
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	
l1047:	
	line	53
;7SEG.c: 53: if(count == 8) {PORTC = 0X7F;}
	movf	(seg@count),w
	xorlw	08h
	skipz
	goto	u91
	goto	u90
u91:
	goto	l1048
u90:
	
l2421:	
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	
l1048:	
	line	54
;7SEG.c: 54: if(count == 9) {PORTC = 0X6F;}
	movf	(seg@count),w
	xorlw	09h
	skipz
	goto	u101
	goto	u100
u101:
	goto	l1050
u100:
	
l2423:	
	movlw	(06Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	56
	
l1050:	
	return
	opt stack 0
GLOBAL	__end_of_seg
	__end_of_seg:
;; =============== function _seg ends ============

	signat	_seg,4216
	global	_ngat
psect	text33,local,class=CODE,delta=2
global __ptext33
__ptext33:

;; *************** function _ngat *****************
;; Defined at:
;;		line 34 in file "C:\Online Class\HK6\Practice_Micro\7 SEGMENT\7SEG.c"
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
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text33
	file	"C:\Online Class\HK6\Practice_Micro\7 SEGMENT\7SEG.c"
	line	34
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 6
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
	movwf	(??_ngat+0)
	movf	pclath,w
	movwf	(??_ngat+1)
	ljmp	_ngat
psect	text33
	line	36
	
i1l2425:	
;7SEG.c: 36: if(dem<=8)
	movlw	(09h)
	subwf	(_dem),w
	skipnc
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l2429
u11_20:
	line	37
	
i1l2427:	
;7SEG.c: 37: {dem++;}
	incf	(_dem),f
	goto	i1l2431
	line	38
	
i1l2429:	
;7SEG.c: 38: else {dem = 0;}
	clrf	(_dem)
	line	40
	
i1l2431:	
;7SEG.c: 40: INTF = 0;
	bcf	(89/8),(89)&7
	line	41
	
i1l1037:	
	movf	(??_ngat+1),w
	movwf	pclath
	swapf	(??_ngat+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ngat
	__end_of_ngat:
;; =============== function _ngat ends ============

	signat	_ngat,88
psect	text34,local,class=CODE,delta=2
global __ptext34
__ptext34:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
