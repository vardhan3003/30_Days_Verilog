`timescale 1ns / 1ps
module rca_tb();
reg [3:0] a=0,b=0;
wire [3:0] sum;
wire c_out;
ripple_carry_adder d(a,b,sum,c_out);
initial begin
    #10;
    a=4'd8;
    b=4'd9;
    #10;
    a=4'd6;
    b=4'd5;
    #10;
    a=4'd9;
    b=4'd9;
    #10;
    a=4'd3;
    b=4'd6;
    #10;
$finish;
end
endmodule