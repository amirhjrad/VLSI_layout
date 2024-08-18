* Circuit Extracted by Tanner Research's L-Edit Version 8.30 / Extract Version 8.30 ;
* TDB File:  C:\Users\IDEAL\Desktop\CA1\part 1\XOR_Layout.tdb
* Cell:  Cell0	Version 1.19
* Extract Definition File:  ..\..\CA1 Files\L-Edit\Tech\Part1\MHP_N05.EXT
* Extract Date and Time:  03/28/2024 - 18:31

* Warning:  Layers with Unassigned AREA Capacitance.
*   <allsubs>
*   <LPNP collector>
*   <n well wire>
*   <LPNP emitter>
*   <P Diff Resistor>
*   <N Well Resistor>
*   <poly wire>
*   <Poly Resistor>
*   <N Diff Resistor>
*   <subs>
*   <Metal1>
*   <Metal1-Tight>
*   <Metal2>
*   <Metal2-Tight>
* Warning:  Layers with Unassigned FRINGE Capacitance.
*   <Pad Comment>
*   <AllMetal1>
*   <allsubs>
*   <LPNP collector>
*   <n well wire>
*   <LPNP emitter>
*   <P Diff Resistor>
*   <pdiff>
*   <N Well Resistor>
*   <poly wire>
*   <ndiff>
*   <Poly Resistor>
*   <N Diff Resistor>
*   <subs>
*   <AllMetal2>
*   <Metal3>
*   <Metal1>
*   <Metal1-Tight>
*   <Metal2>
*   <Metal2-Tight>
* Warning:  Layers with Zero Resistance.
*   <Pad Comment>
*   <allsubs>
*   <LPNP collector>
*   <n well wire>
*   <LPNP emitter>
*   <NMOS Capacitor>
*   <poly wire>
*   <PMOS Capacitor>
*   <cap using Cap-Well>
*   <subs>
*   <Metal1>
*   <Metal1-Tight>
*   <Metal2>
*   <Metal2-Tight>

Cpar1 ~B 0 C=3.6f
Cpar2 GND 0 C=144.702f
Cpar3 OUT 0 C=124.878f
Cpar4 4 0 C=162.285f
Cpar5 VDD 0 C=188.346f
* Warning: Node A has zero nodal parasitic capacitance.
* Warning: Node B has zero nodal parasitic capacitance.
Cpar6 8 0 C=17.721f
Cpar7 9 0 C=17.721f
* Warning: Node ~A has zero nodal parasitic capacitance.

M1 4 A VDD VDD PMOS L=2.5u W=6u AD=39p PD=25u AS=39p PS=25u 
* M1 DRAIN GATE SOURCE BULK (199 40 205 42.5) 
M2 4 B VDD VDD PMOS L=2.5u W=6u AD=39p PD=25u AS=39p PS=25u 
* M2 DRAIN GATE SOURCE BULK (225 40 231 42.5) 
M3 OUT ~B 4 VDD PMOS L=2.5u W=6u AD=39p PD=25u AS=39p PS=25u 
* M3 DRAIN GATE SOURCE BULK (225 -2 231 0.5) 
M4 OUT ~A 4 VDD PMOS L=2.5u W=6u AD=39p PD=25u AS=39p PS=25u 
* M4 DRAIN GATE SOURCE BULK (199 -2 205 0.5) 
M5 GND ~B 9 GND NMOS L=2.5u W=6u AD=51p PD=29u AS=16.5p PS=11.5u 
* M5 DRAIN GATE SOURCE BULK (202.5 -45.5 208.5 -43) 
M6 GND B 8 GND NMOS L=2.5u W=6u AD=51p PD=29u AS=16.5p PS=11.5u 
* M6 DRAIN GATE SOURCE BULK (224 -45.5 230 -43) 
M7 8 A OUT GND NMOS L=2.5u W=6u AD=16.5p PD=11.5u AS=39p PS=25u 
* M7 DRAIN GATE SOURCE BULK (224 -37.5 230 -35) 
M8 9 ~A OUT GND NMOS L=2.5u W=6u AD=16.5p PD=11.5u AS=39p PS=25u 
* M8 DRAIN GATE SOURCE BULK (202.5 -37.5 208.5 -35) 


***********library*************
.inc 0.5micron.lib
*******************************


*************Inputs************
Vcc VDD GND DC 5
Vpulse_A A 0 PULSE(0 5 0 1ps 1ps 5ns 50ns)
Vpulse_B B 0 PULSE(5 0 0 1ps 1ps 5ns 50ns)
Vpulse_A1 ~A 0 PULSE(5 0 0 1ps 1ps 5ns 50ns)
Vpulse_B1 ~B 0 PULSE(0 0 0 1ps 1ps 5ns 50ns)
*******************************



*******************************
.op
.tran 1ns 2us
.options post=2
.measure tran power_avg AVG power from=0n to=160n
*******************************
* Total Nodes: 10
* Total Elements: 15
* Total Number of Shorted Elements not written to the SPICE file: 0
* Extract Elapsed Time: 0 seconds
.END
