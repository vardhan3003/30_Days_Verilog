`timescale 1ns / 1ps
module async_up_counter_tb();

reg clk=0;
wire [3:0] q;

async_up_counter dut(clk,q);

always #10 begin
clk=~clk;
end

initial begin
#1000;
end

endmodule
