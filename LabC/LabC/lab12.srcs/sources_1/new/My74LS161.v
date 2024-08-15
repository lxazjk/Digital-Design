/*module My74LS161(
    input CP,
    input CRn,
    input LDn,
    input [3:0] D,
    input CTT,
    input CTP,
    output [3:0] Q,
    output CO
);

    reg [3:0] Q_reg;
    initial begin
        Q_reg = 4'b0000;
    end
    always @(posedge CP or negedge CRn) begin
        if(!CRn) begin
            Q_reg <= 4'b0000;
        end 
        else if(CRn && !LDn) begin
            Q_reg <= D;
        end 
        else if (CRn && LDn && CTT & CTP) begin
            if (Q == 4'b1111) begin
                Q_reg <= 4'b0000;
            end else begin
                Q_reg <= Q_reg + 4'b0001;
            end
        end 
        else begin
                Q_reg <= Q;
        end
    end

    assign Q = Q_reg;
    assign CO = (Q == 4'hF);

endmodule
*/

module My74LS161(
    input CP,
    input CRn,
    input LDn,
    input [3:0] D,
    input CTT,
    input CTP,
    input [3:0]clear,
    output [3:0] Q,
    output CO
);

    reg [3:0] Q_reg = 4'b0;

    always @(posedge CP or negedge CRn) begin
        if (!CRn) begin
            Q_reg <= clear;
        end else begin
            if (LDn == 1'b0) begin
                Q_reg <= D;
            end else if (CTT & CTP) begin
                if (Q_reg == 4'hF) begin
                    Q_reg <= 4'b0000;
                end else begin
                    Q_reg <= Q_reg + 1;
                end
            end
        end
    end
    assign CO = (Q_reg == 4'hF); 
    assign Q = Q_reg;
endmodule
