`timescale 1ns / 1ps
module up_down_counter(input clk,rst,ud,load,input [3:0] data,output reg [3:0] out);
always @(posedge clk)
begin
    if(rst)
        out<=0;
    else if(load)
        out<=data;
    else if(ud)
        out<=out+1;
    else
        out<=out-1;
    end
endmodule
