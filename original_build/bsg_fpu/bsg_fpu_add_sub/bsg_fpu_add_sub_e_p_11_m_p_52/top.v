

module top
(
  clk_i,
  reset_i,
  en_i,
  v_i,
  a_i,
  b_i,
  sub_i,
  ready_o,
  v_o,
  z_o,
  unimplemented_o,
  invalid_o,
  overflow_o,
  underflow_o,
  yumi_i
);

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] z_o;
  input clk_i;
  input reset_i;
  input en_i;
  input v_i;
  input sub_i;
  input yumi_i;
  output ready_o;
  output v_o;
  output unimplemented_o;
  output invalid_o;
  output overflow_o;
  output underflow_o;

  bsg_fpu_add_sub
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .z_o(z_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .en_i(en_i),
    .v_i(v_i),
    .sub_i(sub_i),
    .yumi_i(yumi_i),
    .ready_o(ready_o),
    .v_o(v_o),
    .unimplemented_o(unimplemented_o),
    .invalid_o(invalid_o),
    .overflow_o(overflow_o),
    .underflow_o(underflow_o)
  );


endmodule



module bsg_fpu_preprocess_e_p11_m_p52
(
  a_i,
  zero_o,
  nan_o,
  sig_nan_o,
  infty_o,
  exp_zero_o,
  man_zero_o,
  denormal_o,
  sign_o,
  exp_o,
  man_o
);

  input [63:0] a_i;
  output [10:0] exp_o;
  output [51:0] man_o;
  output zero_o;
  output nan_o;
  output sig_nan_o;
  output infty_o;
  output exp_zero_o;
  output man_zero_o;
  output denormal_o;
  output sign_o;
  wire [10:0] exp_o;
  wire [51:0] man_o;
  wire zero_o,nan_o,sig_nan_o,infty_o,exp_zero_o,man_zero_o,denormal_o,sign_o,N0,N1,N2,
  N3,N4,N5,N6,N7,N8,N9,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,
  N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,
  N65,N66,N67,N68,N69,N70,N71,N73;
  assign man_o[51] = a_i[51];
  assign man_o[50] = a_i[50];
  assign man_o[49] = a_i[49];
  assign man_o[48] = a_i[48];
  assign man_o[47] = a_i[47];
  assign man_o[46] = a_i[46];
  assign man_o[45] = a_i[45];
  assign man_o[44] = a_i[44];
  assign man_o[43] = a_i[43];
  assign man_o[42] = a_i[42];
  assign man_o[41] = a_i[41];
  assign man_o[40] = a_i[40];
  assign man_o[39] = a_i[39];
  assign man_o[38] = a_i[38];
  assign man_o[37] = a_i[37];
  assign man_o[36] = a_i[36];
  assign man_o[35] = a_i[35];
  assign man_o[34] = a_i[34];
  assign man_o[33] = a_i[33];
  assign man_o[32] = a_i[32];
  assign man_o[31] = a_i[31];
  assign man_o[30] = a_i[30];
  assign man_o[29] = a_i[29];
  assign man_o[28] = a_i[28];
  assign man_o[27] = a_i[27];
  assign man_o[26] = a_i[26];
  assign man_o[25] = a_i[25];
  assign man_o[24] = a_i[24];
  assign man_o[23] = a_i[23];
  assign man_o[22] = a_i[22];
  assign man_o[21] = a_i[21];
  assign man_o[20] = a_i[20];
  assign man_o[19] = a_i[19];
  assign man_o[18] = a_i[18];
  assign man_o[17] = a_i[17];
  assign man_o[16] = a_i[16];
  assign man_o[15] = a_i[15];
  assign man_o[14] = a_i[14];
  assign man_o[13] = a_i[13];
  assign man_o[12] = a_i[12];
  assign man_o[11] = a_i[11];
  assign man_o[10] = a_i[10];
  assign man_o[9] = a_i[9];
  assign man_o[8] = a_i[8];
  assign man_o[7] = a_i[7];
  assign man_o[6] = a_i[6];
  assign man_o[5] = a_i[5];
  assign man_o[4] = a_i[4];
  assign man_o[3] = a_i[3];
  assign man_o[2] = a_i[2];
  assign man_o[1] = a_i[1];
  assign man_o[0] = a_i[0];
  assign exp_o[10] = a_i[62];
  assign exp_o[9] = a_i[61];
  assign exp_o[8] = a_i[60];
  assign exp_o[7] = a_i[59];
  assign exp_o[6] = a_i[58];
  assign exp_o[5] = a_i[57];
  assign exp_o[4] = a_i[56];
  assign exp_o[3] = a_i[55];
  assign exp_o[2] = a_i[54];
  assign exp_o[1] = a_i[53];
  assign exp_o[0] = a_i[52];
  assign sign_o = a_i[63];
  assign N0 = a_i[61] | a_i[62];
  assign N1 = a_i[60] | N0;
  assign N2 = a_i[59] | N1;
  assign N3 = a_i[58] | N2;
  assign N4 = a_i[57] | N3;
  assign N5 = a_i[56] | N4;
  assign N6 = a_i[55] | N5;
  assign N7 = a_i[54] | N6;
  assign N8 = a_i[53] | N7;
  assign N9 = a_i[52] | N8;
  assign exp_zero_o = ~N9;
  assign N11 = a_i[61] & a_i[62];
  assign N12 = a_i[60] & N11;
  assign N13 = a_i[59] & N12;
  assign N14 = a_i[58] & N13;
  assign N15 = a_i[57] & N14;
  assign N16 = a_i[56] & N15;
  assign N17 = a_i[55] & N16;
  assign N18 = a_i[54] & N17;
  assign N19 = a_i[53] & N18;
  assign N20 = a_i[52] & N19;
  assign N21 = a_i[50] | a_i[51];
  assign N22 = a_i[49] | N21;
  assign N23 = a_i[48] | N22;
  assign N24 = a_i[47] | N23;
  assign N25 = a_i[46] | N24;
  assign N26 = a_i[45] | N25;
  assign N27 = a_i[44] | N26;
  assign N28 = a_i[43] | N27;
  assign N29 = a_i[42] | N28;
  assign N30 = a_i[41] | N29;
  assign N31 = a_i[40] | N30;
  assign N32 = a_i[39] | N31;
  assign N33 = a_i[38] | N32;
  assign N34 = a_i[37] | N33;
  assign N35 = a_i[36] | N34;
  assign N36 = a_i[35] | N35;
  assign N37 = a_i[34] | N36;
  assign N38 = a_i[33] | N37;
  assign N39 = a_i[32] | N38;
  assign N40 = a_i[31] | N39;
  assign N41 = a_i[30] | N40;
  assign N42 = a_i[29] | N41;
  assign N43 = a_i[28] | N42;
  assign N44 = a_i[27] | N43;
  assign N45 = a_i[26] | N44;
  assign N46 = a_i[25] | N45;
  assign N47 = a_i[24] | N46;
  assign N48 = a_i[23] | N47;
  assign N49 = a_i[22] | N48;
  assign N50 = a_i[21] | N49;
  assign N51 = a_i[20] | N50;
  assign N52 = a_i[19] | N51;
  assign N53 = a_i[18] | N52;
  assign N54 = a_i[17] | N53;
  assign N55 = a_i[16] | N54;
  assign N56 = a_i[15] | N55;
  assign N57 = a_i[14] | N56;
  assign N58 = a_i[13] | N57;
  assign N59 = a_i[12] | N58;
  assign N60 = a_i[11] | N59;
  assign N61 = a_i[10] | N60;
  assign N62 = a_i[9] | N61;
  assign N63 = a_i[8] | N62;
  assign N64 = a_i[7] | N63;
  assign N65 = a_i[6] | N64;
  assign N66 = a_i[5] | N65;
  assign N67 = a_i[4] | N66;
  assign N68 = a_i[3] | N67;
  assign N69 = a_i[2] | N68;
  assign N70 = a_i[1] | N69;
  assign N71 = a_i[0] | N70;
  assign man_zero_o = ~N71;
  assign zero_o = exp_zero_o & man_zero_o;
  assign nan_o = N20 & N71;
  assign sig_nan_o = nan_o & N73;
  assign N73 = ~a_i[51];
  assign infty_o = N20 & man_zero_o;
  assign denormal_o = exp_zero_o & N71;

endmodule



module bsg_less_than_width_p11
(
  a_i,
  b_i,
  o
);

  input [10:0] a_i;
  input [10:0] b_i;
  output o;
  wire o;
  assign o = a_i < b_i;

endmodule



module bsg_scan_width_p55_or_p1_lo_to_hi_p1
(
  i,
  o
);

  input [54:0] i;
  output [54:0] o;
  wire [54:0] o;
  wire t_5__54_,t_5__53_,t_5__52_,t_5__51_,t_5__50_,t_5__49_,t_5__48_,t_5__47_,
  t_5__46_,t_5__45_,t_5__44_,t_5__43_,t_5__42_,t_5__41_,t_5__40_,t_5__39_,t_5__38_,
  t_5__37_,t_5__36_,t_5__35_,t_5__34_,t_5__33_,t_5__32_,t_5__31_,t_5__30_,t_5__29_,
  t_5__28_,t_5__27_,t_5__26_,t_5__25_,t_5__24_,t_5__23_,t_5__22_,t_5__21_,t_5__20_,
  t_5__19_,t_5__18_,t_5__17_,t_5__16_,t_5__15_,t_5__14_,t_5__13_,t_5__12_,t_5__11_,
  t_5__10_,t_5__9_,t_5__8_,t_5__7_,t_5__6_,t_5__5_,t_5__4_,t_5__3_,t_5__2_,t_5__1_,
  t_5__0_,t_4__54_,t_4__53_,t_4__52_,t_4__51_,t_4__50_,t_4__49_,t_4__48_,t_4__47_,
  t_4__46_,t_4__45_,t_4__44_,t_4__43_,t_4__42_,t_4__41_,t_4__40_,t_4__39_,t_4__38_,
  t_4__37_,t_4__36_,t_4__35_,t_4__34_,t_4__33_,t_4__32_,t_4__31_,t_4__30_,t_4__29_,
  t_4__28_,t_4__27_,t_4__26_,t_4__25_,t_4__24_,t_4__23_,t_4__22_,t_4__21_,t_4__20_,
  t_4__19_,t_4__18_,t_4__17_,t_4__16_,t_4__15_,t_4__14_,t_4__13_,t_4__12_,
  t_4__11_,t_4__10_,t_4__9_,t_4__8_,t_4__7_,t_4__6_,t_4__5_,t_4__4_,t_4__3_,t_4__2_,
  t_4__1_,t_4__0_,t_3__54_,t_3__53_,t_3__52_,t_3__51_,t_3__50_,t_3__49_,t_3__48_,
  t_3__47_,t_3__46_,t_3__45_,t_3__44_,t_3__43_,t_3__42_,t_3__41_,t_3__40_,t_3__39_,
  t_3__38_,t_3__37_,t_3__36_,t_3__35_,t_3__34_,t_3__33_,t_3__32_,t_3__31_,t_3__30_,
  t_3__29_,t_3__28_,t_3__27_,t_3__26_,t_3__25_,t_3__24_,t_3__23_,t_3__22_,t_3__21_,
  t_3__20_,t_3__19_,t_3__18_,t_3__17_,t_3__16_,t_3__15_,t_3__14_,t_3__13_,t_3__12_,
  t_3__11_,t_3__10_,t_3__9_,t_3__8_,t_3__7_,t_3__6_,t_3__5_,t_3__4_,t_3__3_,t_3__2_,
  t_3__1_,t_3__0_,t_2__54_,t_2__53_,t_2__52_,t_2__51_,t_2__50_,t_2__49_,t_2__48_,
  t_2__47_,t_2__46_,t_2__45_,t_2__44_,t_2__43_,t_2__42_,t_2__41_,t_2__40_,t_2__39_,
  t_2__38_,t_2__37_,t_2__36_,t_2__35_,t_2__34_,t_2__33_,t_2__32_,t_2__31_,t_2__30_,
  t_2__29_,t_2__28_,t_2__27_,t_2__26_,t_2__25_,t_2__24_,t_2__23_,t_2__22_,
  t_2__21_,t_2__20_,t_2__19_,t_2__18_,t_2__17_,t_2__16_,t_2__15_,t_2__14_,t_2__13_,
  t_2__12_,t_2__11_,t_2__10_,t_2__9_,t_2__8_,t_2__7_,t_2__6_,t_2__5_,t_2__4_,t_2__3_,
  t_2__2_,t_2__1_,t_2__0_,t_1__54_,t_1__53_,t_1__52_,t_1__51_,t_1__50_,t_1__49_,
  t_1__48_,t_1__47_,t_1__46_,t_1__45_,t_1__44_,t_1__43_,t_1__42_,t_1__41_,t_1__40_,
  t_1__39_,t_1__38_,t_1__37_,t_1__36_,t_1__35_,t_1__34_,t_1__33_,t_1__32_,t_1__31_,
  t_1__30_,t_1__29_,t_1__28_,t_1__27_,t_1__26_,t_1__25_,t_1__24_,t_1__23_,t_1__22_,
  t_1__21_,t_1__20_,t_1__19_,t_1__18_,t_1__17_,t_1__16_,t_1__15_,t_1__14_,t_1__13_,
  t_1__12_,t_1__11_,t_1__10_,t_1__9_,t_1__8_,t_1__7_,t_1__6_,t_1__5_,t_1__4_,
  t_1__3_,t_1__2_,t_1__1_,t_1__0_;
  assign t_1__54_ = i[0] | 1'b0;
  assign t_1__53_ = i[1] | i[0];
  assign t_1__52_ = i[2] | i[1];
  assign t_1__51_ = i[3] | i[2];
  assign t_1__50_ = i[4] | i[3];
  assign t_1__49_ = i[5] | i[4];
  assign t_1__48_ = i[6] | i[5];
  assign t_1__47_ = i[7] | i[6];
  assign t_1__46_ = i[8] | i[7];
  assign t_1__45_ = i[9] | i[8];
  assign t_1__44_ = i[10] | i[9];
  assign t_1__43_ = i[11] | i[10];
  assign t_1__42_ = i[12] | i[11];
  assign t_1__41_ = i[13] | i[12];
  assign t_1__40_ = i[14] | i[13];
  assign t_1__39_ = i[15] | i[14];
  assign t_1__38_ = i[16] | i[15];
  assign t_1__37_ = i[17] | i[16];
  assign t_1__36_ = i[18] | i[17];
  assign t_1__35_ = i[19] | i[18];
  assign t_1__34_ = i[20] | i[19];
  assign t_1__33_ = i[21] | i[20];
  assign t_1__32_ = i[22] | i[21];
  assign t_1__31_ = i[23] | i[22];
  assign t_1__30_ = i[24] | i[23];
  assign t_1__29_ = i[25] | i[24];
  assign t_1__28_ = i[26] | i[25];
  assign t_1__27_ = i[27] | i[26];
  assign t_1__26_ = i[28] | i[27];
  assign t_1__25_ = i[29] | i[28];
  assign t_1__24_ = i[30] | i[29];
  assign t_1__23_ = i[31] | i[30];
  assign t_1__22_ = i[32] | i[31];
  assign t_1__21_ = i[33] | i[32];
  assign t_1__20_ = i[34] | i[33];
  assign t_1__19_ = i[35] | i[34];
  assign t_1__18_ = i[36] | i[35];
  assign t_1__17_ = i[37] | i[36];
  assign t_1__16_ = i[38] | i[37];
  assign t_1__15_ = i[39] | i[38];
  assign t_1__14_ = i[40] | i[39];
  assign t_1__13_ = i[41] | i[40];
  assign t_1__12_ = i[42] | i[41];
  assign t_1__11_ = i[43] | i[42];
  assign t_1__10_ = i[44] | i[43];
  assign t_1__9_ = i[45] | i[44];
  assign t_1__8_ = i[46] | i[45];
  assign t_1__7_ = i[47] | i[46];
  assign t_1__6_ = i[48] | i[47];
  assign t_1__5_ = i[49] | i[48];
  assign t_1__4_ = i[50] | i[49];
  assign t_1__3_ = i[51] | i[50];
  assign t_1__2_ = i[52] | i[51];
  assign t_1__1_ = i[53] | i[52];
  assign t_1__0_ = i[54] | i[53];
  assign t_2__54_ = t_1__54_ | 1'b0;
  assign t_2__53_ = t_1__53_ | 1'b0;
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
  assign t_3__54_ = t_2__54_ | 1'b0;
  assign t_3__53_ = t_2__53_ | 1'b0;
  assign t_3__52_ = t_2__52_ | 1'b0;
  assign t_3__51_ = t_2__51_ | 1'b0;
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
  assign t_4__54_ = t_3__54_ | 1'b0;
  assign t_4__53_ = t_3__53_ | 1'b0;
  assign t_4__52_ = t_3__52_ | 1'b0;
  assign t_4__51_ = t_3__51_ | 1'b0;
  assign t_4__50_ = t_3__50_ | 1'b0;
  assign t_4__49_ = t_3__49_ | 1'b0;
  assign t_4__48_ = t_3__48_ | 1'b0;
  assign t_4__47_ = t_3__47_ | 1'b0;
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
  assign t_5__54_ = t_4__54_ | 1'b0;
  assign t_5__53_ = t_4__53_ | 1'b0;
  assign t_5__52_ = t_4__52_ | 1'b0;
  assign t_5__51_ = t_4__51_ | 1'b0;
  assign t_5__50_ = t_4__50_ | 1'b0;
  assign t_5__49_ = t_4__49_ | 1'b0;
  assign t_5__48_ = t_4__48_ | 1'b0;
  assign t_5__47_ = t_4__47_ | 1'b0;
  assign t_5__46_ = t_4__46_ | 1'b0;
  assign t_5__45_ = t_4__45_ | 1'b0;
  assign t_5__44_ = t_4__44_ | 1'b0;
  assign t_5__43_ = t_4__43_ | 1'b0;
  assign t_5__42_ = t_4__42_ | 1'b0;
  assign t_5__41_ = t_4__41_ | 1'b0;
  assign t_5__40_ = t_4__40_ | 1'b0;
  assign t_5__39_ = t_4__39_ | 1'b0;
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
  assign o[0] = t_5__54_ | 1'b0;
  assign o[1] = t_5__53_ | 1'b0;
  assign o[2] = t_5__52_ | 1'b0;
  assign o[3] = t_5__51_ | 1'b0;
  assign o[4] = t_5__50_ | 1'b0;
  assign o[5] = t_5__49_ | 1'b0;
  assign o[6] = t_5__48_ | 1'b0;
  assign o[7] = t_5__47_ | 1'b0;
  assign o[8] = t_5__46_ | 1'b0;
  assign o[9] = t_5__45_ | 1'b0;
  assign o[10] = t_5__44_ | 1'b0;
  assign o[11] = t_5__43_ | 1'b0;
  assign o[12] = t_5__42_ | 1'b0;
  assign o[13] = t_5__41_ | 1'b0;
  assign o[14] = t_5__40_ | 1'b0;
  assign o[15] = t_5__39_ | 1'b0;
  assign o[16] = t_5__38_ | 1'b0;
  assign o[17] = t_5__37_ | 1'b0;
  assign o[18] = t_5__36_ | 1'b0;
  assign o[19] = t_5__35_ | 1'b0;
  assign o[20] = t_5__34_ | 1'b0;
  assign o[21] = t_5__33_ | 1'b0;
  assign o[22] = t_5__32_ | 1'b0;
  assign o[23] = t_5__31_ | 1'b0;
  assign o[24] = t_5__30_ | 1'b0;
  assign o[25] = t_5__29_ | 1'b0;
  assign o[26] = t_5__28_ | 1'b0;
  assign o[27] = t_5__27_ | 1'b0;
  assign o[28] = t_5__26_ | 1'b0;
  assign o[29] = t_5__25_ | 1'b0;
  assign o[30] = t_5__24_ | 1'b0;
  assign o[31] = t_5__23_ | 1'b0;
  assign o[32] = t_5__22_ | t_5__54_;
  assign o[33] = t_5__21_ | t_5__53_;
  assign o[34] = t_5__20_ | t_5__52_;
  assign o[35] = t_5__19_ | t_5__51_;
  assign o[36] = t_5__18_ | t_5__50_;
  assign o[37] = t_5__17_ | t_5__49_;
  assign o[38] = t_5__16_ | t_5__48_;
  assign o[39] = t_5__15_ | t_5__47_;
  assign o[40] = t_5__14_ | t_5__46_;
  assign o[41] = t_5__13_ | t_5__45_;
  assign o[42] = t_5__12_ | t_5__44_;
  assign o[43] = t_5__11_ | t_5__43_;
  assign o[44] = t_5__10_ | t_5__42_;
  assign o[45] = t_5__9_ | t_5__41_;
  assign o[46] = t_5__8_ | t_5__40_;
  assign o[47] = t_5__7_ | t_5__39_;
  assign o[48] = t_5__6_ | t_5__38_;
  assign o[49] = t_5__5_ | t_5__37_;
  assign o[50] = t_5__4_ | t_5__36_;
  assign o[51] = t_5__3_ | t_5__35_;
  assign o[52] = t_5__2_ | t_5__34_;
  assign o[53] = t_5__1_ | t_5__33_;
  assign o[54] = t_5__0_ | t_5__32_;

endmodule



