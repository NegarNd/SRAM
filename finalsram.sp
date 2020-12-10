*HSPICE SRAM 16*4
*NEGAR NEDA 9331050

.INCLUDE "mosistsmc180.lib"

*--declaration---------------------------------------------------------------------------------------------------------------
VDD VDD 0 DC 1.8V
.global VDD
.param lambda=180nm
VGND	GND 	0	0
.global GND

*--circuits:-----------------------------------------------------------------------------------------------------------------
*-- Inverter -----------------------------------------------
* D G S BODY
.SUBCKT	NOT A	A!
	MP A!  A  VDD  VDD  PMOS  L='2*lambda' W='10*lambda'  *-- inverter ==> 2 barabare nmos 
	MN A!  A   0    0   NMOS  L='2*lambda' W='4*lambda'
.ENDS

*-- DECODER ------------------------------------------------

.subckt DECODER in1 in2 in3 in4 in1! in2! in3! in4! out1 out2 out3 out4 out5 out6 out7 out8 out9 out10 out11 out12 out13 out14 out15 out16 

	*--line 1
	MN11 out1 in4 0   0   NMOS  L='2*lambda' W='4*lambda'
	MN12 out1 in3 0   0   NMOS  L='2*lambda' W='4*lambda'
	MN13 out1 in2 0   0   NMOS  L='2*lambda' W='4*lambda'
	MN14 out1 in1 0   0   NMOS  L='2*lambda' W='4*lambda'
	MP1  out1 0   vdd vdd PMOS  L='2*lambda' W='10*lambda'

	*--line 2
	MN21 out2 in4! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN22 out2 in3  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN23 out2 in2  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN24 out2 in1  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MP2  out2 gnd  vdd vdd PMOS  L='2*lambda' W='10*lambda'
	

	*--line 3
	MN31  out3 in4  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN32  out3 in3! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN33  out3 in2  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN34  out3 in1  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MP3   out3 gnd  vdd vdd PMOS  L='2*lambda' W='10*lambda'
	
	*--line 4
	MN41  out4 in4! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN42  out4 in3! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN43  out4 in2  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN44  out4 in1  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MP4   out4 gnd  vdd vdd PMOS  L='2*lambda' W='10*lambda'

	*--line 5
	MN51  out5 in4  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN52  out5 in3  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN53  out5 in2! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN54  out5 in1  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MP5   out5 gnd  vdd vdd PMOS  L='2*lambda' W='10*lambda'

	*--line 6
	MN61  out6 in4! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN62  out6 in3  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN63  out6 in2! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN64  out6 in1  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MP6   out6 gnd  vdd vdd PMOS  L='2*lambda' W='10*lambda'

	*--line 7
	MN71  out7 in4  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN72  out7 in3! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN73  out7 in2! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN74  out7 in1  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MP7   out7 gnd  vdd vdd PMOS  L='2*lambda' W='10*lambda'

	*--line 8
	MN81  out8 in4! gnd  gnd NMOS  L='2*lambda' W='4*lambda'
	MN82  out8 in3! gnd  gnd NMOS  L='2*lambda' W='4*lambda'
	MN83  out8 in2! gnd  gnd NMOS  L='2*lambda' W='4*lambda'
	MN84  out8 in1  gnd  gnd NMOS  L='2*lambda' W='4*lambda'
	MP8   out8 gnd  vdd  vdd PMOS  L='2*lambda' W='10*lambda'

	*--line 9
	MN91  out9 in4  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN92  out9 in3  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN93  out9 in2  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN94  out9 in1! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MP9   out9 gnd  vdd vdd PMOS  L='2*lambda' W='10*lambda'

	*--line 10
	MN101 out10 in4! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN102 out10 in3  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN103 out10 in2  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN104 out10 in1! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MP10  out10 gnd  vdd vdd PMOS  L='2*lambda' W='10*lambda'

	*--line 11
	MN111 out11 in4   gnd gnd  NMOS  L='2*lambda' W='4*lambda'
	MN112 out11 in3!  gnd gnd  NMOS  L='2*lambda' W='4*lambda'
	MN113 out11 in2   gnd gnd  NMOS  L='2*lambda' W='4*lambda'
	MN114 out11 in1!  gnd gnd  NMOS  L='2*lambda' W='4*lambda'
	MP11  out11 gnd   vdd vdd  PMOS  L='2*lambda' W='10*lambda'

	*--line 12
	MN121  out12 in4! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN122  out12 in3! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN123  out12 in2  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN124  out12 in1! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MP12   out12 gnd  vdd vdd PMOS  L='2*lambda' W='10*lambda'

	*--line 13
	MN131  out13 in4  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN132  out13 in3  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN133  out13 in2! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN134  out13 in1! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MP13   out13 gnd  vdd vdd PMOS  L='2*lambda' W='10*lambda'

	*--line 14
	MN141  out14 in4! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN142  out14 in3  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN143  out14 in2! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN144  out14 in1! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MP14   out14 gnd  vdd vdd PMOS  L='2*lambda' W='10*lambda'

	*--line 15
	MN151  out15 in4  gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN152  out15 in3! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN153  out15 in2! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN154  out15 in1! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MP15   out15 gnd  vdd vdd PMOS  L='2*lambda' W='10*lambda'

	*--line 16
	MN161  out16 in4! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN162  out16 in3! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN163  out16 in2! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MN164  out16 in1! gnd gnd NMOS  L='2*lambda' W='4*lambda'
	MP16   out16 gnd  vdd vdd PMOS  L='2*lambda' W='10*lambda'

