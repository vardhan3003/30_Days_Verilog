`timescale 1ns / 1ps
module d_ff(input clk,rst,d,output reg q,q_bar);
always @(posedge clk) 
begin
    if (rst) begin
        q <= 1'b0;
        q_bar <= ~q;
    end
    else begin
        q <= d;
        q_bar <= ~d;
    end
end
endmodule
