v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 -60 -10 -60 {
lab=Vin}
N -20 -60 -20 30 {
lab=Vin}
N -20 30 -10 30 {
lab=Vin}
N 30 -30 30 -0 {
lab=Vout}
N 30 -20 90 -20 {
lab=Vout}
N -50 -20 -20 -20 {
lab=Vin}
N 30 -110 30 -90 {
lab=VDD}
N 30 60 30 80 {
lab=GND}
N -130 10 -130 20 {
lab=GND}
N -130 -70 -130 -50 {
lab=VDD}
N -210 -10 -210 20 {
lab=GND}
N 30 -60 60 -60 {
lab=VDD}
N 30 -90 60 -90 {
lab=VDD}
N 60 -90 60 -60 {
lab=VDD}
N 30 30 60 30 {
lab=GND}
N 60 30 60 60 {
lab=GND}
N 30 60 60 60 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 10 30 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 10 -60 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 30 80 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 30 -110 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -130 -20 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} -130 20 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -130 -70 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} -210 -40 0 0 {name=Vin value=0}
C {devices/gnd.sym} -210 20 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 160 50 0 0 {name=SPICE only_toplevel=false value="
.dc Vin 0 1.8 0.01
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.save all"}
C {devices/lab_pin.sym} -50 -20 0 0 {name=p1 sig_type=std_logic lab=Vin
}
C {devices/lab_pin.sym} -210 -70 0 0 {name=p2 sig_type=std_logic lab=Vin
}
C {devices/lab_pin.sym} 90 -20 2 0 {name=p3 sig_type=std_logic lab=Vout}
