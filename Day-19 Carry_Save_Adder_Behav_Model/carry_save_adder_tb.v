`timescale 1ns / 1ps
module carry_save_adder_tb();

reg  [3:0] a,b,c; 
wire [4:0] sum;
wire carry;

carry_save_adder dut(a,b,c,sum,carry);
 
 initial begin
 a=4'b0001;
 b=4'b0010;
 c=4'b0001;
 #100;
 a=4'b0101;
 b=4'b0101;
 c=4'b0110;
 #100;
 a=4'b1111;
 b=4'b0111;
 c=4'b0010;
 #100;
 $finish;
 end
endmodule
