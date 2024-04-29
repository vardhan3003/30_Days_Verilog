`timescale 1ns / 1ps
module jk_tb();
reg clk=0,rst=1,j=0,k=0;
wire q,q_bar;
jk_ff dut(clk,rst,j,k,q,q_bar);
always #5 clk=~clk;
initial begin
    #5;
    rst=0;
    j=0;
    k=1;
    #5
    j=1;
    k=1;
    #5
    j=1;
    k=1;
    #5
    j=0;
    k=0;
    #5
$finish;
end
endmodule
