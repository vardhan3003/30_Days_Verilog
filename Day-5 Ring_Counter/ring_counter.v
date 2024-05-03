`timescale 1ns / 1ps
module ring_counter(input clk,rst,output reg [3:0] out);
always @(posedge clk) begin
    if (rst)
        out=4'b1000;
    else begin
        if(out==4'b0001)
            out=4'b1000;
        else
            out=out>>1;
    end 
end
endmodule
