`timescale 1ns / 1ps

module tb_P2S();
/*
    parameter BIT_WIDTH = 8;
    reg clk;
    reg start;
    reg [BIT_WIDTH-1:0] par_in;
    wire sclk;
    wire sclrn;
    wire sout;
    wire EN;

    // 实例化 P2S 模块
    P2S #(.BIT_WIDTH(BIT_WIDTH)) p2s_instance (
        .clk(clk),
        .start(start),
        .par_in(par_in),
        .sclk(sclk),
        .sclrn(sclrn),
        .sout(sout),
        .EN(EN)
    );

    // 时钟生成
    always #5 clk = ~clk;

    // 初始化
    initial begin
        // 初始化输入信号
        clk = 0;
        start = 0;
        par_in = 0;

        // 重置序列
        #10;
        start = 1;
        par_in = 8'b10101010; // 更改为需要测试的数据

        #10;
        start = 0;

        // 观察多个周期
        #100;

        // 测试结束
        $finish;
    end

    // 监视信号变化
    initial begin
        $monitor("Time = %t, clk = %b, start = %b, par_in = %b, sclk = %b, sclrn = %b, sout = %b, EN = %b",
                 $time, clk, start, par_in, sclk, sclrn, sout, EN);
    end
*/
endmodule
