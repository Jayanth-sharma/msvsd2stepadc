## Table of Contents
|SI.No|Action Item |Status|
|-----|------------|------|
| 1   | Installion of OpenFASOC and Other Dependencies|:heavy_check_mark:|
| 2   | Configuring the Sky130A path|:heavy_check_mark:|
| 3   | Generating Temperature Sensor Layout|:heavy_check_mark:|

## OpenFASOC
- OpenFASoC is a project focused on automated analog generation from user specification to GDSII with fully open-sourced tools. It is led by a 
team of researchers at the University of Michigan and is inspired from FASoC which sits on proprietary software.

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


