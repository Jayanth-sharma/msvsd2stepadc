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


