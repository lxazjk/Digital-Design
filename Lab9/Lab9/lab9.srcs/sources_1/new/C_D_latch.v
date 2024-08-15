module C_D_latch(
    input D,
    input C,
    output reg Q,
    output Qbar
);
always @* begin
    if(C == 1) begin
        Q = D;
    end
end
assign Qbar = ~Q;
endmodule