module top(
    input wire clk,
    output wire sclk_1,
    output wire sclrn_1,
    output wire sout_1,
    output wire EN_1,
    output wire sclk_2,
    output wire sclrn_2,
    output wire sout_2,
    output wire EN_2
);  
wire [31:0] clk_div;
clkdiv m1(.clk(clk), .rst(0), .div_res(clk_div));
LEDP2S m2(clk, clk_div[20], 16'hBEEF, sclk_1, sclrn_1, sout_1, EN_1);
Sseg_Dev m3(clk, clk_div[20], 32'hDEADBEEF, 8'b11111111, 8'b00000000, sclk_2, sclrn_2, sout_2, EN_2);
endmodule
