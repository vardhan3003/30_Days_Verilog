`timescale 1ns/1ps
module t_tb;
reg clk=0,rst=1,t=0;
wire q,q_bar;
always #5 clk=~clk;
t_ff dut(clk,rst,t,q,q_bar);
integer i;
    initial begin
    #15;
    rst=0;
        for(i=0;i<9;i=i+1)
            begin
                @(posedge clk)
                t= $random();
            end
$finish;
end
endmodule
