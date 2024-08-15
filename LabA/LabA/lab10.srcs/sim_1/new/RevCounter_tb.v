`timescale 1ns / 1ps

module RevCounter_tb;
    reg clk, rst, s;
    wire [15:0] cnt;
    wire rc;

    RevCounter r(clk, rst, s, cnt, rc);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; #10; rst = 0;
        s = 0; 
        repeat (16) @(posedge clk);
        s = 1; rst = 1; #20; rst=0;
        repeat (16) @(posedge clk);
       $finish;
    end
endmodule
