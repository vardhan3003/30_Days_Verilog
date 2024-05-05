`timescale 1ns / 1ps
module johnson_counter(input clk,rst,output reg [3:0] out);
integer i;
always @(posedge clk or rst) begin
    if (rst)
        out<=4'b0000;
    else begin
        out[3]<=~out[0];
        for(i=0;i<3;i=i+1)
            out[i]<=out[i+1];
    end
end
endmodule
