`timescale 1ns / 1ps
module tb_P2S();
    parameter BIT_WIDTH = 8;
    reg clk;
    reg start;
    reg [BIT_WIDTH-1:0] par_in;
    wire sclk;
    wire sclrn;
    wire sout;
    wire EN;
    P2S #(.BIT_WIDTH(BIT_WIDTH)) p2s_instance (
        .clk(clk),
        .start(start),
        .par_in(par_in),
        .sclk(sclk),
        .sclrn(sclrn),
        .sout(sout),
        .EN(EN)
    );
    always #5 clk = ~clk;
    initial begin
        start = 0;
        clk = 0;
        par_in = 8'b00000000;
        #100;
        
        start = 1;
        par_in = 8'b11001010;
        #10;
        start = 0;
        #100;
        start = 1;
        par_in = 8'b10110101;
        #10;
        start = 0;
        $finish;
    end
endmodule
