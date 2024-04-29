`timescale 1ns / 1ps
module sr_ff(input s,r,clk,rst,output reg q,q_bar);
wire temp;
    always @(posedge clk) begin
        if (rst)
            q <= 0;
        else begin
            if (s && !r) 
                q <= 1;
            else if (!s && r) 
                q <=0;
            q_bar <= temp;
        end
    end
 
assign temp = ~q;
endmodule
