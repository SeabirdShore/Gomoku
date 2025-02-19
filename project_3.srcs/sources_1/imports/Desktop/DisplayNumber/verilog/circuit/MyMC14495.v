/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : MyMC14495                                                    **
 **                                                                          **
 *****************************************************************************/

module MyMC14495( D0,
                  D1,
                  D2,
                  D3,
                  LE,
                  a,
                  b,
                  c,
                  d,
                  e,
                  f,
                  g,
                  p,
                  point );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input D0;
   input D1;
   input D2;
   input D3;
   input LE;
   input point;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output a;
   output b;
   output c;
   output d;
   output e;
   output f;
   output g;
   output p;

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
   wire s_logisimNet17;
   wire s_logisimNet18;
   wire s_logisimNet19;
   wire s_logisimNet2;
   wire s_logisimNet20;
   wire s_logisimNet21;
   wire s_logisimNet22;
   wire s_logisimNet23;
   wire s_logisimNet24;
   wire s_logisimNet25;
   wire s_logisimNet26;
   wire s_logisimNet27;
   wire s_logisimNet28;
   wire s_logisimNet29;
   wire s_logisimNet3;
   wire s_logisimNet30;
   wire s_logisimNet31;
   wire s_logisimNet32;
   wire s_logisimNet33;
   wire s_logisimNet34;
   wire s_logisimNet35;
   wire s_logisimNet36;
   wire s_logisimNet37;
   wire s_logisimNet38;
   wire s_logisimNet39;
   wire s_logisimNet4;
   wire s_logisimNet40;
   wire s_logisimNet41;
   wire s_logisimNet42;
   wire s_logisimNet43;
   wire s_logisimNet44;
   wire s_logisimNet45;
   wire s_logisimNet46;
   wire s_logisimNet47;
   wire s_logisimNet48;
   wire s_logisimNet49;
   wire s_logisimNet5;
   wire s_logisimNet50;
   wire s_logisimNet51;
   wire s_logisimNet52;
   wire s_logisimNet53;
   wire s_logisimNet54;
   wire s_logisimNet55;
   wire s_logisimNet56;
   wire s_logisimNet57;
   wire s_logisimNet58;
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
   assign s_logisimNet0  = D1;
   assign s_logisimNet1  = D2;
   assign s_logisimNet16 = point;
   assign s_logisimNet5  = D0;
   assign s_logisimNet6  = LE;
   assign s_logisimNet9  = D3;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign a = s_logisimNet27;
   assign b = s_logisimNet56;
   assign c = s_logisimNet50;
   assign d = s_logisimNet39;
   assign e = s_logisimNet57;
   assign f = s_logisimNet52;
   assign g = s_logisimNet42;
   assign p = s_logisimNet2;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet10 = ~s_logisimNet5;

   // NOT Gate
   assign s_logisimNet8 = ~s_logisimNet0;

   // NOT Gate
   assign s_logisimNet4 = ~s_logisimNet1;

   // NOT Gate
   assign s_logisimNet11 = ~s_logisimNet9;

   // NOT Gate
   assign s_logisimNet2 = ~s_logisimNet16;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_1 (.input1(s_logisimNet11),
               .input2(s_logisimNet1),
               .input3(s_logisimNet0),
               .input4(s_logisimNet5),
               .result(s_logisimNet49));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_2 (.input1(s_logisimNet11),
               .input2(s_logisimNet1),
               .input3(s_logisimNet8),
               .input4(s_logisimNet5),
               .result(s_logisimNet23));

   OR_GATE_6_INPUTS #(.BubblesMask({2'b00, 4'h0}))
      GATES_3 (.input1(s_logisimNet24),
               .input2(s_logisimNet49),
               .input3(s_logisimNet23),
               .input4(s_logisimNet41),
               .input5(s_logisimNet37),
               .input6(s_logisimNet20),
               .result(s_logisimNet13));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet6),
               .input2(s_logisimNet13),
               .result(s_logisimNet57));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_5 (.input1(s_logisimNet11),
               .input2(s_logisimNet1),
               .input3(s_logisimNet8),
               .input4(s_logisimNet10),
               .result(s_logisimNet41));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_6 (.input1(s_logisimNet11),
               .input2(s_logisimNet4),
               .input3(s_logisimNet0),
               .input4(s_logisimNet5),
               .result(s_logisimNet37));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_7 (.input1(s_logisimNet11),
               .input2(s_logisimNet4),
               .input3(s_logisimNet8),
               .input4(s_logisimNet5),
               .result(s_logisimNet20));

   AND_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_8 (.input1(s_logisimNet9),
               .input2(s_logisimNet1),
               .input3(1'b1),
               .input4(s_logisimNet0),
               .input5(s_logisimNet5),
               .result(s_logisimNet58));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_9 (.input1(s_logisimNet9),
               .input2(s_logisimNet4),
               .input3(s_logisimNet0),
               .input4(s_logisimNet10),
               .result(s_logisimNet7));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_10 (.input1(s_logisimNet11),
                .input2(s_logisimNet1),
                .input3(s_logisimNet0),
                .input4(s_logisimNet5),
                .result(s_logisimNet29));

   OR_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_11 (.input1(s_logisimNet58),
                .input2(s_logisimNet7),
                .input3(s_logisimNet29),
                .input4(s_logisimNet38),
                .input5(s_logisimNet45),
                .result(s_logisimNet33));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet6),
                .input2(s_logisimNet33),
                .result(s_logisimNet39));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_13 (.input1(s_logisimNet11),
                .input2(s_logisimNet1),
                .input3(s_logisimNet8),
                .input4(s_logisimNet10),
                .result(s_logisimNet38));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_14 (.input1(s_logisimNet11),
                .input2(s_logisimNet4),
                .input3(s_logisimNet8),
                .input4(s_logisimNet5),
                .result(s_logisimNet45));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_15 (.input1(s_logisimNet9),
                .input2(s_logisimNet1),
                .input3(s_logisimNet0),
                .input4(s_logisimNet5),
                .result(s_logisimNet36));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_16 (.input1(s_logisimNet9),
                .input2(s_logisimNet1),
                .input3(s_logisimNet0),
                .input4(s_logisimNet10),
                .result(s_logisimNet25));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_17 (.input1(s_logisimNet36),
                .input2(s_logisimNet25),
                .input3(s_logisimNet21),
                .input4(s_logisimNet54),
                .result(s_logisimNet28));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_18 (.input1(s_logisimNet6),
                .input2(s_logisimNet28),
                .result(s_logisimNet50));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_19 (.input1(s_logisimNet9),
                .input2(s_logisimNet1),
                .input3(s_logisimNet8),
                .input4(s_logisimNet10),
                .result(s_logisimNet21));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_20 (.input1(s_logisimNet11),
                .input2(s_logisimNet4),
                .input3(s_logisimNet0),
                .input4(s_logisimNet10),
                .result(s_logisimNet54));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_21 (.input1(s_logisimNet9),
                .input2(s_logisimNet1),
                .input3(s_logisimNet0),
                .input4(s_logisimNet5),
                .result(s_logisimNet14));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_22 (.input1(s_logisimNet9),
                .input2(s_logisimNet1),
                .input3(s_logisimNet0),
                .input4(s_logisimNet10),
                .result(s_logisimNet31));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_23 (.input1(s_logisimNet9),
                .input2(s_logisimNet1),
                .input3(s_logisimNet8),
                .input4(s_logisimNet10),
                .result(s_logisimNet51));

   OR_GATE_6_INPUTS #(.BubblesMask({2'b00, 4'h0}))
      GATES_24 (.input1(s_logisimNet14),
                .input2(s_logisimNet31),
                .input3(s_logisimNet51),
                .input4(s_logisimNet47),
                .input5(s_logisimNet55),
                .input6(s_logisimNet3),
                .result(s_logisimNet46));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_25 (.input1(s_logisimNet6),
                .input2(s_logisimNet46),
                .result(s_logisimNet56));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_26 (.input1(s_logisimNet9),
                .input2(s_logisimNet4),
                .input3(s_logisimNet0),
                .input4(s_logisimNet5),
                .result(s_logisimNet47));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_27 (.input1(s_logisimNet11),
                .input2(s_logisimNet1),
                .input3(s_logisimNet0),
                .input4(s_logisimNet10),
                .result(s_logisimNet55));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_28 (.input1(s_logisimNet11),
                .input2(s_logisimNet1),
                .input3(s_logisimNet8),
                .input4(s_logisimNet5),
                .result(s_logisimNet3));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_29 (.input1(s_logisimNet9),
                .input2(s_logisimNet1),
                .input3(s_logisimNet8),
                .input4(s_logisimNet5),
                .result(s_logisimNet18));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_30 (.input1(s_logisimNet9),
                .input2(s_logisimNet4),
                .input3(s_logisimNet0),
                .input4(s_logisimNet5),
                .result(s_logisimNet48));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_31 (.input1(s_logisimNet18),
                .input2(s_logisimNet48),
                .input3(s_logisimNet17),
                .input4(s_logisimNet35),
                .result(s_logisimNet15));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_32 (.input1(s_logisimNet6),
                .input2(s_logisimNet15),
                .result(s_logisimNet27));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_33 (.input1(s_logisimNet11),
                .input2(s_logisimNet1),
                .input3(s_logisimNet8),
                .input4(s_logisimNet10),
                .result(s_logisimNet17));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_34 (.input1(s_logisimNet5),
                .input2(s_logisimNet11),
                .input3(s_logisimNet4),
                .input4(s_logisimNet8),
                .result(s_logisimNet35));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_35 (.input1(s_logisimNet9),
                .input2(s_logisimNet1),
                .input3(s_logisimNet8),
                .input4(s_logisimNet10),
                .result(s_logisimNet22));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_36 (.input1(s_logisimNet11),
                .input2(s_logisimNet1),
                .input3(s_logisimNet0),
                .input4(s_logisimNet5),
                .result(s_logisimNet12));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_37 (.input1(s_logisimNet22),
                .input2(s_logisimNet12),
                .input3(s_logisimNet30),
                .input4(s_logisimNet43),
                .result(s_logisimNet34));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_38 (.input1(s_logisimNet6),
                .input2(s_logisimNet34),
                .result(s_logisimNet42));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_39 (.input1(s_logisimNet11),
                .input2(s_logisimNet4),
                .input3(s_logisimNet8),
                .input4(s_logisimNet5),
                .result(s_logisimNet30));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_40 (.input1(s_logisimNet11),
                .input2(s_logisimNet4),
                .input3(s_logisimNet8),
                .input4(s_logisimNet10),
                .result(s_logisimNet43));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_41 (.input1(s_logisimNet9),
                .input2(s_logisimNet1),
                .input3(s_logisimNet8),
                .input4(s_logisimNet5),
                .result(s_logisimNet19));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_42 (.input1(s_logisimNet11),
                .input2(s_logisimNet1),
                .input3(s_logisimNet0),
                .input4(s_logisimNet5),
                .result(s_logisimNet32));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_43 (.input1(s_logisimNet11),
                .input2(s_logisimNet4),
                .input3(s_logisimNet0),
                .input4(s_logisimNet5),
                .result(s_logisimNet44));

   OR_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_44 (.input1(s_logisimNet19),
                .input2(s_logisimNet32),
                .input3(s_logisimNet44),
                .input4(s_logisimNet40),
                .input5(s_logisimNet53),
                .result(s_logisimNet26));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_45 (.input1(s_logisimNet6),
                .input2(s_logisimNet26),
                .result(s_logisimNet52));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_46 (.input1(s_logisimNet11),
                .input2(s_logisimNet4),
                .input3(s_logisimNet0),
                .input4(s_logisimNet10),
                .result(s_logisimNet40));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_47 (.input1(s_logisimNet11),
                .input2(s_logisimNet4),
                .input3(s_logisimNet8),
                .input4(s_logisimNet5),
                .result(s_logisimNet53));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_48 (.input1(s_logisimNet9),
                .input2(s_logisimNet4),
                .input3(s_logisimNet8),
                .input4(s_logisimNet5),
                .result(s_logisimNet24));


endmodule
