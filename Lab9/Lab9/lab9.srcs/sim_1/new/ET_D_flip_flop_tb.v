module ET_D_flip_flop_tb;
reg D, clk;
wire Q, Qbar;
ET_D_flip_flop a(D, clk, Q, Qbar);
initial begin
    clk = 0;
    forever #10 clk = ~clk;
end
initial begin
    D = 0; #10;
    D = 1; #10;
    D = 0; #10;
    D = 1; #10;
    D = 0; #10;
    D = 1; #10;
    D = 0; #10;
    D = 1; #10;
    D = 0; #10;
    D = 1; #10;
end
endmodule