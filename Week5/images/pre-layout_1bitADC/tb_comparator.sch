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
N 3690 -590 3710 -590 {
lab=GND}
N 3710 -590 3710 -580 {
lab=GND}
N 3690 -610 3710 -610 {
lab=Vbias}
N 3360 -650 3390 -650 {
lab=Vin}
N 3360 -630 3390 -630 {
lab=Vref}
N 3210 -660 3210 -640 {
lab=GND}
N 3210 -720 3250 -720 {
lab=Vbias}
N 3690 -650 3710 -650 {
lab=Vdd}
N 3690 -630 3720 -630 {
lab=Vout}
C {devices/vsource.sym} 3780 -600 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} 3260 -610 0 0 {name=V2 value="sine(0.9 0.9 100Meg)"}
C {devices/vsource.sym} 3310 -550 0 0 {name=V3 value=1
}
C {devices/gnd.sym} 3260 -560 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 3310 -500 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 3780 -540 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 3710 -580 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 3710 -650 2 0 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 3270 -640 2 0 {name=p4 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 3320 -580 2 0 {name=p5 sig_type=std_logic lab=Vref}
C {devices/lab_pin.sym} 3360 -650 0 0 {name=p6 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 3360 -630 0 0 {name=p7 sig_type=std_logic lab=Vref}
C {devices/code_shown.sym} 3480 -540 0 0 {name=spice only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 10p 60n 0
.save all
"
}
C {comparator.sym} 3540 -620 0 0 {name=x1}
C {devices/lab_pin.sym} 3710 -610 2 0 {name=p2 sig_type=std_logic lab=Vbias
}
C {devices/vsource.sym} 3210 -690 0 0 {name=V4 value=0.9
}
C {devices/gnd.sym} 3210 -640 0 0 {name=l5 lab=GND}
C {devices/iopin.sym} 3250 -720 0 0 {name=p3 lab=Vbias}
C {devices/lab_pin.sym} 3780 -650 2 0 {name=p8 sig_type=std_logic lab=Vdd}
C {devices/opin.sym} 3720 -630 0 0 {name=p9 lab=Vout
}
