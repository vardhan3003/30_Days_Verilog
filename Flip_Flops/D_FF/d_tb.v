`timescale 1ns / 1ps
module d_tb;
reg d=0,clk=0,rst=0;
wire q,q_bar; 
d_ff dut(clk,rst,d,q,q_bar);
always #5 clk=~clk;
integer i; 
initial begin
    
    for (i=0;i<100;i=i+1) begin
        @(posedge clk)
            d = ~d;
        end
$finish;    
end

endmodule
