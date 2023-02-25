# Week0
| Section No.| Action Item                     |    Status    |
| -----------| ------------------------------  | ------------ |
|        1   |Install Virtual Box,Ubuntu 20.04 |:heavy_check_mark:|
|        2   |Install Xschem,Magic,open_pdks,netgen|:heavy_check_mark:|
|        3   |Prelayout Simulation of Inverter using Xschem,Ngspice |:heavy_check_mark:|
|        4   |Postlayout Simulation of Inverter using Magic,Ngspice |:heavy_check_mark:|
|        5   |Comparing Postlayout vs Prelayout of Inverter         |:heavy_check_mark:| 
|        6   |Design of Pre,Postlayout Simulations of Complex Function using General PDKs|:o:|
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
 
    To Run The post-layout Simulation of Inverter use the command.<br/>
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
   
## Prelayout Analysis of Complex Function using General PDKs:
- 

