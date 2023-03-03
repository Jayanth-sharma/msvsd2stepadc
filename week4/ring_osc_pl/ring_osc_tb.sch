v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2140 -1060 2170 -1060 {
lab=VDD}
N 2140 -1020 2170 -1020 {
lab=GND}
N 2170 -1020 2170 -1010 {
lab=GND}
N 2290 -1000 2290 -980 {
lab=GND}
N 2290 -1080 2290 -1060 {
lab=VDD}
N 2140 -1040 2180 -1040 {
lab=Y}
C {ring_osc.sym} 1990 -1040 0 0 {name=x1}
C {devices/vsource.sym} 2290 -1030 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 2170 -1010 0 0 {name=l1 lab=GND}
C {devices/iopin.sym} 2290 -1080 0 0 {name=p1 lab=VDD}
C {devices/gnd.sym} 2290 -980 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 2170 -1060 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 2180 -1040 0 0 {name=p3 lab=Y}
C {devices/code_shown.sym} 1990 -1240 0 0 {name=spice only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.01n 60n
.control
run
.endc
.save all"}
