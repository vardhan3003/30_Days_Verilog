`timescale 1ns / 1ps
module adder_or_subtractor(input a,b,cin_bin,sel,output reg sum_diff,cout_bout);
always @(*) begin
if (sel) begin //Adder
sum_diff = a^b^cin_bin;
cout_bout = (a&b)|((a^b)&cin_bin);
end
else begin //Subtractor
sum_diff = a^b^cin_bin;
cout_bout = (~a&b)|((~(a^b))&cin_bin);

end
end
endmodule
