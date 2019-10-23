

module top
(
  clk_i,
  ready_i,
  unlock_i,
  reqs_i,
  grants_o
);

  input [63:0] reqs_i;
  output [63:0] grants_o;
  input clk_i;
  input ready_i;
  input unlock_i;

  bsg_locking_arb_fixed
  wrapper
  (
    .reqs_i(reqs_i),
    .grants_o(grants_o),
    .clk_i(clk_i),
    .ready_i(ready_i),
    .unlock_i(unlock_i)
  );


endmodule



module bsg_dff_reset_en_width_p64
(
  clk_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [63:0] data_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input en_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69;
  reg [63:0] data_o;
  assign N3 = (N0)? 1'b1 : 
              (N69)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                        (N69)? data_i : 1'b0;
  assign N1 = en_i | reset_i;
  assign N2 = ~N1;
  assign N68 = ~reset_i;
  assign N69 = en_i & N68;

  always @(posedge clk_i) begin
    if(N3) begin
      { data_o[63:0] } <= { N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4 };
    end 
  end


endmodule



module bsg_scan_width_p64_or_p1_lo_to_hi_p0
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
  assign t_1__63_ = i[63] | 1'b0;
  assign t_1__62_ = i[62] | i[63];
  assign t_1__61_ = i[61] | i[62];
  assign t_1__60_ = i[60] | i[61];
  assign t_1__59_ = i[59] | i[60];
  assign t_1__58_ = i[58] | i[59];
  assign t_1__57_ = i[57] | i[58];
  assign t_1__56_ = i[56] | i[57];
  assign t_1__55_ = i[55] | i[56];
  assign t_1__54_ = i[54] | i[55];
  assign t_1__53_ = i[53] | i[54];
  assign t_1__52_ = i[52] | i[53];
  assign t_1__51_ = i[51] | i[52];
  assign t_1__50_ = i[50] | i[51];
  assign t_1__49_ = i[49] | i[50];
  assign t_1__48_ = i[48] | i[49];
  assign t_1__47_ = i[47] | i[48];
  assign t_1__46_ = i[46] | i[47];
  assign t_1__45_ = i[45] | i[46];
  assign t_1__44_ = i[44] | i[45];
  assign t_1__43_ = i[43] | i[44];
  assign t_1__42_ = i[42] | i[43];
  assign t_1__41_ = i[41] | i[42];
  assign t_1__40_ = i[40] | i[41];
  assign t_1__39_ = i[39] | i[40];
  assign t_1__38_ = i[38] | i[39];
  assign t_1__37_ = i[37] | i[38];
  assign t_1__36_ = i[36] | i[37];
  assign t_1__35_ = i[35] | i[36];
  assign t_1__34_ = i[34] | i[35];
  assign t_1__33_ = i[33] | i[34];
  assign t_1__32_ = i[32] | i[33];
  assign t_1__31_ = i[31] | i[32];
  assign t_1__30_ = i[30] | i[31];
  assign t_1__29_ = i[29] | i[30];
  assign t_1__28_ = i[28] | i[29];
  assign t_1__27_ = i[27] | i[28];
  assign t_1__26_ = i[26] | i[27];
  assign t_1__25_ = i[25] | i[26];
  assign t_1__24_ = i[24] | i[25];
  assign t_1__23_ = i[23] | i[24];
  assign t_1__22_ = i[22] | i[23];
  assign t_1__21_ = i[21] | i[22];
  assign t_1__20_ = i[20] | i[21];
  assign t_1__19_ = i[19] | i[20];
  assign t_1__18_ = i[18] | i[19];
  assign t_1__17_ = i[17] | i[18];
  assign t_1__16_ = i[16] | i[17];
  assign t_1__15_ = i[15] | i[16];
  assign t_1__14_ = i[14] | i[15];
  assign t_1__13_ = i[13] | i[14];
  assign t_1__12_ = i[12] | i[13];
  assign t_1__11_ = i[11] | i[12];
  assign t_1__10_ = i[10] | i[11];
  assign t_1__9_ = i[9] | i[10];
  assign t_1__8_ = i[8] | i[9];
  assign t_1__7_ = i[7] | i[8];
  assign t_1__6_ = i[6] | i[7];
  assign t_1__5_ = i[5] | i[6];
  assign t_1__4_ = i[4] | i[5];
  assign t_1__3_ = i[3] | i[4];
  assign t_1__2_ = i[2] | i[3];
  assign t_1__1_ = i[1] | i[2];
  assign t_1__0_ = i[0] | i[1];
  assign t_2__63_ = t_1__63_ | 1'b0;
  assign t_2__62_ = t_1__62_ | 1'b0;
  assign t_2__61_ = t_1__61_ | t_1__63_;
  assign t_2__60_ = t_1__60_ | t_1__62_;
  assign t_2__59_ = t_1__59_ | t_1__61_;
  assign t_2__58_ = t_1__58_ | t_1__60_;
  assign t_2__57_ = t_1__57_ | t_1__59_;
  assign t_2__56_ = t_1__56_ | t_1__58_;
  assign t_2__55_ = t_1__55_ | t_1__57_;
  assign t_2__54_ = t_1__54_ | t_1__56_;
  assign t_2__53_ = t_1__53_ | t_1__55_;
  assign t_2__52_ = t_1__52_ | t_1__54_;
  assign t_2__51_ = t_1__51_ | t_1__53_;
  assign t_2__50_ = t_1__50_ | t_1__52_;
  assign t_2__49_ = t_1__49_ | t_1__51_;
  assign t_2__48_ = t_1__48_ | t_1__50_;
  assign t_2__47_ = t_1__47_ | t_1__49_;
  assign t_2__46_ = t_1__46_ | t_1__48_;
  assign t_2__45_ = t_1__45_ | t_1__47_;
  assign t_2__44_ = t_1__44_ | t_1__46_;
  assign t_2__43_ = t_1__43_ | t_1__45_;
  assign t_2__42_ = t_1__42_ | t_1__44_;
  assign t_2__41_ = t_1__41_ | t_1__43_;
  assign t_2__40_ = t_1__40_ | t_1__42_;
  assign t_2__39_ = t_1__39_ | t_1__41_;
  assign t_2__38_ = t_1__38_ | t_1__40_;
  assign t_2__37_ = t_1__37_ | t_1__39_;
  assign t_2__36_ = t_1__36_ | t_1__38_;
  assign t_2__35_ = t_1__35_ | t_1__37_;
  assign t_2__34_ = t_1__34_ | t_1__36_;
  assign t_2__33_ = t_1__33_ | t_1__35_;
  assign t_2__32_ = t_1__32_ | t_1__34_;
  assign t_2__31_ = t_1__31_ | t_1__33_;
  assign t_2__30_ = t_1__30_ | t_1__32_;
  assign t_2__29_ = t_1__29_ | t_1__31_;
  assign t_2__28_ = t_1__28_ | t_1__30_;
  assign t_2__27_ = t_1__27_ | t_1__29_;
  assign t_2__26_ = t_1__26_ | t_1__28_;
  assign t_2__25_ = t_1__25_ | t_1__27_;
  assign t_2__24_ = t_1__24_ | t_1__26_;
  assign t_2__23_ = t_1__23_ | t_1__25_;
  assign t_2__22_ = t_1__22_ | t_1__24_;
  assign t_2__21_ = t_1__21_ | t_1__23_;
  assign t_2__20_ = t_1__20_ | t_1__22_;
  assign t_2__19_ = t_1__19_ | t_1__21_;
  assign t_2__18_ = t_1__18_ | t_1__20_;
  assign t_2__17_ = t_1__17_ | t_1__19_;
  assign t_2__16_ = t_1__16_ | t_1__18_;
  assign t_2__15_ = t_1__15_ | t_1__17_;
  assign t_2__14_ = t_1__14_ | t_1__16_;
  assign t_2__13_ = t_1__13_ | t_1__15_;
  assign t_2__12_ = t_1__12_ | t_1__14_;
  assign t_2__11_ = t_1__11_ | t_1__13_;
  assign t_2__10_ = t_1__10_ | t_1__12_;
  assign t_2__9_ = t_1__9_ | t_1__11_;
  assign t_2__8_ = t_1__8_ | t_1__10_;
  assign t_2__7_ = t_1__7_ | t_1__9_;
  assign t_2__6_ = t_1__6_ | t_1__8_;
  assign t_2__5_ = t_1__5_ | t_1__7_;
  assign t_2__4_ = t_1__4_ | t_1__6_;
  assign t_2__3_ = t_1__3_ | t_1__5_;
  assign t_2__2_ = t_1__2_ | t_1__4_;
  assign t_2__1_ = t_1__1_ | t_1__3_;
  assign t_2__0_ = t_1__0_ | t_1__2_;
  assign t_3__63_ = t_2__63_ | 1'b0;
  assign t_3__62_ = t_2__62_ | 1'b0;
  assign t_3__61_ = t_2__61_ | 1'b0;
  assign t_3__60_ = t_2__60_ | 1'b0;
  assign t_3__59_ = t_2__59_ | t_2__63_;
  assign t_3__58_ = t_2__58_ | t_2__62_;
  assign t_3__57_ = t_2__57_ | t_2__61_;
  assign t_3__56_ = t_2__56_ | t_2__60_;
  assign t_3__55_ = t_2__55_ | t_2__59_;
  assign t_3__54_ = t_2__54_ | t_2__58_;
  assign t_3__53_ = t_2__53_ | t_2__57_;
  assign t_3__52_ = t_2__52_ | t_2__56_;
  assign t_3__51_ = t_2__51_ | t_2__55_;
  assign t_3__50_ = t_2__50_ | t_2__54_;
  assign t_3__49_ = t_2__49_ | t_2__53_;
  assign t_3__48_ = t_2__48_ | t_2__52_;
  assign t_3__47_ = t_2__47_ | t_2__51_;
  assign t_3__46_ = t_2__46_ | t_2__50_;
  assign t_3__45_ = t_2__45_ | t_2__49_;
  assign t_3__44_ = t_2__44_ | t_2__48_;
  assign t_3__43_ = t_2__43_ | t_2__47_;
  assign t_3__42_ = t_2__42_ | t_2__46_;
  assign t_3__41_ = t_2__41_ | t_2__45_;
  assign t_3__40_ = t_2__40_ | t_2__44_;
  assign t_3__39_ = t_2__39_ | t_2__43_;
  assign t_3__38_ = t_2__38_ | t_2__42_;
  assign t_3__37_ = t_2__37_ | t_2__41_;
  assign t_3__36_ = t_2__36_ | t_2__40_;
  assign t_3__35_ = t_2__35_ | t_2__39_;
  assign t_3__34_ = t_2__34_ | t_2__38_;
  assign t_3__33_ = t_2__33_ | t_2__37_;
  assign t_3__32_ = t_2__32_ | t_2__36_;
  assign t_3__31_ = t_2__31_ | t_2__35_;
  assign t_3__30_ = t_2__30_ | t_2__34_;
  assign t_3__29_ = t_2__29_ | t_2__33_;
  assign t_3__28_ = t_2__28_ | t_2__32_;
  assign t_3__27_ = t_2__27_ | t_2__31_;
  assign t_3__26_ = t_2__26_ | t_2__30_;
  assign t_3__25_ = t_2__25_ | t_2__29_;
  assign t_3__24_ = t_2__24_ | t_2__28_;
  assign t_3__23_ = t_2__23_ | t_2__27_;
  assign t_3__22_ = t_2__22_ | t_2__26_;
  assign t_3__21_ = t_2__21_ | t_2__25_;
  assign t_3__20_ = t_2__20_ | t_2__24_;
  assign t_3__19_ = t_2__19_ | t_2__23_;
  assign t_3__18_ = t_2__18_ | t_2__22_;
  assign t_3__17_ = t_2__17_ | t_2__21_;
  assign t_3__16_ = t_2__16_ | t_2__20_;
  assign t_3__15_ = t_2__15_ | t_2__19_;
  assign t_3__14_ = t_2__14_ | t_2__18_;
  assign t_3__13_ = t_2__13_ | t_2__17_;
  assign t_3__12_ = t_2__12_ | t_2__16_;
  assign t_3__11_ = t_2__11_ | t_2__15_;
  assign t_3__10_ = t_2__10_ | t_2__14_;
  assign t_3__9_ = t_2__9_ | t_2__13_;
  assign t_3__8_ = t_2__8_ | t_2__12_;
  assign t_3__7_ = t_2__7_ | t_2__11_;
  assign t_3__6_ = t_2__6_ | t_2__10_;
  assign t_3__5_ = t_2__5_ | t_2__9_;
  assign t_3__4_ = t_2__4_ | t_2__8_;
  assign t_3__3_ = t_2__3_ | t_2__7_;
  assign t_3__2_ = t_2__2_ | t_2__6_;
  assign t_3__1_ = t_2__1_ | t_2__5_;
  assign t_3__0_ = t_2__0_ | t_2__4_;
  assign t_4__63_ = t_3__63_ | 1'b0;
  assign t_4__62_ = t_3__62_ | 1'b0;
  assign t_4__61_ = t_3__61_ | 1'b0;
  assign t_4__60_ = t_3__60_ | 1'b0;
  assign t_4__59_ = t_3__59_ | 1'b0;
  assign t_4__58_ = t_3__58_ | 1'b0;
  assign t_4__57_ = t_3__57_ | 1'b0;
  assign t_4__56_ = t_3__56_ | 1'b0;
  assign t_4__55_ = t_3__55_ | t_3__63_;
  assign t_4__54_ = t_3__54_ | t_3__62_;
  assign t_4__53_ = t_3__53_ | t_3__61_;
  assign t_4__52_ = t_3__52_ | t_3__60_;
  assign t_4__51_ = t_3__51_ | t_3__59_;
  assign t_4__50_ = t_3__50_ | t_3__58_;
  assign t_4__49_ = t_3__49_ | t_3__57_;
  assign t_4__48_ = t_3__48_ | t_3__56_;
  assign t_4__47_ = t_3__47_ | t_3__55_;
  assign t_4__46_ = t_3__46_ | t_3__54_;
  assign t_4__45_ = t_3__45_ | t_3__53_;
  assign t_4__44_ = t_3__44_ | t_3__52_;
  assign t_4__43_ = t_3__43_ | t_3__51_;
  assign t_4__42_ = t_3__42_ | t_3__50_;
  assign t_4__41_ = t_3__41_ | t_3__49_;
  assign t_4__40_ = t_3__40_ | t_3__48_;
  assign t_4__39_ = t_3__39_ | t_3__47_;
  assign t_4__38_ = t_3__38_ | t_3__46_;
  assign t_4__37_ = t_3__37_ | t_3__45_;
  assign t_4__36_ = t_3__36_ | t_3__44_;
  assign t_4__35_ = t_3__35_ | t_3__43_;
  assign t_4__34_ = t_3__34_ | t_3__42_;
  assign t_4__33_ = t_3__33_ | t_3__41_;
  assign t_4__32_ = t_3__32_ | t_3__40_;
  assign t_4__31_ = t_3__31_ | t_3__39_;
  assign t_4__30_ = t_3__30_ | t_3__38_;
  assign t_4__29_ = t_3__29_ | t_3__37_;
  assign t_4__28_ = t_3__28_ | t_3__36_;
  assign t_4__27_ = t_3__27_ | t_3__35_;
  assign t_4__26_ = t_3__26_ | t_3__34_;
  assign t_4__25_ = t_3__25_ | t_3__33_;
  assign t_4__24_ = t_3__24_ | t_3__32_;
  assign t_4__23_ = t_3__23_ | t_3__31_;
  assign t_4__22_ = t_3__22_ | t_3__30_;
  assign t_4__21_ = t_3__21_ | t_3__29_;
  assign t_4__20_ = t_3__20_ | t_3__28_;
  assign t_4__19_ = t_3__19_ | t_3__27_;
  assign t_4__18_ = t_3__18_ | t_3__26_;
  assign t_4__17_ = t_3__17_ | t_3__25_;
  assign t_4__16_ = t_3__16_ | t_3__24_;
  assign t_4__15_ = t_3__15_ | t_3__23_;
  assign t_4__14_ = t_3__14_ | t_3__22_;
  assign t_4__13_ = t_3__13_ | t_3__21_;
  assign t_4__12_ = t_3__12_ | t_3__20_;
  assign t_4__11_ = t_3__11_ | t_3__19_;
  assign t_4__10_ = t_3__10_ | t_3__18_;
  assign t_4__9_ = t_3__9_ | t_3__17_;
  assign t_4__8_ = t_3__8_ | t_3__16_;
  assign t_4__7_ = t_3__7_ | t_3__15_;
  assign t_4__6_ = t_3__6_ | t_3__14_;
  assign t_4__5_ = t_3__5_ | t_3__13_;
  assign t_4__4_ = t_3__4_ | t_3__12_;
  assign t_4__3_ = t_3__3_ | t_3__11_;
  assign t_4__2_ = t_3__2_ | t_3__10_;
  assign t_4__1_ = t_3__1_ | t_3__9_;
  assign t_4__0_ = t_3__0_ | t_3__8_;
  assign t_5__63_ = t_4__63_ | 1'b0;
  assign t_5__62_ = t_4__62_ | 1'b0;
  assign t_5__61_ = t_4__61_ | 1'b0;
  assign t_5__60_ = t_4__60_ | 1'b0;
  assign t_5__59_ = t_4__59_ | 1'b0;
  assign t_5__58_ = t_4__58_ | 1'b0;
  assign t_5__57_ = t_4__57_ | 1'b0;
  assign t_5__56_ = t_4__56_ | 1'b0;
  assign t_5__55_ = t_4__55_ | 1'b0;
  assign t_5__54_ = t_4__54_ | 1'b0;
  assign t_5__53_ = t_4__53_ | 1'b0;
  assign t_5__52_ = t_4__52_ | 1'b0;
  assign t_5__51_ = t_4__51_ | 1'b0;
  assign t_5__50_ = t_4__50_ | 1'b0;
  assign t_5__49_ = t_4__49_ | 1'b0;
  assign t_5__48_ = t_4__48_ | 1'b0;
  assign t_5__47_ = t_4__47_ | t_4__63_;
  assign t_5__46_ = t_4__46_ | t_4__62_;
  assign t_5__45_ = t_4__45_ | t_4__61_;
  assign t_5__44_ = t_4__44_ | t_4__60_;
  assign t_5__43_ = t_4__43_ | t_4__59_;
  assign t_5__42_ = t_4__42_ | t_4__58_;
  assign t_5__41_ = t_4__41_ | t_4__57_;
  assign t_5__40_ = t_4__40_ | t_4__56_;
  assign t_5__39_ = t_4__39_ | t_4__55_;
  assign t_5__38_ = t_4__38_ | t_4__54_;
  assign t_5__37_ = t_4__37_ | t_4__53_;
  assign t_5__36_ = t_4__36_ | t_4__52_;
  assign t_5__35_ = t_4__35_ | t_4__51_;
  assign t_5__34_ = t_4__34_ | t_4__50_;
  assign t_5__33_ = t_4__33_ | t_4__49_;
  assign t_5__32_ = t_4__32_ | t_4__48_;
  assign t_5__31_ = t_4__31_ | t_4__47_;
  assign t_5__30_ = t_4__30_ | t_4__46_;
  assign t_5__29_ = t_4__29_ | t_4__45_;
  assign t_5__28_ = t_4__28_ | t_4__44_;
  assign t_5__27_ = t_4__27_ | t_4__43_;
  assign t_5__26_ = t_4__26_ | t_4__42_;
  assign t_5__25_ = t_4__25_ | t_4__41_;
  assign t_5__24_ = t_4__24_ | t_4__40_;
  assign t_5__23_ = t_4__23_ | t_4__39_;
  assign t_5__22_ = t_4__22_ | t_4__38_;
  assign t_5__21_ = t_4__21_ | t_4__37_;
  assign t_5__20_ = t_4__20_ | t_4__36_;
  assign t_5__19_ = t_4__19_ | t_4__35_;
  assign t_5__18_ = t_4__18_ | t_4__34_;
  assign t_5__17_ = t_4__17_ | t_4__33_;
  assign t_5__16_ = t_4__16_ | t_4__32_;
  assign t_5__15_ = t_4__15_ | t_4__31_;
  assign t_5__14_ = t_4__14_ | t_4__30_;
  assign t_5__13_ = t_4__13_ | t_4__29_;
  assign t_5__12_ = t_4__12_ | t_4__28_;
  assign t_5__11_ = t_4__11_ | t_4__27_;
  assign t_5__10_ = t_4__10_ | t_4__26_;
  assign t_5__9_ = t_4__9_ | t_4__25_;
  assign t_5__8_ = t_4__8_ | t_4__24_;
  assign t_5__7_ = t_4__7_ | t_4__23_;
  assign t_5__6_ = t_4__6_ | t_4__22_;
  assign t_5__5_ = t_4__5_ | t_4__21_;
  assign t_5__4_ = t_4__4_ | t_4__20_;
  assign t_5__3_ = t_4__3_ | t_4__19_;
  assign t_5__2_ = t_4__2_ | t_4__18_;
  assign t_5__1_ = t_4__1_ | t_4__17_;
  assign t_5__0_ = t_4__0_ | t_4__16_;
  assign o[63] = t_5__63_ | 1'b0;
  assign o[62] = t_5__62_ | 1'b0;
  assign o[61] = t_5__61_ | 1'b0;
  assign o[60] = t_5__60_ | 1'b0;
  assign o[59] = t_5__59_ | 1'b0;
  assign o[58] = t_5__58_ | 1'b0;
  assign o[57] = t_5__57_ | 1'b0;
  assign o[56] = t_5__56_ | 1'b0;
  assign o[55] = t_5__55_ | 1'b0;
  assign o[54] = t_5__54_ | 1'b0;
  assign o[53] = t_5__53_ | 1'b0;
  assign o[52] = t_5__52_ | 1'b0;
  assign o[51] = t_5__51_ | 1'b0;
  assign o[50] = t_5__50_ | 1'b0;
  assign o[49] = t_5__49_ | 1'b0;
  assign o[48] = t_5__48_ | 1'b0;
  assign o[47] = t_5__47_ | 1'b0;
  assign o[46] = t_5__46_ | 1'b0;
  assign o[45] = t_5__45_ | 1'b0;
  assign o[44] = t_5__44_ | 1'b0;
  assign o[43] = t_5__43_ | 1'b0;
  assign o[42] = t_5__42_ | 1'b0;
  assign o[41] = t_5__41_ | 1'b0;
  assign o[40] = t_5__40_ | 1'b0;
  assign o[39] = t_5__39_ | 1'b0;
  assign o[38] = t_5__38_ | 1'b0;
  assign o[37] = t_5__37_ | 1'b0;
  assign o[36] = t_5__36_ | 1'b0;
  assign o[35] = t_5__35_ | 1'b0;
  assign o[34] = t_5__34_ | 1'b0;
  assign o[33] = t_5__33_ | 1'b0;
  assign o[32] = t_5__32_ | 1'b0;
  assign o[31] = t_5__31_ | t_5__63_;
  assign o[30] = t_5__30_ | t_5__62_;
  assign o[29] = t_5__29_ | t_5__61_;
  assign o[28] = t_5__28_ | t_5__60_;
  assign o[27] = t_5__27_ | t_5__59_;
  assign o[26] = t_5__26_ | t_5__58_;
  assign o[25] = t_5__25_ | t_5__57_;
  assign o[24] = t_5__24_ | t_5__56_;
  assign o[23] = t_5__23_ | t_5__55_;
  assign o[22] = t_5__22_ | t_5__54_;
  assign o[21] = t_5__21_ | t_5__53_;
  assign o[20] = t_5__20_ | t_5__52_;
  assign o[19] = t_5__19_ | t_5__51_;
  assign o[18] = t_5__18_ | t_5__50_;
  assign o[17] = t_5__17_ | t_5__49_;
  assign o[16] = t_5__16_ | t_5__48_;
  assign o[15] = t_5__15_ | t_5__47_;
  assign o[14] = t_5__14_ | t_5__46_;
  assign o[13] = t_5__13_ | t_5__45_;
  assign o[12] = t_5__12_ | t_5__44_;
  assign o[11] = t_5__11_ | t_5__43_;
  assign o[10] = t_5__10_ | t_5__42_;
  assign o[9] = t_5__9_ | t_5__41_;
  assign o[8] = t_5__8_ | t_5__40_;
  assign o[7] = t_5__7_ | t_5__39_;
  assign o[6] = t_5__6_ | t_5__38_;
  assign o[5] = t_5__5_ | t_5__37_;
  assign o[4] = t_5__4_ | t_5__36_;
  assign o[3] = t_5__3_ | t_5__35_;
  assign o[2] = t_5__2_ | t_5__34_;
  assign o[1] = t_5__1_ | t_5__33_;
  assign o[0] = t_5__0_ | t_5__32_;

endmodule



module bsg_priority_encode_one_hot_out_width_p64_lo_to_hi_p0
(
  i,
  o
);

  input [63:0] i;
  output [63:0] o;
  wire [63:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62;
  wire [62:0] scan_lo;

  bsg_scan_width_p64_or_p1_lo_to_hi_p0
  genblk1_scan
  (
    .i(i),
    .o({ o[63:63], scan_lo })
  );

  assign o[62] = scan_lo[62] & N0;
  assign N0 = ~o[63];
  assign o[61] = scan_lo[61] & N1;
  assign N1 = ~scan_lo[62];
  assign o[60] = scan_lo[60] & N2;
  assign N2 = ~scan_lo[61];
  assign o[59] = scan_lo[59] & N3;
  assign N3 = ~scan_lo[60];
  assign o[58] = scan_lo[58] & N4;
  assign N4 = ~scan_lo[59];
  assign o[57] = scan_lo[57] & N5;
  assign N5 = ~scan_lo[58];
  assign o[56] = scan_lo[56] & N6;
  assign N6 = ~scan_lo[57];
  assign o[55] = scan_lo[55] & N7;
  assign N7 = ~scan_lo[56];
  assign o[54] = scan_lo[54] & N8;
  assign N8 = ~scan_lo[55];
  assign o[53] = scan_lo[53] & N9;
  assign N9 = ~scan_lo[54];
  assign o[52] = scan_lo[52] & N10;
  assign N10 = ~scan_lo[53];
  assign o[51] = scan_lo[51] & N11;
  assign N11 = ~scan_lo[52];
  assign o[50] = scan_lo[50] & N12;
  assign N12 = ~scan_lo[51];
  assign o[49] = scan_lo[49] & N13;
  assign N13 = ~scan_lo[50];
  assign o[48] = scan_lo[48] & N14;
  assign N14 = ~scan_lo[49];
  assign o[47] = scan_lo[47] & N15;
  assign N15 = ~scan_lo[48];
  assign o[46] = scan_lo[46] & N16;
  assign N16 = ~scan_lo[47];
  assign o[45] = scan_lo[45] & N17;
  assign N17 = ~scan_lo[46];
  assign o[44] = scan_lo[44] & N18;
  assign N18 = ~scan_lo[45];
  assign o[43] = scan_lo[43] & N19;
  assign N19 = ~scan_lo[44];
  assign o[42] = scan_lo[42] & N20;
  assign N20 = ~scan_lo[43];
  assign o[41] = scan_lo[41] & N21;
  assign N21 = ~scan_lo[42];
  assign o[40] = scan_lo[40] & N22;
  assign N22 = ~scan_lo[41];
  assign o[39] = scan_lo[39] & N23;
  assign N23 = ~scan_lo[40];
  assign o[38] = scan_lo[38] & N24;
  assign N24 = ~scan_lo[39];
  assign o[37] = scan_lo[37] & N25;
  assign N25 = ~scan_lo[38];
  assign o[36] = scan_lo[36] & N26;
  assign N26 = ~scan_lo[37];
  assign o[35] = scan_lo[35] & N27;
  assign N27 = ~scan_lo[36];
  assign o[34] = scan_lo[34] & N28;
  assign N28 = ~scan_lo[35];
  assign o[33] = scan_lo[33] & N29;
  assign N29 = ~scan_lo[34];
  assign o[32] = scan_lo[32] & N30;
  assign N30 = ~scan_lo[33];
  assign o[31] = scan_lo[31] & N31;
  assign N31 = ~scan_lo[32];
  assign o[30] = scan_lo[30] & N32;
  assign N32 = ~scan_lo[31];
  assign o[29] = scan_lo[29] & N33;
  assign N33 = ~scan_lo[30];
  assign o[28] = scan_lo[28] & N34;
  assign N34 = ~scan_lo[29];
  assign o[27] = scan_lo[27] & N35;
  assign N35 = ~scan_lo[28];
  assign o[26] = scan_lo[26] & N36;
  assign N36 = ~scan_lo[27];
  assign o[25] = scan_lo[25] & N37;
  assign N37 = ~scan_lo[26];
  assign o[24] = scan_lo[24] & N38;
  assign N38 = ~scan_lo[25];
  assign o[23] = scan_lo[23] & N39;
  assign N39 = ~scan_lo[24];
  assign o[22] = scan_lo[22] & N40;
  assign N40 = ~scan_lo[23];
  assign o[21] = scan_lo[21] & N41;
  assign N41 = ~scan_lo[22];
  assign o[20] = scan_lo[20] & N42;
  assign N42 = ~scan_lo[21];
  assign o[19] = scan_lo[19] & N43;
  assign N43 = ~scan_lo[20];
  assign o[18] = scan_lo[18] & N44;
  assign N44 = ~scan_lo[19];
  assign o[17] = scan_lo[17] & N45;
  assign N45 = ~scan_lo[18];
  assign o[16] = scan_lo[16] & N46;
  assign N46 = ~scan_lo[17];
  assign o[15] = scan_lo[15] & N47;
  assign N47 = ~scan_lo[16];
  assign o[14] = scan_lo[14] & N48;
  assign N48 = ~scan_lo[15];
  assign o[13] = scan_lo[13] & N49;
  assign N49 = ~scan_lo[14];
  assign o[12] = scan_lo[12] & N50;
  assign N50 = ~scan_lo[13];
  assign o[11] = scan_lo[11] & N51;
  assign N51 = ~scan_lo[12];
  assign o[10] = scan_lo[10] & N52;
  assign N52 = ~scan_lo[11];
  assign o[9] = scan_lo[9] & N53;
  assign N53 = ~scan_lo[10];
  assign o[8] = scan_lo[8] & N54;
  assign N54 = ~scan_lo[9];
  assign o[7] = scan_lo[7] & N55;
  assign N55 = ~scan_lo[8];
  assign o[6] = scan_lo[6] & N56;
  assign N56 = ~scan_lo[7];
  assign o[5] = scan_lo[5] & N57;
  assign N57 = ~scan_lo[6];
  assign o[4] = scan_lo[4] & N58;
  assign N58 = ~scan_lo[5];
  assign o[3] = scan_lo[3] & N59;
  assign N59 = ~scan_lo[4];
  assign o[2] = scan_lo[2] & N60;
  assign N60 = ~scan_lo[3];
  assign o[1] = scan_lo[1] & N61;
  assign N61 = ~scan_lo[2];
  assign o[0] = scan_lo[0] & N62;
  assign N62 = ~scan_lo[1];

endmodule



module bsg_arb_fixed_inputs_p64_lo_to_hi_p0
(
  ready_i,
  reqs_i,
  grants_o
);

  input [63:0] reqs_i;
  output [63:0] grants_o;
  input ready_i;
  wire [63:0] grants_o,grants_unmasked_lo;

  bsg_priority_encode_one_hot_out_width_p64_lo_to_hi_p0
  enc
  (
    .i(reqs_i),
    .o(grants_unmasked_lo)
  );

  assign grants_o[63] = grants_unmasked_lo[63] & ready_i;
  assign grants_o[62] = grants_unmasked_lo[62] & ready_i;
  assign grants_o[61] = grants_unmasked_lo[61] & ready_i;
  assign grants_o[60] = grants_unmasked_lo[60] & ready_i;
  assign grants_o[59] = grants_unmasked_lo[59] & ready_i;
  assign grants_o[58] = grants_unmasked_lo[58] & ready_i;
  assign grants_o[57] = grants_unmasked_lo[57] & ready_i;
  assign grants_o[56] = grants_unmasked_lo[56] & ready_i;
  assign grants_o[55] = grants_unmasked_lo[55] & ready_i;
  assign grants_o[54] = grants_unmasked_lo[54] & ready_i;
  assign grants_o[53] = grants_unmasked_lo[53] & ready_i;
  assign grants_o[52] = grants_unmasked_lo[52] & ready_i;
  assign grants_o[51] = grants_unmasked_lo[51] & ready_i;
  assign grants_o[50] = grants_unmasked_lo[50] & ready_i;
  assign grants_o[49] = grants_unmasked_lo[49] & ready_i;
  assign grants_o[48] = grants_unmasked_lo[48] & ready_i;
  assign grants_o[47] = grants_unmasked_lo[47] & ready_i;
  assign grants_o[46] = grants_unmasked_lo[46] & ready_i;
  assign grants_o[45] = grants_unmasked_lo[45] & ready_i;
  assign grants_o[44] = grants_unmasked_lo[44] & ready_i;
  assign grants_o[43] = grants_unmasked_lo[43] & ready_i;
  assign grants_o[42] = grants_unmasked_lo[42] & ready_i;
  assign grants_o[41] = grants_unmasked_lo[41] & ready_i;
  assign grants_o[40] = grants_unmasked_lo[40] & ready_i;
  assign grants_o[39] = grants_unmasked_lo[39] & ready_i;
  assign grants_o[38] = grants_unmasked_lo[38] & ready_i;
  assign grants_o[37] = grants_unmasked_lo[37] & ready_i;
  assign grants_o[36] = grants_unmasked_lo[36] & ready_i;
  assign grants_o[35] = grants_unmasked_lo[35] & ready_i;
  assign grants_o[34] = grants_unmasked_lo[34] & ready_i;
  assign grants_o[33] = grants_unmasked_lo[33] & ready_i;
  assign grants_o[32] = grants_unmasked_lo[32] & ready_i;
  assign grants_o[31] = grants_unmasked_lo[31] & ready_i;
  assign grants_o[30] = grants_unmasked_lo[30] & ready_i;
  assign grants_o[29] = grants_unmasked_lo[29] & ready_i;
  assign grants_o[28] = grants_unmasked_lo[28] & ready_i;
  assign grants_o[27] = grants_unmasked_lo[27] & ready_i;
  assign grants_o[26] = grants_unmasked_lo[26] & ready_i;
  assign grants_o[25] = grants_unmasked_lo[25] & ready_i;
  assign grants_o[24] = grants_unmasked_lo[24] & ready_i;
  assign grants_o[23] = grants_unmasked_lo[23] & ready_i;
  assign grants_o[22] = grants_unmasked_lo[22] & ready_i;
  assign grants_o[21] = grants_unmasked_lo[21] & ready_i;
  assign grants_o[20] = grants_unmasked_lo[20] & ready_i;
  assign grants_o[19] = grants_unmasked_lo[19] & ready_i;
  assign grants_o[18] = grants_unmasked_lo[18] & ready_i;
  assign grants_o[17] = grants_unmasked_lo[17] & ready_i;
  assign grants_o[16] = grants_unmasked_lo[16] & ready_i;
  assign grants_o[15] = grants_unmasked_lo[15] & ready_i;
  assign grants_o[14] = grants_unmasked_lo[14] & ready_i;
  assign grants_o[13] = grants_unmasked_lo[13] & ready_i;
  assign grants_o[12] = grants_unmasked_lo[12] & ready_i;
  assign grants_o[11] = grants_unmasked_lo[11] & ready_i;
  assign grants_o[10] = grants_unmasked_lo[10] & ready_i;
  assign grants_o[9] = grants_unmasked_lo[9] & ready_i;
  assign grants_o[8] = grants_unmasked_lo[8] & ready_i;
  assign grants_o[7] = grants_unmasked_lo[7] & ready_i;
  assign grants_o[6] = grants_unmasked_lo[6] & ready_i;
  assign grants_o[5] = grants_unmasked_lo[5] & ready_i;
  assign grants_o[4] = grants_unmasked_lo[4] & ready_i;
  assign grants_o[3] = grants_unmasked_lo[3] & ready_i;
  assign grants_o[2] = grants_unmasked_lo[2] & ready_i;
  assign grants_o[1] = grants_unmasked_lo[1] & ready_i;
  assign grants_o[0] = grants_unmasked_lo[0] & ready_i;

endmodule



module bsg_locking_arb_fixed
(
  clk_i,
  ready_i,
  unlock_i,
  reqs_i,
  grants_o
);

  input [63:0] reqs_i;
  output [63:0] grants_o;
  input clk_i;
  input ready_i;
  input unlock_i;
  wire [63:0] grants_o,not_req_mask_r,req_mask_r;
  wire n_0_net_,n_1_net__63_,n_1_net__62_,n_1_net__61_,n_1_net__60_,n_1_net__59_,
  n_1_net__58_,n_1_net__57_,n_1_net__56_,n_1_net__55_,n_1_net__54_,n_1_net__53_,
  n_1_net__52_,n_1_net__51_,n_1_net__50_,n_1_net__49_,n_1_net__48_,n_1_net__47_,
  n_1_net__46_,n_1_net__45_,n_1_net__44_,n_1_net__43_,n_1_net__42_,n_1_net__41_,
  n_1_net__40_,n_1_net__39_,n_1_net__38_,n_1_net__37_,n_1_net__36_,n_1_net__35_,n_1_net__34_,
  n_1_net__33_,n_1_net__32_,n_1_net__31_,n_1_net__30_,n_1_net__29_,n_1_net__28_,
  n_1_net__27_,n_1_net__26_,n_1_net__25_,n_1_net__24_,n_1_net__23_,n_1_net__22_,
  n_1_net__21_,n_1_net__20_,n_1_net__19_,n_1_net__18_,n_1_net__17_,n_1_net__16_,
  n_1_net__15_,n_1_net__14_,n_1_net__13_,n_1_net__12_,n_1_net__11_,n_1_net__10_,
  n_1_net__9_,n_1_net__8_,n_1_net__7_,n_1_net__6_,n_1_net__5_,n_1_net__4_,n_1_net__3_,
  n_1_net__2_,n_1_net__1_,n_1_net__0_,n_2_net__63_,n_2_net__62_,n_2_net__61_,
  n_2_net__60_,n_2_net__59_,n_2_net__58_,n_2_net__57_,n_2_net__56_,n_2_net__55_,
  n_2_net__54_,n_2_net__53_,n_2_net__52_,n_2_net__51_,n_2_net__50_,n_2_net__49_,n_2_net__48_,
  n_2_net__47_,n_2_net__46_,n_2_net__45_,n_2_net__44_,n_2_net__43_,n_2_net__42_,
  n_2_net__41_,n_2_net__40_,n_2_net__39_,n_2_net__38_,n_2_net__37_,n_2_net__36_,
  n_2_net__35_,n_2_net__34_,n_2_net__33_,n_2_net__32_,n_2_net__31_,n_2_net__30_,
  n_2_net__29_,n_2_net__28_,n_2_net__27_,n_2_net__26_,n_2_net__25_,n_2_net__24_,
  n_2_net__23_,n_2_net__22_,n_2_net__21_,n_2_net__20_,n_2_net__19_,n_2_net__18_,
  n_2_net__17_,n_2_net__16_,n_2_net__15_,n_2_net__14_,n_2_net__13_,n_2_net__12_,n_2_net__11_,
  n_2_net__10_,n_2_net__9_,n_2_net__8_,n_2_net__7_,n_2_net__6_,n_2_net__5_,
  n_2_net__4_,n_2_net__3_,n_2_net__2_,n_2_net__1_,n_2_net__0_,N0,N1,N2,N3,N4,N5,N6,N7,N8,
  N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,
  N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,
  N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,
  N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,
  N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,
  N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,
  N123,N124,N125;

  bsg_dff_reset_en_width_p64
  req_words_reg
  (
    .clk_i(clk_i),
    .reset_i(unlock_i),
    .en_i(n_0_net_),
    .data_i({ n_1_net__63_, n_1_net__62_, n_1_net__61_, n_1_net__60_, n_1_net__59_, n_1_net__58_, n_1_net__57_, n_1_net__56_, n_1_net__55_, n_1_net__54_, n_1_net__53_, n_1_net__52_, n_1_net__51_, n_1_net__50_, n_1_net__49_, n_1_net__48_, n_1_net__47_, n_1_net__46_, n_1_net__45_, n_1_net__44_, n_1_net__43_, n_1_net__42_, n_1_net__41_, n_1_net__40_, n_1_net__39_, n_1_net__38_, n_1_net__37_, n_1_net__36_, n_1_net__35_, n_1_net__34_, n_1_net__33_, n_1_net__32_, n_1_net__31_, n_1_net__30_, n_1_net__29_, n_1_net__28_, n_1_net__27_, n_1_net__26_, n_1_net__25_, n_1_net__24_, n_1_net__23_, n_1_net__22_, n_1_net__21_, n_1_net__20_, n_1_net__19_, n_1_net__18_, n_1_net__17_, n_1_net__16_, n_1_net__15_, n_1_net__14_, n_1_net__13_, n_1_net__12_, n_1_net__11_, n_1_net__10_, n_1_net__9_, n_1_net__8_, n_1_net__7_, n_1_net__6_, n_1_net__5_, n_1_net__4_, n_1_net__3_, n_1_net__2_, n_1_net__1_, n_1_net__0_ }),
    .data_o(not_req_mask_r)
  );


  bsg_arb_fixed_inputs_p64_lo_to_hi_p0
  fixed_arb
  (
    .ready_i(ready_i),
    .reqs_i({ n_2_net__63_, n_2_net__62_, n_2_net__61_, n_2_net__60_, n_2_net__59_, n_2_net__58_, n_2_net__57_, n_2_net__56_, n_2_net__55_, n_2_net__54_, n_2_net__53_, n_2_net__52_, n_2_net__51_, n_2_net__50_, n_2_net__49_, n_2_net__48_, n_2_net__47_, n_2_net__46_, n_2_net__45_, n_2_net__44_, n_2_net__43_, n_2_net__42_, n_2_net__41_, n_2_net__40_, n_2_net__39_, n_2_net__38_, n_2_net__37_, n_2_net__36_, n_2_net__35_, n_2_net__34_, n_2_net__33_, n_2_net__32_, n_2_net__31_, n_2_net__30_, n_2_net__29_, n_2_net__28_, n_2_net__27_, n_2_net__26_, n_2_net__25_, n_2_net__24_, n_2_net__23_, n_2_net__22_, n_2_net__21_, n_2_net__20_, n_2_net__19_, n_2_net__18_, n_2_net__17_, n_2_net__16_, n_2_net__15_, n_2_net__14_, n_2_net__13_, n_2_net__12_, n_2_net__11_, n_2_net__10_, n_2_net__9_, n_2_net__8_, n_2_net__7_, n_2_net__6_, n_2_net__5_, n_2_net__4_, n_2_net__3_, n_2_net__2_, n_2_net__1_, n_2_net__0_ }),
    .grants_o(grants_o)
  );

  assign n_1_net__63_ = ~grants_o[63];
  assign n_1_net__62_ = ~grants_o[62];
  assign n_1_net__61_ = ~grants_o[61];
  assign n_1_net__60_ = ~grants_o[60];
  assign n_1_net__59_ = ~grants_o[59];
  assign n_1_net__58_ = ~grants_o[58];
  assign n_1_net__57_ = ~grants_o[57];
  assign n_1_net__56_ = ~grants_o[56];
  assign n_1_net__55_ = ~grants_o[55];
  assign n_1_net__54_ = ~grants_o[54];
  assign n_1_net__53_ = ~grants_o[53];
  assign n_1_net__52_ = ~grants_o[52];
  assign n_1_net__51_ = ~grants_o[51];
  assign n_1_net__50_ = ~grants_o[50];
  assign n_1_net__49_ = ~grants_o[49];
  assign n_1_net__48_ = ~grants_o[48];
  assign n_1_net__47_ = ~grants_o[47];
  assign n_1_net__46_ = ~grants_o[46];
  assign n_1_net__45_ = ~grants_o[45];
  assign n_1_net__44_ = ~grants_o[44];
  assign n_1_net__43_ = ~grants_o[43];
  assign n_1_net__42_ = ~grants_o[42];
  assign n_1_net__41_ = ~grants_o[41];
  assign n_1_net__40_ = ~grants_o[40];
  assign n_1_net__39_ = ~grants_o[39];
  assign n_1_net__38_ = ~grants_o[38];
  assign n_1_net__37_ = ~grants_o[37];
  assign n_1_net__36_ = ~grants_o[36];
  assign n_1_net__35_ = ~grants_o[35];
  assign n_1_net__34_ = ~grants_o[34];
  assign n_1_net__33_ = ~grants_o[33];
  assign n_1_net__32_ = ~grants_o[32];
  assign n_1_net__31_ = ~grants_o[31];
  assign n_1_net__30_ = ~grants_o[30];
  assign n_1_net__29_ = ~grants_o[29];
  assign n_1_net__28_ = ~grants_o[28];
  assign n_1_net__27_ = ~grants_o[27];
  assign n_1_net__26_ = ~grants_o[26];
  assign n_1_net__25_ = ~grants_o[25];
  assign n_1_net__24_ = ~grants_o[24];
  assign n_1_net__23_ = ~grants_o[23];
  assign n_1_net__22_ = ~grants_o[22];
  assign n_1_net__21_ = ~grants_o[21];
  assign n_1_net__20_ = ~grants_o[20];
  assign n_1_net__19_ = ~grants_o[19];
  assign n_1_net__18_ = ~grants_o[18];
  assign n_1_net__17_ = ~grants_o[17];
  assign n_1_net__16_ = ~grants_o[16];
  assign n_1_net__15_ = ~grants_o[15];
  assign n_1_net__14_ = ~grants_o[14];
  assign n_1_net__13_ = ~grants_o[13];
  assign n_1_net__12_ = ~grants_o[12];
  assign n_1_net__11_ = ~grants_o[11];
  assign n_1_net__10_ = ~grants_o[10];
  assign n_1_net__9_ = ~grants_o[9];
  assign n_1_net__8_ = ~grants_o[8];
  assign n_1_net__7_ = ~grants_o[7];
  assign n_1_net__6_ = ~grants_o[6];
  assign n_1_net__5_ = ~grants_o[5];
  assign n_1_net__4_ = ~grants_o[4];
  assign n_1_net__3_ = ~grants_o[3];
  assign n_1_net__2_ = ~grants_o[2];
  assign n_1_net__1_ = ~grants_o[1];
  assign n_1_net__0_ = ~grants_o[0];
  assign n_0_net_ = N62 & N125;
  assign N62 = N61 & req_mask_r[0];
  assign N61 = N60 & req_mask_r[1];
  assign N60 = N59 & req_mask_r[2];
  assign N59 = N58 & req_mask_r[3];
  assign N58 = N57 & req_mask_r[4];
  assign N57 = N56 & req_mask_r[5];
  assign N56 = N55 & req_mask_r[6];
  assign N55 = N54 & req_mask_r[7];
  assign N54 = N53 & req_mask_r[8];
  assign N53 = N52 & req_mask_r[9];
  assign N52 = N51 & req_mask_r[10];
  assign N51 = N50 & req_mask_r[11];
  assign N50 = N49 & req_mask_r[12];
  assign N49 = N48 & req_mask_r[13];
  assign N48 = N47 & req_mask_r[14];
  assign N47 = N46 & req_mask_r[15];
  assign N46 = N45 & req_mask_r[16];
  assign N45 = N44 & req_mask_r[17];
  assign N44 = N43 & req_mask_r[18];
  assign N43 = N42 & req_mask_r[19];
  assign N42 = N41 & req_mask_r[20];
  assign N41 = N40 & req_mask_r[21];
  assign N40 = N39 & req_mask_r[22];
  assign N39 = N38 & req_mask_r[23];
  assign N38 = N37 & req_mask_r[24];
  assign N37 = N36 & req_mask_r[25];
  assign N36 = N35 & req_mask_r[26];
  assign N35 = N34 & req_mask_r[27];
  assign N34 = N33 & req_mask_r[28];
  assign N33 = N32 & req_mask_r[29];
  assign N32 = N31 & req_mask_r[30];
  assign N31 = N30 & req_mask_r[31];
  assign N30 = N29 & req_mask_r[32];
  assign N29 = N28 & req_mask_r[33];
  assign N28 = N27 & req_mask_r[34];
  assign N27 = N26 & req_mask_r[35];
  assign N26 = N25 & req_mask_r[36];
  assign N25 = N24 & req_mask_r[37];
  assign N24 = N23 & req_mask_r[38];
  assign N23 = N22 & req_mask_r[39];
  assign N22 = N21 & req_mask_r[40];
  assign N21 = N20 & req_mask_r[41];
  assign N20 = N19 & req_mask_r[42];
  assign N19 = N18 & req_mask_r[43];
  assign N18 = N17 & req_mask_r[44];
  assign N17 = N16 & req_mask_r[45];
  assign N16 = N15 & req_mask_r[46];
  assign N15 = N14 & req_mask_r[47];
  assign N14 = N13 & req_mask_r[48];
  assign N13 = N12 & req_mask_r[49];
  assign N12 = N11 & req_mask_r[50];
  assign N11 = N10 & req_mask_r[51];
  assign N10 = N9 & req_mask_r[52];
  assign N9 = N8 & req_mask_r[53];
  assign N8 = N7 & req_mask_r[54];
  assign N7 = N6 & req_mask_r[55];
  assign N6 = N5 & req_mask_r[56];
  assign N5 = N4 & req_mask_r[57];
  assign N4 = N3 & req_mask_r[58];
  assign N3 = N2 & req_mask_r[59];
  assign N2 = N1 & req_mask_r[60];
  assign N1 = N0 & req_mask_r[61];
  assign N0 = req_mask_r[63] & req_mask_r[62];
  assign N125 = N124 | grants_o[0];
  assign N124 = N123 | grants_o[1];
  assign N123 = N122 | grants_o[2];
  assign N122 = N121 | grants_o[3];
  assign N121 = N120 | grants_o[4];
  assign N120 = N119 | grants_o[5];
  assign N119 = N118 | grants_o[6];
  assign N118 = N117 | grants_o[7];
  assign N117 = N116 | grants_o[8];
  assign N116 = N115 | grants_o[9];
  assign N115 = N114 | grants_o[10];
  assign N114 = N113 | grants_o[11];
  assign N113 = N112 | grants_o[12];
  assign N112 = N111 | grants_o[13];
  assign N111 = N110 | grants_o[14];
  assign N110 = N109 | grants_o[15];
  assign N109 = N108 | grants_o[16];
  assign N108 = N107 | grants_o[17];
  assign N107 = N106 | grants_o[18];
  assign N106 = N105 | grants_o[19];
  assign N105 = N104 | grants_o[20];
  assign N104 = N103 | grants_o[21];
  assign N103 = N102 | grants_o[22];
  assign N102 = N101 | grants_o[23];
  assign N101 = N100 | grants_o[24];
  assign N100 = N99 | grants_o[25];
  assign N99 = N98 | grants_o[26];
  assign N98 = N97 | grants_o[27];
  assign N97 = N96 | grants_o[28];
  assign N96 = N95 | grants_o[29];
  assign N95 = N94 | grants_o[30];
  assign N94 = N93 | grants_o[31];
  assign N93 = N92 | grants_o[32];
  assign N92 = N91 | grants_o[33];
  assign N91 = N90 | grants_o[34];
  assign N90 = N89 | grants_o[35];
  assign N89 = N88 | grants_o[36];
  assign N88 = N87 | grants_o[37];
  assign N87 = N86 | grants_o[38];
  assign N86 = N85 | grants_o[39];
  assign N85 = N84 | grants_o[40];
  assign N84 = N83 | grants_o[41];
  assign N83 = N82 | grants_o[42];
  assign N82 = N81 | grants_o[43];
  assign N81 = N80 | grants_o[44];
  assign N80 = N79 | grants_o[45];
  assign N79 = N78 | grants_o[46];
  assign N78 = N77 | grants_o[47];
  assign N77 = N76 | grants_o[48];
  assign N76 = N75 | grants_o[49];
  assign N75 = N74 | grants_o[50];
  assign N74 = N73 | grants_o[51];
  assign N73 = N72 | grants_o[52];
  assign N72 = N71 | grants_o[53];
  assign N71 = N70 | grants_o[54];
  assign N70 = N69 | grants_o[55];
  assign N69 = N68 | grants_o[56];
  assign N68 = N67 | grants_o[57];
  assign N67 = N66 | grants_o[58];
  assign N66 = N65 | grants_o[59];
  assign N65 = N64 | grants_o[60];
  assign N64 = N63 | grants_o[61];
  assign N63 = grants_o[63] | grants_o[62];
  assign req_mask_r[63] = ~not_req_mask_r[63];
  assign req_mask_r[62] = ~not_req_mask_r[62];
  assign req_mask_r[61] = ~not_req_mask_r[61];
  assign req_mask_r[60] = ~not_req_mask_r[60];
  assign req_mask_r[59] = ~not_req_mask_r[59];
  assign req_mask_r[58] = ~not_req_mask_r[58];
  assign req_mask_r[57] = ~not_req_mask_r[57];
  assign req_mask_r[56] = ~not_req_mask_r[56];
  assign req_mask_r[55] = ~not_req_mask_r[55];
  assign req_mask_r[54] = ~not_req_mask_r[54];
  assign req_mask_r[53] = ~not_req_mask_r[53];
  assign req_mask_r[52] = ~not_req_mask_r[52];
  assign req_mask_r[51] = ~not_req_mask_r[51];
  assign req_mask_r[50] = ~not_req_mask_r[50];
  assign req_mask_r[49] = ~not_req_mask_r[49];
  assign req_mask_r[48] = ~not_req_mask_r[48];
  assign req_mask_r[47] = ~not_req_mask_r[47];
  assign req_mask_r[46] = ~not_req_mask_r[46];
  assign req_mask_r[45] = ~not_req_mask_r[45];
  assign req_mask_r[44] = ~not_req_mask_r[44];
  assign req_mask_r[43] = ~not_req_mask_r[43];
  assign req_mask_r[42] = ~not_req_mask_r[42];
  assign req_mask_r[41] = ~not_req_mask_r[41];
  assign req_mask_r[40] = ~not_req_mask_r[40];
  assign req_mask_r[39] = ~not_req_mask_r[39];
  assign req_mask_r[38] = ~not_req_mask_r[38];
  assign req_mask_r[37] = ~not_req_mask_r[37];
  assign req_mask_r[36] = ~not_req_mask_r[36];
  assign req_mask_r[35] = ~not_req_mask_r[35];
  assign req_mask_r[34] = ~not_req_mask_r[34];
  assign req_mask_r[33] = ~not_req_mask_r[33];
  assign req_mask_r[32] = ~not_req_mask_r[32];
  assign req_mask_r[31] = ~not_req_mask_r[31];
  assign req_mask_r[30] = ~not_req_mask_r[30];
  assign req_mask_r[29] = ~not_req_mask_r[29];
  assign req_mask_r[28] = ~not_req_mask_r[28];
  assign req_mask_r[27] = ~not_req_mask_r[27];
  assign req_mask_r[26] = ~not_req_mask_r[26];
  assign req_mask_r[25] = ~not_req_mask_r[25];
  assign req_mask_r[24] = ~not_req_mask_r[24];
  assign req_mask_r[23] = ~not_req_mask_r[23];
  assign req_mask_r[22] = ~not_req_mask_r[22];
  assign req_mask_r[21] = ~not_req_mask_r[21];
  assign req_mask_r[20] = ~not_req_mask_r[20];
  assign req_mask_r[19] = ~not_req_mask_r[19];
  assign req_mask_r[18] = ~not_req_mask_r[18];
  assign req_mask_r[17] = ~not_req_mask_r[17];
  assign req_mask_r[16] = ~not_req_mask_r[16];
  assign req_mask_r[15] = ~not_req_mask_r[15];
  assign req_mask_r[14] = ~not_req_mask_r[14];
  assign req_mask_r[13] = ~not_req_mask_r[13];
  assign req_mask_r[12] = ~not_req_mask_r[12];
  assign req_mask_r[11] = ~not_req_mask_r[11];
  assign req_mask_r[10] = ~not_req_mask_r[10];
  assign req_mask_r[9] = ~not_req_mask_r[9];
  assign req_mask_r[8] = ~not_req_mask_r[8];
  assign req_mask_r[7] = ~not_req_mask_r[7];
  assign req_mask_r[6] = ~not_req_mask_r[6];
  assign req_mask_r[5] = ~not_req_mask_r[5];
  assign req_mask_r[4] = ~not_req_mask_r[4];
  assign req_mask_r[3] = ~not_req_mask_r[3];
  assign req_mask_r[2] = ~not_req_mask_r[2];
  assign req_mask_r[1] = ~not_req_mask_r[1];
  assign req_mask_r[0] = ~not_req_mask_r[0];
  assign n_2_net__63_ = reqs_i[63] & req_mask_r[63];
  assign n_2_net__62_ = reqs_i[62] & req_mask_r[62];
  assign n_2_net__61_ = reqs_i[61] & req_mask_r[61];
  assign n_2_net__60_ = reqs_i[60] & req_mask_r[60];
  assign n_2_net__59_ = reqs_i[59] & req_mask_r[59];
  assign n_2_net__58_ = reqs_i[58] & req_mask_r[58];
  assign n_2_net__57_ = reqs_i[57] & req_mask_r[57];
  assign n_2_net__56_ = reqs_i[56] & req_mask_r[56];
  assign n_2_net__55_ = reqs_i[55] & req_mask_r[55];
  assign n_2_net__54_ = reqs_i[54] & req_mask_r[54];
  assign n_2_net__53_ = reqs_i[53] & req_mask_r[53];
  assign n_2_net__52_ = reqs_i[52] & req_mask_r[52];
  assign n_2_net__51_ = reqs_i[51] & req_mask_r[51];
  assign n_2_net__50_ = reqs_i[50] & req_mask_r[50];
  assign n_2_net__49_ = reqs_i[49] & req_mask_r[49];
  assign n_2_net__48_ = reqs_i[48] & req_mask_r[48];
  assign n_2_net__47_ = reqs_i[47] & req_mask_r[47];
  assign n_2_net__46_ = reqs_i[46] & req_mask_r[46];
  assign n_2_net__45_ = reqs_i[45] & req_mask_r[45];
  assign n_2_net__44_ = reqs_i[44] & req_mask_r[44];
  assign n_2_net__43_ = reqs_i[43] & req_mask_r[43];
  assign n_2_net__42_ = reqs_i[42] & req_mask_r[42];
  assign n_2_net__41_ = reqs_i[41] & req_mask_r[41];
  assign n_2_net__40_ = reqs_i[40] & req_mask_r[40];
  assign n_2_net__39_ = reqs_i[39] & req_mask_r[39];
  assign n_2_net__38_ = reqs_i[38] & req_mask_r[38];
  assign n_2_net__37_ = reqs_i[37] & req_mask_r[37];
  assign n_2_net__36_ = reqs_i[36] & req_mask_r[36];
  assign n_2_net__35_ = reqs_i[35] & req_mask_r[35];
  assign n_2_net__34_ = reqs_i[34] & req_mask_r[34];
  assign n_2_net__33_ = reqs_i[33] & req_mask_r[33];
  assign n_2_net__32_ = reqs_i[32] & req_mask_r[32];
  assign n_2_net__31_ = reqs_i[31] & req_mask_r[31];
  assign n_2_net__30_ = reqs_i[30] & req_mask_r[30];
  assign n_2_net__29_ = reqs_i[29] & req_mask_r[29];
  assign n_2_net__28_ = reqs_i[28] & req_mask_r[28];
  assign n_2_net__27_ = reqs_i[27] & req_mask_r[27];
  assign n_2_net__26_ = reqs_i[26] & req_mask_r[26];
  assign n_2_net__25_ = reqs_i[25] & req_mask_r[25];
  assign n_2_net__24_ = reqs_i[24] & req_mask_r[24];
  assign n_2_net__23_ = reqs_i[23] & req_mask_r[23];
  assign n_2_net__22_ = reqs_i[22] & req_mask_r[22];
  assign n_2_net__21_ = reqs_i[21] & req_mask_r[21];
  assign n_2_net__20_ = reqs_i[20] & req_mask_r[20];
  assign n_2_net__19_ = reqs_i[19] & req_mask_r[19];
  assign n_2_net__18_ = reqs_i[18] & req_mask_r[18];
  assign n_2_net__17_ = reqs_i[17] & req_mask_r[17];
  assign n_2_net__16_ = reqs_i[16] & req_mask_r[16];
  assign n_2_net__15_ = reqs_i[15] & req_mask_r[15];
  assign n_2_net__14_ = reqs_i[14] & req_mask_r[14];
  assign n_2_net__13_ = reqs_i[13] & req_mask_r[13];
  assign n_2_net__12_ = reqs_i[12] & req_mask_r[12];
  assign n_2_net__11_ = reqs_i[11] & req_mask_r[11];
  assign n_2_net__10_ = reqs_i[10] & req_mask_r[10];
  assign n_2_net__9_ = reqs_i[9] & req_mask_r[9];
  assign n_2_net__8_ = reqs_i[8] & req_mask_r[8];
  assign n_2_net__7_ = reqs_i[7] & req_mask_r[7];
  assign n_2_net__6_ = reqs_i[6] & req_mask_r[6];
  assign n_2_net__5_ = reqs_i[5] & req_mask_r[5];
  assign n_2_net__4_ = reqs_i[4] & req_mask_r[4];
  assign n_2_net__3_ = reqs_i[3] & req_mask_r[3];
  assign n_2_net__2_ = reqs_i[2] & req_mask_r[2];
  assign n_2_net__1_ = reqs_i[1] & req_mask_r[1];
  assign n_2_net__0_ = reqs_i[0] & req_mask_r[0];

endmodule

