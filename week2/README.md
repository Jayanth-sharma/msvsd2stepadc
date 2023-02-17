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
