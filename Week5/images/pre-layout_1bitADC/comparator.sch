v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -500 250 -500 290 {
lab=#net1}
N -500 290 -370 290 {
lab=#net1}
N -370 290 -250 290 {
lab=#net1}
N -250 250 -250 290 {
lab=#net1}
N -500 130 -500 190 {
lab=#net2}
N -250 130 -250 190 {
lab=#net3}
N -500 50 -500 70 {
lab=Vdd}
N -500 50 -250 50 {
lab=Vdd}
N -250 50 -250 70 {
lab=Vdd}
N -370 290 -370 300 {
lab=#net1}
N -370 360 -370 370 {
lab=Vss}
N -370 330 -360 330 {
lab=Vss}
N -360 330 -360 360 {
lab=Vss}
N -370 360 -360 360 {
lab=Vss}
N -500 220 -460 220 {
lab=Vss}
N -460 220 -450 220 {
lab=Vss}
N -250 100 -230 100 {
lab=Vdd}
N -230 70 -230 100 {
lab=Vdd}
N -250 70 -230 70 {
lab=Vdd}
N -10 160 -10 250 {
lab=out}
N -70 130 -50 130 {
lab=#net3}
N -70 130 -70 280 {
lab=#net3}
N -70 280 -50 280 {
lab=#net3}
N -10 200 90 200 {
lab=out}
N -10 310 -10 340 {
lab=Vss}
N -370 370 -370 390 {
lab=Vss}
N -10 50 -10 100 {
lab=Vdd}
N -250 50 -10 50 {
lab=Vdd}
N -530 100 -500 100 {
lab=Vdd}
N -530 70 -530 100 {
lab=Vdd}
N -530 70 -500 70 {
lab=Vdd}
N -500 140 -460 140 {
lab=#net2}
N -460 100 -460 140 {
lab=#net2}
N -460 100 -290 100 {
lab=#net2}
N -310 220 -250 220 {
lab=Vss}
N -10 130 10 130 {
lab=Vdd}
N -10 280 10 280 {
lab=Vss}
N 10 280 10 310 {
lab=Vss}
N -10 310 10 310 {
lab=Vss}
N 10 100 10 130 {
lab=Vdd}
N -10 100 10 100 {
lab=Vdd}
N -610 220 -540 220 {
lab=Vin}
N -210 220 -140 220 {
lab=Vref}
N -370 390 -370 410 {
lab=Vss}
N -10 340 -10 410 {
lab=Vss}
N -450 330 -410 330 {
lab=Vbias}
N -250 170 -70 170 {
lab=#net3}
N -10 50 90 50 {
lab=Vdd}
N -370 410 110 410 {
lab=Vss}
C {devices/iopin.sym} 90 50 0 0 {name=p1 lab=Vdd}
C {devices/iopin.sym} 110 410 0 0 {name=p2 lab=Vss}
C {devices/opin.sym} 90 200 0 0 {name=p3 lab=out}
C {devices/ipin.sym} -610 220 0 0 {name=p4 lab=Vin}
C {devices/ipin.sym} -140 220 2 0 {name=p5 lab=Vref}
C {sky130_fd_pr/nfet_01v8.sym} -390 330 0 0 {name=M1
L=0.15
W=0.8
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
C {sky130_fd_pr/nfet_01v8.sym} -520 220 0 0 {name=M2
L=0.15
W=0.8
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
C {sky130_fd_pr/nfet_01v8.sym} -230 220 0 1 {name=M3
L=0.15
W=0.8
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
C {sky130_fd_pr/pfet_01v8.sym} -270 100 0 0 {name=M4
L=0.15
W=0.8
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
C {sky130_fd_pr/pfet_01v8.sym} -480 100 0 1 {name=M5
L=0.15
W=0.8
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
C {sky130_fd_pr/pfet_01v8.sym} -30 130 0 0 {name=M6
L=0.15
W=0.8
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
C {sky130_fd_pr/nfet_01v8.sym} -30 280 0 0 {name=M9
L=0.15
W=0.8
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
C {devices/lab_pin.sym} -450 220 2 0 {name=p6 sig_type=std_logic lab=Vss
}
C {devices/lab_pin.sym} -310 220 0 0 {name=p7 sig_type=std_logic lab=Vss
}
C {devices/iopin.sym} -450 330 2 0 {name=p8 lab=Vbias}
