/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : ALU                                                          **
 **                                                                          **
 *****************************************************************************/

module ALU( A,
            B,
            Cout,
            op,
            res );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [3:0] A;
   input [3:0] B;
   input [1:0] op;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       Cout;
   output [3:0] res;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0] s_logisimBus1;
   wire [3:0] s_logisimBus2;
   wire [3:0] s_logisimBus4;
   wire [3:0] s_logisimBus5;
   wire [1:0] s_logisimBus6;
   wire [3:0] s_logisimBus8;
   wire [3:0] s_logisimBus9;
   wire       s_logisimNet0;
   wire       s_logisimNet10;
   wire       s_logisimNet3;
   wire       s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus2[3:0] = A;
   assign s_logisimBus5[3:0] = B;
   assign s_logisimBus6[1:0] = op;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Cout = s_logisimNet10;
   assign res  = s_logisimBus9[3:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Ground
   assign  s_logisimNet7  =  1'b0;


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   Mux4to1b4   M1 (.D0(s_logisimBus1[3:0]),
                   .D1(s_logisimBus1[3:0]),
                   .D2(s_logisimBus4[3:0]),
                   .D3(s_logisimBus8[3:0]),
                   .S(s_logisimBus6[1:0]),
                   .Y(s_logisimBus9[3:0]));

   Or2b4   A3 (.A(s_logisimBus2[3:0]),
               .B(s_logisimBus5[3:0]),
               .res(s_logisimBus8[3:0]));

   AddSub4b   A1 (.A(s_logisimBus2[3:0]),
                  .B(s_logisimBus5[3:0]),
                  .Cout(s_logisimNet3),
                  .Ctrl(s_logisimBus6[0]),
                  .S(s_logisimBus1[3:0]));

   And2b4   A2 (.A(s_logisimBus2[3:0]),
                .B(s_logisimBus5[3:0]),
                .res(s_logisimBus4[3:0]));

   Mux4to1   M2 (.D0(s_logisimNet3),
                 .D1(s_logisimNet3),
                 .D2(s_logisimNet7),
                 .D3(s_logisimNet7),
                 .Y(s_logisimNet10),
                 .s(s_logisimBus6[1:0]));

endmodule
