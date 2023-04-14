v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2660 -720 2710 -720 {
lab=BIAS}
N 2660 -1040 2660 -720 {
lab=BIAS}
N 2660 -960 2710 -960 {
lab=BIAS}
N 2660 -850 2710 -850 {
lab=BIAS}
N 2610 -1040 2610 -740 {
lab=INP}
N 2610 -740 2710 -740 {
lab=INP}
N 2610 -870 2710 -870 {
lab=INP}
N 2610 -980 2710 -980 {
lab=INP}
N 2680 -1000 2710 -1000 {
lab=Vref3}
N 2680 -1020 2680 -1000 {
lab=Vref3}
N 2690 -890 2710 -890 {
lab=Vref2}
N 2690 -910 2690 -890 {
lab=Vref2}
N 2690 -760 2710 -760 {
lab=Vref1}
N 2690 -780 2690 -760 {
lab=Vref1}
N 3010 -1000 3060 -1000 {
lab=VDD}
N 3060 -1020 3060 -1000 {
lab=VDD}
N 3050 -760 3060 -760 {
lab=VDD}
N 3060 -1000 3060 -760 {
lab=VDD}
N 3010 -760 3050 -760 {
lab=VDD}
N 3010 -890 3060 -890 {
lab=VDD}
N 3010 -740 3070 -740 {
lab=C1}
N 3010 -720 3100 -720 {
lab=GND}
N 3100 -960 3100 -720 {
lab=GND}
N 3010 -960 3100 -960 {
lab=GND}
N 3010 -850 3100 -850 {
lab=GND}
N 3100 -720 3100 -700 {
lab=GND}
N 3010 -870 3080 -870 {
lab=C2}
N 3010 -980 3070 -980 {
lab=C3}
C {comp.sym} 2860 -980 0 0 {name=x1}
C {comp.sym} 2860 -870 0 0 {name=x2}
C {comp.sym} 2860 -740 0 0 {name=x3}
C {devices/iopin.sym} 3100 -700 0 0 {name=p1 lab=GND}
C {devices/iopin.sym} 3060 -1020 0 0 {name=p2 lab=VDD}
C {devices/opin.sym} 3070 -980 0 0 {name=p8 lab=C3}
C {devices/opin.sym} 3080 -870 0 0 {name=p9 lab=C2}
C {devices/opin.sym} 3070 -740 0 0 {name=p10 lab=C1}
C {devices/ipin.sym} 2690 -910 2 0 {name=p11 lab=Vref2}
C {devices/ipin.sym} 2680 -1020 2 0 {name=p12 lab=Vref3}
C {devices/ipin.sym} 2690 -780 2 0 {name=p13 lab=Vref1}
C {devices/ipin.sym} 2660 -1040 1 0 {name=p14 lab=BIAS}
C {devices/ipin.sym} 2610 -1040 1 0 {name=p3 lab=INP}
