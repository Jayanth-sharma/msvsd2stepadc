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
lab=Vre}
N 2480 -690 2480 -660 {
lab=GND}
N 2460 -880 2480 -880 {
lab=VDD}
N 2450 -880 2460 -880 {
lab=VDD}
N 2160 -710 2160 -690 {
lab=VDD}
N 2270 -710 2270 -700 {
lab=Vb}
N 2270 -710 2280 -710 {
lab=Vb}
N 2850 -740 2850 -720 {
lab=GND}
N 2850 -760 2890 -760 {
lab=Vb}
N 2480 -780 2550 -780 {
lab=Vre}
N 2390 -820 2400 -820 {
lab=VDD}
N 2430 -880 2450 -880 {
lab=VDD}
N 2850 -800 2890 -800 {
lab=VDD}
N 2390 -780 2390 -760 {
lab=GND}
N 2850 -780 2880 -780 {
lab=out}
N 2390 -800 2410 -800 {
lab=Fout}
N 2530 -800 2550 -800 {
lab=Fout}
N 2430 -800 2430 -780 {
lab=Fout}
N 2520 -780 2520 -770 {
lab=Vre}
N 2410 -800 2430 -800 {
lab=Fout}
N 2430 -800 2530 -800 {
lab=Fout}
C {ring_osc.sym} 2240 -800 0 0 {name=x2}
C {devices/vsource.sym} 2160 -660 0 0 {name=V1 value=3.3

}
C {devices/vsource.sym} 2270 -670 0 0 {name=V2 value=0.9}
C {devices/gnd.sym} 2160 -620 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 2270 -620 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/res_generic_m1.sym} 2480 -850 0 0 {name=R1
W=5.2
L=5
model=res_generic_m1
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 2480 -720 0 0 {name=R2
W=5.2
L=5
model=res_generic_m1
mult=1}
C {devices/gnd.sym} 2480 -660 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 2850 -720 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 2890 -760 2 0 {name=p1 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 2280 -710 2 0 {name=p2 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 2160 -710 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 2390 -760 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 2600 -670 0 0 {name=spice only_toplevel=false value="
.tran 100p 50n
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.save all
"}
C {devices/vdd.sym} 2890 -800 0 0 {name=l6 lab=VDD}
C {devices/vdd.sym} 2430 -880 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} 2400 -820 0 0 {name=l8 lab=VDD}
C {devices/opin.sym} 2880 -780 0 0 {name=p4 lab=out}
C {comparator.sym} 2700 -770 0 0 {name=x1}
C {devices/opin.sym} 2430 -780 1 0 {name=p5 lab=Fout}
C {devices/opin.sym} 2520 -770 1 0 {name=p6 lab=Vre}
