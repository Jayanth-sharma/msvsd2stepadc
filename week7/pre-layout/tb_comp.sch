v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1010 -1710 1010 -1690 {
lab=INP}
N 950 -1710 950 -1690 {
lab=VCC}
N 950 -1630 950 -1610 {
lab=GND}
N 1010 -1630 1010 -1610 {
lab=GND}
N 1270 -1730 1270 -1700 {
lab=GND}
N 840 -1750 840 -1730 {
lab=GND}
N 840 -1830 840 -1810 {
lab=INN}
N 860 -1600 860 -1580 {
lab=GND}
N 860 -1670 860 -1660 {
lab=BIAS}
N 1270 -1750 1290 -1750 {
lab=Out}
N 970 -1790 970 -1770 {
lab=INN}
N 960 -1750 970 -1750 {
lab=INP}
N 960 -1730 970 -1730 {
lab=BIAS}
C {comp.sym} 1120 -1750 0 0 {name=x1}
C {devices/vsource.sym} 840 -1780 0 0 {name=V1 value="sine(0 1.8 100000000)"}
C {devices/vsource.sym} 860 -1630 0 0 {name=V2 value=0.9}
C {devices/vsource.sym} 950 -1660 0 0 {name=V3 value=1.8}
C {devices/vsource.sym} 1010 -1660 0 0 {name=V4 value=1}
C {devices/iopin.sym} 950 -1710 0 0 {name=p1 lab=VCC}
C {devices/gnd.sym} 950 -1610 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1010 -1610 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1270 -1700 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1270 -1770 2 0 {name=p3 sig_type=std_logic lab=VCC}
C {devices/opin.sym} 1290 -1750 0 0 {name=p2 lab=Out}
C {devices/ipin.sym} 1010 -1710 2 0 {name=p4 lab=INP}
C {devices/ipin.sym} 840 -1830 0 0 {name=p5 lab=INN}
C {devices/ipin.sym} 860 -1670 0 0 {name=p6 lab=BIAS}
C {devices/gnd.sym} 840 -1730 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 860 -1580 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 960 -1750 0 0 {name=p7 sig_type=std_logic lab=INP}
C {devices/lab_pin.sym} 970 -1790 0 0 {name=p8 sig_type=std_logic lab=INN}
C {devices/lab_pin.sym} 960 -1730 0 0 {name=p9 sig_type=std_logic lab=BIAS}
C {devices/code_shown.sym} 850 -1950 0 0 {name=spice only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 10p 100n
.control
end
save all
.endc
"}
