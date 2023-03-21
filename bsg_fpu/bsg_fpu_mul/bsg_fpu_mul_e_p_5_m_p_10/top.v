

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

  input [15:0] a_i;
  input [15:0] b_i;
  output [15:0] z_o;
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



module bsg_fpu_preprocess_e_p5_m_p10
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

  input [15:0] a_i;
  output [4:0] exp_o;
  output [9:0] man_o;
  output zero_o;
  output nan_o;
  output sig_nan_o;
  output infty_o;
  output exp_zero_o;
  output man_zero_o;
  output denormal_o;
  output sign_o;
  wire [4:0] exp_o;
  wire [9:0] man_o;
  wire zero_o,nan_o,sig_nan_o,infty_o,exp_zero_o,man_zero_o,denormal_o,sign_o,a_i_15_,
  N0,N1,N2,N3,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N19;
  assign a_i_15_ = a_i[15];
  assign sign_o = a_i_15_;
  assign exp_o[4] = a_i[14];
  assign exp_o[3] = a_i[13];
  assign exp_o[2] = a_i[12];
  assign exp_o[1] = a_i[11];
  assign exp_o[0] = a_i[10];
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
  assign N0 = exp_o[3] | exp_o[4];
  assign N1 = exp_o[2] | N0;
  assign N2 = exp_o[1] | N1;
  assign N3 = exp_o[0] | N2;
  assign exp_zero_o = ~N3;
  assign N5 = exp_o[3] & exp_o[4];
  assign N6 = exp_o[2] & N5;
  assign N7 = exp_o[1] & N6;
  assign N8 = exp_o[0] & N7;
  assign N9 = man_o[8] | man_o[9];
  assign N10 = man_o[7] | N9;
  assign N11 = man_o[6] | N10;
  assign N12 = man_o[5] | N11;
  assign N13 = man_o[4] | N12;
  assign N14 = man_o[3] | N13;
  assign N15 = man_o[2] | N14;
  assign N16 = man_o[1] | N15;
  assign N17 = man_o[0] | N16;
  assign man_zero_o = ~N17;
  assign zero_o = exp_zero_o & man_zero_o;
  assign nan_o = N8 & N17;
  assign sig_nan_o = nan_o & N19;
  assign N19 = ~man_o[9];
  assign infty_o = N8 & man_zero_o;
  assign denormal_o = exp_zero_o & N17;

endmodule



