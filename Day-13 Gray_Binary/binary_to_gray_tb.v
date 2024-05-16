`timescale 1ns / 1ps
module binary_to_gray_tb;
reg [3:0] in;
wire [3:0] out; 
binary_to_gray_code_convertor dut(in,out);
integer i;
initial begin
    for(i=0;i<16;i=i+1) begin
        in=i;
        #10;
    end
$finish;
end
endmodule
