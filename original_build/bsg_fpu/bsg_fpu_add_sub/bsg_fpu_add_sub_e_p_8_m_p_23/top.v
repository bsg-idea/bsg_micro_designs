

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
  wire zero_o,nan_o,sig_nan_o,infty_o,exp_zero_o,man_zero_o,denormal_o,sign_o,N0,N1,N2,
  N3,N4,N5,N6,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N38;
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
  assign exp_o[7] = a_i[30];
  assign exp_o[6] = a_i[29];
  assign exp_o[5] = a_i[28];
  assign exp_o[4] = a_i[27];
  assign exp_o[3] = a_i[26];
  assign exp_o[2] = a_i[25];
  assign exp_o[1] = a_i[24];
  assign exp_o[0] = a_i[23];
  assign sign_o = a_i[31];
  assign N0 = a_i[29] | a_i[30];
  assign N1 = a_i[28] | N0;
  assign N2 = a_i[27] | N1;
  assign N3 = a_i[26] | N2;
  assign N4 = a_i[25] | N3;
  assign N5 = a_i[24] | N4;
  assign N6 = a_i[23] | N5;
  assign exp_zero_o = ~N6;
  assign N8 = a_i[29] & a_i[30];
  assign N9 = a_i[28] & N8;
  assign N10 = a_i[27] & N9;
  assign N11 = a_i[26] & N10;
  assign N12 = a_i[25] & N11;
  assign N13 = a_i[24] & N12;
  assign N14 = a_i[23] & N13;
  assign N15 = a_i[21] | a_i[22];
  assign N16 = a_i[20] | N15;
  assign N17 = a_i[19] | N16;
  assign N18 = a_i[18] | N17;
  assign N19 = a_i[17] | N18;
  assign N20 = a_i[16] | N19;
  assign N21 = a_i[15] | N20;
  assign N22 = a_i[14] | N21;
  assign N23 = a_i[13] | N22;
  assign N24 = a_i[12] | N23;
  assign N25 = a_i[11] | N24;
  assign N26 = a_i[10] | N25;
  assign N27 = a_i[9] | N26;
  assign N28 = a_i[8] | N27;
  assign N29 = a_i[7] | N28;
  assign N30 = a_i[6] | N29;
  assign N31 = a_i[5] | N30;
  assign N32 = a_i[4] | N31;
  assign N33 = a_i[3] | N32;
  assign N34 = a_i[2] | N33;
  assign N35 = a_i[1] | N34;
  assign N36 = a_i[0] | N35;
  assign man_zero_o = ~N36;
  assign zero_o = exp_zero_o & man_zero_o;
  assign nan_o = N14 & N36;
  assign sig_nan_o = nan_o & N38;
  assign N38 = ~a_i[22];
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
  o
);

  input [27:0] i;
  output [27:0] o;
  wire [27:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26;
  wire [27:1] scan_lo;

  bsg_scan_width_p28_or_p1_lo_to_hi_p1
  genblk1_scan
  (
    .i(i),
    .o({ scan_lo, o[0:0] })
  );

  assign o[27] = scan_lo[27] & N0;
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
  wire v_o;

  bsg_encode_one_hot_width_p32
  unaligned_align
  (
    .i({ 1'b0, 1'b0, 1'b0, 1'b0, i }),
    .addr_o(addr_o),
    .v_o(v_o)
  );


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
    .o(enc_lo)
  );


  bsg_encode_one_hot_width_p28_lo_to_hi_p1
  b
  (
    .i(enc_lo),
    .addr_o(addr_o),
    .v_o(v_o)
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
  wire ready_o,unimplemented_o,invalid_o,overflow_o,underflow_o,N0,N1,N2,N3,N4,N5,N6,
  N7,N8,N9,stall,a_zero,a_nan,a_sig_nan,a_infty,exp_a_zero,a_denormal,sign_a,b_zero,
  b_nan,b_sig_nan,b_infty,exp_b_zero,b_denormal,sign_b,exp_a_less,N10,N11,N12,N13,
  N14,N15,N16,N17,N18,mag_a_less,final_sign,do_sub,N19,N20,N21,N22,N23,N24,N25,
  N26,larger_exp_man_less,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,reduce_o,all_zero,N90,N91,N92,N93,N94,N95,N96,
  N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,
  N113,N114,N115,N116,N117,adjusted_exp_cout,round_up,N118,N119,N120,N121,N122,N123,
  N124,carry_into_exp,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,
  N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,
  N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,
  N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,
  N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,N198,N199,N200,
  N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,N214,N215,N216,
  N217,N218,N219,N220,N221,N222,N223,N224,N225,N226;
  wire [7:0] exp_a,exp_b,larger_exp,diff_ab,diff_ba,exp_diff,adjusted_exp;
  wire [22:0] man_a,man_b,larger_exp_man,smaller_exp_man;
  wire [26:0] smaller_exp_man_shifted,larger_mag_man,smaller_mag_man,shifted_adder_output;
  wire [27:0] adder_output;
  wire [4:0] num_zero;
  wire [30:0] rounded;
  reg a_denormal_1_r,v_1_r,b_denormal_1_r,final_sign_1_r,do_sub_1_r,a_sig_nan_1_r,
  b_sig_nan_1_r,a_nan_1_r,b_nan_1_r,a_infty_1_r,b_infty_1_r,a_denormal_2_r,v_2_r,
  b_denormal_2_r,final_sign_2_r,do_sub_2_r,a_sig_nan_2_r,b_sig_nan_2_r,a_nan_2_r,
  b_nan_2_r,a_infty_2_r,b_infty_2_r,adjusted_exp_cout_3_r,v_o,final_sign_3_r,
  round_up_3_r,all_zero_3_r,a_sig_nan_3_r,b_sig_nan_3_r,a_nan_3_r,b_nan_3_r,a_infty_3_r,
  b_infty_3_r,do_sub_3_r,a_denormal_3_r,b_denormal_3_r;
  reg [7:0] larger_exp_1_r,larger_exp_2_r;
  reg [26:0] smaller_exp_man_shifted_1_r,larger_exp_man_padded_1_r;
  reg [27:0] adder_output_2_r;
  reg [30:0] pre_roundup_3_r;

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

  assign N171 = pre_roundup_3_r[29] | pre_roundup_3_r[30];
  assign N172 = pre_roundup_3_r[28] | N171;
  assign N173 = pre_roundup_3_r[27] | N172;
  assign N174 = pre_roundup_3_r[26] | N173;
  assign N175 = pre_roundup_3_r[25] | N174;
  assign N176 = pre_roundup_3_r[24] | N175;
  assign N177 = pre_roundup_3_r[23] | N176;
  assign N178 = ~N177;
  assign { N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91 } = adder_output_2_r[26:0] << num_zero;
  assign N179 = pre_roundup_3_r[29] & pre_roundup_3_r[30];
  assign N180 = pre_roundup_3_r[28] & N179;
  assign N181 = pre_roundup_3_r[27] & N180;
  assign N182 = pre_roundup_3_r[26] & N181;
  assign N183 = pre_roundup_3_r[25] & N182;
  assign N184 = pre_roundup_3_r[24] & N183;
  assign N185 = pre_roundup_3_r[23] & N184;
  assign rounded = pre_roundup_3_r + round_up_3_r;
  assign { adjusted_exp_cout, adjusted_exp } = larger_exp_2_r - num_zero;
  assign diff_ba = exp_b - exp_a;
  assign diff_ab = exp_a - exp_b;
  assign larger_exp = { N18, N17, N16, N15, N14, N13, N12, N11 } + 1'b1;
  assign { N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55 } = larger_mag_man + { do_sub_1_r, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54 };
  assign adder_output = { N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55 } + do_sub_1_r;
  assign { N18, N17, N16, N15, N14, N13, N12, N11 } = (N0)? exp_b : 
                                                      (N1)? exp_a : 1'b0;
  assign N0 = exp_a_less;
  assign N1 = N10;
  assign exp_diff = (N0)? diff_ba : 
                    (N1)? diff_ab : 1'b0;
  assign larger_exp_man = (N0)? man_b : 
                          (N1)? man_a : 1'b0;
  assign smaller_exp_man = (N0)? man_a : 
                           (N1)? man_b : 1'b0;
  assign N22 = (N2)? 1'b1 : 
               (N26)? 1'b1 : 
               (N21)? 1'b0 : 1'b0;
  assign N2 = reset_i;
  assign N23 = (N2)? 1'b0 : 
               (N26)? v_i : 1'b0;
  assign N24 = (N2)? 1'b0 : 
               (N26)? v_i : 
               (N21)? 1'b0 : 1'b0;
  assign larger_mag_man = (N3)? smaller_exp_man_shifted_1_r : 
                          (N4)? larger_exp_man_padded_1_r : 1'b0;
  assign N3 = larger_exp_man_less;
  assign N4 = N27;
  assign smaller_mag_man = (N3)? larger_exp_man_padded_1_r : 
                           (N4)? smaller_exp_man_shifted_1_r : 1'b0;
  assign N86 = (N2)? 1'b1 : 
               (N89)? 1'b1 : 
               (N85)? 1'b0 : 1'b0;
  assign N87 = (N2)? 1'b0 : 
               (N89)? v_1_r : 1'b0;
  assign N88 = (N2)? 1'b0 : 
               (N89)? v_1_r : 
               (N85)? 1'b0 : 1'b0;
  assign shifted_adder_output = (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                (N6)? { N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91 } : 1'b0;
  assign N5 = all_zero;
  assign N6 = N90;
  assign N121 = (N2)? 1'b1 : 
                (N124)? 1'b1 : 
                (N120)? 1'b0 : 1'b0;
  assign N122 = (N2)? 1'b0 : 
                (N124)? v_2_r : 1'b0;
  assign N123 = (N2)? 1'b0 : 
                (N124)? v_2_r : 
                (N120)? 1'b0 : 1'b0;
  assign N144 = (N7)? 1'b0 : 
                (N8)? final_sign_3_r : 1'b0;
  assign N7 = do_sub_3_r;
  assign N8 = N143;
  assign unimplemented_o = (N9)? 1'b0 : 
                           (N146)? 1'b0 : 
                           (N149)? 1'b0 : 
                           (N152)? 1'b0 : 
                           (N155)? 1'b0 : 
                           (N158)? 1'b1 : 
                           (N161)? 1'b0 : 
                           (N164)? 1'b0 : 
                           (N167)? 1'b0 : 
                           (N170)? 1'b0 : 
                           (N142)? 1'b0 : 1'b0;
  assign N9 = N125;
  assign invalid_o = (N9)? 1'b1 : 
                     (N146)? 1'b0 : 
                     (N149)? do_sub_3_r : 
                     (N152)? 1'b0 : 
                     (N155)? 1'b0 : 
                     (N158)? 1'b0 : 
                     (N161)? 1'b0 : 
                     (N164)? 1'b0 : 
                     (N167)? 1'b0 : 
                     (N170)? 1'b0 : 
                     (N142)? 1'b0 : 1'b0;
  assign overflow_o = (N9)? 1'b0 : 
                      (N146)? 1'b0 : 
                      (N149)? 1'b0 : 
                      (N152)? 1'b0 : 
                      (N155)? 1'b0 : 
                      (N158)? 1'b0 : 
                      (N161)? 1'b0 : 
                      (N164)? 1'b0 : 
                      (N167)? 1'b1 : 
                      (N170)? 1'b0 : 
                      (N142)? 1'b0 : 1'b0;
  assign underflow_o = (N9)? 1'b0 : 
                       (N146)? 1'b0 : 
                       (N149)? 1'b0 : 
                       (N152)? 1'b0 : 
                       (N155)? 1'b0 : 
                       (N158)? 1'b0 : 
                       (N161)? 1'b0 : 
                       (N164)? 1'b1 : 
                       (N167)? 1'b0 : 
                       (N170)? 1'b1 : 
                       (N142)? 1'b0 : 1'b0;
  assign z_o = (N9)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N146)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N149)? { N144, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, do_sub_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N152)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N155)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N158)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N161)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N164)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N167)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N170)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N142)? { final_sign_3_r, rounded } : 1'b0;
  assign stall = v_o & N186;
  assign N186 = ~yumi_i;
  assign ready_o = N187 & en_i;
  assign N187 = ~stall;
  assign N10 = ~exp_a_less;
  assign final_sign = N193 | N196;
  assign N193 = N189 | N192;
  assign N189 = sign_a & N188;
  assign N188 = ~mag_a_less;
  assign N192 = N191 & sub_i;
  assign N191 = N190 & mag_a_less;
  assign N190 = ~sign_b;
  assign N196 = N194 & N195;
  assign N194 = sign_b & mag_a_less;
  assign N195 = ~sub_i;
  assign do_sub = N197 ^ sign_b;
  assign N197 = sub_i ^ sign_a;
  assign N19 = N187 & en_i;
  assign N20 = N19 | reset_i;
  assign N21 = ~N20;
  assign N25 = ~reset_i;
  assign N26 = N19 & N25;
  assign N27 = ~larger_exp_man_less;
  assign N28 = do_sub_1_r ^ smaller_mag_man[26];
  assign N29 = do_sub_1_r ^ smaller_mag_man[25];
  assign N30 = do_sub_1_r ^ smaller_mag_man[24];
  assign N31 = do_sub_1_r ^ smaller_mag_man[23];
  assign N32 = do_sub_1_r ^ smaller_mag_man[22];
  assign N33 = do_sub_1_r ^ smaller_mag_man[21];
  assign N34 = do_sub_1_r ^ smaller_mag_man[20];
  assign N35 = do_sub_1_r ^ smaller_mag_man[19];
  assign N36 = do_sub_1_r ^ smaller_mag_man[18];
  assign N37 = do_sub_1_r ^ smaller_mag_man[17];
  assign N38 = do_sub_1_r ^ smaller_mag_man[16];
  assign N39 = do_sub_1_r ^ smaller_mag_man[15];
  assign N40 = do_sub_1_r ^ smaller_mag_man[14];
  assign N41 = do_sub_1_r ^ smaller_mag_man[13];
  assign N42 = do_sub_1_r ^ smaller_mag_man[12];
  assign N43 = do_sub_1_r ^ smaller_mag_man[11];
  assign N44 = do_sub_1_r ^ smaller_mag_man[10];
  assign N45 = do_sub_1_r ^ smaller_mag_man[9];
  assign N46 = do_sub_1_r ^ smaller_mag_man[8];
  assign N47 = do_sub_1_r ^ smaller_mag_man[7];
  assign N48 = do_sub_1_r ^ smaller_mag_man[6];
  assign N49 = do_sub_1_r ^ smaller_mag_man[5];
  assign N50 = do_sub_1_r ^ smaller_mag_man[4];
  assign N51 = do_sub_1_r ^ smaller_mag_man[3];
  assign N52 = do_sub_1_r ^ smaller_mag_man[2];
  assign N53 = do_sub_1_r ^ smaller_mag_man[1];
  assign N54 = do_sub_1_r ^ smaller_mag_man[0];
  assign N83 = N187 & en_i;
  assign N84 = N83 | reset_i;
  assign N85 = ~N84;
  assign N89 = N83 & N25;
  assign all_zero = ~reduce_o;
  assign N90 = ~all_zero;
  assign round_up = shifted_adder_output[3] & N200;
  assign N200 = N199 | shifted_adder_output[4];
  assign N199 = N198 | shifted_adder_output[0];
  assign N198 = shifted_adder_output[2] | shifted_adder_output[1];
  assign N118 = N187 & en_i;
  assign N119 = N118 | reset_i;
  assign N120 = ~N119;
  assign N124 = N118 & N25;
  assign carry_into_exp = N222 & pre_roundup_3_r[0];
  assign N222 = N221 & pre_roundup_3_r[1];
  assign N221 = N220 & pre_roundup_3_r[2];
  assign N220 = N219 & pre_roundup_3_r[3];
  assign N219 = N218 & pre_roundup_3_r[4];
  assign N218 = N217 & pre_roundup_3_r[5];
  assign N217 = N216 & pre_roundup_3_r[6];
  assign N216 = N215 & pre_roundup_3_r[7];
  assign N215 = N214 & pre_roundup_3_r[8];
  assign N214 = N213 & pre_roundup_3_r[9];
  assign N213 = N212 & pre_roundup_3_r[10];
  assign N212 = N211 & pre_roundup_3_r[11];
  assign N211 = N210 & pre_roundup_3_r[12];
  assign N210 = N209 & pre_roundup_3_r[13];
  assign N209 = N208 & pre_roundup_3_r[14];
  assign N208 = N207 & pre_roundup_3_r[15];
  assign N207 = N206 & pre_roundup_3_r[16];
  assign N206 = N205 & pre_roundup_3_r[17];
  assign N205 = N204 & pre_roundup_3_r[18];
  assign N204 = N203 & pre_roundup_3_r[19];
  assign N203 = N202 & pre_roundup_3_r[20];
  assign N202 = N201 & pre_roundup_3_r[21];
  assign N201 = round_up_3_r & pre_roundup_3_r[22];
  assign N125 = a_sig_nan_3_r | b_sig_nan_3_r;
  assign N126 = a_nan_3_r | b_nan_3_r;
  assign N127 = a_infty_3_r & b_infty_3_r;
  assign N128 = a_infty_3_r & N223;
  assign N223 = ~b_infty_3_r;
  assign N129 = N224 & b_infty_3_r;
  assign N224 = ~a_infty_3_r;
  assign N130 = a_denormal_3_r | b_denormal_3_r;
  assign N131 = N185 & N225;
  assign N225 = pre_roundup_3_r[23] | carry_into_exp;
  assign N132 = N178 & N226;
  assign N226 = ~carry_into_exp;
  assign N133 = N126 | N125;
  assign N134 = N127 | N133;
  assign N135 = N128 | N134;
  assign N136 = N129 | N135;
  assign N137 = N130 | N136;
  assign N138 = all_zero_3_r | N137;
  assign N139 = adjusted_exp_cout_3_r | N138;
  assign N140 = N131 | N139;
  assign N141 = N132 | N140;
  assign N142 = ~N141;
  assign N143 = ~do_sub_3_r;
  assign N145 = ~N125;
  assign N146 = N126 & N145;
  assign N147 = ~N126;
  assign N148 = N145 & N147;
  assign N149 = N127 & N148;
  assign N150 = ~N127;
  assign N151 = N148 & N150;
  assign N152 = N128 & N151;
  assign N153 = ~N128;
  assign N154 = N151 & N153;
  assign N155 = N129 & N154;
  assign N156 = ~N129;
  assign N157 = N154 & N156;
  assign N158 = N130 & N157;
  assign N159 = ~N130;
  assign N160 = N157 & N159;
  assign N161 = all_zero_3_r & N160;
  assign N162 = ~all_zero_3_r;
  assign N163 = N160 & N162;
  assign N164 = adjusted_exp_cout_3_r & N163;
  assign N165 = ~adjusted_exp_cout_3_r;
  assign N166 = N163 & N165;
  assign N167 = N131 & N166;
  assign N168 = ~N131;
  assign N169 = N166 & N168;
  assign N170 = N132 & N169;

  always @(posedge clk_i) begin
    if(N24) begin
      a_denormal_1_r <= a_denormal;
      b_denormal_1_r <= b_denormal;
      final_sign_1_r <= final_sign;
      do_sub_1_r <= do_sub;
      { larger_exp_1_r[7:0] } <= { larger_exp[7:0] };
      { smaller_exp_man_shifted_1_r[26:0] } <= { smaller_exp_man_shifted[26:0] };
      { larger_exp_man_padded_1_r[26:0] } <= { 1'b1, larger_exp_man[22:0], 1'b0, 1'b0, 1'b0 };
      a_sig_nan_1_r <= a_sig_nan;
      b_sig_nan_1_r <= b_sig_nan;
      a_nan_1_r <= a_nan;
      b_nan_1_r <= b_nan;
      a_infty_1_r <= a_infty;
      b_infty_1_r <= b_infty;
    end 
    if(N22) begin
      v_1_r <= N23;
    end 
    if(N88) begin
      a_denormal_2_r <= a_denormal_1_r;
      b_denormal_2_r <= b_denormal_1_r;
      { larger_exp_2_r[7:0] } <= { larger_exp_1_r[7:0] };
      { adder_output_2_r[27:0] } <= { adder_output[27:0] };
      final_sign_2_r <= final_sign_1_r;
      do_sub_2_r <= do_sub_1_r;
      a_sig_nan_2_r <= a_sig_nan_1_r;
      b_sig_nan_2_r <= b_sig_nan_1_r;
      a_nan_2_r <= a_nan_1_r;
      b_nan_2_r <= b_nan_1_r;
      a_infty_2_r <= a_infty_1_r;
      b_infty_2_r <= b_infty_1_r;
    end 
    if(N86) begin
      v_2_r <= N87;
    end 
    if(N123) begin
      adjusted_exp_cout_3_r <= adjusted_exp_cout;
      final_sign_3_r <= final_sign_2_r;
      { pre_roundup_3_r[30:0] } <= { adjusted_exp[7:0], shifted_adder_output[26:4] };
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
    if(N121) begin
      v_o <= N122;
    end 
  end


endmodule

