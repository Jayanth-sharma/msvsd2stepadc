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
