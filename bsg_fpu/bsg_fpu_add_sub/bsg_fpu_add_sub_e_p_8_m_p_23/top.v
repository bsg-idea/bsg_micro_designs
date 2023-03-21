

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

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] z_o;
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



module bsg_fpu_preprocess_e_p8_m_p23
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

  input [31:0] a_i;
  output [7:0] exp_o;
  output [22:0] man_o;
  output zero_o;
  output nan_o;
  output sig_nan_o;
  output infty_o;
  output exp_zero_o;
  output man_zero_o;
  output denormal_o;
  output sign_o;
  wire [7:0] exp_o;
  wire [22:0] man_o;
  wire zero_o,nan_o,sig_nan_o,infty_o,exp_zero_o,man_zero_o,denormal_o,sign_o,a_i_31_,
  N0,N1,N2,N3,N4,N5,N6,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,
  N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N38;
  assign a_i_31_ = a_i[31];
  assign sign_o = a_i_31_;
  assign exp_o[7] = a_i[30];
  assign exp_o[6] = a_i[29];
  assign exp_o[5] = a_i[28];
  assign exp_o[4] = a_i[27];
  assign exp_o[3] = a_i[26];
  assign exp_o[2] = a_i[25];
  assign exp_o[1] = a_i[24];
  assign exp_o[0] = a_i[23];
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
  assign N0 = exp_o[6] | exp_o[7];
  assign N1 = exp_o[5] | N0;
  assign N2 = exp_o[4] | N1;
  assign N3 = exp_o[3] | N2;
  assign N4 = exp_o[2] | N3;
  assign N5 = exp_o[1] | N4;
  assign N6 = exp_o[0] | N5;
  assign exp_zero_o = ~N6;
  assign N8 = exp_o[6] & exp_o[7];
  assign N9 = exp_o[5] & N8;
  assign N10 = exp_o[4] & N9;
  assign N11 = exp_o[3] & N10;
  assign N12 = exp_o[2] & N11;
  assign N13 = exp_o[1] & N12;
  assign N14 = exp_o[0] & N13;
  assign N15 = man_o[21] | man_o[22];
  assign N16 = man_o[20] | N15;
  assign N17 = man_o[19] | N16;
  assign N18 = man_o[18] | N17;
  assign N19 = man_o[17] | N18;
  assign N20 = man_o[16] | N19;
  assign N21 = man_o[15] | N20;
  assign N22 = man_o[14] | N21;
  assign N23 = man_o[13] | N22;
  assign N24 = man_o[12] | N23;
  assign N25 = man_o[11] | N24;
  assign N26 = man_o[10] | N25;
  assign N27 = man_o[9] | N26;
  assign N28 = man_o[8] | N27;
  assign N29 = man_o[7] | N28;
  assign N30 = man_o[6] | N29;
  assign N31 = man_o[5] | N30;
  assign N32 = man_o[4] | N31;
  assign N33 = man_o[3] | N32;
  assign N34 = man_o[2] | N33;
  assign N35 = man_o[1] | N34;
  assign N36 = man_o[0] | N35;
  assign man_zero_o = ~N36;
  assign zero_o = exp_zero_o & man_zero_o;
  assign nan_o = N14 & N36;
  assign sig_nan_o = nan_o & N38;
  assign N38 = ~man_o[22];
  assign infty_o = N14 & man_zero_o;
  assign denormal_o = exp_zero_o & N36;

endmodule



module bsg_less_than_width_p8
(
  a_i,
  b_i,
  o
);

  input [7:0] a_i;
  input [7:0] b_i;
  output o;
  wire o;
  assign o = a_i < b_i;

endmodule



module bsg_scan_width_p26_or_p1_lo_to_hi_p1
(
  i,
  o
);

  input [25:0] i;
  output [25:0] o;
  wire [25:0] o;
  wire t_4__25_,t_4__24_,t_4__23_,t_4__22_,t_4__21_,t_4__20_,t_4__19_,t_4__18_,
  t_4__17_,t_4__16_,t_4__15_,t_4__14_,t_4__13_,t_4__12_,t_4__11_,t_4__10_,t_4__9_,t_4__8_,
  t_4__7_,t_4__6_,t_4__5_,t_4__4_,t_4__3_,t_4__2_,t_4__1_,t_4__0_,t_3__25_,
  t_3__24_,t_3__23_,t_3__22_,t_3__21_,t_3__20_,t_3__19_,t_3__18_,t_3__17_,t_3__16_,
  t_3__15_,t_3__14_,t_3__13_,t_3__12_,t_3__11_,t_3__10_,t_3__9_,t_3__8_,t_3__7_,t_3__6_,
  t_3__5_,t_3__4_,t_3__3_,t_3__2_,t_3__1_,t_3__0_,t_2__25_,t_2__24_,t_2__23_,
  t_2__22_,t_2__21_,t_2__20_,t_2__19_,t_2__18_,t_2__17_,t_2__16_,t_2__15_,t_2__14_,
  t_2__13_,t_2__12_,t_2__11_,t_2__10_,t_2__9_,t_2__8_,t_2__7_,t_2__6_,t_2__5_,t_2__4_,
  t_2__3_,t_2__2_,t_2__1_,t_2__0_,t_1__25_,t_1__24_,t_1__23_,t_1__22_,t_1__21_,
  t_1__20_,t_1__19_,t_1__18_,t_1__17_,t_1__16_,t_1__15_,t_1__14_,t_1__13_,t_1__12_,
  t_1__11_,t_1__10_,t_1__9_,t_1__8_,t_1__7_,t_1__6_,t_1__5_,t_1__4_,t_1__3_,t_1__2_,
  t_1__1_,t_1__0_;
  assign t_1__25_ = i[0] | 1'b0;
  assign t_1__24_ = i[1] | i[0];
  assign t_1__23_ = i[2] | i[1];
  assign t_1__22_ = i[3] | i[2];
  assign t_1__21_ = i[4] | i[3];
  assign t_1__20_ = i[5] | i[4];
  assign t_1__19_ = i[6] | i[5];
  assign t_1__18_ = i[7] | i[6];
  assign t_1__17_ = i[8] | i[7];
  assign t_1__16_ = i[9] | i[8];
  assign t_1__15_ = i[10] | i[9];
  assign t_1__14_ = i[11] | i[10];
  assign t_1__13_ = i[12] | i[11];
  assign t_1__12_ = i[13] | i[12];
  assign t_1__11_ = i[14] | i[13];
  assign t_1__10_ = i[15] | i[14];
  assign t_1__9_ = i[16] | i[15];
  assign t_1__8_ = i[17] | i[16];
  assign t_1__7_ = i[18] | i[17];
  assign t_1__6_ = i[19] | i[18];
  assign t_1__5_ = i[20] | i[19];
  assign t_1__4_ = i[21] | i[20];
  assign t_1__3_ = i[22] | i[21];
  assign t_1__2_ = i[23] | i[22];
  assign t_1__1_ = i[24] | i[23];
  assign t_1__0_ = i[25] | i[24];
  assign t_2__25_ = t_1__25_ | 1'b0;
  assign t_2__24_ = t_1__24_ | 1'b0;
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
  assign t_3__25_ = t_2__25_ | 1'b0;
  assign t_3__24_ = t_2__24_ | 1'b0;
  assign t_3__23_ = t_2__23_ | 1'b0;
  assign t_3__22_ = t_2__22_ | 1'b0;
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
  assign t_4__25_ = t_3__25_ | 1'b0;
  assign t_4__24_ = t_3__24_ | 1'b0;
  assign t_4__23_ = t_3__23_ | 1'b0;
  assign t_4__22_ = t_3__22_ | 1'b0;
  assign t_4__21_ = t_3__21_ | 1'b0;
  assign t_4__20_ = t_3__20_ | 1'b0;
  assign t_4__19_ = t_3__19_ | 1'b0;
  assign t_4__18_ = t_3__18_ | 1'b0;
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
  assign o[0] = t_4__25_ | 1'b0;
  assign o[1] = t_4__24_ | 1'b0;
  assign o[2] = t_4__23_ | 1'b0;
  assign o[3] = t_4__22_ | 1'b0;
  assign o[4] = t_4__21_ | 1'b0;
  assign o[5] = t_4__20_ | 1'b0;
  assign o[6] = t_4__19_ | 1'b0;
  assign o[7] = t_4__18_ | 1'b0;
  assign o[8] = t_4__17_ | 1'b0;
  assign o[9] = t_4__16_ | 1'b0;
  assign o[10] = t_4__15_ | 1'b0;
  assign o[11] = t_4__14_ | 1'b0;
  assign o[12] = t_4__13_ | 1'b0;
  assign o[13] = t_4__12_ | 1'b0;
  assign o[14] = t_4__11_ | 1'b0;
  assign o[15] = t_4__10_ | 1'b0;
  assign o[16] = t_4__9_ | t_4__25_;
  assign o[17] = t_4__8_ | t_4__24_;
  assign o[18] = t_4__7_ | t_4__23_;
  assign o[19] = t_4__6_ | t_4__22_;
  assign o[20] = t_4__5_ | t_4__21_;
  assign o[21] = t_4__4_ | t_4__20_;
  assign o[22] = t_4__3_ | t_4__19_;
  assign o[23] = t_4__2_ | t_4__18_;
  assign o[24] = t_4__1_ | t_4__17_;
  assign o[25] = t_4__0_ | t_4__16_;

endmodule



