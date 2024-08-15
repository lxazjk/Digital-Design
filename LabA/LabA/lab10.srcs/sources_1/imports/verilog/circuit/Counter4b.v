/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Counter4b                                                    **
 **                                                                          **
 *****************************************************************************/

module Counter4b( Qa,
                  Qb,
                  Qc,
                  Qd,
                  Rc,
                  clk );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input clk;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output Qa;
   output Qb;
   output Qc;
   output Qd;
   output Rc;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_logisimNet0;
   wire s_logisimNet1;
   wire s_logisimNet10;
   wire s_logisimNet11;
   wire s_logisimNet12;
   wire s_logisimNet13;
   wire s_logisimNet14;
   wire s_logisimNet15;
   wire s_logisimNet16;
   wire s_logisimNet2;
   wire s_logisimNet3;
   wire s_logisimNet4;
   wire s_logisimNet5;
   wire s_logisimNet6;
   wire s_logisimNet7;
   wire s_logisimNet8;
   wire s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet16 = clk;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Qa = s_logisimNet2;
   assign Qb = s_logisimNet3;
   assign Qc = s_logisimNet4;
   assign Qd = s_logisimNet5;
   assign Rc = s_logisimNet15;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet7),
               .input2(s_logisimNet3),
               .result(s_logisimNet13));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet2),
               .input2(s_logisimNet6),
               .result(s_logisimNet1));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet13),
               .input2(s_logisimNet1),
               .result(s_logisimNet8));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet6),
               .input2(s_logisimNet4),
               .result(s_logisimNet9));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet2),
               .input2(s_logisimNet4),
               .result(s_logisimNet10));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet10),
               .input2(s_logisimNet3),
               .result(s_logisimNet12));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet12),
               .input2(s_logisimNet9),
               .result(s_logisimNet0));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_8 (.input1(s_logisimNet2),
               .input2(s_logisimNet3),
               .input3(s_logisimNet4),
               .result(s_logisimNet11));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet11),
               .input2(s_logisimNet5),
               .result(s_logisimNet14));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_10 (.input1(s_logisimNet2),
                .input2(s_logisimNet3),
                .input3(s_logisimNet4),
                .input4(s_logisimNet5),
                .result(s_logisimNet15));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   FD   FD0 (.D(s_logisimNet7),
             .Q(s_logisimNet2),
             .Qn(s_logisimNet7),
             .clk(s_logisimNet16));

   FD   FD1 (.D(s_logisimNet8),
             .Q(s_logisimNet3),
             .Qn(s_logisimNet6),
             .clk(s_logisimNet16));

   FD   FD2 (.D(s_logisimNet0),
             .Q(s_logisimNet4),
             .Qn(),
             .clk(s_logisimNet16));

   FD   FD3 (.D(s_logisimNet14),
             .Q(s_logisimNet5),
             .Qn(),
             .clk(s_logisimNet16));

endmodule
