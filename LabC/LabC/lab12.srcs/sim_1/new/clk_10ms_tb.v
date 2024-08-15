`timescale 1ns / 1ps

module tb_clk_10ms;

    // ��������
    reg clk;
    wire clk_10ms;

    // ģ��ʵ����
    clk_10ms uut (
        .clk(clk),
        .clk_10ms(clk_10ms)
    );

    // ����ʱ��
    initial begin
        clk = 0;
        forever #10 clk = ~clk;  // ����ϵͳʱ��Ϊ50MHz, ������Ϊ20ns
    end

    // ���Թ���
    initial begin
        // ��ʼ��
        $dumpfile("clk_10ms.vcd"); // ����VCD�ļ�
        $dumpvars(0, tb_clk_10ms); // ���沨����Ϣ

        // �������
        $monitor("Time=%t, clk=%b, clk_10ms=%b", $time, clk, clk_10ms);

        // �ȴ��㹻��ʱ���Թ۲��������ڵ����
        #1000000000; // 1ms�ķ���ʱ��

        // ��������
        $finish;
    end

endmodule
