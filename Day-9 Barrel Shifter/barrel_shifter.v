`timescale 1ns / 1ps
module barrel_shifter(input [7:0] in,input [2:0] sel,output reg [7:0] out);
always @(*)
begin
case(sel)
3'b000:out = in; 
3'b001:out = {in[0],in[7:1]}; 
3'b010:out = {in[1:0],in[7:2]}; 
3'b011:out = {in[2:0],in[7:3]}; 
3'b100:out = {in[3:0],in[7:4]};  
3'b101:out = {in[4:0],in[7:5]};  
3'b110:out = {in[5:0],in[7:6]};  
3'b111:out = {in[6:0],in[7]};  
default:out = in;
endcase
end
endmodule
