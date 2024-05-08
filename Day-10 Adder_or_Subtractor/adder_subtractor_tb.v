`timescale 1ns / 1ps
module subtractor_tb();
reg a=0,b=0,cin_bin=0,sel=0;
wire sum_diff,cout_bout;
adder_or_subtractor dut(a,b,cin_bin,sel,sum_diff,cout_bout);
initial begin
#5;
sel=1;
#5;
sel=0;
#5;
sel=1;
#5;
sel=0;
#5;
sel=1;
#5;
sel=0;
#5;
sel=1;
#5;
sel=0;
$finish;
end
integer i,j,k;
initial begin
    #5;
    for(i=0;i<8;i=i+1) begin
        cin_bin=~cin_bin;
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