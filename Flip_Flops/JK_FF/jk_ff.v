`timescale 1ns / 1ps
module jk_ff(input clk,rst,j,k,output reg q, output q_bar);
always @(posedge clk) begin
    if (rst)
        q <= 0;
    else begin
    if (j && !k)
        q <= 1;
    else if(!j && k)
        q <= 0;
    else if (j && k)
        q <= ~q;
    end
end
assign q_bar = ~q;
endmodule
