`timescale 1ns / 1ps
module johnson_counter_tb();
reg clk,rst;
wire [3:0] out;
johnson_counter dut(clk,rst,out);
always #5 clk=~clk;
initial begin
    clk=0;
    rst=1;
    #20;
    rst=0;
    #100;
    $finish;
end
endmodule
