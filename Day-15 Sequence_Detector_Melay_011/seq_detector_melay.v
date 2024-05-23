`timescale 1ns / 1ps
module seq_detector_melay(input clk,rst,din,output reg out);

parameter S0=2'b00;
parameter S1=2'b01;
parameter S2=2'b10;
parameter S3=2'b11;

reg [1:0] state=1'b0;

always @(posedge clk) begin
    if(rst==1'b1) begin
        state <= S0;
        out <= 1'b0;
    end
    else begin
        case(state)
            S0:begin
                if(din==1'b0) begin
                    state<=S1;
                    out<=1'b0;
                end
                else begin
                    state<=S0;
                    out<=1'b0;
                end
            end
           S1:begin
                if(din==1'b0) begin
                    state<=S1;
                    out<=1'b0;
                end
                else begin
                    state<=S2;
                    out<=1'b0;
                end
            end
           S2:begin
                if(din==1'b0) begin
                    state<=S1;
                    out<=1'b0;
                end
                else begin
                    state<=S3;
                    out<=1'b1;
                end
            end
           S3:begin
                if(din==1'b1) begin
                    state<=S0;
                    out<=1'b0;
                end
                else begin
                    state<=S1;
                    out<=1'b0;
                end
            end
           default: begin
               state<=S0;
               out=1'b0;
           end
        endcase
    end
end
endmodule
