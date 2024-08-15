module MS_SR_flip_flop_tb;
reg S, R, clk;
wire mid_Q, Q, Qbar;
MS_SR_flip_flop t(S, R, clk, mid_Q, Q, Qbar);
initial begin
    clk = 0;
    forever #11 clk = ~clk;
end
initial begin
    S = 1; R = 0; #4;
    S = 0; R = 0; #3;
    S = 0; R = 1; #2;
    S = 1; R = 0; #3;
    S = 1; R = 0; #4;
    S = 0; R = 0; #3;
    S = 0; R = 1; #2;
    S = 1; R = 0; #3;
    S = 1; R = 0; #4;
    S = 0; R = 0; #3;
    S = 0; R = 1; #2;
    S = 1; R = 0; #3;
end
initial begin
    clk = 0; 
    forever #5 clk = ^clk;
end
endmodule