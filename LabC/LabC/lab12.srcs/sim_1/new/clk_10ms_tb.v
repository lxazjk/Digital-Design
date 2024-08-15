`timescale 1ns / 1ps

module tb_clk_10ms;

    // 输入和输出
    reg clk;
    wire clk_10ms;

    // 模块实例化
    clk_10ms uut (
        .clk(clk),
        .clk_10ms(clk_10ms)
    );

    // 产生时钟
    initial begin
        clk = 0;
        forever #10 clk = ~clk;  // 假设系统时钟为50MHz, 则周期为20ns
    end

    // 测试过程
    initial begin
        // 初始化
        $dumpfile("clk_10ms.vcd"); // 生成VCD文件
        $dumpvars(0, tb_clk_10ms); // 保存波形信息

        // 监视输出
        $monitor("Time=%t, clk=%b, clk_10ms=%b", $time, clk, clk_10ms);

        // 等待足够的时间以观察数个周期的输出
        #1000000000; // 1ms的仿真时间

        // 结束仿真
        $finish;
    end

endmodule
