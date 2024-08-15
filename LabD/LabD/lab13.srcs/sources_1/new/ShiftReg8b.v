module ShiftReg8b(
    input       clk,
    input       shiftn_loadp,
    input       shift_in,
    input [7:0] par_in,
    output  reg [7:0] Q
);

always @(posedge clk) begin
    if(shiftn_loadp) begin
        Q <= par_in;
    end
    else begin
        Q <= {shift_in, Q[7:1]}; 
    end
end
endmodule