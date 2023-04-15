.subckt comp VCC OUT INN INP GND BIAS
XM1 net3 net3 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-09 W=8.4e-07 nf=4 m=1
XM3 net3 INN net1 GND sky130_fd_pr__nfet_01v8 L=150e-09 W=8.4e-07 nf=4 m=1
XM12 net1 BIAS GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=8.4e-07 nf=4 m=1
XM2 net2 net3 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-09 W=8.4e-07 nf=4 m=1
XM4 net2 INP net1 GND sky130_fd_pr__nfet_01v8 L=150e-09 W=8.4e-07 nf=4 m=1
XM5 net4 net2 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-09 W=8.4e-07 nf=4 m=1
XM6 net4 net2 GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=8.4e-07 nf=4 m=1
XM7 net5 net4 GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=8.4e-07 nf=4 m=1
XM8 OUT net5 GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=8.4e-07 nf=4 m=1
XM9 net5 net4 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-09 W=8.4e-07 nf=4 m=1
XM10 OUT net5 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-09 W=8.4e-07 nf=4 m=1
.ends comp

.subckt cbridge IN Vref1 CC
C1 IN Vref1 sky130_fd_pr__cap_mim_m3_1 W=7000e-09 L=7000e-09 m=1
C2 Vref1 CC sky130_fd_pr__cap_mim_m3_1 W=7000e-09 L=7000e-09 m=1
.ends cbridge

.subckt Two_Bit_Res_ADC VCC BIAS C3 C2 C1 INN GND INP
x1 VCC C3 net2 INN GND BIAS comp
x2 VCC C2 net3 INN GND BIAS comp
x3 VCC C1 net1 INN GND BIAS comp
x5 net3 net1 GND cbridge
x6 INP net2 net3 cbridge
.ends Two_Bit_ADC

