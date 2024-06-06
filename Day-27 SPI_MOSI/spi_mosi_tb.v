`timescale 1ns / 1ps
module spi_mosi_tb();
reg clk,start;
reg [11:0] din;
wire cs,mosi,done,sclk;

spi_mosi dut(clk,start,din,cs,mosi,done,sclk);

always #50 clk=~clk;

initial begin
clk=0;
start=1;
din=12'h369;
#50000;
$finish;
end
endmodule
