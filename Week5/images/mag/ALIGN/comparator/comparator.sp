.subckt comparator OUT VDD GND VIN VREF VBIAS
M1 net1 net1 VDD VDD sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M2 net2 net1 VDD VDD sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M3 net1 VIN net3 GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M4 net2 VREF net3 GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M5 net3 VBIAS GND GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M6 net4 net2 VDD VDD sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M7 net4 net2 GND GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M8 net5 net4 VDD VDD sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M9 net5 net4 GND GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M10 OUT net5 VDD VDD sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M11 OUT net5 GND GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
.ends
