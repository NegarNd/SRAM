*sram
.INCLUDE "mosistsmc180.lib"
*--declaration----------------------------------
VDD VDD 0 DC 1.8V
.global VDD
.param lambda=180nm
.global gnd
VGND	gnd 	0	0

*-- Inverter -------------------------------------------
* D G S BODY
.SUBCKT	NOT A	A!
	MP A!  A  VDD  VDD  PMOS  L='2*lambda' W='10*lambda'  *-- inverter ==> 2 barabare nmos 
	MN A!  A   0    0   NMOS  L='2*lambda' W='4*lambda'
.ENDS

*-- DECODER ------------------------------------------------

.subckt DECODER in1 in2 in3 in4 in1! in2! in3! in4! out1 out2 out3 out4 out5 out6 out7 out8 out9 out10 out11 out12 out13 out14 out15 out16 

	*--line 1
	MN11 out1 in4 gnd gnd   NMOS  L='2*lambda' W='4*lambda'
	MN12 out1 in3 gnd gnd   NMOS  L='2*lambda' W='4*lambda'
	MN13 out1 in2 gnd gnd   NMOS  L='2*lambda' W='4*lambda'
	MN14 out1 in1 gnd gnd   NMOS  L='2*lambda' W='4*lambda'
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

*-- inverting the ins! ---------------------------------
Xnot1	in11	 in11!	NOT
Xnot2	in22	 in22!	NOT
Xnot3	in33	 in33!	NOT
Xnot4	in44	 in44!	NOT

*-- Instansiation of DECODER -------------------------------
XDECODER	in11 in22 in33 in44 in11! in22! in33! in44! out11 out22 out33 out44 out55 out66 out77 out88 out99 out1010 out1111 out1212 out1313 out1414 out1515 out1616	DECODER
*-- Power Supplies -------------------------------------

V_in1	in11 	0	DC	0
V_in2	in22 	0	DC	0
V_in3	in33 	0	DC	1.8
V_in4	in44 	0	DC	1.8

.TRAN 10ps 64ns

.END
