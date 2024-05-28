`timescale 1ns / 1ps
module single_port_ram(input clk,rst,write_en,input [5:0] addr,input [7:0] din,output reg [7:0] dout);

reg [7:0] mem [63:0];
integer i;
always @(posedge clk) begin
if(rst) begin
    for(i=0;i<63;i=i+1)
        mem[i]<=0;
    end
    else begin
        if(write_en)
            mem[addr]<=din;
        else
            dout<=mem[addr]; 
    end
end
endmodule
