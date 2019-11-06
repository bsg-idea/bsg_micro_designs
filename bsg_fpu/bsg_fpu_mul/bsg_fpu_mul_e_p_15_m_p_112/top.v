

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

  input [127:0] a_i;
  input [127:0] b_i;
  output [127:0] z_o;
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



module bsg_fpu_preprocess_e_p15_m_p112
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

  input [127:0] a_i;
  output [14:0] exp_o;
  output [111:0] man_o;
  output zero_o;
  output nan_o;
  output sig_nan_o;
  output infty_o;
  output exp_zero_o;
  output man_zero_o;
  output denormal_o;
  output sign_o;
  wire [14:0] exp_o;
  wire [111:0] man_o;
  wire zero_o,nan_o,sig_nan_o,infty_o,exp_zero_o,man_zero_o,denormal_o,sign_o,N0,N1,N2,
  N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,
  N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,
  N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,
  N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,
  N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,
  N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,
  N136,N137,N138,N139,N141;
  assign man_o[111] = a_i[111];
  assign man_o[110] = a_i[110];
  assign man_o[109] = a_i[109];
  assign man_o[108] = a_i[108];
  assign man_o[107] = a_i[107];
  assign man_o[106] = a_i[106];
  assign man_o[105] = a_i[105];
  assign man_o[104] = a_i[104];
  assign man_o[103] = a_i[103];
  assign man_o[102] = a_i[102];
  assign man_o[101] = a_i[101];
  assign man_o[100] = a_i[100];
  assign man_o[99] = a_i[99];
  assign man_o[98] = a_i[98];
  assign man_o[97] = a_i[97];
  assign man_o[96] = a_i[96];
  assign man_o[95] = a_i[95];
  assign man_o[94] = a_i[94];
  assign man_o[93] = a_i[93];
  assign man_o[92] = a_i[92];
  assign man_o[91] = a_i[91];
  assign man_o[90] = a_i[90];
  assign man_o[89] = a_i[89];
  assign man_o[88] = a_i[88];
  assign man_o[87] = a_i[87];
  assign man_o[86] = a_i[86];
  assign man_o[85] = a_i[85];
  assign man_o[84] = a_i[84];
  assign man_o[83] = a_i[83];
  assign man_o[82] = a_i[82];
  assign man_o[81] = a_i[81];
  assign man_o[80] = a_i[80];
  assign man_o[79] = a_i[79];
  assign man_o[78] = a_i[78];
  assign man_o[77] = a_i[77];
  assign man_o[76] = a_i[76];
  assign man_o[75] = a_i[75];
  assign man_o[74] = a_i[74];
  assign man_o[73] = a_i[73];
  assign man_o[72] = a_i[72];
  assign man_o[71] = a_i[71];
  assign man_o[70] = a_i[70];
  assign man_o[69] = a_i[69];
  assign man_o[68] = a_i[68];
  assign man_o[67] = a_i[67];
  assign man_o[66] = a_i[66];
  assign man_o[65] = a_i[65];
  assign man_o[64] = a_i[64];
  assign man_o[63] = a_i[63];
  assign man_o[62] = a_i[62];
  assign man_o[61] = a_i[61];
  assign man_o[60] = a_i[60];
  assign man_o[59] = a_i[59];
  assign man_o[58] = a_i[58];
  assign man_o[57] = a_i[57];
  assign man_o[56] = a_i[56];
  assign man_o[55] = a_i[55];
  assign man_o[54] = a_i[54];
  assign man_o[53] = a_i[53];
  assign man_o[52] = a_i[52];
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
  assign exp_o[14] = a_i[126];
  assign exp_o[13] = a_i[125];
  assign exp_o[12] = a_i[124];
  assign exp_o[11] = a_i[123];
  assign exp_o[10] = a_i[122];
  assign exp_o[9] = a_i[121];
  assign exp_o[8] = a_i[120];
  assign exp_o[7] = a_i[119];
  assign exp_o[6] = a_i[118];
  assign exp_o[5] = a_i[117];
  assign exp_o[4] = a_i[116];
  assign exp_o[3] = a_i[115];
  assign exp_o[2] = a_i[114];
  assign exp_o[1] = a_i[113];
  assign exp_o[0] = a_i[112];
  assign sign_o = a_i[127];
  assign N0 = a_i[125] | a_i[126];
  assign N1 = a_i[124] | N0;
  assign N2 = a_i[123] | N1;
  assign N3 = a_i[122] | N2;
  assign N4 = a_i[121] | N3;
  assign N5 = a_i[120] | N4;
  assign N6 = a_i[119] | N5;
  assign N7 = a_i[118] | N6;
  assign N8 = a_i[117] | N7;
  assign N9 = a_i[116] | N8;
  assign N10 = a_i[115] | N9;
  assign N11 = a_i[114] | N10;
  assign N12 = a_i[113] | N11;
  assign N13 = a_i[112] | N12;
  assign exp_zero_o = ~N13;
  assign N15 = a_i[125] & a_i[126];
  assign N16 = a_i[124] & N15;
  assign N17 = a_i[123] & N16;
  assign N18 = a_i[122] & N17;
  assign N19 = a_i[121] & N18;
  assign N20 = a_i[120] & N19;
  assign N21 = a_i[119] & N20;
  assign N22 = a_i[118] & N21;
  assign N23 = a_i[117] & N22;
  assign N24 = a_i[116] & N23;
  assign N25 = a_i[115] & N24;
  assign N26 = a_i[114] & N25;
  assign N27 = a_i[113] & N26;
  assign N28 = a_i[112] & N27;
  assign N29 = a_i[110] | a_i[111];
  assign N30 = a_i[109] | N29;
  assign N31 = a_i[108] | N30;
  assign N32 = a_i[107] | N31;
  assign N33 = a_i[106] | N32;
  assign N34 = a_i[105] | N33;
  assign N35 = a_i[104] | N34;
  assign N36 = a_i[103] | N35;
  assign N37 = a_i[102] | N36;
  assign N38 = a_i[101] | N37;
  assign N39 = a_i[100] | N38;
  assign N40 = a_i[99] | N39;
  assign N41 = a_i[98] | N40;
  assign N42 = a_i[97] | N41;
  assign N43 = a_i[96] | N42;
  assign N44 = a_i[95] | N43;
  assign N45 = a_i[94] | N44;
  assign N46 = a_i[93] | N45;
  assign N47 = a_i[92] | N46;
  assign N48 = a_i[91] | N47;
  assign N49 = a_i[90] | N48;
  assign N50 = a_i[89] | N49;
  assign N51 = a_i[88] | N50;
  assign N52 = a_i[87] | N51;
  assign N53 = a_i[86] | N52;
  assign N54 = a_i[85] | N53;
  assign N55 = a_i[84] | N54;
  assign N56 = a_i[83] | N55;
  assign N57 = a_i[82] | N56;
  assign N58 = a_i[81] | N57;
  assign N59 = a_i[80] | N58;
  assign N60 = a_i[79] | N59;
  assign N61 = a_i[78] | N60;
  assign N62 = a_i[77] | N61;
  assign N63 = a_i[76] | N62;
  assign N64 = a_i[75] | N63;
  assign N65 = a_i[74] | N64;
  assign N66 = a_i[73] | N65;
  assign N67 = a_i[72] | N66;
  assign N68 = a_i[71] | N67;
  assign N69 = a_i[70] | N68;
  assign N70 = a_i[69] | N69;
  assign N71 = a_i[68] | N70;
  assign N72 = a_i[67] | N71;
  assign N73 = a_i[66] | N72;
  assign N74 = a_i[65] | N73;
  assign N75 = a_i[64] | N74;
  assign N76 = a_i[63] | N75;
  assign N77 = a_i[62] | N76;
  assign N78 = a_i[61] | N77;
  assign N79 = a_i[60] | N78;
  assign N80 = a_i[59] | N79;
  assign N81 = a_i[58] | N80;
  assign N82 = a_i[57] | N81;
  assign N83 = a_i[56] | N82;
  assign N84 = a_i[55] | N83;
  assign N85 = a_i[54] | N84;
  assign N86 = a_i[53] | N85;
  assign N87 = a_i[52] | N86;
  assign N88 = a_i[51] | N87;
  assign N89 = a_i[50] | N88;
  assign N90 = a_i[49] | N89;
  assign N91 = a_i[48] | N90;
  assign N92 = a_i[47] | N91;
  assign N93 = a_i[46] | N92;
  assign N94 = a_i[45] | N93;
  assign N95 = a_i[44] | N94;
  assign N96 = a_i[43] | N95;
  assign N97 = a_i[42] | N96;
  assign N98 = a_i[41] | N97;
  assign N99 = a_i[40] | N98;
  assign N100 = a_i[39] | N99;
  assign N101 = a_i[38] | N100;
  assign N102 = a_i[37] | N101;
  assign N103 = a_i[36] | N102;
  assign N104 = a_i[35] | N103;
  assign N105 = a_i[34] | N104;
  assign N106 = a_i[33] | N105;
  assign N107 = a_i[32] | N106;
  assign N108 = a_i[31] | N107;
  assign N109 = a_i[30] | N108;
  assign N110 = a_i[29] | N109;
  assign N111 = a_i[28] | N110;
  assign N112 = a_i[27] | N111;
  assign N113 = a_i[26] | N112;
  assign N114 = a_i[25] | N113;
  assign N115 = a_i[24] | N114;
  assign N116 = a_i[23] | N115;
  assign N117 = a_i[22] | N116;
  assign N118 = a_i[21] | N117;
  assign N119 = a_i[20] | N118;
  assign N120 = a_i[19] | N119;
  assign N121 = a_i[18] | N120;
  assign N122 = a_i[17] | N121;
  assign N123 = a_i[16] | N122;
  assign N124 = a_i[15] | N123;
  assign N125 = a_i[14] | N124;
  assign N126 = a_i[13] | N125;
  assign N127 = a_i[12] | N126;
  assign N128 = a_i[11] | N127;
  assign N129 = a_i[10] | N128;
  assign N130 = a_i[9] | N129;
  assign N131 = a_i[8] | N130;
  assign N132 = a_i[7] | N131;
  assign N133 = a_i[6] | N132;
  assign N134 = a_i[5] | N133;
  assign N135 = a_i[4] | N134;
  assign N136 = a_i[3] | N135;
  assign N137 = a_i[2] | N136;
  assign N138 = a_i[1] | N137;
  assign N139 = a_i[0] | N138;
  assign man_zero_o = ~N139;
  assign zero_o = exp_zero_o & man_zero_o;
  assign nan_o = N28 & N139;
  assign sig_nan_o = nan_o & N141;
  assign N141 = ~a_i[111];
  assign infty_o = N28 & man_zero_o;
  assign denormal_o = exp_zero_o & N139;

