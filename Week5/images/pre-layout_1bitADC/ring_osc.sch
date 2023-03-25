v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2240 -860 2240 -810 {
lab=#net1}
N 2170 -890 2200 -890 {
lab=Fout}
N 2170 -890 2170 -780 {
lab=Fout}
N 2170 -780 2200 -780 {
lab=Fout}
N 2360 -850 2360 -810 {
lab=#net2}
N 2310 -780 2320 -780 {
lab=#net1}
N 2310 -880 2310 -780 {
lab=#net1}
N 2310 -880 2320 -880 {
lab=#net1}
N 2240 -750 2240 -730 {
lab=Vss}
N 2240 -730 2360 -730 {
lab=Vss}
N 2360 -750 2360 -730 {
lab=Vss}
N 2240 -930 2240 -920 {
lab=Vdd}
N 2360 -930 2360 -910 {
lab=Vdd}
N 2360 -880 2380 -880 {
lab=Vdd}
N 2380 -910 2380 -880 {
lab=Vdd}
N 2360 -910 2380 -910 {
lab=Vdd}
N 2240 -830 2310 -830 {
lab=#net1}
N 2360 -830 2420 -830 {
lab=#net2}
N 2360 -780 2380 -780 {
lab=Vss}
N 2380 -780 2380 -750 {
lab=Vss}
N 2240 -780 2270 -780 {
lab=Vss}
N 2270 -780 2270 -750 {
lab=Vss}
N 2240 -750 2270 -750 {
lab=Vss}
N 2140 -700 2560 -700 {
lab=Fout}
N 2140 -830 2140 -700 {
lab=Fout}
N 2140 -830 2170 -830 {
lab=Fout}
N 2360 -960 2360 -930 {
lab=Vdd}
N 2360 -730 2360 -710 {
lab=Vss}
N 2360 -750 2380 -750 {
lab=Vss}
N 2240 -890 2260 -890 {
lab=Vdd}
N 2260 -920 2260 -890 {
lab=Vdd}
N 2240 -920 2260 -920 {
lab=Vdd}
N 2530 -830 2650 -830 {
lab=Fout}
N 2560 -830 2560 -700 {
lab=Fout}
N 2240 -930 2360 -930 {
lab=Vdd}
N 2470 -850 2470 -810 {
lab=Fout}
N 2420 -880 2430 -880 {
lab=#net2}
N 2420 -880 2420 -780 {
lab=#net2}
N 2420 -780 2430 -780 {
lab=#net2}
N 2470 -830 2530 -830 {
lab=Fout}
N 2470 -930 2470 -910 {
lab=Vdd}
N 2360 -930 2470 -930 {
lab=Vdd}
N 2360 -730 2470 -730 {
lab=Vss}
N 2470 -750 2470 -730 {
lab=Vss}
N 2470 -780 2500 -780 {
lab=Vss}
N 2500 -780 2500 -750 {
lab=Vss}
N 2470 -750 2500 -750 {
lab=Vss}
N 2470 -910 2500 -910 {
lab=Vdd}
N 2500 -910 2500 -880 {
lab=Vdd}
N 2470 -880 2500 -880 {
lab=Vdd}
C {devices/iopin.sym} 2360 -960 0 0 {name=p1 lab=Vdd}
C {devices/iopin.sym} 2360 -710 0 0 {name=p2 lab=Vss}
C {devices/opin.sym} 2650 -830 0 0 {name=p3 lab=Fout
}
C {sky130_fd_pr/pfet_01v8.sym} 2220 -890 0 0 {name=M1
L=1.2
W=2.52
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2220 -780 0 0 {name=M2
L=1.2
W=2.52
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2340 -880 0 0 {name=M3
L=1.2
W=2.52
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2340 -780 0 0 {name=M4
L=1.2
W=2.52
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2450 -880 0 0 {name=M5
L=1.2
W=2.52
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2450 -780 0 0 {name=M6
L=1.2
W=2.52
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
