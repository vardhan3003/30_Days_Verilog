`timescale 1ns / 1ps
module sipo_tb();
reg clk,rst,in; 
wire [3:0] out;
sipo dut(clk,rst,in,out);
always #5 clk=~clk;
integer i;
initial begin
clk=0;
rst=1;
#20;
rst=0;
for(i=0;i<10;i=i+1) begin
in =$urandom();
#10;
end
$finish;
end

endmodule
