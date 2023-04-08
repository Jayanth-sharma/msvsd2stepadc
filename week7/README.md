
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
# Two-Step Flash ADC Specifications
- To Design a Subranging ADC we Neea the Following Blocks.<br/>
![image](https://user-images.githubusercontent.com/53760504/230632429-7ce61585-d8c8-447d-b613-2210b05f7771.png)
- (Note:The DAC block Should be 4 bit Accurate).<br/>
- Fine ADC With More Accurate Resolution.<br/>
- Design Spec to Consider.<br/>
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

![image](https://user-images.githubusercontent.com/53760504/230353711-efa6087f-02ec-4065-9548-f1b4b9901d8d.png)

![image](https://user-images.githubusercontent.com/53760504/230354559-0a6c46a2-8628-4a9e-84e4-6839a95df71a.png)

![image](https://user-images.githubusercontent.com/53760504/230355148-095b8ec8-8b10-446a-9d0e-6669281945fe.png)

### Pre-layout Analysis of 2-bit DAC
![image](https://user-images.githubusercontent.com/53760504/230355866-d213229a-e940-4a10-8ef2-2496cc1a476a.png)

![image](https://user-images.githubusercontent.com/53760504/230358961-a0810c32-f132-49af-9e31-759d7c89cfec.png)

![image](https://user-images.githubusercontent.com/53760504/230359140-06357322-ee91-49ef-8cc0-4ffa1a5d212f.png)

## Post-layout Analysis of 2-Bit DAC
|     GDS File              |      Lef file              |
:--------------------------:|:---------------------------:
![image](https://user-images.githubusercontent.com/53760504/230377361-f92fcfca-6570-4fac-9392-fc665c95cb12.png)|![image](https://user-images.githubusercontent.com/53760504/230377449-94aaf218-33e0-4125-9bc2-564691013471.png)
- Some Glitch with Prasitics.<br/>
![image](https://user-images.githubusercontent.com/53760504/230375996-880ba0c6-4103-42f3-a24e-5be9223ff4da.png)

|      Connects Ports          |      Power Ports           |
:-----------------------------:|:---------------------------:
![Port2_DAC](https://user-images.githubusercontent.com/53760504/230708022-21d6c9b6-4ffc-4efc-a6df-cc23f52080b5.png)|![](https://user-images.githubusercontent.com/53760504/230707936-1a9dbf1a-59af-4f26-b7a9-941e191d92f2.png)

- There Still Some Issue with a Port at Layout<br/>
![DAC_Postlayout](https://user-images.githubusercontent.com/53760504/230708168-0e9198fc-88dd-4aa4-bb16-a24332375716.png)
## TODO
## Comparasion of Post-layout vs Prelayout
- Two Bit ADC:
- Delay,Rise Time,Fall Time.
- DAC Resolution,settling Time,Overshoots(INL,DNL).
- Connecting Resistors with References :x:
