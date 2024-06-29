/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : DisplaySync                                                  **
 **                                                                          **
 *****************************************************************************/

module DisplaySync( AN,
                    HEX,
                    LE,
                    LEs,
                    hexs,
                    point,
                    points,
                    scan );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [3:0]  LEs;
   input [15:0] hexs;
   input [3:0]  points;
   input [1:0]  scan;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [3:0] AN;
   output [3:0] HEX;
   output       LE;
   output       point;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0]  s_logisimBus0;
   wire [3:0]  s_logisimBus12;
   wire [15:0] s_logisimBus20;
   wire [3:0]  s_logisimBus22;
   wire [3:0]  s_logisimBus23;
   wire [1:0]  s_logisimBus4;
   wire [3:0]  s_logisimBus6;
   wire [3:0]  s_logisimBus7;
   wire [3:0]  s_logisimBus8;
   wire [3:0]  s_logisimBus9;
   wire        s_logisimNet1;
   wire        s_logisimNet10;
   wire        s_logisimNet11;
   wire        s_logisimNet14;
   wire        s_logisimNet15;
   wire        s_logisimNet16;
   wire        s_logisimNet17;
   wire        s_logisimNet18;
   wire        s_logisimNet19;
   wire        s_logisimNet3;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus20[15:0] = hexs;
   assign s_logisimBus22[3:0]  = points;
   assign s_logisimBus23[3:0]  = LEs;
   assign s_logisimBus4[1:0]   = scan;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign AN    = s_logisimBus0[3:0];
   assign HEX   = s_logisimBus9[3:0];
   assign LE    = s_logisimNet19;
   assign point = s_logisimNet3;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus12[3:0]  =  4'h7;


   // Constant
   assign  s_logisimBus6[3:0]  =  4'hE;


   // Constant
   assign  s_logisimBus7[3:0]  =  4'hD;


   // Constant
   assign  s_logisimBus8[3:0]  =  4'hB;


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   mux4to4   mux_hexs (.D0(s_logisimBus20[3:0]),
                       .D1(s_logisimBus20[7:4]),
                       .D2(s_logisimBus20[11:8]),
                       .D3(s_logisimBus20[15:12]),
                       .Y(s_logisimBus9[3:0]),
                       .s(s_logisimBus4[1:0]));

   mux4to1   mux_points (.D0(s_logisimBus22[0]),
                         .D1(s_logisimBus22[1]),
                         .D2(s_logisimBus22[2]),
                         .D3(s_logisimBus22[3]),
                         .Y(s_logisimNet3),
                         .s(s_logisimBus4[1:0]));

   mux4to1   mux_LE (.D0(s_logisimBus23[0]),
                     .D1(s_logisimBus23[1]),
                     .D2(s_logisimBus23[2]),
                     .D3(s_logisimBus23[3]),
                     .Y(s_logisimNet19),
                     .s(s_logisimBus4[1:0]));

   mux4to4   mux_AN (.D0(s_logisimBus6[3:0]),
                     .D1(s_logisimBus7[3:0]),
                     .D2(s_logisimBus8[3:0]),
                     .D3(s_logisimBus12[3:0]),
                     .Y(s_logisimBus0[3:0]),
                     .s(s_logisimBus4[1:0]));

endmodule
