v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1350 -1330 1350 -1300 {
lab=#net1}
N 1280 -1360 1310 -1360 {
lab=out}
N 1280 -1360 1280 -1270 {
lab=out}
N 1280 -1270 1310 -1270 {
lab=out}
N 1530 -1330 1530 -1300 {
lab=#net2}
N 1460 -1360 1490 -1360 {
lab=#net1}
N 1460 -1360 1460 -1270 {
lab=#net1}
N 1460 -1270 1490 -1270 {
lab=#net1}
N 1730 -1330 1730 -1300 {
lab=out}
N 1660 -1360 1690 -1360 {
lab=#net2}
N 1660 -1360 1660 -1270 {
lab=#net2}
N 1660 -1270 1690 -1270 {
lab=#net2}
N 1350 -1410 1350 -1390 {
lab=VDD}
N 1350 -1410 1530 -1410 {
lab=VDD}
N 1530 -1410 1530 -1390 {
lab=VDD}
N 1530 -1410 1730 -1410 {
lab=VDD}
N 1730 -1410 1730 -1390 {
lab=VDD}
N 1730 -1360 1750 -1360 {
lab=VDD}
N 1750 -1390 1750 -1360 {
lab=VDD}
N 1730 -1390 1750 -1390 {
lab=VDD}
N 1730 -1270 1750 -1270 {
lab=gnd}
N 1750 -1270 1750 -1240 {
lab=gnd}
N 1730 -1240 1750 -1240 {
lab=gnd}
N 1530 -1270 1550 -1270 {
lab=gnd}
N 1550 -1270 1550 -1240 {
lab=gnd}
N 1530 -1240 1550 -1240 {
lab=gnd}
N 1350 -1270 1370 -1270 {
lab=gnd}
N 1370 -1270 1370 -1240 {
lab=gnd}
N 1350 -1240 1370 -1240 {
lab=gnd}
N 1350 -1240 1350 -1220 {
lab=gnd}
N 1350 -1220 1530 -1220 {
lab=gnd}
N 1530 -1240 1530 -1220 {
lab=gnd}
N 1530 -1220 1730 -1220 {
lab=gnd}
N 1730 -1240 1730 -1220 {
lab=gnd}
N 1350 -1310 1460 -1310 {
lab=#net1}
N 1530 -1310 1660 -1310 {
lab=#net2}
N 1730 -1310 1830 -1310 {
lab=out}
N 1810 -1310 1810 -1190 {
lab=out}
N 1250 -1190 1810 -1190 {
lab=out}
N 1250 -1310 1250 -1190 {
lab=out}
N 1250 -1310 1280 -1310 {
lab=out}
N 1530 -1220 1530 -1200 {
lab=gnd}
N 1530 -1440 1530 -1410 {
lab=VDD}
N 1530 -1360 1550 -1360 {
lab=VDD}
N 1550 -1390 1550 -1360 {
lab=VDD}
N 1530 -1390 1550 -1390 {
lab=VDD}
N 1350 -1360 1370 -1360 {
lab=VDD}
N 1370 -1390 1370 -1360 {
lab=VDD}
N 1350 -1390 1370 -1390 {
lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 1330 -1270 0 0 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 1330 -1360 0 0 {name=M2
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 1510 -1270 0 0 {name=M3
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 1510 -1360 0 0 {name=M4
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 1710 -1270 0 0 {name=M5
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 1710 -1360 0 0 {name=M6
L=0.15
W=1
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
C {devices/iopin.sym} 1530 -1200 0 0 {name=p1 lab=gnd}
C {devices/iopin.sym} 1530 -1440 0 0 {name=p2 lab=VDD}
C {devices/opin.sym} 1830 -1310 0 0 {name=p3 lab=out}
