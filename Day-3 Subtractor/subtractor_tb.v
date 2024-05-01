`timescale 1ns / 1ps
module subtractor_tb();
reg a=0,b=0,bin=0;
wire diff,bout;
full_subtractor dut(a,b,bin,diff,bout);
integer i,j,k;
initial begin
    #5;
    for(i=0;i<8;i=i+1) begin
        bin=~bin;
        #5;
    end
end
initial begin
#10;
    for(j=0;j<4;j=j+1) begin
        b=~b;
        #10;
    end
end 
initial begin
    #20;
    for(k=0;k<2;k=k+1) begin
        a=~a;
        #20;
    end
$finish;
end
endmodule