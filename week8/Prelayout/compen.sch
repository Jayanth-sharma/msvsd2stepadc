v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -440 60 -410 60 {lab=GND}
N -270 60 -240 60 {lab=GND}
N -400 -100 -280 -100 {lab=#net1}
N -400 -100 -400 -60 {lab=#net1}
N -440 -60 -440 30 {lab=#net1}
N -240 90 -240 110 {lab=#net2}
N -340 110 -240 110 {lab=#net2}
N -440 90 -440 110 {lab=#net2}
N -250 200 -220 200 {lab=GND}
N -440 110 -340 110 {lab=#net2}
N -440 -70 -440 -60 { lab=#net1}
N 640 0 640 200 { lab=VOUT1}
N 870 40 870 140 { lab=VOUT2}
N 790 10 830 10 { lab=VOUT1}
N 790 10 790 170 { lab=VOUT1}
N 790 170 830 170 { lab=VOUT1}
N 870 -180 870 -20 { lab=VCC}
N 640 -180 640 -60 { lab=VCC}
N 640 260 640 320 { lab=GND}
N 320 240 320 320 { lab=GND}
N 60 240 60 320 { lab=GND}
N 640 -30 690 -30 { lab=VCC}
N 0 210 60 210 { lab=GND}
N 870 170 920 170 { lab=GND}
N 870 10 920 10 { lab=VCC}
N 640 230 690 230 { lab=GND}
N 320 210 370 210 { lab=GND}
N 180 50 230 50 { lab=GND}
N 330 50 380 50 { lab=GND}
N -240 -70 -240 30 { lab=#net3}
N 130 50 140 50 { lab=VOUT2}
N 180 80 180 120 { lab=#net4}
N 380 80 380 120 { lab=#net4}
N 320 120 320 180 { lab=#net4}
N 100 210 280 210 { lab=Iref}
N 60 140 140 140 { lab=Iref}
N 140 140 140 210 { lab=Iref}
N -250 230 -250 320 { lab=GND}
N 560 230 600 230 { lab=VCC}
N 560 -180 560 230 { lab=VCC}
N -240 -100 -200 -100 { lab=VCC}
N -490 -100 -440 -100 { lab=VCC}
N 640 100 710 100 { lab=VOUT1}
N 380 -30 380 20 { lab=#net3}
N 180 0 180 20 { lab=#net1}
N -440 0 180 0 { lab=#net1}
N -440 -60 -400 -60 { lab=#net1}
N -240 -180 -240 -130 { lab=VCC}
N -440 -180 -440 -130 { lab=VCC}
N -250 110 -250 170 { lab=#net2}
N 60 130 60 180 { lab=Iref}
N 1100 40 1100 140 { lab=Vout}
N 1020 10 1060 10 { lab=VOUT2}
N 1020 170 1060 170 { lab=VOUT2}
N 1100 -180 1100 -20 { lab=VCC}
N 1100 170 1150 170 { lab=GND}
N 1100 10 1150 10 { lab=VCC}
N 1020 10 1020 170 { lab=VOUT2}
N 420 50 640 50 { lab=VOUT1}
N 180 120 380 120 { lab=#net4}
N -240 -30 350 -30 { lab=#net3}
N -250 320 640 320 { lab=GND}
N 710 100 790 100 { lab=VOUT1}
N 350 -30 600 -30 { lab=#net3}
N 870 200 870 220 { lab=#net5}
N 870 280 870 320 { lab=GND}
N 1100 200 1100 320 { lab=GND}
N 760 -90 810 -90 { lab=VCC}
N 760 -180 760 -120 { lab=VCC}
N 760 -60 760 60 { lab=VOUT2}
N 760 60 870 60 { lab=VOUT2}
N 870 100 1020 100 { lab=VOUT2}
N 640 320 1280 320 { lab=GND}
N -110 -180 1100 -180 { lab=VCC}
N -440 -180 -110 -180 { lab=VCC}
N 710 -90 720 -90 {
lab=EN}
N -510 60 -480 60 {
lab=INN}
N -200 60 -170 60 {
lab=INP}
N -200 -210 -200 -180 {
lab=VCC}
N 1100 100 1170 100 {
lab=Vout}
N 1170 100 1180 100 {
lab=Vout}
C {devices/lab_pin.sym} -410 60 0 1 {name=p187 lab=GND}
C {devices/lab_pin.sym} -270 60 0 0 {name=p188 lab=GND}
C {devices/lab_pin.sym} -220 200 0 1 {name=p191 lab=GND}
C {devices/lab_pin.sym} 920 10 0 1 {name=p1 lab=VCC}
C {devices/lab_pin.sym} 690 -30 0 1 {name=p2 lab=VCC}
C {devices/lab_pin.sym} 0 210 0 0 {name=p3 lab=GND}
C {devices/lab_pin.sym} 920 170 0 1 {name=p4 lab=GND}
C {devices/lab_pin.sym} 370 210 0 1 {name=p5 lab=GND}
C {devices/lab_pin.sym} 690 230 0 1 {name=p6 lab=GND}
C {devices/lab_pin.sym} 230 50 0 1 {name=p7 lab=GND}
C {devices/lab_pin.sym} 330 50 0 0 {name=p8 lab=GND}
C {devices/lab_pin.sym} 930 100 3 1 {name=p10 lab=VOUT2}
C {devices/lab_pin.sym} 130 50 0 0 {name=p11 lab=VOUT2}
C {devices/lab_pin.sym} 710 100 1 0 {name=p13 lab=VOUT1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -260 -100 0 0 {name=M2
L=1
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -200 -100 0 1 {name=p18 lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -420 -100 0 1 {name=M1
L=1
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -490 -100 0 0 {name=p19 lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 850 10 0 0 {name=M12
L=0.5
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 620 -30 0 0 {name=M10
L=0.5
W=6
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1150 10 0 1 {name=p28 lab=VCC}
C {devices/lab_pin.sym} 1150 170 0 1 {name=p29 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1080 10 0 0 {name=M16
L=0.5
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 870 250 0 1 {name=p34 lab=GND}
C {devices/lab_pin.sym} 830 250 0 0 {name=p35 lab=EN}
C {devices/lab_pin.sym} -290 200 0 0 {name=p36 lab=VCC}
C {devices/lab_pin.sym} 810 -90 0 1 {name=p40 lab=VCC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 740 -90 0 0 {name=M22
L=0.5
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1080 170 0 0 {name=M20
L=0.5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 850 250 0 0 {name=M17
L=0.5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 850 170 0 0 {name=M13
L=0.5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 620 230 0 0 {name=M11
L=0.5
W=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 300 210 0 0 {name=M7
L=0.5
W=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 80 210 0 1 {name=M18
L=0.5
W=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 160 50 0 0 {name=M6
L=0.5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 400 50 0 1 {name=M8
L=0.5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -270 200 0 0 {name=M5
L=1
W=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -460 60 0 0 {name=M3
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -220 60 0 1 {name=M4
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/ipin.sym} -510 60 0 0 {name=p12 lab=INN}
C {devices/ipin.sym} -170 60 2 0 {name=p20 lab=INP}
C {devices/ipin.sym} 710 -90 0 0 {name=p21 lab=EN}
C {devices/iopin.sym} -200 -210 0 0 {name=p26 lab=VCC}
C {devices/iopin.sym} 1280 320 0 0 {name=p9 lab=GND}
C {devices/opin.sym} 1180 100 0 0 {name=p14 lab=Vout}
C {devices/ipin.sym} 60 130 0 0 {name=p15 lab=Iref}
