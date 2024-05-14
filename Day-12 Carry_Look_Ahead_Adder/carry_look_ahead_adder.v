`timescale 1ns / 1ps
module carry_look_ahead_adder(input [3:0] a,b,input cin,output reg [3:0] sum,output reg cout);
reg [4:0] temp;
integer i;
integer j;
always @(*) begin
    temp[0]=cin;
    sum[0]=a[0]^b[0]^cin;
    for(i=1;i<=4;i=i+1) begin
        temp[i] = (a[i-1] & b[i-1])| ((a[i-1]^b[i-1]) & temp[i-1]);
        if (i<4) begin
            sum[i]=a[i]^b[i]^temp[i];
        end
    end
    cout=temp[4];
end

endmodule
