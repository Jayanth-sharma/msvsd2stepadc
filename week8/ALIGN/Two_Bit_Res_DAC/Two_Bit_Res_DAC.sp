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

.subckt cbridge IN Vref1 CC
C1 IN Vref1 sky130_fd_pr__cap_mim_m3_1 W=7000e-09 L=7000e-09 m=1
C2 Vref1 CC sky130_fd_pr__cap_mim_m3_1 W=7000e-09 L=7000e-09 m=1
.ends

.subckt Two_Bit_Res_DAC out_v VDD D0 D1 GND
x1 net2 VDD D0 net5 GND inp2 switch
x2 net3 VDD D0 net4 GND net1 switch
x3 net4 VDD D1 out_v GND net5 switch
x4 inp1 net3 net1 cbridge
x5 net1 net2 inp2 cbridge
.ends

