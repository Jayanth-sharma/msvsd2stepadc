## Table of Content
|SI.No|Action Item|Status|
|-----|-----------|------|
| 1   |Pre-layout Analysis Three-Stage Ring-Oscillator|:heavy_check_mark:|
| 2   |Post-Layout Analysis of Ring-Oscillator Using Magic|:heavy_check_mark:|
| 3   |Post-layout Analysis of Ring-Oscillator Using Align|:heavy_check_mark:|

## Pre-layout Analysis of Ring-Oscillator
- A ring oscillator is a self-toggling circuit that generates clock-like pulses without any external input, other than the power that it needs.Here a 3 staged  Cascaded inverter B2B.

![ring_os_schem](https://user-images.githubusercontent.com/53760504/222785341-e91ade4f-b632-4bc5-a5a1-cc74c0bdbae9.png)
- This Circuit Generates the Following Netlist: [ring_os.spice](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week4/ring_osc_pl/ring_osc.spice)
- The Test Circuit for ring oscillator
  
![ring_osc_tb](https://user-images.githubusercontent.com/53760504/222791111-e7e21212-6faa-43d6-a2c8-934e8c4dccd4.png)
![ring-osc_prelayout](https://user-images.githubusercontent.com/53760504/222791161-9ab39529-3ce4-4a69-91ad-06cc14b4f945.png)

## Post-layout Analysis of Ring Oscillator:
- Manual Layout of a Three-Stage Ring Oscillator
  ![ring_osc2_layoutmanual](https://user-images.githubusercontent.com/53760504/223493101-5070a484-1bd5-4beb-8662-5a83ad0ce275.png)
- You can Find the Netlist Here: [ring_osc2.spice](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week4/ring_osc_magic/ring_osc2.spice)
  ![ring_osc_ml_postlayout](https://user-images.githubusercontent.com/53760504/223493769-158fb167-881d-4780-8ffc-6c6190a4af8c.png)
## Post-Layout Analysis of Ring Oscilator Using Align:
- First Lets Modify the Generated Netlist from Xchem in the Following Way:
### Netlist-1
```
.subckt ring_osc2 OUT VDD GND
XM1 net1 OUT GND GND sky130_fd_pr__nfet_01v8 L=150e-09 w=10.5e-7 nf=10 m=1
XM2 net2 net1 GND GND sky130_fd_pr__nfet_01v8 L=150e-09 w=10.5e-7 nf=10 m=1
XM3 OUT net2 GND GND sky130_fd_pr__nfet_01v8 L=150e-09 w=10.5e-7 nf=10 m=1
XM4 net1 OUT VDD VDD sky130_fd_pr__pfet_01v8 L=150e-09 w=10.5e-7 nf=10 m=1
XM5 net2 net1 VDD VDD sky130_fd_pr__pfet_01v8 L=150e-09 w=10.5e-7 nf=10 m=1
XM6 OUT net2 VDD VDD sky130_fd_pr__pfet_01v8 L=150e-09 w=10.5e-7 nf=10 m=1
.ends ring_osc2
```
### Netlist-2
```
.subckt ring_oscillator_stage vi vo vssx vccx vctl
mp0 vo vi vctl vccx sky130_fd_pr__pfet_01v8 L=150e-9 W=420e-9 nf=2
mn0 vo vi vssx vssx sky130_fd_pr__nfet_01v8 L=150e-9 W=420e-9 nf=2
.ends

.subckt ring_oscillator vctl vo vccx vssx
xi0 vo n1 vssx vccx vctl ring_oscillator_stage
xi1 n1 n2 vssx vccx vctl ring_oscillator_stage
xi2 n2 n3 vssx vccx vctl ring_oscillator_stage
xi3 n3 n4 vssx vccx vctl ring_oscillator_stage
xi4 n4 vo vssx vccx vctl ring_oscillator_stage
.ends
```
- Refer The Examples Here -[ring_oscillator.sp](https://github.com/ALIGN-analoglayout/ALIGN-public/blob/master/examples/ring_oscillator/ring_oscillator.sp)
- Now You Can Run ALIGN to Generate the Layout
  ![ALign_RO2](https://user-images.githubusercontent.com/53760504/223916796-04910882-73cf-4fec-a30d-7f4268d62a86.png)
- Open the GDS In Magic  
  ![Ring_osc2_AlignGDS](https://user-images.githubusercontent.com/53760504/223916863-d9849bd0-70e8-4159-8e76-56553a748721.png)
- The Extracted Netlist from Magic : 
