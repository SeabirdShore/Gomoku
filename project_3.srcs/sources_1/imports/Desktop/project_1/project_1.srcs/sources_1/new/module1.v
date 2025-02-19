`timescale 1ns / 1ps

module module1(
    input [11:0]hcount,
    input [11:0]vcount,
    output  [99:0]x
    );
   

assign x[0] = ((hcount - 240)*(hcount - 240)+(vcount - 90)*(vcount - 90))<=400;
assign x[1] =((hcount - 280)*(hcount - 280)+(vcount - 90)*(vcount - 90))<=400;
assign x[2] =( (hcount - 320)*(hcount - 320)+(vcount - 90)*(vcount - 90))<=400;
assign x[3] = ((hcount - 360)*(hcount - 360)+(vcount - 90)*(vcount - 90))<=400;
assign x[4] =( (hcount - 400)*(hcount - 400)+(vcount - 90)*(vcount - 90))<=400;
assign x[5] = ((hcount - 440)*(hcount - 440)+(vcount - 90)*(vcount - 90))<=400;
assign x[6] = ((hcount - 480)*(hcount - 480)+(vcount - 90)*(vcount - 90))<=400;
assign x[7] = ((hcount - 520)*(hcount - 520)+(vcount - 90)*(vcount - 90))<=400;
assign x[8] =( (hcount - 560)*(hcount - 560)+(vcount - 90)*(vcount - 90))<=400;
assign x[9] = ((hcount - 600)*(hcount - 600)+(vcount - 90)*(vcount - 90))<=400;
assign x[10] = (hcount - 240)*(hcount - 240)+(vcount - 130)*(vcount - 130)<=400;
assign x[11] =  (hcount - 280)*(hcount - 280)+(vcount - 130)*(vcount - 130)<=400;
assign x[12] = (hcount - 320)*(hcount - 320)+(vcount - 130)*(vcount - 130)<=400;
assign x[13] =  (hcount - 360)*(hcount -360)+(vcount - 130)*(vcount - 130)<=400;
assign x[14] =  (hcount - 400)*(hcount - 400)+(vcount - 130)*(vcount - 130)<=400;
assign x[15] =  (hcount - 440)*(hcount - 440)+(vcount - 130)*(vcount - 130)<=400;
assign x[16] =  (hcount - 480)*(hcount -480)+(vcount - 130)*(vcount - 130)<=400;
assign x[17] =  (hcount -520)*(hcount - 520)+(vcount - 130)*(vcount - 130)<=400;
assign x[18] =  (hcount - 560)*(hcount - 560)+(vcount - 130)*(vcount - 130)<=400;
assign x[19] = (hcount - 600)*(hcount - 600)+(vcount - 130)*(vcount - 130)<=400;
assign x[20] = (hcount - 240)*(hcount - 240)+(vcount -170)*(vcount - 170)<=400;
assign x[21] = (hcount - 280)*(hcount - 280)+(vcount -170)*(vcount - 170)<=400;
assign x[22] = (hcount -320)*(hcount - 320)+(vcount -170)*(vcount - 170)<=400;
assign x[23] = (hcount -360)*(hcount - 360)+(vcount -170)*(vcount - 170)<=400;
assign x[24] =(hcount -400)*(hcount - 400)+(vcount -170)*(vcount - 170)<=400;
assign x[25] =(hcount - 440)*(hcount - 440)+(vcount -170)*(vcount - 170)<=400;
assign x[26] = (hcount - 480)*(hcount - 480)+(vcount -170)*(vcount - 170)<=400;
assign x[27] = (hcount - 520)*(hcount - 520)+(vcount -170)*(vcount - 170)<=400;
assign x[28] =(hcount - 560)*(hcount -560)+(vcount -170)*(vcount - 170)<=400;
assign x[29] =(hcount - 600)*(hcount - 600)+(vcount -170)*(vcount - 170)<=400;
assign x[30] = (hcount - 240)*(hcount - 240)+(vcount - 210)*(vcount - 210)<=400;
assign x[31] =(hcount - 280)*(hcount - 280)+(vcount - 210)*(vcount - 210)<=400;
assign x[32] =(hcount - 320)*(hcount - 320)+(vcount - 210)*(vcount - 210)<=400;
assign x[33] = (hcount - 360)*(hcount - 360)+(vcount - 210)*(vcount - 210)<=400;
assign x[34] =(hcount - 400)*(hcount - 400)+(vcount - 210)*(vcount - 210)<=400;
assign x[35] = (hcount - 440)*(hcount - 440)+(vcount - 210)*(vcount - 210)<=400;
assign x[36] = (hcount - 480)*(hcount -480)+(vcount - 210)*(vcount - 210)<=400;
assign x[37] = (hcount - 520)*(hcount - 520)+(vcount - 210)*(vcount - 210)<=400;
assign x[38] =(hcount - 560)*(hcount - 560)+(vcount - 210)*(vcount - 210)<=400;
assign x[39] =(hcount - 600)*(hcount - 600)+(vcount - 210)*(vcount - 210)<=400;
assign x[40] = (hcount - 240)*(hcount - 240)+(vcount - 250)*(vcount - 250)<=400;
assign x[41] = (hcount - 280)*(hcount - 280)+(vcount - 250)*(vcount - 250)<=400;
assign x[42] =  (hcount - 320)*(hcount - 320)+(vcount - 250)*(vcount - 250)<=400;
assign x[43] =  (hcount - 360)*(hcount - 360)+(vcount - 250)*(vcount - 250)<=400;
assign x[44] =  (hcount - 400)*(hcount - 400)+(vcount - 250)*(vcount - 250)<=400;
assign x[45] =  (hcount - 440)*(hcount - 440)+(vcount - 250)*(vcount - 250)<=400;
assign x[46] =  (hcount - 480)*(hcount -480)+(vcount - 250)*(vcount - 250)<=400;
assign x[47] =  (hcount - 520)*(hcount - 520)+(vcount - 250)*(vcount - 250)<=400;
assign x[48] = (hcount - 560)*(hcount -560)+(vcount - 250)*(vcount - 250)<=400;
assign x[49] =  (hcount - 600)*(hcount -600)+(vcount - 250)*(vcount - 250)<=400;
assign x[50] = (hcount - 240)*(hcount - 240)+(vcount - 290)*(vcount - 290)<=400;
assign x[51] =  (hcount - 280)*(hcount - 280)+(vcount - 290)*(vcount - 290)<=400;
assign x[52] =  (hcount - 320)*(hcount - 320)+(vcount - 290)*(vcount - 290)<=400;
assign x[53] =  (hcount - 360)*(hcount - 360)+(vcount - 290)*(vcount - 290)<=400;
assign x[54] =  (hcount - 400)*(hcount -400)+(vcount - 290)*(vcount - 290)<=400;
assign x[55] =  (hcount - 440)*(hcount - 440)+(vcount - 290)*(vcount - 290)<=400;
assign x[56] =  (hcount -480)*(hcount - 480)+(vcount - 290)*(vcount - 290)<=400;
assign x[57] = (hcount - 520)*(hcount - 520)+(vcount - 290)*(vcount - 290)<=400;
assign x[58] =  (hcount - 560)*(hcount - 560)+(vcount - 290)*(vcount - 290)<=400;
assign x[59] =  (hcount - 600)*(hcount - 600)+(vcount - 290)*(vcount - 290)<=400;
assign x[60] = (hcount - 240)*(hcount - 240)+(vcount -330)*(vcount - 330)<=400;
assign x[61] = (hcount - 280)*(hcount - 280)+(vcount -330)*(vcount - 330)<=400;
assign x[62] = (hcount -320)*(hcount - 320)+(vcount -330)*(vcount - 330)<=400;
assign x[63] = (hcount - 360)*(hcount - 360)+(vcount -330)*(vcount - 330)<=400;
assign x[64] = (hcount - 400)*(hcount - 400)+(vcount -330)*(vcount - 330)<=400;
assign x[65] =(hcount - 440)*(hcount - 440)+(vcount -330)*(vcount - 330)<=400;
assign x[66] = (hcount - 480)*(hcount - 480)+(vcount -330)*(vcount - 330)<=400;
assign x[67] =(hcount - 520)*(hcount -520)+(vcount -330)*(vcount - 330)<=400;
assign x[68] = (hcount -560)*(hcount - 560)+(vcount -330)*(vcount - 330)<=400;
assign x[69] =(hcount - 600)*(hcount - 600)+(vcount -330)*(vcount - 330)<=400;
assign x[70] = (hcount - 240)*(hcount - 240)+(vcount - 370)*(vcount - 370)<=400;
assign x[71] = (hcount - 280)*(hcount - 280)+(vcount - 370)*(vcount - 370)<=400;
assign x[72] =(hcount - 320)*(hcount - 320)+(vcount - 370)*(vcount - 370)<=400;
assign x[73] =(hcount -360)*(hcount - 360)+(vcount - 370)*(vcount - 370)<=400;
assign x[74] = (hcount - 400)*(hcount - 400)+(vcount - 370)*(vcount - 370)<=400;
assign x[75] =(hcount - 440)*(hcount - 440)+(vcount - 370)*(vcount - 370)<=400;
assign x[76] = (hcount - 480)*(hcount - 480)+(vcount - 370)*(vcount - 370)<=400;
assign x[77] =(hcount - 520)*(hcount - 520)+(vcount - 370)*(vcount - 370)<=400;
assign x[78] =(hcount - 560)*(hcount -560)+(vcount - 370)*(vcount - 370)<=400;
assign x[79] = (hcount - 600)*(hcount - 600)+(vcount - 370)*(vcount - 370)<=400;
assign x[80] = (hcount - 240)*(hcount - 240)+(vcount - 410)*(vcount -410)<=400;
assign x[81] = (hcount - 280)*(hcount - 280)+(vcount - 410)*(vcount -410)<=400;
assign x[82] = (hcount - 320)*(hcount - 320)+(vcount - 410)*(vcount -410)<=400;
assign x[83] = (hcount - 360)*(hcount - 360)+(vcount - 410)*(vcount -410)<=400;
assign x[84] =(hcount - 400)*(hcount - 400)+(vcount - 410)*(vcount -410)<=400;
assign x[85] = (hcount - 440)*(hcount - 440)+(vcount - 410)*(vcount -410)<=400;
assign x[86] = (hcount - 480)*(hcount - 480)+(vcount - 410)*(vcount -410)<=400;
assign x[87] =(hcount - 520)*(hcount - 520)+(vcount - 410)*(vcount -410)<=400;
assign x[88] = (hcount - 560)*(hcount - 560)+(vcount - 410)*(vcount -410)<=400;
assign x[89] = (hcount - 600)*(hcount - 600)+(vcount - 410)*(vcount -410)<=400;
assign x[90] = (hcount - 240)*(hcount - 240)+(vcount - 450)*(vcount - 450)<=400;
assign x[91] = (hcount - 280)*(hcount - 280)+(vcount - 450)*(vcount -450)<=400;
assign x[92] = (hcount - 320)*(hcount -320)+(vcount -450)*(vcount - 450)<=400;
assign x[93] = (hcount - 360)*(hcount - 360)+(vcount - 450)*(vcount - 450)<=400;
assign x[94] = (hcount - 400)*(hcount - 400)+(vcount - 450)*(vcount - 450)<=400;
assign x[95] = (hcount - 440)*(hcount - 440)+(vcount -450)*(vcount - 450)<=400;
assign x[96] = (hcount - 480)*(hcount - 480)+(vcount - 450)*(vcount - 450)<=400;
assign x[97] = (hcount - 520)*(hcount - 520)+(vcount -450)*(vcount - 450)<=400;
assign x[98] = (hcount - 560)*(hcount - 560)+(vcount -450)*(vcount -450)<=400;
assign x[99] = (hcount - 600)*(hcount - 600)+(vcount - 450)*(vcount - 450)<=400;
endmodule
