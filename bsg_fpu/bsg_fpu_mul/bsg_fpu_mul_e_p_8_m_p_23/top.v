

module top
(
  clk_i,
  reset_i,
  en_i,
  v_i,
  a_i,
  b_i,
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
  input yumi_i;
  output ready_o;
  output v_o;
  output unimplemented_o;
  output invalid_o;
  output overflow_o;
  output underflow_o;

  bsg_fpu_mul
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .z_o(z_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .en_i(en_i),
    .v_i(v_i),
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



module bsg_mul_synth_width_p24
(
  a_i,
  b_i,
  o
);

  input [23:0] a_i;
  input [23:0] b_i;
  output [47:0] o;
  wire [47:0] o;
  assign o = a_i * b_i;

endmodule



module bsg_fpu_mul
(
  clk_i,
  reset_i,
  en_i,
  v_i,
  a_i,
  b_i,
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
  input yumi_i;
  output ready_o;
  output v_o;
  output unimplemented_o;
  output invalid_o;
  output overflow_o;
  output underflow_o;
  wire [31:0] z_o;
  wire ready_o,v_o,unimplemented_o,invalid_o,overflow_o,underflow_o,N0,N1,N3,N4,N5,N6,
  N7,N9,N10,N11,N12,N13,stall,a_zero,a_nan,a_sig_nan,a_infty,exp_a_zero,man_a_zero,
  a_denormal,sign_a,b_zero,b_nan,b_sig_nan,b_infty,exp_b_zero,man_b_zero,
  b_denormal,sign_b,final_sign,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,v_1_r,
  final_sign_1_r,a_sig_nan_1_r,b_sig_nan_1_r,a_nan_1_r,b_nan_1_r,a_infty_1_r,
  b_infty_1_r,a_zero_1_r,b_zero_1_r,a_denormal_1_r,b_denormal_1_r,N27,N28,N29,N30,N31,N32,
  N33,v_2_r,a_sig_nan_2_r,b_sig_nan_2_r,a_nan_2_r,b_nan_2_r,a_infty_2_r,b_infty_2_r,
  a_zero_2_r,b_zero_2_r,a_denormal_2_r,b_denormal_2_r,final_sign_2_r,N34,N35,N36,
  sticky,N37,N38,round_up,N39,N40,N41,N42,N43,round_up_3_r,final_sign_3_r,
  a_sig_nan_3_r,b_sig_nan_3_r,a_nan_3_r,b_nan_3_r,a_infty_3_r,b_infty_3_r,a_zero_3_r,
  b_zero_3_r,a_denormal_3_r,b_denormal_3_r,N44,N45,N46,carry_into_exp,N47,N48,N49,N50,
  N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,
  N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,
  N91,N92,N93,N94,N95,N96,N97,N2,N8,N14,N98,N99,N100,N101,N102,N103,N104,N105,N106,
  N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,
  N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,
  N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,
  N155,N156,N157,N158,N159,N160,N161,N162,N163;
  wire [7:0] exp_a,exp_b,exp_sum_unbiased_1_r,exp_sum_unbiased_2_r;
  wire [22:0] man_a,man_b,shifted_mantissa;
  wire [8:0] exp_sum,final_exp;
  wire [7:7] exp_sum_unbiased;
  wire [8:7] exp_sum_1_r,exp_sum_2_r,exp_sum_3_r;
  wire [23:0] man_a_norm_r,man_b_norm_r;
  wire [47:0] man_prod,man_prod_2_r;
  wire [30:0] pre_roundup_3_r,rounded;
  wire [8:8] final_exp_3_r;
  reg man_a_norm_r_23_sv2v_reg,man_a_norm_r_22_sv2v_reg,man_a_norm_r_21_sv2v_reg,
  man_a_norm_r_20_sv2v_reg,man_a_norm_r_19_sv2v_reg,man_a_norm_r_18_sv2v_reg,
  man_a_norm_r_17_sv2v_reg,man_a_norm_r_16_sv2v_reg,man_a_norm_r_15_sv2v_reg,
  man_a_norm_r_14_sv2v_reg,man_a_norm_r_13_sv2v_reg,man_a_norm_r_12_sv2v_reg,
  man_a_norm_r_11_sv2v_reg,man_a_norm_r_10_sv2v_reg,man_a_norm_r_9_sv2v_reg,man_a_norm_r_8_sv2v_reg,
  man_a_norm_r_7_sv2v_reg,man_a_norm_r_6_sv2v_reg,man_a_norm_r_5_sv2v_reg,
  man_a_norm_r_4_sv2v_reg,man_a_norm_r_3_sv2v_reg,man_a_norm_r_2_sv2v_reg,
  man_a_norm_r_1_sv2v_reg,man_a_norm_r_0_sv2v_reg,v_1_r_sv2v_reg,man_b_norm_r_23_sv2v_reg,
  man_b_norm_r_22_sv2v_reg,man_b_norm_r_21_sv2v_reg,man_b_norm_r_20_sv2v_reg,
  man_b_norm_r_19_sv2v_reg,man_b_norm_r_18_sv2v_reg,man_b_norm_r_17_sv2v_reg,
  man_b_norm_r_16_sv2v_reg,man_b_norm_r_15_sv2v_reg,man_b_norm_r_14_sv2v_reg,man_b_norm_r_13_sv2v_reg,
  man_b_norm_r_12_sv2v_reg,man_b_norm_r_11_sv2v_reg,man_b_norm_r_10_sv2v_reg,
  man_b_norm_r_9_sv2v_reg,man_b_norm_r_8_sv2v_reg,man_b_norm_r_7_sv2v_reg,
  man_b_norm_r_6_sv2v_reg,man_b_norm_r_5_sv2v_reg,man_b_norm_r_4_sv2v_reg,
  man_b_norm_r_3_sv2v_reg,man_b_norm_r_2_sv2v_reg,man_b_norm_r_1_sv2v_reg,man_b_norm_r_0_sv2v_reg,
  final_sign_1_r_sv2v_reg,exp_sum_unbiased_1_r_7_sv2v_reg,
  exp_sum_unbiased_1_r_6_sv2v_reg,exp_sum_unbiased_1_r_5_sv2v_reg,exp_sum_unbiased_1_r_4_sv2v_reg,
  exp_sum_unbiased_1_r_3_sv2v_reg,exp_sum_unbiased_1_r_2_sv2v_reg,
  exp_sum_unbiased_1_r_1_sv2v_reg,exp_sum_unbiased_1_r_0_sv2v_reg,a_sig_nan_1_r_sv2v_reg,
  b_sig_nan_1_r_sv2v_reg,a_nan_1_r_sv2v_reg,b_nan_1_r_sv2v_reg,a_infty_1_r_sv2v_reg,
  b_infty_1_r_sv2v_reg,a_zero_1_r_sv2v_reg,b_zero_1_r_sv2v_reg,a_denormal_1_r_sv2v_reg,
  b_denormal_1_r_sv2v_reg,exp_sum_1_r_8_sv2v_reg,exp_sum_1_r_7_sv2v_reg,exp_sum_2_r_8_sv2v_reg,
  exp_sum_2_r_7_sv2v_reg,v_2_r_sv2v_reg,final_sign_2_r_sv2v_reg,
  man_prod_2_r_47_sv2v_reg,man_prod_2_r_46_sv2v_reg,man_prod_2_r_45_sv2v_reg,man_prod_2_r_44_sv2v_reg,
  man_prod_2_r_43_sv2v_reg,man_prod_2_r_42_sv2v_reg,man_prod_2_r_41_sv2v_reg,
  man_prod_2_r_40_sv2v_reg,man_prod_2_r_39_sv2v_reg,man_prod_2_r_38_sv2v_reg,
  man_prod_2_r_37_sv2v_reg,man_prod_2_r_36_sv2v_reg,man_prod_2_r_35_sv2v_reg,
  man_prod_2_r_34_sv2v_reg,man_prod_2_r_33_sv2v_reg,man_prod_2_r_32_sv2v_reg,
  man_prod_2_r_31_sv2v_reg,man_prod_2_r_30_sv2v_reg,man_prod_2_r_29_sv2v_reg,man_prod_2_r_28_sv2v_reg,
  man_prod_2_r_27_sv2v_reg,man_prod_2_r_26_sv2v_reg,man_prod_2_r_25_sv2v_reg,
  man_prod_2_r_24_sv2v_reg,man_prod_2_r_23_sv2v_reg,man_prod_2_r_22_sv2v_reg,
  man_prod_2_r_21_sv2v_reg,man_prod_2_r_20_sv2v_reg,man_prod_2_r_19_sv2v_reg,
  man_prod_2_r_18_sv2v_reg,man_prod_2_r_17_sv2v_reg,man_prod_2_r_16_sv2v_reg,
  man_prod_2_r_15_sv2v_reg,man_prod_2_r_14_sv2v_reg,man_prod_2_r_13_sv2v_reg,man_prod_2_r_12_sv2v_reg,
  man_prod_2_r_11_sv2v_reg,man_prod_2_r_10_sv2v_reg,man_prod_2_r_9_sv2v_reg,
  man_prod_2_r_8_sv2v_reg,man_prod_2_r_7_sv2v_reg,man_prod_2_r_6_sv2v_reg,
  man_prod_2_r_5_sv2v_reg,man_prod_2_r_4_sv2v_reg,man_prod_2_r_3_sv2v_reg,
  man_prod_2_r_2_sv2v_reg,man_prod_2_r_1_sv2v_reg,man_prod_2_r_0_sv2v_reg,
  exp_sum_unbiased_2_r_7_sv2v_reg,exp_sum_unbiased_2_r_6_sv2v_reg,exp_sum_unbiased_2_r_5_sv2v_reg,
  exp_sum_unbiased_2_r_4_sv2v_reg,exp_sum_unbiased_2_r_3_sv2v_reg,
  exp_sum_unbiased_2_r_2_sv2v_reg,exp_sum_unbiased_2_r_1_sv2v_reg,exp_sum_unbiased_2_r_0_sv2v_reg,
  a_sig_nan_2_r_sv2v_reg,b_sig_nan_2_r_sv2v_reg,a_nan_2_r_sv2v_reg,b_nan_2_r_sv2v_reg,
  a_infty_2_r_sv2v_reg,b_infty_2_r_sv2v_reg,a_zero_2_r_sv2v_reg,b_zero_2_r_sv2v_reg,
  a_denormal_2_r_sv2v_reg,b_denormal_2_r_sv2v_reg,exp_sum_3_r_8_sv2v_reg,
  exp_sum_3_r_7_sv2v_reg,v_o_sv2v_reg,final_exp_3_r_8_sv2v_reg,pre_roundup_3_r_30_sv2v_reg,
  pre_roundup_3_r_29_sv2v_reg,pre_roundup_3_r_28_sv2v_reg,pre_roundup_3_r_27_sv2v_reg,
  pre_roundup_3_r_26_sv2v_reg,pre_roundup_3_r_25_sv2v_reg,pre_roundup_3_r_24_sv2v_reg,
  pre_roundup_3_r_23_sv2v_reg,pre_roundup_3_r_22_sv2v_reg,
  pre_roundup_3_r_21_sv2v_reg,pre_roundup_3_r_20_sv2v_reg,pre_roundup_3_r_19_sv2v_reg,
  pre_roundup_3_r_18_sv2v_reg,pre_roundup_3_r_17_sv2v_reg,pre_roundup_3_r_16_sv2v_reg,
  pre_roundup_3_r_15_sv2v_reg,pre_roundup_3_r_14_sv2v_reg,pre_roundup_3_r_13_sv2v_reg,
  pre_roundup_3_r_12_sv2v_reg,pre_roundup_3_r_11_sv2v_reg,pre_roundup_3_r_10_sv2v_reg,
  pre_roundup_3_r_9_sv2v_reg,pre_roundup_3_r_8_sv2v_reg,pre_roundup_3_r_7_sv2v_reg,
  pre_roundup_3_r_6_sv2v_reg,pre_roundup_3_r_5_sv2v_reg,pre_roundup_3_r_4_sv2v_reg,
  pre_roundup_3_r_3_sv2v_reg,pre_roundup_3_r_2_sv2v_reg,pre_roundup_3_r_1_sv2v_reg,
  pre_roundup_3_r_0_sv2v_reg,round_up_3_r_sv2v_reg,final_sign_3_r_sv2v_reg,
  a_sig_nan_3_r_sv2v_reg,b_sig_nan_3_r_sv2v_reg,a_nan_3_r_sv2v_reg,b_nan_3_r_sv2v_reg,
  a_infty_3_r_sv2v_reg,b_infty_3_r_sv2v_reg,a_zero_3_r_sv2v_reg,b_zero_3_r_sv2v_reg,
  a_denormal_3_r_sv2v_reg,b_denormal_3_r_sv2v_reg;
  assign man_a_norm_r[23] = man_a_norm_r_23_sv2v_reg;
  assign man_a_norm_r[22] = man_a_norm_r_22_sv2v_reg;
  assign man_a_norm_r[21] = man_a_norm_r_21_sv2v_reg;
  assign man_a_norm_r[20] = man_a_norm_r_20_sv2v_reg;
  assign man_a_norm_r[19] = man_a_norm_r_19_sv2v_reg;
  assign man_a_norm_r[18] = man_a_norm_r_18_sv2v_reg;
  assign man_a_norm_r[17] = man_a_norm_r_17_sv2v_reg;
  assign man_a_norm_r[16] = man_a_norm_r_16_sv2v_reg;
  assign man_a_norm_r[15] = man_a_norm_r_15_sv2v_reg;
  assign man_a_norm_r[14] = man_a_norm_r_14_sv2v_reg;
  assign man_a_norm_r[13] = man_a_norm_r_13_sv2v_reg;
  assign man_a_norm_r[12] = man_a_norm_r_12_sv2v_reg;
  assign man_a_norm_r[11] = man_a_norm_r_11_sv2v_reg;
  assign man_a_norm_r[10] = man_a_norm_r_10_sv2v_reg;
  assign man_a_norm_r[9] = man_a_norm_r_9_sv2v_reg;
  assign man_a_norm_r[8] = man_a_norm_r_8_sv2v_reg;
  assign man_a_norm_r[7] = man_a_norm_r_7_sv2v_reg;
  assign man_a_norm_r[6] = man_a_norm_r_6_sv2v_reg;
  assign man_a_norm_r[5] = man_a_norm_r_5_sv2v_reg;
  assign man_a_norm_r[4] = man_a_norm_r_4_sv2v_reg;
  assign man_a_norm_r[3] = man_a_norm_r_3_sv2v_reg;
  assign man_a_norm_r[2] = man_a_norm_r_2_sv2v_reg;
  assign man_a_norm_r[1] = man_a_norm_r_1_sv2v_reg;
  assign man_a_norm_r[0] = man_a_norm_r_0_sv2v_reg;
  assign v_1_r = v_1_r_sv2v_reg;
  assign man_b_norm_r[23] = man_b_norm_r_23_sv2v_reg;
  assign man_b_norm_r[22] = man_b_norm_r_22_sv2v_reg;
  assign man_b_norm_r[21] = man_b_norm_r_21_sv2v_reg;
  assign man_b_norm_r[20] = man_b_norm_r_20_sv2v_reg;
  assign man_b_norm_r[19] = man_b_norm_r_19_sv2v_reg;
  assign man_b_norm_r[18] = man_b_norm_r_18_sv2v_reg;
  assign man_b_norm_r[17] = man_b_norm_r_17_sv2v_reg;
  assign man_b_norm_r[16] = man_b_norm_r_16_sv2v_reg;
  assign man_b_norm_r[15] = man_b_norm_r_15_sv2v_reg;
  assign man_b_norm_r[14] = man_b_norm_r_14_sv2v_reg;
  assign man_b_norm_r[13] = man_b_norm_r_13_sv2v_reg;
  assign man_b_norm_r[12] = man_b_norm_r_12_sv2v_reg;
  assign man_b_norm_r[11] = man_b_norm_r_11_sv2v_reg;
  assign man_b_norm_r[10] = man_b_norm_r_10_sv2v_reg;
  assign man_b_norm_r[9] = man_b_norm_r_9_sv2v_reg;
  assign man_b_norm_r[8] = man_b_norm_r_8_sv2v_reg;
  assign man_b_norm_r[7] = man_b_norm_r_7_sv2v_reg;
  assign man_b_norm_r[6] = man_b_norm_r_6_sv2v_reg;
  assign man_b_norm_r[5] = man_b_norm_r_5_sv2v_reg;
  assign man_b_norm_r[4] = man_b_norm_r_4_sv2v_reg;
  assign man_b_norm_r[3] = man_b_norm_r_3_sv2v_reg;
  assign man_b_norm_r[2] = man_b_norm_r_2_sv2v_reg;
  assign man_b_norm_r[1] = man_b_norm_r_1_sv2v_reg;
  assign man_b_norm_r[0] = man_b_norm_r_0_sv2v_reg;
  assign final_sign_1_r = final_sign_1_r_sv2v_reg;
  assign exp_sum_unbiased_1_r[7] = exp_sum_unbiased_1_r_7_sv2v_reg;
  assign exp_sum_unbiased_1_r[6] = exp_sum_unbiased_1_r_6_sv2v_reg;
  assign exp_sum_unbiased_1_r[5] = exp_sum_unbiased_1_r_5_sv2v_reg;
  assign exp_sum_unbiased_1_r[4] = exp_sum_unbiased_1_r_4_sv2v_reg;
  assign exp_sum_unbiased_1_r[3] = exp_sum_unbiased_1_r_3_sv2v_reg;
  assign exp_sum_unbiased_1_r[2] = exp_sum_unbiased_1_r_2_sv2v_reg;
  assign exp_sum_unbiased_1_r[1] = exp_sum_unbiased_1_r_1_sv2v_reg;
  assign exp_sum_unbiased_1_r[0] = exp_sum_unbiased_1_r_0_sv2v_reg;
  assign a_sig_nan_1_r = a_sig_nan_1_r_sv2v_reg;
  assign b_sig_nan_1_r = b_sig_nan_1_r_sv2v_reg;
  assign a_nan_1_r = a_nan_1_r_sv2v_reg;
  assign b_nan_1_r = b_nan_1_r_sv2v_reg;
  assign a_infty_1_r = a_infty_1_r_sv2v_reg;
  assign b_infty_1_r = b_infty_1_r_sv2v_reg;
  assign a_zero_1_r = a_zero_1_r_sv2v_reg;
  assign b_zero_1_r = b_zero_1_r_sv2v_reg;
  assign a_denormal_1_r = a_denormal_1_r_sv2v_reg;
  assign b_denormal_1_r = b_denormal_1_r_sv2v_reg;
  assign exp_sum_1_r[8] = exp_sum_1_r_8_sv2v_reg;
  assign exp_sum_1_r[7] = exp_sum_1_r_7_sv2v_reg;
  assign exp_sum_2_r[8] = exp_sum_2_r_8_sv2v_reg;
  assign exp_sum_2_r[7] = exp_sum_2_r_7_sv2v_reg;
  assign v_2_r = v_2_r_sv2v_reg;
  assign final_sign_2_r = final_sign_2_r_sv2v_reg;
  assign man_prod_2_r[47] = man_prod_2_r_47_sv2v_reg;
  assign man_prod_2_r[46] = man_prod_2_r_46_sv2v_reg;
  assign man_prod_2_r[45] = man_prod_2_r_45_sv2v_reg;
  assign man_prod_2_r[44] = man_prod_2_r_44_sv2v_reg;
  assign man_prod_2_r[43] = man_prod_2_r_43_sv2v_reg;
  assign man_prod_2_r[42] = man_prod_2_r_42_sv2v_reg;
  assign man_prod_2_r[41] = man_prod_2_r_41_sv2v_reg;
  assign man_prod_2_r[40] = man_prod_2_r_40_sv2v_reg;
  assign man_prod_2_r[39] = man_prod_2_r_39_sv2v_reg;
  assign man_prod_2_r[38] = man_prod_2_r_38_sv2v_reg;
  assign man_prod_2_r[37] = man_prod_2_r_37_sv2v_reg;
  assign man_prod_2_r[36] = man_prod_2_r_36_sv2v_reg;
  assign man_prod_2_r[35] = man_prod_2_r_35_sv2v_reg;
  assign man_prod_2_r[34] = man_prod_2_r_34_sv2v_reg;
  assign man_prod_2_r[33] = man_prod_2_r_33_sv2v_reg;
  assign man_prod_2_r[32] = man_prod_2_r_32_sv2v_reg;
  assign man_prod_2_r[31] = man_prod_2_r_31_sv2v_reg;
  assign man_prod_2_r[30] = man_prod_2_r_30_sv2v_reg;
  assign man_prod_2_r[29] = man_prod_2_r_29_sv2v_reg;
  assign man_prod_2_r[28] = man_prod_2_r_28_sv2v_reg;
  assign man_prod_2_r[27] = man_prod_2_r_27_sv2v_reg;
  assign man_prod_2_r[26] = man_prod_2_r_26_sv2v_reg;
  assign man_prod_2_r[25] = man_prod_2_r_25_sv2v_reg;
  assign man_prod_2_r[24] = man_prod_2_r_24_sv2v_reg;
  assign man_prod_2_r[23] = man_prod_2_r_23_sv2v_reg;
  assign man_prod_2_r[22] = man_prod_2_r_22_sv2v_reg;
  assign man_prod_2_r[21] = man_prod_2_r_21_sv2v_reg;
  assign man_prod_2_r[20] = man_prod_2_r_20_sv2v_reg;
  assign man_prod_2_r[19] = man_prod_2_r_19_sv2v_reg;
  assign man_prod_2_r[18] = man_prod_2_r_18_sv2v_reg;
  assign man_prod_2_r[17] = man_prod_2_r_17_sv2v_reg;
  assign man_prod_2_r[16] = man_prod_2_r_16_sv2v_reg;
  assign man_prod_2_r[15] = man_prod_2_r_15_sv2v_reg;
  assign man_prod_2_r[14] = man_prod_2_r_14_sv2v_reg;
  assign man_prod_2_r[13] = man_prod_2_r_13_sv2v_reg;
  assign man_prod_2_r[12] = man_prod_2_r_12_sv2v_reg;
  assign man_prod_2_r[11] = man_prod_2_r_11_sv2v_reg;
  assign man_prod_2_r[10] = man_prod_2_r_10_sv2v_reg;
  assign man_prod_2_r[9] = man_prod_2_r_9_sv2v_reg;
  assign man_prod_2_r[8] = man_prod_2_r_8_sv2v_reg;
  assign man_prod_2_r[7] = man_prod_2_r_7_sv2v_reg;
  assign man_prod_2_r[6] = man_prod_2_r_6_sv2v_reg;
  assign man_prod_2_r[5] = man_prod_2_r_5_sv2v_reg;
  assign man_prod_2_r[4] = man_prod_2_r_4_sv2v_reg;
  assign man_prod_2_r[3] = man_prod_2_r_3_sv2v_reg;
  assign man_prod_2_r[2] = man_prod_2_r_2_sv2v_reg;
  assign man_prod_2_r[1] = man_prod_2_r_1_sv2v_reg;
  assign man_prod_2_r[0] = man_prod_2_r_0_sv2v_reg;
  assign exp_sum_unbiased_2_r[7] = exp_sum_unbiased_2_r_7_sv2v_reg;
  assign exp_sum_unbiased_2_r[6] = exp_sum_unbiased_2_r_6_sv2v_reg;
  assign exp_sum_unbiased_2_r[5] = exp_sum_unbiased_2_r_5_sv2v_reg;
  assign exp_sum_unbiased_2_r[4] = exp_sum_unbiased_2_r_4_sv2v_reg;
  assign exp_sum_unbiased_2_r[3] = exp_sum_unbiased_2_r_3_sv2v_reg;
  assign exp_sum_unbiased_2_r[2] = exp_sum_unbiased_2_r_2_sv2v_reg;
  assign exp_sum_unbiased_2_r[1] = exp_sum_unbiased_2_r_1_sv2v_reg;
  assign exp_sum_unbiased_2_r[0] = exp_sum_unbiased_2_r_0_sv2v_reg;
  assign a_sig_nan_2_r = a_sig_nan_2_r_sv2v_reg;
  assign b_sig_nan_2_r = b_sig_nan_2_r_sv2v_reg;
  assign a_nan_2_r = a_nan_2_r_sv2v_reg;
  assign b_nan_2_r = b_nan_2_r_sv2v_reg;
  assign a_infty_2_r = a_infty_2_r_sv2v_reg;
  assign b_infty_2_r = b_infty_2_r_sv2v_reg;
  assign a_zero_2_r = a_zero_2_r_sv2v_reg;
  assign b_zero_2_r = b_zero_2_r_sv2v_reg;
  assign a_denormal_2_r = a_denormal_2_r_sv2v_reg;
  assign b_denormal_2_r = b_denormal_2_r_sv2v_reg;
  assign exp_sum_3_r[8] = exp_sum_3_r_8_sv2v_reg;
  assign exp_sum_3_r[7] = exp_sum_3_r_7_sv2v_reg;
  assign v_o = v_o_sv2v_reg;
  assign final_exp_3_r[8] = final_exp_3_r_8_sv2v_reg;
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
  assign final_sign_3_r = final_sign_3_r_sv2v_reg;
  assign a_sig_nan_3_r = a_sig_nan_3_r_sv2v_reg;
  assign b_sig_nan_3_r = b_sig_nan_3_r_sv2v_reg;
  assign a_nan_3_r = a_nan_3_r_sv2v_reg;
  assign b_nan_3_r = b_nan_3_r_sv2v_reg;
  assign a_infty_3_r = a_infty_3_r_sv2v_reg;
  assign b_infty_3_r = b_infty_3_r_sv2v_reg;
  assign a_zero_3_r = a_zero_3_r_sv2v_reg;
  assign b_zero_3_r = b_zero_3_r_sv2v_reg;
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
    .man_zero_o(man_a_zero),
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
    .man_zero_o(man_b_zero),
    .denormal_o(b_denormal),
    .sign_o(sign_b),
    .exp_o(exp_b),
    .man_o(man_b)
  );


  bsg_mul_synth_width_p24
  mul_synth
  (
    .a_i(man_a_norm_r),
    .b_i(man_b_norm_r),
    .o(man_prod)
  );

  assign N98 = pre_roundup_3_r[29] | pre_roundup_3_r[30];
  assign N99 = pre_roundup_3_r[28] | N98;
  assign N100 = pre_roundup_3_r[27] | N99;
  assign N101 = pre_roundup_3_r[26] | N100;
  assign N102 = pre_roundup_3_r[25] | N101;
  assign N103 = pre_roundup_3_r[24] | N102;
  assign N104 = pre_roundup_3_r[23] | N103;
  assign N105 = ~N104;
  assign N106 = pre_roundup_3_r[29] & pre_roundup_3_r[30];
  assign N107 = pre_roundup_3_r[28] & N106;
  assign N108 = pre_roundup_3_r[27] & N107;
  assign N109 = pre_roundup_3_r[26] & N108;
  assign N110 = pre_roundup_3_r[25] & N109;
  assign N111 = pre_roundup_3_r[24] & N110;
  assign N112 = pre_roundup_3_r[23] & N111;
  assign N113 = exp_sum_3_r[7] & exp_sum_3_r[8];
  assign N114 = exp_sum_3_r[7] | exp_sum_3_r[8];
  assign N115 = ~N114;
  assign rounded = pre_roundup_3_r + round_up_3_r;
  assign final_exp = exp_sum_unbiased_2_r + man_prod_2_r[47];
  assign { N23, N22, N21, N20, N19, N18, N17, N16, N15 } = exp_a + exp_b;
  assign exp_sum = { N23, N22, N21, N20, N19, N18, N17, N16, N15 } + 1'b1;
  assign N27 = (N0)? 1'b1 : 
               (N2)? 1'b0 : 1'b0;
  assign N0 = N24;
  assign N28 = (N1)? 1'b0 : 
               (N30)? v_i : 
               (N26)? 1'b0 : 1'b0;
  assign N1 = reset_i;
  assign N34 = (N3)? 1'b1 : 
               (N8)? 1'b0 : 1'b0;
  assign N3 = N31;
  assign N35 = (N1)? 1'b0 : 
               (N36)? v_1_r : 
               (N33)? 1'b0 : 1'b0;
  assign N39 = (N4)? man_prod_2_r[23] : 
               (N38)? man_prod_2_r[22] : 1'b0;
  assign N4 = man_prod_2_r[47];
  assign round_up = (N5)? N39 : 
                    (N6)? N40 : 1'b0;
  assign N5 = sticky;
  assign N6 = N37;
  assign shifted_mantissa = (N4)? man_prod_2_r[46:24] : 
                            (N38)? man_prod_2_r[45:23] : 1'b0;
  assign N44 = (N7)? 1'b1 : 
               (N14)? 1'b0 : 1'b0;
  assign N7 = N41;
  assign N45 = (N1)? 1'b0 : 
               (N46)? v_2_r : 
               (N43)? 1'b0 : 1'b0;
  assign N67 = (N9)? 1'b0 : 
               (N10)? final_sign_3_r : 1'b0;
  assign N9 = b_zero_3_r;
  assign N10 = N66;
  assign N69 = (N11)? 1'b0 : 
               (N12)? final_sign_3_r : 1'b0;
  assign N11 = a_zero_3_r;
  assign N12 = N68;
  assign unimplemented_o = (N13)? 1'b0 : 
                           (N71)? 1'b0 : 
                           (N74)? 1'b0 : 
                           (N77)? 1'b0 : 
                           (N80)? 1'b0 : 
                           (N83)? 1'b0 : 
                           (N86)? 1'b1 : 
                           (N89)? 1'b0 : 
                           (N91)? 1'b0 : 
                           (N94)? 1'b0 : 
                           (N97)? 1'b0 : 
                           (N65)? 1'b0 : 1'b0;
  assign N13 = N47;
  assign invalid_o = (N13)? 1'b1 : 
                     (N71)? 1'b0 : 
                     (N74)? b_zero_3_r : 
                     (N77)? a_zero_3_r : 
                     (N80)? 1'b0 : 
                     (N83)? 1'b0 : 
                     (N86)? 1'b0 : 
                     (N89)? 1'b0 : 
                     (N91)? 1'b0 : 
                     (N94)? 1'b0 : 
                     (N97)? 1'b0 : 
                     (N65)? 1'b0 : 1'b0;
  assign overflow_o = (N13)? 1'b0 : 
                      (N71)? 1'b0 : 
                      (N74)? 1'b0 : 
                      (N77)? 1'b0 : 
                      (N80)? 1'b0 : 
                      (N83)? 1'b0 : 
                      (N86)? 1'b0 : 
                      (N89)? 1'b0 : 
                      (N91)? 1'b1 : 
                      (N94)? 1'b1 : 
                      (N97)? 1'b0 : 
                      (N65)? 1'b0 : 1'b0;
  assign underflow_o = (N13)? 1'b0 : 
                       (N71)? 1'b0 : 
                       (N74)? 1'b0 : 
                       (N77)? 1'b0 : 
                       (N80)? 1'b0 : 
                       (N83)? 1'b1 : 
                       (N86)? 1'b0 : 
                       (N89)? 1'b1 : 
                       (N91)? 1'b0 : 
                       (N94)? 1'b0 : 
                       (N97)? 1'b1 : 
                       (N65)? 1'b0 : 1'b0;
  assign z_o = (N13)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N71)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N74)? { N67, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, b_zero_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N77)? { N69, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, a_zero_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N80)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N83)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N86)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N89)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N91)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N94)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N97)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N65)? { final_sign_3_r, rounded } : 1'b0;
  assign stall = v_o & N116;
  assign N116 = ~yumi_i;
  assign ready_o = N117 & en_i;
  assign N117 = ~stall;
  assign final_sign = sign_a ^ sign_b;
  assign exp_sum_unbiased[7] = ~exp_sum[7];
  assign N24 = N117 & en_i;
  assign N25 = N24 | reset_i;
  assign N26 = ~N25;
  assign N29 = ~reset_i;
  assign N30 = N24 & N29;
  assign N31 = N117 & en_i;
  assign N32 = N31 | reset_i;
  assign N33 = ~N32;
  assign N36 = N31 & N29;
  assign sticky = N137 | man_prod_2_r[0];
  assign N137 = N136 | man_prod_2_r[1];
  assign N136 = N135 | man_prod_2_r[2];
  assign N135 = N134 | man_prod_2_r[3];
  assign N134 = N133 | man_prod_2_r[4];
  assign N133 = N132 | man_prod_2_r[5];
  assign N132 = N131 | man_prod_2_r[6];
  assign N131 = N130 | man_prod_2_r[7];
  assign N130 = N129 | man_prod_2_r[8];
  assign N129 = N128 | man_prod_2_r[9];
  assign N128 = N127 | man_prod_2_r[10];
  assign N127 = N126 | man_prod_2_r[11];
  assign N126 = N125 | man_prod_2_r[12];
  assign N125 = N124 | man_prod_2_r[13];
  assign N124 = N123 | man_prod_2_r[14];
  assign N123 = N122 | man_prod_2_r[15];
  assign N122 = N121 | man_prod_2_r[16];
  assign N121 = N120 | man_prod_2_r[17];
  assign N120 = N119 | man_prod_2_r[18];
  assign N119 = N118 | man_prod_2_r[19];
  assign N118 = man_prod_2_r[21] | man_prod_2_r[20];
  assign N37 = ~sticky;
  assign N38 = ~man_prod_2_r[47];
  assign N40 = man_prod_2_r[23] & N139;
  assign N139 = man_prod_2_r[22] | N138;
  assign N138 = man_prod_2_r[47] & man_prod_2_r[24];
  assign N41 = N117 & en_i;
  assign N42 = N41 | reset_i;
  assign N43 = ~N42;
  assign N46 = N41 & N29;
  assign carry_into_exp = N161 & pre_roundup_3_r[0];
  assign N161 = N160 & pre_roundup_3_r[1];
  assign N160 = N159 & pre_roundup_3_r[2];
  assign N159 = N158 & pre_roundup_3_r[3];
  assign N158 = N157 & pre_roundup_3_r[4];
  assign N157 = N156 & pre_roundup_3_r[5];
  assign N156 = N155 & pre_roundup_3_r[6];
  assign N155 = N154 & pre_roundup_3_r[7];
  assign N154 = N153 & pre_roundup_3_r[8];
  assign N153 = N152 & pre_roundup_3_r[9];
  assign N152 = N151 & pre_roundup_3_r[10];
  assign N151 = N150 & pre_roundup_3_r[11];
  assign N150 = N149 & pre_roundup_3_r[12];
  assign N149 = N148 & pre_roundup_3_r[13];
  assign N148 = N147 & pre_roundup_3_r[14];
  assign N147 = N146 & pre_roundup_3_r[15];
  assign N146 = N145 & pre_roundup_3_r[16];
  assign N145 = N144 & pre_roundup_3_r[17];
  assign N144 = N143 & pre_roundup_3_r[18];
  assign N143 = N142 & pre_roundup_3_r[19];
  assign N142 = N141 & pre_roundup_3_r[20];
  assign N141 = N140 & pre_roundup_3_r[21];
  assign N140 = round_up_3_r & pre_roundup_3_r[22];
  assign N47 = a_sig_nan_3_r | b_sig_nan_3_r;
  assign N48 = a_nan_3_r | b_nan_3_r;
  assign N49 = a_zero_3_r | b_zero_3_r;
  assign N50 = a_denormal_3_r & b_denormal_3_r;
  assign N51 = a_denormal_3_r | b_denormal_3_r;
  assign N52 = N113 | final_exp_3_r[8];
  assign N53 = N112 & N162;
  assign N162 = pre_roundup_3_r[23] | carry_into_exp;
  assign N54 = N105 & N163;
  assign N163 = ~carry_into_exp;
  assign N55 = N48 | N47;
  assign N56 = a_infty_3_r | N55;
  assign N57 = b_infty_3_r | N56;
  assign N58 = N49 | N57;
  assign N59 = N50 | N58;
  assign N60 = N51 | N59;
  assign N61 = N115 | N60;
  assign N62 = N52 | N61;
  assign N63 = N53 | N62;
  assign N64 = N54 | N63;
  assign N65 = ~N64;
  assign N66 = ~b_zero_3_r;
  assign N68 = ~a_zero_3_r;
  assign N70 = ~N47;
  assign N71 = N48 & N70;
  assign N72 = ~N48;
  assign N73 = N70 & N72;
  assign N74 = a_infty_3_r & N73;
  assign N75 = ~a_infty_3_r;
  assign N76 = N73 & N75;
  assign N77 = b_infty_3_r & N76;
  assign N78 = ~b_infty_3_r;
  assign N79 = N76 & N78;
  assign N80 = N49 & N79;
  assign N81 = ~N49;
  assign N82 = N79 & N81;
  assign N83 = N50 & N82;
  assign N84 = ~N50;
  assign N85 = N82 & N84;
  assign N86 = N51 & N85;
  assign N87 = ~N51;
  assign N88 = N85 & N87;
  assign N89 = N115 & N88;
  assign N90 = N88 & N114;
  assign N91 = N52 & N90;
  assign N92 = ~N52;
  assign N93 = N90 & N92;
  assign N94 = N53 & N93;
  assign N95 = ~N53;
  assign N96 = N93 & N95;
  assign N97 = N54 & N96;
  assign N2 = ~N24;
  assign N8 = ~N31;
  assign N14 = ~N41;

  always @(posedge clk_i) begin
    if(N28) begin
      man_a_norm_r_23_sv2v_reg <= 1'b1;
      man_a_norm_r_22_sv2v_reg <= man_a[22];
      man_a_norm_r_21_sv2v_reg <= man_a[21];
      man_a_norm_r_20_sv2v_reg <= man_a[20];
      man_a_norm_r_19_sv2v_reg <= man_a[19];
      man_a_norm_r_18_sv2v_reg <= man_a[18];
      man_a_norm_r_17_sv2v_reg <= man_a[17];
      man_a_norm_r_16_sv2v_reg <= man_a[16];
      man_a_norm_r_15_sv2v_reg <= man_a[15];
      man_a_norm_r_14_sv2v_reg <= man_a[14];
      man_a_norm_r_13_sv2v_reg <= man_a[13];
      man_a_norm_r_12_sv2v_reg <= man_a[12];
      man_a_norm_r_11_sv2v_reg <= man_a[11];
      man_a_norm_r_10_sv2v_reg <= man_a[10];
      man_a_norm_r_9_sv2v_reg <= man_a[9];
      man_a_norm_r_8_sv2v_reg <= man_a[8];
      man_a_norm_r_7_sv2v_reg <= man_a[7];
      man_a_norm_r_6_sv2v_reg <= man_a[6];
      man_a_norm_r_5_sv2v_reg <= man_a[5];
      man_a_norm_r_4_sv2v_reg <= man_a[4];
      man_a_norm_r_3_sv2v_reg <= man_a[3];
      man_a_norm_r_2_sv2v_reg <= man_a[2];
      man_a_norm_r_1_sv2v_reg <= man_a[1];
      man_a_norm_r_0_sv2v_reg <= man_a[0];
      man_b_norm_r_23_sv2v_reg <= 1'b1;
      man_b_norm_r_22_sv2v_reg <= man_b[22];
      man_b_norm_r_21_sv2v_reg <= man_b[21];
      man_b_norm_r_20_sv2v_reg <= man_b[20];
      man_b_norm_r_19_sv2v_reg <= man_b[19];
      man_b_norm_r_18_sv2v_reg <= man_b[18];
      man_b_norm_r_17_sv2v_reg <= man_b[17];
      man_b_norm_r_16_sv2v_reg <= man_b[16];
      man_b_norm_r_15_sv2v_reg <= man_b[15];
      man_b_norm_r_14_sv2v_reg <= man_b[14];
      man_b_norm_r_13_sv2v_reg <= man_b[13];
      man_b_norm_r_12_sv2v_reg <= man_b[12];
      man_b_norm_r_11_sv2v_reg <= man_b[11];
      man_b_norm_r_10_sv2v_reg <= man_b[10];
      man_b_norm_r_9_sv2v_reg <= man_b[9];
      man_b_norm_r_8_sv2v_reg <= man_b[8];
      man_b_norm_r_7_sv2v_reg <= man_b[7];
      man_b_norm_r_6_sv2v_reg <= man_b[6];
      man_b_norm_r_5_sv2v_reg <= man_b[5];
      man_b_norm_r_4_sv2v_reg <= man_b[4];
      man_b_norm_r_3_sv2v_reg <= man_b[3];
      man_b_norm_r_2_sv2v_reg <= man_b[2];
      man_b_norm_r_1_sv2v_reg <= man_b[1];
      man_b_norm_r_0_sv2v_reg <= man_b[0];
      final_sign_1_r_sv2v_reg <= final_sign;
      exp_sum_unbiased_1_r_7_sv2v_reg <= exp_sum_unbiased[7];
      exp_sum_unbiased_1_r_6_sv2v_reg <= exp_sum[6];
      exp_sum_unbiased_1_r_5_sv2v_reg <= exp_sum[5];
      exp_sum_unbiased_1_r_4_sv2v_reg <= exp_sum[4];
      exp_sum_unbiased_1_r_3_sv2v_reg <= exp_sum[3];
      exp_sum_unbiased_1_r_2_sv2v_reg <= exp_sum[2];
      exp_sum_unbiased_1_r_1_sv2v_reg <= exp_sum[1];
      exp_sum_unbiased_1_r_0_sv2v_reg <= exp_sum[0];
      a_sig_nan_1_r_sv2v_reg <= a_sig_nan;
      b_sig_nan_1_r_sv2v_reg <= b_sig_nan;
      a_nan_1_r_sv2v_reg <= a_nan;
      b_nan_1_r_sv2v_reg <= b_nan;
      a_infty_1_r_sv2v_reg <= a_infty;
      b_infty_1_r_sv2v_reg <= b_infty;
      a_zero_1_r_sv2v_reg <= a_zero;
      b_zero_1_r_sv2v_reg <= b_zero;
      a_denormal_1_r_sv2v_reg <= a_denormal;
      b_denormal_1_r_sv2v_reg <= b_denormal;
      exp_sum_1_r_8_sv2v_reg <= exp_sum[8];
      exp_sum_1_r_7_sv2v_reg <= exp_sum[7];
    end 
    if(reset_i) begin
      v_1_r_sv2v_reg <= 1'b0;
    end else if(N27) begin
      v_1_r_sv2v_reg <= v_i;
    end 
    if(N35) begin
      exp_sum_2_r_8_sv2v_reg <= exp_sum_1_r[8];
      exp_sum_2_r_7_sv2v_reg <= exp_sum_1_r[7];
      final_sign_2_r_sv2v_reg <= final_sign_1_r;
      man_prod_2_r_47_sv2v_reg <= man_prod[47];
      man_prod_2_r_46_sv2v_reg <= man_prod[46];
      man_prod_2_r_45_sv2v_reg <= man_prod[45];
      man_prod_2_r_44_sv2v_reg <= man_prod[44];
      man_prod_2_r_43_sv2v_reg <= man_prod[43];
      man_prod_2_r_42_sv2v_reg <= man_prod[42];
      man_prod_2_r_41_sv2v_reg <= man_prod[41];
      man_prod_2_r_40_sv2v_reg <= man_prod[40];
      man_prod_2_r_39_sv2v_reg <= man_prod[39];
      man_prod_2_r_38_sv2v_reg <= man_prod[38];
      man_prod_2_r_37_sv2v_reg <= man_prod[37];
      man_prod_2_r_36_sv2v_reg <= man_prod[36];
      man_prod_2_r_35_sv2v_reg <= man_prod[35];
      man_prod_2_r_34_sv2v_reg <= man_prod[34];
      man_prod_2_r_33_sv2v_reg <= man_prod[33];
      man_prod_2_r_32_sv2v_reg <= man_prod[32];
      man_prod_2_r_31_sv2v_reg <= man_prod[31];
      man_prod_2_r_30_sv2v_reg <= man_prod[30];
      man_prod_2_r_29_sv2v_reg <= man_prod[29];
      man_prod_2_r_28_sv2v_reg <= man_prod[28];
      man_prod_2_r_27_sv2v_reg <= man_prod[27];
      man_prod_2_r_26_sv2v_reg <= man_prod[26];
      man_prod_2_r_25_sv2v_reg <= man_prod[25];
      man_prod_2_r_24_sv2v_reg <= man_prod[24];
      man_prod_2_r_23_sv2v_reg <= man_prod[23];
      man_prod_2_r_22_sv2v_reg <= man_prod[22];
      man_prod_2_r_21_sv2v_reg <= man_prod[21];
      man_prod_2_r_20_sv2v_reg <= man_prod[20];
      man_prod_2_r_19_sv2v_reg <= man_prod[19];
      man_prod_2_r_18_sv2v_reg <= man_prod[18];
      man_prod_2_r_17_sv2v_reg <= man_prod[17];
      man_prod_2_r_16_sv2v_reg <= man_prod[16];
      man_prod_2_r_15_sv2v_reg <= man_prod[15];
      man_prod_2_r_14_sv2v_reg <= man_prod[14];
      man_prod_2_r_13_sv2v_reg <= man_prod[13];
      man_prod_2_r_12_sv2v_reg <= man_prod[12];
      man_prod_2_r_11_sv2v_reg <= man_prod[11];
      man_prod_2_r_10_sv2v_reg <= man_prod[10];
      man_prod_2_r_9_sv2v_reg <= man_prod[9];
      man_prod_2_r_8_sv2v_reg <= man_prod[8];
      man_prod_2_r_7_sv2v_reg <= man_prod[7];
      man_prod_2_r_6_sv2v_reg <= man_prod[6];
      man_prod_2_r_5_sv2v_reg <= man_prod[5];
      man_prod_2_r_4_sv2v_reg <= man_prod[4];
      man_prod_2_r_3_sv2v_reg <= man_prod[3];
      man_prod_2_r_2_sv2v_reg <= man_prod[2];
      man_prod_2_r_1_sv2v_reg <= man_prod[1];
      man_prod_2_r_0_sv2v_reg <= man_prod[0];
      exp_sum_unbiased_2_r_7_sv2v_reg <= exp_sum_unbiased_1_r[7];
      exp_sum_unbiased_2_r_6_sv2v_reg <= exp_sum_unbiased_1_r[6];
      exp_sum_unbiased_2_r_5_sv2v_reg <= exp_sum_unbiased_1_r[5];
      exp_sum_unbiased_2_r_4_sv2v_reg <= exp_sum_unbiased_1_r[4];
      exp_sum_unbiased_2_r_3_sv2v_reg <= exp_sum_unbiased_1_r[3];
      exp_sum_unbiased_2_r_2_sv2v_reg <= exp_sum_unbiased_1_r[2];
      exp_sum_unbiased_2_r_1_sv2v_reg <= exp_sum_unbiased_1_r[1];
      exp_sum_unbiased_2_r_0_sv2v_reg <= exp_sum_unbiased_1_r[0];
      a_sig_nan_2_r_sv2v_reg <= a_sig_nan_1_r;
      b_sig_nan_2_r_sv2v_reg <= b_sig_nan_1_r;
      a_nan_2_r_sv2v_reg <= a_nan_1_r;
      b_nan_2_r_sv2v_reg <= b_nan_1_r;
      a_infty_2_r_sv2v_reg <= a_infty_1_r;
      b_infty_2_r_sv2v_reg <= b_infty_1_r;
      a_zero_2_r_sv2v_reg <= a_zero_1_r;
      b_zero_2_r_sv2v_reg <= b_zero_1_r;
      a_denormal_2_r_sv2v_reg <= a_denormal_1_r;
      b_denormal_2_r_sv2v_reg <= b_denormal_1_r;
    end 
    if(reset_i) begin
      v_2_r_sv2v_reg <= 1'b0;
    end else if(N34) begin
      v_2_r_sv2v_reg <= v_1_r;
    end 
    if(N45) begin
      exp_sum_3_r_8_sv2v_reg <= exp_sum_2_r[8];
      exp_sum_3_r_7_sv2v_reg <= exp_sum_2_r[7];
      final_exp_3_r_8_sv2v_reg <= final_exp[8];
      pre_roundup_3_r_30_sv2v_reg <= final_exp[7];
      pre_roundup_3_r_29_sv2v_reg <= final_exp[6];
      pre_roundup_3_r_28_sv2v_reg <= final_exp[5];
      pre_roundup_3_r_27_sv2v_reg <= final_exp[4];
      pre_roundup_3_r_26_sv2v_reg <= final_exp[3];
      pre_roundup_3_r_25_sv2v_reg <= final_exp[2];
      pre_roundup_3_r_24_sv2v_reg <= final_exp[1];
      pre_roundup_3_r_23_sv2v_reg <= final_exp[0];
      pre_roundup_3_r_22_sv2v_reg <= shifted_mantissa[22];
      pre_roundup_3_r_21_sv2v_reg <= shifted_mantissa[21];
      pre_roundup_3_r_20_sv2v_reg <= shifted_mantissa[20];
      pre_roundup_3_r_19_sv2v_reg <= shifted_mantissa[19];
      pre_roundup_3_r_18_sv2v_reg <= shifted_mantissa[18];
      pre_roundup_3_r_17_sv2v_reg <= shifted_mantissa[17];
      pre_roundup_3_r_16_sv2v_reg <= shifted_mantissa[16];
      pre_roundup_3_r_15_sv2v_reg <= shifted_mantissa[15];
      pre_roundup_3_r_14_sv2v_reg <= shifted_mantissa[14];
      pre_roundup_3_r_13_sv2v_reg <= shifted_mantissa[13];
      pre_roundup_3_r_12_sv2v_reg <= shifted_mantissa[12];
      pre_roundup_3_r_11_sv2v_reg <= shifted_mantissa[11];
      pre_roundup_3_r_10_sv2v_reg <= shifted_mantissa[10];
      pre_roundup_3_r_9_sv2v_reg <= shifted_mantissa[9];
      pre_roundup_3_r_8_sv2v_reg <= shifted_mantissa[8];
      pre_roundup_3_r_7_sv2v_reg <= shifted_mantissa[7];
      pre_roundup_3_r_6_sv2v_reg <= shifted_mantissa[6];
      pre_roundup_3_r_5_sv2v_reg <= shifted_mantissa[5];
      pre_roundup_3_r_4_sv2v_reg <= shifted_mantissa[4];
      pre_roundup_3_r_3_sv2v_reg <= shifted_mantissa[3];
      pre_roundup_3_r_2_sv2v_reg <= shifted_mantissa[2];
      pre_roundup_3_r_1_sv2v_reg <= shifted_mantissa[1];
      pre_roundup_3_r_0_sv2v_reg <= shifted_mantissa[0];
      round_up_3_r_sv2v_reg <= round_up;
      final_sign_3_r_sv2v_reg <= final_sign_2_r;
      a_sig_nan_3_r_sv2v_reg <= a_sig_nan_2_r;
      b_sig_nan_3_r_sv2v_reg <= b_sig_nan_2_r;
      a_nan_3_r_sv2v_reg <= a_nan_2_r;
      b_nan_3_r_sv2v_reg <= b_nan_2_r;
      a_infty_3_r_sv2v_reg <= a_infty_2_r;
      b_infty_3_r_sv2v_reg <= b_infty_2_r;
      a_zero_3_r_sv2v_reg <= a_zero_2_r;
      b_zero_3_r_sv2v_reg <= b_zero_2_r;
      a_denormal_3_r_sv2v_reg <= a_denormal_2_r;
      b_denormal_3_r_sv2v_reg <= b_denormal_2_r;
    end 
    if(reset_i) begin
      v_o_sv2v_reg <= 1'b0;
    end else if(N44) begin
      v_o_sv2v_reg <= v_2_r;
    end 
  end


endmodule

