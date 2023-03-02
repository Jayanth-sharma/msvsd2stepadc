v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -1250 180 -1220 {
lab=Vout}
N 110 -1280 140 -1280 {
lab=Vin}
N 110 -1280 110 -1190 {
lab=Vin}
N 110 -1190 140 -1190 {
lab=Vin}
N 180 -1190 200 -1190 {
lab=Vss!}
N 200 -1190 200 -1160 {
lab=Vss!}
N 180 -1160 200 -1160 {
lab=Vss!}
N 180 -1160 180 -1130 {
lab=Vss!}
N 180 -1340 180 -1310 {
lab=Vdd!}
N 180 -1280 200 -1280 {
lab=Vdd!}
N 200 -1310 200 -1280 {
lab=Vdd!}
N 180 -1310 200 -1310 {
lab=Vdd!}
N 80 -1240 110 -1240 {
lab=Vin}
N 180 -1240 210 -1240 {
lab=Vout}
C {sky130_fd_pr/pfet_01v8.sym} 160 -1280 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 160 -1190 0 0 {name=M2
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
C {devices/ipin.sym} 80 -1240 0 0 {name=p1 lab=Vin
}
C {devices/opin.sym} 210 -1240 0 0 {name=p2 lab=Vout
}
C {devices/iopin.sym} 180 -1340 0 0 {name=p3 lab=Vdd!
}
C {devices/iopin.sym} 180 -1130 0 0 {name=p4 lab=Vss!}
