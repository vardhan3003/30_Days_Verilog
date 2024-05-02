`timescale 1ns / 1ps
module alu_tb();
reg [7:0] a=8'd3,b=8'd3;
reg [3:0] opcode;
wire [7:0] out;
wire c_out;
alu dut(a,b,opcode,out,c_out);
integer i;
initial begin
    for(i=0;i<16;i=i+1) begin
        opcode=i;
        #10;
    end
    $finish;
end
endmodule
