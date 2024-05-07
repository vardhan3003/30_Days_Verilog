`timescale 1ns / 1ps
module up_down_counter_tb();
reg clk=0,rst=1,load=0,ud=1;
reg [3:0] data=4'b0000;
wire [3:0] out; 
up_down_counter dut(clk,rst,ud,load,data,out);
always #5 clk=~clk;
initial begin
#15;
rst=0;load=1;data=4'b0011;
#30;
rst=0;load=0;ud=1;
#50;
rst=0;load=1;data=4'b1110;ud=0;
#10;
load=0;
#30;
$finish;
end
endmodule
