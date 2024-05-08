`timescale 1ns / 1ps
module barrel_shifter_tb();
reg [7:0] in; 
reg [2:0] sel;
wire [7:0] out; 
barrel_shifter dut(in,sel,out);
initial begin
    in=8'h2A;
    #10;
    sel=3'h3;
    #10;
    sel=3'h4;
    #10;
    sel=3'h5;
    #10;
    sel=3'h7;
    #10;
    sel=3'h2;
    #10;
$finish;
end
initial begin
    $monitor("%b %b %b",in,sel,out);
end
endmodule
