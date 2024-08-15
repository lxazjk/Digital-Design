module RevCounter(
    input wire clk,
    input wire rst,
    input wire s,
    output reg [15:0] cnt = 0,
    output reg Rc = 0
);
    always @(posedge clk) begin
        if (rst) begin
            cnt <= 16'b0;
            Rc <= 0;
        end else begin
            if (s == 1) begin
                if (cnt == 0) begin
                    cnt <= 16'hFFFF;
                    Rc <= 1;  
                end else begin
                    cnt <= cnt - 1'b1;
                    Rc <= 0;
                end
            end else begin
                if (cnt == 16'hFFFF) begin
                    cnt <= 0;
                    Rc <= 1;  
                end else begin
                    cnt <= cnt + 1'b1;
                    Rc <= 0;
                end
            end
        end
    end
endmodule