module bsg_fpu_sticky_width_p55
(
  i,
  shamt_i,
  sticky_o
);

  input [54:0] i;
  input [5:0] shamt_i;
  output sticky_o;
  wire sticky_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,
  N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,
  N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,
  N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,
  N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,
  N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,
  N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,
  N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,
  N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,
  N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,
  N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,
  N244,N245,N246,N247,N248,N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,
  N260,N261,N262,N263,N264,N265,N266,N267,N268,N269,N270,N271,N272,N273,N274,N275,
  N276,N277,N278,N279,N280,N281,N282,N283,N284,N285,N286,N287,N288,N289,N290,N291,
  N292,N293,N294,N295,N296,N297,N298,N299,N300,N301,N302,N303,N304,N305,N306,N307,
  N308,N309,N310,N311,N312,N313,N314,N315,N316,N317,N318,N319,N320,N321,N322,N323,
  N324,N325,N326,N327,N328,N329,N330,N331,N332,N333,N334,N335,N336,N337,N338,N339,
  N340,N341,N342,N343,N344,N345,N346,N347,N348,N349,N350,N351,N352,N353,N354,N355,
  N356,N357,N358,N359,N360,N361,N362,N363,N364,N365,N366,N367,N368,N369,N370,N371,
  N372,N373,N374,N375,N376,N377,N378,N379,N380,N381,N382,N383,N384,N385,N386,N387,
  N388,N389,N390,N391,N392,N393,N394,N395,N396,N397,N398,N399;
  wire [54:0] scan_out;

  bsg_scan_width_p55_or_p1_lo_to_hi_p1
  scan0
  (
    .i(i),
    .o(scan_out)
  );

  assign N341 = shamt_i > { 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1 };
  assign N0 = N4 & N5;
  assign N1 = N0 & N6;
  assign N2 = N1 & N7;
  assign N3 = N2 & N8;
  assign N343 = N3 & N9;
  assign N4 = ~shamt_i[5];
  assign N5 = ~shamt_i[4];
  assign N6 = ~shamt_i[3];
  assign N7 = ~shamt_i[2];
  assign N8 = ~shamt_i[0];
  assign N9 = ~shamt_i[1];
  assign N10 = shamt_i[5] & N14;
  assign N11 = N10 & N15;
  assign N12 = N11 & N16;
  assign N13 = N12 & N17;
  assign N344 = N13 & N18;
  assign N14 = ~shamt_i[4];
  assign N15 = ~shamt_i[3];
  assign N16 = ~shamt_i[2];
  assign N17 = ~shamt_i[0];
  assign N18 = ~shamt_i[1];
  assign N19 = N23 & N24;
  assign N20 = N19 & N25;
  assign N21 = N20 & N26;
  assign N22 = N21 & shamt_i[0];
  assign N345 = N22 & N27;
  assign N23 = ~shamt_i[5];
  assign N24 = ~shamt_i[4];
  assign N25 = ~shamt_i[3];
  assign N26 = ~shamt_i[2];
  assign N27 = ~shamt_i[1];
  assign N28 = N32 & N33;
  assign N29 = N28 & N34;
  assign N30 = N29 & N35;
  assign N31 = N30 & N36;
  assign N347 = N31 & shamt_i[1];
  assign N32 = ~shamt_i[5];
  assign N33 = ~shamt_i[4];
  assign N34 = ~shamt_i[3];
  assign N35 = ~shamt_i[2];
  assign N36 = ~shamt_i[0];
  assign N37 = N41 & N42;
  assign N38 = N37 & N43;
  assign N39 = N38 & N44;
  assign N40 = N39 & shamt_i[0];
  assign N349 = N40 & shamt_i[1];
  assign N41 = ~shamt_i[5];
  assign N42 = ~shamt_i[4];
  assign N43 = ~shamt_i[3];
  assign N44 = ~shamt_i[2];
  assign N45 = N49 & N50;
  assign N46 = N45 & N51;
  assign N47 = N46 & shamt_i[2];
  assign N48 = N47 & N52;
  assign N351 = N48 & N53;
  assign N49 = ~shamt_i[5];
  assign N50 = ~shamt_i[4];
  assign N51 = ~shamt_i[3];
  assign N52 = ~shamt_i[0];
  assign N53 = ~shamt_i[1];
  assign N54 = N58 & N59;
  assign N55 = N54 & N60;
  assign N56 = N55 & shamt_i[2];
  assign N57 = N56 & shamt_i[0];
  assign N353 = N57 & N61;
  assign N58 = ~shamt_i[5];
  assign N59 = ~shamt_i[4];
  assign N60 = ~shamt_i[3];
  assign N61 = ~shamt_i[1];
  assign N62 = N66 & N67;
  assign N63 = N62 & N68;
  assign N64 = N63 & shamt_i[2];
  assign N65 = N64 & N69;
  assign N355 = N65 & shamt_i[1];
  assign N66 = ~shamt_i[5];
  assign N67 = ~shamt_i[4];
  assign N68 = ~shamt_i[3];
  assign N69 = ~shamt_i[0];
  assign N70 = N74 & N75;
  assign N71 = N70 & N76;
  assign N72 = N71 & shamt_i[2];
  assign N73 = N72 & shamt_i[0];
  assign N357 = N73 & shamt_i[1];
  assign N74 = ~shamt_i[5];
  assign N75 = ~shamt_i[4];
  assign N76 = ~shamt_i[3];
  assign N77 = N81 & N82;
  assign N78 = N77 & shamt_i[3];
  assign N79 = N78 & N83;
  assign N80 = N79 & N84;
  assign N359 = N80 & N85;
  assign N81 = ~shamt_i[5];
  assign N82 = ~shamt_i[4];
  assign N83 = ~shamt_i[2];
  assign N84 = ~shamt_i[0];
  assign N85 = ~shamt_i[1];
  assign N86 = N90 & N91;
  assign N87 = N86 & shamt_i[3];
  assign N88 = N87 & N92;
  assign N89 = N88 & shamt_i[0];
  assign N361 = N89 & N93;
  assign N90 = ~shamt_i[5];
  assign N91 = ~shamt_i[4];
  assign N92 = ~shamt_i[2];
  assign N93 = ~shamt_i[1];
  assign N94 = N98 & N99;
  assign N95 = N94 & shamt_i[3];
  assign N96 = N95 & N100;
  assign N97 = N96 & N101;
  assign N363 = N97 & shamt_i[1];
  assign N98 = ~shamt_i[5];
  assign N99 = ~shamt_i[4];
  assign N100 = ~shamt_i[2];
  assign N101 = ~shamt_i[0];
  assign N102 = N106 & N107;
  assign N103 = N102 & shamt_i[3];
  assign N104 = N103 & N108;
  assign N105 = N104 & shamt_i[0];
  assign N365 = N105 & shamt_i[1];
  assign N106 = ~shamt_i[5];
  assign N107 = ~shamt_i[4];
  assign N108 = ~shamt_i[2];
  assign N109 = N113 & N114;
  assign N110 = N109 & shamt_i[3];
  assign N111 = N110 & shamt_i[2];
  assign N112 = N111 & N115;
  assign N367 = N112 & N116;
  assign N113 = ~shamt_i[5];
  assign N114 = ~shamt_i[4];
  assign N115 = ~shamt_i[0];
  assign N116 = ~shamt_i[1];
  assign N117 = N121 & N122;
  assign N118 = N117 & shamt_i[3];
  assign N119 = N118 & shamt_i[2];
  assign N120 = N119 & shamt_i[0];
  assign N369 = N120 & N123;
  assign N121 = ~shamt_i[5];
  assign N122 = ~shamt_i[4];
  assign N123 = ~shamt_i[1];
  assign N124 = N128 & N129;
  assign N125 = N124 & shamt_i[3];
  assign N126 = N125 & shamt_i[2];
  assign N127 = N126 & N130;
  assign N371 = N127 & shamt_i[1];
  assign N128 = ~shamt_i[5];
  assign N129 = ~shamt_i[4];
  assign N130 = ~shamt_i[0];
  assign N131 = N135 & N136;
  assign N132 = N131 & shamt_i[3];
  assign N133 = N132 & shamt_i[2];
  assign N134 = N133 & shamt_i[0];
  assign N373 = N134 & shamt_i[1];
  assign N135 = ~shamt_i[5];
  assign N136 = ~shamt_i[4];
  assign N137 = N141 & shamt_i[4];
  assign N138 = N137 & N142;
  assign N139 = N138 & N143;
  assign N140 = N139 & N144;
  assign N375 = N140 & N145;
  assign N141 = ~shamt_i[5];
  assign N142 = ~shamt_i[3];
  assign N143 = ~shamt_i[2];
  assign N144 = ~shamt_i[0];
  assign N145 = ~shamt_i[1];
  assign N146 = N150 & shamt_i[4];
  assign N147 = N146 & N151;
  assign N148 = N147 & N152;
  assign N149 = N148 & shamt_i[0];
  assign N377 = N149 & N153;
  assign N150 = ~shamt_i[5];
  assign N151 = ~shamt_i[3];
  assign N152 = ~shamt_i[2];
  assign N153 = ~shamt_i[1];
  assign N154 = N158 & shamt_i[4];
  assign N155 = N154 & N159;
  assign N156 = N155 & N160;
  assign N157 = N156 & N161;
  assign N379 = N157 & shamt_i[1];
  assign N158 = ~shamt_i[5];
  assign N159 = ~shamt_i[3];
  assign N160 = ~shamt_i[2];
  assign N161 = ~shamt_i[0];
  assign N162 = N166 & shamt_i[4];
  assign N163 = N162 & N167;
  assign N164 = N163 & N168;
  assign N165 = N164 & shamt_i[0];
  assign N381 = N165 & shamt_i[1];
  assign N166 = ~shamt_i[5];
  assign N167 = ~shamt_i[3];
  assign N168 = ~shamt_i[2];
  assign N169 = N173 & shamt_i[4];
  assign N170 = N169 & N174;
  assign N171 = N170 & shamt_i[2];
  assign N172 = N171 & N175;
  assign N383 = N172 & N176;
  assign N173 = ~shamt_i[5];
  assign N174 = ~shamt_i[3];
  assign N175 = ~shamt_i[0];
  assign N176 = ~shamt_i[1];
  assign N177 = N181 & shamt_i[4];
  assign N178 = N177 & N182;
  assign N179 = N178 & shamt_i[2];
  assign N180 = N179 & shamt_i[0];
  assign N385 = N180 & N183;
  assign N181 = ~shamt_i[5];
  assign N182 = ~shamt_i[3];
  assign N183 = ~shamt_i[1];
  assign N184 = N188 & shamt_i[4];
  assign N185 = N184 & N189;
  assign N186 = N185 & shamt_i[2];
  assign N187 = N186 & N190;
  assign N387 = N187 & shamt_i[1];
  assign N188 = ~shamt_i[5];
  assign N189 = ~shamt_i[3];
  assign N190 = ~shamt_i[0];
  assign N191 = N195 & shamt_i[4];
  assign N192 = N191 & N196;
  assign N193 = N192 & shamt_i[2];
  assign N194 = N193 & shamt_i[0];
  assign N389 = N194 & shamt_i[1];
  assign N195 = ~shamt_i[5];
  assign N196 = ~shamt_i[3];
  assign N391 = shamt_i[4] & shamt_i[3] & (N197 & N198) & N199;
  assign N197 = ~shamt_i[2];
  assign N198 = ~shamt_i[0];
  assign N199 = ~shamt_i[1];
  assign N392 = shamt_i[4] & shamt_i[3] & (N200 & shamt_i[0]) & N201;
  assign N200 = ~shamt_i[2];
  assign N201 = ~shamt_i[1];
  assign N393 = shamt_i[4] & shamt_i[3] & (N202 & N203) & shamt_i[1];
  assign N202 = ~shamt_i[2];
  assign N203 = ~shamt_i[0];
  assign N394 = shamt_i[4] & shamt_i[3] & (N204 & shamt_i[0]) & shamt_i[1];
  assign N204 = ~shamt_i[2];
  assign N395 = shamt_i[4] & shamt_i[3] & (shamt_i[2] & N205) & N206;
  assign N205 = ~shamt_i[0];
  assign N206 = ~shamt_i[1];
  assign N396 = shamt_i[4] & shamt_i[3] & (shamt_i[2] & shamt_i[0]) & N207;
  assign N207 = ~shamt_i[1];
  assign N397 = shamt_i[4] & shamt_i[3] & (shamt_i[2] & N208) & shamt_i[1];
  assign N208 = ~shamt_i[0];
  assign N398 = shamt_i[4] & shamt_i[3] & (shamt_i[2] & shamt_i[0]) & shamt_i[1];
  assign N209 = shamt_i[5] & N213;
  assign N210 = N209 & N214;
  assign N211 = N210 & N215;
  assign N212 = N211 & shamt_i[0];
  assign N346 = N212 & N216;
  assign N213 = ~shamt_i[4];
  assign N214 = ~shamt_i[3];
  assign N215 = ~shamt_i[2];
  assign N216 = ~shamt_i[1];
  assign N217 = shamt_i[5] & N221;
  assign N218 = N217 & N222;
  assign N219 = N218 & N223;
  assign N220 = N219 & N224;
  assign N348 = N220 & shamt_i[1];
  assign N221 = ~shamt_i[4];
  assign N222 = ~shamt_i[3];
  assign N223 = ~shamt_i[2];
  assign N224 = ~shamt_i[0];
  assign N225 = shamt_i[5] & N229;
  assign N226 = N225 & N230;
  assign N227 = N226 & N231;
  assign N228 = N227 & shamt_i[0];
  assign N350 = N228 & shamt_i[1];
  assign N229 = ~shamt_i[4];
  assign N230 = ~shamt_i[3];
  assign N231 = ~shamt_i[2];
  assign N232 = shamt_i[5] & N236;
  assign N233 = N232 & N237;
  assign N234 = N233 & shamt_i[2];
  assign N235 = N234 & N238;
  assign N352 = N235 & N239;
  assign N236 = ~shamt_i[4];
  assign N237 = ~shamt_i[3];
  assign N238 = ~shamt_i[0];
  assign N239 = ~shamt_i[1];
  assign N240 = shamt_i[5] & N244;
  assign N241 = N240 & N245;
  assign N242 = N241 & shamt_i[2];
  assign N243 = N242 & shamt_i[0];
  assign N354 = N243 & N246;
  assign N244 = ~shamt_i[4];
  assign N245 = ~shamt_i[3];
  assign N246 = ~shamt_i[1];
  assign N247 = shamt_i[5] & N251;
  assign N248 = N247 & N252;
  assign N249 = N248 & shamt_i[2];
  assign N250 = N249 & N253;
  assign N356 = N250 & shamt_i[1];
  assign N251 = ~shamt_i[4];
  assign N252 = ~shamt_i[3];
  assign N253 = ~shamt_i[0];
  assign N254 = shamt_i[5] & N258;
  assign N255 = N254 & N259;
  assign N256 = N255 & shamt_i[2];
  assign N257 = N256 & shamt_i[0];
  assign N358 = N257 & shamt_i[1];
  assign N258 = ~shamt_i[4];
  assign N259 = ~shamt_i[3];
  assign N360 = shamt_i[5] & shamt_i[3] & (N260 & N261) & N262;
  assign N260 = ~shamt_i[2];
  assign N261 = ~shamt_i[0];
  assign N262 = ~shamt_i[1];
  assign N362 = shamt_i[5] & shamt_i[3] & (N263 & shamt_i[0]) & N264;
  assign N263 = ~shamt_i[2];
  assign N264 = ~shamt_i[1];
  assign N364 = shamt_i[5] & shamt_i[3] & (N265 & N266) & shamt_i[1];
  assign N265 = ~shamt_i[2];
  assign N266 = ~shamt_i[0];
  assign N366 = shamt_i[5] & shamt_i[3] & (N267 & shamt_i[0]) & shamt_i[1];
  assign N267 = ~shamt_i[2];
  assign N368 = shamt_i[5] & shamt_i[3] & (shamt_i[2] & N268) & N269;
  assign N268 = ~shamt_i[0];
  assign N269 = ~shamt_i[1];
  assign N370 = shamt_i[5] & shamt_i[3] & (shamt_i[2] & shamt_i[0]) & N270;
  assign N270 = ~shamt_i[1];
  assign N372 = shamt_i[5] & shamt_i[3] & (shamt_i[2] & N271) & shamt_i[1];
  assign N271 = ~shamt_i[0];
  assign N374 = shamt_i[5] & shamt_i[3] & (shamt_i[2] & shamt_i[0]) & shamt_i[1];
  assign N376 = shamt_i[5] & shamt_i[4] & (N272 & N273) & N274;
  assign N272 = ~shamt_i[2];
  assign N273 = ~shamt_i[0];
  assign N274 = ~shamt_i[1];
  assign N378 = shamt_i[5] & shamt_i[4] & (N275 & shamt_i[0]) & N276;
  assign N275 = ~shamt_i[2];
  assign N276 = ~shamt_i[1];
  assign N380 = shamt_i[5] & shamt_i[4] & (N277 & N278) & shamt_i[1];
  assign N277 = ~shamt_i[2];
  assign N278 = ~shamt_i[0];
  assign N382 = shamt_i[5] & shamt_i[4] & (N279 & shamt_i[0]) & shamt_i[1];
  assign N279 = ~shamt_i[2];
  assign N384 = shamt_i[5] & shamt_i[4] & (shamt_i[2] & N280) & N281;
  assign N280 = ~shamt_i[0];
  assign N281 = ~shamt_i[1];
  assign N386 = shamt_i[5] & shamt_i[4] & (shamt_i[2] & shamt_i[0]) & N282;
  assign N282 = ~shamt_i[1];
  assign N388 = shamt_i[5] & shamt_i[4] & (shamt_i[2] & N283) & shamt_i[1];
  assign N283 = ~shamt_i[0];
  assign N390 = shamt_i[5] & shamt_i[4] & (shamt_i[2] & shamt_i[0]) & shamt_i[1];
  assign sticky_o = (N284)? scan_out[54] : 
                    (N342)? N399 : 1'b0;
  assign N284 = N341;
  assign N399 = (N285)? 1'b0 : 
                (N286)? scan_out[0] : 
                (N287)? scan_out[1] : 
                (N288)? scan_out[2] : 
                (N289)? scan_out[3] : 
                (N290)? scan_out[4] : 
                (N291)? scan_out[5] : 
                (N292)? scan_out[6] : 
                (N293)? scan_out[7] : 
                (N294)? scan_out[8] : 
                (N295)? scan_out[9] : 
                (N296)? scan_out[10] : 
                (N297)? scan_out[11] : 
                (N298)? scan_out[12] : 
                (N299)? scan_out[13] : 
                (N300)? scan_out[14] : 
                (N301)? scan_out[15] : 
                (N302)? scan_out[16] : 
                (N303)? scan_out[17] : 
                (N304)? scan_out[18] : 
                (N305)? scan_out[19] : 
                (N306)? scan_out[20] : 
                (N307)? scan_out[21] : 
                (N308)? scan_out[22] : 
                (N309)? scan_out[23] : 
                (N310)? scan_out[24] : 
                (N311)? scan_out[25] : 
                (N312)? scan_out[26] : 
                (N313)? scan_out[27] : 
                (N314)? scan_out[28] : 
                (N315)? scan_out[29] : 
                (N316)? scan_out[30] : 
                (N317)? scan_out[31] : 
                (N318)? scan_out[32] : 
                (N319)? scan_out[33] : 
                (N320)? scan_out[34] : 
                (N321)? scan_out[35] : 
                (N322)? scan_out[36] : 
                (N323)? scan_out[37] : 
                (N324)? scan_out[38] : 
                (N325)? scan_out[39] : 
                (N326)? scan_out[40] : 
                (N327)? scan_out[41] : 
                (N328)? scan_out[42] : 
                (N329)? scan_out[43] : 
                (N330)? scan_out[44] : 
                (N331)? scan_out[45] : 
                (N332)? scan_out[46] : 
                (N333)? scan_out[47] : 
                (N334)? scan_out[48] : 
                (N335)? scan_out[49] : 
                (N336)? scan_out[50] : 
                (N337)? scan_out[51] : 
                (N338)? scan_out[52] : 
                (N339)? scan_out[53] : 
                (N340)? scan_out[54] : 1'b0;
  assign N285 = N343;
  assign N286 = N345;
  assign N287 = N347;
  assign N288 = N349;
  assign N289 = N351;
  assign N290 = N353;
  assign N291 = N355;
  assign N292 = N357;
  assign N293 = N359;
  assign N294 = N361;
  assign N295 = N363;
  assign N296 = N365;
  assign N297 = N367;
  assign N298 = N369;
  assign N299 = N371;
  assign N300 = N373;
  assign N301 = N375;
  assign N302 = N377;
  assign N303 = N379;
  assign N304 = N381;
  assign N305 = N383;
  assign N306 = N385;
  assign N307 = N387;
  assign N308 = N389;
  assign N309 = N391;
  assign N310 = N392;
  assign N311 = N393;
  assign N312 = N394;
  assign N313 = N395;
  assign N314 = N396;
  assign N315 = N397;
  assign N316 = N398;
  assign N317 = N344;
  assign N318 = N346;
  assign N319 = N348;
  assign N320 = N350;
  assign N321 = N352;
  assign N322 = N354;
  assign N323 = N356;
  assign N324 = N358;
  assign N325 = N360;
  assign N326 = N362;
  assign N327 = N364;
  assign N328 = N366;
  assign N329 = N368;
  assign N330 = N370;
  assign N331 = N372;
  assign N332 = N374;
  assign N333 = N376;
  assign N334 = N378;
  assign N335 = N380;
  assign N336 = N382;
  assign N337 = N384;
  assign N338 = N386;
  assign N339 = N388;
  assign N340 = N390;
  assign N342 = ~N341;

