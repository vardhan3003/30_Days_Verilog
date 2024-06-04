`timescale 1ns / 1ps
module odd_parity_check_tb();
reg [7:0] data;
wire parity,checker;

odd_parity_generator_checker dut(data,parity,checker);

initial begin
data=8'b00001111;
#100;
data=8'b01010101;
#100;
data=8'b00001001;
#100;
data=8'b01010001;
#100;
$finish;
end
endmodule