module bsg_fpu_sticky_width_p26
(
  i,
  shamt_i,
  sticky_o
);

  input [25:0] i;
  input [4:0] shamt_i;
  output sticky_o;
  wire sticky_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,
  N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,
  N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,
  N116,N117;
  wire [25:0] scan_out;

  bsg_scan_width_p26_or_p1_lo_to_hi_p1
  scan0
  (
    .i(i),
    .o(scan_out)
  );

  assign N88 = shamt_i > { 1'b1, 1'b1, 1'b0, 1'b1, 1'b0 };
  assign N90 = N0 & N1 & (N2 & N3) & N4;
  assign N0 = ~shamt_i[4];
  assign N1 = ~shamt_i[3];
  assign N2 = ~shamt_i[2];
  assign N3 = ~shamt_i[0];
  assign N4 = ~shamt_i[1];
  assign N91 = shamt_i[4] & N5 & (N6 & N7) & N8;
  assign N5 = ~shamt_i[3];
  assign N6 = ~shamt_i[2];
  assign N7 = ~shamt_i[0];
  assign N8 = ~shamt_i[1];
  assign N92 = N9 & N10 & (N11 & shamt_i[0]) & N12;
  assign N9 = ~shamt_i[4];
  assign N10 = ~shamt_i[3];
  assign N11 = ~shamt_i[2];
  assign N12 = ~shamt_i[1];
  assign N94 = N13 & N14 & (N15 & N16) & shamt_i[1];
  assign N13 = ~shamt_i[4];
  assign N14 = ~shamt_i[3];
  assign N15 = ~shamt_i[2];
  assign N16 = ~shamt_i[0];
  assign N96 = N17 & N18 & (N19 & shamt_i[0]) & shamt_i[1];
  assign N17 = ~shamt_i[4];
  assign N18 = ~shamt_i[3];
  assign N19 = ~shamt_i[2];
  assign N98 = N20 & N21 & (shamt_i[2] & N22) & N23;
  assign N20 = ~shamt_i[4];
  assign N21 = ~shamt_i[3];
  assign N22 = ~shamt_i[0];
  assign N23 = ~shamt_i[1];
  assign N100 = N24 & N25 & (shamt_i[2] & shamt_i[0]) & N26;
  assign N24 = ~shamt_i[4];
  assign N25 = ~shamt_i[3];
  assign N26 = ~shamt_i[1];
  assign N102 = N27 & N28 & (shamt_i[2] & N29) & shamt_i[1];
  assign N27 = ~shamt_i[4];
  assign N28 = ~shamt_i[3];
  assign N29 = ~shamt_i[0];
  assign N104 = N30 & N31 & (shamt_i[2] & shamt_i[0]) & shamt_i[1];
  assign N30 = ~shamt_i[4];
  assign N31 = ~shamt_i[3];
  assign N106 = N32 & shamt_i[3] & (N33 & N34) & N35;
  assign N32 = ~shamt_i[4];
  assign N33 = ~shamt_i[2];
  assign N34 = ~shamt_i[0];
  assign N35 = ~shamt_i[1];
  assign N108 = N36 & shamt_i[3] & (N37 & shamt_i[0]) & N38;
  assign N36 = ~shamt_i[4];
  assign N37 = ~shamt_i[2];
  assign N38 = ~shamt_i[1];
  assign N110 = N39 & shamt_i[3] & (N40 & N41) & shamt_i[1];
  assign N39 = ~shamt_i[4];
  assign N40 = ~shamt_i[2];
  assign N41 = ~shamt_i[0];
  assign N112 = shamt_i[3] & N42 & (shamt_i[0] & shamt_i[1]);
  assign N42 = ~shamt_i[2];
  assign N113 = shamt_i[3] & shamt_i[2] & (N43 & N44);
  assign N43 = ~shamt_i[0];
  assign N44 = ~shamt_i[1];
  assign N114 = shamt_i[3] & shamt_i[2] & (shamt_i[0] & N45);
  assign N45 = ~shamt_i[1];
  assign N115 = shamt_i[3] & shamt_i[2] & (N46 & shamt_i[1]);
  assign N46 = ~shamt_i[0];
  assign N116 = shamt_i[3] & shamt_i[2] & (shamt_i[0] & shamt_i[1]);
  assign N93 = shamt_i[4] & N47 & (N48 & shamt_i[0]) & N49;
  assign N47 = ~shamt_i[3];
  assign N48 = ~shamt_i[2];
  assign N49 = ~shamt_i[1];
  assign N95 = shamt_i[4] & N50 & (N51 & N52) & shamt_i[1];
  assign N50 = ~shamt_i[3];
  assign N51 = ~shamt_i[2];
  assign N52 = ~shamt_i[0];
  assign N97 = shamt_i[4] & N53 & (shamt_i[0] & shamt_i[1]);
  assign N53 = ~shamt_i[2];
  assign N99 = shamt_i[4] & shamt_i[2] & (N54 & N55);
  assign N54 = ~shamt_i[0];
  assign N55 = ~shamt_i[1];
  assign N101 = shamt_i[4] & shamt_i[2] & (shamt_i[0] & N56);
  assign N56 = ~shamt_i[1];
  assign N103 = shamt_i[4] & shamt_i[2] & (N57 & shamt_i[1]);
  assign N57 = ~shamt_i[0];
  assign N105 = shamt_i[4] & shamt_i[2] & (shamt_i[0] & shamt_i[1]);
  assign N107 = shamt_i[4] & shamt_i[3] & (N58 & N59);
  assign N58 = ~shamt_i[0];
  assign N59 = ~shamt_i[1];
  assign N109 = shamt_i[4] & shamt_i[3] & shamt_i[0];
  assign N111 = shamt_i[4] & shamt_i[3] & shamt_i[1];
  assign sticky_o = (N60)? scan_out[25] : 
                    (N89)? N117 : 1'b0;
  assign N60 = N88;
  assign N117 = (N61)? 1'b0 : 
                (N62)? scan_out[0] : 
                (N63)? scan_out[1] : 
                (N64)? scan_out[2] : 
                (N65)? scan_out[3] : 
                (N66)? scan_out[4] : 
                (N67)? scan_out[5] : 
                (N68)? scan_out[6] : 
                (N69)? scan_out[7] : 
                (N70)? scan_out[8] : 
                (N71)? scan_out[9] : 
                (N72)? scan_out[10] : 
                (N73)? scan_out[11] : 
                (N74)? scan_out[12] : 
                (N75)? scan_out[13] : 
                (N76)? scan_out[14] : 
                (N77)? scan_out[15] : 
                (N78)? scan_out[16] : 
                (N79)? scan_out[17] : 
                (N80)? scan_out[18] : 
                (N81)? scan_out[19] : 
                (N82)? scan_out[20] : 
                (N83)? scan_out[21] : 
                (N84)? scan_out[22] : 
                (N85)? scan_out[23] : 
                (N86)? scan_out[24] : 
                (N87)? scan_out[25] : 1'b0;
  assign N61 = N90;
  assign N62 = N92;
  assign N63 = N94;
  assign N64 = N96;
  assign N65 = N98;
  assign N66 = N100;
  assign N67 = N102;
  assign N68 = N104;
  assign N69 = N106;
  assign N70 = N108;
  assign N71 = N110;
  assign N72 = N112;
  assign N73 = N113;
  assign N74 = N114;
  assign N75 = N115;
  assign N76 = N116;
  assign N77 = N91;
  assign N78 = N93;
  assign N79 = N95;
  assign N80 = N97;
  assign N81 = N99;
  assign N82 = N101;
  assign N83 = N103;
  assign N84 = N105;
  assign N85 = N107;
  assign N86 = N109;
  assign N87 = N111;
  assign N89 = ~N88;

endmodule



module bsg_less_than_width_p31
(
  a_i,
  b_i,
  o
);

  input [30:0] a_i;
  input [30:0] b_i;
  output o;
  wire o;
  assign o = a_i < b_i;

endmodule



module bsg_less_than_width_p27
(
  a_i,
  b_i,
  o
);

  input [26:0] a_i;
  input [26:0] b_i;
  output o;
  wire o;
  assign o = a_i < b_i;

endmodule



module bsg_scan_width_p28_or_p1_lo_to_hi_p1
(
  i,
  o
);

  input [27:0] i;
  output [27:0] o;
  wire [27:0] o;
  wire t_4__27_,t_4__26_,t_4__25_,t_4__24_,t_4__23_,t_4__22_,t_4__21_,t_4__20_,
  t_4__19_,t_4__18_,t_4__17_,t_4__16_,t_4__15_,t_4__14_,t_4__13_,t_4__12_,t_4__11_,
  t_4__10_,t_4__9_,t_4__8_,t_4__7_,t_4__6_,t_4__5_,t_4__4_,t_4__3_,t_4__2_,t_4__1_,
  t_4__0_,t_3__27_,t_3__26_,t_3__25_,t_3__24_,t_3__23_,t_3__22_,t_3__21_,t_3__20_,
  t_3__19_,t_3__18_,t_3__17_,t_3__16_,t_3__15_,t_3__14_,t_3__13_,t_3__12_,t_3__11_,
  t_3__10_,t_3__9_,t_3__8_,t_3__7_,t_3__6_,t_3__5_,t_3__4_,t_3__3_,t_3__2_,t_3__1_,
  t_3__0_,t_2__27_,t_2__26_,t_2__25_,t_2__24_,t_2__23_,t_2__22_,t_2__21_,t_2__20_,
  t_2__19_,t_2__18_,t_2__17_,t_2__16_,t_2__15_,t_2__14_,t_2__13_,t_2__12_,t_2__11_,
  t_2__10_,t_2__9_,t_2__8_,t_2__7_,t_2__6_,t_2__5_,t_2__4_,t_2__3_,t_2__2_,t_2__1_,
  t_2__0_,t_1__27_,t_1__26_,t_1__25_,t_1__24_,t_1__23_,t_1__22_,t_1__21_,t_1__20_,
  t_1__19_,t_1__18_,t_1__17_,t_1__16_,t_1__15_,t_1__14_,t_1__13_,t_1__12_,t_1__11_,
  t_1__10_,t_1__9_,t_1__8_,t_1__7_,t_1__6_,t_1__5_,t_1__4_,t_1__3_,t_1__2_,t_1__1_,
  t_1__0_;
  assign t_1__27_ = i[0] | 1'b0;
  assign t_1__26_ = i[1] | i[0];
  assign t_1__25_ = i[2] | i[1];
  assign t_1__24_ = i[3] | i[2];
  assign t_1__23_ = i[4] | i[3];
  assign t_1__22_ = i[5] | i[4];
  assign t_1__21_ = i[6] | i[5];
  assign t_1__20_ = i[7] | i[6];
  assign t_1__19_ = i[8] | i[7];
  assign t_1__18_ = i[9] | i[8];
  assign t_1__17_ = i[10] | i[9];
  assign t_1__16_ = i[11] | i[10];
  assign t_1__15_ = i[12] | i[11];
  assign t_1__14_ = i[13] | i[12];
  assign t_1__13_ = i[14] | i[13];
  assign t_1__12_ = i[15] | i[14];
  assign t_1__11_ = i[16] | i[15];
  assign t_1__10_ = i[17] | i[16];
  assign t_1__9_ = i[18] | i[17];
  assign t_1__8_ = i[19] | i[18];
  assign t_1__7_ = i[20] | i[19];
  assign t_1__6_ = i[21] | i[20];
  assign t_1__5_ = i[22] | i[21];
  assign t_1__4_ = i[23] | i[22];
  assign t_1__3_ = i[24] | i[23];
  assign t_1__2_ = i[25] | i[24];
  assign t_1__1_ = i[26] | i[25];
  assign t_1__0_ = i[27] | i[26];
  assign t_2__27_ = t_1__27_ | 1'b0;
  assign t_2__26_ = t_1__26_ | 1'b0;
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
  assign t_3__27_ = t_2__27_ | 1'b0;
  assign t_3__26_ = t_2__26_ | 1'b0;
  assign t_3__25_ = t_2__25_ | 1'b0;
  assign t_3__24_ = t_2__24_ | 1'b0;
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
  assign t_4__27_ = t_3__27_ | 1'b0;
  assign t_4__26_ = t_3__26_ | 1'b0;
  assign t_4__25_ = t_3__25_ | 1'b0;
  assign t_4__24_ = t_3__24_ | 1'b0;
  assign t_4__23_ = t_3__23_ | 1'b0;
  assign t_4__22_ = t_3__22_ | 1'b0;
  assign t_4__21_ = t_3__21_ | 1'b0;
  assign t_4__20_ = t_3__20_ | 1'b0;
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
  assign o[0] = t_4__27_ | 1'b0;
  assign o[1] = t_4__26_ | 1'b0;
  assign o[2] = t_4__25_ | 1'b0;
  assign o[3] = t_4__24_ | 1'b0;
  assign o[4] = t_4__23_ | 1'b0;
  assign o[5] = t_4__22_ | 1'b0;
  assign o[6] = t_4__21_ | 1'b0;
  assign o[7] = t_4__20_ | 1'b0;
  assign o[8] = t_4__19_ | 1'b0;
  assign o[9] = t_4__18_ | 1'b0;
  assign o[10] = t_4__17_ | 1'b0;
  assign o[11] = t_4__16_ | 1'b0;
  assign o[12] = t_4__15_ | 1'b0;
  assign o[13] = t_4__14_ | 1'b0;
  assign o[14] = t_4__13_ | 1'b0;
  assign o[15] = t_4__12_ | 1'b0;
  assign o[16] = t_4__11_ | t_4__27_;
  assign o[17] = t_4__10_ | t_4__26_;
  assign o[18] = t_4__9_ | t_4__25_;
  assign o[19] = t_4__8_ | t_4__24_;
  assign o[20] = t_4__7_ | t_4__23_;
  assign o[21] = t_4__6_ | t_4__22_;
  assign o[22] = t_4__5_ | t_4__21_;
  assign o[23] = t_4__4_ | t_4__20_;
  assign o[24] = t_4__3_ | t_4__19_;
  assign o[25] = t_4__2_ | t_4__18_;
  assign o[26] = t_4__1_ | t_4__17_;
  assign o[27] = t_4__0_ | t_4__16_;

endmodule



module bsg_priority_encode_one_hot_out_width_p28_lo_to_hi_p1
(
  i,
  o,
  v_o
);

  input [27:0] i;
  output [27:0] o;
  output v_o;
  wire [27:0] o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26;
  wire [26:1] scan_lo;

  bsg_scan_width_p28_or_p1_lo_to_hi_p1
  \nw1.scan 
  (
    .i(i),
    .o({ v_o, scan_lo, o[0:0] })
  );

  assign o[27] = v_o & N0;
  assign N0 = ~scan_lo[26];
  assign o[26] = scan_lo[26] & N1;
  assign N1 = ~scan_lo[25];
  assign o[25] = scan_lo[25] & N2;
  assign N2 = ~scan_lo[24];
  assign o[24] = scan_lo[24] & N3;
  assign N3 = ~scan_lo[23];
  assign o[23] = scan_lo[23] & N4;
  assign N4 = ~scan_lo[22];
  assign o[22] = scan_lo[22] & N5;
  assign N5 = ~scan_lo[21];
  assign o[21] = scan_lo[21] & N6;
  assign N6 = ~scan_lo[20];
  assign o[20] = scan_lo[20] & N7;
  assign N7 = ~scan_lo[19];
  assign o[19] = scan_lo[19] & N8;
  assign N8 = ~scan_lo[18];
  assign o[18] = scan_lo[18] & N9;
  assign N9 = ~scan_lo[17];
  assign o[17] = scan_lo[17] & N10;
  assign N10 = ~scan_lo[16];
  assign o[16] = scan_lo[16] & N11;
  assign N11 = ~scan_lo[15];
  assign o[15] = scan_lo[15] & N12;
  assign N12 = ~scan_lo[14];
  assign o[14] = scan_lo[14] & N13;
  assign N13 = ~scan_lo[13];
  assign o[13] = scan_lo[13] & N14;
  assign N14 = ~scan_lo[12];
  assign o[12] = scan_lo[12] & N15;
  assign N15 = ~scan_lo[11];
  assign o[11] = scan_lo[11] & N16;
  assign N16 = ~scan_lo[10];
  assign o[10] = scan_lo[10] & N17;
  assign N17 = ~scan_lo[9];
  assign o[9] = scan_lo[9] & N18;
  assign N18 = ~scan_lo[8];
  assign o[8] = scan_lo[8] & N19;
  assign N19 = ~scan_lo[7];
  assign o[7] = scan_lo[7] & N20;
  assign N20 = ~scan_lo[6];
  assign o[6] = scan_lo[6] & N21;
  assign N21 = ~scan_lo[5];
  assign o[5] = scan_lo[5] & N22;
  assign N22 = ~scan_lo[4];
  assign o[4] = scan_lo[4] & N23;
  assign N23 = ~scan_lo[3];
  assign o[3] = scan_lo[3] & N24;
  assign N24 = ~scan_lo[2];
  assign o[2] = scan_lo[2] & N25;
  assign N25 = ~scan_lo[1];
  assign o[1] = scan_lo[1] & N26;
  assign N26 = ~o[0];

endmodule



module bsg_encode_one_hot_width_p28_lo_to_hi_p1
(
  i,
  addr_o,
  v_o
);

  input [27:0] i;
  output [4:0] addr_o;
  output v_o;
  wire [4:0] addr_o;
  wire v_o,v_4__0_,v_3__24_,v_3__16_,v_3__8_,v_3__0_,v_2__28_,v_2__24_,v_2__20_,
  v_2__16_,v_2__12_,v_2__8_,v_2__4_,v_2__0_,v_1__30_,v_1__28_,v_1__26_,v_1__24_,v_1__22_,
  v_1__20_,v_1__18_,v_1__16_,v_1__14_,v_1__12_,v_1__10_,v_1__8_,v_1__6_,v_1__4_,
  v_1__2_,v_1__0_,addr_4__18_,addr_4__17_,addr_4__16_,addr_4__2_,addr_4__1_,
  addr_4__0_,addr_3__25_,addr_3__24_,addr_3__17_,addr_3__16_,addr_3__9_,addr_3__8_,
  addr_3__1_,addr_3__0_,addr_2__28_,addr_2__24_,addr_2__20_,addr_2__16_,addr_2__12_,
  addr_2__8_,addr_2__4_,addr_2__0_;
  assign v_1__0_ = i[1] | i[0];
  assign v_1__2_ = i[3] | i[2];
  assign v_1__4_ = i[5] | i[4];
  assign v_1__6_ = i[7] | i[6];
  assign v_1__8_ = i[9] | i[8];
  assign v_1__10_ = i[11] | i[10];
  assign v_1__12_ = i[13] | i[12];
  assign v_1__14_ = i[15] | i[14];
  assign v_1__16_ = i[17] | i[16];
  assign v_1__18_ = i[19] | i[18];
  assign v_1__20_ = i[21] | i[20];
  assign v_1__22_ = i[23] | i[22];
  assign v_1__24_ = i[25] | i[24];
  assign v_1__26_ = i[27] | i[26];
  assign v_1__28_ = 1'b0 | 1'b0;
  assign v_1__30_ = 1'b0 | 1'b0;
  assign v_2__0_ = v_1__2_ | v_1__0_;
  assign addr_2__0_ = i[1] | i[3];
  assign v_2__4_ = v_1__6_ | v_1__4_;
  assign addr_2__4_ = i[5] | i[7];
  assign v_2__8_ = v_1__10_ | v_1__8_;
  assign addr_2__8_ = i[9] | i[11];
  assign v_2__12_ = v_1__14_ | v_1__12_;
  assign addr_2__12_ = i[13] | i[15];
  assign v_2__16_ = v_1__18_ | v_1__16_;
  assign addr_2__16_ = i[17] | i[19];
  assign v_2__20_ = v_1__22_ | v_1__20_;
  assign addr_2__20_ = i[21] | i[23];
  assign v_2__24_ = v_1__26_ | v_1__24_;
  assign addr_2__24_ = i[25] | i[27];
  assign v_2__28_ = v_1__30_ | v_1__28_;
  assign addr_2__28_ = 1'b0 | 1'b0;
  assign v_3__0_ = v_2__4_ | v_2__0_;
  assign addr_3__1_ = v_1__2_ | v_1__6_;
  assign addr_3__0_ = addr_2__0_ | addr_2__4_;
  assign v_3__8_ = v_2__12_ | v_2__8_;
  assign addr_3__9_ = v_1__10_ | v_1__14_;
  assign addr_3__8_ = addr_2__8_ | addr_2__12_;
  assign v_3__16_ = v_2__20_ | v_2__16_;
  assign addr_3__17_ = v_1__18_ | v_1__22_;
  assign addr_3__16_ = addr_2__16_ | addr_2__20_;
  assign v_3__24_ = v_2__28_ | v_2__24_;
  assign addr_3__25_ = v_1__26_ | v_1__30_;
  assign addr_3__24_ = addr_2__24_ | addr_2__28_;
  assign v_4__0_ = v_3__8_ | v_3__0_;
  assign addr_4__2_ = v_2__4_ | v_2__12_;
  assign addr_4__1_ = addr_3__1_ | addr_3__9_;
  assign addr_4__0_ = addr_3__0_ | addr_3__8_;
  assign addr_o[4] = v_3__24_ | v_3__16_;
  assign addr_4__18_ = v_2__20_ | v_2__28_;
  assign addr_4__17_ = addr_3__17_ | addr_3__25_;
  assign addr_4__16_ = addr_3__16_ | addr_3__24_;
  assign v_o = addr_o[4] | v_4__0_;
  assign addr_o[3] = v_3__8_ | v_3__24_;
  assign addr_o[2] = addr_4__2_ | addr_4__18_;
  assign addr_o[1] = addr_4__1_ | addr_4__17_;
  assign addr_o[0] = addr_4__0_ | addr_4__16_;

endmodule



module bsg_priority_encode_width_p28_lo_to_hi_p1
(
  i,
  addr_o,
  v_o
);

  input [27:0] i;
  output [4:0] addr_o;
  output v_o;
  wire [4:0] addr_o;
  wire v_o;
  wire [27:0] enc_lo;

  bsg_priority_encode_one_hot_out_width_p28_lo_to_hi_p1
  a
  (
    .i(i),
    .o(enc_lo),
    .v_o(v_o)
  );


  bsg_encode_one_hot_width_p28_lo_to_hi_p1
  b
  (
    .i(enc_lo),
    .addr_o(addr_o)
  );


endmodule



module bsg_fpu_clz_width_p28
(
  i,
  num_zero_o
);

  input [27:0] i;
  output [4:0] num_zero_o;
  wire [4:0] num_zero_o;

  bsg_priority_encode_width_p28_lo_to_hi_p1
  pe0
  (
    .i({ i[0:0], i[1:1], i[2:2], i[3:3], i[4:4], i[5:5], i[6:6], i[7:7], i[8:8], i[9:9], i[10:10], i[11:11], i[12:12], i[13:13], i[14:14], i[15:15], i[16:16], i[17:17], i[18:18], i[19:19], i[20:20], i[21:21], i[22:22], i[23:23], i[24:24], i[25:25], i[26:26], i[27:27] }),
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

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] z_o;
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
  wire [31:0] z_o;
  wire ready_o,v_o,unimplemented_o,invalid_o,overflow_o,underflow_o,N0,N1,N3,N4,N5,N6,
  N7,N9,N10,N11,N12,N13,N15,stall,a_zero,a_nan,a_sig_nan,a_infty,exp_a_zero,
  a_denormal,sign_a,b_zero,b_nan,b_sig_nan,b_infty,exp_b_zero,b_denormal,sign_b,
  exp_a_less,N16,N17,N18,N19,N20,N21,N22,N23,N24,mag_a_less,final_sign,do_sub,N25,N26,N27,
  v_1_r,final_sign_1_r,do_sub_1_r,a_sig_nan_1_r,b_sig_nan_1_r,a_nan_1_r,b_nan_1_r,
  a_infty_1_r,b_infty_1_r,a_denormal_1_r,b_denormal_1_r,N28,N29,N30,N31,
  larger_exp_man_less,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,
  N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,
  N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,
  N89,N90,v_2_r,final_sign_2_r,do_sub_2_r,a_sig_nan_2_r,b_sig_nan_2_r,a_nan_2_r,
  b_nan_2_r,a_infty_2_r,b_infty_2_r,a_denormal_2_r,b_denormal_2_r,N91,N92,N93,reduce_o,
  all_zero,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,
  N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,
  adjusted_exp_cout,round_up,N122,N123,N124,round_up_3_r,all_zero_3_r,a_sig_nan_3_r,b_sig_nan_3_r,
  a_nan_3_r,b_nan_3_r,a_infty_3_r,b_infty_3_r,do_sub_3_r,a_denormal_3_r,
  b_denormal_3_r,adjusted_exp_cout_3_r,final_sign_3_r,N125,N126,N127,carry_into_exp,N128,
  N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,
  N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,
  N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N2,N8,N14,N174,
  N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,
  N191,N192,N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,
  N207,N208,N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,
  N223,N224,N225,N226,N227,N228,N229;
  wire [7:0] exp_a,exp_b,larger_exp,diff_ab,diff_ba,exp_diff,larger_exp_1_r,larger_exp_2_r,
  adjusted_exp;
  wire [22:0] man_a,man_b,larger_exp_man,smaller_exp_man;
  wire [26:0] smaller_exp_man_shifted,smaller_exp_man_shifted_1_r,larger_exp_man_padded_1_r,
  larger_mag_man,smaller_mag_man,shifted_adder_output;
  wire [27:0] adder_output,adder_output_2_r;
  wire [4:0] num_zero;
  wire [30:0] pre_roundup_3_r,rounded;
  reg a_denormal_1_r_sv2v_reg,v_1_r_sv2v_reg,b_denormal_1_r_sv2v_reg,
  final_sign_1_r_sv2v_reg,do_sub_1_r_sv2v_reg,larger_exp_1_r_7_sv2v_reg,larger_exp_1_r_6_sv2v_reg,
  larger_exp_1_r_5_sv2v_reg,larger_exp_1_r_4_sv2v_reg,larger_exp_1_r_3_sv2v_reg,
  larger_exp_1_r_2_sv2v_reg,larger_exp_1_r_1_sv2v_reg,larger_exp_1_r_0_sv2v_reg,
  smaller_exp_man_shifted_1_r_26_sv2v_reg,smaller_exp_man_shifted_1_r_25_sv2v_reg,
  smaller_exp_man_shifted_1_r_24_sv2v_reg,smaller_exp_man_shifted_1_r_23_sv2v_reg,
  smaller_exp_man_shifted_1_r_22_sv2v_reg,smaller_exp_man_shifted_1_r_21_sv2v_reg,
  smaller_exp_man_shifted_1_r_20_sv2v_reg,smaller_exp_man_shifted_1_r_19_sv2v_reg,
  smaller_exp_man_shifted_1_r_18_sv2v_reg,smaller_exp_man_shifted_1_r_17_sv2v_reg,
  smaller_exp_man_shifted_1_r_16_sv2v_reg,smaller_exp_man_shifted_1_r_15_sv2v_reg,
  smaller_exp_man_shifted_1_r_14_sv2v_reg,smaller_exp_man_shifted_1_r_13_sv2v_reg,
  smaller_exp_man_shifted_1_r_12_sv2v_reg,smaller_exp_man_shifted_1_r_11_sv2v_reg,
  smaller_exp_man_shifted_1_r_10_sv2v_reg,smaller_exp_man_shifted_1_r_9_sv2v_reg,
  smaller_exp_man_shifted_1_r_8_sv2v_reg,smaller_exp_man_shifted_1_r_7_sv2v_reg,
  smaller_exp_man_shifted_1_r_6_sv2v_reg,smaller_exp_man_shifted_1_r_5_sv2v_reg,
  smaller_exp_man_shifted_1_r_4_sv2v_reg,smaller_exp_man_shifted_1_r_3_sv2v_reg,
  smaller_exp_man_shifted_1_r_2_sv2v_reg,smaller_exp_man_shifted_1_r_1_sv2v_reg,
  smaller_exp_man_shifted_1_r_0_sv2v_reg,larger_exp_man_padded_1_r_26_sv2v_reg,
  larger_exp_man_padded_1_r_25_sv2v_reg,larger_exp_man_padded_1_r_24_sv2v_reg,
  larger_exp_man_padded_1_r_23_sv2v_reg,larger_exp_man_padded_1_r_22_sv2v_reg,
  larger_exp_man_padded_1_r_21_sv2v_reg,larger_exp_man_padded_1_r_20_sv2v_reg,
  larger_exp_man_padded_1_r_19_sv2v_reg,larger_exp_man_padded_1_r_18_sv2v_reg,
  larger_exp_man_padded_1_r_17_sv2v_reg,larger_exp_man_padded_1_r_16_sv2v_reg,
  larger_exp_man_padded_1_r_15_sv2v_reg,larger_exp_man_padded_1_r_14_sv2v_reg,larger_exp_man_padded_1_r_13_sv2v_reg,
  larger_exp_man_padded_1_r_12_sv2v_reg,larger_exp_man_padded_1_r_11_sv2v_reg,
  larger_exp_man_padded_1_r_10_sv2v_reg,larger_exp_man_padded_1_r_9_sv2v_reg,
  larger_exp_man_padded_1_r_8_sv2v_reg,larger_exp_man_padded_1_r_7_sv2v_reg,
  larger_exp_man_padded_1_r_6_sv2v_reg,larger_exp_man_padded_1_r_5_sv2v_reg,
  larger_exp_man_padded_1_r_4_sv2v_reg,larger_exp_man_padded_1_r_3_sv2v_reg,
  larger_exp_man_padded_1_r_2_sv2v_reg,larger_exp_man_padded_1_r_1_sv2v_reg,
  larger_exp_man_padded_1_r_0_sv2v_reg,a_sig_nan_1_r_sv2v_reg,b_sig_nan_1_r_sv2v_reg,a_nan_1_r_sv2v_reg,
  b_nan_1_r_sv2v_reg,a_infty_1_r_sv2v_reg,b_infty_1_r_sv2v_reg,a_denormal_2_r_sv2v_reg,
  v_2_r_sv2v_reg,b_denormal_2_r_sv2v_reg,larger_exp_2_r_7_sv2v_reg,
  larger_exp_2_r_6_sv2v_reg,larger_exp_2_r_5_sv2v_reg,larger_exp_2_r_4_sv2v_reg,larger_exp_2_r_3_sv2v_reg,
  larger_exp_2_r_2_sv2v_reg,larger_exp_2_r_1_sv2v_reg,larger_exp_2_r_0_sv2v_reg,
  adder_output_2_r_27_sv2v_reg,adder_output_2_r_26_sv2v_reg,
  adder_output_2_r_25_sv2v_reg,adder_output_2_r_24_sv2v_reg,adder_output_2_r_23_sv2v_reg,
  adder_output_2_r_22_sv2v_reg,adder_output_2_r_21_sv2v_reg,adder_output_2_r_20_sv2v_reg,
  adder_output_2_r_19_sv2v_reg,adder_output_2_r_18_sv2v_reg,adder_output_2_r_17_sv2v_reg,
  adder_output_2_r_16_sv2v_reg,adder_output_2_r_15_sv2v_reg,
  adder_output_2_r_14_sv2v_reg,adder_output_2_r_13_sv2v_reg,adder_output_2_r_12_sv2v_reg,
  adder_output_2_r_11_sv2v_reg,adder_output_2_r_10_sv2v_reg,adder_output_2_r_9_sv2v_reg,
  adder_output_2_r_8_sv2v_reg,adder_output_2_r_7_sv2v_reg,adder_output_2_r_6_sv2v_reg,
  adder_output_2_r_5_sv2v_reg,adder_output_2_r_4_sv2v_reg,adder_output_2_r_3_sv2v_reg,
  adder_output_2_r_2_sv2v_reg,adder_output_2_r_1_sv2v_reg,adder_output_2_r_0_sv2v_reg,
  final_sign_2_r_sv2v_reg,do_sub_2_r_sv2v_reg,a_sig_nan_2_r_sv2v_reg,
  b_sig_nan_2_r_sv2v_reg,a_nan_2_r_sv2v_reg,b_nan_2_r_sv2v_reg,a_infty_2_r_sv2v_reg,
  b_infty_2_r_sv2v_reg,adjusted_exp_cout_3_r_sv2v_reg,v_o_sv2v_reg,final_sign_3_r_sv2v_reg,
  pre_roundup_3_r_30_sv2v_reg,pre_roundup_3_r_29_sv2v_reg,
  pre_roundup_3_r_28_sv2v_reg,pre_roundup_3_r_27_sv2v_reg,pre_roundup_3_r_26_sv2v_reg,
  pre_roundup_3_r_25_sv2v_reg,pre_roundup_3_r_24_sv2v_reg,pre_roundup_3_r_23_sv2v_reg,
  pre_roundup_3_r_22_sv2v_reg,pre_roundup_3_r_21_sv2v_reg,pre_roundup_3_r_20_sv2v_reg,
  pre_roundup_3_r_19_sv2v_reg,pre_roundup_3_r_18_sv2v_reg,pre_roundup_3_r_17_sv2v_reg,
  pre_roundup_3_r_16_sv2v_reg,pre_roundup_3_r_15_sv2v_reg,pre_roundup_3_r_14_sv2v_reg,
  pre_roundup_3_r_13_sv2v_reg,pre_roundup_3_r_12_sv2v_reg,pre_roundup_3_r_11_sv2v_reg,
  pre_roundup_3_r_10_sv2v_reg,pre_roundup_3_r_9_sv2v_reg,pre_roundup_3_r_8_sv2v_reg,
  pre_roundup_3_r_7_sv2v_reg,pre_roundup_3_r_6_sv2v_reg,
  pre_roundup_3_r_5_sv2v_reg,pre_roundup_3_r_4_sv2v_reg,pre_roundup_3_r_3_sv2v_reg,
  pre_roundup_3_r_2_sv2v_reg,pre_roundup_3_r_1_sv2v_reg,pre_roundup_3_r_0_sv2v_reg,round_up_3_r_sv2v_reg,
  all_zero_3_r_sv2v_reg,a_sig_nan_3_r_sv2v_reg,b_sig_nan_3_r_sv2v_reg,
  a_nan_3_r_sv2v_reg,b_nan_3_r_sv2v_reg,a_infty_3_r_sv2v_reg,b_infty_3_r_sv2v_reg,
  do_sub_3_r_sv2v_reg,a_denormal_3_r_sv2v_reg,b_denormal_3_r_sv2v_reg;
  assign a_denormal_1_r = a_denormal_1_r_sv2v_reg;
  assign v_1_r = v_1_r_sv2v_reg;
  assign b_denormal_1_r = b_denormal_1_r_sv2v_reg;
  assign final_sign_1_r = final_sign_1_r_sv2v_reg;
  assign do_sub_1_r = do_sub_1_r_sv2v_reg;
  assign larger_exp_1_r[7] = larger_exp_1_r_7_sv2v_reg;
  assign larger_exp_1_r[6] = larger_exp_1_r_6_sv2v_reg;
  assign larger_exp_1_r[5] = larger_exp_1_r_5_sv2v_reg;
  assign larger_exp_1_r[4] = larger_exp_1_r_4_sv2v_reg;
  assign larger_exp_1_r[3] = larger_exp_1_r_3_sv2v_reg;
  assign larger_exp_1_r[2] = larger_exp_1_r_2_sv2v_reg;
  assign larger_exp_1_r[1] = larger_exp_1_r_1_sv2v_reg;
  assign larger_exp_1_r[0] = larger_exp_1_r_0_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[26] = smaller_exp_man_shifted_1_r_26_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[25] = smaller_exp_man_shifted_1_r_25_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[24] = smaller_exp_man_shifted_1_r_24_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[23] = smaller_exp_man_shifted_1_r_23_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[22] = smaller_exp_man_shifted_1_r_22_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[21] = smaller_exp_man_shifted_1_r_21_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[20] = smaller_exp_man_shifted_1_r_20_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[19] = smaller_exp_man_shifted_1_r_19_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[18] = smaller_exp_man_shifted_1_r_18_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[17] = smaller_exp_man_shifted_1_r_17_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[16] = smaller_exp_man_shifted_1_r_16_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[15] = smaller_exp_man_shifted_1_r_15_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[14] = smaller_exp_man_shifted_1_r_14_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[13] = smaller_exp_man_shifted_1_r_13_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[12] = smaller_exp_man_shifted_1_r_12_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[11] = smaller_exp_man_shifted_1_r_11_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[10] = smaller_exp_man_shifted_1_r_10_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[9] = smaller_exp_man_shifted_1_r_9_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[8] = smaller_exp_man_shifted_1_r_8_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[7] = smaller_exp_man_shifted_1_r_7_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[6] = smaller_exp_man_shifted_1_r_6_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[5] = smaller_exp_man_shifted_1_r_5_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[4] = smaller_exp_man_shifted_1_r_4_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[3] = smaller_exp_man_shifted_1_r_3_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[2] = smaller_exp_man_shifted_1_r_2_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[1] = smaller_exp_man_shifted_1_r_1_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[0] = smaller_exp_man_shifted_1_r_0_sv2v_reg;
  assign larger_exp_man_padded_1_r[26] = larger_exp_man_padded_1_r_26_sv2v_reg;
  assign larger_exp_man_padded_1_r[25] = larger_exp_man_padded_1_r_25_sv2v_reg;
  assign larger_exp_man_padded_1_r[24] = larger_exp_man_padded_1_r_24_sv2v_reg;
  assign larger_exp_man_padded_1_r[23] = larger_exp_man_padded_1_r_23_sv2v_reg;
  assign larger_exp_man_padded_1_r[22] = larger_exp_man_padded_1_r_22_sv2v_reg;
  assign larger_exp_man_padded_1_r[21] = larger_exp_man_padded_1_r_21_sv2v_reg;
  assign larger_exp_man_padded_1_r[20] = larger_exp_man_padded_1_r_20_sv2v_reg;
  assign larger_exp_man_padded_1_r[19] = larger_exp_man_padded_1_r_19_sv2v_reg;
  assign larger_exp_man_padded_1_r[18] = larger_exp_man_padded_1_r_18_sv2v_reg;
  assign larger_exp_man_padded_1_r[17] = larger_exp_man_padded_1_r_17_sv2v_reg;
  assign larger_exp_man_padded_1_r[16] = larger_exp_man_padded_1_r_16_sv2v_reg;
  assign larger_exp_man_padded_1_r[15] = larger_exp_man_padded_1_r_15_sv2v_reg;
  assign larger_exp_man_padded_1_r[14] = larger_exp_man_padded_1_r_14_sv2v_reg;
  assign larger_exp_man_padded_1_r[13] = larger_exp_man_padded_1_r_13_sv2v_reg;
  assign larger_exp_man_padded_1_r[12] = larger_exp_man_padded_1_r_12_sv2v_reg;
  assign larger_exp_man_padded_1_r[11] = larger_exp_man_padded_1_r_11_sv2v_reg;
  assign larger_exp_man_padded_1_r[10] = larger_exp_man_padded_1_r_10_sv2v_reg;
  assign larger_exp_man_padded_1_r[9] = larger_exp_man_padded_1_r_9_sv2v_reg;
  assign larger_exp_man_padded_1_r[8] = larger_exp_man_padded_1_r_8_sv2v_reg;
  assign larger_exp_man_padded_1_r[7] = larger_exp_man_padded_1_r_7_sv2v_reg;
  assign larger_exp_man_padded_1_r[6] = larger_exp_man_padded_1_r_6_sv2v_reg;
  assign larger_exp_man_padded_1_r[5] = larger_exp_man_padded_1_r_5_sv2v_reg;
  assign larger_exp_man_padded_1_r[4] = larger_exp_man_padded_1_r_4_sv2v_reg;
  assign larger_exp_man_padded_1_r[3] = larger_exp_man_padded_1_r_3_sv2v_reg;
  assign larger_exp_man_padded_1_r[2] = larger_exp_man_padded_1_r_2_sv2v_reg;
  assign larger_exp_man_padded_1_r[1] = larger_exp_man_padded_1_r_1_sv2v_reg;
  assign larger_exp_man_padded_1_r[0] = larger_exp_man_padded_1_r_0_sv2v_reg;
  assign a_sig_nan_1_r = a_sig_nan_1_r_sv2v_reg;
  assign b_sig_nan_1_r = b_sig_nan_1_r_sv2v_reg;
  assign a_nan_1_r = a_nan_1_r_sv2v_reg;
  assign b_nan_1_r = b_nan_1_r_sv2v_reg;
  assign a_infty_1_r = a_infty_1_r_sv2v_reg;
  assign b_infty_1_r = b_infty_1_r_sv2v_reg;
  assign a_denormal_2_r = a_denormal_2_r_sv2v_reg;
  assign v_2_r = v_2_r_sv2v_reg;
  assign b_denormal_2_r = b_denormal_2_r_sv2v_reg;
  assign larger_exp_2_r[7] = larger_exp_2_r_7_sv2v_reg;
  assign larger_exp_2_r[6] = larger_exp_2_r_6_sv2v_reg;
  assign larger_exp_2_r[5] = larger_exp_2_r_5_sv2v_reg;
  assign larger_exp_2_r[4] = larger_exp_2_r_4_sv2v_reg;
  assign larger_exp_2_r[3] = larger_exp_2_r_3_sv2v_reg;
  assign larger_exp_2_r[2] = larger_exp_2_r_2_sv2v_reg;
  assign larger_exp_2_r[1] = larger_exp_2_r_1_sv2v_reg;
  assign larger_exp_2_r[0] = larger_exp_2_r_0_sv2v_reg;
  assign adder_output_2_r[27] = adder_output_2_r_27_sv2v_reg;
  assign adder_output_2_r[26] = adder_output_2_r_26_sv2v_reg;
  assign adder_output_2_r[25] = adder_output_2_r_25_sv2v_reg;
  assign adder_output_2_r[24] = adder_output_2_r_24_sv2v_reg;
  assign adder_output_2_r[23] = adder_output_2_r_23_sv2v_reg;
  assign adder_output_2_r[22] = adder_output_2_r_22_sv2v_reg;
  assign adder_output_2_r[21] = adder_output_2_r_21_sv2v_reg;
  assign adder_output_2_r[20] = adder_output_2_r_20_sv2v_reg;
  assign adder_output_2_r[19] = adder_output_2_r_19_sv2v_reg;
  assign adder_output_2_r[18] = adder_output_2_r_18_sv2v_reg;
  assign adder_output_2_r[17] = adder_output_2_r_17_sv2v_reg;
  assign adder_output_2_r[16] = adder_output_2_r_16_sv2v_reg;
  assign adder_output_2_r[15] = adder_output_2_r_15_sv2v_reg;
  assign adder_output_2_r[14] = adder_output_2_r_14_sv2v_reg;
  assign adder_output_2_r[13] = adder_output_2_r_13_sv2v_reg;
  assign adder_output_2_r[12] = adder_output_2_r_12_sv2v_reg;
  assign adder_output_2_r[11] = adder_output_2_r_11_sv2v_reg;
  assign adder_output_2_r[10] = adder_output_2_r_10_sv2v_reg;
  assign adder_output_2_r[9] = adder_output_2_r_9_sv2v_reg;
  assign adder_output_2_r[8] = adder_output_2_r_8_sv2v_reg;
  assign adder_output_2_r[7] = adder_output_2_r_7_sv2v_reg;
  assign adder_output_2_r[6] = adder_output_2_r_6_sv2v_reg;
  assign adder_output_2_r[5] = adder_output_2_r_5_sv2v_reg;
  assign adder_output_2_r[4] = adder_output_2_r_4_sv2v_reg;
  assign adder_output_2_r[3] = adder_output_2_r_3_sv2v_reg;
  assign adder_output_2_r[2] = adder_output_2_r_2_sv2v_reg;
  assign adder_output_2_r[1] = adder_output_2_r_1_sv2v_reg;
  assign adder_output_2_r[0] = adder_output_2_r_0_sv2v_reg;
  assign final_sign_2_r = final_sign_2_r_sv2v_reg;
  assign do_sub_2_r = do_sub_2_r_sv2v_reg;
  assign a_sig_nan_2_r = a_sig_nan_2_r_sv2v_reg;
  assign b_sig_nan_2_r = b_sig_nan_2_r_sv2v_reg;
  assign a_nan_2_r = a_nan_2_r_sv2v_reg;
  assign b_nan_2_r = b_nan_2_r_sv2v_reg;
  assign a_infty_2_r = a_infty_2_r_sv2v_reg;
  assign b_infty_2_r = b_infty_2_r_sv2v_reg;
  assign adjusted_exp_cout_3_r = adjusted_exp_cout_3_r_sv2v_reg;
  assign v_o = v_o_sv2v_reg;
  assign final_sign_3_r = final_sign_3_r_sv2v_reg;
  assign pre_roundup_3_r[30] = pre_roundup_3_r_30_sv2v_reg;
  assign pre_roundup_3_r[29] = pre_roundup_3_r_29_sv2v_reg;
  assign pre_roundup_3_r[28] = pre_roundup_3_r_28_sv2v_reg;
  assign pre_roundup_3_r[27] = pre_roundup_3_r_27_sv2v_reg;
  assign pre_roundup_3_r[26] = pre_roundup_3_r_26_sv2v_reg;
  assign pre_roundup_3_r[25] = pre_roundup_3_r_25_sv2v_reg;
  assign pre_roundup_3_r[24] = pre_roundup_3_r_24_sv2v_reg;
  assign pre_roundup_3_r[23] = pre_roundup_3_r_23_sv2v_reg;
  assign pre_roundup_3_r[22] = pre_roundup_3_r_22_sv2v_reg;
  assign pre_roundup_3_r[21] = pre_roundup_3_r_21_sv2v_reg;
  assign pre_roundup_3_r[20] = pre_roundup_3_r_20_sv2v_reg;
  assign pre_roundup_3_r[19] = pre_roundup_3_r_19_sv2v_reg;
  assign pre_roundup_3_r[18] = pre_roundup_3_r_18_sv2v_reg;
  assign pre_roundup_3_r[17] = pre_roundup_3_r_17_sv2v_reg;
  assign pre_roundup_3_r[16] = pre_roundup_3_r_16_sv2v_reg;
  assign pre_roundup_3_r[15] = pre_roundup_3_r_15_sv2v_reg;
  assign pre_roundup_3_r[14] = pre_roundup_3_r_14_sv2v_reg;
  assign pre_roundup_3_r[13] = pre_roundup_3_r_13_sv2v_reg;
  assign pre_roundup_3_r[12] = pre_roundup_3_r_12_sv2v_reg;
  assign pre_roundup_3_r[11] = pre_roundup_3_r_11_sv2v_reg;
  assign pre_roundup_3_r[10] = pre_roundup_3_r_10_sv2v_reg;
  assign pre_roundup_3_r[9] = pre_roundup_3_r_9_sv2v_reg;
  assign pre_roundup_3_r[8] = pre_roundup_3_r_8_sv2v_reg;
  assign pre_roundup_3_r[7] = pre_roundup_3_r_7_sv2v_reg;
  assign pre_roundup_3_r[6] = pre_roundup_3_r_6_sv2v_reg;
  assign pre_roundup_3_r[5] = pre_roundup_3_r_5_sv2v_reg;
  assign pre_roundup_3_r[4] = pre_roundup_3_r_4_sv2v_reg;
  assign pre_roundup_3_r[3] = pre_roundup_3_r_3_sv2v_reg;
  assign pre_roundup_3_r[2] = pre_roundup_3_r_2_sv2v_reg;
  assign pre_roundup_3_r[1] = pre_roundup_3_r_1_sv2v_reg;
  assign pre_roundup_3_r[0] = pre_roundup_3_r_0_sv2v_reg;
  assign round_up_3_r = round_up_3_r_sv2v_reg;
  assign all_zero_3_r = all_zero_3_r_sv2v_reg;
  assign a_sig_nan_3_r = a_sig_nan_3_r_sv2v_reg;
  assign b_sig_nan_3_r = b_sig_nan_3_r_sv2v_reg;
  assign a_nan_3_r = a_nan_3_r_sv2v_reg;
  assign b_nan_3_r = b_nan_3_r_sv2v_reg;
  assign a_infty_3_r = a_infty_3_r_sv2v_reg;
  assign b_infty_3_r = b_infty_3_r_sv2v_reg;
  assign do_sub_3_r = do_sub_3_r_sv2v_reg;
  assign a_denormal_3_r = a_denormal_3_r_sv2v_reg;
  assign b_denormal_3_r = b_denormal_3_r_sv2v_reg;

  bsg_fpu_preprocess_e_p8_m_p23
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


  bsg_fpu_preprocess_e_p8_m_p23
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


  bsg_less_than_width_p8
  lt_exp
  (
    .a_i(exp_a),
    .b_i(exp_b),
    .o(exp_a_less)
  );


  bsg_fpu_sticky_width_p26
  sticky0
  (
    .i({ 1'b1, smaller_exp_man, 1'b0, 1'b0 }),
    .shamt_i(exp_diff[4:0]),
    .sticky_o(smaller_exp_man_shifted[0])
  );


  bsg_less_than_width_p31
  lt_mag
  (
    .a_i(a_i[30:0]),
    .b_i(b_i[30:0]),
    .o(mag_a_less)
  );

  assign smaller_exp_man_shifted[26:1] = { 1'b1, smaller_exp_man, 1'b0, 1'b0 } >> exp_diff;

  bsg_less_than_width_p27
  lt_man_norm
  (
    .a_i(larger_exp_man_padded_1_r),
    .b_i(smaller_exp_man_shifted_1_r),
    .o(larger_exp_man_less)
  );


  bsg_fpu_clz_width_p28
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

  assign N174 = pre_roundup_3_r[29] | pre_roundup_3_r[30];
  assign N175 = pre_roundup_3_r[28] | N174;
  assign N176 = pre_roundup_3_r[27] | N175;
  assign N177 = pre_roundup_3_r[26] | N176;
  assign N178 = pre_roundup_3_r[25] | N177;
  assign N179 = pre_roundup_3_r[24] | N178;
  assign N180 = pre_roundup_3_r[23] | N179;
  assign N181 = ~N180;
  assign { N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95 } = adder_output_2_r[26:0] << num_zero;
  assign N182 = pre_roundup_3_r[29] & pre_roundup_3_r[30];
  assign N183 = pre_roundup_3_r[28] & N182;
  assign N184 = pre_roundup_3_r[27] & N183;
  assign N185 = pre_roundup_3_r[26] & N184;
  assign N186 = pre_roundup_3_r[25] & N185;
  assign N187 = pre_roundup_3_r[24] & N186;
  assign N188 = pre_roundup_3_r[23] & N187;
  assign rounded = pre_roundup_3_r + round_up_3_r;
  assign { adjusted_exp_cout, adjusted_exp } = larger_exp_2_r - num_zero;
  assign diff_ba = exp_b - exp_a;
  assign diff_ab = exp_a - exp_b;
  assign larger_exp = { N24, N23, N22, N21, N20, N19, N18, N17 } + 1'b1;
  assign { N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60 } = larger_mag_man + { do_sub_1_r, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59 };
  assign adder_output = { N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60 } + do_sub_1_r;
  assign { N24, N23, N22, N21, N20, N19, N18, N17 } = (N0)? exp_b : 
                                                      (N1)? exp_a : 1'b0;
  assign N0 = exp_a_less;
  assign N1 = N16;
  assign exp_diff = (N0)? diff_ba : 
                    (N1)? diff_ab : 1'b0;
  assign larger_exp_man = (N0)? man_b : 
                          (N1)? man_a : 1'b0;
  assign smaller_exp_man = (N0)? man_a : 
                           (N1)? man_b : 1'b0;
  assign N28 = (N3)? 1'b1 : 
               (N2)? 1'b0 : 1'b0;
  assign N3 = N25;
  assign N29 = (N4)? 1'b0 : 
               (N31)? v_i : 
               (N27)? 1'b0 : 1'b0;
  assign N4 = reset_i;
  assign larger_mag_man = (N5)? smaller_exp_man_shifted_1_r : 
                          (N6)? larger_exp_man_padded_1_r : 1'b0;
  assign N5 = larger_exp_man_less;
  assign N6 = N32;
  assign smaller_mag_man = (N5)? larger_exp_man_padded_1_r : 
                           (N6)? smaller_exp_man_shifted_1_r : 1'b0;
  assign N91 = (N7)? 1'b1 : 
               (N8)? 1'b0 : 1'b0;
  assign N7 = N88;
  assign N92 = (N4)? 1'b0 : 
               (N93)? v_1_r : 
               (N90)? 1'b0 : 1'b0;
  assign shifted_adder_output = (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                (N10)? { N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95 } : 1'b0;
  assign N9 = all_zero;
  assign N10 = N94;
  assign N125 = (N11)? 1'b1 : 
                (N14)? 1'b0 : 1'b0;
  assign N11 = N122;
  assign N126 = (N4)? 1'b0 : 
                (N127)? v_2_r : 
                (N124)? 1'b0 : 1'b0;
  assign N147 = (N12)? 1'b0 : 
                (N13)? final_sign_3_r : 1'b0;
  assign N12 = do_sub_3_r;
  assign N13 = N146;
  assign unimplemented_o = (N15)? 1'b0 : 
                           (N149)? 1'b0 : 
                           (N152)? 1'b0 : 
                           (N155)? 1'b0 : 
                           (N158)? 1'b0 : 
                           (N161)? 1'b1 : 
                           (N164)? 1'b0 : 
                           (N167)? 1'b0 : 
                           (N170)? 1'b0 : 
                           (N173)? 1'b0 : 
                           (N145)? 1'b0 : 1'b0;
  assign N15 = N128;
  assign invalid_o = (N15)? 1'b1 : 
                     (N149)? 1'b0 : 
                     (N152)? do_sub_3_r : 
                     (N155)? 1'b0 : 
                     (N158)? 1'b0 : 
                     (N161)? 1'b0 : 
                     (N164)? 1'b0 : 
                     (N167)? 1'b0 : 
                     (N170)? 1'b0 : 
                     (N173)? 1'b0 : 
                     (N145)? 1'b0 : 1'b0;
  assign overflow_o = (N15)? 1'b0 : 
                      (N149)? 1'b0 : 
                      (N152)? 1'b0 : 
                      (N155)? 1'b0 : 
                      (N158)? 1'b0 : 
                      (N161)? 1'b0 : 
                      (N164)? 1'b0 : 
                      (N167)? 1'b0 : 
                      (N170)? 1'b1 : 
                      (N173)? 1'b0 : 
                      (N145)? 1'b0 : 1'b0;
  assign underflow_o = (N15)? 1'b0 : 
                       (N149)? 1'b0 : 
                       (N152)? 1'b0 : 
                       (N155)? 1'b0 : 
                       (N158)? 1'b0 : 
                       (N161)? 1'b0 : 
                       (N164)? 1'b0 : 
                       (N167)? 1'b1 : 
                       (N170)? 1'b0 : 
                       (N173)? 1'b1 : 
                       (N145)? 1'b0 : 1'b0;
  assign z_o = (N15)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N149)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N152)? { N147, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, do_sub_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N155)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N158)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N161)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N164)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N167)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N170)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N173)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N145)? { final_sign_3_r, rounded } : 1'b0;
  assign stall = v_o & N189;
  assign N189 = ~yumi_i;
  assign ready_o = N190 & en_i;
  assign N190 = ~stall;
  assign N16 = ~exp_a_less;
  assign final_sign = N196 | N199;
  assign N196 = N192 | N195;
  assign N192 = sign_a & N191;
  assign N191 = ~mag_a_less;
  assign N195 = N194 & sub_i;
  assign N194 = N193 & mag_a_less;
  assign N193 = ~sign_b;
  assign N199 = N197 & N198;
  assign N197 = sign_b & mag_a_less;
  assign N198 = ~sub_i;
  assign do_sub = N200 ^ sign_b;
  assign N200 = sub_i ^ sign_a;
  assign N25 = N190 & en_i;
  assign N26 = N25 | reset_i;
  assign N27 = ~N26;
  assign N30 = ~reset_i;
  assign N31 = N25 & N30;
  assign N32 = ~larger_exp_man_less;
  assign N33 = do_sub_1_r ^ smaller_mag_man[26];
  assign N34 = do_sub_1_r ^ smaller_mag_man[25];
  assign N35 = do_sub_1_r ^ smaller_mag_man[24];
  assign N36 = do_sub_1_r ^ smaller_mag_man[23];
  assign N37 = do_sub_1_r ^ smaller_mag_man[22];
  assign N38 = do_sub_1_r ^ smaller_mag_man[21];
  assign N39 = do_sub_1_r ^ smaller_mag_man[20];
  assign N40 = do_sub_1_r ^ smaller_mag_man[19];
  assign N41 = do_sub_1_r ^ smaller_mag_man[18];
  assign N42 = do_sub_1_r ^ smaller_mag_man[17];
  assign N43 = do_sub_1_r ^ smaller_mag_man[16];
  assign N44 = do_sub_1_r ^ smaller_mag_man[15];
  assign N45 = do_sub_1_r ^ smaller_mag_man[14];
  assign N46 = do_sub_1_r ^ smaller_mag_man[13];
  assign N47 = do_sub_1_r ^ smaller_mag_man[12];
  assign N48 = do_sub_1_r ^ smaller_mag_man[11];
  assign N49 = do_sub_1_r ^ smaller_mag_man[10];
  assign N50 = do_sub_1_r ^ smaller_mag_man[9];
  assign N51 = do_sub_1_r ^ smaller_mag_man[8];
  assign N52 = do_sub_1_r ^ smaller_mag_man[7];
  assign N53 = do_sub_1_r ^ smaller_mag_man[6];
  assign N54 = do_sub_1_r ^ smaller_mag_man[5];
  assign N55 = do_sub_1_r ^ smaller_mag_man[4];
  assign N56 = do_sub_1_r ^ smaller_mag_man[3];
  assign N57 = do_sub_1_r ^ smaller_mag_man[2];
  assign N58 = do_sub_1_r ^ smaller_mag_man[1];
  assign N59 = do_sub_1_r ^ smaller_mag_man[0];
  assign N88 = N190 & en_i;
  assign N89 = N88 | reset_i;
  assign N90 = ~N89;
  assign N93 = N88 & N30;
  assign all_zero = ~reduce_o;
  assign N94 = ~all_zero;
  assign round_up = shifted_adder_output[3] & N203;
  assign N203 = N202 | shifted_adder_output[4];
  assign N202 = N201 | shifted_adder_output[0];
  assign N201 = shifted_adder_output[2] | shifted_adder_output[1];
  assign N122 = N190 & en_i;
  assign N123 = N122 | reset_i;
  assign N124 = ~N123;
  assign N127 = N122 & N30;
  assign carry_into_exp = N225 & pre_roundup_3_r[0];
  assign N225 = N224 & pre_roundup_3_r[1];
  assign N224 = N223 & pre_roundup_3_r[2];
  assign N223 = N222 & pre_roundup_3_r[3];
  assign N222 = N221 & pre_roundup_3_r[4];
  assign N221 = N220 & pre_roundup_3_r[5];
  assign N220 = N219 & pre_roundup_3_r[6];
  assign N219 = N218 & pre_roundup_3_r[7];
  assign N218 = N217 & pre_roundup_3_r[8];
  assign N217 = N216 & pre_roundup_3_r[9];
  assign N216 = N215 & pre_roundup_3_r[10];
  assign N215 = N214 & pre_roundup_3_r[11];
  assign N214 = N213 & pre_roundup_3_r[12];
  assign N213 = N212 & pre_roundup_3_r[13];
  assign N212 = N211 & pre_roundup_3_r[14];
  assign N211 = N210 & pre_roundup_3_r[15];
  assign N210 = N209 & pre_roundup_3_r[16];
  assign N209 = N208 & pre_roundup_3_r[17];
  assign N208 = N207 & pre_roundup_3_r[18];
  assign N207 = N206 & pre_roundup_3_r[19];
  assign N206 = N205 & pre_roundup_3_r[20];
  assign N205 = N204 & pre_roundup_3_r[21];
  assign N204 = round_up_3_r & pre_roundup_3_r[22];
  assign N128 = a_sig_nan_3_r | b_sig_nan_3_r;
  assign N129 = a_nan_3_r | b_nan_3_r;
  assign N130 = a_infty_3_r & b_infty_3_r;
  assign N131 = a_infty_3_r & N226;
  assign N226 = ~b_infty_3_r;
  assign N132 = N227 & b_infty_3_r;
  assign N227 = ~a_infty_3_r;
  assign N133 = a_denormal_3_r | b_denormal_3_r;
  assign N134 = N188 & N228;
  assign N228 = pre_roundup_3_r[23] | carry_into_exp;
  assign N135 = N181 & N229;
  assign N229 = ~carry_into_exp;
  assign N136 = N129 | N128;
  assign N137 = N130 | N136;
  assign N138 = N131 | N137;
  assign N139 = N132 | N138;
  assign N140 = N133 | N139;
  assign N141 = all_zero_3_r | N140;
  assign N142 = adjusted_exp_cout_3_r | N141;
  assign N143 = N134 | N142;
  assign N144 = N135 | N143;
  assign N145 = ~N144;
  assign N146 = ~do_sub_3_r;
  assign N148 = ~N128;
  assign N149 = N129 & N148;
  assign N150 = ~N129;
  assign N151 = N148 & N150;
  assign N152 = N130 & N151;
  assign N153 = ~N130;
  assign N154 = N151 & N153;
  assign N155 = N131 & N154;
  assign N156 = ~N131;
  assign N157 = N154 & N156;
  assign N158 = N132 & N157;
  assign N159 = ~N132;
  assign N160 = N157 & N159;
  assign N161 = N133 & N160;
  assign N162 = ~N133;
  assign N163 = N160 & N162;
  assign N164 = all_zero_3_r & N163;
  assign N165 = ~all_zero_3_r;
  assign N166 = N163 & N165;
  assign N167 = adjusted_exp_cout_3_r & N166;
  assign N168 = ~adjusted_exp_cout_3_r;
  assign N169 = N166 & N168;
  assign N170 = N134 & N169;
  assign N171 = ~N134;
  assign N172 = N169 & N171;
  assign N173 = N135 & N172;
  assign N2 = ~N25;
  assign N8 = ~N88;
  assign N14 = ~N122;

  always @(posedge clk_i) begin
    if(N29) begin
      a_denormal_1_r_sv2v_reg <= a_denormal;
      b_denormal_1_r_sv2v_reg <= b_denormal;
      final_sign_1_r_sv2v_reg <= final_sign;
      do_sub_1_r_sv2v_reg <= do_sub;
      larger_exp_1_r_7_sv2v_reg <= larger_exp[7];
      larger_exp_1_r_6_sv2v_reg <= larger_exp[6];
      larger_exp_1_r_5_sv2v_reg <= larger_exp[5];
      larger_exp_1_r_4_sv2v_reg <= larger_exp[4];
      larger_exp_1_r_3_sv2v_reg <= larger_exp[3];
      larger_exp_1_r_2_sv2v_reg <= larger_exp[2];
      larger_exp_1_r_1_sv2v_reg <= larger_exp[1];
      larger_exp_1_r_0_sv2v_reg <= larger_exp[0];
      smaller_exp_man_shifted_1_r_26_sv2v_reg <= smaller_exp_man_shifted[26];
      smaller_exp_man_shifted_1_r_25_sv2v_reg <= smaller_exp_man_shifted[25];
      smaller_exp_man_shifted_1_r_24_sv2v_reg <= smaller_exp_man_shifted[24];
      smaller_exp_man_shifted_1_r_23_sv2v_reg <= smaller_exp_man_shifted[23];
      smaller_exp_man_shifted_1_r_22_sv2v_reg <= smaller_exp_man_shifted[22];
      smaller_exp_man_shifted_1_r_21_sv2v_reg <= smaller_exp_man_shifted[21];
      smaller_exp_man_shifted_1_r_20_sv2v_reg <= smaller_exp_man_shifted[20];
      smaller_exp_man_shifted_1_r_19_sv2v_reg <= smaller_exp_man_shifted[19];
      smaller_exp_man_shifted_1_r_18_sv2v_reg <= smaller_exp_man_shifted[18];
      smaller_exp_man_shifted_1_r_17_sv2v_reg <= smaller_exp_man_shifted[17];
      smaller_exp_man_shifted_1_r_16_sv2v_reg <= smaller_exp_man_shifted[16];
      smaller_exp_man_shifted_1_r_15_sv2v_reg <= smaller_exp_man_shifted[15];
      smaller_exp_man_shifted_1_r_14_sv2v_reg <= smaller_exp_man_shifted[14];
      smaller_exp_man_shifted_1_r_13_sv2v_reg <= smaller_exp_man_shifted[13];
      smaller_exp_man_shifted_1_r_12_sv2v_reg <= smaller_exp_man_shifted[12];
      smaller_exp_man_shifted_1_r_11_sv2v_reg <= smaller_exp_man_shifted[11];
      smaller_exp_man_shifted_1_r_10_sv2v_reg <= smaller_exp_man_shifted[10];
      smaller_exp_man_shifted_1_r_9_sv2v_reg <= smaller_exp_man_shifted[9];
      smaller_exp_man_shifted_1_r_8_sv2v_reg <= smaller_exp_man_shifted[8];
      smaller_exp_man_shifted_1_r_7_sv2v_reg <= smaller_exp_man_shifted[7];
      smaller_exp_man_shifted_1_r_6_sv2v_reg <= smaller_exp_man_shifted[6];
      smaller_exp_man_shifted_1_r_5_sv2v_reg <= smaller_exp_man_shifted[5];
      smaller_exp_man_shifted_1_r_4_sv2v_reg <= smaller_exp_man_shifted[4];
      smaller_exp_man_shifted_1_r_3_sv2v_reg <= smaller_exp_man_shifted[3];
      smaller_exp_man_shifted_1_r_2_sv2v_reg <= smaller_exp_man_shifted[2];
      smaller_exp_man_shifted_1_r_1_sv2v_reg <= smaller_exp_man_shifted[1];
      smaller_exp_man_shifted_1_r_0_sv2v_reg <= smaller_exp_man_shifted[0];
      larger_exp_man_padded_1_r_26_sv2v_reg <= 1'b1;
      larger_exp_man_padded_1_r_25_sv2v_reg <= larger_exp_man[22];
      larger_exp_man_padded_1_r_24_sv2v_reg <= larger_exp_man[21];
      larger_exp_man_padded_1_r_23_sv2v_reg <= larger_exp_man[20];
      larger_exp_man_padded_1_r_22_sv2v_reg <= larger_exp_man[19];
      larger_exp_man_padded_1_r_21_sv2v_reg <= larger_exp_man[18];
      larger_exp_man_padded_1_r_20_sv2v_reg <= larger_exp_man[17];
      larger_exp_man_padded_1_r_19_sv2v_reg <= larger_exp_man[16];
      larger_exp_man_padded_1_r_18_sv2v_reg <= larger_exp_man[15];
      larger_exp_man_padded_1_r_17_sv2v_reg <= larger_exp_man[14];
      larger_exp_man_padded_1_r_16_sv2v_reg <= larger_exp_man[13];
      larger_exp_man_padded_1_r_15_sv2v_reg <= larger_exp_man[12];
      larger_exp_man_padded_1_r_14_sv2v_reg <= larger_exp_man[11];
      larger_exp_man_padded_1_r_13_sv2v_reg <= larger_exp_man[10];
      larger_exp_man_padded_1_r_12_sv2v_reg <= larger_exp_man[9];
      larger_exp_man_padded_1_r_11_sv2v_reg <= larger_exp_man[8];
      larger_exp_man_padded_1_r_10_sv2v_reg <= larger_exp_man[7];
      larger_exp_man_padded_1_r_9_sv2v_reg <= larger_exp_man[6];
      larger_exp_man_padded_1_r_8_sv2v_reg <= larger_exp_man[5];
      larger_exp_man_padded_1_r_7_sv2v_reg <= larger_exp_man[4];
      larger_exp_man_padded_1_r_6_sv2v_reg <= larger_exp_man[3];
      larger_exp_man_padded_1_r_5_sv2v_reg <= larger_exp_man[2];
      larger_exp_man_padded_1_r_4_sv2v_reg <= larger_exp_man[1];
      larger_exp_man_padded_1_r_3_sv2v_reg <= larger_exp_man[0];
      larger_exp_man_padded_1_r_2_sv2v_reg <= 1'b0;
      larger_exp_man_padded_1_r_1_sv2v_reg <= 1'b0;
      larger_exp_man_padded_1_r_0_sv2v_reg <= 1'b0;
      a_sig_nan_1_r_sv2v_reg <= a_sig_nan;
      b_sig_nan_1_r_sv2v_reg <= b_sig_nan;
      a_nan_1_r_sv2v_reg <= a_nan;
      b_nan_1_r_sv2v_reg <= b_nan;
      a_infty_1_r_sv2v_reg <= a_infty;
      b_infty_1_r_sv2v_reg <= b_infty;
    end 
    if(reset_i) begin
      v_1_r_sv2v_reg <= 1'b0;
    end else if(N28) begin
      v_1_r_sv2v_reg <= v_i;
    end 
    if(N92) begin
      a_denormal_2_r_sv2v_reg <= a_denormal_1_r;
      b_denormal_2_r_sv2v_reg <= b_denormal_1_r;
      larger_exp_2_r_7_sv2v_reg <= larger_exp_1_r[7];
      larger_exp_2_r_6_sv2v_reg <= larger_exp_1_r[6];
      larger_exp_2_r_5_sv2v_reg <= larger_exp_1_r[5];
      larger_exp_2_r_4_sv2v_reg <= larger_exp_1_r[4];
      larger_exp_2_r_3_sv2v_reg <= larger_exp_1_r[3];
      larger_exp_2_r_2_sv2v_reg <= larger_exp_1_r[2];
      larger_exp_2_r_1_sv2v_reg <= larger_exp_1_r[1];
      larger_exp_2_r_0_sv2v_reg <= larger_exp_1_r[0];
      adder_output_2_r_27_sv2v_reg <= adder_output[27];
      adder_output_2_r_26_sv2v_reg <= adder_output[26];
      adder_output_2_r_25_sv2v_reg <= adder_output[25];
      adder_output_2_r_24_sv2v_reg <= adder_output[24];
      adder_output_2_r_23_sv2v_reg <= adder_output[23];
      adder_output_2_r_22_sv2v_reg <= adder_output[22];
      adder_output_2_r_21_sv2v_reg <= adder_output[21];
      adder_output_2_r_20_sv2v_reg <= adder_output[20];
      adder_output_2_r_19_sv2v_reg <= adder_output[19];
      adder_output_2_r_18_sv2v_reg <= adder_output[18];
      adder_output_2_r_17_sv2v_reg <= adder_output[17];
      adder_output_2_r_16_sv2v_reg <= adder_output[16];
      adder_output_2_r_15_sv2v_reg <= adder_output[15];
      adder_output_2_r_14_sv2v_reg <= adder_output[14];
      adder_output_2_r_13_sv2v_reg <= adder_output[13];
      adder_output_2_r_12_sv2v_reg <= adder_output[12];
      adder_output_2_r_11_sv2v_reg <= adder_output[11];
      adder_output_2_r_10_sv2v_reg <= adder_output[10];
      adder_output_2_r_9_sv2v_reg <= adder_output[9];
      adder_output_2_r_8_sv2v_reg <= adder_output[8];
      adder_output_2_r_7_sv2v_reg <= adder_output[7];
      adder_output_2_r_6_sv2v_reg <= adder_output[6];
      adder_output_2_r_5_sv2v_reg <= adder_output[5];
      adder_output_2_r_4_sv2v_reg <= adder_output[4];
      adder_output_2_r_3_sv2v_reg <= adder_output[3];
      adder_output_2_r_2_sv2v_reg <= adder_output[2];
      adder_output_2_r_1_sv2v_reg <= adder_output[1];
      adder_output_2_r_0_sv2v_reg <= adder_output[0];
      final_sign_2_r_sv2v_reg <= final_sign_1_r;
      do_sub_2_r_sv2v_reg <= do_sub_1_r;
      a_sig_nan_2_r_sv2v_reg <= a_sig_nan_1_r;
      b_sig_nan_2_r_sv2v_reg <= b_sig_nan_1_r;
      a_nan_2_r_sv2v_reg <= a_nan_1_r;
      b_nan_2_r_sv2v_reg <= b_nan_1_r;
      a_infty_2_r_sv2v_reg <= a_infty_1_r;
      b_infty_2_r_sv2v_reg <= b_infty_1_r;
    end 
    if(reset_i) begin
      v_2_r_sv2v_reg <= 1'b0;
    end else if(N91) begin
      v_2_r_sv2v_reg <= v_1_r;
    end 
    if(N126) begin
      adjusted_exp_cout_3_r_sv2v_reg <= adjusted_exp_cout;
      final_sign_3_r_sv2v_reg <= final_sign_2_r;
      pre_roundup_3_r_30_sv2v_reg <= adjusted_exp[7];
      pre_roundup_3_r_29_sv2v_reg <= adjusted_exp[6];
      pre_roundup_3_r_28_sv2v_reg <= adjusted_exp[5];
      pre_roundup_3_r_27_sv2v_reg <= adjusted_exp[4];
      pre_roundup_3_r_26_sv2v_reg <= adjusted_exp[3];
      pre_roundup_3_r_25_sv2v_reg <= adjusted_exp[2];
      pre_roundup_3_r_24_sv2v_reg <= adjusted_exp[1];
      pre_roundup_3_r_23_sv2v_reg <= adjusted_exp[0];
      pre_roundup_3_r_22_sv2v_reg <= shifted_adder_output[26];
      pre_roundup_3_r_21_sv2v_reg <= shifted_adder_output[25];
      pre_roundup_3_r_20_sv2v_reg <= shifted_adder_output[24];
      pre_roundup_3_r_19_sv2v_reg <= shifted_adder_output[23];
      pre_roundup_3_r_18_sv2v_reg <= shifted_adder_output[22];
      pre_roundup_3_r_17_sv2v_reg <= shifted_adder_output[21];
      pre_roundup_3_r_16_sv2v_reg <= shifted_adder_output[20];
      pre_roundup_3_r_15_sv2v_reg <= shifted_adder_output[19];
      pre_roundup_3_r_14_sv2v_reg <= shifted_adder_output[18];
      pre_roundup_3_r_13_sv2v_reg <= shifted_adder_output[17];
      pre_roundup_3_r_12_sv2v_reg <= shifted_adder_output[16];
      pre_roundup_3_r_11_sv2v_reg <= shifted_adder_output[15];
      pre_roundup_3_r_10_sv2v_reg <= shifted_adder_output[14];
      pre_roundup_3_r_9_sv2v_reg <= shifted_adder_output[13];
      pre_roundup_3_r_8_sv2v_reg <= shifted_adder_output[12];
      pre_roundup_3_r_7_sv2v_reg <= shifted_adder_output[11];
      pre_roundup_3_r_6_sv2v_reg <= shifted_adder_output[10];
      pre_roundup_3_r_5_sv2v_reg <= shifted_adder_output[9];
      pre_roundup_3_r_4_sv2v_reg <= shifted_adder_output[8];
      pre_roundup_3_r_3_sv2v_reg <= shifted_adder_output[7];
      pre_roundup_3_r_2_sv2v_reg <= shifted_adder_output[6];
      pre_roundup_3_r_1_sv2v_reg <= shifted_adder_output[5];
      pre_roundup_3_r_0_sv2v_reg <= shifted_adder_output[4];
      round_up_3_r_sv2v_reg <= round_up;
      all_zero_3_r_sv2v_reg <= all_zero;
      a_sig_nan_3_r_sv2v_reg <= a_sig_nan_2_r;
      b_sig_nan_3_r_sv2v_reg <= b_sig_nan_2_r;
      a_nan_3_r_sv2v_reg <= a_nan_2_r;
      b_nan_3_r_sv2v_reg <= b_nan_2_r;
      a_infty_3_r_sv2v_reg <= a_infty_2_r;
      b_infty_3_r_sv2v_reg <= b_infty_2_r;
      do_sub_3_r_sv2v_reg <= do_sub_2_r;
      a_denormal_3_r_sv2v_reg <= a_denormal_2_r;
      b_denormal_3_r_sv2v_reg <= b_denormal_2_r;
    end 
    if(reset_i) begin
      v_o_sv2v_reg <= 1'b0;
    end else if(N125) begin
      v_o_sv2v_reg <= v_2_r;
    end 
  end


endmodule

