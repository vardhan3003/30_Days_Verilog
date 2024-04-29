`timescale 1ns / 1ps
module sr_tb();
reg clk=0,rst=0,s=1,r=0;
wire q,q_bar;
sr_ff dut(s,r,clk,rst,q,q_bar);
always #5 clk=~clk;
 
initial begin
    s=0;
    r=0;
    #10; 
    s=0;
    r=1;
    #10;
    s=1;
    r=0;
    #10;
    s=1;
    r=1;
    #10;
    s=0;
    r=0;
    #10; 
    s=0;
    r=1;
    #10;
    s=1;
    r=0;
    #10;
    s=1;
    r=1;
    #10;
$finish;    
    end

endmodule
