`timescale 1ns / 1ps
module booth_multiplier_tb();
reg [3:0] A,B; 
wire [7:0] out;
booth_multiplier dut(A,B,out);
initial begin
A=4'b1100;
B=4'b0101;
#20;
A=4'b0010;
B=4'b0011;
#20;
A=4'b1110;
B=4'b0011;
#20;
$finish;
end
endmodule
