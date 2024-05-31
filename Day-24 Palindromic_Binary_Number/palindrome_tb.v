`timescale 1ns / 1ps
module palindrome_tb();

reg [31:0] data;
wire out;

palindromic_binary dut(data,out);

initial begin
    data=4'b1001;
    #100;
    data=4'b1101;
    #100;
    data=6'b10101;
    #100;
    data=21'b101010101010101010101;
    #100;
    data=9'b010001010;
    #100;
    $finish;
end

endmodule
