`timescale 1ns / 1ps
//Odd_Parity_Generator
module odd_parity_generator_checker(input [7:0] data,output reg parity,checker);
integer i=0;
reg [3:0] count=0;
always @(*) begin
    for(i=0;i<8;i=i+1) begin
        if(data[i]==1)
            count=count+1;
    end
    if(count%2) begin
        parity=0;
        checker=1;
    end
    else begin
        parity=1;
        checker=0;
    end
end
endmodule
