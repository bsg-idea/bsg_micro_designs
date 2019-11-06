

module top
(
  a_i,
  b_i,
  eq_o,
  lt_o,
  le_o,
  lt_le_invalid_o,
  eq_invalid_o,
  min_o,
  max_o,
  min_max_invalid_o
);

  input [127:0] a_i;
  input [127:0] b_i;
  output [127:0] min_o;
  output [127:0] max_o;
  output eq_o;
  output lt_o;
  output le_o;
  output lt_le_invalid_o;
  output eq_invalid_o;
  output min_max_invalid_o;

  bsg_fpu_cmp
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .min_o(min_o),
    .max_o(max_o),
    .eq_o(eq_o),
    .lt_o(lt_o),
    .le_o(le_o),
    .lt_le_invalid_o(lt_le_invalid_o),
    .eq_invalid_o(eq_invalid_o),
    .min_max_invalid_o(min_max_invalid_o)
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



module bsg_less_than_width_p127
(
  a_i,
  b_i,
  o
);

  input [126:0] a_i;
  input [126:0] b_i;
  output o;
  wire o;
  assign o = a_i < b_i;

endmodule



module bsg_fpu_cmp
(
  a_i,
  b_i,
  eq_o,
  lt_o,
  le_o,
  lt_le_invalid_o,
  eq_invalid_o,
  min_o,
  max_o,
  min_max_invalid_o
);

  input [127:0] a_i;
  input [127:0] b_i;
  output [127:0] min_o;
  output [127:0] max_o;
  output eq_o;
  output lt_o;
  output le_o;
  output lt_le_invalid_o;
  output eq_invalid_o;
  output min_max_invalid_o;
  wire [127:0] min_o,max_o;
  wire eq_o,lt_o,le_o,lt_le_invalid_o,eq_invalid_o,min_max_invalid_o,N0,N1,N2,N3,N4,N5,
  N6,N7,N8,a_zero,a_nan,a_sig_nan,a_infty,a_sign,b_zero,b_nan,b_sig_nan,b_infty,
  b_sign,mag_a_lt,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,
  N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,
  N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,
  N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,
  N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,
  N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,
  N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,
  N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,
  N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,
  N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,N198,N199,
  N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,N214,N215,
  N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,N230,N231,
  N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,N246,N247,
  N248,N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,N260,N261,N262,N263,
  N264,N265,N266,N267,N268,N269,N270,N271,N272,N273,N274,N275,N276,N277,N278,N279,
  N280,N281,N282,N283,N284,N285,N286,N287,N288,N289,N290,N291,N292,N293,N294,N295,
  N296,N297,N298,N299,N300,N301,N302,N303,SYNOPSYS_UNCONNECTED_1,
  SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,SYNOPSYS_UNCONNECTED_4,SYNOPSYS_UNCONNECTED_5,
  SYNOPSYS_UNCONNECTED_6,SYNOPSYS_UNCONNECTED_7,SYNOPSYS_UNCONNECTED_8,
  SYNOPSYS_UNCONNECTED_9,SYNOPSYS_UNCONNECTED_10,SYNOPSYS_UNCONNECTED_11,SYNOPSYS_UNCONNECTED_12,
  SYNOPSYS_UNCONNECTED_13,SYNOPSYS_UNCONNECTED_14,SYNOPSYS_UNCONNECTED_15,
  SYNOPSYS_UNCONNECTED_16,SYNOPSYS_UNCONNECTED_17,SYNOPSYS_UNCONNECTED_18,
  SYNOPSYS_UNCONNECTED_19,SYNOPSYS_UNCONNECTED_20,SYNOPSYS_UNCONNECTED_21,SYNOPSYS_UNCONNECTED_22,
  SYNOPSYS_UNCONNECTED_23,SYNOPSYS_UNCONNECTED_24,SYNOPSYS_UNCONNECTED_25,
  SYNOPSYS_UNCONNECTED_26,SYNOPSYS_UNCONNECTED_27,SYNOPSYS_UNCONNECTED_28,
  SYNOPSYS_UNCONNECTED_29,SYNOPSYS_UNCONNECTED_30,SYNOPSYS_UNCONNECTED_31,SYNOPSYS_UNCONNECTED_32,
  SYNOPSYS_UNCONNECTED_33,SYNOPSYS_UNCONNECTED_34,SYNOPSYS_UNCONNECTED_35,
  SYNOPSYS_UNCONNECTED_36,SYNOPSYS_UNCONNECTED_37,SYNOPSYS_UNCONNECTED_38,
  SYNOPSYS_UNCONNECTED_39,SYNOPSYS_UNCONNECTED_40,SYNOPSYS_UNCONNECTED_41,SYNOPSYS_UNCONNECTED_42,
  SYNOPSYS_UNCONNECTED_43,SYNOPSYS_UNCONNECTED_44,SYNOPSYS_UNCONNECTED_45,
  SYNOPSYS_UNCONNECTED_46,SYNOPSYS_UNCONNECTED_47,SYNOPSYS_UNCONNECTED_48,
  SYNOPSYS_UNCONNECTED_49,SYNOPSYS_UNCONNECTED_50,SYNOPSYS_UNCONNECTED_51,SYNOPSYS_UNCONNECTED_52,
  SYNOPSYS_UNCONNECTED_53,SYNOPSYS_UNCONNECTED_54,SYNOPSYS_UNCONNECTED_55,
  SYNOPSYS_UNCONNECTED_56,SYNOPSYS_UNCONNECTED_57,SYNOPSYS_UNCONNECTED_58,
  SYNOPSYS_UNCONNECTED_59,SYNOPSYS_UNCONNECTED_60,SYNOPSYS_UNCONNECTED_61,SYNOPSYS_UNCONNECTED_62,
  SYNOPSYS_UNCONNECTED_63,SYNOPSYS_UNCONNECTED_64,SYNOPSYS_UNCONNECTED_65,
  SYNOPSYS_UNCONNECTED_66,SYNOPSYS_UNCONNECTED_67,SYNOPSYS_UNCONNECTED_68,
  SYNOPSYS_UNCONNECTED_69,SYNOPSYS_UNCONNECTED_70,SYNOPSYS_UNCONNECTED_71,SYNOPSYS_UNCONNECTED_72,
  SYNOPSYS_UNCONNECTED_73,SYNOPSYS_UNCONNECTED_74,SYNOPSYS_UNCONNECTED_75,
  SYNOPSYS_UNCONNECTED_76,SYNOPSYS_UNCONNECTED_77,SYNOPSYS_UNCONNECTED_78,
  SYNOPSYS_UNCONNECTED_79,SYNOPSYS_UNCONNECTED_80,SYNOPSYS_UNCONNECTED_81,SYNOPSYS_UNCONNECTED_82,
  SYNOPSYS_UNCONNECTED_83,SYNOPSYS_UNCONNECTED_84,SYNOPSYS_UNCONNECTED_85,
  SYNOPSYS_UNCONNECTED_86,SYNOPSYS_UNCONNECTED_87,SYNOPSYS_UNCONNECTED_88,
  SYNOPSYS_UNCONNECTED_89,SYNOPSYS_UNCONNECTED_90,SYNOPSYS_UNCONNECTED_91,SYNOPSYS_UNCONNECTED_92,
  SYNOPSYS_UNCONNECTED_93,SYNOPSYS_UNCONNECTED_94,SYNOPSYS_UNCONNECTED_95,
  SYNOPSYS_UNCONNECTED_96,SYNOPSYS_UNCONNECTED_97,SYNOPSYS_UNCONNECTED_98,
  SYNOPSYS_UNCONNECTED_99,SYNOPSYS_UNCONNECTED_100,SYNOPSYS_UNCONNECTED_101,SYNOPSYS_UNCONNECTED_102,
  SYNOPSYS_UNCONNECTED_103,SYNOPSYS_UNCONNECTED_104,SYNOPSYS_UNCONNECTED_105,
  SYNOPSYS_UNCONNECTED_106,SYNOPSYS_UNCONNECTED_107,SYNOPSYS_UNCONNECTED_108,
  SYNOPSYS_UNCONNECTED_109,SYNOPSYS_UNCONNECTED_110,SYNOPSYS_UNCONNECTED_111,
  SYNOPSYS_UNCONNECTED_112,SYNOPSYS_UNCONNECTED_113,SYNOPSYS_UNCONNECTED_114,
  SYNOPSYS_UNCONNECTED_115,SYNOPSYS_UNCONNECTED_116,SYNOPSYS_UNCONNECTED_117,SYNOPSYS_UNCONNECTED_118,
  SYNOPSYS_UNCONNECTED_119,SYNOPSYS_UNCONNECTED_120,SYNOPSYS_UNCONNECTED_121,
  SYNOPSYS_UNCONNECTED_122,SYNOPSYS_UNCONNECTED_123,SYNOPSYS_UNCONNECTED_124,
  SYNOPSYS_UNCONNECTED_125,SYNOPSYS_UNCONNECTED_126,SYNOPSYS_UNCONNECTED_127,
  SYNOPSYS_UNCONNECTED_128,SYNOPSYS_UNCONNECTED_129,SYNOPSYS_UNCONNECTED_130,
  SYNOPSYS_UNCONNECTED_131,SYNOPSYS_UNCONNECTED_132,SYNOPSYS_UNCONNECTED_133,SYNOPSYS_UNCONNECTED_134,
  SYNOPSYS_UNCONNECTED_135,SYNOPSYS_UNCONNECTED_136,SYNOPSYS_UNCONNECTED_137,
  SYNOPSYS_UNCONNECTED_138,SYNOPSYS_UNCONNECTED_139,SYNOPSYS_UNCONNECTED_140,
  SYNOPSYS_UNCONNECTED_141,SYNOPSYS_UNCONNECTED_142,SYNOPSYS_UNCONNECTED_143,
  SYNOPSYS_UNCONNECTED_144,SYNOPSYS_UNCONNECTED_145,SYNOPSYS_UNCONNECTED_146,
  SYNOPSYS_UNCONNECTED_147,SYNOPSYS_UNCONNECTED_148,SYNOPSYS_UNCONNECTED_149,SYNOPSYS_UNCONNECTED_150,
  SYNOPSYS_UNCONNECTED_151,SYNOPSYS_UNCONNECTED_152,SYNOPSYS_UNCONNECTED_153,
  SYNOPSYS_UNCONNECTED_154,SYNOPSYS_UNCONNECTED_155,SYNOPSYS_UNCONNECTED_156,
  SYNOPSYS_UNCONNECTED_157,SYNOPSYS_UNCONNECTED_158,SYNOPSYS_UNCONNECTED_159,
  SYNOPSYS_UNCONNECTED_160,SYNOPSYS_UNCONNECTED_161,SYNOPSYS_UNCONNECTED_162,
  SYNOPSYS_UNCONNECTED_163,SYNOPSYS_UNCONNECTED_164,SYNOPSYS_UNCONNECTED_165,SYNOPSYS_UNCONNECTED_166,
  SYNOPSYS_UNCONNECTED_167,SYNOPSYS_UNCONNECTED_168,SYNOPSYS_UNCONNECTED_169,
  SYNOPSYS_UNCONNECTED_170,SYNOPSYS_UNCONNECTED_171,SYNOPSYS_UNCONNECTED_172,
  SYNOPSYS_UNCONNECTED_173,SYNOPSYS_UNCONNECTED_174,SYNOPSYS_UNCONNECTED_175,
  SYNOPSYS_UNCONNECTED_176,SYNOPSYS_UNCONNECTED_177,SYNOPSYS_UNCONNECTED_178,
  SYNOPSYS_UNCONNECTED_179,SYNOPSYS_UNCONNECTED_180,SYNOPSYS_UNCONNECTED_181,SYNOPSYS_UNCONNECTED_182,
  SYNOPSYS_UNCONNECTED_183,SYNOPSYS_UNCONNECTED_184,SYNOPSYS_UNCONNECTED_185,
  SYNOPSYS_UNCONNECTED_186,SYNOPSYS_UNCONNECTED_187,SYNOPSYS_UNCONNECTED_188,
  SYNOPSYS_UNCONNECTED_189,SYNOPSYS_UNCONNECTED_190,SYNOPSYS_UNCONNECTED_191,
  SYNOPSYS_UNCONNECTED_192,SYNOPSYS_UNCONNECTED_193,SYNOPSYS_UNCONNECTED_194,
  SYNOPSYS_UNCONNECTED_195,SYNOPSYS_UNCONNECTED_196,SYNOPSYS_UNCONNECTED_197,SYNOPSYS_UNCONNECTED_198,
  SYNOPSYS_UNCONNECTED_199,SYNOPSYS_UNCONNECTED_200,SYNOPSYS_UNCONNECTED_201,
  SYNOPSYS_UNCONNECTED_202,SYNOPSYS_UNCONNECTED_203,SYNOPSYS_UNCONNECTED_204,
  SYNOPSYS_UNCONNECTED_205,SYNOPSYS_UNCONNECTED_206,SYNOPSYS_UNCONNECTED_207,
  SYNOPSYS_UNCONNECTED_208,SYNOPSYS_UNCONNECTED_209,SYNOPSYS_UNCONNECTED_210,
  SYNOPSYS_UNCONNECTED_211,SYNOPSYS_UNCONNECTED_212,SYNOPSYS_UNCONNECTED_213,SYNOPSYS_UNCONNECTED_214,
  SYNOPSYS_UNCONNECTED_215,SYNOPSYS_UNCONNECTED_216,SYNOPSYS_UNCONNECTED_217,
  SYNOPSYS_UNCONNECTED_218,SYNOPSYS_UNCONNECTED_219,SYNOPSYS_UNCONNECTED_220,
  SYNOPSYS_UNCONNECTED_221,SYNOPSYS_UNCONNECTED_222,SYNOPSYS_UNCONNECTED_223,
  SYNOPSYS_UNCONNECTED_224,SYNOPSYS_UNCONNECTED_225,SYNOPSYS_UNCONNECTED_226,
  SYNOPSYS_UNCONNECTED_227,SYNOPSYS_UNCONNECTED_228,SYNOPSYS_UNCONNECTED_229,SYNOPSYS_UNCONNECTED_230,
  SYNOPSYS_UNCONNECTED_231,SYNOPSYS_UNCONNECTED_232,SYNOPSYS_UNCONNECTED_233,
  SYNOPSYS_UNCONNECTED_234,SYNOPSYS_UNCONNECTED_235,SYNOPSYS_UNCONNECTED_236,
  SYNOPSYS_UNCONNECTED_237,SYNOPSYS_UNCONNECTED_238,SYNOPSYS_UNCONNECTED_239,
  SYNOPSYS_UNCONNECTED_240,SYNOPSYS_UNCONNECTED_241,SYNOPSYS_UNCONNECTED_242,
  SYNOPSYS_UNCONNECTED_243,SYNOPSYS_UNCONNECTED_244,SYNOPSYS_UNCONNECTED_245,SYNOPSYS_UNCONNECTED_246,
  SYNOPSYS_UNCONNECTED_247,SYNOPSYS_UNCONNECTED_248,SYNOPSYS_UNCONNECTED_249,
  SYNOPSYS_UNCONNECTED_250,SYNOPSYS_UNCONNECTED_251,SYNOPSYS_UNCONNECTED_252,
  SYNOPSYS_UNCONNECTED_253,SYNOPSYS_UNCONNECTED_254;

  bsg_fpu_preprocess_e_p15_m_p112
  a_preprocess
  (
    .a_i(a_i),
    .zero_o(a_zero),
    .nan_o(a_nan),
    .sig_nan_o(a_sig_nan),
    .infty_o(a_infty),
    .sign_o(a_sign),
    .exp_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15 }),
    .man_o({ SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52, SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54, SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56, SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58, SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60, SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62, SYNOPSYS_UNCONNECTED_63, SYNOPSYS_UNCONNECTED_64, SYNOPSYS_UNCONNECTED_65, SYNOPSYS_UNCONNECTED_66, SYNOPSYS_UNCONNECTED_67, SYNOPSYS_UNCONNECTED_68, SYNOPSYS_UNCONNECTED_69, SYNOPSYS_UNCONNECTED_70, SYNOPSYS_UNCONNECTED_71, SYNOPSYS_UNCONNECTED_72, SYNOPSYS_UNCONNECTED_73, SYNOPSYS_UNCONNECTED_74, SYNOPSYS_UNCONNECTED_75, SYNOPSYS_UNCONNECTED_76, SYNOPSYS_UNCONNECTED_77, SYNOPSYS_UNCONNECTED_78, SYNOPSYS_UNCONNECTED_79, SYNOPSYS_UNCONNECTED_80, SYNOPSYS_UNCONNECTED_81, SYNOPSYS_UNCONNECTED_82, SYNOPSYS_UNCONNECTED_83, SYNOPSYS_UNCONNECTED_84, SYNOPSYS_UNCONNECTED_85, SYNOPSYS_UNCONNECTED_86, SYNOPSYS_UNCONNECTED_87, SYNOPSYS_UNCONNECTED_88, SYNOPSYS_UNCONNECTED_89, SYNOPSYS_UNCONNECTED_90, SYNOPSYS_UNCONNECTED_91, SYNOPSYS_UNCONNECTED_92, SYNOPSYS_UNCONNECTED_93, SYNOPSYS_UNCONNECTED_94, SYNOPSYS_UNCONNECTED_95, SYNOPSYS_UNCONNECTED_96, SYNOPSYS_UNCONNECTED_97, SYNOPSYS_UNCONNECTED_98, SYNOPSYS_UNCONNECTED_99, SYNOPSYS_UNCONNECTED_100, SYNOPSYS_UNCONNECTED_101, SYNOPSYS_UNCONNECTED_102, SYNOPSYS_UNCONNECTED_103, SYNOPSYS_UNCONNECTED_104, SYNOPSYS_UNCONNECTED_105, SYNOPSYS_UNCONNECTED_106, SYNOPSYS_UNCONNECTED_107, SYNOPSYS_UNCONNECTED_108, SYNOPSYS_UNCONNECTED_109, SYNOPSYS_UNCONNECTED_110, SYNOPSYS_UNCONNECTED_111, SYNOPSYS_UNCONNECTED_112, SYNOPSYS_UNCONNECTED_113, SYNOPSYS_UNCONNECTED_114, SYNOPSYS_UNCONNECTED_115, SYNOPSYS_UNCONNECTED_116, SYNOPSYS_UNCONNECTED_117, SYNOPSYS_UNCONNECTED_118, SYNOPSYS_UNCONNECTED_119, SYNOPSYS_UNCONNECTED_120, SYNOPSYS_UNCONNECTED_121, SYNOPSYS_UNCONNECTED_122, SYNOPSYS_UNCONNECTED_123, SYNOPSYS_UNCONNECTED_124, SYNOPSYS_UNCONNECTED_125, SYNOPSYS_UNCONNECTED_126, SYNOPSYS_UNCONNECTED_127 })
  );


  bsg_fpu_preprocess_e_p15_m_p112
  b_preprocess
  (
    .a_i(b_i),
    .zero_o(b_zero),
    .nan_o(b_nan),
    .sig_nan_o(b_sig_nan),
    .infty_o(b_infty),
    .sign_o(b_sign),
    .exp_o({ SYNOPSYS_UNCONNECTED_128, SYNOPSYS_UNCONNECTED_129, SYNOPSYS_UNCONNECTED_130, SYNOPSYS_UNCONNECTED_131, SYNOPSYS_UNCONNECTED_132, SYNOPSYS_UNCONNECTED_133, SYNOPSYS_UNCONNECTED_134, SYNOPSYS_UNCONNECTED_135, SYNOPSYS_UNCONNECTED_136, SYNOPSYS_UNCONNECTED_137, SYNOPSYS_UNCONNECTED_138, SYNOPSYS_UNCONNECTED_139, SYNOPSYS_UNCONNECTED_140, SYNOPSYS_UNCONNECTED_141, SYNOPSYS_UNCONNECTED_142 }),
    .man_o({ SYNOPSYS_UNCONNECTED_143, SYNOPSYS_UNCONNECTED_144, SYNOPSYS_UNCONNECTED_145, SYNOPSYS_UNCONNECTED_146, SYNOPSYS_UNCONNECTED_147, SYNOPSYS_UNCONNECTED_148, SYNOPSYS_UNCONNECTED_149, SYNOPSYS_UNCONNECTED_150, SYNOPSYS_UNCONNECTED_151, SYNOPSYS_UNCONNECTED_152, SYNOPSYS_UNCONNECTED_153, SYNOPSYS_UNCONNECTED_154, SYNOPSYS_UNCONNECTED_155, SYNOPSYS_UNCONNECTED_156, SYNOPSYS_UNCONNECTED_157, SYNOPSYS_UNCONNECTED_158, SYNOPSYS_UNCONNECTED_159, SYNOPSYS_UNCONNECTED_160, SYNOPSYS_UNCONNECTED_161, SYNOPSYS_UNCONNECTED_162, SYNOPSYS_UNCONNECTED_163, SYNOPSYS_UNCONNECTED_164, SYNOPSYS_UNCONNECTED_165, SYNOPSYS_UNCONNECTED_166, SYNOPSYS_UNCONNECTED_167, SYNOPSYS_UNCONNECTED_168, SYNOPSYS_UNCONNECTED_169, SYNOPSYS_UNCONNECTED_170, SYNOPSYS_UNCONNECTED_171, SYNOPSYS_UNCONNECTED_172, SYNOPSYS_UNCONNECTED_173, SYNOPSYS_UNCONNECTED_174, SYNOPSYS_UNCONNECTED_175, SYNOPSYS_UNCONNECTED_176, SYNOPSYS_UNCONNECTED_177, SYNOPSYS_UNCONNECTED_178, SYNOPSYS_UNCONNECTED_179, SYNOPSYS_UNCONNECTED_180, SYNOPSYS_UNCONNECTED_181, SYNOPSYS_UNCONNECTED_182, SYNOPSYS_UNCONNECTED_183, SYNOPSYS_UNCONNECTED_184, SYNOPSYS_UNCONNECTED_185, SYNOPSYS_UNCONNECTED_186, SYNOPSYS_UNCONNECTED_187, SYNOPSYS_UNCONNECTED_188, SYNOPSYS_UNCONNECTED_189, SYNOPSYS_UNCONNECTED_190, SYNOPSYS_UNCONNECTED_191, SYNOPSYS_UNCONNECTED_192, SYNOPSYS_UNCONNECTED_193, SYNOPSYS_UNCONNECTED_194, SYNOPSYS_UNCONNECTED_195, SYNOPSYS_UNCONNECTED_196, SYNOPSYS_UNCONNECTED_197, SYNOPSYS_UNCONNECTED_198, SYNOPSYS_UNCONNECTED_199, SYNOPSYS_UNCONNECTED_200, SYNOPSYS_UNCONNECTED_201, SYNOPSYS_UNCONNECTED_202, SYNOPSYS_UNCONNECTED_203, SYNOPSYS_UNCONNECTED_204, SYNOPSYS_UNCONNECTED_205, SYNOPSYS_UNCONNECTED_206, SYNOPSYS_UNCONNECTED_207, SYNOPSYS_UNCONNECTED_208, SYNOPSYS_UNCONNECTED_209, SYNOPSYS_UNCONNECTED_210, SYNOPSYS_UNCONNECTED_211, SYNOPSYS_UNCONNECTED_212, SYNOPSYS_UNCONNECTED_213, SYNOPSYS_UNCONNECTED_214, SYNOPSYS_UNCONNECTED_215, SYNOPSYS_UNCONNECTED_216, SYNOPSYS_UNCONNECTED_217, SYNOPSYS_UNCONNECTED_218, SYNOPSYS_UNCONNECTED_219, SYNOPSYS_UNCONNECTED_220, SYNOPSYS_UNCONNECTED_221, SYNOPSYS_UNCONNECTED_222, SYNOPSYS_UNCONNECTED_223, SYNOPSYS_UNCONNECTED_224, SYNOPSYS_UNCONNECTED_225, SYNOPSYS_UNCONNECTED_226, SYNOPSYS_UNCONNECTED_227, SYNOPSYS_UNCONNECTED_228, SYNOPSYS_UNCONNECTED_229, SYNOPSYS_UNCONNECTED_230, SYNOPSYS_UNCONNECTED_231, SYNOPSYS_UNCONNECTED_232, SYNOPSYS_UNCONNECTED_233, SYNOPSYS_UNCONNECTED_234, SYNOPSYS_UNCONNECTED_235, SYNOPSYS_UNCONNECTED_236, SYNOPSYS_UNCONNECTED_237, SYNOPSYS_UNCONNECTED_238, SYNOPSYS_UNCONNECTED_239, SYNOPSYS_UNCONNECTED_240, SYNOPSYS_UNCONNECTED_241, SYNOPSYS_UNCONNECTED_242, SYNOPSYS_UNCONNECTED_243, SYNOPSYS_UNCONNECTED_244, SYNOPSYS_UNCONNECTED_245, SYNOPSYS_UNCONNECTED_246, SYNOPSYS_UNCONNECTED_247, SYNOPSYS_UNCONNECTED_248, SYNOPSYS_UNCONNECTED_249, SYNOPSYS_UNCONNECTED_250, SYNOPSYS_UNCONNECTED_251, SYNOPSYS_UNCONNECTED_252, SYNOPSYS_UNCONNECTED_253, SYNOPSYS_UNCONNECTED_254 })
  );


  bsg_less_than_width_p127
  lt_mag
  (
    .a_i(a_i[126:0]),
    .b_i(b_i[126:0]),
    .o(mag_a_lt)
  );

  assign N14 = a_i == b_i;
  assign N17 = N15 & N16;
  assign N18 = a_sign | N16;
  assign N20 = N15 | b_sign;
  assign N22 = a_sign & b_sign;
  assign N26 = (N0)? mag_a_lt : 
               (N1)? 1'b0 : 
               (N2)? 1'b1 : 
               (N3)? N24 : 1'b0;
  assign N0 = N17;
  assign N1 = N19;
  assign N2 = N21;
  assign N3 = N22;
  assign N27 = (N0)? N23 : 
               (N1)? 1'b0 : 
               (N2)? 1'b1 : 
               (N3)? N25 : 1'b0;
  assign eq_o = (N4)? 1'b0 : 
                (N29)? 1'b1 : 
                (N12)? N14 : 1'b0;
  assign N4 = N9;
  assign lt_o = (N4)? 1'b0 : 
                (N29)? 1'b0 : 
                (N12)? N26 : 1'b0;
  assign le_o = (N4)? 1'b0 : 
                (N29)? 1'b1 : 
                (N12)? N27 : 1'b0;
  assign lt_le_invalid_o = (N4)? 1'b1 : 
                           (N29)? 1'b0 : 
                           (N12)? 1'b0 : 1'b0;
  assign eq_invalid_o = (N4)? N13 : 
                        (N29)? 1'b0 : 
                        (N12)? 1'b0 : 1'b0;
  assign { N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42 } = (N5)? { N40, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (N299)? a_i : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (N39)? b_i : 1'b0;
  assign N5 = N37;
  assign { N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170 } = (N5)? { N41, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              (N299)? b_i : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              (N39)? a_i : 1'b0;
  assign min_o = (N6)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                 (N7)? b_i : 
                 (N8)? a_i : 
                 (N35)? { N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42 } : 1'b0;
  assign N6 = N30;
  assign N7 = N31;
  assign N8 = N32;
  assign max_o = (N6)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                 (N7)? b_i : 
                 (N8)? a_i : 
                 (N35)? { N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170 } : 1'b0;
  assign min_max_invalid_o = (N6)? N36 : 
                             (N7)? a_sig_nan : 
                             (N8)? b_sig_nan : 
                             (N35)? 1'b0 : 1'b0;
  assign N9 = a_nan | b_nan;
  assign N10 = a_zero & b_zero;
  assign N11 = N10 | N9;
  assign N12 = ~N11;
  assign N13 = a_sig_nan | b_sig_nan;
  assign N15 = ~a_sign;
  assign N16 = ~b_sign;
  assign N19 = ~N18;
  assign N21 = ~N20;
  assign N23 = mag_a_lt | N14;
  assign N24 = N300 & N301;
  assign N300 = ~mag_a_lt;
  assign N301 = ~N14;
  assign N25 = N300 | N14;
  assign N28 = ~N9;
  assign N29 = N10 & N28;
  assign N30 = a_nan & b_nan;
  assign N31 = a_nan & N302;
  assign N302 = ~b_nan;
  assign N32 = N303 & b_nan;
  assign N303 = ~a_nan;
  assign N33 = N31 | N30;
  assign N34 = N32 | N33;
  assign N35 = ~N34;
  assign N36 = a_sig_nan | b_sig_nan;
  assign N37 = a_zero & b_zero;
  assign N38 = lt_o | N37;
  assign N39 = ~N38;
  assign N40 = a_sign | b_sign;
  assign N41 = a_sign & b_sign;
  assign N298 = ~N37;
  assign N299 = lt_o & N298;

endmodule

