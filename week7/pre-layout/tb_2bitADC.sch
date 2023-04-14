v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -280 90 -280 110 {
lab=GND}
N 180 10 200 10 {
lab=GND}
N 200 10 200 40 {
lab=GND}
N -460 80 -460 100 {
lab=GND}
N -350 -10 -350 10 {
lab=GND}
N -280 -10 -280 10 {
lab=GND}
N -300 10 -280 10 {
lab=GND}
N -280 30 -260 30 {
lab=Vref}
N -460 20 -440 20 {
lab=Vin}
N -350 -70 -330 -70 {
lab=VCC}
N -280 -70 -260 -70 {
lab=Vb}
N -150 -70 -120 -70 {
lab=Vin}
N -150 -50 -120 -50 {
lab=Vref}
N -150 -30 -120 -30 {
lab=Vb}
N 180 -70 200 -70 {
lab=VCC}
N 180 -50 200 -50 {
lab=b3}
N 180 -30 200 -30 {
lab=b2}
N 180 -10 200 -10 {
lab=b1}
C {Two_BitADC.sym} 30 -30 0 0 {name=x1}
C {devices/vsource.sym} -350 -40 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -280 -40 0 0 {name=V2 value=0.9}
C {devices/vsource.sym} -460 50 0 0 {name=V3 value="sine(0 3.3 100000000)"}
C {devices/vsource.sym} -280 60 0 0 {name=V4 value=2.8}
C {devices/gnd.sym} -280 110 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 200 40 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -460 100 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -350 10 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -300 10 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} -280 -260 0 0 {name=spice only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 10p 20n
.control
plot v(Vref) 
plot v(Vin)
plot v(Vb)
save all
.endc"}
C {devices/opin.sym} 200 -50 0 0 {name=p6 lab=b3}
C {devices/opin.sym} 200 -30 0 0 {name=p7 lab=b2}
C {devices/opin.sym} 200 -10 0 0 {name=p8 lab=b1}
C {devices/ipin.sym} -260 -70 2 0 {name=p13 lab=Vb}
C {devices/ipin.sym} -260 30 2 0 {name=p2 lab=Vref}
C {devices/ipin.sym} -440 20 2 0 {name=p4 lab=Vin}
C {devices/iopin.sym} -330 -70 0 0 {name=p3 lab=VCC}
C {devices/lab_pin.sym} -150 -50 0 0 {name=p1 sig_type=std_logic lab=Vref}
C {devices/lab_pin.sym} -150 -70 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -150 -30 0 0 {name=p9 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 200 -70 2 0 {name=p10 sig_type=std_logic lab=VCC}
