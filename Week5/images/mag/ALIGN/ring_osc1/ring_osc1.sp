.subckt ring_osc1 Vdd Vss Fout
XM1 net1 Fout Vdd Vdd sky130_fd_pr__pfet_01v8 L=1200e-09 W=25.2e-07
XM2 net1 Fout Vss Vss sky130_fd_pr__nfet_01v8 L=1200e-09 W=25.2e-07
XM3 net2 net1 Vdd Vdd sky130_fd_pr__pfet_01v8 L=1200e-09 W=25.2e-07
XM4 net2 net1 Vss Vss sky130_fd_pr__nfet_01v8 L=1200e-09 W=25.2e-07
XM5 Fout net2 Vdd Vdd sky130_fd_pr__pfet_01v8 L=1200e-09 W=25.2e-07
XM6 Fout net2 Vss Vss sky130_fd_pr__nfet_01v8 L=1200e-09 W=25.2e-07
.ends
