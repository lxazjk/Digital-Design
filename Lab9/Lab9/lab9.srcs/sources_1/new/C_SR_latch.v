module C_SR_latch(
    input R,
    input S,
    input C,
    output reg Q,
    output Qbar
);
always @* begin
    if (C == 1) begin
        if(S && !R) begin
            Q = 1;
        end else if(!S && R) begin
            Q = 0;
        end
    end  
end
assign Qbar = ~Q;
endmodule
