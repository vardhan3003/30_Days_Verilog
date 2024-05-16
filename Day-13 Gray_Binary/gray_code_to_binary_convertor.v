`timescale 1ns / 1ps
module gray_code_to_binary_convertor(input [3:0] in,output reg [3:0] out);
always @(*) begin
out[3]=in[3];
out[2]=out[3]^in[2];
out[1]=out[2]^in[1];
out[0]=out[1]^in[0];
end
endmodule
