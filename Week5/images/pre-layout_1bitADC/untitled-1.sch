v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2160 -630 2160 -620 {
lab=GND}
N 2270 -640 2270 -620 {
lab=GND}
N 2480 -820 2480 -750 {
lab=#net1}
N 2480 -690 2480 -660 {
lab=GND}
N 2460 -880 2480 -880 {
lab=Vdd}
N 2450 -880 2460 -880 {
lab=Vdd}
N 2160 -710 2160 -690 {
lab=Vdd}
N 2270 -710 2270 -700 {
lab=Vb}
N 2270 -710 2280 -710 {
lab=Vb}
N 2850 -740 2850 -720 {
lab=GND}
N 2850 -760 2890 -760 {
lab=Vb}
N 2390 -800 2550 -800 {
lab=Fout}
N 2480 -780 2550 -780 {
lab=#net1}
N 2390 -820 2400 -820 {
lab=Vdd}
N 2430 -880 2450 -880 {
lab=Vdd}
N 2850 -800 2890 -800 {
lab=Vdd}
N 2390 -780 2390 -760 {
lab=GND}
N 2850 -780 2940 -780 {
lab=Vout}
N 2440 -800 2440 -780 {
lab=Fout}
C {comparator.sym} 2700 -770 0 0 {name=x1}
C {ring_osc.sym} 2240 -800 0 0 {name=x2}
C {devices/vsource.sym} 2160 -660 0 0 {name=V1 value=1.8
}
C {devices/vsource.sym} 2270 -670 0 0 {name=V2 value=0.9}
C {devices/gnd.sym} 2160 -620 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 2270 -620 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/res_generic_m1.sym} 2480 -850 0 0 {name=R1
W=1
L=1
model=res_generic_m1
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 2480 -720 0 0 {name=R2
W=1
L=1
model=res_generic_m1
mult=1}
C {devices/gnd.sym} 2480 -660 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 2850 -720 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 2890 -760 2 0 {name=p1 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 2280 -710 2 0 {name=p2 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 2160 -710 2 0 {name=p3 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 2400 -820 2 0 {name=p4 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 2430 -880 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 2890 -800 2 0 {name=p6 sig_type=std_logic lab=Vdd}
C {devices/gnd.sym} 2390 -760 0 0 {name=l3 lab=GND}
C {devices/opin.sym} 2940 -780 0 0 {name=p7 lab=Vout}
C {devices/opin.sym} 2440 -780 1 0 {name=p8 lab=Fout}
C {devices/code_shown.sym} 2600 -670 0 0 {name=spice only_toplevel=false value="
.tran 10p 100n
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
plot Fout Vout
.endc
.saveall
"}
