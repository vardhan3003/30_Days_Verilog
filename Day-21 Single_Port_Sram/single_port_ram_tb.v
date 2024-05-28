`timescale 1ns / 1ps
module single_port_ram_tb();

reg clk=0,rst=1,write_en=0;
reg [5:0] addr=5'd6;
reg [7:0] din=8'd18;
wire [7:0] dout;

always #5 clk=~clk;

single_port_ram dut(clk,rst,write_en,addr,din,dout);

initial begin 
#100;
rst=0;
write_en=1;
addr=5'd6;
din=8'd18;
#100;
rst=0;
write_en=1;
addr=5'd3;
din=8'd15;
#100;
write_en=0;
addr=5'd6;
#100;
rst=0;
write_en=0;
addr=5'd3;
#100;
$finish;
end
endmodule
