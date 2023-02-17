v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 -190 -20 -190 {
lab=Vin}
N -30 -190 -30 -100 {
lab=Vin}
N -30 -100 -20 -100 {
lab=Vin}
N 20 -160 20 -130 {
lab=Vout}
N 20 -150 80 -150 {
lab=Vout}
N -60 -150 -30 -150 {
lab=Vin}
N 20 -240 20 -220 {
lab=VDD}
N 20 -70 20 -50 {
lab=GND}
N -140 -120 -140 -110 {
lab=GND}
N -140 -200 -140 -180 {
lab=VDD}
N -110 -290 -110 -260 {
lab=GND}
N 20 -190 50 -190 {
lab=VDD}
N 20 -220 50 -220 {
lab=VDD}
N 50 -220 50 -190 {
lab=VDD}
N 20 -100 50 -100 {
lab=GND}
N 50 -100 50 -70 {
lab=GND}
N 20 -70 50 -70 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 0 -100 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 0 -190 0 0 {name=M2
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
C {devices/gnd.sym} 20 -50 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 20 -240 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -140 -150 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} -140 -110 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -140 -200 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} -110 -320 0 0 {name=Vin value= "pulse(0 1.8 1n 1n 1n 4n 8n)"}
C {devices/gnd.sym} -110 -260 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -60 -150 0 0 {name=p1 sig_type=std_logic lab=Vin
}
C {devices/lab_pin.sym} -110 -350 0 0 {name=p2 sig_type=std_logic lab=Vin
}
C {devices/lab_pin.sym} 80 -150 2 0 {name=p3 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} 180 -160 0 0 {name=SPICE only_toplevel=false value="
.tran 0.01n 60n
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.save all"}