endmodule



module bsg_less_than_width_p63
(
  a_i,
  b_i,
  o
);

  input [62:0] a_i;
  input [62:0] b_i;
  output o;
  wire o;
  assign o = a_i < b_i;

endmodule



module bsg_less_than_width_p56
(
  a_i,
  b_i,
  o
);

  input [55:0] a_i;
  input [55:0] b_i;
  output o;
  wire o;
  assign o = a_i < b_i;

endmodule



module bsg_scan_width_p57_or_p1_lo_to_hi_p1
(
  i,
  o
);

  input [56:0] i;
  output [56:0] o;
  wire [56:0] o;
  wire t_5__56_,t_5__55_,t_5__54_,t_5__53_,t_5__52_,t_5__51_,t_5__50_,t_5__49_,
  t_5__48_,t_5__47_,t_5__46_,t_5__45_,t_5__44_,t_5__43_,t_5__42_,t_5__41_,t_5__40_,
  t_5__39_,t_5__38_,t_5__37_,t_5__36_,t_5__35_,t_5__34_,t_5__33_,t_5__32_,t_5__31_,
  t_5__30_,t_5__29_,t_5__28_,t_5__27_,t_5__26_,t_5__25_,t_5__24_,t_5__23_,t_5__22_,
  t_5__21_,t_5__20_,t_5__19_,t_5__18_,t_5__17_,t_5__16_,t_5__15_,t_5__14_,t_5__13_,
  t_5__12_,t_5__11_,t_5__10_,t_5__9_,t_5__8_,t_5__7_,t_5__6_,t_5__5_,t_5__4_,t_5__3_,
  t_5__2_,t_5__1_,t_5__0_,t_4__56_,t_4__55_,t_4__54_,t_4__53_,t_4__52_,t_4__51_,
  t_4__50_,t_4__49_,t_4__48_,t_4__47_,t_4__46_,t_4__45_,t_4__44_,t_4__43_,t_4__42_,
  t_4__41_,t_4__40_,t_4__39_,t_4__38_,t_4__37_,t_4__36_,t_4__35_,t_4__34_,t_4__33_,
  t_4__32_,t_4__31_,t_4__30_,t_4__29_,t_4__28_,t_4__27_,t_4__26_,t_4__25_,t_4__24_,
  t_4__23_,t_4__22_,t_4__21_,t_4__20_,t_4__19_,t_4__18_,t_4__17_,t_4__16_,
  t_4__15_,t_4__14_,t_4__13_,t_4__12_,t_4__11_,t_4__10_,t_4__9_,t_4__8_,t_4__7_,t_4__6_,
  t_4__5_,t_4__4_,t_4__3_,t_4__2_,t_4__1_,t_4__0_,t_3__56_,t_3__55_,t_3__54_,
  t_3__53_,t_3__52_,t_3__51_,t_3__50_,t_3__49_,t_3__48_,t_3__47_,t_3__46_,t_3__45_,
  t_3__44_,t_3__43_,t_3__42_,t_3__41_,t_3__40_,t_3__39_,t_3__38_,t_3__37_,t_3__36_,
  t_3__35_,t_3__34_,t_3__33_,t_3__32_,t_3__31_,t_3__30_,t_3__29_,t_3__28_,t_3__27_,
  t_3__26_,t_3__25_,t_3__24_,t_3__23_,t_3__22_,t_3__21_,t_3__20_,t_3__19_,t_3__18_,
  t_3__17_,t_3__16_,t_3__15_,t_3__14_,t_3__13_,t_3__12_,t_3__11_,t_3__10_,t_3__9_,
  t_3__8_,t_3__7_,t_3__6_,t_3__5_,t_3__4_,t_3__3_,t_3__2_,t_3__1_,t_3__0_,t_2__56_,
  t_2__55_,t_2__54_,t_2__53_,t_2__52_,t_2__51_,t_2__50_,t_2__49_,t_2__48_,t_2__47_,
  t_2__46_,t_2__45_,t_2__44_,t_2__43_,t_2__42_,t_2__41_,t_2__40_,t_2__39_,t_2__38_,
  t_2__37_,t_2__36_,t_2__35_,t_2__34_,t_2__33_,t_2__32_,t_2__31_,t_2__30_,
  t_2__29_,t_2__28_,t_2__27_,t_2__26_,t_2__25_,t_2__24_,t_2__23_,t_2__22_,t_2__21_,
  t_2__20_,t_2__19_,t_2__18_,t_2__17_,t_2__16_,t_2__15_,t_2__14_,t_2__13_,t_2__12_,
  t_2__11_,t_2__10_,t_2__9_,t_2__8_,t_2__7_,t_2__6_,t_2__5_,t_2__4_,t_2__3_,t_2__2_,
  t_2__1_,t_2__0_,t_1__56_,t_1__55_,t_1__54_,t_1__53_,t_1__52_,t_1__51_,t_1__50_,
  t_1__49_,t_1__48_,t_1__47_,t_1__46_,t_1__45_,t_1__44_,t_1__43_,t_1__42_,t_1__41_,
  t_1__40_,t_1__39_,t_1__38_,t_1__37_,t_1__36_,t_1__35_,t_1__34_,t_1__33_,t_1__32_,
  t_1__31_,t_1__30_,t_1__29_,t_1__28_,t_1__27_,t_1__26_,t_1__25_,t_1__24_,t_1__23_,
  t_1__22_,t_1__21_,t_1__20_,t_1__19_,t_1__18_,t_1__17_,t_1__16_,t_1__15_,t_1__14_,
  t_1__13_,t_1__12_,t_1__11_,t_1__10_,t_1__9_,t_1__8_,t_1__7_,t_1__6_,t_1__5_,
  t_1__4_,t_1__3_,t_1__2_,t_1__1_,t_1__0_;
  assign t_1__56_ = i[0] | 1'b0;
  assign t_1__55_ = i[1] | i[0];
  assign t_1__54_ = i[2] | i[1];
  assign t_1__53_ = i[3] | i[2];
  assign t_1__52_ = i[4] | i[3];
  assign t_1__51_ = i[5] | i[4];
  assign t_1__50_ = i[6] | i[5];
  assign t_1__49_ = i[7] | i[6];
  assign t_1__48_ = i[8] | i[7];
  assign t_1__47_ = i[9] | i[8];
  assign t_1__46_ = i[10] | i[9];
  assign t_1__45_ = i[11] | i[10];
  assign t_1__44_ = i[12] | i[11];
  assign t_1__43_ = i[13] | i[12];
  assign t_1__42_ = i[14] | i[13];
  assign t_1__41_ = i[15] | i[14];
  assign t_1__40_ = i[16] | i[15];
  assign t_1__39_ = i[17] | i[16];
  assign t_1__38_ = i[18] | i[17];
  assign t_1__37_ = i[19] | i[18];
  assign t_1__36_ = i[20] | i[19];
  assign t_1__35_ = i[21] | i[20];
  assign t_1__34_ = i[22] | i[21];
  assign t_1__33_ = i[23] | i[22];
  assign t_1__32_ = i[24] | i[23];
  assign t_1__31_ = i[25] | i[24];
  assign t_1__30_ = i[26] | i[25];
  assign t_1__29_ = i[27] | i[26];
  assign t_1__28_ = i[28] | i[27];
  assign t_1__27_ = i[29] | i[28];
  assign t_1__26_ = i[30] | i[29];
  assign t_1__25_ = i[31] | i[30];
  assign t_1__24_ = i[32] | i[31];
  assign t_1__23_ = i[33] | i[32];
  assign t_1__22_ = i[34] | i[33];
  assign t_1__21_ = i[35] | i[34];
  assign t_1__20_ = i[36] | i[35];
  assign t_1__19_ = i[37] | i[36];
  assign t_1__18_ = i[38] | i[37];
  assign t_1__17_ = i[39] | i[38];
  assign t_1__16_ = i[40] | i[39];
  assign t_1__15_ = i[41] | i[40];
  assign t_1__14_ = i[42] | i[41];
  assign t_1__13_ = i[43] | i[42];
  assign t_1__12_ = i[44] | i[43];
  assign t_1__11_ = i[45] | i[44];
  assign t_1__10_ = i[46] | i[45];
  assign t_1__9_ = i[47] | i[46];
  assign t_1__8_ = i[48] | i[47];
  assign t_1__7_ = i[49] | i[48];
  assign t_1__6_ = i[50] | i[49];
  assign t_1__5_ = i[51] | i[50];
  assign t_1__4_ = i[52] | i[51];
  assign t_1__3_ = i[53] | i[52];
  assign t_1__2_ = i[54] | i[53];
  assign t_1__1_ = i[55] | i[54];
  assign t_1__0_ = i[56] | i[55];
  assign t_2__56_ = t_1__56_ | 1'b0;
  assign t_2__55_ = t_1__55_ | 1'b0;
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
  assign t_3__56_ = t_2__56_ | 1'b0;
  assign t_3__55_ = t_2__55_ | 1'b0;
  assign t_3__54_ = t_2__54_ | 1'b0;
  assign t_3__53_ = t_2__53_ | 1'b0;
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
  assign t_4__56_ = t_3__56_ | 1'b0;
  assign t_4__55_ = t_3__55_ | 1'b0;
  assign t_4__54_ = t_3__54_ | 1'b0;
  assign t_4__53_ = t_3__53_ | 1'b0;
  assign t_4__52_ = t_3__52_ | 1'b0;
  assign t_4__51_ = t_3__51_ | 1'b0;
  assign t_4__50_ = t_3__50_ | 1'b0;
  assign t_4__49_ = t_3__49_ | 1'b0;
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
  assign t_5__56_ = t_4__56_ | 1'b0;
  assign t_5__55_ = t_4__55_ | 1'b0;
  assign t_5__54_ = t_4__54_ | 1'b0;
  assign t_5__53_ = t_4__53_ | 1'b0;
  assign t_5__52_ = t_4__52_ | 1'b0;
  assign t_5__51_ = t_4__51_ | 1'b0;
  assign t_5__50_ = t_4__50_ | 1'b0;
  assign t_5__49_ = t_4__49_ | 1'b0;
  assign t_5__48_ = t_4__48_ | 1'b0;
  assign t_5__47_ = t_4__47_ | 1'b0;
  assign t_5__46_ = t_4__46_ | 1'b0;
  assign t_5__45_ = t_4__45_ | 1'b0;
  assign t_5__44_ = t_4__44_ | 1'b0;
  assign t_5__43_ = t_4__43_ | 1'b0;
  assign t_5__42_ = t_4__42_ | 1'b0;
  assign t_5__41_ = t_4__41_ | 1'b0;
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
  assign o[0] = t_5__56_ | 1'b0;
  assign o[1] = t_5__55_ | 1'b0;
  assign o[2] = t_5__54_ | 1'b0;
  assign o[3] = t_5__53_ | 1'b0;
  assign o[4] = t_5__52_ | 1'b0;
  assign o[5] = t_5__51_ | 1'b0;
  assign o[6] = t_5__50_ | 1'b0;
  assign o[7] = t_5__49_ | 1'b0;
  assign o[8] = t_5__48_ | 1'b0;
  assign o[9] = t_5__47_ | 1'b0;
  assign o[10] = t_5__46_ | 1'b0;
  assign o[11] = t_5__45_ | 1'b0;
  assign o[12] = t_5__44_ | 1'b0;
  assign o[13] = t_5__43_ | 1'b0;
  assign o[14] = t_5__42_ | 1'b0;
  assign o[15] = t_5__41_ | 1'b0;
  assign o[16] = t_5__40_ | 1'b0;
  assign o[17] = t_5__39_ | 1'b0;
  assign o[18] = t_5__38_ | 1'b0;
  assign o[19] = t_5__37_ | 1'b0;
  assign o[20] = t_5__36_ | 1'b0;
  assign o[21] = t_5__35_ | 1'b0;
  assign o[22] = t_5__34_ | 1'b0;
  assign o[23] = t_5__33_ | 1'b0;
  assign o[24] = t_5__32_ | 1'b0;
  assign o[25] = t_5__31_ | 1'b0;
  assign o[26] = t_5__30_ | 1'b0;
  assign o[27] = t_5__29_ | 1'b0;
  assign o[28] = t_5__28_ | 1'b0;
  assign o[29] = t_5__27_ | 1'b0;
  assign o[30] = t_5__26_ | 1'b0;
  assign o[31] = t_5__25_ | 1'b0;
  assign o[32] = t_5__24_ | t_5__56_;
  assign o[33] = t_5__23_ | t_5__55_;
  assign o[34] = t_5__22_ | t_5__54_;
  assign o[35] = t_5__21_ | t_5__53_;
  assign o[36] = t_5__20_ | t_5__52_;
  assign o[37] = t_5__19_ | t_5__51_;
  assign o[38] = t_5__18_ | t_5__50_;
  assign o[39] = t_5__17_ | t_5__49_;
  assign o[40] = t_5__16_ | t_5__48_;
  assign o[41] = t_5__15_ | t_5__47_;
  assign o[42] = t_5__14_ | t_5__46_;
  assign o[43] = t_5__13_ | t_5__45_;
  assign o[44] = t_5__12_ | t_5__44_;
  assign o[45] = t_5__11_ | t_5__43_;
  assign o[46] = t_5__10_ | t_5__42_;
  assign o[47] = t_5__9_ | t_5__41_;
  assign o[48] = t_5__8_ | t_5__40_;
  assign o[49] = t_5__7_ | t_5__39_;
  assign o[50] = t_5__6_ | t_5__38_;
  assign o[51] = t_5__5_ | t_5__37_;
  assign o[52] = t_5__4_ | t_5__36_;
  assign o[53] = t_5__3_ | t_5__35_;
  assign o[54] = t_5__2_ | t_5__34_;
  assign o[55] = t_5__1_ | t_5__33_;
  assign o[56] = t_5__0_ | t_5__32_;

