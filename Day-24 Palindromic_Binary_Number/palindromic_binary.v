`timescale 1ns / 1ps
module palindromic_binary(input [31:0] data,output reg out);

reg [4:0] key;
integer start;

integer i;

always @(*) begin
    out=1;
    key=0;
    for(start=31;start>=0;start=start-1) 
    begin
        
       if (data[start]==1'b1) begin
            key=start;
            start=0;
            end
    end
    for(i=0;i<(key/2)+1;i=i+1) begin
        if (data[i]!=data[key-i]) begin
            out=0;
            i=key/2;
        end
    end
  
end
endmodule
