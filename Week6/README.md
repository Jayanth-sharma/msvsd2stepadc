


## File Setup
- As will Have Already ran few Designs in Week-5,6.Its Time to Set-up our own file for Design.
- The File is Located and Having Folder As Follows;
![files](https://user-images.githubusercontent.com/53760504/229281015-b1ac909c-6463-4935-97dd-09fa5c4be534.png)
## Configuring the Files
- Take the Analog Blocks Generated In the Previous week to Generate the Asynchronous Counter.<br/>
- But Before Using ALIGN generated Blocks in OpenFASOC make Sure you Do Pin Configuration else the Blocks will no be Routed(Placed) in the Design.<br/>
- Refer [Lef & Gds For OpenFASoC Flow](https://docs.google.com/document/d/1kP4OfnfTaRnrvsRnuF9YNMRlUsCW8RBZV5Tn6Ta41eM/edit)<br/>
- Now First Lets Configure the Blocks.<br/>
![image](https://user-images.githubusercontent.com/53760504/229282071-205a8229-9eea-45c3-a707-e3dd07b89989.png)
- Place the Gds,Lef Files You Generated by Naming the folder as Platform Name.<br/>
- The [pdn.tcl](https://github.com/Jayanth-sharma/msvsd2stepadc/blob/main/Week6/async_counter-gen/blocks/sky130hd/pdn.tcl) refers to Power Disturbution Network which has The Detials of Placeing Power Port and Metals to be Used for the Design.<br/>
- Now Moving to the Most Critical part of the Design Flow Folder.<br/>
![image](https://user-images.githubusercontent.com/53760504/229283614-305ace24-8534-4d4b-9f47-9f02adaf5538.png)
- Design Folder Consists of Files <br/>
![image](https://user-images.githubusercontent.com/53760504/229284442-4cfe013a-c9d2-463d-8090-512f5de1dbe2.png)
- src consists of Dummy Verilog/Verilog Files for the Design.<br/>
- Config.mk File Have the Following Attributes.<br/>
![image](https://user-images.githubusercontent.com/53760504/229284727-c71e3e22-0b6c-45a2-bd29-c0b6e2ccf335.png)
- Now Configure the Makefile to run the Flow.<br/>
![image](https://user-images.githubusercontent.com/53760504/229284795-774bab42-f49a-47c3-97ba-5ceac5c3a888.png)
- Other Files like logs,results,utils,report are Generated by OpenFASOC.
- Srcipts consist the Flow for running the Flow In various Stages of the Flow.
![image](https://user-images.githubusercontent.com/53760504/229284985-4c5ac43d-82a9-44d8-9d7b-422fe93f65a3.png)
## Run the Flow.
- Make All Necessary Changes in the Files and To Run complete Flow Use `make sky130hd_verilog` and `make sky130hd_build`
- Or to Run the Flow Interactively refer [Make Interactively](https://github.com/idea-fasoc/OpenFASOC/blob/b9784507aac426970b56492f8327033e1a4feb15/docs/source/flow-ldo.rst).
- Verilog Generation.<br/>
![verilog_generation](https://user-images.githubusercontent.com/53760504/229285191-4cef5afa-57d9-49d5-8ec1-244ce1037858.png)
- Synthesis<br/>
![synth_](https://user-images.githubusercontent.com/53760504/229285202-1bfed663-f125-4cfd-a2a8-4a6ed4daa950.png)
- floorplanning<br/>
![floorplan_report](https://user-images.githubusercontent.com/53760504/229285214-b72fb4df-4ec4-4611-b03f-822d5db205de.png)
- Place<br/>
![place](https://user-images.githubusercontent.com/53760504/229285227-aa5f2ea3-fbeb-43da-b52a-e6dd1af40ee0.png)
- Route<br/>
![after_0viol](https://user-images.githubusercontent.com/53760504/229285258-0ff80dbd-f6e5-44a1-afae-b8875a06f7d1.png)
![place_report](https://user-images.githubusercontent.com/53760504/229285264-17fbb4f3-4dcd-41ca-a41f-2f1daee04263.png)
## Files Generated<br/>
![logs](https://user-images.githubusercontent.com/53760504/229285297-f54243c1-6b6d-4073-99ad-b2c90f2efef7.png)

![results](https://user-images.githubusercontent.com/53760504/229285294-4a756a9d-c6bf-4057-802d-47b591135daa.png)
## Final GDS
![async_counter](https://user-images.githubusercontent.com/53760504/229285314-ef3187d7-4a1e-4e20-a112-e5c75e0edd71.png)
## Area- Optimisation of the Design
- Now Add `manual_macros.tcl` in blocks Folder
![image](https://user-images.githubusercontent.com/53760504/229288596-0a76d8e6-9e41-4d8e-957a-a851828c0a83.png)
- Add the Line `29-30` to place the Blocks
 ![image](https://user-images.githubusercontent.com/53760504/229288980-24be6a97-134c-45ea-8dd2-fba234d8ed73.png)
- where `MACRO_PLACE_HALO` defines the Space Between the Macros.
- And `MARCO_PLACE_CHANNEL` defines Wiring Space.
- And the Macro placement TCL files
![area_optimized_Analog_blocks](https://user-images.githubusercontent.com/53760504/229285336-becdbe92-db77-4bfb-8720-e78aee6276e4.png)
![analog_blockmag](https://user-images.githubusercontent.com/53760504/229285340-4205d8b7-7379-4d25-aa1a-02c27d3237e5.png)
## Including 4-Bit Counter into the Design.
- Counter Circuit RTL file and Test bench<br/>
<details><summary>ud_counter.v</summary>

```
module ud_counter (input clk,
                input rstn,
                output reg [3:0] out);
wire [3:0] cnt;              
tff t0(.clk(clk),.rstn(rstn),.t(1'b1),.q(cnt[0]));
tff t1(.clk(cnt[0]),.rstn(rstn),.t(1'b1),.q(cnt[1]));
tff t2(.clk(cnt[1]),.rstn(rstn),.t(1'b1),.q(cnt[2]));
tff t3(.clk(cnt[2]),.rstn(rstn),.t(1'b1),.q(cnt[3]));               
always@*
begin
 out<=cnt;
end
endmodule

module tff(input clk,input rstn,input t,output reg q);
always @ (negedge clk)begin
if(!rstn)
  q<=0;
else 
   if(t)
    q<=~q;
   else
    q<=q;
end
endmodule 

```
</details><br>
<details><summary>tb_counter.v</summary>

```
`timescale 1ns/1ps
module tb_counter();
reg clk,rstn;
wire [3:0]out;

ud_counter c0(clk,rstn,out);

always #5 clk=~clk;
initial
 begin
    $dumpfile("tb_counter.vcd");
    $dumpvars(0,tb_counter);
 end

initial begin
  clk<=0;
  rstn<=0;
  #20 rstn<=1;
  #150 rstn<=0;
  #50 rstn<=1;
  #200$finish;
end
endmodule
 

```
</details><br>


![counter_wave](https://user-images.githubusercontent.com/53760504/229285385-1e16b8cd-13e4-4cce-9416-e3ec7391527e.png)
## Configuring SRC files and Scripts
<p align="center">
<img src="https://user-images.githubusercontent.com/53760504/229297491-5a1e0a76-a603-4a0f-969c-52c18de33e75.png">
<img src="https://user-images.githubusercontent.com/53760504/229297866-f5c6dd40-8b7e-458a-811b-409531cf2919.png">
<img src="https://user-images.githubusercontent.com/53760504/229297931-88c8d812-101b-4dd8-8468-66fc81bafeef.png">
</p>
- Facing this Error After Making Changes According to The Verilog Files<br/>
 
![image](https://user-images.githubusercontent.com/53760504/229298183-5b18dd98-0d71-46e2-b3e3-b6ca6da55a90.png)
