module top(
    input clk,
    input [1:0] SW,
    output [3:0] AN,
    output [7:0] SEGMENT
);

    wire clk_10ms;
    wire clk_100ms;
    // clk_1s used in LabA
    clk_10ms clk_div_10ms (.clk(clk), .clk_10ms(clk_10ms)); // Refer to the code of clk_1s to complete these modules
    clk_100ms clk_div_100ms (.clk(clk), .clk_100ms(clk_100ms)); 

    wire clk_counter = (SW[0] == 1'b0) ? clk_10ms : clk_100ms; // Connect this clk_counter to CP-port of 74LS161
    wire [3:0] hour_tens;
    wire [3:0] hour_ones;
    wire [3:0] min_tens;
    wire [3:0] min_ones;

    // Module written in Lab 7

//   assign min_ones = ~SW[1] ? min_ones : 4'b0000;
//   assign min_tens = ~SW[1] ? min_tens : 4'b0000;
//   assign hour_ones = ~SW[1] ? hour_ones : 4'b0011;
//   assign hour_tens = ~SW[1] ? hour_tens : 4'b0010;
    
    assign Rm0 = min_ones[3] & min_ones[0];	// 1001
	assign Rm1 = min_tens[2] & min_tens[0] & Rm0; //0101
	assign Rh0 = hour_ones[3] & hour_ones[0] & Rm1; //1001
	assign Rh1 = hour_tens[1] & hour_ones[1] & hour_ones[0] & Rm1; //0010 0011
	
	My74LS161	m0(	.CRn(~SW[1]), .CTP(1'b1), .CTT(1'b1),
					.CP(clk_counter), 
					.LDn( ~Rm0 ),
					.D(4'b0),
					.clear(4'b0000),
					.Q(min_ones) ),
				m1(	.CRn(~SW[1]), .CTP(1'b1), 
					.CTT( Rm0 ),
					.CP(clk_counter), 
					.LDn( ~Rm1 ),
					.D(4'b0),
					.clear(4'b0000),
					.Q(min_tens) ),
				h0(	.CRn(~SW[1]), .CTP(1'b1), 
					.CTT( Rm1 ),
					.CP(clk_counter), 
					.LDn( ~(Rh0 | Rh1) ),
					.D(4'b0),
					.clear(4'b0011),
					.Q(hour_ones) ),
				h1(	.CRn(~SW[1]), .CTP(1'b1), 
					.CTT( Rh0 ),
					.CP(clk_counter), 
					.LDn( ~Rh1 ),
					.D(4'b0),
					.clear(4'b0010),
					.Q(hour_tens) );
	
	 DisplayNumber display_inst(.clk(clk), .hexs({hour_tens, hour_ones, min_tens, min_ones}), .points(4'b0100), .rst(1'b0), .LEs(4'b0000), .AN(AN), .SEGMENT(SEGMENT));
endmodule