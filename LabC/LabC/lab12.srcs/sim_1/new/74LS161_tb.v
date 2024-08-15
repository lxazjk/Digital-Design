module tb_My74LS161;
    reg CP;
    reg CRn;
    reg LDn;
    reg [3:0] D;
    reg CTT;
    reg CTP;
    wire [3:0] Q;
    wire CO;
    My74LS161 uut (
        .CP(CP), 
        .CRn(CRn), 
        .LDn(LDn), 
        .D(D), 
        .CTT(CTT), 
        .CTP(CTP), 
        .Q(Q), 
        .CO(CO)
    );
    initial begin
        CP = 0; CRn = 1; LDn = 1; 
        CTT = 1; CTP = 1;
        forever #10 CP = ~CP;   
    end
endmodule
