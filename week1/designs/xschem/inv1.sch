v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -790 60 -790 {
lab=Vin}
N 40 -790 40 -680 {
lab=Vin}
N 40 -680 60 -680 {
lab=Vin}
N 100 -760 100 -710 {
lab=Vout}
N 100 -830 100 -820 {
lab=Vdd}
N 100 -650 100 -630 {
lab=xxx}
N 100 -740 140 -740 {
lab=Vout}
N -10 -740 40 -740 {
lab=Vin}
N 100 -820 110 -820 {}
N 110 -820 110 -790 {}
N 100 -790 110 -790 {}
N 100 -680 120 -680 {}
N 120 -680 120 -650 {}
N 100 -650 120 -650 {}
C {sky130_fd_pr/nfet_01v8.sym} 80 -680 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 80 -790 0 0 {name=M2
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
C {devices/ipin.sym} -10 -740 0 0 {name=p1 lab=Vin}
C {devices/opin.sym} 140 -740 0 0 {name=p2 lab=Vout
}
C {devices/iopin.sym} 100 -830 0 0 {name=p3 lab=Vdd}
C {devices/iopin.sym} 100 -630 0 0 {name=p4 lab=Vss}
