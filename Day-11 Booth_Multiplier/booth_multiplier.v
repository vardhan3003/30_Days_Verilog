`timescale 1ns / 1ps
module booth_multiplier(input [3:0] A,B,output reg [7:0] out);
reg [3:0] AC;
reg [3:0] B_reg;
reg Qres=0;
integer i;
always @(*) begin
    AC=4'b0000;
    B_reg=B;
    Qres=0;
    $display("%b %b %b",AC,B_reg,Qres);
for(i=0;i<4;i=i+1) begin
    $display("%b %b ",B_reg[0],Qres);
    case({B_reg[0],Qres})
    
    2'b00: begin
        {AC, B_reg, Qres} = {{AC[3], AC[3:1]}, {AC[0], B_reg[3:1]}, B_reg[0]};
    end
    2'b01: begin 
        AC = AC + A;
        $display("%b %b %b",AC,B_reg,Qres);
        {AC, B_reg, Qres} = {{AC[3], AC[3:1]}, {AC[0], B_reg[3:1]}, B_reg[0]};
    end
    2'b10: begin
        AC = AC - A;
         $display("%b %b %b",AC,B_reg,Qres);
        {AC, B_reg, Qres} = {{AC[3], AC[3:1]}, {AC[0], B_reg[3:1]}, B_reg[0]};
    end
    2'b11:begin
        {AC, B_reg, Qres} = {{AC[3], AC[3:1]}, {AC[0], B_reg[3:1]}, B_reg[0]};
    end
    default:begin
        {AC,B_reg,Qres}={AC,B_reg,Qres};
    end
    endcase
    $display("%b %b %b",AC,B_reg,Qres);
    end
        out ={AC,B_reg};
end
endmodule