`timescale 1ns / 1ps
module ring_counter_tb();
reg clk=0,rst=1;
wire [3:0] out;
ring_counter dut(clk,rst,out);
always #5 clk=~clk;
initial begin
    #20;
    rst=0;
end
endmodule
