`timescale 1ns / 1ps

module pwm(input clk,rst,output reg dout);

parameter period=100;
integer count=0;
integer ton=0;
reg ncyc=1;
reg key=0;

always @(posedge clk) begin
    if(rst) begin
        dout<=0;
        ncyc<=0;
    end
    else if(count<ton) begin
        count<=count+1;
        dout<=1;
        ncyc<=0;
    end
    else if(count<period) begin
        count<=count+1;
        ncyc<=0;
        dout<=0;
    end
    else begin
        count<=0;
        ncyc<=1;
    end   
end

always @(posedge clk) begin
    if (rst==0 && ncyc==1) begin
        if(key==0  && ton<period) begin
            ton<=ton+5;
        end
        else if(key==1 && ton>0) begin
            ton<=ton-5;
        end
        else begin
            if(ton<=0)
                key<=0;
            else
                key<=1; 
         ncyc<=1;     
        end
    end 
    end
    
endmodule
