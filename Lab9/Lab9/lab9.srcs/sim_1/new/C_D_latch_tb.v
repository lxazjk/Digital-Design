module C_D_latch_tb;
reg D, C;
wire Qbar;
wire Q;
C_D_latch t(D, C, Q, Qbar);
initial begin
    C = 0;
    forever #20 C = ~C;
end
initial begin
    C = 1; 
    D = 1;#4;
    D = 0; #6;
    D = 1; #4;
    D = 0; #6;
    C = 0;  #5;
    D = 1;#4;
    D = 0; #6;
    D = 1; #4;
    D = 0; #6;
end
endmodule
