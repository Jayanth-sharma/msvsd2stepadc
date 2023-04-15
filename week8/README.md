|SI No.|Action Item|Status|
|------|-----------|------|
|1     |Two-Bit ADC with Resistor Bridge Uisng ALIGN|:heavy_check_mark:|
|2     |Two-Bit DAC with Resistor Bridge Using ALIGN|:heavy_check_mark:|
|3     |Subtractor and Residue Amplifier Circuit using ALIGN|:heavy_check_mark:|
|4     |Sample and Hold Circuit Using Align|:o:|
|5     |Two-Bit ADC using OpenFASOC|:o:|
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

![image](https://user-images.githubusercontent.com/53760504/232223493-41231969-de65-4824-a907-d31a4c8697e6.png)




