
`timescale 1ns / 1ps
//Structural Model using T Flip_Flop

module async_up_counter(input clk,output [3:0] q);

t_flip_flop t1(clk,1'b1,q[0]);
t_flip_flop t2(q[0],1'b1,q[1]);
t_flip_flop t3(q[1],1'b1,q[2]);
t_flip_flop t4(q[2],1'b1,q[3]);
endmodule

module t_flip_flop(input clk,in,output reg out);
initial out=0;
always @(negedge clk) begin
if(in)
    out<=~out; 
else
    out<=out;
end
endmodule
