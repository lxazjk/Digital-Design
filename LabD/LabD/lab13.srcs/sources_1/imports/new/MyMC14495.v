`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/03 16:38:25
// Design Name: 
// Module Name: MyMC14495
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MyMC14495(
  input D0, D1, D2, D3,
  input LE,
  input point,
  output reg p,
  output reg a, b, c, d, e, f, g
);

wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15;

    assign w0 =~D3&~D2&~D1&~D0;
    assign w1 =~D3&~D2&~D1&D0;
    assign w2 =~D3&~D2&D1&~D0;
    assign w3 =~D3&~D2&D1&D0;
    assign w4 =~D3&D2&~D1&~D0;
    assign w5 =~D3&D2&~D1&D0;
    assign w6 =~D3&D2&D1&~D0;
    assign w7 =~D3&D2&D1&D0;
    assign w8 =D3&~D2&~D1&~D0;
    assign w9 =D3&~D2&~D1&D0;
    assign w10 =D3&~D2&D1&~D0;
    assign w11 =D3&~D2&D1&D0;
    assign w12 =D3&D2&~D1&~D0;
    assign w13 =D3&D2&~D1&D0;
    assign w14 =D3&D2&D1&~D0;
    assign w15 =D3&D2&D1&D0;

always @(*) begin
    a=((w1|w4|w11|w13)|LE);
    b=((w5|w6|w11|w12|w14|w15)|LE);
    c=((w2|w12|w14|w15)|LE);
    d=((w1|w4|w7|w10|w15)|LE);
    e=((w1|w3|w4|w5|w7|w9)|LE);
    f=((w1|w2|w3|w7|w13)|LE);
    g=((w0|w1|w7|w12)|LE);
    p=(point|LE);
end

endmodule
