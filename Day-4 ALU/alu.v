`timescale 1ns / 1ps
module alu(input [7:0] a,b,input [3:0] opcode,output reg [7:0] out,output reg c_out);
reg [8:0] temp;
always @(*) begin
case(opcode)
    4'b0000:temp=a&b;//Bitwise AND
    4'b0001:temp=a|b;//Bitwise OR
    4'b0010:temp=a^b;//Bitwise XOR
    4'b0011:temp=~(a&b);//Bitwise NAND
    4'b0100:temp=~(a|b);//Bitwise NOR
    4'b0101:temp=~(a^b);//Bitwise XNOR
    4'b0110:temp=a+b;//Addition
    4'b0111:temp=a-b;//Subtraction
    4'b1000:temp=a*b;//Multiplication
    4'b1001:temp=a/b; //Division
    4'b1010:temp=a<<1;//Left Shift
    4'b1011:temp=a>>1;//Right Shift
    4'b1100:temp={a[0],a[7:1]};//Rotate Right
    4'b1101:temp={a[6:0],a[7]};//Rotate Left
    4'b1110:temp=(a==b)?8'b1:8'b0;//Equal Comparision
    4'b1111:temp=(a>b)?8'b1:8'b0;//Greater Comparision
    default:temp=8'd0;
endcase
end
always @(*) begin
     out=temp[7:0];
     c_out=temp[8];
 end
endmodule
