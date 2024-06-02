`timescale 1ns / 1ps
module seven_segment_tb();
reg [3:0] data;
wire [6:0] seg;

seven_segment_display dut(data,seg);

initial begin
data=4'b0000;
#100;
data=4'b0101;
#100;
data=4'b0011;
#100;
data=4'b0001;
#100;
$finish;
end

endmodule
