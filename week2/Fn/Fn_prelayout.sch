v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1300 -1220 1300 -1210 {
lab=VDD}
N 1300 -1220 1510 -1220 {
lab=VDD}
N 1510 -1220 1510 -1210 {
lab=VDD}
N 1300 -1150 1300 -1100 {
lab=#net1}
N 1300 -1040 1300 -990 {
lab=#net2}
N 1510 -1040 1510 -980 {
lab=#net2}
N 1510 -1150 1510 -1100 {
lab=#net3}
N 1300 -1180 1320 -1180 {
lab=VDD}
N 1320 -1210 1320 -1180 {
lab=VDD}
N 1300 -1210 1320 -1210 {
lab=VDD}
N 1510 -1210 1530 -1210 {
lab=VDD}
N 1530 -1210 1530 -1180 {
lab=VDD}
N 1510 -1180 1530 -1180 {
lab=VDD}
N 1300 -1010 1510 -1010 {
lab=#net2}
N 1300 -930 1300 -900 {
lab=out}
N 1300 -900 1510 -900 {
lab=out}
N 1510 -920 1510 -900 {
lab=out}
N 1450 -1070 1470 -1070 {
lab=D}
N 1450 -1180 1470 -1180 {
lab=B}
N 1240 -1180 1260 -1180 {
lab=A}
N 1230 -1070 1260 -1070 {
lab=C}
N 1220 -960 1260 -960 {
lab=E}
N 1450 -950 1470 -950 {
lab=F}
N 1410 -900 1410 -810 {
lab=out}
N 1200 -810 1200 -790 {
lab=out}
N 1200 -810 1410 -810 {
lab=out}
N 1410 -810 1410 -790 {
lab=out}
N 1410 -730 1410 -680 {
lab=#net4}
N 1200 -730 1200 -680 {
lab=#net4}
N 1200 -620 1200 -590 {
lab=VSS}
N 1200 -590 1410 -590 {
lab=VSS}
N 1410 -620 1410 -590 {
lab=VSS}
N 1410 -590 1590 -590 {
lab=VSS}
N 1590 -630 1590 -590 {
lab=VSS}
N 1590 -730 1590 -690 {
lab=#net5}
N 1590 -810 1590 -790 {
lab=out}
N 1410 -810 1590 -810 {
lab=out}
N 1410 -860 1590 -860 {
lab=out}
N 1400 -1260 1400 -1220 {
lab=VDD}
N 1410 -590 1410 -540 {
lab=VSS}
N 1200 -650 1220 -650 {
lab=VSS}
N 1220 -650 1220 -620 {
lab=VSS}
N 1200 -620 1220 -620 {
lab=VSS}
N 1410 -650 1430 -650 {
lab=VSS}
N 1430 -650 1430 -620 {
lab=VSS}
N 1410 -620 1430 -620 {
lab=VSS}
N 1590 -660 1620 -660 {
lab=VSS}
N 1620 -660 1620 -630 {
lab=VSS}
N 1590 -630 1620 -630 {
lab=VSS}
N 1200 -710 1410 -710 {
lab=#net4}
N 1200 -760 1230 -760 {
lab=#net4}
N 1230 -760 1230 -730 {
lab=#net4}
N 1200 -730 1230 -730 {
lab=#net4}
N 1410 -760 1430 -760 {
lab=#net4}
N 1430 -760 1430 -730 {
lab=#net4}
N 1410 -730 1430 -730 {
lab=#net4}
N 1590 -760 1610 -760 {
lab=#net5}
N 1610 -760 1610 -730 {
lab=#net5}
N 1590 -730 1610 -730 {
lab=#net5}
N 1300 -1070 1330 -1070 {
lab=#net1}
N 1330 -1100 1330 -1070 {
lab=#net1}
N 1300 -1100 1330 -1100 {
lab=#net1}
N 1300 -960 1320 -960 {
lab=#net2}
N 1320 -990 1320 -960 {
lab=#net2}
N 1300 -990 1320 -990 {
lab=#net2}
N 1510 -950 1520 -950 {
lab=#net2}
N 1520 -980 1520 -950 {
lab=#net2}
N 1510 -980 1520 -980 {
lab=#net2}
N 1510 -1070 1520 -1070 {
lab=#net3}
N 1520 -1100 1520 -1070 {
lab=#net3}
N 1510 -1100 1520 -1100 {
lab=#net3}
C {sky130_fd_pr/pfet_01v8.sym} 1280 -1180 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 1490 -1180 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 1280 -1070 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 1490 -1070 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 1280 -960 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 1490 -950 0 0 {name=M6
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
C {devices/ipin.sym} 1240 -1180 0 0 {name=p1 lab=A}
C {devices/ipin.sym} 1450 -1180 0 0 {name=p2 lab=B}
C {devices/ipin.sym} 1230 -1070 0 0 {name=p3 lab=C}
C {devices/ipin.sym} 1450 -1070 0 0 {name=p4 lab=D}
C {devices/ipin.sym} 1220 -960 0 0 {name=p5 lab=E}
C {devices/ipin.sym} 1450 -950 0 0 {name=p6 lab=F}
C {sky130_fd_pr/nfet_01v8.sym} 1180 -760 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 1390 -760 0 0 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} 1180 -650 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 1390 -650 0 0 {name=M10
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
C {sky130_fd_pr/nfet_01v8.sym} 1570 -760 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 1570 -660 0 0 {name=M12
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
C {devices/opin.sym} 1590 -860 0 0 {name=p7 lab=out
}
C {devices/iopin.sym} 1400 -1260 0 0 {name=p8 lab=VDD
}
C {devices/iopin.sym} 1410 -540 0 0 {name=p9 lab=VSS

}
C {devices/lab_pin.sym} 1160 -760 0 0 {name=p10 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 1370 -760 0 0 {name=p11 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} 1160 -650 0 0 {name=p12 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 1370 -650 0 0 {name=p13 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 1550 -760 0 0 {name=p14 sig_type=std_logic lab=E}
C {devices/lab_pin.sym} 1550 -660 0 0 {name=p15 sig_type=std_logic lab=F}
