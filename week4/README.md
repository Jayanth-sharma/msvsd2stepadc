## Table of Content
|SI.No|Action Item|Status|
|-----|-----------|------|
| 1   |Pre-layout Analysis Three-Stage Ring-Oscillator|:heavy_check_mark:|
| 2   |Post-Layout Analysis of Ring-Oscillator Using Magic|:heavy_check_mark:|
| 3   |Post-layout Analysis of Ring-Oscillator Using Align|:o:|

## Pre-layout Analysis of Ring-Oscillator
- A ring oscillator is a self-toggling circuit that generates clock-like pulses without any external input, other than the power that it needs.Here a 3 staged  Cascaded inverter B2B.

![ring_os_schem](https://user-images.githubusercontent.com/53760504/222785341-e91ade4f-b632-4bc5-a5a1-cc74c0bdbae9.png)
- This Circuit Generates the Following Netlist: [ring_os.spice](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/week4/ring_osc_pl/ring_osc.spice)
- The Test Circuit for ring oscillator
  
![ring_osc_tb](https://user-images.githubusercontent.com/53760504/222791111-e7e21212-6faa-43d6-a2c8-934e8c4dccd4.png)
![ring-osc_prelayout](https://user-images.githubusercontent.com/53760504/222791161-9ab39529-3ce4-4a69-91ad-06cc14b4f945.png)

## Post-layout Analysis of Ring Oscillator
- Manual Layout of a Three-Stage Ring Oscillator
  ![ring_osc2_layoutmanual](https://user-images.githubusercontent.com/53760504/223493101-5070a484-1bd5-4beb-8662-5a83ad0ce275.png)
- You can Find the Netlist Here:
  ![ring_osc_ml_postlayout](https://user-images.githubusercontent.com/53760504/223493769-158fb167-881d-4780-8ffc-6c6190a4af8c.png)
