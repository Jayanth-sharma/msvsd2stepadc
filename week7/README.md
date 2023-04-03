
|SI|Action Item|Status|
|--|-----------|------|
|1 |Pre-Layout Analysis of Two-Bit ADC(Course)|:heavy_check_mark:|
|2 |Post-layout Analysis of Two-bit ADC(Course)|:x:|
|3 |Pre-layout Analysis of Sample and Hold Circuit|:heavy_check_mark:|
|4 |Post-layout Analysis of Sample and Hold Circuit|:x:|
|5 |Pre-layout Analysis of 2-bit DAC Circuit|:heavy_check_mark:|
|6 |Postlayout Analysis of 2-bit DAC Circuit|:x:|

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
<p align="center">
<img weight="400"  src="https://user-images.githubusercontent.com/53760504/229450299-0e53d175-7936-45b2-b091-6970d7b2acaa.png">
<img weigth="400"  src="https://user-images.githubusercontent.com/53760504/229450795-ed898059-067f-43f1-bb7d-b16b9c003d08.png">
</p>
- Extracted Netlist From Magic After Modification.<br/>
- Facing Error With C1 Signal.

![image](https://user-images.githubusercontent.com/53760504/229471327-2ed91f4d-c61e-4391-a546-6ef19f92835b.png)
- This Raised Due to Prasitics in the Layout.Which are minimising the Frequency of Operation.(1Ghz)
## Comprasion Between Prelayout and Postlayout Analysis of Comparator
| Prelayout - At 100Mhz    |  Postlayout -At 100MHz   |
:-------------------------:|:-------------------------:
![](https://user-images.githubusercontent.com/53760504/229501982-af092483-b829-4ae2-ba3e-de7be7ca5782.png)|![](https://user-images.githubusercontent.com/53760504/229502349-d675a001-4714-488c-9a1e-e1ffff7eaf8a.png)

