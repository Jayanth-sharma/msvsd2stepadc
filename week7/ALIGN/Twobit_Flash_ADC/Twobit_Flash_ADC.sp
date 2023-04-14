.subckt comp VCC OUT INN INP GND BIAS
XM1 net3 net3 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-09 W=8.4e-07 nf=4
XM3 net3 INN net1 GND sky130_fd_pr__nfet_01v8 L=150e-09 W=8.4e-07 nf=4
XM12 net1 BIAS GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=8.4e-07 nf=4
XM2 net2 net3 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-09 W=8.4e-07 nf=4
XM4 net2 INP net1 GND sky130_fd_pr__nfet_01v8 L=150e-09 W=8.4e-07 nf=4
XM5 net4 net2 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-09 W=8.4e-07 nf=4
XM6 net4 net2 GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=8.4e-07 nf=4
XM7 net5 net4 GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=8.4e-07 nf=4
XM8 OUT net5 GND GND sky130_fd_pr__nfet_01v8 L=150e-09 W=8.4e-07 nf=4
XM9 net5 net4 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-09 W=8.4e-07 nf=4
XM10 OUT net5 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-09 W=8.4e-07 nf=4
.ends comp


.subckt Twobit_Flash_ADC GND VCC C3 C2 C1 Vref2 Vref3 Vref1 BIAS INP
x1 VCC C3 Vref3 INP GND BIAS comp
x2 VCC C2 Vref2 INP GND BIAS comp
x3 VCC C1 Vref1 INP GND BIAS comp
.ends Twobit_Flash_ADC
