.subckt inv  GND VDD Vin Vout
XM1 Vout Vin GND GND sky130_fd_pr__nfet_01v8 L=0.15e-9 W=1e-7 nf=1 m=1
XM2 Vout Vin VDD VDD sky130_fd_pr__pfet_01v8 L=0.15e-9 W=1e-7 nf=1 m=1
.ends inv
