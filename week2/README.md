 # Week2
 | SI.No |  Action Item  | Status|
 | ----- | ------------- |-------|
 |  1    | Install Align  |:heavy_check_mark:|
 |  2    | Postlayout Characteristics of Inverter using Align|:heavy_check_mark:|
 |  3    | Compare Postlayout Char of Align vs Magic         |:heavy_check_mark:|
 |  4    | Design and Simulation of Complex Fn using Sky130 PDKs|:o:|
 |  5    | Postlayout Characteristics of Complex Function using Magic|:o: |
 |  6    | Postlayout Characteristics using Align|:o:|
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
     ![](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week2/Images/ota_5t_gds.png)  |  ![](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week2/Images/ota_5t_lef.png)
  
   
