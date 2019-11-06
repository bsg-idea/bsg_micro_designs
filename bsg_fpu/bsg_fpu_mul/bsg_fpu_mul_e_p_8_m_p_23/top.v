

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
  wire ready_o,unimplemented_o,invalid_o,overflow_o,underflow_o,N0,N1,N2,N3,N4,N5,N6,
  N7,N8,stall,a_zero,a_nan,a_sig_nan,a_infty,exp_a_zero,man_a_zero,a_denormal,
  sign_a,b_zero,b_nan,b_sig_nan,b_infty,exp_b_zero,man_b_zero,b_denormal,sign_b,
  final_sign,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,
  N28,N29,N30,N31,N32,sticky,N33,N34,round_up,N35,N36,N37,N38,N39,N40,N41,N42,N43,
  carry_into_exp,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,
  N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,
  N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,
  N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,
  N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,
  N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160;
  wire [7:0] exp_a,exp_b;
  wire [22:0] man_a,man_b,shifted_mantissa;
  wire [8:0] exp_sum,final_exp;
  wire [7:7] exp_sum_unbiased;
  wire [47:0] man_prod;
  wire [30:0] rounded;
  reg [23:0] man_a_norm_r,man_b_norm_r;
  reg v_1_r,final_sign_1_r,a_sig_nan_1_r,b_sig_nan_1_r,a_nan_1_r,b_nan_1_r,
  a_infty_1_r,b_infty_1_r,a_zero_1_r,b_zero_1_r,a_denormal_1_r,b_denormal_1_r,v_2_r,
  final_sign_2_r,a_sig_nan_2_r,b_sig_nan_2_r,a_nan_2_r,b_nan_2_r,a_infty_2_r,b_infty_2_r,
  a_zero_2_r,b_zero_2_r,a_denormal_2_r,b_denormal_2_r,v_o,round_up_3_r,
  final_sign_3_r,a_sig_nan_3_r,b_sig_nan_3_r,a_nan_3_r,b_nan_3_r,a_infty_3_r,b_infty_3_r,
  a_zero_3_r,b_zero_3_r,a_denormal_3_r,b_denormal_3_r;
  reg [7:0] exp_sum_unbiased_1_r,exp_sum_unbiased_2_r;
  reg [8:7] exp_sum_1_r,exp_sum_2_r,exp_sum_3_r;
  reg [47:0] man_prod_2_r;
  reg [8:8] final_exp_3_r;
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

  assign N95 = pre_roundup_3_r[29] | pre_roundup_3_r[30];
  assign N96 = pre_roundup_3_r[28] | N95;
  assign N97 = pre_roundup_3_r[27] | N96;
  assign N98 = pre_roundup_3_r[26] | N97;
  assign N99 = pre_roundup_3_r[25] | N98;
  assign N100 = pre_roundup_3_r[24] | N99;
  assign N101 = pre_roundup_3_r[23] | N100;
  assign N102 = ~N101;
  assign N103 = pre_roundup_3_r[29] & pre_roundup_3_r[30];
  assign N104 = pre_roundup_3_r[28] & N103;
  assign N105 = pre_roundup_3_r[27] & N104;
  assign N106 = pre_roundup_3_r[26] & N105;
  assign N107 = pre_roundup_3_r[25] & N106;
  assign N108 = pre_roundup_3_r[24] & N107;
  assign N109 = pre_roundup_3_r[23] & N108;
  assign N110 = exp_sum_3_r[7] & exp_sum_3_r[8];
  assign N111 = exp_sum_3_r[7] | exp_sum_3_r[8];
  assign N112 = ~N111;
  assign rounded = pre_roundup_3_r + round_up_3_r;
  assign final_exp = exp_sum_unbiased_2_r + man_prod_2_r[47];
  assign { N17, N16, N15, N14, N13, N12, N11, N10, N9 } = exp_a + exp_b;
  assign exp_sum = { N17, N16, N15, N14, N13, N12, N11, N10, N9 } + 1'b1;
  assign N21 = (N0)? 1'b1 : 
               (N25)? 1'b1 : 
               (N20)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign N22 = (N0)? 1'b0 : 
               (N25)? v_i : 1'b0;
  assign N23 = (N0)? 1'b0 : 
               (N25)? v_i : 
               (N20)? 1'b0 : 1'b0;
  assign N29 = (N0)? 1'b1 : 
               (N32)? 1'b1 : 
               (N28)? 1'b0 : 1'b0;
  assign N30 = (N0)? 1'b0 : 
               (N32)? v_1_r : 1'b0;
  assign N31 = (N0)? 1'b0 : 
               (N32)? v_1_r : 
               (N28)? 1'b0 : 1'b0;
  assign N35 = (N1)? man_prod_2_r[23] : 
               (N34)? man_prod_2_r[22] : 1'b0;
  assign N1 = man_prod_2_r[47];
  assign round_up = (N2)? N35 : 
                    (N3)? N36 : 1'b0;
  assign N2 = sticky;
  assign N3 = N33;
  assign shifted_mantissa = (N1)? man_prod_2_r[46:24] : 
                            (N34)? man_prod_2_r[45:23] : 1'b0;
  assign N40 = (N0)? 1'b1 : 
               (N43)? 1'b1 : 
               (N39)? 1'b0 : 1'b0;
  assign N41 = (N0)? 1'b0 : 
               (N43)? v_2_r : 1'b0;
  assign N42 = (N0)? 1'b0 : 
               (N43)? v_2_r : 
               (N39)? 1'b0 : 1'b0;
  assign N64 = (N4)? 1'b0 : 
               (N5)? final_sign_3_r : 1'b0;
  assign N4 = b_zero_3_r;
  assign N5 = N63;
  assign N66 = (N6)? 1'b0 : 
               (N7)? final_sign_3_r : 1'b0;
  assign N6 = a_zero_3_r;
  assign N7 = N65;
  assign unimplemented_o = (N8)? 1'b0 : 
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
  assign N8 = N44;
  assign invalid_o = (N8)? 1'b1 : 
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
  assign overflow_o = (N8)? 1'b0 : 
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
  assign underflow_o = (N8)? 1'b0 : 
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
  assign z_o = (N8)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N68)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N71)? { N64, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, b_zero_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N74)? { N66, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, a_zero_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N77)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N80)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N83)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N86)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N88)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N91)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N94)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N62)? { final_sign_3_r, rounded } : 1'b0;
  assign stall = v_o & N113;
  assign N113 = ~yumi_i;
  assign ready_o = N114 & en_i;
  assign N114 = ~stall;
  assign final_sign = sign_a ^ sign_b;
  assign exp_sum_unbiased[7] = ~exp_sum[7];
  assign N18 = N114 & en_i;
  assign N19 = N18 | reset_i;
  assign N20 = ~N19;
  assign N24 = ~reset_i;
  assign N25 = N18 & N24;
  assign N26 = N114 & en_i;
  assign N27 = N26 | reset_i;
  assign N28 = ~N27;
  assign N32 = N26 & N24;
  assign sticky = N134 | man_prod_2_r[0];
  assign N134 = N133 | man_prod_2_r[1];
  assign N133 = N132 | man_prod_2_r[2];
  assign N132 = N131 | man_prod_2_r[3];
  assign N131 = N130 | man_prod_2_r[4];
  assign N130 = N129 | man_prod_2_r[5];
  assign N129 = N128 | man_prod_2_r[6];
  assign N128 = N127 | man_prod_2_r[7];
  assign N127 = N126 | man_prod_2_r[8];
  assign N126 = N125 | man_prod_2_r[9];
  assign N125 = N124 | man_prod_2_r[10];
  assign N124 = N123 | man_prod_2_r[11];
  assign N123 = N122 | man_prod_2_r[12];
  assign N122 = N121 | man_prod_2_r[13];
  assign N121 = N120 | man_prod_2_r[14];
  assign N120 = N119 | man_prod_2_r[15];
  assign N119 = N118 | man_prod_2_r[16];
  assign N118 = N117 | man_prod_2_r[17];
  assign N117 = N116 | man_prod_2_r[18];
  assign N116 = N115 | man_prod_2_r[19];
  assign N115 = man_prod_2_r[21] | man_prod_2_r[20];
  assign N33 = ~sticky;
  assign N34 = ~man_prod_2_r[47];
  assign N36 = man_prod_2_r[23] & N136;
  assign N136 = man_prod_2_r[22] | N135;
  assign N135 = man_prod_2_r[47] & man_prod_2_r[24];
  assign N37 = N114 & en_i;
  assign N38 = N37 | reset_i;
  assign N39 = ~N38;
  assign N43 = N37 & N24;
  assign carry_into_exp = N158 & pre_roundup_3_r[0];
  assign N158 = N157 & pre_roundup_3_r[1];
  assign N157 = N156 & pre_roundup_3_r[2];
  assign N156 = N155 & pre_roundup_3_r[3];
  assign N155 = N154 & pre_roundup_3_r[4];
  assign N154 = N153 & pre_roundup_3_r[5];
  assign N153 = N152 & pre_roundup_3_r[6];
  assign N152 = N151 & pre_roundup_3_r[7];
  assign N151 = N150 & pre_roundup_3_r[8];
  assign N150 = N149 & pre_roundup_3_r[9];
  assign N149 = N148 & pre_roundup_3_r[10];
  assign N148 = N147 & pre_roundup_3_r[11];
  assign N147 = N146 & pre_roundup_3_r[12];
  assign N146 = N145 & pre_roundup_3_r[13];
  assign N145 = N144 & pre_roundup_3_r[14];
  assign N144 = N143 & pre_roundup_3_r[15];
  assign N143 = N142 & pre_roundup_3_r[16];
  assign N142 = N141 & pre_roundup_3_r[17];
  assign N141 = N140 & pre_roundup_3_r[18];
  assign N140 = N139 & pre_roundup_3_r[19];
  assign N139 = N138 & pre_roundup_3_r[20];
  assign N138 = N137 & pre_roundup_3_r[21];
  assign N137 = round_up_3_r & pre_roundup_3_r[22];
  assign N44 = a_sig_nan_3_r | b_sig_nan_3_r;
  assign N45 = a_nan_3_r | b_nan_3_r;
  assign N46 = a_zero_3_r | b_zero_3_r;
  assign N47 = a_denormal_3_r & b_denormal_3_r;
  assign N48 = a_denormal_3_r | b_denormal_3_r;
  assign N49 = N110 | final_exp_3_r[8];
  assign N50 = N109 & N159;
  assign N159 = pre_roundup_3_r[23] | carry_into_exp;
  assign N51 = N102 & N160;
  assign N160 = ~carry_into_exp;
  assign N52 = N45 | N44;
  assign N53 = a_infty_3_r | N52;
  assign N54 = b_infty_3_r | N53;
  assign N55 = N46 | N54;
  assign N56 = N47 | N55;
  assign N57 = N48 | N56;
  assign N58 = N112 | N57;
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
  assign N86 = N112 & N85;
  assign N87 = N85 & N111;
  assign N88 = N49 & N87;
  assign N89 = ~N49;
  assign N90 = N87 & N89;
  assign N91 = N50 & N90;
  assign N92 = ~N50;
  assign N93 = N90 & N92;
  assign N94 = N51 & N93;

  always @(posedge clk_i) begin
    if(N23) begin
      { man_a_norm_r[23:0] } <= { 1'b1, man_a[22:0] };
      { man_b_norm_r[23:0] } <= { 1'b1, man_b[22:0] };
      final_sign_1_r <= final_sign;
      { exp_sum_unbiased_1_r[7:0] } <= { exp_sum_unbiased[7:7], exp_sum[6:0] };
      a_sig_nan_1_r <= a_sig_nan;
      b_sig_nan_1_r <= b_sig_nan;
      a_nan_1_r <= a_nan;
      b_nan_1_r <= b_nan;
      a_infty_1_r <= a_infty;
      b_infty_1_r <= b_infty;
      a_zero_1_r <= a_zero;
      b_zero_1_r <= b_zero;
      a_denormal_1_r <= a_denormal;
      b_denormal_1_r <= b_denormal;
      { exp_sum_1_r[8:7] } <= { exp_sum[8:7] };
    end 
    if(N21) begin
      v_1_r <= N22;
    end 
    if(N31) begin
      { exp_sum_2_r[8:7] } <= { exp_sum_1_r[8:7] };
      final_sign_2_r <= final_sign_1_r;
      { man_prod_2_r[47:0] } <= { man_prod[47:0] };
      { exp_sum_unbiased_2_r[7:0] } <= { exp_sum_unbiased_1_r[7:0] };
      a_sig_nan_2_r <= a_sig_nan_1_r;
      b_sig_nan_2_r <= b_sig_nan_1_r;
      a_nan_2_r <= a_nan_1_r;
      b_nan_2_r <= b_nan_1_r;
      a_infty_2_r <= a_infty_1_r;
      b_infty_2_r <= b_infty_1_r;
      a_zero_2_r <= a_zero_1_r;
      b_zero_2_r <= b_zero_1_r;
      a_denormal_2_r <= a_denormal_1_r;
      b_denormal_2_r <= b_denormal_1_r;
    end 
    if(N29) begin
      v_2_r <= N30;
    end 
    if(N42) begin
      { exp_sum_3_r[8:7] } <= { exp_sum_2_r[8:7] };
      { final_exp_3_r[8:8] } <= { final_exp[8:8] };
      { pre_roundup_3_r[30:0] } <= { final_exp[7:0], shifted_mantissa[22:0] };
      round_up_3_r <= round_up;
      final_sign_3_r <= final_sign_2_r;
      a_sig_nan_3_r <= a_sig_nan_2_r;
      b_sig_nan_3_r <= b_sig_nan_2_r;
      a_nan_3_r <= a_nan_2_r;
      b_nan_3_r <= b_nan_2_r;
      a_infty_3_r <= a_infty_2_r;
      b_infty_3_r <= b_infty_2_r;
      a_zero_3_r <= a_zero_2_r;
      b_zero_3_r <= b_zero_2_r;
      a_denormal_3_r <= a_denormal_2_r;
      b_denormal_3_r <= b_denormal_2_r;
    end 
    if(N40) begin
      v_o <= N41;
    end 
  end


endmodule

