# msvsd2stepadc
# VSD Mixed-signal PD Research Program


 Table of Content:
 
  
|     Week      | Task Assigned                       | Status   |
| ------------- | ---------------------------------   |----------|
|         1     | [Tool Setup and Warmup](https://github.com/Jayanth-sharma/msvsd2stepadc/tree/main/week1)|:heavy_check_mark:|
|         2     | [Analysis of Layout with Magic,Align](https://github.com/Jayanth-sharma/msvsd2stepadc/tree/main/week2)|:heavy_check_mark:|
|         3     | [Generating Temperature Sensor Using OpenFASOC](https://github.com/Jayanth-sharma/msvsd2stepadc/tree/main/week3/Image)|:heavy_check_mark:|
| 4|[4-bit Asynchronous Counter GDS Files Generation](https://github.com/Jayanth-sharma/msvsd2stepadc/tree/main/week4)|:heavy_check_mark:|
| 5,6|[OpenFASOC Implementation of Asynchronous Counter](https://github.com/Jayanth-sharma/msvsd2stepadc/tree/main/Week6)|:heavy_check_mark:|
| 7|[Two-Bit Flash ADC And Sample and Hold Circuit](https://github.com/Jayanth-sharma/msvsd2stepadc/tree/main/week7)   |:heavy_check_mark:|
| 8|[Two-Bit Flash ADC,DAC with Resistor Bridge,SHA and Residue Amplifier and Analysis](https://github.com/Jayanth-sharma/msvsd2stepadc/tree/main/week8)|:heavy_check_mark:|

# Week0
| Section No.| Action Item                     |
| -----------| ------------------------------  |
|        1   |Install Virtual Box,Ubuntu 20.04|
|        2   |Install Xschem,Magic,open_pdks,netgen|
|        3   |Prelayout Simulation of Inverter using Xschem,Ngspice |
|        4   |Postlayout Simulation of Inverter using Magic,Ngspice |
|        5   |Comparing Postlayout vs Prelayout of Inverter       |
|        6   |Design of Pre,Postlayout Simulations of Complex Function using General PDKs|
|        7   |LVS of Inverter,Fn Function |
- A Warmup and Getting Started with the flow with installation of Tools and Usage<br/>
# Setting up Tools
| First Header  | Second Header   |
| ------------- | -------------   |
| Align         | Netlist to GDS  |
| Magic         | Layout Editor   |
| ngspice       | SPICE Simulator |
| netgen        | LVS,Netlist Generator |
| open_pdks     | Sky130 library |
| xschem        | Schematic Editor |

 # Installation
 ## Align 
 - ALIGN (Analog Layout, Intelligently Generated from Netlists) is to automatically translate an unannotated (or partially annotated) SPICE netlist of an analog          circuit to a GDSII layout. 
    Follow the command to install:
    ```
    $ export CC=/usr/bin/gcc
    $ export CXX=/usr/bin/g++
    $ git clone https://github.com/ALIGN-analoglayout/ALIGN-public
    $ cd ALIGN-public

    $ #Create a Python virtualenv
    $ python -m venv general
    $ source general/bin/activate
    $ python -m pip install pip --upgrade

    # Install ALIGN as a USER
    $ pip install -v .

    # Install ALIGN as a DEVELOPER
    $ pip install -e .

    $ pip install setuptools wheel pybind11 scikit-build cmake ninja
    $ pip install -v -e .[test] --no-build-isolation
    $ pip install -v --no-build-isolation -e . --no-deps --install-option='-DBUILD_TESTING=ON'
    ```
    for more info refer:[https://github.com/sanampudig/OpenFASoC/tree/main/AUXCELL](https://github.com/sanampudig/OpenFASoC/tree/main/AUXCELL)
 ## Magic 
 -  Magic is a Open-Source Layout tool<br/>
      
         ```
         $  git clone git://opencircuitdesign.com/magic 
         $  cd magic
         $         ./configure   
         $   make
         $   sudo make install  
         
         ```
         
  - For more info refer: [http://opencircuitdesign.com/magic/index.html](http://opencircuitdesign.com/magic/index.html)<br/>
   
  ## Ngspice
   - Ngspice is a Opensource Simulator for Electrical and Electronic Circuits<br/>
     
     Steps to install: <br/>
     After downloading the tar file  from [https://sourceforge.net/projects/ngspice/files/](https://sourceforge.net/projects/ngspice/files/) to a local directory,  it        decompress and install using  following:
     
       ```
        $ tar -zxvf ngspice-38.tar.gz
        $ cd ngspice-38
        $ mkdir release
        $ 
        $ cd release
        $ ../configure  --with-x --with-readline=yes --disable-debug
        $ make
        $ sudo make install
       ```
     - Incase of More info refer:[ https://ngspice.sourceforge.io/index.html]( https://ngspice.sourceforge.io/index.html)<br/>
      Please note that to view the simulation graphs of ngspice, xterm is required and can be installed using.<br/>
     
     ```
     $ sudo apt-get update
     
     # Install Xaw library
     $  sudo apt-get  install libxaw7-dev
     # Install xterm
     $  sudo apt-get  install xterm
     # Install bison
     $  sudo apt-get  install bison
     # Install flex
     $  sudo apt-get install flex
     # Install readlines library
     $ sudo apt-get install libreadlines6-dev
   
     ```
  # Netgen
  -  Netgen is a Open Source Tool with Compares Netlists,a Process is Called as LVS,Which stands for Layout vs Schematic.<br/>
    Install steps:<br/>
    
     ```
     $  git clone git://opencircuitdesign.com/netgen
     $  cd netgen
     $	./configure
     $  make
     $  sudo make install
     ```
  -  Incase of any errors refer:[http://opencircuitdesign.com/netgen/index.html](http://opencircuitdesign.com/netgen/index.html)<br/>

  # open_pdks
  - Open_PDKs is distributed with files that support the Google/SkyWater sky130 open process description [https://github.com/google/skywater-pdk]     (https://github.com/google/skywater-pdk)<br/>.
  Open_PDKs will set up    an environment for using the SkyWater sky130 process with open-source EDA tools and tool flows such   as magic, qflow, openlane, netgen,       klayout, etc.
  ```
  $  git clone git://opencircuitdesign.com/open_pdks
  $  open_pdks
  $	./configure --enable-sky130-pdk
  $  make
  $  sudo make install
  ```
  
# Tools Unberstanding and Usage
- First lets create a working Directory for this.
   ```
   $ mkdir week0
   $ mkdir designs
   $ cd designs
   $ mkdir mag
   $ mkdir netgen
   $ mkdir xschem
   $ cd xschem
   $ cp /usr/local/share/pdk/sky130A/libs.tech/xschem/xschemrc 
   $ cp /usr/local/share/pdk/sky130A/libs.tech/ngspice/spinit .spiceinit
   $ cd ../mag
   $ cp /usr/local/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
   $ cd ../netgen
   $ cp /usr/local/share/pdk/sky130A/libs.tech/netgen//sky130A_setup.tcl 
  ```
 - magic Check <br/>
   ![alt text](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week1/images/magic_checj.jpeg)
 - netgen <br/>
    ![alt text](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week1/images/netgen_check.png)
 - xschem check <br/> 
    ![alt text](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week1/images/xschem_check.png)
 - ngspice <br/>
    ![alt text](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week1/images/ngspice_check.png)
 ## Pre-layout Inverter using Xschem
 - To combined Sky130 library file with xschem run the following commands.<br/>
    
     `xschem --rcfile /usr/local/share/pdk/sky130A/libs.tech/xschem/xschemrc`
 ## DC Analysis of Inverter <br/>
  A Inverter Schematic is made by placing compoents from the open_pdk library.<br/>
 ![inv_dc_xschem](https://user-images.githubusercontent.com/53760504/219603848-f409557d-9ab8-4c94-80f4-40c76a387098.jpeg)
  From the VTC Graph of Inverter the Following Parameters are Measured:<br/>
   Vtrip Voltage(Vtp)= 0.845 <br/>
   VOL=  0.09  VIH= 0.92 <br/>
   VOH= 1.74   VIL= 0.71 <br/>

 - Noise Margin : <br/>
   NMl=`Vil-Vol`=0.71-0.09=0.62 <br/>
   NMh=`Voh-vih`=1.74-0.92=0.82 <br/>
 ## Transient Analysis of Inverter 
   ![inv_tran_xschem](https://user-images.githubusercontent.com/53760504/219605652-aa7c365a-3951-4969-b77a-0bdd9a1d4f69.jpeg)
   
   ![trans_prelayout](https://user-images.githubusercontent.com/53760504/219605949-9715daa7-97bc-49c0-b40e-e6a2c03986b1.png)
   
# Post-Layout of Inverter.
-  Manual Layout of Inverter.<br/>
  ![inverter_manual_layout](https://user-images.githubusercontent.com/53760504/219607347-8b52eb8f-1376-4a23-93ff-d00f9b71731a.jpeg)
- After having a DRC free layout.Goto Tkcon.tcl command window to extract spice<br/>
  ```
  extract do local
  extract all
  ```
  extract do local- to save .ext and extractions to the local directory.<br/>
  extract all- to extract all files from magic <br/>
  ```
  ext2spice lvs
  ext2spice cthresh 0 rthresh 0
  ext2spice 
  ```
  Extracted Netlist after Modifications <br/>
  ```
   .lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice  tt
   X0 Vout Vin Vdd Vdd sky130_fd_pr__pfet_01v8 ad=9e+11p pd=4.9e+06u as=9e+11p ps=4.9e+06u w=2e+06u l=150000u
   X1 Vout Vin gnd gnd sky130_fd_pr__nfet_01v8 ad=4.5e+11p pd=2.9e+06u as=4.5e+11p ps=2.9e+06u w=1e+06u l=150000u


   Vin Vin GND pulse(0 1.8 1n 1n 1n 4n 8n)
   V2 Vdd GND 1.8


   .tran 0.01n 60n
   .control
   run
   .endc

   .end
  ```
 ##  Post-Layout Transient Analysis of Inverter:
 
   - To Run The post-layout Simulation of Inverter use the command. <br/>
         `ngspice <file_name>.spice` 
   ![postlayout_inv](https://user-images.githubusercontent.com/53760504/219611334-5cd7df4c-9db6-4472-a303-49296cdf7a89.png)
## Comparison between Prelayout vs Postlayout Charateristic of Inverter.
-  Noise Margin Analysis of Prelayout vs Postlayout <br/>
    
  | Pre-layout                                                       | Postlayout                                                                         |
  | ---------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
  |![img](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week1/images/nm_prelayout.png)|![img](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week1/images/dc_postlayout.png)|
   | VOL = 0.71 VOH= 1.74 <br/> VIL = 0.71 VIH = 0.92|VOL= 0.76 VOH= 1.73 <br/> VIL= 0.76 VIH= 0.97|


-  For our Convencience of Test-bench the Pulse timing parameters are choosen as Manually:<br/>
   Rise time :  1 ns <br/>
   Fall time :  1 ns <br/>
   On-Time   :  4 ns <br/>
   Time Period: 8 ns <br/>

   
   | Transient Analysis    | Pre-layout       | Post-layout |
   | ----------------------| ---------------  |------------ |
   | Propagation Delay(Tpd)     | ![tpd_prelayout](https://user-images.githubusercontent.com/53760504/219617505-9af088a4-b0f8-4c85-bd9b-9c7452641871.png)    |![tpd](https://user-images.githubusercontent.com/53760504/219613962-8ef5252e-6c53-4b53-9427-3b9c813976d9.png)|
   |Rising Propagation Delay(Tpdr)|![prelayout_tpdr](https://user-images.githubusercontent.com/53760504/219614843-5249bd0a-77ac-4bc5-a8ef-000eb5c9c990.png)|![tpdr_postlayout](https://user-images.githubusercontent.com/53760504/219614495-d2ecd86b-61ab-49e3-94ec-45ba6754e705.png)|
   | Falling Propagation  Delay(Tpdf) |![prelayout_tpdf](https://user-images.githubusercontent.com/53760504/219615596-d220d5aa-3b9e-4d81-b27c-a71a56008bd4.png)|![postlayout_tpdf](https://user-images.githubusercontent.com/53760504/219614734-04772549-4820-457d-95e7-0229ac3a7929.png)|
 
## Characteristic Analysis Using Spice Commands in Netlist:
- For more Accurate measurement use the Following measures in inverter_trans.spice<br/>
  `Vin Vin GND (0 1.8 50ps 10ps 10ps 200
ps 500ps) .trans 1ps 600ps`
- Here is the Spice Netlist:
  ![netlist_inv_trans_analysis](https://user-images.githubusercontent.com/53760504/221353133-e024056b-1516-4da7-ba30-0c7958650cdc.png)
- Output Waveform and Analysis:
   ![inverter_trans_analysis](https://user-images.githubusercontent.com/53760504/221483855-ef7f71d0-32eb-4897-904d-4be5307cbb34.png)

## Prelayout Analysis of Complex Function using General PDKs:
-  The Function Circuits layout is Designed using Euler Path
   
![fn_layout](https://user-images.githubusercontent.com/53760504/221776004-13b69cba-ebd6-4d36-9b63-7208b4ce0c36.png)
- Now Extract the Spice Netlist and Edit the Sources,Analysis in Netlist
```
* SPICE3 file created from fn_layout.ext - technology: min2

.option scale=0.09u

M1000 a_46_38# d a_22_38# vdd pmos w=17 l=2
+  ad=102 pd=46 as=204 ps=92
M1001 out c a_14_9# gnd nmos w=17 l=2
+  ad=204 pd=92 as=204 ps=92
M1002 vdd b a_46_38# vdd pmos w=17 l=2
+  ad=204 pd=92 as=0 ps=0
M1003 gnd f a_30_9# gnd nmos w=17 l=2
+  ad=204 pd=92 as=102 ps=46
M1004 gnd b a_14_9# gnd nmos w=17 l=2
+  ad=0 pd=0 as=0 ps=0
M1005 out e a_22_38# vdd pmos w=17 l=2
+  ad=102 pd=46 as=0 ps=0
M1006 a_14_38# a vdd vdd pmos w=17 l=2
+  ad=102 pd=46 as=0 ps=0
M1007 a_14_9# a out gnd nmos w=17 l=2
+  ad=0 pd=0 as=0 ps=0
M1008 a_30_9# e out gnd nmos w=17 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 a_22_38# f out vdd pmos w=17 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 a_22_38# c a_14_38# vdd pmos w=17 l=2
+  ad=0 pd=0 as=0 ps=0
M1011 a_14_9# d gnd gnd nmos w=17 l=2
+  ad=0 pd=0 as=0 ps=0
C0 a_30_9# gnd 3.37fF 
C1 a_14_9# gnd 6.82fF
C2 out gnd 8.40fF 
C3 a_22_38# gnd 3.02fF 
C4 vdd gnd 9.58fF

* Analysis
Vdd vdd 0 1.8
V1 a 0 0 pulse 0 1.8 0.1n 10p 10p 1n 2n
V2 b 0 0 pulse 0 1.8 0.2n 10p 10p 1n 2n
V3 c 0 0 pulse 0 1.8 0.3n 10p 10p 1n 2n
V4 d 0 0 pulse 0 1.8 0.4n 10p 10p 1n 2n
V5 e 0 0 pulse 0 1.8 0.5n 10p 10p 1n 2n
V6 f 0 0 pulse 0 1.8 0.6n 10p 10p 1n 2n
***Simulation commands***
.op
.tran 10p 4n
.MEAS TRAN rise_time TRIG V(out) VAL=0.18 RISE=1 TARG V(out) VAL=1.62 RISE=1
.MEAS TRAN FALL_time TRIG V(out) VAL=1.62 FALL=1 TARG V(out) VAL=0.18 FALL=1
.save all
*** .include model file ***
.include  model.mod
.end
```
Run Spice Simulations of Postlayout Netlist
![fn_postlayout](https://user-images.githubusercontent.com/53760504/221776778-3882ee20-9ac6-4a3c-9ab6-9a3b1fb51ca5.png)

 # Week2
 | SI.No |  Action Item  | 
 | ----- | ------------- |
 |  1    | Install Align  |
 |  2    | Postlayout Characteristics of Inverter using Align|
 |  3    | Compare Postlayout Char of Align vs Magic         |
 |  4    | Design and Simulation of Complex Fn using Sky130 PDKs|
 |  5    | Postlayout Characteristics of Complex Function using Magic|
 |  6    | Postlayout Characteristics Fn function using Align|
 |  7    | LVS of Inverter And Fn function|:o:|
# Installation of ALIGN
- ALIGN (Analog Layout, Intelligently Generated from Netlists) is to automatically translate an unannotated (or partially annotated) SPICE netlist of an     analog circuit to a GDSII layout. Follow the command to install: 
 ```
  $ export CC=/usr/bin/gcc
  $ export CXX=/usr/bin/g++
  $ git clone https://github.com/ALIGN-analoglayout/ALIGN-public
  $ cd ALIGN-public

  $ #Create a Python virtualenv
  $ python -m venv general
  $ source general/bin/activate
  $ python -m pip install pip --upgrade

  # Install ALIGN as a USER
  $ pip install -v .

  # Install ALIGN as a DEVELOPER
  $ pip install -e .

  $ pip install setuptools wheel pybind11 scikit-build cmake ninja
  $ pip install -v -e .[test] --no-build-isolation
  $ pip install -v --no-build-isolation -e . --no-deps --install-option='-DBUILD_TESTING=ON'
 ```
  for more info refer : [https://github.com/sanampudig/OpenFASoC/tree/main/AUXCELL](https://github.com/sanampudig/OpenFASoC/tree/main/AUXCELL)
##  Linking ALIGN with Sky130 PDK
  - Clone the repo <br/>
     `git clone https://github.com/ALIGN-analoglayout/ALIGN-pdk-sky130` <br/>
     mv `SKY130_PDK` to `../ALIGN-public/pdks` <br/>
## Testing ALIGN
### Running ALIGN TOOL
-  Everytime we start running tool in new terminal run following commands.<br/>
   ```
   python3 -m venv general
   source general/bin/activate
   ```
- Commands to run ALIGN (goto ALIGN-public directory)<br/>
   ```
   mkdir work
   cd work
   ```
 - Syntax to Generate .lef,.gds files <br/>
   `schematic2layout.py <NETLIST_DIR> -p <PDK_DIR> -c`
 - Running a EXAMPLE:
   `schematic2layout.py ../ALIGN-pdk-sky130/examples/five_transistor_ota -p ../pdks/SKY130_PDK/`
 -   Now open the .lef  ,  .gds files in klayout <br/>
                  GDS File      |   LEF File
     :-------------------------:|:-------------------------:
   ![](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week2/Images/ota_5t_gds.png)|![](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week2/Images/ota_5t_lef.png)
     
## Prelayout Simulation of CMOS Inverter
### Pre-layout Characterization using Xschem/Ngspice (Subcircuit):

 ![inverter](https://user-images.githubusercontent.com/53760504/221830953-1a38ad6a-911d-4f78-ab33-759f85a751d8.png)

 ![inverter_sym](https://user-images.githubusercontent.com/53760504/221830979-db393885-3469-40a3-83c2-076da6378860.png)

 ![trans_inv](https://user-images.githubusercontent.com/53760504/221831600-e8fd8366-8742-460f-9cc9-74e1f595706b.png)

## Post-Layout of Inverter using ALIGN
- Create a Netlist with .sp extension.This Netlist is Different in terms of Parameters to That one Generated by Xschem.
```
.subckt inverter A B vdd vss
XM1 B A vdd vdd sky130_fd_pr__pfet_01v8 w=21e-7 l=0.15n nf=10 m=1
XM2 B A vss vss sky130_fd_pr__nfet_01v8 w=21e-7 l=0.15n nf=10 m=1
.ends

```
- Now Run the Following Move to General Environment:<br/>
`schematic2layout.py ../ALIGN-pdk-sky130/examples/inverter/ -p ../pdks/SKY130_PDK/`
 <img src="https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week2/Images/inverter_align.png" width="800" height="500">
- The lef and gds Files Generated By Align of Inverter <br/>
   
   ![](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week2/Images/inverter_gds.png)
   ![](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week2/Images/inverter_lef.png)|

- To read the GDS file in magic Click on READ GDS and Select the INVERTER_0.gds <br/>
- ![inverter_mag](https://user-images.githubusercontent.com/53760504/222423915-63c2d6f6-2993-4cab-bfb7-36679fd15079.png)

- Here is the Modified Netlist of the Inverter after Extraction <br/>
```
* SPICE3 file created from INVERTER_0.ext - technology: sky130A
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

x1 A B VDD VSS inverter



.subckt inverter A B VDD VSS
X0 B A VDD VDD sky130_fd_pr__pfet_01v8 ad=2.94e+12p pd=2.38e+07u as=3.465e+12p ps=2.85e+07u w=2.1e+06u l=150000u
X1 VDD A B VDD sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X2 VDD A B VDD sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X3 B A VDD VDD sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X4 B A VDD VDD sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X5 VDD A B VDD sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X6 VDD A B VDD sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X7 B A VDD VDD sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X8 B A VDD VDD sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X9 VDD A B VDD sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X10 B A VSS VSS sky130_fd_pr__nfet_01v8 ad=2.94e+12p pd=2.38e+07u as=3.465e+12p ps=2.85e+07u w=2.1e+06u l=150000u
X11 VSS A B VSS sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X12 B A VSS VSS sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X13 VSS A B VSS sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X14 VSS A B VSS sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X15 B A VSS VSS sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X16 B A VSS VSS sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X17 VSS A B VSS sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X18 VSS A B VSS sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X19 B A VSS VSS sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
C0 A VDD 2.60fF
C1 B VDD 4.03fF
C2 B A 1.20fF
C3 B VSS 3.35fF 
C4 A VSS 2.98fF 
C5 VDD VSS 5.63fF 

.ends
Vgnd VSS 0 0 
VDD VDD VSS 1.8
Vin A  VSS 0
* create pulse 
* Vin A VSS pulse(0 1.8 1p 10p 10p 1n 2n)

* create PWL 
* Vin A VSS pwl(0 1.8v 5n 1.8v 5.1n 0 10n 0)
* .tran 10p 10n


.dc Vin 0 1.8 0.01


.control
  run 
  plot A B
.endc 

.end

```
- DC Analysis of Inverter : <br/>
![dc_analysis_nm](https://user-images.githubusercontent.com/53760504/222424153-a64cc35a-8bde-42a1-9248-6d131a7d1b91.png)
- Transient Analysis : <br/>
![inverter_align_trans](https://user-images.githubusercontent.com/53760504/222424087-9654b558-5777-4bcc-822f-561e6168628e.png)

## Manual Layout of Inverter:

## Comparision of Inverter Post-layout Charactristic of Align,Manual: <br/>
|Parameters                           | Align| Manual |
|-------------------------------------|------|--------|
| Rise Time(Tpdr)|      |        |
| Fall Time(Tpdf)|      |        |
| High to Low Propagation Delay(Tph-l)|      |        |
| Low to High Propagation Delay(Tpl-h)|      |        |

## Simulation Of Complex Function <br/>
### Pre-layout Analysis of Complex Function <br/>
-  Fn= [(B+D).(A+C)+E.F]'
- Schematic:
  
 ![fN](https://user-images.githubusercontent.com/53760504/222424488-ba28a761-d01a-4114-9aca-8e95696dd7bc.png)
 
![fn_tb](https://user-images.githubusercontent.com/53760504/222424612-b4c7d84d-94cd-4aea-8932-d7106acfea1b.png)
![FN_2](https://user-images.githubusercontent.com/53760504/222424695-6fc035a3-da30-4daa-8f10-02af7853bb1e.png)
![fn_out](https://user-images.githubusercontent.com/53760504/222424867-bf73d083-196e-4762-af5d-13229610920e.png)

## Post-layout Characteristics of Fn Function Using ALIGN:<br/>
- The Netlist for Generating Fn Function:<br/>
```
.subckt Fn A B C D E F Y vdd vss
XM1 net1 A vdd vdd sky130_fd_pr__pfet_01v8 L=0.15e-9 W=21e-7 nf=10 m=1
XM2 net3 B vdd vdd sky130_fd_pr__pfet_01v8 L=0.15e-9 W=21e-7 nf=10 m=1
XM3 net2 C net1 net1 sky130_fd_pr__pfet_01v8 L=0.15e-9 W=21e-7 nf=10 m=1
XM4 net2 D net3 net3 sky130_fd_pr__pfet_01v8 L=0.15e-9 W=21e-7 nf=10 m=1
XM5 Y E net2 net2 sky130_fd_pr__pfet_01v8 L=0.15e-9 W=21e-7 nf=10 m=1
XM6 Y F net2 net2 sky130_fd_pr__pfet_01v8 L=0.15e-9 W=21e-7 nf=10 m=1
XM7 Y A net4 net4 sky130_fd_pr__nfet_01v8 L=0.15e-9 W=21e-7 nf=10 m=1
XM8 Y C net4 net4 sky130_fd_pr__nfet_01v8 L=0.15e-9 W=21e-7 nf=10 m=1
XM9 Y E net5 net5 sky130_fd_pr__nfet_01v8 L=0.15e-9 W=21e-7 nf=10 m=1
XM10 net4 B vss vss sky130_fd_pr__nfet_01v8 L=0.15e-9 W=21e-7 nf=10 m=1
XM11 net4 D vss vss sky130_fd_pr__nfet_01v8 L=0.15e-9 W=21e-7 nf=10 m=1
XM12 net5 F vss vss sky130_fd_pr__nfet_01v8 L=0.15e-9 W=21e-7 nf=10 m=1
.ends
```
Run the Get Netlist:<br/>
`schematic2layout.py ../ALIGN-pdk-sky130/examples/Fn/ -p ../pdks/SKY130_PDK/`
- Here are the GDS and Lef Files in Klayout:<br/>
![Fn_gds](https://user-images.githubusercontent.com/53760504/222425811-69aae4e4-5df3-4c88-8a8a-c90f56ddfcc5.png)
![Fn_lef](https://user-images.githubusercontent.com/53760504/222425814-c18b256b-2e37-4bae-9f6c-df046e0b26a6.png)

- Open the GDS file in Magic<br/>
- ![Fn_mag](https://user-images.githubusercontent.com/53760504/222426571-0a997709-99b6-42df-ab42-d347b8c011ef.png)
- The Extracted Netlist is As Follows [FN_0.spice](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week2/mag/FN_0.spice)


```
vinayreddy@vsd-mspdr:~/Desktop/mspdr/ALIGN-public/work/mag$ ngspice FN_0.spice
******
** ngspice-39 : Circuit level simulation program
** The U. C. Berkeley CAD Group
** Copyright 1985-1994, Regents of the University of California.
** Copyright 2001-2022, The ngspice team.
** Please get your ngspice manual from http://ngspice.sourceforge.net/docs.html
** Please file your bug-reports at http://ngspice.sourceforge.net/bugrep.html
** Creation Date: Tue Feb 10 08:15:11 UTC 2023
******

Note: No compatibility mode selected!


Circuit: * spice3 file created from fn_0.ext - technology: sky130a

ngspice 2 -> plot Y
Error: no such vector Y
ngspice 3 -> 


```
## Post- Layout of Fn using Magic
# Week3 
## Table of Contents
|SI.No|Action Item |Status|
|-----|------------|------|
| 1   | Installion of OpenFASOC and Other Dependencies|:heavy_check_mark:|
| 2   | Configuring the Sky130A path|:heavy_check_mark:|
| 3   | Generating Temperature Sensor Layout|:heavy_check_mark:|

## OpenFASOC
- OpenFASoC is a project focused on automated analog generation from user specification to GDSII with fully open-sourced tools. It is led by a team of researchers at the University of Michigan and is inspired from FASoC which sits on proprietary software.

The tool is comprised of analog and mixed-signal circuit generators, which automatically create a physical design based on user specifications.

### Installation of openFASOC
- Run the Following Commands.<br/>
```
$  git clone https://github.com/idea-fasoc/openfasoc
$  sudo ./dependencies.sh
```
### Installation of Dependencies
### Yosys
- This is a framework for RTL synthesis tools. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for
   various application domains.Which converts a RTL design to Gate-level Netlist.
Here is a illustrative Example of How the Synthesis Maps the Gate-level-Netlist: 
![yosys_illu](https://user-images.githubusercontent.com/53760504/222668778-3e530c20-8226-4861-8a75-131b89cdd0ea.png)
- Download Dependencies for Yosys
 ```
 $ sudo apt install -y clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev
 ```
 - Clone the Repo
 `$ git clone https://github.com/YosysHQ/yosys.git`
 - Now To Install
 ```
$ cd yosys
$ make
$ sudo make install
 ```
 Now Run `cd` into `/usr/bin` and do:`sudo ln -s /home/user/yosys-dir/yosys yosys`
 
### OpenROAD
- OpenROAD is an integrated chip physical design tool that takes a design from synthesized Verilog to routed layout.

- An outline of steps used to build a chip using OpenROAD is shown below:
    -  Initialize floorplan - define the chip size and cell rows
    -  Place pins (for designs without pads )
    -  Place macro cells (RAMs, embedded macros)
    -  Insert substrate tap cells
    -  Insert power distribution network
    -  Macro Placement of macro cells
    -  Global placement of standard cells
    -  Repair max slew, max capacitance, and max fanout violations and long wires
    -  Clock tree synthesis
    -  Optimize setup/hold timing
    -  Insert fill cells
    -  Global routing (route guides for detailed routing)
    -  Antenna repair
    -  Detailed routing
    -  Parasitic extraction
    -  Static timing analysis
- Before Installing openROAD lemon needs to be instal First https://lemon.cs.elte.hu/trac/lemon/wiki/Downloads.<br/>
### Installtion of OpenROAD
 
```
cd
git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD.git
cd OpenROAD
sudo ./etc/DependencyInstaller.sh                     
cd 

git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts
cd OpenROAD-flow-scripts
./build_openroad.sh –local
export OPENROAD=~/OpenROAD-flow-scripts/tools/OpenROAD
export PATH=/home/vinayreddy/OpenROAD-flow-scripts/tools/install/OpenROAD/bin:/home/vinayreddy/OpenROAD-flow-scripts/tools/install/yosys/bin:/home/vinayreddy/OpenROAD-flow-scripts/tools/install/LSOracle/bin:$PATH
```
### Testing OpenROAD
- Will Perform a RTL2GDSII flow of a ibex(RISC-V Proccessor) <br/>
```
cd OpenROAD-flow-scripts
cd flow
make DESIGN_CONFIG=./designs/sky130hd/ibex/config.mk
```
![test_openroad](https://user-images.githubusercontent.com/53760504/222671123-526bb52c-100e-42db-8ab1-450f2eafc525.png)
![test_gds](https://user-images.githubusercontent.com/53760504/222675361-1d0e813b-b8b1-4db8-8e8d-7052eb18f33a.png)

- After Completing the Flow the GDS,SDC files are Extracted in Location `../OpenROAD-flow-scripts/flow/results/sky130hd/ibex/base/6_final.gds`.<br/>
![results](https://user-images.githubusercontent.com/53760504/222780318-6467c6c0-aef1-4cf2-bcb3-a9a6a311886b.png)

## Configuring the Sky130A pat
- Set the `sky130A` path in file called [platform_config.json](https://github.com/idea-fasoc/OpenFASOC/blob/main/openfasoc/common/platform_config.json) 
 that is inside `OpenFASOC/openfasoc/common/` directory. By default, the file will have the following entries.<br/>
![image](https://user-images.githubusercontent.com/53760504/222674066-e1fcdf4c-858b-4ac4-b2ea-c0f54f01153c.png)
![image](https://user-images.githubusercontent.com/53760504/222674635-9ae927e9-1391-4a2a-b130-0209f23ebc50.png)
## Generating Temperature-Sensor-Layout 
- Introduction to howing of Temperature Sensor Generation using OpenFASOC.<br/>
- The Temperature Sensor Generated is a Mixed-Signal Based On the paper.
`Citation: Q. Zhang et al., "An Open-Source and Autonomous Temperature Sensor Generator Verified With 64 Instances in SkyWater 130 nm for Comprehensive Design Space Exploration," in IEEE Solid-State Circuits Letters, vol. 5, pp. 174-177, 2022, doi: 10.1109/LSSC.2022.3188925.`

- It consists of a ring oscillator whose frequency is controlled by the voltage drop over a MOSFET operating in subthreshold regime, where its dependency on temperature is exponential.

![temperature_sen](https://user-images.githubusercontent.com/53760504/222773250-234ec809-0d16-4780-8711-8d1937713ae3.png)
- The physical implementation of the analog blocks in the circuit is done using two manually designed standard cells:
     - HEADER cell, containing the transistors in subthreshold operation;
     - SLC cell, containing the Split-Control Level Converter.

- The gds and lef files of HEADER and SLC cells are pre-created before the start of the Generator flow.
- The layout of the HEADER cell,SLC Cell is shown below:
![HEADER_gds](https://user-images.githubusercontent.com/53760504/222775777-cae0a7ec-5a29-4166-80bc-fa10b9400e53.png)
![SLC](https://user-images.githubusercontent.com/53760504/222775812-fb33496c-5c66-431c-bb36-1d1fbc717c70.png)
### OpenFASOC flow for Temperature Sensor Generation
- To run the default generator, cd into `~/openfasoc/generators/temp_sense` and use `make sky130hd_temp` If a PDK_ROOT error arises, then provide PDK_ROOT before running the above export `PDK_ROOT=/usr/local/share/pdk`.If OpenROAD not found in path error arises, provide path to openROAD along with PDK_ROOT.
```
export OPENROAD=~/OpenROAD-flow-scripts/tools/OpenROAD/
export PATH=/home/rahul/OpenROAD-flow-scripts/tools/install/OpenROAD/bin:/home/rahul/OpenROAD-flow-scripts/tools/install/yosys/bin:/home/rahul/OpenROAD-flow-scripts/tools/install/LSOracle/bin:$PATH
```
- The default circuit’s physical design generation can be divided into three parts:

   - Verilog generation(:heavy_check_mark:)
   - RTL-to-GDS flow (OpenROAD)(:heavy_check_mark:)
   - Post-layout verification (DRC and LVS)(:heavy_check_mark:)
- After a successful run the following message is displayed
## Verilog Generation:
- To run verilog generation, type the command `make sky130hd_temp_verilog`
![verilog_generation](https://user-images.githubusercontent.com/53760504/222777889-9e92ad0b-a7a4-4a5a-ad3b-7af9eaf8c633.png)
## RTL2GDS Flow.
- Type the Command `make sky130hd_temp`
### Synthesis:
- Synthesis is Performed by yosys.The systhesis verilog codes in `/openfasoc/openfasoc/generators/temp-sense-gen/flow/results/sky130hd/tempsense`
![synthesis](https://user-images.githubusercontent.com/53760504/222778949-def9c22a-10f8-4d99-8893-68dc1a641fe9.png)
### Floorplanning
- The floorplan for the physical design is generated with OpenROAD, which requires a description of the power delivery network in `pdn.cfg`.

![floorplanning](https://user-images.githubusercontent.com/53760504/222779282-461001f2-7d7d-4168-9675-e5f1442b4ba4.png)
### Placement
- Placement takes place after the floorplan is ready and has two phases: global placement and detailed placement. The output of this phase will have all 
instances placed in their corresponding voltage domain, ready for routing.<br/>

![global_placement_power](https://user-images.githubusercontent.com/53760504/222779601-3d21f42e-cbff-4f72-8e8e-c43eb6fa12ec.png)

![detailled_place](https://user-images.githubusercontent.com/53760504/222779615-82a0dd5b-dd68-4524-9014-05cacd9347b4.png)
### Routing
- Routing is also divided into two phases: global routing and detailed routing. Right before global routing, OpenFASoC calls `/openfasoc/openfasoc/generators/temp-sense-gen/flow/scripts/openfasocpre_global_route.tcl`:
![global_route](https://user-images.githubusercontent.com/53760504/222780001-abf13656-0ce3-4f85-9fa4-c72ff6636b87.png)
### Final Report
![final_report](https://user-images.githubusercontent.com/53760504/222780217-cffed09b-c37b-4956-92b5-9d82b5a1e7c8.png)
## Final Layout
![temp_gds](https://user-images.githubusercontent.com/53760504/222780458-55f5f713-1baa-4e4e-b554-a23046051b7e.png)

# Week 4

## Table of Content
|SI.No|Action Item|Status|
|-----|-----------|------|
| 1   |Pre-layout Analysis Three-Stage Ring-Oscillator|:heavy_check_mark:|
| 2   |Post-Layout Analysis of Ring-Oscillator Using Magic|:heavy_check_mark:|
| 3   |Post-layout Analysis of Ring-Oscillator Using Align|:heavy_check_mark:|
| 4   |Design of 4-bit Counter Verilog Blocks | |

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
- Now You Can Run ALIGN to Generate the Layout <br/>
 ![Ring_osc_Align](https://user-images.githubusercontent.com/53760504/223918683-bcae7886-5c60-45f9-8217-6d4434aa5754.png)
 ![ALign_RO2](https://user-images.githubusercontent.com/53760504/223916796-04910882-73cf-4fec-a30d-7f4268d62a86.png)
- Open the GDS In Magic <br/>  
  ![Ring_osc2_AlignGDS](https://user-images.githubusercontent.com/53760504/223916863-d9849bd0-70e8-4159-8e76-56553a748721.png)
- The Extracted Netlist from Magic : [RING_OSC2_0.spice](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week4/ring_osc2/RING_OSC2_0.spice)
   ![Align_Ring_OSc2](https://user-images.githubusercontent.com/53760504/223919815-d8fd13db-f778-4d99-a8e6-a2474e93e566.png)
- Pre-layout Ring-Oscillator and Post-layout Ring-Oscillator with Align have matched.<br/>
 ![ring-osc_prelayout](https://user-images.githubusercontent.com/53760504/225320597-b4547118-715c-4b15-a067-99dcfe761042.png)
 ![Align_Ring_OSc2](https://user-images.githubusercontent.com/53760504/225320749-4a019753-f49e-4644-a691-39c2aee68b6b.png)
# Week 5
|SINO.|Action Item|Status|
|-----|-----------|------|
|1    |Ring Oscillator Pre-layout Analysis|:heavy_check_mark:|
|2    |Ring Oscillator Post-layout Analysis Using ALIGN |:heavy_check_mark:|
|3    |Comparator Circuit Pre-Layout Analysis|:heavy_check_mark:|
|4    |Design of a 1-bit ADC Blocks|:heavy_check_mark:|
|5    |Comparator Circuit Post-layout Using ALIGN|:heavy_check_mark:|
|6    |Comparsion of Pre-layout vs Post Layout of Analog BLocks using ALIGN|:heavy_check_mark:..|
|7    |One-bit Comparator Post-layout Analysis|:heavy_check_mark:|
|8    |Dummy Verilog Codes for Analog Blocks|:heavy_check_mark:|
## Ring Ocillator Prelayout Analysis
The RO design Last Week is Not Compatable with the Comparator(Block) As the RO Frequency is High.So,By increasing the Width,Length Across the circuit the tpd of Unit Inverter is Increased.Hence Decresing the Oscillating Frequency.
!<img src="https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/Week5/images/ring_0sc_prelayout.png">
- Prelayout Transient Analysis
![ring-osc_prelayout](https://user-images.githubusercontent.com/53760504/228714777-5884a25c-92ae-420a-a92a-2064283297c5.png)
## Postlayout Analysis of Ring Osillator Using ALIGN
- Here is the Spice .sp netlist for RO : [ring_osc1.sp](https://github.com/Jayanth-sharma/msvsd2stepadc/tree/main/Week5/images/mag/ALIGN)
![ring_2](https://user-images.githubusercontent.com/53760504/228715114-b5be0ec7-8e95-46b5-9f6f-a988af74d453.png)
![ring_osc1_magic](https://user-images.githubusercontent.com/53760504/228720076-b83a9658-1394-4258-92af-b871b3e70497.png)
![ring_osc_ml_postlayout](https://user-images.githubusercontent.com/53760504/228715169-e8872c76-5144-4a4d-9a20-248a784172e4.png)
## Comparator Circuit Pre-layout Analysis:
- Here is the 1-bit Comparator Circuit:
<p align="center">
<img src= "https://user-images.githubusercontent.com/53760504/228716849-a03bfe03-a1f0-4ac6-bfab-78fb2d2b88d4.png" width="350">
<img src="https://user-images.githubusercontent.com/53760504/228716884-4230c357-1e4e-48eb-94c3-810e86e883d5.png">
<img src="https://user-images.githubusercontent.com/53760504/228716942-0be4f5b9-3acb-4d17-9e2c-54c10e53a838.png"> 
<img src="https://user-images.githubusercontent.com/53760504/229266850-4731788b-4e32-4d9e-be9e-fce9fb12dd9a.png">
</p>

## Post-Layout Analysis of Comparator

- Here is the .sp netlist for Comparator Circuit: [comparator.sp](https://github.com/Jayanth-sharma/msvsd2stepadc/tree/main/Week5/images/mag/ALIGN/comparator)

![comparator_kl](https://user-images.githubusercontent.com/53760504/229266019-d87c79d0-bd59-4472-9c2c-a2851d3608d4.png)
![comparator_layout](https://user-images.githubusercontent.com/53760504/229266028-5ffaa99b-0c1b-423f-8dd1-412449ed5730.png)
![comparator_postlayout](https://user-images.githubusercontent.com/53760504/229266479-da9e23d0-3f1a-4e6f-beaa-b49d7c7c5348.png)
## Comparasion of Prelayout and Post-layout of Analog Blocks
- Analysis of Delay Time and Frequency of Ring Oscillator <br/>
- Analysis of VTC Characteristics of Comparator <br/>
## Full 1-Bit ADC Post-layout Analysis
- Error with Generating Resistor Bridge with Align <br/>
- Tring to Figure out or Attaching Manually <br/>
## Dummy Verilog Codes for Analog Blocks
- 1-bit ADC code Click Here.
<details><summary>1-bit ADC</summary>

```
module async_counter(
    input wire v_bias,
    input wire v_inn,
    output wire  out_bit
);

wire ring_Fout;

RING_OSCILLATOR RING_OSCILLATOR(
    .INP(ring_Fout)
);

COMPARATOR COMPARATOR(
    .INP(ring_Fout),
    .INN(v_inn),
    .BIAS(v_bias),
    .OUT(out_bit)
);

endmodule
```

</details><br>

<details><summary>Comparator</summary>

```
module COMPARATOR(
    input INP,
    input INN,
    input BIAS,
    output OUT
);
endmodule
```
</details><br>

<details><summary>Ring-Oscillator</summary>

```
module RING_OSCILLATOR(
    output INP
);
endmodule
```
</details><br>

# Week 6 


## File Setup
- As will Have Already ran few Designs in Week-5,6.Its Time to Set-up our own file for Design.
- The File is Located and Having Folder As Follows;
![files](https://user-images.githubusercontent.com/53760504/229281015-b1ac909c-6463-4935-97dd-09fa5c4be534.png)
## Configuring the Files
- Take the Analog Blocks Generated In the Previous week to Generate the Asynchronous Counter.<br/>
- But Before Using ALIGN generated Blocks in OpenFASOC make Sure you Do Pin Configuration else the Blocks will no be Routed(Placed) in the Design.<br/>
- Refer [Lef & Gds For OpenFASoC Flow](https://docs.google.com/document/d/1kP4OfnfTaRnrvsRnuF9YNMRlUsCW8RBZV5Tn6Ta41eM/edit)<br/>
- Now First Lets Configure the Blocks.<br/>
![image](https://user-images.githubusercontent.com/53760504/229282071-205a8229-9eea-45c3-a707-e3dd07b89989.png)
- Place the Gds,Lef Files You Generated by Naming the folder as Platform Name.<br/>
- The [pdn.tcl](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/Week6/async_counter-gen/blocks/sky130hd/pdn.tcl) refers to Power Disturbution Network which has The Detials of Placeing Power Port and Metals to be Used for the Design.<br/>
- Now Moving to the Most Critical part of the Design Flow Folder.<br/>
![image](https://user-images.githubusercontent.com/53760504/229283614-305ace24-8534-4d4b-9f47-9f02adaf5538.png)
- Design Folder Consists of Files <br/>
![image](https://user-images.githubusercontent.com/53760504/229284442-4cfe013a-c9d2-463d-8090-512f5de1dbe2.png)
- src consists of Dummy Verilog/Verilog Files for the Design.<br/>
- Config.mk File Have the Following Attributes.<br/>
![image](https://user-images.githubusercontent.com/53760504/229284727-c71e3e22-0b6c-45a2-bd29-c0b6e2ccf335.png)
- Now Configure the Makefile to run the Flow.<br/>
![image](https://user-images.githubusercontent.com/53760504/229284795-774bab42-f49a-47c3-97ba-5ceac5c3a888.png)
- Other Files like logs,results,utils,report are Generated by OpenFASOC.
- Srcipts consist the Flow for running the Flow In various Stages of the Flow.
![image](https://user-images.githubusercontent.com/53760504/229284985-4c5ac43d-82a9-44d8-9d7b-422fe93f65a3.png)
## Run the Flow.
- Make All Necessary Changes in the Files and To Run complete Flow Use `make sky130hd_verilog` and `make sky130hd_build`
- Or to Run the Flow Interactively refer [Make Interactively](https://github.com/idea-fasoc/OpenFASOC/blob/b9784507aac426970b56492f8327033e1a4feb15/docs/source/flow-ldo.rst).
- Verilog Generation.<br/>
![verilog_generation](https://user-images.githubusercontent.com/53760504/229285191-4cef5afa-57d9-49d5-8ec1-244ce1037858.png)
- Synthesis<br/>
![synth_](https://user-images.githubusercontent.com/53760504/229285202-1bfed663-f125-4cfd-a2a8-4a6ed4daa950.png)
- floorplanning<br/>
![floorplan_report](https://user-images.githubusercontent.com/53760504/229285214-b72fb4df-4ec4-4611-b03f-822d5db205de.png)
- Place<br/>
![place](https://user-images.githubusercontent.com/53760504/229285227-aa5f2ea3-fbeb-43da-b52a-e6dd1af40ee0.png)
- Route<br/>
![after_0viol](https://user-images.githubusercontent.com/53760504/229285258-0ff80dbd-f6e5-44a1-afae-b8875a06f7d1.png)
![place_report](https://user-images.githubusercontent.com/53760504/229285264-17fbb4f3-4dcd-41ca-a41f-2f1daee04263.png)
## Files Generated<br/>
![logs](https://user-images.githubusercontent.com/53760504/229285297-f54243c1-6b6d-4073-99ad-b2c90f2efef7.png)

![results](https://user-images.githubusercontent.com/53760504/229285294-4a756a9d-c6bf-4057-802d-47b591135daa.png)
## Final GDS
![async_counter](https://user-images.githubusercontent.com/53760504/229285314-ef3187d7-4a1e-4e20-a112-e5c75e0edd71.png)
## Area- Optimisation of the Design
- Now Add `manual_macros.tcl` in blocks Folder
![image](https://user-images.githubusercontent.com/53760504/229288596-0a76d8e6-9e41-4d8e-957a-a851828c0a83.png)
- Add the Line `29-30` to place the Blocks
 ![image](https://user-images.githubusercontent.com/53760504/229288980-24be6a97-134c-45ea-8dd2-fba234d8ed73.png)
- where `MACRO_PLACE_HALO` defines the Space Between the Macros.
- And `MARCO_PLACE_CHANNEL` defines Wiring Space.
- And the Macro placement TCL files
![area_optimized_Analog_blocks](https://user-images.githubusercontent.com/53760504/229285336-becdbe92-db77-4bfb-8720-e78aee6276e4.png)
![analog_blockmag](https://user-images.githubusercontent.com/53760504/229285340-4205d8b7-7379-4d25-aa1a-02c27d3237e5.png)
## Including 4-Bit Counter into the Design.
- Counter Circuit RTL file and Test bench<br/>
<details><summary>ud_counter.v</summary>

```
module ud_counter (input clk,
                input rstn,
                output reg [3:0] out);
wire [3:0] cnt;              
tff t0(.clk(clk),.rstn(rstn),.t(1'b1),.q(cnt[0]));
tff t1(.clk(cnt[0]),.rstn(rstn),.t(1'b1),.q(cnt[1]));
tff t2(.clk(cnt[1]),.rstn(rstn),.t(1'b1),.q(cnt[2]));
tff t3(.clk(cnt[2]),.rstn(rstn),.t(1'b1),.q(cnt[3]));               
always@*
begin
 out<=cnt;
end
endmodule

module tff(input clk,input rstn,input t,output reg q);
always @ (negedge clk)begin
if(!rstn)
  q<=0;
else 
   if(t)
    q<=~q;
   else
    q<=q;
end
endmodule 

```
</details><br>
<details><summary>tb_counter.v</summary>

```
`timescale 1ns/1ps
module tb_counter();
reg clk,rstn;
wire [3:0]out;

ud_counter c0(clk,rstn,out);

always #5 clk=~clk;
initial
 begin
    $dumpfile("tb_counter.vcd");
    $dumpvars(0,tb_counter);
 end

initial begin
  clk<=0;
  rstn<=0;
  #20 rstn<=1;
  #150 rstn<=0;
  #50 rstn<=1;
  #200$finish;
end
endmodule
 

```
</details><br>


![counter_wave](https://user-images.githubusercontent.com/53760504/229285385-1e16b8cd-13e4-4cce-9416-e3ec7391527e.png)
## Configuring SRC files and Scripts
<p align="center">
<img src="https://user-images.githubusercontent.com/53760504/229297491-5a1e0a76-a603-4a0f-969c-52c18de33e75.png">
<img src="https://user-images.githubusercontent.com/53760504/229297866-f5c6dd40-8b7e-458a-811b-409531cf2919.png">
<img src="https://user-images.githubusercontent.com/53760504/229297931-88c8d812-101b-4dd8-8468-66fc81bafeef.png">
</p>
- Facing this Error After Making Changes According to The Verilog Files<br/>
 
![image](https://user-images.githubusercontent.com/53760504/229298183-5b18dd98-0d71-46e2-b3e3-b6ca6da55a90.png)

# Week 7
|SI|Action Item|Status|
|--|-----------|------|
|1 |Pre-Layout Analysis of Two-Bit ADC(Course)|:heavy_check_mark:|
|2 |Post-layout Analysis of Two-bit ADC(Course)|:heavy_check_mark:|
|3 |Pre-layout Analysis of Sample and Hold Circuit|:heavy_check_mark:|
|4 |Post-layout Analysis of Sample and Hold Circuit|:heavy_check_mark:|
|5 |Pre-layout Analysis of 2-bit DAC Circuit|:heavy_check_mark:|
|6 |Postlayout Analysis of 2-bit DAC Circuit|:heavy_check_mark:|
|7 |Residue Amplifier Circuit|:heavy_check_mark:|
|8 |Post-Layout Residue Amplifier Circuit|:heavy_check_mark:|
# Two-Step Flash ADC Specifications
- To Design a Subranging ADC we Neea the Following Blocks.<br/>
![image](https://user-images.githubusercontent.com/53760504/230632429-7ce61585-d8c8-447d-b613-2210b05f7771.png)
- (Note:The DAC block Should be 4 bit Accurate).<br/>
- Fine ADC With More Accurate Resolution.<br/>
- Design Spec to Consider.<br/>
## Prelayout Analysis of Two Bit Flash ADC
- Analog-Digital Converter Consists of a 3-Comparator Circuits and Resistive Bridge.<br/>
- The Output of the ADC Analog Block is As Follows.<br/>
 - 2 bit Flash ADC:
    | input Voltage      |    C3C2C1     |   b1b0     |
    | -------------      | ------------- |------------|
    | 0<Vin<Vref/4       |     000       |    00      |
    | Vref/4<Vin<Vref/2  |     001       |    01      |
    | Verf/2<Vin<Vref    |     011       |    10      |
    | Vref<Vin           |     111       |    11      |
    
    <p align="centre">
    <img weigth="400"src="https://user-images.githubusercontent.com/53760504/229358700-3198e0ef-5d59-41c2-acb1-73f0764a5eb6.png">
    <img weigth="400" src="https://user-images.githubusercontent.com/53760504/229436323-0d16a1ea-0ea6-4b6b-a45d-558074c01b60.png">
    <img weigth="400" src="https://user-images.githubusercontent.com/53760504/229369963-8b3db435-6217-4dcb-aeb9-7c747c696281.png">
    <img weigth="400" src="https://user-images.githubusercontent.com/53760504/229370159-a1e8dc35-0a3b-4f3b-8f47-8d05a475c1db.png">
    <img weight="400" src="https://user-images.githubusercontent.com/53760504/229433384-8cf98706-db26-4820-8a05-50502c4ab8ac.png">
    </p>
## Post-layout Analysis of Two Step Flash ADC
- Here is the `Twobit_Flash_ADC.sp`:


|     GDS File              |      Lef file              |
:--------------------------:|:---------------------------:
![](https://user-images.githubusercontent.com/53760504/229450299-0e53d175-7936-45b2-b091-6970d7b2acaa.png)|![](https://user-images.githubusercontent.com/53760504/229450795-ed898059-067f-43f1-bb7d-b16b9c003d08.png)

- Extracted Netlist From Magic After Modification.<br/>
- Facing Error With C2,C3 Signal.

![image](https://user-images.githubusercontent.com/53760504/229669659-0cb87aea-770e-42aa-8910-929699524425.png)

- This Raised Due to Prasitics in the Layout.Which are minimising the Frequency of Operation.(1Ghz,Max-600MHz)
## Comprasion Between Prelayout and Postlayout Analysis of Comparator
| Prelayout - At 100Mhz         |  Postlayout -At 100MHz   |
:------------------------------:|:-------------------------:
![](https://user-images.githubusercontent.com/53760504/229501982-af092483-b829-4ae2-ba3e-de7be7ca5782.png)|![](https://user-images.githubusercontent.com/53760504/229668911-a8102aa3-575f-4c18-84c9-8a4c0510d17b.png)


## Pre-layout Analysis of 2-bit DAC Circuit
### Switch design and simulation
- This Chractristics then the Standard one [avsddac_3v3_sky130_v2](https://github.com/vsdip/avsddac_3v3_sky130_v2).

![image](https://user-images.githubusercontent.com/53760504/230348712-f62cac16-8778-417e-9afa-841c401384ec.png)

![image](https://user-images.githubusercontent.com/53760504/230353711-efa6087f-02ec-4065-9548-f1b4b9901d8d.png)

![image](https://user-images.githubusercontent.com/53760504/230354559-0a6c46a2-8628-4a9e-84e4-6839a95df71a.png)

![image](https://user-images.githubusercontent.com/53760504/230355148-095b8ec8-8b10-446a-9d0e-6669281945fe.png)

### Pre-layout Analysis of 2-bit DAC
![image](https://user-images.githubusercontent.com/53760504/230355866-d213229a-e940-4a10-8ef2-2496cc1a476a.png)

![image](https://user-images.githubusercontent.com/53760504/230358961-a0810c32-f132-49af-9e31-759d7c89cfec.png)

![image](https://user-images.githubusercontent.com/53760504/230359140-06357322-ee91-49ef-8cc0-4ffa1a5d212f.png)

## Post-layout Analysis of 2-Bit DAC
|     GDS File              |      Lef file              |
:--------------------------:|:---------------------------:
![image](https://user-images.githubusercontent.com/53760504/230377361-f92fcfca-6570-4fac-9392-fc665c95cb12.png)|![image](https://user-images.githubusercontent.com/53760504/230377449-94aaf218-33e0-4125-9bc2-564691013471.png)
- Some Glitch with Prasitics.<br/>
![image](https://user-images.githubusercontent.com/53760504/230375996-880ba0c6-4103-42f3-a24e-5be9223ff4da.png)

|      Connects Ports          |      Power Ports           |
:-----------------------------:|:---------------------------:
![Port2_DAC](https://user-images.githubusercontent.com/53760504/230708022-21d6c9b6-4ffc-4efc-a6df-cc23f52080b5.png)|![](https://user-images.githubusercontent.com/53760504/230707936-1a9dbf1a-59af-4f26-b7a9-941e191d92f2.png)

- There Still Some Issue with a Port at Layout<br/>
![DAC_Postlayout](https://user-images.githubusercontent.com/53760504/230708168-0e9198fc-88dd-4aa4-bb16-a24332375716.png)
## Sample and Hold Circuit Pre-layout Analysis
- 
## Sample and Hold Circuit Post-Layout Analysis
- 
## Subtrator and Residue Amplifier Pre-layout Analysis
-
## Subtractor And Residue Amplifer Post-layout Analysis
-

## TODO
## Comparasion of Post-layout vs Prelayout
- Two Bit ADC:
- Delay,Rise Time,Fall Time.
- DAC Resolution,settling Time,Overshoots(INL,DNL).
- Connecting Resistors with References :x:


|SI No.|Action Item|Status|
|------|-----------|------|
|1     |Two-Bit ADC with Resistor Bridge Uisng ALIGN|:heavy_check_mark:|
|2     |Two-Bit DAC with Resistor Bridge Using ALIGN|:heavy_check_mark:|
|3     |Subtractor and Residue Amplifier Circuit using ALIGN|:heavy_check_mark:|
|4     |Sample and Hold Circuit Using Align|:Heavy_check_mark:|
|5     |Two-Bit ADC using OpenFASOC|:Heavy_check_mark:|
|6     |Two-Bit ADC + DAC interfacing using OpenFASOC |:o:|
## Two-bit ADC with Resistor Bridge Using Align.
- To Generated the Layout of Two-bit Align.<br/>

![subcircuit_res_ADC](https://user-images.githubusercontent.com/53760504/232196645-ec8aac03-fcd2-4934-8774-0f69ade9bc08.png)

- With Capacitor to be Replaced with Resistors.<br/>


|     GDS File                |      Lef file              |
:----------------------------:|:---------------------------:
![](https://user-images.githubusercontent.com/53760504/232196349-02da5f11-5643-4d46-b19f-d0eef5cbf0ca.png)|![](https://user-images.githubusercontent.com/53760504/232196339-210599a1-395b-48d7-aebe-ed94e97cb183.png)

- Replacing Caps with Resistor in `.python.gds` file.<br/>
![Res_DAC](https://user-images.githubusercontent.com/53760504/232196434-074579e5-07fd-4d79-b48b-149eb0c5fe54.png)
- After Placing Pins the Extracted Netlist is :<br/>
- The Postlayout Analysis of ADC with Resistive Brigde.

![ADC_out](https://user-images.githubusercontent.com/53760504/232196731-f6792f2a-0a36-4ce6-9a8e-afd1495b32e8.png)
![Two_Bit_ADC_10MHZ](https://user-images.githubusercontent.com/53760504/232196734-9d4113c2-bba9-49f5-9f2b-442952c39b28.png)
- Error with Extrating The Precise value of Resistor from GDS file.<br/>
## DAC with Resistor Bridge Using Align

![image](https://user-images.githubusercontent.com/53760504/232207956-f4f4dd5e-4db3-47e1-837c-63dcdfa25a1a.png)

|     GDS File                |      Lef file              |
:----------------------------:|:---------------------------:
![image](https://user-images.githubusercontent.com/53760504/232223420-e967528d-e58e-4121-9668-2f75c5550da4.png)|![image](https://user-images.githubusercontent.com/53760504/232223470-e8f9f76a-1db1-44a6-9430-7732db0d85eb.png)

- replacing Caps with Resistors<br/>

![image](https://user-images.githubusercontent.com/53760504/232226460-9b147dd2-f62e-4a85-91d1-0391fbd1d2ba.png)

![image](https://user-images.githubusercontent.com/53760504/232226416-57c9f2ff-8597-4f84-8c8a-dbbb6a70c87e.png)



