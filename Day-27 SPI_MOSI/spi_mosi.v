`timescale 1ns / 1ps
module spi_mosi(input clk,start,input [11:0] din,output reg cs,mosi,done,output sclk);
integer count=0; 
reg sclk_temp=0;
always @(posedge clk) begin
if(count<10)
    count=count+1;
else begin
    sclk_temp<=~sclk_temp;
    count<=0;
end
end
parameter idle=0,start_tx=1,send=2,end_tx=3;
reg [1:0] state=idle;
reg [11:0] data_temp;
integer bit_count;
always @(posedge sclk_temp) begin
    case(state)
        idle:begin
            mosi<=0;
            cs<=1; 
            done<=0;
            if(start)
                state<=start_tx;
            else
                state<=idle;
        end
        start_tx: begin
            cs<=0;
            data_temp<=din;
            state<=send;
        end
        send: begin
            if(bit_count<=11) begin
                bit_count<=bit_count+1;
                mosi<=data_temp[bit_count];
                state=send;
            end
            else begin
                bit_count<=0;
                state<=end_tx;
                mosi<=0; 
            end
        end
        end_tx: begin
            cs<=1;
            state<=idle;
            done<=1;
        end
       default:state<=idle;
     endcase       
end
assign sclk=sclk_temp;
endmodule
