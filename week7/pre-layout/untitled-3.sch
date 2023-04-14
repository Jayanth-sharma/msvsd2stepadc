v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -180 -120 -140 -120 {
lab=X1_INP2}
N -180 -30 -140 -30 {
lab=X2_INP1}
N -140 -220 -140 -190 {
lab=X1_INP1}
N -140 -190 -120 -190 {
lab=X1_INP1}
N -140 -150 -120 -150 {
lab=X1_INP2}
N -140 -150 -140 -120 {
lab=X1_INP2}
N -140 -30 -140 -10 {
lab=X2_INP1}
N -140 -10 -120 -10 {
lab=X2_INP1}
N -130 30 -120 30 {
lab=X2_INP2}
N -130 30 -130 50 {
lab=X2_INP2}
N -150 10 -120 10 {
lab=D0}
N -150 -170 -150 10 {
lab=D0}
N -150 -170 -120 -170 {
lab=D0}
N -150 -90 -100 -90 {
lab=D0}
N 580 -120 620 -120 {
lab=VDD}
N 580 -100 620 -100 {
lab=out_v}
N 580 -80 620 -80 {
lab=GND}
N 250 -120 280 -120 {
lab=#net1}
N 250 -80 280 -80 {
lab=#net2}
N 190 -100 280 -100 {
lab=D1}
N 180 -190 210 -190 {
lab=VDD}
N 180 -170 210 -170 {
lab=#net1}
N 180 -150 210 -150 {
lab=GND}
N 180 -10 210 -10 {
lab=VDD}
N 180 10 210 10 {
lab=#net2}
N 180 30 210 30 {
lab=GND}
N 210 30 270 30 {
lab=GND}
N 210 10 250 10 {
lab=#net2}
N 250 -80 250 10 {
lab=#net2}
N -230 -220 -140 -220 {
lab=X1_INP1}
N -230 -120 -180 -120 {
lab=X1_INP2}
N -230 -30 -180 -30 {
lab=X2_INP1}
N -230 50 -130 50 {
lab=X2_INP2}
N 210 -170 240 -170 {
lab=#net1}
N 240 -170 240 -120 {
lab=#net1}
N 240 -120 250 -120 {
lab=#net1}
C {switch.sym} 30 10 0 0 {name=x1}
C {switch.sym} 30 -170 0 0 {name=x2}
C {switch.sym} 430 -100 0 0 {name=x3}
C {devices/gnd.sym} 210 -150 0 0 {name=l6 lab=GND}
C {devices/opin.sym} 620 -100 0 0 {name=p12 lab="out_v"}
C {devices/gnd.sym} 270 30 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 620 -80 0 0 {name=l1 lab=GND}
C {devices/iopin.sym} 210 -190 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 210 -10 0 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 620 -120 0 0 {name=p3 lab=VDD}
C {devices/ipin.sym} -230 -220 0 0 {name=p4 lab=X1_INP1}
C {devices/ipin.sym} -230 -120 0 0 {name=p5 lab=X1_INP2}
C {devices/ipin.sym} -230 -30 0 0 {name=p6 lab=X2_INP1}
C {devices/ipin.sym} -230 50 0 0 {name=p7 lab=X2_INP2}
C {devices/ipin.sym} -100 -90 2 0 {name=p8 lab=D0}
C {devices/ipin.sym} 190 -100 0 0 {name=p9 lab=D1}
