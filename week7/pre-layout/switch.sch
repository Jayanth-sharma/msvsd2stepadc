v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1600 -1190 1600 -1170 {
lab=VDD}
N 1460 -1190 1600 -1190 {
lab=VDD}
N 1460 -1190 1460 -1170 {
lab=VDD}
N 1460 -1110 1460 -1090 {
lab=#net1}
N 1600 -1110 1600 -1090 {
lab=#net2}
N 1600 -1030 1600 -1010 {
lab=gnda}
N 1480 -1010 1600 -1010 {
lab=gnda}
N 1460 -1030 1460 -1010 {
lab=gnda}
N 1460 -1010 1480 -1010 {
lab=gnda}
N 1460 -1060 1480 -1060 {
lab=gnda}
N 1480 -1060 1480 -1030 {
lab=gnda}
N 1460 -1030 1480 -1030 {
lab=gnda}
N 1600 -1060 1620 -1060 {
lab=gnda}
N 1620 -1060 1620 -1030 {
lab=gnda}
N 1600 -1030 1620 -1030 {
lab=gnda}
N 1600 -1170 1620 -1170 {
lab=VDD}
N 1620 -1170 1620 -1140 {
lab=VDD}
N 1600 -1140 1620 -1140 {
lab=VDD}
N 1460 -1170 1490 -1170 {
lab=VDD}
N 1490 -1170 1490 -1140 {
lab=VDD}
N 1460 -1140 1490 -1140 {
lab=VDD}
N 1400 -1140 1420 -1140 {
lab=din}
N 1400 -1140 1400 -1060 {
lab=din}
N 1400 -1060 1420 -1060 {
lab=din}
N 1360 -1100 1400 -1100 {
lab=din}
N 1540 -1140 1560 -1140 {
lab=#net1}
N 1540 -1140 1540 -1060 {
lab=#net1}
N 1540 -1060 1560 -1060 {
lab=#net1}
N 1460 -1100 1540 -1100 {
lab=#net1}
N 1690 -1140 1700 -1140 {
lab=#net2}
N 1690 -1140 1690 -1060 {
lab=#net2}
N 1690 -1060 1700 -1060 {
lab=#net2}
N 1600 -1100 1690 -1100 {
lab=#net2}
N 1740 -1190 1740 -1170 {
lab=inp1}
N 1740 -1190 1870 -1190 {
lab=inp1}
N 1540 -1200 1540 -1190 {
lab=VDD}
N 1540 -1010 1540 -1000 {
lab=gnda}
N 1740 -1110 1740 -1090 {
lab=vout}
N 1740 -1030 1740 -1020 {
lab=inp2}
N 1740 -1140 1760 -1140 {
lab=GND}
N 1760 -1140 1770 -1140 {
lab=GND}
N 1870 -1190 1970 -1190 {
lab=inp1}
N 1970 -1190 1970 -1170 {
lab=inp1}
N 1740 -1020 1740 -1010 {
lab=inp2}
N 1740 -1010 1970 -1010 {
lab=inp2}
N 1970 -1030 1970 -1010 {
lab=inp2}
N 1850 -1010 1850 -990 {
lab=inp2}
N 1970 -1110 1970 -1090 {
lab=vout}
N 2010 -1140 2040 -1140 {
lab=#net1}
N 2040 -1140 2040 -1060 {
lab=#net1}
N 2010 -1060 2040 -1060 {
lab=#net1}
N 1740 -1100 1970 -1100 {
lab=vout}
N 1840 -1100 1840 -1090 {
lab=vout}
N 1860 -1210 1860 -1190 {
lab=inp1}
N 1510 -1100 1510 -960 {
lab=#net1}
N 1510 -960 2080 -960 {
lab=#net1}
N 2080 -1110 2080 -960 {
lab=#net1}
N 2040 -1110 2080 -1110 {
lab=#net1}
N 1940 -1140 1980 -1140 {
lab=VDD}
N 1740 -1060 1790 -1060 {
lab=VDD}
N 1890 -1060 1970 -1060 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 1440 -1060 0 0 {name=M1
L=0.15
W=0.6
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
C {sky130_fd_pr/pfet_01v8.sym} 1440 -1140 0 0 {name=M2
L=0.15
W=1.2
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
C {sky130_fd_pr/pfet_01v8.sym} 1580 -1140 0 0 {name=M3
L=0.15
W=1.2
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
C {sky130_fd_pr/nfet_01v8.sym} 1580 -1060 0 0 {name=M4
L=0.15
W=0.6
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
C {devices/ipin.sym} 1360 -1100 0 0 {name=p1 lab=din}
C {devices/iopin.sym} 1540 -1200 0 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 1860 -1210 0 0 {name=p4 lab=inp1}
C {devices/ipin.sym} 1850 -990 0 0 {name=p5 lab=inp2}
C {devices/iopin.sym} 1540 -1000 0 0 {name=p3 lab=gnda}
C {sky130_fd_pr/pfet_01v8.sym} 1720 -1060 0 0 {name=M5
L=0.15
W=1.2
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
C {devices/opin.sym} 1840 -1090 1 0 {name=p8 lab=vout}
C {sky130_fd_pr/nfet_01v8.sym} 1720 -1140 0 0 {name=M6
L=0.15
W=0.6
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
C {devices/gnd.sym} 1770 -1140 3 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 1990 -1060 0 1 {name=M7
L=0.15
W=0.6
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
C {sky130_fd_pr/pfet_01v8.sym} 1990 -1140 0 1 {name=M8
L=0.15
W=1.2
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
C {devices/lab_pin.sym} 1940 -1140 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1790 -1060 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 1890 -1060 1 0 {name=l2 lab=GND}
