module ShiftReg
#(parameter BIT_WIDTH = 8)(
    input       clk,
    input       shiftn_loadp,
    input       shift_in,
    input [BIT_WIDTH-1:0] par_in,
    output  reg [BIT_WIDTH-1:0] Q
);

always @(posedge clk) begin
    if(shiftn_loadp) begin
        Q <= par_in;
    end
    else begin
        Q <= {shift_in, Q[BIT_WIDTH-1:1]}; 
    end
end
endmodule