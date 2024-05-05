`timescale 1ns / 1ps
module sipo(input clk,rst,in,output reg [3:0] out);
always @(posedge clk) begin
if (rst)
    out<=4'b0000;
else
    out=out>>1;
    out[3]=in;
end

endmodule
