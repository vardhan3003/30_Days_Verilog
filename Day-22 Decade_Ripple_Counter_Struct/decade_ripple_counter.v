`timescale 1ns / 1ps
module decade_ripple_counter(input clk,output [3:0]  q);

reg clr=0;
wire pst,j,k;

always @(posedge clk) clr=~(q[3]&q[1]);
assign pst=1;
assign j=1;
assign k=1;

jk_ff jk1(clk,clr,pst,j,k,q[0]);
jk_ff jk2(q[0],clr,pst,j,k,q[1]);
jk_ff jk3(q[1],clr,pst,j,k,q[2]);
jk_ff jk4(q[2],clr,pst,j,k,q[3]);


endmodule