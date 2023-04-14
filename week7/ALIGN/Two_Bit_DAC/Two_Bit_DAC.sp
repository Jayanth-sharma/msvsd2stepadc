.subckt switch inp1 vdd din vout inp2 gnda
XM1 dinb din gnda gnda sky130_fd_pr__nfet_01v8 L=150e-09 W=6.3e-07 nf=2
XM2 dinb din vdd vdd sky130_fd_pr__pfet_01v8 L=150e-09 W=12.6e-07 nf=2
XM3 net1 dinb vdd vdd sky130_fd_pr__pfet_01v8 L=150e-09 W=12.6e-07 nf=2
XM4 net1 dinb gnda gnda sky130_fd_pr__nfet_01v8 L=150e-09 W=6.3e-07 nf=2
XM5 inp2 dinb vout vout sky130_fd_pr__pfet_01v8 L=150e-09 W=12.6e-07 nf=2
XM6 vout net1 inp2 inp2 sky130_fd_pr__nfet_01v8 L=150e-09 W=6.3e-07 nf=2
XM7 vout net1 inp1 inp1 sky130_fd_pr__pfet_01v8 L=150e-09 W=12.6e-07 nf=2
XM8 inp1 dinb vout vout sky130_fd_pr__nfet_01v8 L=150e-09 W=6.3e-07 nf=2
.ends switch

.subckt Two_Bit_DAC OUT VDD GND X1_INP1 X1_INP2 X2_INP1 X2_INP2 D0 D1
x1 X2_INP1 VDD D0 net2 X2_INP2 GND switch
x2 X1_INP1 VDD D0 net1 X1_INP2 GND switch
x3 net1 VDD D1 OUT net2 GND switch
.ends Two_Bit_DAC

