`timescale 1ns / 1ps
module seq_detector_moore(input clk,rst,din,output reg dout);

parameter S0=0;
parameter S1=1;
parameter S2=2;
parameter S3=3;

reg [1:0] state=S0,nstate=S0; 

always @(state,din) begin
case(state)
    S0:begin 
        if(din==1'b1)
            nstate=S1;
         else
         nstate=S0;
    dout=1'b0;
    end
    S1:begin
        dout=1'b0;
        if(din==1'b1)
            nstate=S1;
         else
         nstate=S2;
    end 
    S2:begin
        dout=1'b0;
        if(din==1'b1)
            nstate=S3;
         else
         nstate=S0;
    end
    S3:begin
        dout=1'b1;
        if(din==1'b1)
            nstate=S1;
         else
         nstate=S2;
    end
endcase
end

always @(posedge clk)
begin
    if(rst==1'b1)
        state<=S0;
    else
        state<=nstate;
end
endmodule