.ends  

*-- Instansiation of Gate Not ---------------------------------
Xnot1	in11	 in11!	NOT
Xnot2	in22	 in22!	NOT
Xnot3	in33	 in33!	NOT
Xnot4	in44	 in44!	NOT

*-- Instansiation of DECODER ------------------------------------
XDECODER	in11 in22 in33 in44 in11! in22! in33! in44! WL1 WL2 WL3 WL4 WL5 WL6 WL7 WL8 WL9 WL10 WL11 WL12 WL13 WL14 WL15 WL16	DECODER

*--SRAM SUBCKT ----------------------------------------------------------------------------
.SUBCKT SRAM wl bl blnot Q Qnot 
* D G S
M1 Qnot	 Q 		gnd 	gnd	 nmos   	L= '2*lambda'	W= '8*lambda' *==>strong
M2 Qnot	 Q 		Vdd 	Vdd  pmos 	 	L='2*lambda'	W='10*lambda' 
M3 Q 	 Qnot 	gnd 	gnd  nmos       L= '2*lambda'	W= '8*lambda' *==>strong
M4 Q 	 Qnot 	Vdd 	Vdd  pmos 	    L='2*lambda'	W='10*lambda' 
M5 qnot  WL 	blnot 	gnd  nmos 	 	L= '2*lambda'	W= '4*lambda'
M6 BL 	 WL 	Q 		gnd  nmos  	    L= '2*lambda'   W= '4*lambda'
.ends

*--WORD SUBSKT ----------------------------------------------------------------------------
.SUBCKT WORD WLword q1 q1not q2 q2not q3 q3not q4 q4not bl1 bl1not bl2 bl2not bl3 bl3not bl4 bl4not
XSram1 WLword bl11 bl1not q1 q1not SRAM
XSram2 WLword bl21 bl2not q2 q2not SRAM
XSram3 WLword bl33 bl3not q3 q3not SRAM
XSram4 WLword bl44 bl4not q4 q4not SRAM
.ends

*--RAM------------------------------------------------------------------------------------------------------------------
Xword1  WL1  q1_1  q1_1not  q1_2  q1_2not  q1_3  q1_3not  q1_4  q1_4not  bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword2  WL2  q2_1  q2_1not  q2_2  q2_2not  q2_3  q2_3not  q2_4  q2_4not  bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword3  WL3  q3_1  q3_1not  q3_2  q3_2not  q3_3  q3_3not  q3_4  q3_4not  bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword4  WL4  q4_1  q4_1not  q4_2  q4_2not  q4_3  q4_3not  q4_4  q4_4not  bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword5  WL5  q5_1  q5_1not  q5_2  q5_2not  q5_3  q5_3not  q5_4  q5_4not  bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword6  WL6  q6_1  q6_1not  q6_2  q6_2not  q6_3  q6_3not  q6_4  q6_4not  bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword7  WL7  q7_1  q7_1not  q7_2  q7_2not  q7_3  q7_3not  q7_4  q7_4not  bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword8  WL8  q8_1  q8_1not  q8_2  q8_2not  q8_3  q8_3not  q8_4  q8_4not  bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword9  WL9  q9_1  q9_1not  q9_2  q9_2not  q9_3  q9_3not  q9_4  q9_4not  bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword10 WL10 q10_1 q10_1not q10_2 q10_2not q10_3 q10_3not q10_4 q10_4not bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword11 WL11 q11_1 q11_1not q11_2 q11_2not q11_3 q11_3not q11_4 q11_4not bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword12 WL12 q12_1 q12_1not q12_2 q12_2not q12_3 q12_3not q12_4 q12_4not bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword13 WL13 q13_1 q13_1not q13_2 q13_2not q13_3 q13_3not q13_4 q13_4not bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword14 WL14 q14_1 q14_1not q14_2 q14_2not q14_3 q14_3not q14_4 q14_4not bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword15 WL15 q15_1 q15_1not q15_2 q15_2not q15_3 q15_3not q15_4 q15_4not bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD
Xword16 WL16 q16_1 q16_1not q16_2 q16_2not q16_3 q16_3not q16_4 q16_4not bl_1 bl1_not bl_2 bl2_not bl_3 bl3_not bl_4 bl4_not WORD

V_in11	in11 	0	DC	0
V_in22	in22 	0	DC	0
V_in33	in33 	0	DC	0
V_in44	in44 	0	DC	0

*V_WL1		WL1	   0		PULSE(0 1.8 0ns 0.25n 0.25n 50ns 100ns)
*V_BL1		bl1	   0		PULSE(0 1.8 0ns 0.25n 0.25n 100ns 200ns)
*V_BLNOT1	blnot1 0		PULSE(0 1.8 100ns 0.25n 0.25n 100ns 200ns)

V_in1	bl_1    0		DC	1.8V
V_in2	bl1_not 	   0		DC	0

V_in1_2	bl_2    0		DC	1.8V
V_in2_2	bl2_not 	   0		DC	0

V_in1_3	bl_3    0		DC	1.8V
V_in2_3	bl3_not	   0		DC	0

V_in1_4	bl_4    0		DC	0
V_in2_4	bl4_not 	   0		DC	1.8

.TRAN 10ps 64ns
.END
