`timescale 1ns / 1ps
///Structural Level Modelling
module full_subtractor(input a,b,bin,output diff,bout);
wire w1,w2,w3;
half_subtractor hs1(a,b,w1,w2);
half_subtractor hs2(w1,bin,diff,w3);
assign bout = w2|w3;
endmodule

module half_subtractor(input a,b,output diff,bout);
assign diff = a^b; 
assign bout = ~a&b;
endmodule

//Data Flow Modelling
//module full_subtractor(input a,b,bin,output diff,bout);
//assign diff = a^b^bin;
//assign bout = (~a&b)|((~(a^b))&bin);
//endmodule
