v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 -40 20 -40 {
lab=din}
N -20 -60 20 -60 {
lab=inp1}
N -20 -20 20 -20 {
lab=inp2}
N 320 -60 390 -60 {
lab=vdd}
N 320 -40 390 -40 {
lab=out}
N 320 -20 390 -20 {
lab=GND}
N -190 -80 -190 -60 {
lab=inp1}
N -130 -80 -130 -60 {
lab=vdd}
N -190 0 -190 20 {
lab=GND}
N -130 0 -130 20 {
lab=GND}
N -250 -140 -250 -120 {
lab=GND}
N -250 -220 -250 -200 {
lab=din}
N -270 -90 -270 -70 {
lab=inp2}
N -270 -10 -270 10 {
lab=GND}
C {switch.sym} 170 -40 0 0 {name=x1}
C {devices/gnd.sym} 390 -20 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -190 -30 0 0 {name=V1 value=1.65}
C {devices/vsource.sym} -130 -30 0 0 {name=V2 value=3.3}
C {devices/lab_pin.sym} 390 -60 2 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -130 -80 2 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -190 -80 2 0 {name=p3 sig_type=std_logic lab=inp1}
C {devices/gnd.sym} -130 20 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -190 20 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -250 -170 0 0 {name=V3 value="pulse(0 1.8 0ns 100p 100p 5n 10n)"}
C {devices/gnd.sym} -250 -120 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -250 -220 2 0 {name=p4 sig_type=std_logic lab=din}
C {devices/lab_pin.sym} -20 -60 0 0 {name=p5 sig_type=std_logic lab=inp1}
C {devices/lab_pin.sym} -20 -40 0 0 {name=p6 sig_type=std_logic lab=din}
C {devices/opin.sym} 390 -40 0 0 {name=p7 lab=out}
C {devices/code_shown.sym} 0 -200 0 0 {name=spice only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 10p 8n
.control
plot v(din) v(inp1) v(out)
save all
.endc
"}
C {devices/vsource.sym} -270 -40 0 0 {name=V4 value=0}
C {devices/lab_pin.sym} -270 -90 2 0 {name=p8 sig_type=std_logic lab=inp2}
C {devices/gnd.sym} -270 10 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -20 -20 0 0 {name=p9 sig_type=std_logic lab=inp2}
