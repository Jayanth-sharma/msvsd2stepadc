v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 460 -2170 460 -2150 {
lab=INP}
N 400 -2170 460 -2170 {
lab=INP}
N 460 -2090 460 -2050 {
lab=#net1}
N 460 -1990 460 -1950 {
lab=#net2}
N 460 -1890 460 -1860 {
lab=#net3}
N 460 -1800 460 -1770 {
lab=GND}
N 440 -2150 460 -2150 {
lab=INP}
N 440 -2150 440 -2120 {
lab=INP}
N 440 -2050 460 -2050 {
lab=#net1}
N 440 -2050 440 -2020 {
lab=#net1}
N 440 -1950 460 -1950 {
lab=#net2}
N 440 -1950 440 -1920 {
lab=#net2}
N 440 -1860 460 -1860 {
lab=#net3}
N 440 -1860 440 -1830 {
lab=#net3}
N 600 -2130 670 -2130 {
lab=BIAS}
N 600 -2130 600 -1830 {
lab=BIAS}
N 600 -1830 630 -1830 {
lab=BIAS}
N 600 -1940 630 -1940 {
lab=BIAS}
N 600 -2040 630 -2040 {
lab=BIAS}
N 540 -2180 540 -1870 {
lab=INN}
N 540 -1870 630 -1870 {
lab=INN}
N 540 -1980 630 -1980 {
lab=INN}
N 540 -2080 630 -2080 {
lab=INN}
N 580 -1850 630 -1850 {
lab=#net3}
N 580 -1960 630 -1960 {
lab=#net2}
N 460 -2060 630 -2060 {
lab=#net1}
N 460 -1960 580 -1960 {
lab=#net2}
N 510 -1850 580 -1850 {
lab=#net3}
N 510 -1870 510 -1850 {
lab=#net3}
N 460 -1870 510 -1870 {
lab=#net3}
N 930 -2040 960 -2040 {
lab=GND}
N 960 -2040 960 -1770 {
lab=GND}
N 930 -1940 960 -1940 {
lab=GND}
N 930 -1830 960 -1830 {
lab=GND}
N 930 -1870 1000 -1870 {
lab=VCC}
N 1000 -2140 1000 -1870 {
lab=VCC}
N 930 -2080 1000 -2080 {
lab=VCC}
N 930 -1980 1000 -1980 {
lab=VCC}
N 930 -2060 960 -2060 {
lab=C3}
N 930 -1960 970 -1960 {
lab=C2}
N 930 -1850 980 -1850 {
lab=C1}
C {comp.sym} 780 -2060 0 0 {name=x1}
C {sky130_fd_pr/res_generic_pd.sym} 460 -2120 0 0 {name=R1
W=10
L=5.2
spiceprefix=X
model=res_generic_pd
mult=1}
C {sky130_fd_pr/res_generic_pd.sym} 460 -2020 0 0 {name=R2
W=10
L=5.2
spiceprefix=X
model=res_generic_pd
mult=1}
C {sky130_fd_pr/res_generic_pd.sym} 460 -1920 0 0 {name=R3
W=10
L=5.2
spiceprefix=X
model=res_generic_pd
mult=1}
C {sky130_fd_pr/res_generic_pd.sym} 460 -1830 0 0 {name=R4
W=10
L=5.2
spiceprefix=X
model=res_generic_pd
mult=1}
C {comp.sym} 780 -1960 0 0 {name=x2}
C {comp.sym} 780 -1850 0 0 {name=x3}
C {devices/iopin.sym} 1000 -2140 0 0 {name=p1 lab=VCC}
C {devices/iopin.sym} 960 -1770 0 0 {name=p3 lab=GND}
C {devices/ipin.sym} 670 -2130 2 0 {name=p2 lab=BIAS}
C {devices/ipin.sym} 540 -2180 1 0 {name=p4 lab=INN}
C {devices/ipin.sym} 400 -2170 0 0 {name=p5 lab=INP}
C {devices/lab_pin.sym} 460 -1770 0 0 {name=p6 sig_type=std_logic lab=GND}
C {devices/opin.sym} 960 -2060 0 0 {name=p7 lab=C3}
C {devices/opin.sym} 970 -1960 0 0 {name=p8 lab=C2}
C {devices/opin.sym} 980 -1850 0 0 {name=p9 lab=C1}
