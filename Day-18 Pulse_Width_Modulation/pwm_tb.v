`timescale 1ns / 1ps
module pwm_tb();
reg clk=0,rst=0;
wire dout;
pwm dut(clk,rst,dout);
always #5 clk=~clk;
initial begin 
    clk=0;
    rst=0;
    #50000;
    $finish;
end
endmodule
