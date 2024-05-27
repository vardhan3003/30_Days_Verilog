`timescale 1ns / 1ps
module carry_save_adder(input [3:0] a,b,c,output reg [4:0] sum,output reg carry);
wire [3:0]sum_wire;
wire [3:0]carry_wire;

full_adder fa1(a[0],b[0],c[0],sum_wire[0],carry_wire[0]);
full_adder fa2(a[1],b[1],c[1],sum_wire[1],carry_wire[1]);
full_adder fa3(a[2],b[2],c[2],sum_wire[2],carry_wire[2]);
full_adder fa4(a[3],b[3],c[3],sum_wire[3],carry_wire[3]);

wire [3:0]sum_temp;
wire cout_temp;


ripple_carry_adder rca(carry_wire,{1'b0,sum_wire[3:1]},sum_temp,cout_temp);

always @(*) begin
    sum={sum_temp,sum_wire[0]};
    carry=cout_temp;
end
endmodule

module ripple_carry_adder(input [3:0] a,b,output [3:0] sum,output cout);

wire w1,w2,w3;
full_adder fa1(a[0],b[0],1'b0,sum[0],w1);
full_adder fa2(a[1],b[1],w1,sum[1],w2);
full_adder fa3(a[2],b[2],w2,sum[2],w3);
full_adder fa4(a[3],b[3],w3,sum[3],cout);
endmodule


module full_adder(input a,b,c,output sum,carry);

assign sum=a^b^c; 
assign carry=(a&b)|((a^b)&c);
endmodule

