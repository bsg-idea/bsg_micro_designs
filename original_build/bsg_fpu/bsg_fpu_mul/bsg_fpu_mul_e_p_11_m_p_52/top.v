

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

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] z_o;
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



module bsg_mul_synth_width_p53
(
  a_i,
  b_i,
  o
);

  input [52:0] a_i;
  input [52:0] b_i;
  output [105:0] o;
  wire [105:0] o;
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

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] z_o;
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
  wire [63:0] z_o;
  wire ready_o,unimplemented_o,invalid_o,overflow_o,underflow_o,N0,N1,N2,N3,N4,N5,N6,
  N7,N8,stall,a_zero,a_nan,a_sig_nan,a_infty,exp_a_zero,man_a_zero,a_denormal,
  sign_a,b_zero,b_nan,b_sig_nan,b_infty,exp_b_zero,man_b_zero,b_denormal,sign_b,
  final_sign,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,
  N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,sticky,N38,N39,round_up,N40,N41,N42,N43,
  N44,N45,N46,N47,N48,carry_into_exp,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
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
  N228,N229;
  wire [10:0] exp_a,exp_b;
  wire [51:0] man_a,man_b,shifted_mantissa;
  wire [11:0] exp_sum,final_exp;
  wire [10:10] exp_sum_unbiased;
  wire [105:0] man_prod;
  wire [62:0] rounded;
  reg [52:0] man_a_norm_r,man_b_norm_r;
  reg v_1_r,final_sign_1_r,a_sig_nan_1_r,b_sig_nan_1_r,a_nan_1_r,b_nan_1_r,
  a_infty_1_r,b_infty_1_r,a_zero_1_r,b_zero_1_r,a_denormal_1_r,b_denormal_1_r,v_2_r,
  final_sign_2_r,a_sig_nan_2_r,b_sig_nan_2_r,a_nan_2_r,b_nan_2_r,a_infty_2_r,b_infty_2_r,
  a_zero_2_r,b_zero_2_r,a_denormal_2_r,b_denormal_2_r,v_o,round_up_3_r,
  final_sign_3_r,a_sig_nan_3_r,b_sig_nan_3_r,a_nan_3_r,b_nan_3_r,a_infty_3_r,b_infty_3_r,
  a_zero_3_r,b_zero_3_r,a_denormal_3_r,b_denormal_3_r;
  reg [10:0] exp_sum_unbiased_1_r,exp_sum_unbiased_2_r;
  reg [11:10] exp_sum_1_r,exp_sum_2_r,exp_sum_3_r;
  reg [105:0] man_prod_2_r;
  reg [11:11] final_exp_3_r;
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
    .man_zero_o(man_a_zero),
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
    .man_zero_o(man_b_zero),
    .denormal_o(b_denormal),
    .sign_o(sign_b),
    .exp_o(exp_b),
    .man_o(man_b)
  );


  bsg_mul_synth_width_p53
  mul_synth
  (
    .a_i(man_a_norm_r),
    .b_i(man_b_norm_r),
    .o(man_prod)
  );

  assign N100 = pre_roundup_3_r[61] | pre_roundup_3_r[62];
  assign N101 = pre_roundup_3_r[60] | N100;
  assign N102 = pre_roundup_3_r[59] | N101;
  assign N103 = pre_roundup_3_r[58] | N102;
  assign N104 = pre_roundup_3_r[57] | N103;
  assign N105 = pre_roundup_3_r[56] | N104;
  assign N106 = pre_roundup_3_r[55] | N105;
  assign N107 = pre_roundup_3_r[54] | N106;
  assign N108 = pre_roundup_3_r[53] | N107;
  assign N109 = pre_roundup_3_r[52] | N108;
  assign N110 = ~N109;
  assign N111 = pre_roundup_3_r[61] & pre_roundup_3_r[62];
  assign N112 = pre_roundup_3_r[60] & N111;
  assign N113 = pre_roundup_3_r[59] & N112;
  assign N114 = pre_roundup_3_r[58] & N113;
  assign N115 = pre_roundup_3_r[57] & N114;
  assign N116 = pre_roundup_3_r[56] & N115;
  assign N117 = pre_roundup_3_r[55] & N116;
  assign N118 = pre_roundup_3_r[54] & N117;
  assign N119 = pre_roundup_3_r[53] & N118;
  assign N120 = pre_roundup_3_r[52] & N119;
  assign N121 = exp_sum_3_r[10] & exp_sum_3_r[11];
  assign N122 = exp_sum_3_r[10] | exp_sum_3_r[11];
  assign N123 = ~N122;
  assign rounded = pre_roundup_3_r + round_up_3_r;
  assign final_exp = exp_sum_unbiased_2_r + man_prod_2_r[105];
  assign { N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9 } = exp_a + exp_b;
  assign exp_sum = { N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9 } + 1'b1;
  assign N24 = (N0)? 1'b1 : 
               (N29)? 1'b1 : 
               (N23)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign N25 = (N0)? 1'b0 : 
               (N29)? v_i : 1'b0;
  assign N26 = (N0)? 1'b0 : 
               (N29)? v_i : 
               (N23)? 1'b0 : 1'b0;
  assign N27 = (N0)? 1'b0 : 
               (N29)? v_i : 
               (N23)? 1'b0 : 1'b0;
  assign N33 = (N0)? 1'b1 : 
               (N37)? 1'b1 : 
               (N32)? 1'b0 : 1'b0;
  assign N34 = (N0)? 1'b0 : 
               (N37)? v_1_r : 1'b0;
  assign N35 = (N0)? 1'b0 : 
               (N37)? v_1_r : 
               (N32)? 1'b0 : 1'b0;
  assign N36 = (N0)? 1'b0 : 
               (N37)? v_1_r : 
               (N32)? 1'b0 : 1'b0;
  assign N40 = (N1)? man_prod_2_r[52] : 
               (N39)? man_prod_2_r[51] : 1'b0;
  assign N1 = man_prod_2_r[105];
  assign round_up = (N2)? N40 : 
                    (N3)? N41 : 1'b0;
  assign N2 = sticky;
  assign N3 = N38;
  assign shifted_mantissa = (N1)? man_prod_2_r[104:53] : 
                            (N39)? man_prod_2_r[103:52] : 1'b0;
  assign N45 = (N0)? 1'b1 : 
               (N48)? 1'b1 : 
               (N44)? 1'b0 : 1'b0;
  assign N46 = (N0)? 1'b0 : 
               (N48)? v_2_r : 1'b0;
  assign N47 = (N0)? 1'b0 : 
               (N48)? v_2_r : 
               (N44)? 1'b0 : 1'b0;
  assign N69 = (N4)? 1'b0 : 
               (N5)? final_sign_3_r : 1'b0;
  assign N4 = b_zero_3_r;
  assign N5 = N68;
  assign N71 = (N6)? 1'b0 : 
               (N7)? final_sign_3_r : 1'b0;
  assign N6 = a_zero_3_r;
  assign N7 = N70;
  assign unimplemented_o = (N8)? 1'b0 : 
                           (N73)? 1'b0 : 
                           (N76)? 1'b0 : 
                           (N79)? 1'b0 : 
                           (N82)? 1'b0 : 
                           (N85)? 1'b0 : 
                           (N88)? 1'b1 : 
                           (N91)? 1'b0 : 
                           (N93)? 1'b0 : 
                           (N96)? 1'b0 : 
                           (N99)? 1'b0 : 
                           (N67)? 1'b0 : 1'b0;
  assign N8 = N49;
  assign invalid_o = (N8)? 1'b1 : 
                     (N73)? 1'b0 : 
                     (N76)? b_zero_3_r : 
                     (N79)? a_zero_3_r : 
                     (N82)? 1'b0 : 
                     (N85)? 1'b0 : 
                     (N88)? 1'b0 : 
                     (N91)? 1'b0 : 
                     (N93)? 1'b0 : 
                     (N96)? 1'b0 : 
                     (N99)? 1'b0 : 
                     (N67)? 1'b0 : 1'b0;
  assign overflow_o = (N8)? 1'b0 : 
                      (N73)? 1'b0 : 
                      (N76)? 1'b0 : 
                      (N79)? 1'b0 : 
                      (N82)? 1'b0 : 
                      (N85)? 1'b0 : 
                      (N88)? 1'b0 : 
                      (N91)? 1'b0 : 
                      (N93)? 1'b1 : 
                      (N96)? 1'b1 : 
                      (N99)? 1'b0 : 
                      (N67)? 1'b0 : 1'b0;
  assign underflow_o = (N8)? 1'b0 : 
                       (N73)? 1'b0 : 
                       (N76)? 1'b0 : 
                       (N79)? 1'b0 : 
                       (N82)? 1'b0 : 
                       (N85)? 1'b1 : 
                       (N88)? 1'b0 : 
                       (N91)? 1'b1 : 
                       (N93)? 1'b0 : 
                       (N96)? 1'b0 : 
                       (N99)? 1'b1 : 
                       (N67)? 1'b0 : 1'b0;
  assign z_o = (N8)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N73)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N76)? { N69, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, b_zero_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N79)? { N71, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, a_zero_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N82)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N85)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N88)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N91)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N93)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N96)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N99)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N67)? { final_sign_3_r, rounded } : 1'b0;
  assign stall = v_o & N124;
  assign N124 = ~yumi_i;
  assign ready_o = N125 & en_i;
  assign N125 = ~stall;
  assign final_sign = sign_a ^ sign_b;
  assign exp_sum_unbiased[10] = ~exp_sum[10];
  assign N21 = N125 & en_i;
  assign N22 = N21 | reset_i;
  assign N23 = ~N22;
  assign N28 = ~reset_i;
  assign N29 = N21 & N28;
  assign N30 = N125 & en_i;
  assign N31 = N30 | reset_i;
  assign N32 = ~N31;
  assign N37 = N30 & N28;
  assign sticky = N174 | man_prod_2_r[0];
  assign N174 = N173 | man_prod_2_r[1];
  assign N173 = N172 | man_prod_2_r[2];
  assign N172 = N171 | man_prod_2_r[3];
  assign N171 = N170 | man_prod_2_r[4];
  assign N170 = N169 | man_prod_2_r[5];
  assign N169 = N168 | man_prod_2_r[6];
  assign N168 = N167 | man_prod_2_r[7];
  assign N167 = N166 | man_prod_2_r[8];
  assign N166 = N165 | man_prod_2_r[9];
  assign N165 = N164 | man_prod_2_r[10];
  assign N164 = N163 | man_prod_2_r[11];
  assign N163 = N162 | man_prod_2_r[12];
  assign N162 = N161 | man_prod_2_r[13];
  assign N161 = N160 | man_prod_2_r[14];
  assign N160 = N159 | man_prod_2_r[15];
  assign N159 = N158 | man_prod_2_r[16];
  assign N158 = N157 | man_prod_2_r[17];
  assign N157 = N156 | man_prod_2_r[18];
  assign N156 = N155 | man_prod_2_r[19];
  assign N155 = N154 | man_prod_2_r[20];
  assign N154 = N153 | man_prod_2_r[21];
  assign N153 = N152 | man_prod_2_r[22];
  assign N152 = N151 | man_prod_2_r[23];
  assign N151 = N150 | man_prod_2_r[24];
  assign N150 = N149 | man_prod_2_r[25];
  assign N149 = N148 | man_prod_2_r[26];
  assign N148 = N147 | man_prod_2_r[27];
  assign N147 = N146 | man_prod_2_r[28];
  assign N146 = N145 | man_prod_2_r[29];
  assign N145 = N144 | man_prod_2_r[30];
  assign N144 = N143 | man_prod_2_r[31];
  assign N143 = N142 | man_prod_2_r[32];
  assign N142 = N141 | man_prod_2_r[33];
  assign N141 = N140 | man_prod_2_r[34];
  assign N140 = N139 | man_prod_2_r[35];
  assign N139 = N138 | man_prod_2_r[36];
  assign N138 = N137 | man_prod_2_r[37];
  assign N137 = N136 | man_prod_2_r[38];
  assign N136 = N135 | man_prod_2_r[39];
  assign N135 = N134 | man_prod_2_r[40];
  assign N134 = N133 | man_prod_2_r[41];
  assign N133 = N132 | man_prod_2_r[42];
  assign N132 = N131 | man_prod_2_r[43];
  assign N131 = N130 | man_prod_2_r[44];
  assign N130 = N129 | man_prod_2_r[45];
  assign N129 = N128 | man_prod_2_r[46];
  assign N128 = N127 | man_prod_2_r[47];
  assign N127 = N126 | man_prod_2_r[48];
  assign N126 = man_prod_2_r[50] | man_prod_2_r[49];
  assign N38 = ~sticky;
  assign N39 = ~man_prod_2_r[105];
  assign N41 = man_prod_2_r[52] & N176;
  assign N176 = man_prod_2_r[51] | N175;
  assign N175 = man_prod_2_r[105] & man_prod_2_r[53];
  assign N42 = N125 & en_i;
  assign N43 = N42 | reset_i;
  assign N44 = ~N43;
  assign N48 = N42 & N28;
  assign carry_into_exp = N227 & pre_roundup_3_r[0];
  assign N227 = N226 & pre_roundup_3_r[1];
  assign N226 = N225 & pre_roundup_3_r[2];
  assign N225 = N224 & pre_roundup_3_r[3];
  assign N224 = N223 & pre_roundup_3_r[4];
  assign N223 = N222 & pre_roundup_3_r[5];
  assign N222 = N221 & pre_roundup_3_r[6];
  assign N221 = N220 & pre_roundup_3_r[7];
  assign N220 = N219 & pre_roundup_3_r[8];
  assign N219 = N218 & pre_roundup_3_r[9];
  assign N218 = N217 & pre_roundup_3_r[10];
  assign N217 = N216 & pre_roundup_3_r[11];
  assign N216 = N215 & pre_roundup_3_r[12];
  assign N215 = N214 & pre_roundup_3_r[13];
  assign N214 = N213 & pre_roundup_3_r[14];
  assign N213 = N212 & pre_roundup_3_r[15];
  assign N212 = N211 & pre_roundup_3_r[16];
  assign N211 = N210 & pre_roundup_3_r[17];
  assign N210 = N209 & pre_roundup_3_r[18];
  assign N209 = N208 & pre_roundup_3_r[19];
  assign N208 = N207 & pre_roundup_3_r[20];
  assign N207 = N206 & pre_roundup_3_r[21];
  assign N206 = N205 & pre_roundup_3_r[22];
  assign N205 = N204 & pre_roundup_3_r[23];
  assign N204 = N203 & pre_roundup_3_r[24];
  assign N203 = N202 & pre_roundup_3_r[25];
  assign N202 = N201 & pre_roundup_3_r[26];
  assign N201 = N200 & pre_roundup_3_r[27];
  assign N200 = N199 & pre_roundup_3_r[28];
  assign N199 = N198 & pre_roundup_3_r[29];
  assign N198 = N197 & pre_roundup_3_r[30];
  assign N197 = N196 & pre_roundup_3_r[31];
  assign N196 = N195 & pre_roundup_3_r[32];
  assign N195 = N194 & pre_roundup_3_r[33];
  assign N194 = N193 & pre_roundup_3_r[34];
  assign N193 = N192 & pre_roundup_3_r[35];
  assign N192 = N191 & pre_roundup_3_r[36];
  assign N191 = N190 & pre_roundup_3_r[37];
  assign N190 = N189 & pre_roundup_3_r[38];
  assign N189 = N188 & pre_roundup_3_r[39];
  assign N188 = N187 & pre_roundup_3_r[40];
  assign N187 = N186 & pre_roundup_3_r[41];
  assign N186 = N185 & pre_roundup_3_r[42];
  assign N185 = N184 & pre_roundup_3_r[43];
  assign N184 = N183 & pre_roundup_3_r[44];
  assign N183 = N182 & pre_roundup_3_r[45];
  assign N182 = N181 & pre_roundup_3_r[46];
  assign N181 = N180 & pre_roundup_3_r[47];
  assign N180 = N179 & pre_roundup_3_r[48];
  assign N179 = N178 & pre_roundup_3_r[49];
  assign N178 = N177 & pre_roundup_3_r[50];
  assign N177 = round_up_3_r & pre_roundup_3_r[51];
  assign N49 = a_sig_nan_3_r | b_sig_nan_3_r;
  assign N50 = a_nan_3_r | b_nan_3_r;
  assign N51 = a_zero_3_r | b_zero_3_r;
  assign N52 = a_denormal_3_r & b_denormal_3_r;
  assign N53 = a_denormal_3_r | b_denormal_3_r;
  assign N54 = N121 | final_exp_3_r[11];
  assign N55 = N120 & N228;
  assign N228 = pre_roundup_3_r[52] | carry_into_exp;
  assign N56 = N110 & N229;
  assign N229 = ~carry_into_exp;
  assign N57 = N50 | N49;
  assign N58 = a_infty_3_r | N57;
  assign N59 = b_infty_3_r | N58;
  assign N60 = N51 | N59;
  assign N61 = N52 | N60;
  assign N62 = N53 | N61;
  assign N63 = N123 | N62;
  assign N64 = N54 | N63;
  assign N65 = N55 | N64;
  assign N66 = N56 | N65;
  assign N67 = ~N66;
  assign N68 = ~b_zero_3_r;
  assign N70 = ~a_zero_3_r;
  assign N72 = ~N49;
  assign N73 = N50 & N72;
  assign N74 = ~N50;
  assign N75 = N72 & N74;
  assign N76 = a_infty_3_r & N75;
  assign N77 = ~a_infty_3_r;
  assign N78 = N75 & N77;
  assign N79 = b_infty_3_r & N78;
  assign N80 = ~b_infty_3_r;
  assign N81 = N78 & N80;
  assign N82 = N51 & N81;
  assign N83 = ~N51;
  assign N84 = N81 & N83;
  assign N85 = N52 & N84;
  assign N86 = ~N52;
  assign N87 = N84 & N86;
  assign N88 = N53 & N87;
  assign N89 = ~N53;
  assign N90 = N87 & N89;
  assign N91 = N123 & N90;
  assign N92 = N90 & N122;
  assign N93 = N54 & N92;
  assign N94 = ~N54;
  assign N95 = N92 & N94;
  assign N96 = N55 & N95;
  assign N97 = ~N55;
  assign N98 = N95 & N97;
  assign N99 = N56 & N98;

  always @(posedge clk_i) begin
    if(N26) begin
      { man_a_norm_r[52:7] } <= { 1'b1, man_a[51:7] };
      { man_b_norm_r[52:0] } <= { 1'b1, man_b[51:0] };
      final_sign_1_r <= final_sign;
    end 
    if(N27) begin
      { man_a_norm_r[6:0] } <= { man_a[6:0] };
      { exp_sum_unbiased_1_r[10:0] } <= { exp_sum_unbiased[10:10], exp_sum[9:0] };
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
      { exp_sum_1_r[11:10] } <= { exp_sum[11:10] };
    end 
    if(N24) begin
      v_1_r <= N25;
    end 
    if(N35) begin
      { exp_sum_2_r[11:10] } <= { exp_sum_1_r[11:10] };
      final_sign_2_r <= final_sign_1_r;
      { man_prod_2_r[105:31], man_prod_2_r[0:0] } <= { man_prod[105:31], man_prod[0:0] };
      { exp_sum_unbiased_2_r[10:0] } <= { exp_sum_unbiased_1_r[10:0] };
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
    if(N33) begin
      v_2_r <= N34;
    end 
    if(N36) begin
      { man_prod_2_r[30:1] } <= { man_prod[30:1] };
    end 
    if(N47) begin
      { exp_sum_3_r[11:10] } <= { exp_sum_2_r[11:10] };
      { final_exp_3_r[11:11] } <= { final_exp[11:11] };
      { pre_roundup_3_r[62:0] } <= { final_exp[10:0], shifted_mantissa[51:0] };
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
    if(N45) begin
      v_o <= N46;
    end 
  end


endmodule

