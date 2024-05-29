`timescale 1ns / 1ps
module decade_ripple_counter_tb;
reg clk=0;
wire [3:0] q;
decade_ripple_counter dut(clk,q);
always #10  clk=~clk;
initial begin
    #440;
    $finish;
end

endmodule
