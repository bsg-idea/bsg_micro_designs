

module top
(
  binary_i,
  gray_o
);

  input [63:0] binary_i;
  output [63:0] gray_o;

  bsg_binary_plus_one_to_gray
  wrapper
  (
    .binary_i(binary_i),
    .gray_o(gray_o)
  );


endmodule



module bsg_scan_width_p64_and_p1_lo_to_hi_p1
(
  i,
  o
);

  input [63:0] i;
  output [63:0] o;
  wire [63:0] o;
  wire t_5__63_,t_5__62_,t_5__61_,t_5__60_,t_5__59_,t_5__58_,t_5__57_,t_5__56_,
  t_5__55_,t_5__54_,t_5__53_,t_5__52_,t_5__51_,t_5__50_,t_5__49_,t_5__48_,t_5__47_,
  t_5__46_,t_5__45_,t_5__44_,t_5__43_,t_5__42_,t_5__41_,t_5__40_,t_5__39_,t_5__38_,
  t_5__37_,t_5__36_,t_5__35_,t_5__34_,t_5__33_,t_5__32_,t_5__31_,t_5__30_,t_5__29_,
  t_5__28_,t_5__27_,t_5__26_,t_5__25_,t_5__24_,t_5__23_,t_5__22_,t_5__21_,t_5__20_,
  t_5__19_,t_5__18_,t_5__17_,t_5__16_,t_5__15_,t_5__14_,t_5__13_,t_5__12_,t_5__11_,
  t_5__10_,t_5__9_,t_5__8_,t_5__7_,t_5__6_,t_5__5_,t_5__4_,t_5__3_,t_5__2_,t_5__1_,
  t_5__0_,t_4__63_,t_4__62_,t_4__61_,t_4__60_,t_4__59_,t_4__58_,t_4__57_,t_4__56_,
  t_4__55_,t_4__54_,t_4__53_,t_4__52_,t_4__51_,t_4__50_,t_4__49_,t_4__48_,t_4__47_,
  t_4__46_,t_4__45_,t_4__44_,t_4__43_,t_4__42_,t_4__41_,t_4__40_,t_4__39_,t_4__38_,
  t_4__37_,t_4__36_,t_4__35_,t_4__34_,t_4__33_,t_4__32_,t_4__31_,t_4__30_,
  t_4__29_,t_4__28_,t_4__27_,t_4__26_,t_4__25_,t_4__24_,t_4__23_,t_4__22_,t_4__21_,
  t_4__20_,t_4__19_,t_4__18_,t_4__17_,t_4__16_,t_4__15_,t_4__14_,t_4__13_,t_4__12_,
  t_4__11_,t_4__10_,t_4__9_,t_4__8_,t_4__7_,t_4__6_,t_4__5_,t_4__4_,t_4__3_,t_4__2_,
  t_4__1_,t_4__0_,t_3__63_,t_3__62_,t_3__61_,t_3__60_,t_3__59_,t_3__58_,t_3__57_,
  t_3__56_,t_3__55_,t_3__54_,t_3__53_,t_3__52_,t_3__51_,t_3__50_,t_3__49_,t_3__48_,
  t_3__47_,t_3__46_,t_3__45_,t_3__44_,t_3__43_,t_3__42_,t_3__41_,t_3__40_,t_3__39_,
  t_3__38_,t_3__37_,t_3__36_,t_3__35_,t_3__34_,t_3__33_,t_3__32_,t_3__31_,t_3__30_,
  t_3__29_,t_3__28_,t_3__27_,t_3__26_,t_3__25_,t_3__24_,t_3__23_,t_3__22_,t_3__21_,
  t_3__20_,t_3__19_,t_3__18_,t_3__17_,t_3__16_,t_3__15_,t_3__14_,t_3__13_,t_3__12_,
  t_3__11_,t_3__10_,t_3__9_,t_3__8_,t_3__7_,t_3__6_,t_3__5_,t_3__4_,t_3__3_,
  t_3__2_,t_3__1_,t_3__0_,t_2__63_,t_2__62_,t_2__61_,t_2__60_,t_2__59_,t_2__58_,
  t_2__57_,t_2__56_,t_2__55_,t_2__54_,t_2__53_,t_2__52_,t_2__51_,t_2__50_,t_2__49_,
  t_2__48_,t_2__47_,t_2__46_,t_2__45_,t_2__44_,t_2__43_,t_2__42_,t_2__41_,t_2__40_,
  t_2__39_,t_2__38_,t_2__37_,t_2__36_,t_2__35_,t_2__34_,t_2__33_,t_2__32_,t_2__31_,
  t_2__30_,t_2__29_,t_2__28_,t_2__27_,t_2__26_,t_2__25_,t_2__24_,t_2__23_,t_2__22_,
  t_2__21_,t_2__20_,t_2__19_,t_2__18_,t_2__17_,t_2__16_,t_2__15_,t_2__14_,t_2__13_,
  t_2__12_,t_2__11_,t_2__10_,t_2__9_,t_2__8_,t_2__7_,t_2__6_,t_2__5_,t_2__4_,t_2__3_,
  t_2__2_,t_2__1_,t_2__0_,t_1__63_,t_1__62_,t_1__61_,t_1__60_,t_1__59_,t_1__58_,
  t_1__57_,t_1__56_,t_1__55_,t_1__54_,t_1__53_,t_1__52_,t_1__51_,t_1__50_,t_1__49_,
  t_1__48_,t_1__47_,t_1__46_,t_1__45_,t_1__44_,t_1__43_,t_1__42_,t_1__41_,t_1__40_,
  t_1__39_,t_1__38_,t_1__37_,t_1__36_,t_1__35_,t_1__34_,t_1__33_,t_1__32_,
  t_1__31_,t_1__30_,t_1__29_,t_1__28_,t_1__27_,t_1__26_,t_1__25_,t_1__24_,t_1__23_,
  t_1__22_,t_1__21_,t_1__20_,t_1__19_,t_1__18_,t_1__17_,t_1__16_,t_1__15_,t_1__14_,
  t_1__13_,t_1__12_,t_1__11_,t_1__10_,t_1__9_,t_1__8_,t_1__7_,t_1__6_,t_1__5_,t_1__4_,
  t_1__3_,t_1__2_,t_1__1_,t_1__0_;
  assign t_1__63_ = i[0] & 1'b1;
  assign t_1__62_ = i[1] & i[0];
  assign t_1__61_ = i[2] & i[1];
  assign t_1__60_ = i[3] & i[2];
  assign t_1__59_ = i[4] & i[3];
  assign t_1__58_ = i[5] & i[4];
  assign t_1__57_ = i[6] & i[5];
  assign t_1__56_ = i[7] & i[6];
  assign t_1__55_ = i[8] & i[7];
  assign t_1__54_ = i[9] & i[8];
  assign t_1__53_ = i[10] & i[9];
  assign t_1__52_ = i[11] & i[10];
  assign t_1__51_ = i[12] & i[11];
  assign t_1__50_ = i[13] & i[12];
  assign t_1__49_ = i[14] & i[13];
  assign t_1__48_ = i[15] & i[14];
  assign t_1__47_ = i[16] & i[15];
  assign t_1__46_ = i[17] & i[16];
  assign t_1__45_ = i[18] & i[17];
  assign t_1__44_ = i[19] & i[18];
  assign t_1__43_ = i[20] & i[19];
  assign t_1__42_ = i[21] & i[20];
  assign t_1__41_ = i[22] & i[21];
  assign t_1__40_ = i[23] & i[22];
  assign t_1__39_ = i[24] & i[23];
  assign t_1__38_ = i[25] & i[24];
  assign t_1__37_ = i[26] & i[25];
  assign t_1__36_ = i[27] & i[26];
  assign t_1__35_ = i[28] & i[27];
  assign t_1__34_ = i[29] & i[28];
  assign t_1__33_ = i[30] & i[29];
  assign t_1__32_ = i[31] & i[30];
  assign t_1__31_ = i[32] & i[31];
  assign t_1__30_ = i[33] & i[32];
  assign t_1__29_ = i[34] & i[33];
  assign t_1__28_ = i[35] & i[34];
  assign t_1__27_ = i[36] & i[35];
  assign t_1__26_ = i[37] & i[36];
  assign t_1__25_ = i[38] & i[37];
  assign t_1__24_ = i[39] & i[38];
  assign t_1__23_ = i[40] & i[39];
  assign t_1__22_ = i[41] & i[40];
  assign t_1__21_ = i[42] & i[41];
  assign t_1__20_ = i[43] & i[42];
  assign t_1__19_ = i[44] & i[43];
  assign t_1__18_ = i[45] & i[44];
  assign t_1__17_ = i[46] & i[45];
  assign t_1__16_ = i[47] & i[46];
  assign t_1__15_ = i[48] & i[47];
  assign t_1__14_ = i[49] & i[48];
  assign t_1__13_ = i[50] & i[49];
  assign t_1__12_ = i[51] & i[50];
  assign t_1__11_ = i[52] & i[51];
  assign t_1__10_ = i[53] & i[52];
  assign t_1__9_ = i[54] & i[53];
  assign t_1__8_ = i[55] & i[54];
  assign t_1__7_ = i[56] & i[55];
  assign t_1__6_ = i[57] & i[56];
  assign t_1__5_ = i[58] & i[57];
  assign t_1__4_ = i[59] & i[58];
  assign t_1__3_ = i[60] & i[59];
  assign t_1__2_ = i[61] & i[60];
  assign t_1__1_ = i[62] & i[61];
  assign t_1__0_ = i[63] & i[62];
  assign t_2__63_ = t_1__63_ & 1'b1;
  assign t_2__62_ = t_1__62_ & 1'b1;
  assign t_2__61_ = t_1__61_ & t_1__63_;
  assign t_2__60_ = t_1__60_ & t_1__62_;
  assign t_2__59_ = t_1__59_ & t_1__61_;
  assign t_2__58_ = t_1__58_ & t_1__60_;
  assign t_2__57_ = t_1__57_ & t_1__59_;
  assign t_2__56_ = t_1__56_ & t_1__58_;
  assign t_2__55_ = t_1__55_ & t_1__57_;
  assign t_2__54_ = t_1__54_ & t_1__56_;
  assign t_2__53_ = t_1__53_ & t_1__55_;
  assign t_2__52_ = t_1__52_ & t_1__54_;
  assign t_2__51_ = t_1__51_ & t_1__53_;
  assign t_2__50_ = t_1__50_ & t_1__52_;
  assign t_2__49_ = t_1__49_ & t_1__51_;
  assign t_2__48_ = t_1__48_ & t_1__50_;
  assign t_2__47_ = t_1__47_ & t_1__49_;
  assign t_2__46_ = t_1__46_ & t_1__48_;
  assign t_2__45_ = t_1__45_ & t_1__47_;
  assign t_2__44_ = t_1__44_ & t_1__46_;
  assign t_2__43_ = t_1__43_ & t_1__45_;
  assign t_2__42_ = t_1__42_ & t_1__44_;
  assign t_2__41_ = t_1__41_ & t_1__43_;
  assign t_2__40_ = t_1__40_ & t_1__42_;
  assign t_2__39_ = t_1__39_ & t_1__41_;
  assign t_2__38_ = t_1__38_ & t_1__40_;
  assign t_2__37_ = t_1__37_ & t_1__39_;
  assign t_2__36_ = t_1__36_ & t_1__38_;
  assign t_2__35_ = t_1__35_ & t_1__37_;
  assign t_2__34_ = t_1__34_ & t_1__36_;
  assign t_2__33_ = t_1__33_ & t_1__35_;
  assign t_2__32_ = t_1__32_ & t_1__34_;
  assign t_2__31_ = t_1__31_ & t_1__33_;
  assign t_2__30_ = t_1__30_ & t_1__32_;
  assign t_2__29_ = t_1__29_ & t_1__31_;
  assign t_2__28_ = t_1__28_ & t_1__30_;
  assign t_2__27_ = t_1__27_ & t_1__29_;
  assign t_2__26_ = t_1__26_ & t_1__28_;
  assign t_2__25_ = t_1__25_ & t_1__27_;
  assign t_2__24_ = t_1__24_ & t_1__26_;
  assign t_2__23_ = t_1__23_ & t_1__25_;
  assign t_2__22_ = t_1__22_ & t_1__24_;
  assign t_2__21_ = t_1__21_ & t_1__23_;
  assign t_2__20_ = t_1__20_ & t_1__22_;
  assign t_2__19_ = t_1__19_ & t_1__21_;
  assign t_2__18_ = t_1__18_ & t_1__20_;
  assign t_2__17_ = t_1__17_ & t_1__19_;
  assign t_2__16_ = t_1__16_ & t_1__18_;
  assign t_2__15_ = t_1__15_ & t_1__17_;
  assign t_2__14_ = t_1__14_ & t_1__16_;
  assign t_2__13_ = t_1__13_ & t_1__15_;
  assign t_2__12_ = t_1__12_ & t_1__14_;
  assign t_2__11_ = t_1__11_ & t_1__13_;
  assign t_2__10_ = t_1__10_ & t_1__12_;
  assign t_2__9_ = t_1__9_ & t_1__11_;
  assign t_2__8_ = t_1__8_ & t_1__10_;
  assign t_2__7_ = t_1__7_ & t_1__9_;
  assign t_2__6_ = t_1__6_ & t_1__8_;
  assign t_2__5_ = t_1__5_ & t_1__7_;
  assign t_2__4_ = t_1__4_ & t_1__6_;
  assign t_2__3_ = t_1__3_ & t_1__5_;
  assign t_2__2_ = t_1__2_ & t_1__4_;
  assign t_2__1_ = t_1__1_ & t_1__3_;
  assign t_2__0_ = t_1__0_ & t_1__2_;
  assign t_3__63_ = t_2__63_ & 1'b1;
  assign t_3__62_ = t_2__62_ & 1'b1;
  assign t_3__61_ = t_2__61_ & 1'b1;
  assign t_3__60_ = t_2__60_ & 1'b1;
  assign t_3__59_ = t_2__59_ & t_2__63_;
  assign t_3__58_ = t_2__58_ & t_2__62_;
  assign t_3__57_ = t_2__57_ & t_2__61_;
  assign t_3__56_ = t_2__56_ & t_2__60_;
  assign t_3__55_ = t_2__55_ & t_2__59_;
  assign t_3__54_ = t_2__54_ & t_2__58_;
  assign t_3__53_ = t_2__53_ & t_2__57_;
  assign t_3__52_ = t_2__52_ & t_2__56_;
  assign t_3__51_ = t_2__51_ & t_2__55_;
  assign t_3__50_ = t_2__50_ & t_2__54_;
  assign t_3__49_ = t_2__49_ & t_2__53_;
  assign t_3__48_ = t_2__48_ & t_2__52_;
  assign t_3__47_ = t_2__47_ & t_2__51_;
  assign t_3__46_ = t_2__46_ & t_2__50_;
  assign t_3__45_ = t_2__45_ & t_2__49_;
  assign t_3__44_ = t_2__44_ & t_2__48_;
  assign t_3__43_ = t_2__43_ & t_2__47_;
  assign t_3__42_ = t_2__42_ & t_2__46_;
  assign t_3__41_ = t_2__41_ & t_2__45_;
  assign t_3__40_ = t_2__40_ & t_2__44_;
  assign t_3__39_ = t_2__39_ & t_2__43_;
  assign t_3__38_ = t_2__38_ & t_2__42_;
  assign t_3__37_ = t_2__37_ & t_2__41_;
  assign t_3__36_ = t_2__36_ & t_2__40_;
  assign t_3__35_ = t_2__35_ & t_2__39_;
  assign t_3__34_ = t_2__34_ & t_2__38_;
  assign t_3__33_ = t_2__33_ & t_2__37_;
  assign t_3__32_ = t_2__32_ & t_2__36_;
  assign t_3__31_ = t_2__31_ & t_2__35_;
  assign t_3__30_ = t_2__30_ & t_2__34_;
  assign t_3__29_ = t_2__29_ & t_2__33_;
  assign t_3__28_ = t_2__28_ & t_2__32_;
  assign t_3__27_ = t_2__27_ & t_2__31_;
  assign t_3__26_ = t_2__26_ & t_2__30_;
  assign t_3__25_ = t_2__25_ & t_2__29_;
  assign t_3__24_ = t_2__24_ & t_2__28_;
  assign t_3__23_ = t_2__23_ & t_2__27_;
  assign t_3__22_ = t_2__22_ & t_2__26_;
  assign t_3__21_ = t_2__21_ & t_2__25_;
  assign t_3__20_ = t_2__20_ & t_2__24_;
  assign t_3__19_ = t_2__19_ & t_2__23_;
  assign t_3__18_ = t_2__18_ & t_2__22_;
  assign t_3__17_ = t_2__17_ & t_2__21_;
  assign t_3__16_ = t_2__16_ & t_2__20_;
  assign t_3__15_ = t_2__15_ & t_2__19_;
  assign t_3__14_ = t_2__14_ & t_2__18_;
  assign t_3__13_ = t_2__13_ & t_2__17_;
  assign t_3__12_ = t_2__12_ & t_2__16_;
  assign t_3__11_ = t_2__11_ & t_2__15_;
  assign t_3__10_ = t_2__10_ & t_2__14_;
  assign t_3__9_ = t_2__9_ & t_2__13_;
  assign t_3__8_ = t_2__8_ & t_2__12_;
  assign t_3__7_ = t_2__7_ & t_2__11_;
  assign t_3__6_ = t_2__6_ & t_2__10_;
  assign t_3__5_ = t_2__5_ & t_2__9_;
  assign t_3__4_ = t_2__4_ & t_2__8_;
  assign t_3__3_ = t_2__3_ & t_2__7_;
  assign t_3__2_ = t_2__2_ & t_2__6_;
  assign t_3__1_ = t_2__1_ & t_2__5_;
  assign t_3__0_ = t_2__0_ & t_2__4_;
  assign t_4__63_ = t_3__63_ & 1'b1;
  assign t_4__62_ = t_3__62_ & 1'b1;
  assign t_4__61_ = t_3__61_ & 1'b1;
  assign t_4__60_ = t_3__60_ & 1'b1;
  assign t_4__59_ = t_3__59_ & 1'b1;
  assign t_4__58_ = t_3__58_ & 1'b1;
  assign t_4__57_ = t_3__57_ & 1'b1;
  assign t_4__56_ = t_3__56_ & 1'b1;
  assign t_4__55_ = t_3__55_ & t_3__63_;
  assign t_4__54_ = t_3__54_ & t_3__62_;
  assign t_4__53_ = t_3__53_ & t_3__61_;
  assign t_4__52_ = t_3__52_ & t_3__60_;
  assign t_4__51_ = t_3__51_ & t_3__59_;
  assign t_4__50_ = t_3__50_ & t_3__58_;
  assign t_4__49_ = t_3__49_ & t_3__57_;
  assign t_4__48_ = t_3__48_ & t_3__56_;
  assign t_4__47_ = t_3__47_ & t_3__55_;
  assign t_4__46_ = t_3__46_ & t_3__54_;
  assign t_4__45_ = t_3__45_ & t_3__53_;
  assign t_4__44_ = t_3__44_ & t_3__52_;
  assign t_4__43_ = t_3__43_ & t_3__51_;
  assign t_4__42_ = t_3__42_ & t_3__50_;
  assign t_4__41_ = t_3__41_ & t_3__49_;
  assign t_4__40_ = t_3__40_ & t_3__48_;
  assign t_4__39_ = t_3__39_ & t_3__47_;
  assign t_4__38_ = t_3__38_ & t_3__46_;
  assign t_4__37_ = t_3__37_ & t_3__45_;
  assign t_4__36_ = t_3__36_ & t_3__44_;
  assign t_4__35_ = t_3__35_ & t_3__43_;
  assign t_4__34_ = t_3__34_ & t_3__42_;
  assign t_4__33_ = t_3__33_ & t_3__41_;
  assign t_4__32_ = t_3__32_ & t_3__40_;
  assign t_4__31_ = t_3__31_ & t_3__39_;
  assign t_4__30_ = t_3__30_ & t_3__38_;
  assign t_4__29_ = t_3__29_ & t_3__37_;
  assign t_4__28_ = t_3__28_ & t_3__36_;
  assign t_4__27_ = t_3__27_ & t_3__35_;
  assign t_4__26_ = t_3__26_ & t_3__34_;
  assign t_4__25_ = t_3__25_ & t_3__33_;
  assign t_4__24_ = t_3__24_ & t_3__32_;
  assign t_4__23_ = t_3__23_ & t_3__31_;
  assign t_4__22_ = t_3__22_ & t_3__30_;
  assign t_4__21_ = t_3__21_ & t_3__29_;
  assign t_4__20_ = t_3__20_ & t_3__28_;
  assign t_4__19_ = t_3__19_ & t_3__27_;
  assign t_4__18_ = t_3__18_ & t_3__26_;
  assign t_4__17_ = t_3__17_ & t_3__25_;
  assign t_4__16_ = t_3__16_ & t_3__24_;
  assign t_4__15_ = t_3__15_ & t_3__23_;
  assign t_4__14_ = t_3__14_ & t_3__22_;
  assign t_4__13_ = t_3__13_ & t_3__21_;
  assign t_4__12_ = t_3__12_ & t_3__20_;
  assign t_4__11_ = t_3__11_ & t_3__19_;
  assign t_4__10_ = t_3__10_ & t_3__18_;
  assign t_4__9_ = t_3__9_ & t_3__17_;
  assign t_4__8_ = t_3__8_ & t_3__16_;
  assign t_4__7_ = t_3__7_ & t_3__15_;
  assign t_4__6_ = t_3__6_ & t_3__14_;
  assign t_4__5_ = t_3__5_ & t_3__13_;
  assign t_4__4_ = t_3__4_ & t_3__12_;
  assign t_4__3_ = t_3__3_ & t_3__11_;
  assign t_4__2_ = t_3__2_ & t_3__10_;
  assign t_4__1_ = t_3__1_ & t_3__9_;
  assign t_4__0_ = t_3__0_ & t_3__8_;
  assign t_5__63_ = t_4__63_ & 1'b1;
  assign t_5__62_ = t_4__62_ & 1'b1;
  assign t_5__61_ = t_4__61_ & 1'b1;
  assign t_5__60_ = t_4__60_ & 1'b1;
  assign t_5__59_ = t_4__59_ & 1'b1;
  assign t_5__58_ = t_4__58_ & 1'b1;
  assign t_5__57_ = t_4__57_ & 1'b1;
  assign t_5__56_ = t_4__56_ & 1'b1;
  assign t_5__55_ = t_4__55_ & 1'b1;
  assign t_5__54_ = t_4__54_ & 1'b1;
  assign t_5__53_ = t_4__53_ & 1'b1;
  assign t_5__52_ = t_4__52_ & 1'b1;
  assign t_5__51_ = t_4__51_ & 1'b1;
  assign t_5__50_ = t_4__50_ & 1'b1;
  assign t_5__49_ = t_4__49_ & 1'b1;
  assign t_5__48_ = t_4__48_ & 1'b1;
  assign t_5__47_ = t_4__47_ & t_4__63_;
  assign t_5__46_ = t_4__46_ & t_4__62_;
  assign t_5__45_ = t_4__45_ & t_4__61_;
  assign t_5__44_ = t_4__44_ & t_4__60_;
  assign t_5__43_ = t_4__43_ & t_4__59_;
  assign t_5__42_ = t_4__42_ & t_4__58_;
  assign t_5__41_ = t_4__41_ & t_4__57_;
  assign t_5__40_ = t_4__40_ & t_4__56_;
  assign t_5__39_ = t_4__39_ & t_4__55_;
  assign t_5__38_ = t_4__38_ & t_4__54_;
  assign t_5__37_ = t_4__37_ & t_4__53_;
  assign t_5__36_ = t_4__36_ & t_4__52_;
  assign t_5__35_ = t_4__35_ & t_4__51_;
  assign t_5__34_ = t_4__34_ & t_4__50_;
  assign t_5__33_ = t_4__33_ & t_4__49_;
  assign t_5__32_ = t_4__32_ & t_4__48_;
  assign t_5__31_ = t_4__31_ & t_4__47_;
  assign t_5__30_ = t_4__30_ & t_4__46_;
  assign t_5__29_ = t_4__29_ & t_4__45_;
  assign t_5__28_ = t_4__28_ & t_4__44_;
  assign t_5__27_ = t_4__27_ & t_4__43_;
  assign t_5__26_ = t_4__26_ & t_4__42_;
  assign t_5__25_ = t_4__25_ & t_4__41_;
  assign t_5__24_ = t_4__24_ & t_4__40_;
  assign t_5__23_ = t_4__23_ & t_4__39_;
  assign t_5__22_ = t_4__22_ & t_4__38_;
  assign t_5__21_ = t_4__21_ & t_4__37_;
  assign t_5__20_ = t_4__20_ & t_4__36_;
  assign t_5__19_ = t_4__19_ & t_4__35_;
  assign t_5__18_ = t_4__18_ & t_4__34_;
  assign t_5__17_ = t_4__17_ & t_4__33_;
  assign t_5__16_ = t_4__16_ & t_4__32_;
  assign t_5__15_ = t_4__15_ & t_4__31_;
  assign t_5__14_ = t_4__14_ & t_4__30_;
  assign t_5__13_ = t_4__13_ & t_4__29_;
  assign t_5__12_ = t_4__12_ & t_4__28_;
  assign t_5__11_ = t_4__11_ & t_4__27_;
  assign t_5__10_ = t_4__10_ & t_4__26_;
  assign t_5__9_ = t_4__9_ & t_4__25_;
  assign t_5__8_ = t_4__8_ & t_4__24_;
  assign t_5__7_ = t_4__7_ & t_4__23_;
  assign t_5__6_ = t_4__6_ & t_4__22_;
  assign t_5__5_ = t_4__5_ & t_4__21_;
  assign t_5__4_ = t_4__4_ & t_4__20_;
  assign t_5__3_ = t_4__3_ & t_4__19_;
  assign t_5__2_ = t_4__2_ & t_4__18_;
  assign t_5__1_ = t_4__1_ & t_4__17_;
  assign t_5__0_ = t_4__0_ & t_4__16_;
  assign o[0] = t_5__63_ & 1'b1;
  assign o[1] = t_5__62_ & 1'b1;
  assign o[2] = t_5__61_ & 1'b1;
  assign o[3] = t_5__60_ & 1'b1;
  assign o[4] = t_5__59_ & 1'b1;
  assign o[5] = t_5__58_ & 1'b1;
  assign o[6] = t_5__57_ & 1'b1;
  assign o[7] = t_5__56_ & 1'b1;
  assign o[8] = t_5__55_ & 1'b1;
  assign o[9] = t_5__54_ & 1'b1;
  assign o[10] = t_5__53_ & 1'b1;
  assign o[11] = t_5__52_ & 1'b1;
  assign o[12] = t_5__51_ & 1'b1;
  assign o[13] = t_5__50_ & 1'b1;
  assign o[14] = t_5__49_ & 1'b1;
  assign o[15] = t_5__48_ & 1'b1;
  assign o[16] = t_5__47_ & 1'b1;
  assign o[17] = t_5__46_ & 1'b1;
  assign o[18] = t_5__45_ & 1'b1;
  assign o[19] = t_5__44_ & 1'b1;
  assign o[20] = t_5__43_ & 1'b1;
  assign o[21] = t_5__42_ & 1'b1;
  assign o[22] = t_5__41_ & 1'b1;
  assign o[23] = t_5__40_ & 1'b1;
  assign o[24] = t_5__39_ & 1'b1;
  assign o[25] = t_5__38_ & 1'b1;
  assign o[26] = t_5__37_ & 1'b1;
  assign o[27] = t_5__36_ & 1'b1;
  assign o[28] = t_5__35_ & 1'b1;
  assign o[29] = t_5__34_ & 1'b1;
  assign o[30] = t_5__33_ & 1'b1;
  assign o[31] = t_5__32_ & 1'b1;
  assign o[32] = t_5__31_ & t_5__63_;
  assign o[33] = t_5__30_ & t_5__62_;
  assign o[34] = t_5__29_ & t_5__61_;
  assign o[35] = t_5__28_ & t_5__60_;
  assign o[36] = t_5__27_ & t_5__59_;
  assign o[37] = t_5__26_ & t_5__58_;
  assign o[38] = t_5__25_ & t_5__57_;
  assign o[39] = t_5__24_ & t_5__56_;
  assign o[40] = t_5__23_ & t_5__55_;
  assign o[41] = t_5__22_ & t_5__54_;
  assign o[42] = t_5__21_ & t_5__53_;
  assign o[43] = t_5__20_ & t_5__52_;
  assign o[44] = t_5__19_ & t_5__51_;
  assign o[45] = t_5__18_ & t_5__50_;
  assign o[46] = t_5__17_ & t_5__49_;
  assign o[47] = t_5__16_ & t_5__48_;
  assign o[48] = t_5__15_ & t_5__47_;
  assign o[49] = t_5__14_ & t_5__46_;
  assign o[50] = t_5__13_ & t_5__45_;
  assign o[51] = t_5__12_ & t_5__44_;
  assign o[52] = t_5__11_ & t_5__43_;
  assign o[53] = t_5__10_ & t_5__42_;
  assign o[54] = t_5__9_ & t_5__41_;
  assign o[55] = t_5__8_ & t_5__40_;
  assign o[56] = t_5__7_ & t_5__39_;
  assign o[57] = t_5__6_ & t_5__38_;
  assign o[58] = t_5__5_ & t_5__37_;
  assign o[59] = t_5__4_ & t_5__36_;
  assign o[60] = t_5__3_ & t_5__35_;
  assign o[61] = t_5__2_ & t_5__34_;
  assign o[62] = t_5__1_ & t_5__33_;
  assign o[63] = t_5__0_ & t_5__32_;

