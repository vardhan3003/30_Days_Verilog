`timescale 1ns / 1ps
module priority_encoder_tb();
reg [3:0] in ;
wire [1:0] out; 
priority_encoder dut(in,out);
integer i;
initial begin
    for(i=0;i<16;i=i+1) begin
        in=i;
        #10;
    end
    $finish;
end
endmodule
