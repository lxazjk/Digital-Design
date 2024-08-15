module SR_latch(
    input R,
    input S,
    output reg Q,
    output  Qbar
);
always @* begin
    if (R && !S)
        Q = 0;
    else if (!R && S)
        Q = 1;
end

assign Qbar = ~Q;
endmodule