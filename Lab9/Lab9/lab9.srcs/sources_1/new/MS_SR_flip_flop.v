module MS_SR_flip_flop(
    input S,
    input R,
    input clk,
    output mid_Q,
    output Q,
    output Qbar
);
wire mid_Qbar, Qbar;
wire Q;
C_SR_latch t(R, S, ~clk, mid_Q, mid_Qbar);
C_SR_latch p(mid_Qbar, mid_Q, clk, Q, Qbar);
endmodule
