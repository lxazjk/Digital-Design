`timescale 1ns / 1ps

module DispNum(
    input [1:0] BTN,
    input [7:0] SW,
    output wire [7:0] SEGMENT,
    output wire [3:0] AN,
    output wire BTN_X
);
    MyMC14495 MyDispNum(
        .D0(SW[0]), .D1(SW[1]), .D2(SW[2]), .D3(SW[3]), 
        .LE(BTN[0]),   
        .point(BTN[1]),
        .a(SEGMENT[0]),
        .b(SEGMENT[1]),
        .c(SEGMENT[2]),
        .d(SEGMENT[3]),
        .e(SEGMENT[4]),
        .f(SEGMENT[5]),
        .g(SEGMENT[6]), 
        .p(SEGMENT[7])
    );
    assign AN[0] = SW[4];
    assign AN[1] = SW[5];
    assign AN[2] = SW[6];
    assign AN[3] = SW[7];
    assign BTN_X = 0;
endmodule