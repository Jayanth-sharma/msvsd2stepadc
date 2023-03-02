v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1600 -1100 1660 -1100 {
lab=#net1}
N 1660 -1110 1660 -1100 {
lab=#net1}
N 1660 -1110 1960 -1110 {
lab=#net1}
N 1960 -1110 1960 -1090 {
lab=#net1}
N 1650 -1090 1650 -1080 {
lab=in}
N 1650 -1090 1660 -1090 {
lab=in}
N 1600 -1040 1600 -1020 {
lab=GND}
N 1650 -1020 1650 -1000 {
lab=GND}
N 1960 -1050 1960 -1030 {
lab=GND}
N 1960 -1070 2000 -1070 {
lab=out}
N 1650 -1120 1650 -1090 {
lab=in}
C {inv.sym} 1810 -1070 0 0 {name=x1}
C {devices/vsource.sym} 1600 -1070 0 0 {name=V1 value=1.8
}
C {devices/vsource.sym} 1650 -1050 0 0 {name=V2 value="pulse(0 1.8 1n 1n 1n 2n 4n)"}
C {devices/gnd.sym} 1600 -1020 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1650 -1000 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1960 -1030 0 0 {name=l3 lab=GND}
C {devices/opin.sym} 2000 -1070 0 0 {name=p1 lab=out}
C {devices/code_shown.sym} 1620 -1210 0 0 {name=spice only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.01n 20n
.save all
"}
C {devices/ipin.sym} 1650 -1120 0 0 {name=p2 lab=in}
