`timescale 1ns / 1ps
module gray_to_binary_tb();
reg [3:0] in;
wire [3:0] out; 
gray_code_to_binary_convertor uut(in,out);
integer i;
initial begin
    for(i=0;i<16;i=i+1) begin
        in=i;
        #10;
    end
$finish;
end
endmodule
