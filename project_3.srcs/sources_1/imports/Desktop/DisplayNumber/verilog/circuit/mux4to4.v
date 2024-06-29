/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : mux4to4                                                      **
 **                                                                          **
 *****************************************************************************/

module mux4to4( D0,
                D1,
                D2,
                D3,
                Y,
                s );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [3:0] D0;
   input [3:0] D1;
   input [3:0] D2;
   input [3:0] D3;
   input [1:0] s;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [3:0] Y;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0] s_logisimBus42;
   wire [1:0] s_logisimBus45;
   wire [3:0] s_logisimBus46;
   wire [3:0] s_logisimBus47;
   wire [3:0] s_logisimBus48;
   wire [3:0] s_logisimBus49;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet17;
   wire       s_logisimNet18;
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet20;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet23;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet26;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet31;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet35;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet4;
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet43;
   wire       s_logisimNet44;
   wire       s_logisimNet5;
   wire       s_logisimNet6;
   wire       s_logisimNet7;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus45[1:0] = s;
   assign s_logisimBus46[3:0] = D0;
   assign s_logisimBus47[3:0] = D1;
   assign s_logisimBus48[3:0] = D2;
   assign s_logisimBus49[3:0] = D3;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Y = s_logisimBus42[3:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet13 = ~s_logisimBus45[1];

   // NOT Gate
   assign s_logisimNet2 = ~s_logisimBus45[0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_1 (.input1(s_logisimNet21),
               .input2(s_logisimNet22),
               .input3(s_logisimNet29),
               .input4(s_logisimNet38),
               .result(s_logisimBus42[0]));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_2 (.input1(s_logisimNet16),
               .input2(s_logisimNet40),
               .input3(s_logisimNet12),
               .input4(s_logisimNet33),
               .result(s_logisimBus42[1]));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_3 (.input1(s_logisimNet31),
               .input2(s_logisimNet41),
               .input3(s_logisimNet24),
               .input4(s_logisimNet34),
               .result(s_logisimBus42[3]));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_4 (.input1(s_logisimNet7),
               .input2(s_logisimNet20),
               .input3(s_logisimNet23),
               .input4(s_logisimNet17),
               .result(s_logisimBus42[2]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimBus45[0]),
               .input2(s_logisimNet13),
               .result(s_logisimNet8));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet2),
               .input2(s_logisimBus45[1]),
               .result(s_logisimNet0));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimBus45[0]),
               .input2(s_logisimBus45[1]),
               .result(s_logisimNet15));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet2),
               .input2(s_logisimNet13),
               .result(s_logisimNet3));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet0),
               .input2(s_logisimBus48[0]),
               .result(s_logisimNet29));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet15),
                .input2(s_logisimBus49[0]),
                .result(s_logisimNet38));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet15),
                .input2(s_logisimBus49[1]),
                .result(s_logisimNet33));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet3),
                .input2(s_logisimBus46[2]),
                .result(s_logisimNet7));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_13 (.input1(s_logisimNet8),
                .input2(s_logisimBus47[2]),
                .result(s_logisimNet20));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimNet0),
                .input2(s_logisimBus48[2]),
                .result(s_logisimNet23));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_15 (.input1(s_logisimNet15),
                .input2(s_logisimBus49[2]),
                .result(s_logisimNet17));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_16 (.input1(s_logisimNet3),
                .input2(s_logisimBus46[3]),
                .result(s_logisimNet31));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_17 (.input1(s_logisimNet8),
                .input2(s_logisimBus47[3]),
                .result(s_logisimNet41));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_18 (.input1(s_logisimNet15),
                .input2(s_logisimBus49[3]),
                .result(s_logisimNet34));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_19 (.input1(s_logisimNet8),
                .input2(s_logisimBus47[0]),
                .result(s_logisimNet22));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_20 (.input1(s_logisimNet8),
                .input2(s_logisimBus47[1]),
                .result(s_logisimNet40));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_21 (.input1(s_logisimNet0),
                .input2(s_logisimBus48[1]),
                .result(s_logisimNet12));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_22 (.input1(s_logisimNet3),
                .input2(s_logisimBus46[0]),
                .result(s_logisimNet21));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_23 (.input1(s_logisimNet3),
                .input2(s_logisimBus46[1]),
                .result(s_logisimNet16));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_24 (.input1(s_logisimNet0),
                .input2(s_logisimBus48[3]),
                .result(s_logisimNet24));


endmodule
