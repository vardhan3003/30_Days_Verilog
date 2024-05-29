`timescale 1ns / 1ps
module jk_ff(input clk,clr,pst,j,k,output reg  q);

always @(negedge clk or negedge clr or negedge pst) begin
if(~clr)
    q<=0;
else if(~pst)
    q<=1;
else if(j==0  && k==0)
    q<=q;
else if((j==0 && k==1)||(j==1 && k==0))
    q<=j; 
else if(j==1 && k==1)
    q<=~q;
end
endmodule
