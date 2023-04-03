
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
    
    
    ![two_bitadc_ckt](https://user-images.githubusercontent.com/53760504/229358700-3198e0ef-5d59-41c2-acb1-73f0764a5eb6.png)
    ![image](https://user-images.githubusercontent.com/53760504/229370293-b4c86b32-768b-46c1-8f1e-fafe64d0ee68.png)
    ![image](https://user-images.githubusercontent.com/53760504/229369963-8b3db435-6217-4dcb-aeb9-7c747c696281.png)  
    ![image](https://user-images.githubusercontent.com/53760504/229370159-a1e8dc35-0a3b-4f3b-8f47-8d05a475c1db.png)
    ![image](https://user-images.githubusercontent.com/53760504/229433384-8cf98706-db26-4820-8a05-50502c4ab8ac.png)

## Post-layout Analysis of Two Step Flash ADC
