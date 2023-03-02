v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -50 160 -50 {
lab=Y}
N 140 -30 170 -30 {
lab=GND}
N 170 -30 170 -20 {
lab=GND}
N 240 -10 240 10 {
lab=GND}
N -430 230 -430 250 {
lab=GND}
N -380 300 -380 320 {
lab=GND}
N -380 160 -380 170 {
lab=GND}
N -430 100 -430 120 {
lab=GND}
N -380 40 -380 60 {
lab=GND}
N -430 -20 -430 -0 {
lab=GND}
N -430 -100 -430 -80 {
lab=A}
N -180 -70 -160 -70 {
lab=A}
N -380 -20 -350 -20 {
lab=B}
N -450 40 -430 40 {
lab=C}
N -380 100 -360 100 {
lab=D}
N -450 170 -430 170 {
lab=E}
N -380 240 -360 240 {
lab=F}
N -180 40 -160 40 {
lab=F}
N -160 30 -160 40 {
lab=F}
N -180 10 -160 10 {
lab=E}
N -180 -10 -160 -10 {
lab=D}
N -180 -30 -160 -30 {
lab=C}
N -170 -50 -160 -50 {
lab=B}
C {Fn_prelayout.sym} -10 -20 0 0 {name=x1}
C {devices/vsource.sym} 240 -40 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} -430 -50 0 0 {name=V2 value="pulse(0 1.8 0.1n 1n 1n 4n 10n)"}
C {devices/vsource.sym} -380 10 0 0 {name=V3 value="pulse(0 1.8 0.2n 1n 1n 4n 10n)"}
C {devices/vsource.sym} -430 70 0 0 {name=V4 value="pulse(0 1.8 0.3n 1n 1n 4n 10n)"}
C {devices/vsource.sym} -380 130 0 0 {name=V5 value="pulse(0 1.8 0.4n 1n 1n 4n 10n)"}
C {devices/vsource.sym} -430 200 0 0 {name=V6 value="pulse(0 1.8 0.5n 1n 1n 4n 10n)"}
C {devices/vsource.sym} -380 270 0 0 {name=V7 value="pulse(0 1.8 0.5n 1n 1n 4n 10n)"}
C {devices/gnd.sym} 170 -20 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 240 -70 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 140 -70 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 160 -50 0 0 {name=p15 lab=Y}
C {devices/gnd.sym} 240 10 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -430 0 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -380 60 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -430 120 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -380 170 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -430 250 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -380 320 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} -50 140 0 0 {name=spice only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.01n 20n
.save all"
}
C {devices/ipin.sym} -430 -100 0 0 {name=p3 lab=A}
C {devices/ipin.sym} -180 -70 0 0 {name=p4 lab=A}
C {devices/ipin.sym} -350 -20 2 0 {name=p5 lab=B}
C {devices/ipin.sym} -450 40 0 0 {name=p6 lab=C}
C {devices/ipin.sym} -360 100 2 0 {name=p7 lab=D}
C {devices/ipin.sym} -450 170 0 0 {name=p8 lab=E}
C {devices/ipin.sym} -360 240 2 0 {name=p9 lab=F}
C {devices/ipin.sym} -170 -50 0 0 {name=p10 lab=B}
C {devices/ipin.sym} -180 -30 0 0 {name=p11 lab=C}
C {devices/ipin.sym} -180 -10 0 0 {name=p12 lab=D}
C {devices/ipin.sym} -180 10 0 0 {name=p13 lab=E}
C {devices/ipin.sym} -180 40 0 0 {name=p14 lab=F}
