`timescale 1ns / 1ps
module fibonacci_series(input clk,rst,input[31:0] data,output reg [31:0] out);
reg [31:0] fib1;
reg [31:0]count=0;
always @(posedge clk) begin
if(rst) begin
    out<=0;
    fib1<=1;
end
else if(count<data) 
    begin
    out<=out+fib1;
    fib1<=out;
    count<=count+1;
end
else
out<=out;
end

endmodule
