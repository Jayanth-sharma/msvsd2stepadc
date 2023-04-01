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
 
