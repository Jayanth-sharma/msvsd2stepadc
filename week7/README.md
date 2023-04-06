
|SI|Action Item|Status|
|--|-----------|------|
|1 |Pre-Layout Analysis of Two-Bit ADC(Course)|:heavy_check_mark:|
|2 |Post-layout Analysis of Two-bit ADC(Course)|:heavy_check_mark:|
|3 |Pre-layout Analysis of Sample and Hold Circuit|:heavy_check_mark:|
|4 |Post-layout Analysis of Sample and Hold Circuit|:x:|
|5 |Pre-layout Analysis of 2-bit DAC Circuit|:heavy_check_mark:|
|6 |Postlayout Analysis of 2-bit DAC Circuit|:heavy_check_mark:|
|7 |Residue Amplifier Circuit|:heavy_check_mark:|
|8 |Post-Layout Residue Amplifier Circuit|:x:|

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

- This Raised Due to Prasitics in the Layout.Which are minimising the Frequency of Operation.(1Ghz)
## Comprasion Between Prelayout and Postlayout Analysis of Comparator
| Prelayout - At 100Mhz         |  Postlayout -At 100MHz   |
:------------------------------:|:-------------------------:
![](https://user-images.githubusercontent.com/53760504/229501982-af092483-b829-4ae2-ba3e-de7be7ca5782.png)|![](https://user-images.githubusercontent.com/53760504/229668911-a8102aa3-575f-4c18-84c9-8a4c0510d17b.png)


## Pre-layout Analysis of 2-bit DAC Circuit
### Switch design and simulation
- This Circit is Showing Error in delay/Chrastristics then the Standard one [avsddac_3v3_sky130_v2](https://github.com/vsdip/avsddac_3v3_sky130_v2).

![image](https://user-images.githubusercontent.com/53760504/230348712-f62cac16-8778-417e-9afa-841c401384ec.png)

![switch_sch](https://user-images.githubusercontent.com/53760504/230095482-4426b406-672b-4a47-9be3-f6cdfb111cc7.png)

![switch_tb](https://user-images.githubusercontent.com/53760504/230095548-d869229d-d5c5-4ac1-9749-985309817eea.png)

![error_switch](https://user-images.githubusercontent.com/53760504/230097780-a687c571-99dd-480c-a0d4-c7e7490039b1.png)
### Pre-layout Analysis of 2-bit DAC
![tb_2bit_dac](https://user-images.githubusercontent.com/53760504/230098800-ba18c12a-cf04-4f7b-af58-d9d234c70c00.png)
- The Error in Switch has Tolerated the Output of of 2bit-DAC to invert.
![two_bit_dac_out_error](https://user-images.githubusercontent.com/53760504/230098834-96c9a331-50eb-4038-b542-f97dbbc242bd.png)
