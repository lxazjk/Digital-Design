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

    // ʵ���� P2S ģ��
    P2S #(.BIT_WIDTH(BIT_WIDTH)) p2s_instance (
        .clk(clk),
        .start(start),
        .par_in(par_in),
        .sclk(sclk),
        .sclrn(sclrn),
        .sout(sout),
        .EN(EN)
    );

    // ʱ������
    always #5 clk = ~clk;

    // ��ʼ��
    initial begin
        // ��ʼ�������ź�
        clk = 0;
        start = 0;
        par_in = 0;

        // ��������
        #10;
        start = 1;
        par_in = 8'b10101010; // ����Ϊ��Ҫ���Ե�����

        #10;
        start = 0;

        // �۲�������
        #100;

        // ���Խ���
        $finish;
    end

    // �����źű仯
    initial begin
        $monitor("Time = %t, clk = %b, start = %b, par_in = %b, sclk = %b, sclrn = %b, sout = %b, EN = %b",
                 $time, clk, start, par_in, sclk, sclrn, sout, EN);
    end
*/
endmodule