endmodule



module bsg_mul_synth_width_p113
(
  a_i,
  b_i,
  o
);

  input [112:0] a_i;
  input [112:0] b_i;
  output [225:0] o;
  wire [225:0] o;
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

  input [127:0] a_i;
  input [127:0] b_i;
  output [127:0] z_o;
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
  wire [127:0] z_o;
  wire ready_o,unimplemented_o,invalid_o,overflow_o,underflow_o,N0,N1,N2,N3,N4,N5,N6,
  N7,N8,stall,a_zero,a_nan,a_sig_nan,a_infty,exp_a_zero,man_a_zero,a_denormal,
  sign_a,b_zero,b_nan,b_sig_nan,b_infty,exp_b_zero,man_b_zero,b_denormal,sign_b,
  final_sign,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,
  N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,sticky,N44,N45,
  round_up,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,carry_into_exp,N56,N57,N58,N59,
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
  N356,N357,N358,N359,N360,N361,N362,N363,N364;
  wire [14:0] exp_a,exp_b;
  wire [111:0] man_a,man_b,shifted_mantissa;
  wire [15:0] exp_sum,final_exp;
  wire [14:14] exp_sum_unbiased;
  wire [225:0] man_prod;
  wire [126:0] rounded;
  reg [112:0] man_a_norm_r,man_b_norm_r;
  reg v_1_r,final_sign_1_r,a_sig_nan_1_r,b_sig_nan_1_r,a_nan_1_r,b_nan_1_r,
  a_infty_1_r,b_infty_1_r,a_zero_1_r,b_zero_1_r,a_denormal_1_r,b_denormal_1_r,v_2_r,
  final_sign_2_r,a_sig_nan_2_r,b_sig_nan_2_r,a_nan_2_r,b_nan_2_r,a_infty_2_r,b_infty_2_r,
  a_zero_2_r,b_zero_2_r,a_denormal_2_r,b_denormal_2_r,v_o,round_up_3_r,
  final_sign_3_r,a_sig_nan_3_r,b_sig_nan_3_r,a_nan_3_r,b_nan_3_r,a_infty_3_r,b_infty_3_r,
  a_zero_3_r,b_zero_3_r,a_denormal_3_r,b_denormal_3_r;
  reg [14:0] exp_sum_unbiased_1_r,exp_sum_unbiased_2_r;
  reg [15:14] exp_sum_1_r,exp_sum_2_r,exp_sum_3_r;
  reg [225:0] man_prod_2_r;
  reg [15:15] final_exp_3_r;
  reg [126:0] pre_roundup_3_r;

  bsg_fpu_preprocess_e_p15_m_p112
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


  bsg_fpu_preprocess_e_p15_m_p112
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


  bsg_mul_synth_width_p113
  mul_synth
  (
    .a_i(man_a_norm_r),
    .b_i(man_b_norm_r),
    .o(man_prod)
  );

  assign N107 = pre_roundup_3_r[125] | pre_roundup_3_r[126];
  assign N108 = pre_roundup_3_r[124] | N107;
  assign N109 = pre_roundup_3_r[123] | N108;
  assign N110 = pre_roundup_3_r[122] | N109;
  assign N111 = pre_roundup_3_r[121] | N110;
  assign N112 = pre_roundup_3_r[120] | N111;
  assign N113 = pre_roundup_3_r[119] | N112;
  assign N114 = pre_roundup_3_r[118] | N113;
  assign N115 = pre_roundup_3_r[117] | N114;
  assign N116 = pre_roundup_3_r[116] | N115;
  assign N117 = pre_roundup_3_r[115] | N116;
  assign N118 = pre_roundup_3_r[114] | N117;
  assign N119 = pre_roundup_3_r[113] | N118;
  assign N120 = pre_roundup_3_r[112] | N119;
  assign N121 = ~N120;
  assign N122 = pre_roundup_3_r[125] & pre_roundup_3_r[126];
  assign N123 = pre_roundup_3_r[124] & N122;
  assign N124 = pre_roundup_3_r[123] & N123;
  assign N125 = pre_roundup_3_r[122] & N124;
  assign N126 = pre_roundup_3_r[121] & N125;
  assign N127 = pre_roundup_3_r[120] & N126;
  assign N128 = pre_roundup_3_r[119] & N127;
  assign N129 = pre_roundup_3_r[118] & N128;
  assign N130 = pre_roundup_3_r[117] & N129;
  assign N131 = pre_roundup_3_r[116] & N130;
  assign N132 = pre_roundup_3_r[115] & N131;
  assign N133 = pre_roundup_3_r[114] & N132;
  assign N134 = pre_roundup_3_r[113] & N133;
  assign N135 = pre_roundup_3_r[112] & N134;
  assign N136 = exp_sum_3_r[14] & exp_sum_3_r[15];
  assign N137 = exp_sum_3_r[14] | exp_sum_3_r[15];
  assign N138 = ~N137;
  assign rounded = pre_roundup_3_r + round_up_3_r;
  assign final_exp = exp_sum_unbiased_2_r + man_prod_2_r[225];
  assign { N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9 } = exp_a + exp_b;
  assign exp_sum = { N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9 } + 1'b1;
  assign N28 = (N0)? 1'b1 : 
               (N34)? 1'b1 : 
               (N27)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign N29 = (N0)? 1'b0 : 
               (N34)? v_i : 1'b0;
  assign { N31, N30 } = (N0)? { 1'b0, 1'b0 } : 
                        (N34)? { v_i, v_i } : 
                        (N27)? { 1'b0, 1'b0 } : 1'b0;
  assign N32 = (N0)? 1'b0 : 
               (N34)? v_i : 
               (N27)? 1'b0 : 1'b0;
  assign N38 = (N0)? 1'b1 : 
               (N43)? 1'b1 : 
               (N37)? 1'b0 : 1'b0;
  assign N39 = (N0)? 1'b0 : 
               (N43)? v_1_r : 1'b0;
  assign N40 = (N0)? 1'b0 : 
               (N43)? v_1_r : 
               (N37)? 1'b0 : 1'b0;
  assign { N42, N41 } = (N0)? { 1'b0, 1'b0 } : 
                        (N43)? { v_1_r, v_1_r } : 
                        (N37)? { 1'b0, 1'b0 } : 1'b0;
  assign N46 = (N1)? man_prod_2_r[112] : 
               (N45)? man_prod_2_r[111] : 1'b0;
  assign N1 = man_prod_2_r[225];
  assign round_up = (N2)? N46 : 
                    (N3)? N47 : 1'b0;
  assign N2 = sticky;
  assign N3 = N44;
  assign shifted_mantissa = (N1)? man_prod_2_r[224:113] : 
                            (N45)? man_prod_2_r[223:112] : 1'b0;
  assign N51 = (N0)? 1'b1 : 
               (N55)? 1'b1 : 
               (N50)? 1'b0 : 1'b0;
  assign N52 = (N0)? 1'b0 : 
               (N55)? v_2_r : 1'b0;
  assign N53 = (N0)? 1'b0 : 
               (N55)? v_2_r : 
               (N50)? 1'b0 : 1'b0;
  assign N54 = (N0)? 1'b0 : 
               (N55)? v_2_r : 
               (N50)? 1'b0 : 1'b0;
  assign N76 = (N4)? 1'b0 : 
               (N5)? final_sign_3_r : 1'b0;
  assign N4 = b_zero_3_r;
  assign N5 = N75;
  assign N78 = (N6)? 1'b0 : 
               (N7)? final_sign_3_r : 1'b0;
  assign N6 = a_zero_3_r;
  assign N7 = N77;
  assign unimplemented_o = (N8)? 1'b0 : 
                           (N80)? 1'b0 : 
                           (N83)? 1'b0 : 
                           (N86)? 1'b0 : 
                           (N89)? 1'b0 : 
                           (N92)? 1'b0 : 
                           (N95)? 1'b1 : 
                           (N98)? 1'b0 : 
                           (N100)? 1'b0 : 
                           (N103)? 1'b0 : 
                           (N106)? 1'b0 : 
                           (N74)? 1'b0 : 1'b0;
  assign N8 = N56;
  assign invalid_o = (N8)? 1'b1 : 
                     (N80)? 1'b0 : 
                     (N83)? b_zero_3_r : 
                     (N86)? a_zero_3_r : 
                     (N89)? 1'b0 : 
                     (N92)? 1'b0 : 
                     (N95)? 1'b0 : 
                     (N98)? 1'b0 : 
                     (N100)? 1'b0 : 
                     (N103)? 1'b0 : 
                     (N106)? 1'b0 : 
                     (N74)? 1'b0 : 1'b0;
  assign overflow_o = (N8)? 1'b0 : 
                      (N80)? 1'b0 : 
                      (N83)? 1'b0 : 
                      (N86)? 1'b0 : 
                      (N89)? 1'b0 : 
                      (N92)? 1'b0 : 
                      (N95)? 1'b0 : 
                      (N98)? 1'b0 : 
                      (N100)? 1'b1 : 
                      (N103)? 1'b1 : 
                      (N106)? 1'b0 : 
                      (N74)? 1'b0 : 1'b0;
  assign underflow_o = (N8)? 1'b0 : 
                       (N80)? 1'b0 : 
                       (N83)? 1'b0 : 
                       (N86)? 1'b0 : 
                       (N89)? 1'b0 : 
                       (N92)? 1'b1 : 
                       (N95)? 1'b0 : 
                       (N98)? 1'b1 : 
                       (N100)? 1'b0 : 
                       (N103)? 1'b0 : 
                       (N106)? 1'b1 : 
                       (N74)? 1'b0 : 1'b0;
  assign z_o = (N8)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N80)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N83)? { N76, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, b_zero_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N86)? { N78, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, a_zero_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N89)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N92)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N95)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N98)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N100)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N103)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N106)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N74)? { final_sign_3_r, rounded } : 1'b0;
  assign stall = v_o & N139;
  assign N139 = ~yumi_i;
  assign ready_o = N140 & en_i;
  assign N140 = ~stall;
  assign final_sign = sign_a ^ sign_b;
  assign exp_sum_unbiased[14] = ~exp_sum[14];
  assign N25 = N140 & en_i;
  assign N26 = N25 | reset_i;
  assign N27 = ~N26;
  assign N33 = ~reset_i;
  assign N34 = N25 & N33;
  assign N35 = N140 & en_i;
  assign N36 = N35 | reset_i;
  assign N37 = ~N36;
  assign N43 = N35 & N33;
  assign sticky = N249 | man_prod_2_r[0];
  assign N249 = N248 | man_prod_2_r[1];
  assign N248 = N247 | man_prod_2_r[2];
  assign N247 = N246 | man_prod_2_r[3];
  assign N246 = N245 | man_prod_2_r[4];
  assign N245 = N244 | man_prod_2_r[5];
  assign N244 = N243 | man_prod_2_r[6];
  assign N243 = N242 | man_prod_2_r[7];
  assign N242 = N241 | man_prod_2_r[8];
  assign N241 = N240 | man_prod_2_r[9];
  assign N240 = N239 | man_prod_2_r[10];
  assign N239 = N238 | man_prod_2_r[11];
  assign N238 = N237 | man_prod_2_r[12];
  assign N237 = N236 | man_prod_2_r[13];
  assign N236 = N235 | man_prod_2_r[14];
  assign N235 = N234 | man_prod_2_r[15];
  assign N234 = N233 | man_prod_2_r[16];
  assign N233 = N232 | man_prod_2_r[17];
  assign N232 = N231 | man_prod_2_r[18];
  assign N231 = N230 | man_prod_2_r[19];
  assign N230 = N229 | man_prod_2_r[20];
  assign N229 = N228 | man_prod_2_r[21];
  assign N228 = N227 | man_prod_2_r[22];
  assign N227 = N226 | man_prod_2_r[23];
  assign N226 = N225 | man_prod_2_r[24];
  assign N225 = N224 | man_prod_2_r[25];
  assign N224 = N223 | man_prod_2_r[26];
  assign N223 = N222 | man_prod_2_r[27];
  assign N222 = N221 | man_prod_2_r[28];
  assign N221 = N220 | man_prod_2_r[29];
  assign N220 = N219 | man_prod_2_r[30];
  assign N219 = N218 | man_prod_2_r[31];
  assign N218 = N217 | man_prod_2_r[32];
  assign N217 = N216 | man_prod_2_r[33];
  assign N216 = N215 | man_prod_2_r[34];
  assign N215 = N214 | man_prod_2_r[35];
  assign N214 = N213 | man_prod_2_r[36];
  assign N213 = N212 | man_prod_2_r[37];
  assign N212 = N211 | man_prod_2_r[38];
  assign N211 = N210 | man_prod_2_r[39];
  assign N210 = N209 | man_prod_2_r[40];
  assign N209 = N208 | man_prod_2_r[41];
  assign N208 = N207 | man_prod_2_r[42];
  assign N207 = N206 | man_prod_2_r[43];
  assign N206 = N205 | man_prod_2_r[44];
  assign N205 = N204 | man_prod_2_r[45];
  assign N204 = N203 | man_prod_2_r[46];
  assign N203 = N202 | man_prod_2_r[47];
  assign N202 = N201 | man_prod_2_r[48];
  assign N201 = N200 | man_prod_2_r[49];
  assign N200 = N199 | man_prod_2_r[50];
  assign N199 = N198 | man_prod_2_r[51];
  assign N198 = N197 | man_prod_2_r[52];
  assign N197 = N196 | man_prod_2_r[53];
  assign N196 = N195 | man_prod_2_r[54];
  assign N195 = N194 | man_prod_2_r[55];
  assign N194 = N193 | man_prod_2_r[56];
  assign N193 = N192 | man_prod_2_r[57];
  assign N192 = N191 | man_prod_2_r[58];
  assign N191 = N190 | man_prod_2_r[59];
  assign N190 = N189 | man_prod_2_r[60];
  assign N189 = N188 | man_prod_2_r[61];
  assign N188 = N187 | man_prod_2_r[62];
  assign N187 = N186 | man_prod_2_r[63];
  assign N186 = N185 | man_prod_2_r[64];
  assign N185 = N184 | man_prod_2_r[65];
  assign N184 = N183 | man_prod_2_r[66];
  assign N183 = N182 | man_prod_2_r[67];
  assign N182 = N181 | man_prod_2_r[68];
  assign N181 = N180 | man_prod_2_r[69];
  assign N180 = N179 | man_prod_2_r[70];
  assign N179 = N178 | man_prod_2_r[71];
  assign N178 = N177 | man_prod_2_r[72];
  assign N177 = N176 | man_prod_2_r[73];
  assign N176 = N175 | man_prod_2_r[74];
  assign N175 = N174 | man_prod_2_r[75];
  assign N174 = N173 | man_prod_2_r[76];
  assign N173 = N172 | man_prod_2_r[77];
  assign N172 = N171 | man_prod_2_r[78];
  assign N171 = N170 | man_prod_2_r[79];
  assign N170 = N169 | man_prod_2_r[80];
  assign N169 = N168 | man_prod_2_r[81];
  assign N168 = N167 | man_prod_2_r[82];
  assign N167 = N166 | man_prod_2_r[83];
  assign N166 = N165 | man_prod_2_r[84];
  assign N165 = N164 | man_prod_2_r[85];
  assign N164 = N163 | man_prod_2_r[86];
  assign N163 = N162 | man_prod_2_r[87];
  assign N162 = N161 | man_prod_2_r[88];
  assign N161 = N160 | man_prod_2_r[89];
  assign N160 = N159 | man_prod_2_r[90];
  assign N159 = N158 | man_prod_2_r[91];
  assign N158 = N157 | man_prod_2_r[92];
  assign N157 = N156 | man_prod_2_r[93];
  assign N156 = N155 | man_prod_2_r[94];
  assign N155 = N154 | man_prod_2_r[95];
  assign N154 = N153 | man_prod_2_r[96];
  assign N153 = N152 | man_prod_2_r[97];
  assign N152 = N151 | man_prod_2_r[98];
  assign N151 = N150 | man_prod_2_r[99];
  assign N150 = N149 | man_prod_2_r[100];
  assign N149 = N148 | man_prod_2_r[101];
  assign N148 = N147 | man_prod_2_r[102];
  assign N147 = N146 | man_prod_2_r[103];
  assign N146 = N145 | man_prod_2_r[104];
  assign N145 = N144 | man_prod_2_r[105];
  assign N144 = N143 | man_prod_2_r[106];
  assign N143 = N142 | man_prod_2_r[107];
  assign N142 = N141 | man_prod_2_r[108];
  assign N141 = man_prod_2_r[110] | man_prod_2_r[109];
  assign N44 = ~sticky;
  assign N45 = ~man_prod_2_r[225];
  assign N47 = man_prod_2_r[112] & N251;
  assign N251 = man_prod_2_r[111] | N250;
  assign N250 = man_prod_2_r[225] & man_prod_2_r[113];
  assign N48 = N140 & en_i;
  assign N49 = N48 | reset_i;
  assign N50 = ~N49;
  assign N55 = N48 & N33;
  assign carry_into_exp = N362 & pre_roundup_3_r[0];
  assign N362 = N361 & pre_roundup_3_r[1];
  assign N361 = N360 & pre_roundup_3_r[2];
  assign N360 = N359 & pre_roundup_3_r[3];
  assign N359 = N358 & pre_roundup_3_r[4];
  assign N358 = N357 & pre_roundup_3_r[5];
  assign N357 = N356 & pre_roundup_3_r[6];
  assign N356 = N355 & pre_roundup_3_r[7];
  assign N355 = N354 & pre_roundup_3_r[8];
  assign N354 = N353 & pre_roundup_3_r[9];
  assign N353 = N352 & pre_roundup_3_r[10];
  assign N352 = N351 & pre_roundup_3_r[11];
  assign N351 = N350 & pre_roundup_3_r[12];
  assign N350 = N349 & pre_roundup_3_r[13];
  assign N349 = N348 & pre_roundup_3_r[14];
  assign N348 = N347 & pre_roundup_3_r[15];
  assign N347 = N346 & pre_roundup_3_r[16];
  assign N346 = N345 & pre_roundup_3_r[17];
  assign N345 = N344 & pre_roundup_3_r[18];
  assign N344 = N343 & pre_roundup_3_r[19];
  assign N343 = N342 & pre_roundup_3_r[20];
  assign N342 = N341 & pre_roundup_3_r[21];
  assign N341 = N340 & pre_roundup_3_r[22];
  assign N340 = N339 & pre_roundup_3_r[23];
  assign N339 = N338 & pre_roundup_3_r[24];
  assign N338 = N337 & pre_roundup_3_r[25];
  assign N337 = N336 & pre_roundup_3_r[26];
  assign N336 = N335 & pre_roundup_3_r[27];
  assign N335 = N334 & pre_roundup_3_r[28];
  assign N334 = N333 & pre_roundup_3_r[29];
  assign N333 = N332 & pre_roundup_3_r[30];
  assign N332 = N331 & pre_roundup_3_r[31];
  assign N331 = N330 & pre_roundup_3_r[32];
  assign N330 = N329 & pre_roundup_3_r[33];
  assign N329 = N328 & pre_roundup_3_r[34];
  assign N328 = N327 & pre_roundup_3_r[35];
  assign N327 = N326 & pre_roundup_3_r[36];
  assign N326 = N325 & pre_roundup_3_r[37];
  assign N325 = N324 & pre_roundup_3_r[38];
  assign N324 = N323 & pre_roundup_3_r[39];
  assign N323 = N322 & pre_roundup_3_r[40];
  assign N322 = N321 & pre_roundup_3_r[41];
  assign N321 = N320 & pre_roundup_3_r[42];
  assign N320 = N319 & pre_roundup_3_r[43];
  assign N319 = N318 & pre_roundup_3_r[44];
  assign N318 = N317 & pre_roundup_3_r[45];
  assign N317 = N316 & pre_roundup_3_r[46];
  assign N316 = N315 & pre_roundup_3_r[47];
  assign N315 = N314 & pre_roundup_3_r[48];
  assign N314 = N313 & pre_roundup_3_r[49];
  assign N313 = N312 & pre_roundup_3_r[50];
  assign N312 = N311 & pre_roundup_3_r[51];
  assign N311 = N310 & pre_roundup_3_r[52];
  assign N310 = N309 & pre_roundup_3_r[53];
  assign N309 = N308 & pre_roundup_3_r[54];
  assign N308 = N307 & pre_roundup_3_r[55];
  assign N307 = N306 & pre_roundup_3_r[56];
  assign N306 = N305 & pre_roundup_3_r[57];
  assign N305 = N304 & pre_roundup_3_r[58];
  assign N304 = N303 & pre_roundup_3_r[59];
  assign N303 = N302 & pre_roundup_3_r[60];
  assign N302 = N301 & pre_roundup_3_r[61];
  assign N301 = N300 & pre_roundup_3_r[62];
  assign N300 = N299 & pre_roundup_3_r[63];
  assign N299 = N298 & pre_roundup_3_r[64];
  assign N298 = N297 & pre_roundup_3_r[65];
  assign N297 = N296 & pre_roundup_3_r[66];
  assign N296 = N295 & pre_roundup_3_r[67];
  assign N295 = N294 & pre_roundup_3_r[68];
  assign N294 = N293 & pre_roundup_3_r[69];
  assign N293 = N292 & pre_roundup_3_r[70];
  assign N292 = N291 & pre_roundup_3_r[71];
  assign N291 = N290 & pre_roundup_3_r[72];
  assign N290 = N289 & pre_roundup_3_r[73];
  assign N289 = N288 & pre_roundup_3_r[74];
  assign N288 = N287 & pre_roundup_3_r[75];
  assign N287 = N286 & pre_roundup_3_r[76];
  assign N286 = N285 & pre_roundup_3_r[77];
  assign N285 = N284 & pre_roundup_3_r[78];
  assign N284 = N283 & pre_roundup_3_r[79];
  assign N283 = N282 & pre_roundup_3_r[80];
  assign N282 = N281 & pre_roundup_3_r[81];
  assign N281 = N280 & pre_roundup_3_r[82];
  assign N280 = N279 & pre_roundup_3_r[83];
  assign N279 = N278 & pre_roundup_3_r[84];
  assign N278 = N277 & pre_roundup_3_r[85];
  assign N277 = N276 & pre_roundup_3_r[86];
  assign N276 = N275 & pre_roundup_3_r[87];
  assign N275 = N274 & pre_roundup_3_r[88];
  assign N274 = N273 & pre_roundup_3_r[89];
  assign N273 = N272 & pre_roundup_3_r[90];
  assign N272 = N271 & pre_roundup_3_r[91];
  assign N271 = N270 & pre_roundup_3_r[92];
  assign N270 = N269 & pre_roundup_3_r[93];
  assign N269 = N268 & pre_roundup_3_r[94];
  assign N268 = N267 & pre_roundup_3_r[95];
  assign N267 = N266 & pre_roundup_3_r[96];
  assign N266 = N265 & pre_roundup_3_r[97];
  assign N265 = N264 & pre_roundup_3_r[98];
  assign N264 = N263 & pre_roundup_3_r[99];
  assign N263 = N262 & pre_roundup_3_r[100];
  assign N262 = N261 & pre_roundup_3_r[101];
  assign N261 = N260 & pre_roundup_3_r[102];
  assign N260 = N259 & pre_roundup_3_r[103];
  assign N259 = N258 & pre_roundup_3_r[104];
  assign N258 = N257 & pre_roundup_3_r[105];
  assign N257 = N256 & pre_roundup_3_r[106];
  assign N256 = N255 & pre_roundup_3_r[107];
  assign N255 = N254 & pre_roundup_3_r[108];
  assign N254 = N253 & pre_roundup_3_r[109];
  assign N253 = N252 & pre_roundup_3_r[110];
  assign N252 = round_up_3_r & pre_roundup_3_r[111];
  assign N56 = a_sig_nan_3_r | b_sig_nan_3_r;
  assign N57 = a_nan_3_r | b_nan_3_r;
  assign N58 = a_zero_3_r | b_zero_3_r;
  assign N59 = a_denormal_3_r & b_denormal_3_r;
  assign N60 = a_denormal_3_r | b_denormal_3_r;
  assign N61 = N136 | final_exp_3_r[15];
  assign N62 = N135 & N363;
  assign N363 = pre_roundup_3_r[112] | carry_into_exp;
  assign N63 = N121 & N364;
  assign N364 = ~carry_into_exp;
  assign N64 = N57 | N56;
  assign N65 = a_infty_3_r | N64;
  assign N66 = b_infty_3_r | N65;
  assign N67 = N58 | N66;
  assign N68 = N59 | N67;
  assign N69 = N60 | N68;
  assign N70 = N138 | N69;
  assign N71 = N61 | N70;
  assign N72 = N62 | N71;
  assign N73 = N63 | N72;
  assign N74 = ~N73;
  assign N75 = ~b_zero_3_r;
  assign N77 = ~a_zero_3_r;
  assign N79 = ~N56;
  assign N80 = N57 & N79;
  assign N81 = ~N57;
  assign N82 = N79 & N81;
  assign N83 = a_infty_3_r & N82;
  assign N84 = ~a_infty_3_r;
  assign N85 = N82 & N84;
  assign N86 = b_infty_3_r & N85;
  assign N87 = ~b_infty_3_r;
  assign N88 = N85 & N87;
  assign N89 = N58 & N88;
  assign N90 = ~N58;
  assign N91 = N88 & N90;
  assign N92 = N59 & N91;
  assign N93 = ~N59;
  assign N94 = N91 & N93;
  assign N95 = N60 & N94;
  assign N96 = ~N60;
  assign N97 = N94 & N96;
  assign N98 = N138 & N97;
  assign N99 = N97 & N137;
  assign N100 = N61 & N99;
  assign N101 = ~N61;
  assign N102 = N99 & N101;
  assign N103 = N62 & N102;
  assign N104 = ~N62;
  assign N105 = N102 & N104;
  assign N106 = N63 & N105;

  always @(posedge clk_i) begin
    if(N30) begin
      { man_a_norm_r[112:28] } <= { 1'b1, man_a[111:28] };
      { man_b_norm_r[13:0] } <= { man_b[13:0] };
      { exp_sum_unbiased_1_r[0:0] } <= { exp_sum[0:0] };
    end 
    if(N32) begin
      { man_a_norm_r[27:0] } <= { man_a[27:0] };
      { exp_sum_unbiased_1_r[14:1] } <= { exp_sum_unbiased[14:14], exp_sum[13:1] };
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
      { exp_sum_1_r[15:14] } <= { exp_sum[15:14] };
    end 
    if(N28) begin
      v_1_r <= N29;
    end 
    if(N31) begin
      { man_b_norm_r[112:14] } <= { 1'b1, man_b[111:14] };
      final_sign_1_r <= final_sign;
    end 
    if(N40) begin
      { exp_sum_2_r[15:14] } <= { exp_sum_1_r[15:14] };
      final_sign_2_r <= final_sign_1_r;
      { man_prod_2_r[225:155], man_prod_2_r[0:0] } <= { man_prod[225:155], man_prod[0:0] };
      { exp_sum_unbiased_2_r[14:0] } <= { exp_sum_unbiased_1_r[14:0] };
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
    if(N38) begin
      v_2_r <= N39;
    end 
    if(N41) begin
      { man_prod_2_r[154:56], man_prod_2_r[1:1] } <= { man_prod[154:56], man_prod[1:1] };
    end 
    if(N42) begin
      { man_prod_2_r[55:2] } <= { man_prod[55:2] };
    end 
    if(N53) begin
      { exp_sum_3_r[15:14] } <= { exp_sum_2_r[15:14] };
      { final_exp_3_r[15:15] } <= { final_exp[15:15] };
      { pre_roundup_3_r[126:43], pre_roundup_3_r[0:0] } <= { final_exp[14:0], shifted_mantissa[111:43], shifted_mantissa[0:0] };
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
    if(N51) begin
      v_o <= N52;
    end 
    if(N54) begin
      { pre_roundup_3_r[42:1] } <= { shifted_mantissa[42:1] };
    end 
  end


endmodule

