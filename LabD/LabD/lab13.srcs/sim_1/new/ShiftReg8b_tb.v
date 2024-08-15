module ShfitReg8b_sim;
	reg clk;
	reg S_L;
	reg s_in;
	reg [7:0] p_in;
	wire [7:0] Q;
	ShiftReg8b uut (
		.clk(clk), 
		.shiftn_loadp(S_L), 
		.shift_in(s_in), 
		.par_in(p_in), 
		.Q(Q)
	);
	initial begin
		clk = 0;
		S_L = 0;
		s_in = 0;
		p_in = 0;
		#100;
		S_L = 0;
		s_in = 1;
		p_in =0;
		#400;
		S_L = 1;
		s_in = 0;
		p_in = 8'b0101_0101;
		#200;
        S_L = 0;s_in = 0;
	end
	always begin
		clk = 0; #20;
		clk = 1; #20;
	end 
endmodule