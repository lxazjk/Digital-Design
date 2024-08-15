module P2S
#(parameter BIT_WIDTH = 8)(
    input clk,
    input start,
    input[BIT_WIDTH-1:0] par_in,
    output sclk,
    output sclrn,
    output sout,
    output EN
);
    wire[BIT_WIDTH:0] Q;
    wire set, reset, q;
    ShiftReg #(.BIT_WIDTH(BIT_WIDTH + 1)) t(.clk(clk), .shiftn_loadp(q), .shift_in(1'b1), .par_in({1'b0, par_in[BIT_WIDTH-1:0]}), .Q(Q));
    SR_Latch s(.S(set), .R(reset),.Q(q),.Qn());
    assign set = finish & start;
    assign reset = ~finish;
    assign finish = &Q[BIT_WIDTH:1];
    assign EN = !start && finish;
    assign sclk = finish | ~clk;
    assign sclrn = 1'b1;
    assign sout = Q[0];
endmodule