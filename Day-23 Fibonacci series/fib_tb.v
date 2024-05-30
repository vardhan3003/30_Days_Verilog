`timescale 1ns / 1ps
module fib_tb();
reg clk=0,rst;
reg [31:0] data;
wire [31:0] out;

fibonacci_series fib_1(clk,rst,data,out);

always #5 clk=~clk;
initial begin 
    rst=1;
    #100;
    rst=0;
    data=4'd9;
    #100;
    $finish;
end

endmodule
