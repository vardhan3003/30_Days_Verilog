`timescale 1ns / 1ps
module carry_look_ahead_adder_tb();
reg [3:0] a,b; 
reg cin;
wire [3:0] sum;
wire cout;
carry_look_ahead_adder dut(a,b,cin,sum,cout);
initial begin
    a=4'b0101;
    b=4'b0101;
    cin=1;
    #10;
    a=4'b1101;
    b=4'b0111;
    cin=0;
    #10;
    a=4'b1101;
    b=4'b0100;
    cin=1;
    #10;
$finish;
end
endmodule
