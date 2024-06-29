/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : DisplayNumber                                                **
 **                                                                          **
 *****************************************************************************/

module DisplayNumber( AN,
                      LEs,
                      SEGMENT,
                      clk,
                      hexs,
                      points,
                      rst );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [3:0]  LEs;
   input        clk;
   input [15:0] hexs;
   input [3:0]  points;
   input        rst;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [3:0] AN;
   output [7:0] SEGMENT;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0]  s_logisimBus10;
   wire [3:0]  s_logisimBus11;
   wire [31:0] s_logisimBus14;
   wire [3:0]  s_logisimBus15;
   wire [3:0]  s_logisimBus17;
   wire [15:0] s_logisimBus18;
   wire [7:0]  s_logisimBus22;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet12;
   wire        s_logisimNet13;
   wire        s_logisimNet16;
   wire        s_logisimNet19;
   wire        s_logisimNet2;
   wire        s_logisimNet20;
   wire        s_logisimNet21;
   wire        s_logisimNet23;
   wire        s_logisimNet3;
   wire        s_logisimNet4;
   wire        s_logisimNet5;
   wire        s_logisimNet6;
   wire        s_logisimNet7;
   wire        s_logisimNet8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus10[3:0]  = points;
   assign s_logisimBus15[3:0]  = LEs;
   assign s_logisimBus18[15:0] = hexs;
   assign s_logisimNet20       = clk;
   assign s_logisimNet8        = rst;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign AN      = s_logisimBus17[3:0];
   assign SEGMENT = s_logisimBus22[7:0];

   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   MyMC14495   m2 (.D0(s_logisimBus11[0]),
                   .D1(s_logisimBus11[1]),
                   .D2(s_logisimBus11[2]),
                   .D3(s_logisimBus11[3]),
                   .LE(s_logisimNet2),
                   .a(s_logisimBus22[0]),
                   .b(s_logisimBus22[1]),
                   .c(s_logisimBus22[2]),
                   .d(s_logisimBus22[3]),
                   .e(s_logisimBus22[4]),
                   .f(s_logisimBus22[5]),
                   .g(s_logisimBus22[6]),
                   .p(s_logisimBus22[7]),
                   .point(s_logisimNet5));

   clkdiv   m0 (.clk(s_logisimNet20),
                .div_res(s_logisimBus14[31:0]),
                .rst(s_logisimNet8));

   DisplaySync   m1 (.AN(s_logisimBus17[3:0]),
                     .HEX(s_logisimBus11[3:0]),
                     .LE(s_logisimNet2),
                     .LEs(s_logisimBus15[3:0]),
                     .hexs(s_logisimBus18[15:0]),
                     .point(s_logisimNet5),
                     .points(s_logisimBus10[3:0]),
                     .scan(s_logisimBus14[18:17]));

endmodule
