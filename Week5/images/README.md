
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

