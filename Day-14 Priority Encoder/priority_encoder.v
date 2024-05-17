`timescale 1ns / 1ps
module priority_encoder(input [3:0] in,output reg [1:0] out);
integer i;
always @(*) begin
for(i=3;i>=0;i=i-1) begin
    if(in[i]==1) begin
        out=i;
        i=-1;
    end
    if(i==0 &&in[i]==0)
        out=0;
end
end
endmodule
