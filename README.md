# msvsd2stepadc
VSD Mixed-signal PD Research Program

# Week0

## A Warmup and Getting Started with the flow with install of Tools and Use.<br/>
   Align<br/>
   magic<br/>
   ngspice<br/>
   netgen<br/>
   open_pdks<br/>
   xshem<br/>
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
   $ mkdir inv_lab
   $ cd inv_lab
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
 - magic Check
 - netgen
  
 - xschem check 
  

 - ngspice
 
 ## Pre-layout Inverter using Xschem
    To combined Sky130 library file with xschem run the following commands.
    
     `xschem --rcfile /usr/local/share/pdk/sky130A/libs.tech/xschem/xschemrc`
    

