`timescale 1ns / 1ps

module DisplayNumber(
    input        clk,
    input        rst,
    input [15:0] hexs,
    input [ 3:0] points,
    input [ 3:0] LEs,
    output[ 3:0] AN,
    output[ 7:0] SEGMENT
);

wire [31:0]div_res;
wire [3:0]D, point, LE;

clkdiv c1(.clk(clk), .rst(rst), .div_res(div_res));

DisplaySync div_inst (
    .scan(div_res[18:17]),
    .hexs(hexs),
    .points(points),
    .LEs(LEs),
    .HEX(D),
    .AN(AN),
    .point(point),
    .LE(LE)
);

MyMC14495 m1(D[0], D[1], D[2], D[3], LE, point, SEGMENT[7], SEGMENT[0], SEGMENT[1], SEGMENT[2], SEGMENT[3], SEGMENT[4], SEGMENT[5], SEGMENT[6]);
endmodule
