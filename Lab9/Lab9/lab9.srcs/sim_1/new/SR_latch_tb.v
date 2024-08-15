module SR_latch_tb;
reg R, S;
wire Q, Qbar;
SR_latch t1(R, S, Q, Qbar);
initial begin
    #10; R = 1; S = 0;
    #10; R = 0; S = 0;
    #10; R = 0; S = 1;
    #10; R = 0; S = 0;
end
endmodule