module bsg_mul_synth_width_p11
(
  a_i,
  b_i,
  o
);

  input [10:0] a_i;
  input [10:0] b_i;
  output [21:0] o;
  wire [21:0] o;
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

  input [15:0] a_i;
  input [15:0] b_i;
  output [15:0] z_o;
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
  wire [15:0] z_o;
  wire ready_o,v_o,unimplemented_o,invalid_o,overflow_o,underflow_o,N0,N1,N3,N4,N5,N6,
  N7,N9,N10,N11,N12,N13,stall,a_zero,a_nan,a_sig_nan,a_infty,exp_a_zero,man_a_zero,
  a_denormal,sign_a,b_zero,b_nan,b_sig_nan,b_infty,exp_b_zero,man_b_zero,
  b_denormal,sign_b,final_sign,N15,N16,N17,N18,N19,N20,N21,N22,N23,v_1_r,final_sign_1_r,
  a_sig_nan_1_r,b_sig_nan_1_r,a_nan_1_r,b_nan_1_r,a_infty_1_r,b_infty_1_r,a_zero_1_r,
  b_zero_1_r,a_denormal_1_r,b_denormal_1_r,N24,N25,N26,N27,N28,N29,N30,v_2_r,
  a_sig_nan_2_r,b_sig_nan_2_r,a_nan_2_r,b_nan_2_r,a_infty_2_r,b_infty_2_r,a_zero_2_r,
  b_zero_2_r,a_denormal_2_r,b_denormal_2_r,final_sign_2_r,N31,N32,N33,sticky,N34,
  N35,round_up,N36,N37,N38,N39,N40,round_up_3_r,final_sign_3_r,a_sig_nan_3_r,
  b_sig_nan_3_r,a_nan_3_r,b_nan_3_r,a_infty_3_r,b_infty_3_r,a_zero_3_r,b_zero_3_r,
  a_denormal_3_r,b_denormal_3_r,N41,N42,N43,carry_into_exp,N44,N45,N46,N47,N48,N49,N50,
  N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,
  N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,
  N91,N92,N93,N94,N2,N8,N14,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,
  N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,
  N123,N124,N125,N126,N127,N128;
  wire [4:0] exp_a,exp_b,exp_sum_unbiased_1_r,exp_sum_unbiased_2_r;
  wire [9:0] man_a,man_b,shifted_mantissa;
  wire [5:0] exp_sum,final_exp;
  wire [4:4] exp_sum_unbiased;
  wire [5:4] exp_sum_1_r,exp_sum_2_r,exp_sum_3_r;
  wire [10:0] man_a_norm_r,man_b_norm_r;
  wire [21:0] man_prod,man_prod_2_r;
  wire [14:0] pre_roundup_3_r,rounded;
  wire [5:5] final_exp_3_r;
  reg man_a_norm_r_10_sv2v_reg,man_a_norm_r_9_sv2v_reg,man_a_norm_r_8_sv2v_reg,
  man_a_norm_r_7_sv2v_reg,man_a_norm_r_6_sv2v_reg,man_a_norm_r_5_sv2v_reg,
  man_a_norm_r_4_sv2v_reg,man_a_norm_r_3_sv2v_reg,man_a_norm_r_2_sv2v_reg,
  man_a_norm_r_1_sv2v_reg,man_a_norm_r_0_sv2v_reg,v_1_r_sv2v_reg,man_b_norm_r_10_sv2v_reg,
  man_b_norm_r_9_sv2v_reg,man_b_norm_r_8_sv2v_reg,man_b_norm_r_7_sv2v_reg,
  man_b_norm_r_6_sv2v_reg,man_b_norm_r_5_sv2v_reg,man_b_norm_r_4_sv2v_reg,man_b_norm_r_3_sv2v_reg,
  man_b_norm_r_2_sv2v_reg,man_b_norm_r_1_sv2v_reg,man_b_norm_r_0_sv2v_reg,
  final_sign_1_r_sv2v_reg,exp_sum_unbiased_1_r_4_sv2v_reg,exp_sum_unbiased_1_r_3_sv2v_reg,
  exp_sum_unbiased_1_r_2_sv2v_reg,exp_sum_unbiased_1_r_1_sv2v_reg,
  exp_sum_unbiased_1_r_0_sv2v_reg,a_sig_nan_1_r_sv2v_reg,b_sig_nan_1_r_sv2v_reg,a_nan_1_r_sv2v_reg,
  b_nan_1_r_sv2v_reg,a_infty_1_r_sv2v_reg,b_infty_1_r_sv2v_reg,a_zero_1_r_sv2v_reg,
  b_zero_1_r_sv2v_reg,a_denormal_1_r_sv2v_reg,b_denormal_1_r_sv2v_reg,
  exp_sum_1_r_5_sv2v_reg,exp_sum_1_r_4_sv2v_reg,exp_sum_2_r_5_sv2v_reg,exp_sum_2_r_4_sv2v_reg,
  v_2_r_sv2v_reg,final_sign_2_r_sv2v_reg,man_prod_2_r_21_sv2v_reg,
  man_prod_2_r_20_sv2v_reg,man_prod_2_r_19_sv2v_reg,man_prod_2_r_18_sv2v_reg,man_prod_2_r_17_sv2v_reg,
  man_prod_2_r_16_sv2v_reg,man_prod_2_r_15_sv2v_reg,man_prod_2_r_14_sv2v_reg,
  man_prod_2_r_13_sv2v_reg,man_prod_2_r_12_sv2v_reg,man_prod_2_r_11_sv2v_reg,
  man_prod_2_r_10_sv2v_reg,man_prod_2_r_9_sv2v_reg,man_prod_2_r_8_sv2v_reg,
  man_prod_2_r_7_sv2v_reg,man_prod_2_r_6_sv2v_reg,man_prod_2_r_5_sv2v_reg,man_prod_2_r_4_sv2v_reg,
  man_prod_2_r_3_sv2v_reg,man_prod_2_r_2_sv2v_reg,man_prod_2_r_1_sv2v_reg,
  man_prod_2_r_0_sv2v_reg,exp_sum_unbiased_2_r_4_sv2v_reg,exp_sum_unbiased_2_r_3_sv2v_reg,
  exp_sum_unbiased_2_r_2_sv2v_reg,exp_sum_unbiased_2_r_1_sv2v_reg,
  exp_sum_unbiased_2_r_0_sv2v_reg,a_sig_nan_2_r_sv2v_reg,b_sig_nan_2_r_sv2v_reg,a_nan_2_r_sv2v_reg,
  b_nan_2_r_sv2v_reg,a_infty_2_r_sv2v_reg,b_infty_2_r_sv2v_reg,a_zero_2_r_sv2v_reg,
  b_zero_2_r_sv2v_reg,a_denormal_2_r_sv2v_reg,b_denormal_2_r_sv2v_reg,
  exp_sum_3_r_5_sv2v_reg,exp_sum_3_r_4_sv2v_reg,v_o_sv2v_reg,final_exp_3_r_5_sv2v_reg,
  pre_roundup_3_r_14_sv2v_reg,pre_roundup_3_r_13_sv2v_reg,pre_roundup_3_r_12_sv2v_reg,
  pre_roundup_3_r_11_sv2v_reg,pre_roundup_3_r_10_sv2v_reg,pre_roundup_3_r_9_sv2v_reg,
  pre_roundup_3_r_8_sv2v_reg,pre_roundup_3_r_7_sv2v_reg,pre_roundup_3_r_6_sv2v_reg,
  pre_roundup_3_r_5_sv2v_reg,pre_roundup_3_r_4_sv2v_reg,
  pre_roundup_3_r_3_sv2v_reg,pre_roundup_3_r_2_sv2v_reg,pre_roundup_3_r_1_sv2v_reg,
  pre_roundup_3_r_0_sv2v_reg,round_up_3_r_sv2v_reg,final_sign_3_r_sv2v_reg,a_sig_nan_3_r_sv2v_reg,
  b_sig_nan_3_r_sv2v_reg,a_nan_3_r_sv2v_reg,b_nan_3_r_sv2v_reg,a_infty_3_r_sv2v_reg,
  b_infty_3_r_sv2v_reg,a_zero_3_r_sv2v_reg,b_zero_3_r_sv2v_reg,a_denormal_3_r_sv2v_reg,
  b_denormal_3_r_sv2v_reg;
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
  assign exp_sum_1_r[5] = exp_sum_1_r_5_sv2v_reg;
  assign exp_sum_1_r[4] = exp_sum_1_r_4_sv2v_reg;
  assign exp_sum_2_r[5] = exp_sum_2_r_5_sv2v_reg;
  assign exp_sum_2_r[4] = exp_sum_2_r_4_sv2v_reg;
  assign v_2_r = v_2_r_sv2v_reg;
  assign final_sign_2_r = final_sign_2_r_sv2v_reg;
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
  assign exp_sum_3_r[5] = exp_sum_3_r_5_sv2v_reg;
  assign exp_sum_3_r[4] = exp_sum_3_r_4_sv2v_reg;
  assign v_o = v_o_sv2v_reg;
  assign final_exp_3_r[5] = final_exp_3_r_5_sv2v_reg;
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

  bsg_fpu_preprocess_e_p5_m_p10
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


  bsg_fpu_preprocess_e_p5_m_p10
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


  bsg_mul_synth_width_p11
  mul_synth
  (
    .a_i(man_a_norm_r),
    .b_i(man_b_norm_r),
    .o(man_prod)
  );

  assign N95 = pre_roundup_3_r[13] | pre_roundup_3_r[14];
  assign N96 = pre_roundup_3_r[12] | N95;
  assign N97 = pre_roundup_3_r[11] | N96;
  assign N98 = pre_roundup_3_r[10] | N97;
  assign N99 = ~N98;
  assign N100 = pre_roundup_3_r[13] & pre_roundup_3_r[14];
  assign N101 = pre_roundup_3_r[12] & N100;
  assign N102 = pre_roundup_3_r[11] & N101;
  assign N103 = pre_roundup_3_r[10] & N102;
  assign N104 = exp_sum_3_r[4] & exp_sum_3_r[5];
  assign N105 = exp_sum_3_r[4] | exp_sum_3_r[5];
  assign N106 = ~N105;
  assign rounded = pre_roundup_3_r + round_up_3_r;
  assign final_exp = exp_sum_unbiased_2_r + man_prod_2_r[21];
  assign { N20, N19, N18, N17, N16, N15 } = exp_a + exp_b;
  assign exp_sum = { N20, N19, N18, N17, N16, N15 } + 1'b1;
  assign N24 = (N0)? 1'b1 : 
               (N2)? 1'b0 : 1'b0;
  assign N0 = N21;
  assign N25 = (N1)? 1'b0 : 
               (N27)? v_i : 
               (N23)? 1'b0 : 1'b0;
  assign N1 = reset_i;
  assign N31 = (N3)? 1'b1 : 
               (N8)? 1'b0 : 1'b0;
  assign N3 = N28;
  assign N32 = (N1)? 1'b0 : 
               (N33)? v_1_r : 
               (N30)? 1'b0 : 1'b0;
  assign N36 = (N4)? man_prod_2_r[10] : 
               (N35)? man_prod_2_r[9] : 1'b0;
  assign N4 = man_prod_2_r[21];
  assign round_up = (N5)? N36 : 
                    (N6)? N37 : 1'b0;
  assign N5 = sticky;
  assign N6 = N34;
  assign shifted_mantissa = (N4)? man_prod_2_r[20:11] : 
                            (N35)? man_prod_2_r[19:10] : 1'b0;
  assign N41 = (N7)? 1'b1 : 
               (N14)? 1'b0 : 1'b0;
  assign N7 = N38;
  assign N42 = (N1)? 1'b0 : 
               (N43)? v_2_r : 
               (N40)? 1'b0 : 1'b0;
  assign N64 = (N9)? 1'b0 : 
               (N10)? final_sign_3_r : 1'b0;
  assign N9 = b_zero_3_r;
  assign N10 = N63;
  assign N66 = (N11)? 1'b0 : 
               (N12)? final_sign_3_r : 1'b0;
  assign N11 = a_zero_3_r;
  assign N12 = N65;
  assign unimplemented_o = (N13)? 1'b0 : 
                           (N68)? 1'b0 : 
                           (N71)? 1'b0 : 
                           (N74)? 1'b0 : 
                           (N77)? 1'b0 : 
                           (N80)? 1'b0 : 
                           (N83)? 1'b1 : 
                           (N86)? 1'b0 : 
                           (N88)? 1'b0 : 
                           (N91)? 1'b0 : 
                           (N94)? 1'b0 : 
                           (N62)? 1'b0 : 1'b0;
  assign N13 = N44;
  assign invalid_o = (N13)? 1'b1 : 
                     (N68)? 1'b0 : 
                     (N71)? b_zero_3_r : 
                     (N74)? a_zero_3_r : 
                     (N77)? 1'b0 : 
                     (N80)? 1'b0 : 
                     (N83)? 1'b0 : 
                     (N86)? 1'b0 : 
                     (N88)? 1'b0 : 
                     (N91)? 1'b0 : 
                     (N94)? 1'b0 : 
                     (N62)? 1'b0 : 1'b0;
  assign overflow_o = (N13)? 1'b0 : 
                      (N68)? 1'b0 : 
                      (N71)? 1'b0 : 
                      (N74)? 1'b0 : 
                      (N77)? 1'b0 : 
                      (N80)? 1'b0 : 
                      (N83)? 1'b0 : 
                      (N86)? 1'b0 : 
                      (N88)? 1'b1 : 
                      (N91)? 1'b1 : 
                      (N94)? 1'b0 : 
                      (N62)? 1'b0 : 1'b0;
  assign underflow_o = (N13)? 1'b0 : 
                       (N68)? 1'b0 : 
                       (N71)? 1'b0 : 
                       (N74)? 1'b0 : 
                       (N77)? 1'b0 : 
                       (N80)? 1'b1 : 
                       (N83)? 1'b0 : 
                       (N86)? 1'b1 : 
                       (N88)? 1'b0 : 
                       (N91)? 1'b0 : 
                       (N94)? 1'b1 : 
                       (N62)? 1'b0 : 1'b0;
  assign z_o = (N13)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N68)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N71)? { N64, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, b_zero_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N74)? { N66, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, a_zero_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N77)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N80)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N83)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N86)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N88)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N91)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N94)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N62)? { final_sign_3_r, rounded } : 1'b0;
  assign stall = v_o & N107;
  assign N107 = ~yumi_i;
  assign ready_o = N108 & en_i;
  assign N108 = ~stall;
  assign final_sign = sign_a ^ sign_b;
  assign exp_sum_unbiased[4] = ~exp_sum[4];
  assign N21 = N108 & en_i;
  assign N22 = N21 | reset_i;
  assign N23 = ~N22;
  assign N26 = ~reset_i;
  assign N27 = N21 & N26;
  assign N28 = N108 & en_i;
  assign N29 = N28 | reset_i;
  assign N30 = ~N29;
  assign N33 = N28 & N26;
  assign sticky = N115 | man_prod_2_r[0];
  assign N115 = N114 | man_prod_2_r[1];
  assign N114 = N113 | man_prod_2_r[2];
  assign N113 = N112 | man_prod_2_r[3];
  assign N112 = N111 | man_prod_2_r[4];
  assign N111 = N110 | man_prod_2_r[5];
  assign N110 = N109 | man_prod_2_r[6];
  assign N109 = man_prod_2_r[8] | man_prod_2_r[7];
  assign N34 = ~sticky;
  assign N35 = ~man_prod_2_r[21];
  assign N37 = man_prod_2_r[10] & N117;
  assign N117 = man_prod_2_r[9] | N116;
  assign N116 = man_prod_2_r[21] & man_prod_2_r[11];
  assign N38 = N108 & en_i;
  assign N39 = N38 | reset_i;
  assign N40 = ~N39;
  assign N43 = N38 & N26;
  assign carry_into_exp = N126 & pre_roundup_3_r[0];
  assign N126 = N125 & pre_roundup_3_r[1];
  assign N125 = N124 & pre_roundup_3_r[2];
  assign N124 = N123 & pre_roundup_3_r[3];
  assign N123 = N122 & pre_roundup_3_r[4];
  assign N122 = N121 & pre_roundup_3_r[5];
  assign N121 = N120 & pre_roundup_3_r[6];
  assign N120 = N119 & pre_roundup_3_r[7];
  assign N119 = N118 & pre_roundup_3_r[8];
  assign N118 = round_up_3_r & pre_roundup_3_r[9];
  assign N44 = a_sig_nan_3_r | b_sig_nan_3_r;
  assign N45 = a_nan_3_r | b_nan_3_r;
  assign N46 = a_zero_3_r | b_zero_3_r;
  assign N47 = a_denormal_3_r & b_denormal_3_r;
  assign N48 = a_denormal_3_r | b_denormal_3_r;
  assign N49 = N104 | final_exp_3_r[5];
  assign N50 = N103 & N127;
  assign N127 = pre_roundup_3_r[10] | carry_into_exp;
  assign N51 = N99 & N128;
  assign N128 = ~carry_into_exp;
  assign N52 = N45 | N44;
  assign N53 = a_infty_3_r | N52;
  assign N54 = b_infty_3_r | N53;
  assign N55 = N46 | N54;
  assign N56 = N47 | N55;
  assign N57 = N48 | N56;
  assign N58 = N106 | N57;
  assign N59 = N49 | N58;
  assign N60 = N50 | N59;
  assign N61 = N51 | N60;
  assign N62 = ~N61;
  assign N63 = ~b_zero_3_r;
  assign N65 = ~a_zero_3_r;
  assign N67 = ~N44;
  assign N68 = N45 & N67;
  assign N69 = ~N45;
  assign N70 = N67 & N69;
  assign N71 = a_infty_3_r & N70;
  assign N72 = ~a_infty_3_r;
  assign N73 = N70 & N72;
  assign N74 = b_infty_3_r & N73;
  assign N75 = ~b_infty_3_r;
  assign N76 = N73 & N75;
  assign N77 = N46 & N76;
  assign N78 = ~N46;
  assign N79 = N76 & N78;
  assign N80 = N47 & N79;
  assign N81 = ~N47;
  assign N82 = N79 & N81;
  assign N83 = N48 & N82;
  assign N84 = ~N48;
  assign N85 = N82 & N84;
  assign N86 = N106 & N85;
  assign N87 = N85 & N105;
  assign N88 = N49 & N87;
  assign N89 = ~N49;
  assign N90 = N87 & N89;
  assign N91 = N50 & N90;
  assign N92 = ~N50;
  assign N93 = N90 & N92;
  assign N94 = N51 & N93;
  assign N2 = ~N21;
  assign N8 = ~N28;
  assign N14 = ~N38;

  always @(posedge clk_i) begin
    if(N25) begin
      man_a_norm_r_10_sv2v_reg <= 1'b1;
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
      man_b_norm_r_10_sv2v_reg <= 1'b1;
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
      exp_sum_unbiased_1_r_4_sv2v_reg <= exp_sum_unbiased[4];
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
      exp_sum_1_r_5_sv2v_reg <= exp_sum[5];
      exp_sum_1_r_4_sv2v_reg <= exp_sum[4];
    end 
    if(reset_i) begin
      v_1_r_sv2v_reg <= 1'b0;
    end else if(N24) begin
      v_1_r_sv2v_reg <= v_i;
    end 
    if(N32) begin
      exp_sum_2_r_5_sv2v_reg <= exp_sum_1_r[5];
      exp_sum_2_r_4_sv2v_reg <= exp_sum_1_r[4];
      final_sign_2_r_sv2v_reg <= final_sign_1_r;
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
    end else if(N31) begin
      v_2_r_sv2v_reg <= v_1_r;
    end 
    if(N42) begin
      exp_sum_3_r_5_sv2v_reg <= exp_sum_2_r[5];
      exp_sum_3_r_4_sv2v_reg <= exp_sum_2_r[4];
      final_exp_3_r_5_sv2v_reg <= final_exp[5];
      pre_roundup_3_r_14_sv2v_reg <= final_exp[4];
      pre_roundup_3_r_13_sv2v_reg <= final_exp[3];
      pre_roundup_3_r_12_sv2v_reg <= final_exp[2];
      pre_roundup_3_r_11_sv2v_reg <= final_exp[1];
      pre_roundup_3_r_10_sv2v_reg <= final_exp[0];
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
    end else if(N41) begin
      v_o_sv2v_reg <= v_2_r;
    end 
  end


endmodule

