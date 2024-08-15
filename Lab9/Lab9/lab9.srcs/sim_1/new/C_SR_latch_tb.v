module C_SR_latch_tb;
reg R, S, C;
wire Q, Qbar;
C_SR_latch t(R, S, C, Q, Qbar);
initial begin
    C = 1;
    R = 1; S = 0;#10;
    R = 0; S = 0;#10;
    R = 0; S = 1;#10;
    R = 0; S = 0;#10;
    #10;
    C = 0;
    R = 1; S = 0;#10;
    R = 0; S = 0;#10;
    R = 0; S = 1;#10;
    R = 0; S = 0;#10;
end
endmodule