endmodule



module bsg_binary_plus_one_to_gray
(
  binary_i,
  gray_o
);

  input [63:0] binary_i;
  output [63:0] gray_o;
  wire [63:0] gray_o,binary_scan,edge_detect;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126;

  bsg_scan_width_p64_and_p1_lo_to_hi_p1
  scan_and
  (
    .i(binary_i),
    .o(binary_scan)
  );

  assign edge_detect[63] = N0 & binary_scan[62];
  assign N0 = ~1'b0;
  assign edge_detect[62] = N1 & binary_scan[61];
  assign N1 = ~binary_scan[62];
  assign edge_detect[61] = N2 & binary_scan[60];
  assign N2 = ~binary_scan[61];
  assign edge_detect[60] = N3 & binary_scan[59];
  assign N3 = ~binary_scan[60];
  assign edge_detect[59] = N4 & binary_scan[58];
  assign N4 = ~binary_scan[59];
  assign edge_detect[58] = N5 & binary_scan[57];
  assign N5 = ~binary_scan[58];
  assign edge_detect[57] = N6 & binary_scan[56];
  assign N6 = ~binary_scan[57];
  assign edge_detect[56] = N7 & binary_scan[55];
  assign N7 = ~binary_scan[56];
  assign edge_detect[55] = N8 & binary_scan[54];
  assign N8 = ~binary_scan[55];
  assign edge_detect[54] = N9 & binary_scan[53];
  assign N9 = ~binary_scan[54];
  assign edge_detect[53] = N10 & binary_scan[52];
  assign N10 = ~binary_scan[53];
  assign edge_detect[52] = N11 & binary_scan[51];
  assign N11 = ~binary_scan[52];
  assign edge_detect[51] = N12 & binary_scan[50];
  assign N12 = ~binary_scan[51];
  assign edge_detect[50] = N13 & binary_scan[49];
  assign N13 = ~binary_scan[50];
  assign edge_detect[49] = N14 & binary_scan[48];
  assign N14 = ~binary_scan[49];
  assign edge_detect[48] = N15 & binary_scan[47];
  assign N15 = ~binary_scan[48];
  assign edge_detect[47] = N16 & binary_scan[46];
  assign N16 = ~binary_scan[47];
  assign edge_detect[46] = N17 & binary_scan[45];
  assign N17 = ~binary_scan[46];
  assign edge_detect[45] = N18 & binary_scan[44];
  assign N18 = ~binary_scan[45];
  assign edge_detect[44] = N19 & binary_scan[43];
  assign N19 = ~binary_scan[44];
  assign edge_detect[43] = N20 & binary_scan[42];
  assign N20 = ~binary_scan[43];
  assign edge_detect[42] = N21 & binary_scan[41];
  assign N21 = ~binary_scan[42];
  assign edge_detect[41] = N22 & binary_scan[40];
  assign N22 = ~binary_scan[41];
  assign edge_detect[40] = N23 & binary_scan[39];
  assign N23 = ~binary_scan[40];
  assign edge_detect[39] = N24 & binary_scan[38];
  assign N24 = ~binary_scan[39];
  assign edge_detect[38] = N25 & binary_scan[37];
  assign N25 = ~binary_scan[38];
  assign edge_detect[37] = N26 & binary_scan[36];
  assign N26 = ~binary_scan[37];
  assign edge_detect[36] = N27 & binary_scan[35];
  assign N27 = ~binary_scan[36];
  assign edge_detect[35] = N28 & binary_scan[34];
  assign N28 = ~binary_scan[35];
  assign edge_detect[34] = N29 & binary_scan[33];
  assign N29 = ~binary_scan[34];
  assign edge_detect[33] = N30 & binary_scan[32];
  assign N30 = ~binary_scan[33];
  assign edge_detect[32] = N31 & binary_scan[31];
  assign N31 = ~binary_scan[32];
  assign edge_detect[31] = N32 & binary_scan[30];
  assign N32 = ~binary_scan[31];
  assign edge_detect[30] = N33 & binary_scan[29];
  assign N33 = ~binary_scan[30];
  assign edge_detect[29] = N34 & binary_scan[28];
  assign N34 = ~binary_scan[29];
  assign edge_detect[28] = N35 & binary_scan[27];
  assign N35 = ~binary_scan[28];
  assign edge_detect[27] = N36 & binary_scan[26];
  assign N36 = ~binary_scan[27];
  assign edge_detect[26] = N37 & binary_scan[25];
  assign N37 = ~binary_scan[26];
  assign edge_detect[25] = N38 & binary_scan[24];
  assign N38 = ~binary_scan[25];
  assign edge_detect[24] = N39 & binary_scan[23];
  assign N39 = ~binary_scan[24];
  assign edge_detect[23] = N40 & binary_scan[22];
  assign N40 = ~binary_scan[23];
  assign edge_detect[22] = N41 & binary_scan[21];
  assign N41 = ~binary_scan[22];
  assign edge_detect[21] = N42 & binary_scan[20];
  assign N42 = ~binary_scan[21];
  assign edge_detect[20] = N43 & binary_scan[19];
  assign N43 = ~binary_scan[20];
  assign edge_detect[19] = N44 & binary_scan[18];
  assign N44 = ~binary_scan[19];
  assign edge_detect[18] = N45 & binary_scan[17];
  assign N45 = ~binary_scan[18];
  assign edge_detect[17] = N46 & binary_scan[16];
  assign N46 = ~binary_scan[17];
  assign edge_detect[16] = N47 & binary_scan[15];
  assign N47 = ~binary_scan[16];
  assign edge_detect[15] = N48 & binary_scan[14];
  assign N48 = ~binary_scan[15];
  assign edge_detect[14] = N49 & binary_scan[13];
  assign N49 = ~binary_scan[14];
  assign edge_detect[13] = N50 & binary_scan[12];
  assign N50 = ~binary_scan[13];
  assign edge_detect[12] = N51 & binary_scan[11];
  assign N51 = ~binary_scan[12];
  assign edge_detect[11] = N52 & binary_scan[10];
  assign N52 = ~binary_scan[11];
  assign edge_detect[10] = N53 & binary_scan[9];
  assign N53 = ~binary_scan[10];
  assign edge_detect[9] = N54 & binary_scan[8];
  assign N54 = ~binary_scan[9];
  assign edge_detect[8] = N55 & binary_scan[7];
  assign N55 = ~binary_scan[8];
  assign edge_detect[7] = N56 & binary_scan[6];
  assign N56 = ~binary_scan[7];
  assign edge_detect[6] = N57 & binary_scan[5];
  assign N57 = ~binary_scan[6];
  assign edge_detect[5] = N58 & binary_scan[4];
  assign N58 = ~binary_scan[5];
  assign edge_detect[4] = N59 & binary_scan[3];
  assign N59 = ~binary_scan[4];
  assign edge_detect[3] = N60 & binary_scan[2];
  assign N60 = ~binary_scan[3];
  assign edge_detect[2] = N61 & binary_scan[1];
  assign N61 = ~binary_scan[2];
  assign edge_detect[1] = N62 & binary_scan[0];
  assign N62 = ~binary_scan[1];
  assign edge_detect[0] = N63 & 1'b1;
  assign N63 = ~binary_scan[0];
  assign gray_o[63] = binary_i[63] ^ edge_detect[63];
  assign gray_o[62] = N64 ^ edge_detect[62];
  assign N64 = binary_i[63] ^ binary_i[62];
  assign gray_o[61] = N65 ^ edge_detect[61];
  assign N65 = binary_i[62] ^ binary_i[61];
  assign gray_o[60] = N66 ^ edge_detect[60];
  assign N66 = binary_i[61] ^ binary_i[60];
  assign gray_o[59] = N67 ^ edge_detect[59];
  assign N67 = binary_i[60] ^ binary_i[59];
  assign gray_o[58] = N68 ^ edge_detect[58];
  assign N68 = binary_i[59] ^ binary_i[58];
  assign gray_o[57] = N69 ^ edge_detect[57];
  assign N69 = binary_i[58] ^ binary_i[57];
  assign gray_o[56] = N70 ^ edge_detect[56];
  assign N70 = binary_i[57] ^ binary_i[56];
  assign gray_o[55] = N71 ^ edge_detect[55];
  assign N71 = binary_i[56] ^ binary_i[55];
  assign gray_o[54] = N72 ^ edge_detect[54];
  assign N72 = binary_i[55] ^ binary_i[54];
  assign gray_o[53] = N73 ^ edge_detect[53];
  assign N73 = binary_i[54] ^ binary_i[53];
  assign gray_o[52] = N74 ^ edge_detect[52];
  assign N74 = binary_i[53] ^ binary_i[52];
  assign gray_o[51] = N75 ^ edge_detect[51];
  assign N75 = binary_i[52] ^ binary_i[51];
  assign gray_o[50] = N76 ^ edge_detect[50];
  assign N76 = binary_i[51] ^ binary_i[50];
  assign gray_o[49] = N77 ^ edge_detect[49];
  assign N77 = binary_i[50] ^ binary_i[49];
  assign gray_o[48] = N78 ^ edge_detect[48];
  assign N78 = binary_i[49] ^ binary_i[48];
  assign gray_o[47] = N79 ^ edge_detect[47];
  assign N79 = binary_i[48] ^ binary_i[47];
  assign gray_o[46] = N80 ^ edge_detect[46];
  assign N80 = binary_i[47] ^ binary_i[46];
  assign gray_o[45] = N81 ^ edge_detect[45];
  assign N81 = binary_i[46] ^ binary_i[45];
  assign gray_o[44] = N82 ^ edge_detect[44];
  assign N82 = binary_i[45] ^ binary_i[44];
  assign gray_o[43] = N83 ^ edge_detect[43];
  assign N83 = binary_i[44] ^ binary_i[43];
  assign gray_o[42] = N84 ^ edge_detect[42];
  assign N84 = binary_i[43] ^ binary_i[42];
  assign gray_o[41] = N85 ^ edge_detect[41];
  assign N85 = binary_i[42] ^ binary_i[41];
  assign gray_o[40] = N86 ^ edge_detect[40];
  assign N86 = binary_i[41] ^ binary_i[40];
  assign gray_o[39] = N87 ^ edge_detect[39];
  assign N87 = binary_i[40] ^ binary_i[39];
  assign gray_o[38] = N88 ^ edge_detect[38];
  assign N88 = binary_i[39] ^ binary_i[38];
  assign gray_o[37] = N89 ^ edge_detect[37];
  assign N89 = binary_i[38] ^ binary_i[37];
  assign gray_o[36] = N90 ^ edge_detect[36];
  assign N90 = binary_i[37] ^ binary_i[36];
  assign gray_o[35] = N91 ^ edge_detect[35];
  assign N91 = binary_i[36] ^ binary_i[35];
  assign gray_o[34] = N92 ^ edge_detect[34];
  assign N92 = binary_i[35] ^ binary_i[34];
  assign gray_o[33] = N93 ^ edge_detect[33];
  assign N93 = binary_i[34] ^ binary_i[33];
  assign gray_o[32] = N94 ^ edge_detect[32];
  assign N94 = binary_i[33] ^ binary_i[32];
  assign gray_o[31] = N95 ^ edge_detect[31];
  assign N95 = binary_i[32] ^ binary_i[31];
  assign gray_o[30] = N96 ^ edge_detect[30];
  assign N96 = binary_i[31] ^ binary_i[30];
  assign gray_o[29] = N97 ^ edge_detect[29];
  assign N97 = binary_i[30] ^ binary_i[29];
  assign gray_o[28] = N98 ^ edge_detect[28];
  assign N98 = binary_i[29] ^ binary_i[28];
  assign gray_o[27] = N99 ^ edge_detect[27];
  assign N99 = binary_i[28] ^ binary_i[27];
  assign gray_o[26] = N100 ^ edge_detect[26];
  assign N100 = binary_i[27] ^ binary_i[26];
  assign gray_o[25] = N101 ^ edge_detect[25];
  assign N101 = binary_i[26] ^ binary_i[25];
  assign gray_o[24] = N102 ^ edge_detect[24];
  assign N102 = binary_i[25] ^ binary_i[24];
  assign gray_o[23] = N103 ^ edge_detect[23];
  assign N103 = binary_i[24] ^ binary_i[23];
  assign gray_o[22] = N104 ^ edge_detect[22];
  assign N104 = binary_i[23] ^ binary_i[22];
  assign gray_o[21] = N105 ^ edge_detect[21];
  assign N105 = binary_i[22] ^ binary_i[21];
  assign gray_o[20] = N106 ^ edge_detect[20];
  assign N106 = binary_i[21] ^ binary_i[20];
  assign gray_o[19] = N107 ^ edge_detect[19];
  assign N107 = binary_i[20] ^ binary_i[19];
  assign gray_o[18] = N108 ^ edge_detect[18];
  assign N108 = binary_i[19] ^ binary_i[18];
  assign gray_o[17] = N109 ^ edge_detect[17];
  assign N109 = binary_i[18] ^ binary_i[17];
  assign gray_o[16] = N110 ^ edge_detect[16];
  assign N110 = binary_i[17] ^ binary_i[16];
  assign gray_o[15] = N111 ^ edge_detect[15];
  assign N111 = binary_i[16] ^ binary_i[15];
  assign gray_o[14] = N112 ^ edge_detect[14];
  assign N112 = binary_i[15] ^ binary_i[14];
  assign gray_o[13] = N113 ^ edge_detect[13];
  assign N113 = binary_i[14] ^ binary_i[13];
  assign gray_o[12] = N114 ^ edge_detect[12];
  assign N114 = binary_i[13] ^ binary_i[12];
  assign gray_o[11] = N115 ^ edge_detect[11];
  assign N115 = binary_i[12] ^ binary_i[11];
  assign gray_o[10] = N116 ^ edge_detect[10];
  assign N116 = binary_i[11] ^ binary_i[10];
  assign gray_o[9] = N117 ^ edge_detect[9];
  assign N117 = binary_i[10] ^ binary_i[9];
  assign gray_o[8] = N118 ^ edge_detect[8];
  assign N118 = binary_i[9] ^ binary_i[8];
  assign gray_o[7] = N119 ^ edge_detect[7];
  assign N119 = binary_i[8] ^ binary_i[7];
  assign gray_o[6] = N120 ^ edge_detect[6];
  assign N120 = binary_i[7] ^ binary_i[6];
  assign gray_o[5] = N121 ^ edge_detect[5];
  assign N121 = binary_i[6] ^ binary_i[5];
  assign gray_o[4] = N122 ^ edge_detect[4];
  assign N122 = binary_i[5] ^ binary_i[4];
  assign gray_o[3] = N123 ^ edge_detect[3];
  assign N123 = binary_i[4] ^ binary_i[3];
  assign gray_o[2] = N124 ^ edge_detect[2];
  assign N124 = binary_i[3] ^ binary_i[2];
  assign gray_o[1] = N125 ^ edge_detect[1];
  assign N125 = binary_i[2] ^ binary_i[1];
  assign gray_o[0] = N126 ^ edge_detect[0];
  assign N126 = binary_i[1] ^ binary_i[0];

endmodule

