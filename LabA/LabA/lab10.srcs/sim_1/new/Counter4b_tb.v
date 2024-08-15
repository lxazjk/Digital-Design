`timescale 1ns / 1ps

module tb_Counter4b;
  wire Qa, Qb, Qc, Qd;
  reg clk;
  wire Rc;

  Counter4b uut (
    .Qa(Qa), 
    .Qb(Qb), 
    .Qc(Qc), 
    .Qd(Qd), 
    .Rc(Rc), 
    .clk(clk)
  );
  initial begin
    clk = 0;
    forever #10 clk = ~clk; 
  end

  initial begin @(posedge clk); 
    #5;
    repeat (16) @(posedge clk);
    $finish;
  end

endmodule
