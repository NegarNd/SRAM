*HSPICE FA

.INCLUDE "mosistsmc180.lib"


*--declaration-----------------------------------------
VDD VDD 0 DC 1.8V
.global VDD
.param lambda=180nm
.global gnd
VGND	gnd 	0	0

*--circuits:--------------------------------------------
.SUBCKT SRAM wl bl blnot q qnot 
* D G S
M1 Qnot	 Q 		gnd 	gnd	 nmos   	L= '2*lambda'	W= '8*lambda' *==>strong
M2 Qnot	 Q 		Vdd 	Vdd  pmos 	 	L='2*lambda'	W='10*lambda' 
M3 Q 	 Qnot 	gnd 	gnd  nmos       L= '2*lambda'	W= '8*lambda' *==>strong
M4 Q 	 Qnot 	Vdd 	Vdd  pmos 	    L='2*lambda'	W='10*lambda' 
M5 qnot  WL 	blnot 	gnd  nmos 	 	L= '2*lambda'	W= '4*lambda'
M6 BL 	 WL 	Q 		gnd  nmos  	    L= '2*lambda'   W= '4*lambda'
.ends

XSRAM WL1 bl1 blnot1 Q1 Qnot1 SRAM

*--READ VDD FROM SRAM --------------------------------------------
*.IC	V(Q1)=1.8
*.IC V(Qnot1)=0
*.IC V(bl1) = 1.8V
*.IC V(blnot1) = 1.8V

*--READ GND FROM SRAM --------------------------------------------

.IC	V(Q1)=0
.IC V(Qnot1)=1.8
.IC V(bl1) = 1.8V
.IC V(blnot1) = 1.8V

*--WRITE VDD THEN GND TO SRAM USING PULSE--------------------------

*V_WL1		WL1	   0		PULSE(0 1.8 0ns 0.25n 0.25n 50ns 100ns)
*V_BL1		bl1	   0		PULSE(0 1.8 0ns 0.25n 0.25n 100ns 200ns)
*V_BLNOT1	blnot1 0		PULSE(0 1.8 100ns 0.25n 0.25n 100ns 200ns)

*-- WRITE GND WITHOUT PULSE ---------------------------------------
*V_in1		bl1    0		DC	0
*V_in2	blnot1 	   0		DC	1.8
*V_in3	WL1		   0		DC	0

.TRAN 10ps 200ns

.END