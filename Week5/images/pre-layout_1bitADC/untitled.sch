v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 3780 -570 3780 -540 {
lab=GND}
N 3780 -640 3780 -630 {
lab=Vdd}
N 3780 -650 3780 -640 {
lab=Vdd}
N 3260 -580 3260 -560 {
lab=GND}
N 3310 -520 3310 -500 {
lab=GND}
N 3310 -580 3320 -580 {
lab=Vref}
N 3260 -640 3270 -640 {
lab=Vin}
N 3690 -600 3710 -600 {
lab=GND}
N 3710 -600 3710 -580 {
lab=GND}
N 3690 -640 3710 -640 {
lab=Vdd}
N 3370 -640 3390 -640 {
lab=Vin}
N 3370 -620 3390 -620 {
lab=Vref}
N 3690 -620 3710 -620 {
lab=Vout}
C {comparator.sym} 3540 -620 0 0 {name=x1}
C {devices/vsource.sym} 3780 -600 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} 3260 -610 0 0 {name=V2 value="sine(0.9 0.9 50Meg)"}
C {devices/vsource.sym} 3310 -550 0 0 {name=V3 value=0.9
}
C {devices/gnd.sym} 3260 -560 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 3310 -500 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 3780 -540 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 3710 -580 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 3780 -650 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 3710 -640 2 0 {name=p2 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 3270 -640 2 0 {name=p4 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 3320 -580 2 0 {name=p5 sig_type=std_logic lab=Vref}
C {devices/lab_pin.sym} 3370 -640 0 0 {name=p6 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 3370 -620 0 0 {name=p7 sig_type=std_logic lab=Vref}
C {devices/code_shown.sym} 3480 -540 0 0 {name=spice only_toplevel=false value="
.tran 10p 20n
.measure tran tdelay
+TRIG v(Vin) td=0n VAL=0.9 FALL=1
+TRIG v(Vref) td=0n VAL=0.9 FALL=1
.save all
"
}
C {devices/opin.sym} 3710 -620 0 0 {name=p3 lab=Vout}
