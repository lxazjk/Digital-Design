module ET_D_flip_flop(
    input D,
    input clk,
    output Q,
    output Qbar
);
reg Q_mid;
wire Qbar_mid;
C_D_latch a(D, ~clk, Qmid, Qbar_mid);
C_D_latch b(Qmid, clk, Q, Qbar);
endmodule
