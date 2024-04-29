`timescale 1ns / 1ps
module t_ff(input clk,rst,t,output reg q,output q_bar);
always @(posedge clk) begin
    if (rst)
        q=0;
    else begin
        if (t)
            q <= ~q;
    end 
end
assign q_bar=~q;
endmodule
