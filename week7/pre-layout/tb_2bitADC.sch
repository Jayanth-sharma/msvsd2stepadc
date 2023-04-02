v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 760 -2000 780 -2000 {
lab=GND}
N 780 -2000 780 -1980 {
lab=GND}
N 300 -2090 310 -2090 {
lab=VCC}
N 300 -2090 300 -2070 {
lab=VCC}
N 360 -2080 360 -2070 {
lab=INN}
N 360 -1990 360 -1970 {
lab=BIAS}
N 280 -2010 300 -2010 {
lab=GND}
N 350 -2010 360 -2010 {
lab=GND}
N 360 -1910 360 -1890 {
lab=GND}
N 390 -2130 390 -2110 {
lab=GND}
N 440 -2080 460 -2080 {
lab=INN}
N 440 -2060 460 -2060 {
lab=INP}
N 440 -2040 460 -2040 {
lab=BIAS}
N 760 -2060 810 -2060 {
lab=c3}
N 760 -2040 810 -2040 {
lab=c2}
N 760 -2020 810 -2020 {
lab=c1}
N 390 -2200 390 -2190 {
lab=INP}
C {Two_BitADC.sym} 610 -2040 0 0 {name=x1}
C {devices/vsource.sym} 300 -2040 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 360 -2040 0 0 {name=V2 value="sine(0 3.3 10Meq)"}
C {devices/vsource.sym} 390 -2160 2 0 {name=V3 value=5}
C {devices/vsource.sym} 360 -1940 0 0 {name=V4 value=0.9}
C {devices/gnd.sym} 780 -1980 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 760 -2080 2 0 {name=p2 sig_type=std_logic lab=VCC}
C {devices/gnd.sym} 360 -1890 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 390 -2110 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 280 -2010 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 350 -2010 0 0 {name=l5 lab=GND}
C {devices/opin.sym} 810 -2060 0 0 {name=p9 lab=c3}
C {devices/opin.sym} 810 -2040 0 0 {name=p10 lab=c2}
C {devices/opin.sym} 810 -2020 0 0 {name=p11 lab=c1}
C {devices/code_shown.sym} 490 -1930 0 0 {name=spice only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 10p 100n
.control
run
plot c3 c2 c1
save all
.endc"}
C {devices/lab_pin.sym} 440 -2040 0 0 {name=p4 sig_type=std_logic lab=BIAS}
C {devices/lab_pin.sym} 440 -2080 0 0 {name=p5 sig_type=std_logic lab=INN}
C {devices/lab_pin.sym} 440 -2060 0 0 {name=p6 sig_type=std_logic lab=INP}
C {devices/ipin.sym} 360 -2080 0 0 {name=p1 lab=INN}
C {devices/ipin.sym} 360 -1990 0 0 {name=p3 lab=BIAS}
C {devices/ipin.sym} 390 -2200 2 0 {name=p7 lab=INP}
C {devices/iopin.sym} 310 -2090 0 0 {name=p8 lab=VCC}
