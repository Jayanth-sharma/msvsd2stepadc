v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2250 -960 2250 -930 {
lab=#net1}
N 2250 -930 2450 -930 {
lab=#net1}
N 2450 -960 2450 -930 {
lab=#net1}
N 2360 -930 2360 -910 {
lab=#net1}
N 2450 -1070 2450 -1020 {
lab=#net2}
N 2250 -1070 2250 -1020 {
lab=#net3}
N 2250 -1140 2450 -1140 {
lab=VCC}
N 2420 -990 2450 -990 {
lab=GND}
N 2250 -990 2280 -990 {
lab=GND}
N 2360 -880 2380 -880 {
lab=GND}
N 2380 -880 2380 -850 {
lab=GND}
N 2360 -850 2380 -850 {
lab=GND}
N 2360 -850 2360 -830 {
lab=GND}
N 2450 -1040 2530 -1040 {
lab=#net2}
N 2570 -1080 2570 -1020 {
lab=#net4}
N 2530 -1110 2530 -990 {
lab=#net2}
N 2570 -1110 2580 -1110 {
lab=VCC}
N 2580 -1140 2580 -1110 {
lab=VCC}
N 2570 -1140 2580 -1140 {
lab=VCC}
N 2570 -990 2590 -990 {
lab=GND}
N 2590 -990 2590 -960 {
lab=GND}
N 2570 -960 2590 -960 {
lab=GND}
N 2620 -1110 2630 -1110 {
lab=#net4}
N 2620 -1110 2620 -990 {
lab=#net4}
N 2620 -990 2640 -990 {
lab=#net4}
N 2670 -1080 2670 -1020 {
lab=#net5}
N 2670 -1020 2680 -1020 {
lab=#net5}
N 2570 -1050 2620 -1050 {
lab=#net4}
N 2490 -990 2490 -970 {
lab=INP}
N 2360 -830 2540 -830 {
lab=GND}
N 2540 -930 2540 -830 {
lab=GND}
N 2540 -930 2780 -930 {
lab=GND}
N 2780 -960 2780 -930 {
lab=GND}
N 2680 -960 2680 -930 {
lab=GND}
N 2570 -960 2570 -930 {
lab=GND}
N 2680 -990 2690 -990 {
lab=GND}
N 2690 -990 2690 -960 {
lab=GND}
N 2680 -960 2690 -960 {
lab=GND}
N 2680 -1140 2680 -1110 {
lab=VCC}
N 2670 -1110 2680 -1110 {
lab=VCC}
N 2780 -1080 2780 -1020 {
lab=OUT}
N 2740 -1110 2740 -990 {
lab=#net5}
N 2670 -1050 2740 -1050 {
lab=#net5}
N 2780 -1050 2890 -1050 {
lab=OUT}
N 2780 -930 2890 -930 {
lab=GND}
N 2260 -880 2320 -880 {
lab=BIAS}
N 2860 -1160 2880 -1160 {
lab=VCC}
N 2380 -990 2420 -990 {
lab=GND}
N 2180 -990 2210 -990 {
lab=INN}
N 2450 -1140 2490 -1140 {
lab=VCC}
N 2490 -1150 2490 -1140 {
lab=VCC}
N 2490 -1150 2700 -1150 {
lab=VCC}
N 2860 -1160 2860 -1150 {
lab=VCC}
N 2700 -1150 2860 -1150 {
lab=VCC}
N 2670 -1140 2680 -1140 {
lab=VCC}
N 2780 -1140 2800 -1140 {
lab=VCC}
N 2800 -1140 2800 -1110 {
lab=VCC}
N 2780 -1110 2800 -1110 {
lab=VCC}
N 2780 -990 2810 -990 {
lab=GND}
N 2810 -990 2810 -960 {
lab=GND}
N 2780 -960 2810 -960 {
lab=GND}
N 2670 -1150 2670 -1140 {
lab=VCC}
N 2780 -1150 2780 -1140 {
lab=VCC}
N 2570 -1150 2570 -1140 {
lab=VCC}
N 2250 -1140 2250 -1130 {
lab=VCC}
N 2290 -1100 2290 -1070 {
lab=#net3}
N 2250 -1070 2290 -1070 {
lab=#net3}
N 2450 -1140 2450 -1130 {
lab=VCC}
N 2290 -1100 2410 -1100 {
lab=#net3}
N 2240 -1100 2250 -1100 {
lab=VCC}
N 2240 -1130 2240 -1100 {
lab=VCC}
N 2240 -1130 2250 -1130 {
lab=VCC}
N 2450 -1130 2470 -1130 {
lab=VCC}
N 2470 -1130 2470 -1100 {
lab=VCC}
N 2450 -1100 2470 -1100 {
lab=VCC}
C {sky130_fd_pr/pfet_01v8.sym} 2270 -1100 0 1 {name=M1
L=0.15
W=0.84
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
C {sky130_fd_pr/nfet_01v8.sym} 2230 -990 0 0 {name=M3
L=0.15
W=0.84
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
C {devices/ipin.sym} 2260 -880 0 0 {name=p3 lab=BIAS}
C {devices/iopin.sym} 2880 -1160 0 0 {name=p4 lab=VCC}
C {devices/iopin.sym} 2890 -930 0 0 {name=p5 lab=GND}
C {devices/lab_pin.sym} 2280 -990 2 0 {name=p6 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 2380 -990 0 0 {name=p7 sig_type=std_logic lab=GND}
C {devices/opin.sym} 2890 -1050 0 0 {name=p8 lab=OUT}
C {devices/ipin.sym} 2180 -990 0 0 {name=p1 lab=INN}
C {devices/ipin.sym} 2490 -970 3 0 {name=p2 lab=INP}
C {sky130_fd_pr/nfet_01v8.sym} 2340 -880 0 0 {name=M12
L=0.15
W=0.84
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
C {sky130_fd_pr/pfet_01v8.sym} 2430 -1100 0 0 {name=M2
L=0.15
W=0.84
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
C {sky130_fd_pr/nfet_01v8.sym} 2470 -990 0 1 {name=M4
L=0.15
W=0.84
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
C {sky130_fd_pr/pfet_01v8.sym} 2550 -1110 0 0 {name=M5
L=0.15
W=0.84
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
C {sky130_fd_pr/nfet_01v8.sym} 2550 -990 0 0 {name=M6
L=0.15
W=0.84
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
C {sky130_fd_pr/nfet_01v8.sym} 2660 -990 0 0 {name=M7
L=0.15
W=0.84
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
C {sky130_fd_pr/nfet_01v8.sym} 2760 -990 0 0 {name=M8
L=0.15
W=0.84
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
C {sky130_fd_pr/pfet_01v8.sym} 2650 -1110 0 0 {name=M9
L=0.15
W=0.84
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
C {sky130_fd_pr/pfet_01v8.sym} 2760 -1110 0 0 {name=M10
L=0.15
W=0.84
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
