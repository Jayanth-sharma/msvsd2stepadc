v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -80 50 -60 {
lab=inp1}
N -50 -80 50 -80 {
lab=inp1}
N 30 -60 50 -60 {
lab=inp1}
N 30 -60 30 -30 {
lab=inp1}
N 50 -0 50 30 {
lab=#net1}
N 30 30 50 30 {
lab=#net1}
N 30 30 30 60 {
lab=#net1}
N 50 90 50 120 {
lab=#net2}
N 30 120 50 120 {
lab=#net2}
N 30 120 30 150 {
lab=#net2}
N 50 180 50 210 {
lab=#net3}
N 30 210 50 210 {
lab=#net3}
N 30 210 30 240 {
lab=#net3}
N 50 270 50 290 {
lab=inp2}
N 50 10 220 10 {
lab=#net1}
N 50 110 180 110 {
lab=#net2}
N 50 200 180 200 {
lab=#net3}
N 180 110 220 110 {
lab=#net2}
N 180 200 220 200 {
lab=#net3}
N 50 280 230 280 {
lab=inp2}
N 220 10 220 40 {
lab=#net1}
N 220 40 240 40 {
lab=#net1}
N 220 80 240 80 {
lab=#net2}
N 220 80 220 110 {
lab=#net2}
N 220 200 220 220 {
lab=#net3}
N 220 220 240 220 {
lab=#net3}
N 230 260 240 260 {
lab=inp2}
N 230 260 230 280 {
lab=inp2}
N 210 240 240 240 {
lab=d0}
N 210 60 210 240 {
lab=d0}
N 210 60 240 60 {
lab=d0}
N 210 140 260 140 {
lab=d0}
N 940 110 980 110 {
lab=vdd}
N 940 130 980 130 {
lab=out_v}
N 940 150 980 150 {
lab=GND}
N 610 110 640 110 {
lab=x1_out}
N 610 150 640 150 {
lab=x2_out}
N 550 130 640 130 {
lab=d1}
N 540 40 570 40 {
lab=vdd}
N 540 60 570 60 {
lab=x1_out}
N 540 80 570 80 {
lab=GND}
N 540 220 570 220 {
lab=vdd}
N 540 240 570 240 {
lab=x2_out}
N 540 260 570 260 {
lab=GND}
N -490 -120 -490 -80 {
lab=vdd}
N -370 -120 -360 -120 {
lab=d0}
N -370 -120 -370 -80 {
lab=d0}
N -250 -120 -250 -80 {
lab=d1}
N -490 -20 -490 10 {
lab=GND}
N -370 -20 -370 10 {
lab=GND}
N -250 -20 -250 10 {
lab=GND}
N -350 30 -340 30 {
lab=inp1}
N -350 30 -350 60 {
lab=inp1}
N -350 120 -350 150 {
lab=GND}
N -460 40 -460 60 {
lab=inp2}
N -460 120 -460 150 {
lab=GND}
N 570 80 620 80 {
lab=GND}
N 570 260 630 260 {
lab=GND}
N 980 150 1050 150 {
lab=GND}
C {sky130_fd_pr/res_generic_pd.sym} 50 -30 0 0 {name=R1
W=10
L=2.6
spiceprefix=X
model=res_generic_pd
mult=1}
C {sky130_fd_pr/res_generic_pd.sym} 50 60 0 0 {name=R2
W=10
L=2.6
spiceprefix=X
model=res_generic_pd
mult=1}
C {sky130_fd_pr/res_generic_pd.sym} 50 150 0 0 {name=R3
W=10
L=2.6
spiceprefix=X
model=res_generic_pd
mult=1}
C {sky130_fd_pr/res_generic_pd.sym} 50 240 0 0 {name=R4
W=10
L=2.6
spiceprefix=X
model=res_generic_pd
mult=1}
C {devices/lab_pin.sym} 610 110 0 0 {name=p3 sig_type=std_logic lab=x1_out}
C {devices/lab_pin.sym} 610 150 0 0 {name=p4 sig_type=std_logic lab=x2_out}
C {devices/lab_pin.sym} 570 40 2 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 570 60 2 0 {name=p7 sig_type=std_logic lab=x1_out}
C {devices/lab_pin.sym} 570 240 2 0 {name=p8 sig_type=std_logic lab=x2_out}
C {devices/lab_pin.sym} 570 220 2 0 {name=p9 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 980 110 2 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} -460 90 0 0 {name=V1 value=0.1}
C {devices/vsource.sym} -350 90 0 0 {name=V2 value=3.3}
C {devices/vsource.sym} -370 -50 0 0 {name=V4 value="pulse(0 1.8 0n 1p 1p 5u 10u)"}
C {devices/vsource.sym} -490 -50 0 0 {name=V5 value=3.3}
C {devices/vsource.sym} -250 -50 0 0 {name=V6 value="pulse(0 1.8 0ns 1p 1p 10u 20u)"}
C {devices/lab_pin.sym} -490 -120 2 0 {name=p16 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -360 -120 2 0 {name=p17 sig_type=std_logic lab=d0}
C {devices/lab_pin.sym} -250 -120 2 0 {name=p18 sig_type=std_logic lab=d1}
C {devices/gnd.sym} -370 10 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -250 10 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -490 10 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -460 150 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -350 150 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 620 80 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -340 30 2 0 {name=p19 sig_type=std_logic lab=inp1}
C {devices/lab_pin.sym} -460 40 2 0 {name=p20 sig_type=std_logic lab=inp2}
C {devices/code_shown.sym} -120 -260 0 0 {name=s1 only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 1n 20u
.control
plot v(inp1) v(inp2) v(x1_out) v(x2_out) v(out_v)
save all
.endc
"}
C {devices/opin.sym} 980 130 0 0 {name=p12 lab="out_v"}
C {devices/lab_pin.sym} -50 -80 0 0 {name=p1 sig_type=std_logic lab=inp1}
C {devices/lab_pin.sym} 50 290 0 0 {name=p2 sig_type=std_logic lab=inp2}
C {devices/lab_pin.sym} 260 140 2 0 {name=p14 sig_type=std_logic lab=d0}
C {devices/lab_pin.sym} 550 130 0 0 {name=p15 sig_type=std_logic lab=d1}
C {devices/gnd.sym} 630 260 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 1050 150 0 0 {name=l8 lab=GND}
C {switch.sym} 380 60 0 0 {name=x1}
