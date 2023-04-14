v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1360 -1370 1360 -1330 {
lab=Vref1}
N 1360 -1270 1360 -1220 {
lab=Vref2}
N 1360 -1160 1360 -1110 {
lab=Vref3}
N 1360 -1050 1360 -1030 {
lab=GND}
N 1360 -1440 1360 -1430 {
lab=VCC}
N 1340 -1440 1360 -1440 {
lab=VCC}
N 1360 -1350 1460 -1350 {
lab=Vref1}
N 1360 -1250 1460 -1250 {
lab=Vref2}
N 1370 -1130 1450 -1130 {
lab=Vref3}
N 1360 -1130 1370 -1130 {
lab=Vref3}
N 1450 -1130 1460 -1130 {
lab=Vref3}
C {devices/iopin.sym} 1360 -1030 0 0 {name=p1 lab=GND}
C {devices/opin.sym} 1460 -1350 0 0 {name=p2 lab=Vref1}
C {devices/opin.sym} 1460 -1250 0 0 {name=p3 lab=Vref2}
C {devices/opin.sym} 1460 -1130 0 0 {name=p4 lab=Vref3
}
C {sky130_fd_pr/res_generic_l1.sym} 1360 -1400 0 0 {name=R1
W=1
L=1
model=res_generic_l1
mult=1}
C {sky130_fd_pr/res_generic_l1.sym} 1360 -1300 0 0 {name=R2
W=1
L=1
model=res_generic_l1
mult=1}
C {sky130_fd_pr/res_generic_l1.sym} 1360 -1080 0 0 {name=R3
W=1
L=1
model=res_generic_l1
mult=1}
C {sky130_fd_pr/res_generic_l1.sym} 1360 -1190 0 0 {name=R4
W=1
L=1
model=res_generic_l1
mult=1}
C {devices/iopin.sym} 1340 -1440 2 0 {name=p5 lab=VCC}