endmodule



module bsg_priority_encode_one_hot_out_width_p57_lo_to_hi_p1
(
  i,
  o
);

  input [56:0] i;
  output [56:0] o;
  wire [56:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55;
  wire [56:1] scan_lo;

  bsg_scan_width_p57_or_p1_lo_to_hi_p1
  genblk1_scan
  (
    .i(i),
    .o({ scan_lo, o[0:0] })
  );

  assign o[56] = scan_lo[56] & N0;
  assign N0 = ~scan_lo[55];
  assign o[55] = scan_lo[55] & N1;
  assign N1 = ~scan_lo[54];
  assign o[54] = scan_lo[54] & N2;
  assign N2 = ~scan_lo[53];
  assign o[53] = scan_lo[53] & N3;
  assign N3 = ~scan_lo[52];
  assign o[52] = scan_lo[52] & N4;
  assign N4 = ~scan_lo[51];
  assign o[51] = scan_lo[51] & N5;
  assign N5 = ~scan_lo[50];
  assign o[50] = scan_lo[50] & N6;
  assign N6 = ~scan_lo[49];
  assign o[49] = scan_lo[49] & N7;
  assign N7 = ~scan_lo[48];
  assign o[48] = scan_lo[48] & N8;
  assign N8 = ~scan_lo[47];
  assign o[47] = scan_lo[47] & N9;
  assign N9 = ~scan_lo[46];
  assign o[46] = scan_lo[46] & N10;
  assign N10 = ~scan_lo[45];
  assign o[45] = scan_lo[45] & N11;
  assign N11 = ~scan_lo[44];
  assign o[44] = scan_lo[44] & N12;
  assign N12 = ~scan_lo[43];
  assign o[43] = scan_lo[43] & N13;
  assign N13 = ~scan_lo[42];
  assign o[42] = scan_lo[42] & N14;
  assign N14 = ~scan_lo[41];
  assign o[41] = scan_lo[41] & N15;
  assign N15 = ~scan_lo[40];
  assign o[40] = scan_lo[40] & N16;
  assign N16 = ~scan_lo[39];
  assign o[39] = scan_lo[39] & N17;
  assign N17 = ~scan_lo[38];
  assign o[38] = scan_lo[38] & N18;
  assign N18 = ~scan_lo[37];
  assign o[37] = scan_lo[37] & N19;
  assign N19 = ~scan_lo[36];
  assign o[36] = scan_lo[36] & N20;
  assign N20 = ~scan_lo[35];
  assign o[35] = scan_lo[35] & N21;
  assign N21 = ~scan_lo[34];
  assign o[34] = scan_lo[34] & N22;
  assign N22 = ~scan_lo[33];
  assign o[33] = scan_lo[33] & N23;
  assign N23 = ~scan_lo[32];
  assign o[32] = scan_lo[32] & N24;
  assign N24 = ~scan_lo[31];
  assign o[31] = scan_lo[31] & N25;
  assign N25 = ~scan_lo[30];
  assign o[30] = scan_lo[30] & N26;
  assign N26 = ~scan_lo[29];
  assign o[29] = scan_lo[29] & N27;
  assign N27 = ~scan_lo[28];
  assign o[28] = scan_lo[28] & N28;
  assign N28 = ~scan_lo[27];
  assign o[27] = scan_lo[27] & N29;
  assign N29 = ~scan_lo[26];
  assign o[26] = scan_lo[26] & N30;
  assign N30 = ~scan_lo[25];
  assign o[25] = scan_lo[25] & N31;
  assign N31 = ~scan_lo[24];
  assign o[24] = scan_lo[24] & N32;
  assign N32 = ~scan_lo[23];
  assign o[23] = scan_lo[23] & N33;
  assign N33 = ~scan_lo[22];
  assign o[22] = scan_lo[22] & N34;
  assign N34 = ~scan_lo[21];
  assign o[21] = scan_lo[21] & N35;
  assign N35 = ~scan_lo[20];
  assign o[20] = scan_lo[20] & N36;
  assign N36 = ~scan_lo[19];
  assign o[19] = scan_lo[19] & N37;
  assign N37 = ~scan_lo[18];
  assign o[18] = scan_lo[18] & N38;
  assign N38 = ~scan_lo[17];
  assign o[17] = scan_lo[17] & N39;
  assign N39 = ~scan_lo[16];
  assign o[16] = scan_lo[16] & N40;
  assign N40 = ~scan_lo[15];
  assign o[15] = scan_lo[15] & N41;
  assign N41 = ~scan_lo[14];
  assign o[14] = scan_lo[14] & N42;
  assign N42 = ~scan_lo[13];
  assign o[13] = scan_lo[13] & N43;
  assign N43 = ~scan_lo[12];
  assign o[12] = scan_lo[12] & N44;
  assign N44 = ~scan_lo[11];
  assign o[11] = scan_lo[11] & N45;
  assign N45 = ~scan_lo[10];
  assign o[10] = scan_lo[10] & N46;
  assign N46 = ~scan_lo[9];
  assign o[9] = scan_lo[9] & N47;
  assign N47 = ~scan_lo[8];
  assign o[8] = scan_lo[8] & N48;
  assign N48 = ~scan_lo[7];
  assign o[7] = scan_lo[7] & N49;
  assign N49 = ~scan_lo[6];
  assign o[6] = scan_lo[6] & N50;
  assign N50 = ~scan_lo[5];
  assign o[5] = scan_lo[5] & N51;
  assign N51 = ~scan_lo[4];
  assign o[4] = scan_lo[4] & N52;
  assign N52 = ~scan_lo[3];
  assign o[3] = scan_lo[3] & N53;
  assign N53 = ~scan_lo[2];
  assign o[2] = scan_lo[2] & N54;
  assign N54 = ~scan_lo[1];
  assign o[1] = scan_lo[1] & N55;
  assign N55 = ~o[0];

endmodule



module bsg_encode_one_hot_width_p1
(
  i,
  addr_o,
  v_o
);

  input [0:0] i;
  output [0:0] addr_o;
  output v_o;
  wire [0:0] addr_o;
  wire v_o;
  assign v_o = i[0];
  assign addr_o[0] = 1'b0;

endmodule



module bsg_encode_one_hot_width_p2
(
  i,
  addr_o,
  v_o
);

  input [1:0] i;
  output [0:0] addr_o;
  output v_o;
  wire [0:0] addr_o,aligned_vs;
  wire v_o;
  wire [1:0] aligned_addrs;

  bsg_encode_one_hot_width_p1
  aligned_left
  (
    .i(i[0]),
    .addr_o(aligned_addrs[0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p1
  aligned_right
  (
    .i(i[1]),
    .addr_o(aligned_addrs[1]),
    .v_o(addr_o[0])
  );

  assign v_o = addr_o[0] | aligned_vs[0];

endmodule



module bsg_encode_one_hot_width_p4
(
  i,
  addr_o,
  v_o
);

  input [3:0] i;
  output [1:0] addr_o;
  output v_o;
  wire [1:0] addr_o,aligned_addrs;
  wire v_o;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p2
  aligned_left
  (
    .i(i[1:0]),
    .addr_o(aligned_addrs[0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p2
  aligned_right
  (
    .i(i[3:2]),
    .addr_o(aligned_addrs[1]),
    .v_o(addr_o[1])
  );

  assign v_o = addr_o[1] | aligned_vs[0];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[1];

endmodule



module bsg_encode_one_hot_width_p8
(
  i,
  addr_o,
  v_o
);

  input [7:0] i;
  output [2:0] addr_o;
  output v_o;
  wire [2:0] addr_o;
  wire v_o;
  wire [3:0] aligned_addrs;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p4
  aligned_left
  (
    .i(i[3:0]),
    .addr_o(aligned_addrs[1:0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p4
  aligned_right
  (
    .i(i[7:4]),
    .addr_o(aligned_addrs[3:2]),
    .v_o(addr_o[2])
  );

  assign v_o = addr_o[2] | aligned_vs[0];
  assign addr_o[1] = aligned_addrs[1] | aligned_addrs[3];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[2];

endmodule



module bsg_encode_one_hot_width_p16
(
  i,
  addr_o,
  v_o
);

  input [15:0] i;
  output [3:0] addr_o;
  output v_o;
  wire [3:0] addr_o;
  wire v_o;
  wire [5:0] aligned_addrs;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p8
  aligned_left
  (
    .i(i[7:0]),
    .addr_o(aligned_addrs[2:0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p8
  aligned_right
  (
    .i(i[15:8]),
    .addr_o(aligned_addrs[5:3]),
    .v_o(addr_o[3])
  );

  assign v_o = addr_o[3] | aligned_vs[0];
  assign addr_o[2] = aligned_addrs[2] | aligned_addrs[5];
  assign addr_o[1] = aligned_addrs[1] | aligned_addrs[4];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[3];

endmodule



module bsg_encode_one_hot_width_p32
(
  i,
  addr_o,
  v_o
);

  input [31:0] i;
  output [4:0] addr_o;
  output v_o;
  wire [4:0] addr_o;
  wire v_o;
  wire [7:0] aligned_addrs;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p16
  aligned_left
  (
    .i(i[15:0]),
    .addr_o(aligned_addrs[3:0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p16
  aligned_right
  (
    .i(i[31:16]),
    .addr_o(aligned_addrs[7:4]),
    .v_o(addr_o[4])
  );

  assign v_o = addr_o[4] | aligned_vs[0];
  assign addr_o[3] = aligned_addrs[3] | aligned_addrs[7];
  assign addr_o[2] = aligned_addrs[2] | aligned_addrs[6];
  assign addr_o[1] = aligned_addrs[1] | aligned_addrs[5];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[4];

endmodule



module bsg_encode_one_hot_width_p64
(
  i,
  addr_o,
  v_o
);

  input [63:0] i;
  output [5:0] addr_o;
  output v_o;
  wire [5:0] addr_o;
  wire v_o;
  wire [9:0] aligned_addrs;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p32
  aligned_left
  (
    .i(i[31:0]),
    .addr_o(aligned_addrs[4:0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p32
  aligned_right
  (
    .i(i[63:32]),
    .addr_o(aligned_addrs[9:5]),
    .v_o(addr_o[5])
  );

  assign v_o = addr_o[5] | aligned_vs[0];
  assign addr_o[4] = aligned_addrs[4] | aligned_addrs[9];
  assign addr_o[3] = aligned_addrs[3] | aligned_addrs[8];
  assign addr_o[2] = aligned_addrs[2] | aligned_addrs[7];
  assign addr_o[1] = aligned_addrs[1] | aligned_addrs[6];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[5];

endmodule



module bsg_encode_one_hot_width_p57_lo_to_hi_p1
(
  i,
  addr_o,
  v_o
);

  input [56:0] i;
  output [5:0] addr_o;
  output v_o;
  wire [5:0] addr_o;
  wire v_o;

  bsg_encode_one_hot_width_p64
  unaligned_align
  (
    .i({ 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, i }),
    .addr_o(addr_o),
    .v_o(v_o)
  );


endmodule



module bsg_priority_encode_width_p57_lo_to_hi_p1
(
  i,
  addr_o,
  v_o
);

  input [56:0] i;
  output [5:0] addr_o;
  output v_o;
  wire [5:0] addr_o;
  wire v_o;
  wire [56:0] enc_lo;

  bsg_priority_encode_one_hot_out_width_p57_lo_to_hi_p1
  a
  (
    .i(i),
    .o(enc_lo)
  );


  bsg_encode_one_hot_width_p57_lo_to_hi_p1
  b
  (
    .i(enc_lo),
    .addr_o(addr_o),
    .v_o(v_o)
  );


endmodule



module bsg_fpu_clz_width_p57
(
  i,
  num_zero_o
);

  input [56:0] i;
  output [5:0] num_zero_o;
  wire [5:0] num_zero_o;

  bsg_priority_encode_width_p57_lo_to_hi_p1
  pe0
  (
    .i({ i[0:0], i[1:1], i[2:2], i[3:3], i[4:4], i[5:5], i[6:6], i[7:7], i[8:8], i[9:9], i[10:10], i[11:11], i[12:12], i[13:13], i[14:14], i[15:15], i[16:16], i[17:17], i[18:18], i[19:19], i[20:20], i[21:21], i[22:22], i[23:23], i[24:24], i[25:25], i[26:26], i[27:27], i[28:28], i[29:29], i[30:30], i[31:31], i[32:32], i[33:33], i[34:34], i[35:35], i[36:36], i[37:37], i[38:38], i[39:39], i[40:40], i[41:41], i[42:42], i[43:43], i[44:44], i[45:45], i[46:46], i[47:47], i[48:48], i[49:49], i[50:50], i[51:51], i[52:52], i[53:53], i[54:54], i[55:55], i[56:56] }),
    .addr_o(num_zero_o)
  );


endmodule



module bsg_fpu_add_sub
(
  clk_i,
  reset_i,
  en_i,
  v_i,
  a_i,
  b_i,
  sub_i,
  ready_o,
  v_o,
  z_o,
  unimplemented_o,
  invalid_o,
  overflow_o,
  underflow_o,
  yumi_i
);

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] z_o;
  input clk_i;
  input reset_i;
  input en_i;
  input v_i;
  input sub_i;
  input yumi_i;
  output ready_o;
  output v_o;
  output unimplemented_o;
  output invalid_o;
  output overflow_o;
  output underflow_o;
  wire [63:0] z_o;
  wire ready_o,unimplemented_o,invalid_o,overflow_o,underflow_o,N0,N1,N2,N3,N4,N5,N6,
  N7,N8,N9,stall,a_zero,a_nan,a_sig_nan,a_infty,exp_a_zero,a_denormal,sign_a,b_zero,
  b_nan,b_sig_nan,b_infty,exp_b_zero,b_denormal,sign_b,exp_a_less,N10,N11,N12,N13,
  N14,N15,N16,N17,N18,N19,N20,N21,mag_a_less,final_sign,do_sub,N22,N23,N24,N25,
  N26,N27,N28,N29,N30,larger_exp_man_less,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,
  N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,
  N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,
  N149,N150,N151,reduce_o,all_zero,N152,N153,N154,N155,N156,N157,N158,N159,N160,
  N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,
  N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,
  N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,
  adjusted_exp_cout,round_up,N209,N210,N211,N212,N213,N214,N215,carry_into_exp,N216,
  N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,N230,N231,N232,
  N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,N246,N247,N248,
  N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,N260,N261,N262,N263,N264,
  N265,N266,N267,N268,N269,N270,N271,N272,N273,N274,N275,N276,N277,N278,N279,N280,
  N281,N282,N283,N284,N285,N286,N287,N288,N289,N290,N291,N292,N293,N294,N295,N296,
  N297,N298,N299,N300,N301,N302,N303,N304,N305,N306,N307,N308,N309,N310,N311,N312,
  N313,N314,N315,N316,N317,N318,N319,N320,N321,N322,N323,N324,N325,N326,N327,N328,
  N329,N330,N331,N332,N333,N334,N335,N336,N337,N338,N339,N340,N341,N342,N343,N344,
  N345,N346,N347,N348,N349,N350,N351,N352;
  wire [10:0] exp_a,exp_b,larger_exp,diff_ab,diff_ba,exp_diff,adjusted_exp;
  wire [51:0] man_a,man_b,larger_exp_man,smaller_exp_man;
  wire [55:0] smaller_exp_man_shifted,larger_mag_man,smaller_mag_man,shifted_adder_output;
  wire [56:0] adder_output;
  wire [5:0] num_zero;
  wire [62:0] rounded;
  reg a_denormal_1_r,v_1_r,b_denormal_1_r,final_sign_1_r,do_sub_1_r,a_sig_nan_1_r,
  b_sig_nan_1_r,a_nan_1_r,b_nan_1_r,a_infty_1_r,b_infty_1_r,a_denormal_2_r,v_2_r,
  b_denormal_2_r,final_sign_2_r,do_sub_2_r,a_sig_nan_2_r,b_sig_nan_2_r,a_nan_2_r,
  b_nan_2_r,a_infty_2_r,b_infty_2_r,adjusted_exp_cout_3_r,v_o,final_sign_3_r,
  round_up_3_r,all_zero_3_r,a_sig_nan_3_r,b_sig_nan_3_r,a_nan_3_r,b_nan_3_r,a_infty_3_r,
  b_infty_3_r,do_sub_3_r,a_denormal_3_r,b_denormal_3_r;
  reg [10:0] larger_exp_1_r,larger_exp_2_r;
  reg [55:0] smaller_exp_man_shifted_1_r,larger_exp_man_padded_1_r;
  reg [56:0] adder_output_2_r;
  reg [62:0] pre_roundup_3_r;

  bsg_fpu_preprocess_e_p11_m_p52
  a_preprocess
  (
    .a_i(a_i),
    .zero_o(a_zero),
    .nan_o(a_nan),
    .sig_nan_o(a_sig_nan),
    .infty_o(a_infty),
    .exp_zero_o(exp_a_zero),
    .denormal_o(a_denormal),
    .sign_o(sign_a),
    .exp_o(exp_a),
    .man_o(man_a)
  );


  bsg_fpu_preprocess_e_p11_m_p52
  b_preprocess
  (
    .a_i(b_i),
    .zero_o(b_zero),
    .nan_o(b_nan),
    .sig_nan_o(b_sig_nan),
    .infty_o(b_infty),
    .exp_zero_o(exp_b_zero),
    .denormal_o(b_denormal),
    .sign_o(sign_b),
    .exp_o(exp_b),
    .man_o(man_b)
  );


  bsg_less_than_width_p11
  lt_exp
  (
    .a_i(exp_a),
    .b_i(exp_b),
    .o(exp_a_less)
  );


  bsg_fpu_sticky_width_p55
  sticky0
  (
    .i({ 1'b1, smaller_exp_man, 1'b0, 1'b0 }),
    .shamt_i(exp_diff[5:0]),
    .sticky_o(smaller_exp_man_shifted[0])
  );


  bsg_less_than_width_p63
  lt_mag
  (
    .a_i(a_i[62:0]),
    .b_i(b_i[62:0]),
    .o(mag_a_less)
  );

  assign smaller_exp_man_shifted[55:1] = { 1'b1, smaller_exp_man, 1'b0, 1'b0 } >> exp_diff;

  bsg_less_than_width_p56
  lt_man_norm
  (
    .a_i(larger_exp_man_padded_1_r),
    .b_i(smaller_exp_man_shifted_1_r),
    .o(larger_exp_man_less)
  );


  bsg_fpu_clz_width_p57
  clz
  (
    .i(adder_output_2_r),
    .num_zero_o(num_zero)
  );


  bsg_reduce
  reduce0
  (
    .i(adder_output_2_r),
    .o(reduce_o)
  );

  assign N262 = pre_roundup_3_r[61] | pre_roundup_3_r[62];
  assign N263 = pre_roundup_3_r[60] | N262;
  assign N264 = pre_roundup_3_r[59] | N263;
  assign N265 = pre_roundup_3_r[58] | N264;
  assign N266 = pre_roundup_3_r[57] | N265;
  assign N267 = pre_roundup_3_r[56] | N266;
  assign N268 = pre_roundup_3_r[55] | N267;
  assign N269 = pre_roundup_3_r[54] | N268;
  assign N270 = pre_roundup_3_r[53] | N269;
  assign N271 = pre_roundup_3_r[52] | N270;
  assign N272 = ~N271;
  assign { N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153 } = adder_output_2_r[55:0] << num_zero;
  assign N273 = pre_roundup_3_r[61] & pre_roundup_3_r[62];
  assign N274 = pre_roundup_3_r[60] & N273;
  assign N275 = pre_roundup_3_r[59] & N274;
  assign N276 = pre_roundup_3_r[58] & N275;
  assign N277 = pre_roundup_3_r[57] & N276;
  assign N278 = pre_roundup_3_r[56] & N277;
  assign N279 = pre_roundup_3_r[55] & N278;
  assign N280 = pre_roundup_3_r[54] & N279;
  assign N281 = pre_roundup_3_r[53] & N280;
  assign N282 = pre_roundup_3_r[52] & N281;
  assign rounded = pre_roundup_3_r + round_up_3_r;
  assign { adjusted_exp_cout, adjusted_exp } = larger_exp_2_r - num_zero;
  assign diff_ba = exp_b - exp_a;
  assign diff_ab = exp_a - exp_b;
  assign larger_exp = { N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11 } + 1'b1;
  assign { N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88 } = larger_mag_man + { do_sub_1_r, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87 };
  assign adder_output = { N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88 } + do_sub_1_r;
  assign { N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11 } = (N0)? exp_b : 
                                                                     (N1)? exp_a : 1'b0;
  assign N0 = exp_a_less;
  assign N1 = N10;
  assign exp_diff = (N0)? diff_ba : 
                    (N1)? diff_ab : 1'b0;
  assign larger_exp_man = (N0)? man_b : 
                          (N1)? man_a : 1'b0;
  assign smaller_exp_man = (N0)? man_a : 
                           (N1)? man_b : 1'b0;
  assign N25 = (N2)? 1'b1 : 
               (N30)? 1'b1 : 
               (N24)? 1'b0 : 1'b0;
  assign N2 = reset_i;
  assign N26 = (N2)? 1'b0 : 
               (N30)? v_i : 1'b0;
  assign N27 = (N2)? 1'b0 : 
               (N30)? v_i : 
               (N24)? 1'b0 : 1'b0;
  assign N28 = (N2)? 1'b0 : 
               (N30)? v_i : 
               (N24)? 1'b0 : 1'b0;
  assign larger_mag_man = (N3)? smaller_exp_man_shifted_1_r : 
                          (N4)? larger_exp_man_padded_1_r : 1'b0;
  assign N3 = larger_exp_man_less;
  assign N4 = N31;
  assign smaller_mag_man = (N3)? larger_exp_man_padded_1_r : 
                           (N4)? smaller_exp_man_shifted_1_r : 1'b0;
  assign N148 = (N2)? 1'b1 : 
                (N151)? 1'b1 : 
                (N147)? 1'b0 : 1'b0;
  assign N149 = (N2)? 1'b0 : 
                (N151)? v_1_r : 1'b0;
  assign N150 = (N2)? 1'b0 : 
                (N151)? v_1_r : 
                (N147)? 1'b0 : 1'b0;
  assign shifted_adder_output = (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                (N6)? { N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153 } : 1'b0;
  assign N5 = all_zero;
  assign N6 = N152;
  assign N212 = (N2)? 1'b1 : 
                (N215)? 1'b1 : 
                (N211)? 1'b0 : 1'b0;
  assign N213 = (N2)? 1'b0 : 
                (N215)? v_2_r : 1'b0;
  assign N214 = (N2)? 1'b0 : 
                (N215)? v_2_r : 
                (N211)? 1'b0 : 1'b0;
  assign N235 = (N7)? 1'b0 : 
                (N8)? final_sign_3_r : 1'b0;
  assign N7 = do_sub_3_r;
  assign N8 = N234;
  assign unimplemented_o = (N9)? 1'b0 : 
                           (N237)? 1'b0 : 
                           (N240)? 1'b0 : 
                           (N243)? 1'b0 : 
                           (N246)? 1'b0 : 
                           (N249)? 1'b1 : 
                           (N252)? 1'b0 : 
                           (N255)? 1'b0 : 
                           (N258)? 1'b0 : 
                           (N261)? 1'b0 : 
                           (N233)? 1'b0 : 1'b0;
  assign N9 = N216;
  assign invalid_o = (N9)? 1'b1 : 
                     (N237)? 1'b0 : 
                     (N240)? do_sub_3_r : 
                     (N243)? 1'b0 : 
                     (N246)? 1'b0 : 
                     (N249)? 1'b0 : 
                     (N252)? 1'b0 : 
                     (N255)? 1'b0 : 
                     (N258)? 1'b0 : 
                     (N261)? 1'b0 : 
                     (N233)? 1'b0 : 1'b0;
  assign overflow_o = (N9)? 1'b0 : 
                      (N237)? 1'b0 : 
                      (N240)? 1'b0 : 
                      (N243)? 1'b0 : 
                      (N246)? 1'b0 : 
                      (N249)? 1'b0 : 
                      (N252)? 1'b0 : 
                      (N255)? 1'b0 : 
                      (N258)? 1'b1 : 
                      (N261)? 1'b0 : 
                      (N233)? 1'b0 : 1'b0;
  assign underflow_o = (N9)? 1'b0 : 
                       (N237)? 1'b0 : 
                       (N240)? 1'b0 : 
                       (N243)? 1'b0 : 
                       (N246)? 1'b0 : 
                       (N249)? 1'b0 : 
                       (N252)? 1'b0 : 
                       (N255)? 1'b1 : 
                       (N258)? 1'b0 : 
                       (N261)? 1'b1 : 
                       (N233)? 1'b0 : 1'b0;
  assign z_o = (N9)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N237)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N240)? { N235, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, do_sub_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N243)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N246)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N249)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N252)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N255)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N258)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N261)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N233)? { final_sign_3_r, rounded } : 1'b0;
  assign stall = v_o & N283;
  assign N283 = ~yumi_i;
  assign ready_o = N284 & en_i;
  assign N284 = ~stall;
  assign N10 = ~exp_a_less;
  assign final_sign = N290 | N293;
  assign N290 = N286 | N289;
  assign N286 = sign_a & N285;
  assign N285 = ~mag_a_less;
  assign N289 = N288 & sub_i;
  assign N288 = N287 & mag_a_less;
  assign N287 = ~sign_b;
  assign N293 = N291 & N292;
  assign N291 = sign_b & mag_a_less;
  assign N292 = ~sub_i;
  assign do_sub = N294 ^ sign_b;
  assign N294 = sub_i ^ sign_a;
  assign N22 = N284 & en_i;
  assign N23 = N22 | reset_i;
  assign N24 = ~N23;
  assign N29 = ~reset_i;
  assign N30 = N22 & N29;
  assign N31 = ~larger_exp_man_less;
  assign N32 = do_sub_1_r ^ smaller_mag_man[55];
  assign N33 = do_sub_1_r ^ smaller_mag_man[54];
  assign N34 = do_sub_1_r ^ smaller_mag_man[53];
  assign N35 = do_sub_1_r ^ smaller_mag_man[52];
  assign N36 = do_sub_1_r ^ smaller_mag_man[51];
  assign N37 = do_sub_1_r ^ smaller_mag_man[50];
  assign N38 = do_sub_1_r ^ smaller_mag_man[49];
  assign N39 = do_sub_1_r ^ smaller_mag_man[48];
  assign N40 = do_sub_1_r ^ smaller_mag_man[47];
  assign N41 = do_sub_1_r ^ smaller_mag_man[46];
  assign N42 = do_sub_1_r ^ smaller_mag_man[45];
  assign N43 = do_sub_1_r ^ smaller_mag_man[44];
  assign N44 = do_sub_1_r ^ smaller_mag_man[43];
  assign N45 = do_sub_1_r ^ smaller_mag_man[42];
  assign N46 = do_sub_1_r ^ smaller_mag_man[41];
  assign N47 = do_sub_1_r ^ smaller_mag_man[40];
  assign N48 = do_sub_1_r ^ smaller_mag_man[39];
  assign N49 = do_sub_1_r ^ smaller_mag_man[38];
  assign N50 = do_sub_1_r ^ smaller_mag_man[37];
  assign N51 = do_sub_1_r ^ smaller_mag_man[36];
  assign N52 = do_sub_1_r ^ smaller_mag_man[35];
  assign N53 = do_sub_1_r ^ smaller_mag_man[34];
  assign N54 = do_sub_1_r ^ smaller_mag_man[33];
  assign N55 = do_sub_1_r ^ smaller_mag_man[32];
  assign N56 = do_sub_1_r ^ smaller_mag_man[31];
  assign N57 = do_sub_1_r ^ smaller_mag_man[30];
  assign N58 = do_sub_1_r ^ smaller_mag_man[29];
  assign N59 = do_sub_1_r ^ smaller_mag_man[28];
  assign N60 = do_sub_1_r ^ smaller_mag_man[27];
  assign N61 = do_sub_1_r ^ smaller_mag_man[26];
  assign N62 = do_sub_1_r ^ smaller_mag_man[25];
  assign N63 = do_sub_1_r ^ smaller_mag_man[24];
  assign N64 = do_sub_1_r ^ smaller_mag_man[23];
  assign N65 = do_sub_1_r ^ smaller_mag_man[22];
  assign N66 = do_sub_1_r ^ smaller_mag_man[21];
  assign N67 = do_sub_1_r ^ smaller_mag_man[20];
  assign N68 = do_sub_1_r ^ smaller_mag_man[19];
  assign N69 = do_sub_1_r ^ smaller_mag_man[18];
  assign N70 = do_sub_1_r ^ smaller_mag_man[17];
  assign N71 = do_sub_1_r ^ smaller_mag_man[16];
  assign N72 = do_sub_1_r ^ smaller_mag_man[15];
  assign N73 = do_sub_1_r ^ smaller_mag_man[14];
  assign N74 = do_sub_1_r ^ smaller_mag_man[13];
  assign N75 = do_sub_1_r ^ smaller_mag_man[12];
  assign N76 = do_sub_1_r ^ smaller_mag_man[11];
  assign N77 = do_sub_1_r ^ smaller_mag_man[10];
  assign N78 = do_sub_1_r ^ smaller_mag_man[9];
  assign N79 = do_sub_1_r ^ smaller_mag_man[8];
  assign N80 = do_sub_1_r ^ smaller_mag_man[7];
  assign N81 = do_sub_1_r ^ smaller_mag_man[6];
  assign N82 = do_sub_1_r ^ smaller_mag_man[5];
  assign N83 = do_sub_1_r ^ smaller_mag_man[4];
  assign N84 = do_sub_1_r ^ smaller_mag_man[3];
  assign N85 = do_sub_1_r ^ smaller_mag_man[2];
  assign N86 = do_sub_1_r ^ smaller_mag_man[1];
  assign N87 = do_sub_1_r ^ smaller_mag_man[0];
  assign N145 = N284 & en_i;
  assign N146 = N145 | reset_i;
  assign N147 = ~N146;
  assign N151 = N145 & N29;
  assign all_zero = ~reduce_o;
  assign N152 = ~all_zero;
  assign round_up = shifted_adder_output[3] & N297;
  assign N297 = N296 | shifted_adder_output[4];
  assign N296 = N295 | shifted_adder_output[0];
  assign N295 = shifted_adder_output[2] | shifted_adder_output[1];
  assign N209 = N284 & en_i;
  assign N210 = N209 | reset_i;
  assign N211 = ~N210;
  assign N215 = N209 & N29;
  assign carry_into_exp = N348 & pre_roundup_3_r[0];
  assign N348 = N347 & pre_roundup_3_r[1];
  assign N347 = N346 & pre_roundup_3_r[2];
  assign N346 = N345 & pre_roundup_3_r[3];
  assign N345 = N344 & pre_roundup_3_r[4];
  assign N344 = N343 & pre_roundup_3_r[5];
  assign N343 = N342 & pre_roundup_3_r[6];
  assign N342 = N341 & pre_roundup_3_r[7];
  assign N341 = N340 & pre_roundup_3_r[8];
  assign N340 = N339 & pre_roundup_3_r[9];
  assign N339 = N338 & pre_roundup_3_r[10];
  assign N338 = N337 & pre_roundup_3_r[11];
  assign N337 = N336 & pre_roundup_3_r[12];
  assign N336 = N335 & pre_roundup_3_r[13];
  assign N335 = N334 & pre_roundup_3_r[14];
  assign N334 = N333 & pre_roundup_3_r[15];
  assign N333 = N332 & pre_roundup_3_r[16];
  assign N332 = N331 & pre_roundup_3_r[17];
  assign N331 = N330 & pre_roundup_3_r[18];
  assign N330 = N329 & pre_roundup_3_r[19];
  assign N329 = N328 & pre_roundup_3_r[20];
  assign N328 = N327 & pre_roundup_3_r[21];
  assign N327 = N326 & pre_roundup_3_r[22];
  assign N326 = N325 & pre_roundup_3_r[23];
  assign N325 = N324 & pre_roundup_3_r[24];
  assign N324 = N323 & pre_roundup_3_r[25];
  assign N323 = N322 & pre_roundup_3_r[26];
  assign N322 = N321 & pre_roundup_3_r[27];
  assign N321 = N320 & pre_roundup_3_r[28];
  assign N320 = N319 & pre_roundup_3_r[29];
  assign N319 = N318 & pre_roundup_3_r[30];
  assign N318 = N317 & pre_roundup_3_r[31];
  assign N317 = N316 & pre_roundup_3_r[32];
  assign N316 = N315 & pre_roundup_3_r[33];
  assign N315 = N314 & pre_roundup_3_r[34];
  assign N314 = N313 & pre_roundup_3_r[35];
  assign N313 = N312 & pre_roundup_3_r[36];
  assign N312 = N311 & pre_roundup_3_r[37];
  assign N311 = N310 & pre_roundup_3_r[38];
  assign N310 = N309 & pre_roundup_3_r[39];
  assign N309 = N308 & pre_roundup_3_r[40];
  assign N308 = N307 & pre_roundup_3_r[41];
  assign N307 = N306 & pre_roundup_3_r[42];
  assign N306 = N305 & pre_roundup_3_r[43];
  assign N305 = N304 & pre_roundup_3_r[44];
  assign N304 = N303 & pre_roundup_3_r[45];
  assign N303 = N302 & pre_roundup_3_r[46];
  assign N302 = N301 & pre_roundup_3_r[47];
  assign N301 = N300 & pre_roundup_3_r[48];
  assign N300 = N299 & pre_roundup_3_r[49];
  assign N299 = N298 & pre_roundup_3_r[50];
  assign N298 = round_up_3_r & pre_roundup_3_r[51];
  assign N216 = a_sig_nan_3_r | b_sig_nan_3_r;
  assign N217 = a_nan_3_r | b_nan_3_r;
  assign N218 = a_infty_3_r & b_infty_3_r;
  assign N219 = a_infty_3_r & N349;
  assign N349 = ~b_infty_3_r;
  assign N220 = N350 & b_infty_3_r;
  assign N350 = ~a_infty_3_r;
  assign N221 = a_denormal_3_r | b_denormal_3_r;
  assign N222 = N282 & N351;
  assign N351 = pre_roundup_3_r[52] | carry_into_exp;
  assign N223 = N272 & N352;
  assign N352 = ~carry_into_exp;
  assign N224 = N217 | N216;
  assign N225 = N218 | N224;
  assign N226 = N219 | N225;
  assign N227 = N220 | N226;
  assign N228 = N221 | N227;
  assign N229 = all_zero_3_r | N228;
  assign N230 = adjusted_exp_cout_3_r | N229;
  assign N231 = N222 | N230;
  assign N232 = N223 | N231;
  assign N233 = ~N232;
  assign N234 = ~do_sub_3_r;
  assign N236 = ~N216;
  assign N237 = N217 & N236;
  assign N238 = ~N217;
  assign N239 = N236 & N238;
  assign N240 = N218 & N239;
  assign N241 = ~N218;
  assign N242 = N239 & N241;
  assign N243 = N219 & N242;
  assign N244 = ~N219;
  assign N245 = N242 & N244;
  assign N246 = N220 & N245;
  assign N247 = ~N220;
  assign N248 = N245 & N247;
  assign N249 = N221 & N248;
  assign N250 = ~N221;
  assign N251 = N248 & N250;
  assign N252 = all_zero_3_r & N251;
  assign N253 = ~all_zero_3_r;
  assign N254 = N251 & N253;
  assign N255 = adjusted_exp_cout_3_r & N254;
  assign N256 = ~adjusted_exp_cout_3_r;
  assign N257 = N254 & N256;
  assign N258 = N222 & N257;
  assign N259 = ~N222;
  assign N260 = N257 & N259;
  assign N261 = N223 & N260;

  always @(posedge clk_i) begin
    if(N27) begin
      a_denormal_1_r <= a_denormal;
      b_denormal_1_r <= b_denormal;
      final_sign_1_r <= final_sign;
      { smaller_exp_man_shifted_1_r[55:21] } <= { smaller_exp_man_shifted[55:21] };
      { larger_exp_man_padded_1_r[55:0] } <= { 1'b1, larger_exp_man[51:0], 1'b0, 1'b0, 1'b0 };
      a_sig_nan_1_r <= a_sig_nan;
      b_sig_nan_1_r <= b_sig_nan;
      a_nan_1_r <= a_nan;
      b_nan_1_r <= b_nan;
      a_infty_1_r <= a_infty;
      b_infty_1_r <= b_infty;
    end 
    if(N25) begin
      v_1_r <= N26;
    end 
    if(N28) begin
      do_sub_1_r <= do_sub;
      { larger_exp_1_r[10:0] } <= { larger_exp[10:0] };
      { smaller_exp_man_shifted_1_r[20:0] } <= { smaller_exp_man_shifted[20:0] };
    end 
    if(N150) begin
      a_denormal_2_r <= a_denormal_1_r;
      b_denormal_2_r <= b_denormal_1_r;
      { larger_exp_2_r[10:0] } <= { larger_exp_1_r[10:0] };
      { adder_output_2_r[56:0] } <= { adder_output[56:0] };
      final_sign_2_r <= final_sign_1_r;
      do_sub_2_r <= do_sub_1_r;
      a_sig_nan_2_r <= a_sig_nan_1_r;
      b_sig_nan_2_r <= b_sig_nan_1_r;
      a_nan_2_r <= a_nan_1_r;
      b_nan_2_r <= b_nan_1_r;
      a_infty_2_r <= a_infty_1_r;
      b_infty_2_r <= b_infty_1_r;
    end 
    if(N148) begin
      v_2_r <= N149;
    end 
    if(N214) begin
      adjusted_exp_cout_3_r <= adjusted_exp_cout;
      final_sign_3_r <= final_sign_2_r;
      { pre_roundup_3_r[62:0] } <= { adjusted_exp[10:0], shifted_adder_output[55:4] };
      round_up_3_r <= round_up;
      all_zero_3_r <= all_zero;
      a_sig_nan_3_r <= a_sig_nan_2_r;
      b_sig_nan_3_r <= b_sig_nan_2_r;
      a_nan_3_r <= a_nan_2_r;
      b_nan_3_r <= b_nan_2_r;
      a_infty_3_r <= a_infty_2_r;
      b_infty_3_r <= b_infty_2_r;
      do_sub_3_r <= do_sub_2_r;
      a_denormal_3_r <= a_denormal_2_r;
      b_denormal_3_r <= b_denormal_2_r;
    end 
    if(N212) begin
      v_o <= N213;
    end 
  end


endmodule

