`timescale 1ns / 1ps
module binary_adder_melay(input clk,rst,a,b,output reg sum);

parameter no_carry=0;
parameter carry=1;

reg [1:0] state=no_carry,nstate=no_carry;

always @(posedge clk)
begin
    if(rst)
        state<=no_carry;
    else
        state<=nstate;
end

always @(state,a,b) begin
case(state)
    no_carry:begin
    if({a,b}==2'b00)
                sum=0;
            else if({a,b}==2'b01)
                sum=1;
            else if({a,b}==2'b10)
                sum=1;
            else
                sum=0;
            end
    carry:begin
    if({a,b}==2'b00)
                sum=1;
            else if({a,b}==2'b01)
                sum=0;
            else if({a,b}==2'b10)
                sum=0;
            else
                sum=1;  
            end  
    default:sum=0;           
endcase
end

always @(state,a,b) begin
case(state)
    no_carry:if({a,b}==2'b00)
                nstate=no_carry;
            else if({a,b}==2'b01)
                nstate=no_carry;
            else if({a,b}==2'b10)
                nstate=no_carry;
            else
                nstate=carry;
    carry:if({a,b}==2'b00)
                nstate=no_carry;
            else if({a,b}==2'b01)
                nstate=carry;
            else if({a,b}==2'b10)
                nstate=carry;
            else
                nstate=carry;    
    default:nstate=no_carry;           
endcase
end
endmodule
