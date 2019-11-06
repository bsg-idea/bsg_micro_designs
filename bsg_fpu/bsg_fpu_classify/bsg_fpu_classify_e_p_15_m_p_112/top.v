

module top
(
  a_i,
  class_o
);

  input [127:0] a_i;
  output [127:0] class_o;

  bsg_fpu_classify
  wrapper
  (
    .a_i(a_i),
    .class_o(class_o)
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



module bsg_fpu_classify
(
  a_i,
  class_o
);

  input [127:0] a_i;
  output [127:0] class_o;
  wire [127:0] class_o;
  wire zero,nan,infty,denormal,sign,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,
  SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,SYNOPSYS_UNCONNECTED_4,
  SYNOPSYS_UNCONNECTED_5,SYNOPSYS_UNCONNECTED_6,SYNOPSYS_UNCONNECTED_7,
  SYNOPSYS_UNCONNECTED_8,SYNOPSYS_UNCONNECTED_9,SYNOPSYS_UNCONNECTED_10,
  SYNOPSYS_UNCONNECTED_11,SYNOPSYS_UNCONNECTED_12,SYNOPSYS_UNCONNECTED_13,SYNOPSYS_UNCONNECTED_14,
  SYNOPSYS_UNCONNECTED_15,SYNOPSYS_UNCONNECTED_16,SYNOPSYS_UNCONNECTED_17,
  SYNOPSYS_UNCONNECTED_18,SYNOPSYS_UNCONNECTED_19,SYNOPSYS_UNCONNECTED_20,
  SYNOPSYS_UNCONNECTED_21,SYNOPSYS_UNCONNECTED_22,SYNOPSYS_UNCONNECTED_23,SYNOPSYS_UNCONNECTED_24,
  SYNOPSYS_UNCONNECTED_25,SYNOPSYS_UNCONNECTED_26,SYNOPSYS_UNCONNECTED_27,
  SYNOPSYS_UNCONNECTED_28,SYNOPSYS_UNCONNECTED_29,SYNOPSYS_UNCONNECTED_30,
  SYNOPSYS_UNCONNECTED_31,SYNOPSYS_UNCONNECTED_32,SYNOPSYS_UNCONNECTED_33,SYNOPSYS_UNCONNECTED_34,
  SYNOPSYS_UNCONNECTED_35,SYNOPSYS_UNCONNECTED_36,SYNOPSYS_UNCONNECTED_37,
  SYNOPSYS_UNCONNECTED_38,SYNOPSYS_UNCONNECTED_39,SYNOPSYS_UNCONNECTED_40,
  SYNOPSYS_UNCONNECTED_41,SYNOPSYS_UNCONNECTED_42,SYNOPSYS_UNCONNECTED_43,SYNOPSYS_UNCONNECTED_44,
  SYNOPSYS_UNCONNECTED_45,SYNOPSYS_UNCONNECTED_46,SYNOPSYS_UNCONNECTED_47,
  SYNOPSYS_UNCONNECTED_48,SYNOPSYS_UNCONNECTED_49,SYNOPSYS_UNCONNECTED_50,
  SYNOPSYS_UNCONNECTED_51,SYNOPSYS_UNCONNECTED_52,SYNOPSYS_UNCONNECTED_53,SYNOPSYS_UNCONNECTED_54,
  SYNOPSYS_UNCONNECTED_55,SYNOPSYS_UNCONNECTED_56,SYNOPSYS_UNCONNECTED_57,
  SYNOPSYS_UNCONNECTED_58,SYNOPSYS_UNCONNECTED_59,SYNOPSYS_UNCONNECTED_60,
  SYNOPSYS_UNCONNECTED_61,SYNOPSYS_UNCONNECTED_62,SYNOPSYS_UNCONNECTED_63,SYNOPSYS_UNCONNECTED_64,
  SYNOPSYS_UNCONNECTED_65,SYNOPSYS_UNCONNECTED_66,SYNOPSYS_UNCONNECTED_67,
  SYNOPSYS_UNCONNECTED_68,SYNOPSYS_UNCONNECTED_69,SYNOPSYS_UNCONNECTED_70,
  SYNOPSYS_UNCONNECTED_71,SYNOPSYS_UNCONNECTED_72,SYNOPSYS_UNCONNECTED_73,SYNOPSYS_UNCONNECTED_74,
  SYNOPSYS_UNCONNECTED_75,SYNOPSYS_UNCONNECTED_76,SYNOPSYS_UNCONNECTED_77,
  SYNOPSYS_UNCONNECTED_78,SYNOPSYS_UNCONNECTED_79,SYNOPSYS_UNCONNECTED_80,
  SYNOPSYS_UNCONNECTED_81,SYNOPSYS_UNCONNECTED_82,SYNOPSYS_UNCONNECTED_83,SYNOPSYS_UNCONNECTED_84,
  SYNOPSYS_UNCONNECTED_85,SYNOPSYS_UNCONNECTED_86,SYNOPSYS_UNCONNECTED_87,
  SYNOPSYS_UNCONNECTED_88,SYNOPSYS_UNCONNECTED_89,SYNOPSYS_UNCONNECTED_90,
  SYNOPSYS_UNCONNECTED_91,SYNOPSYS_UNCONNECTED_92,SYNOPSYS_UNCONNECTED_93,SYNOPSYS_UNCONNECTED_94,
  SYNOPSYS_UNCONNECTED_95,SYNOPSYS_UNCONNECTED_96,SYNOPSYS_UNCONNECTED_97,
  SYNOPSYS_UNCONNECTED_98,SYNOPSYS_UNCONNECTED_99,SYNOPSYS_UNCONNECTED_100,
  SYNOPSYS_UNCONNECTED_101,SYNOPSYS_UNCONNECTED_102,SYNOPSYS_UNCONNECTED_103,SYNOPSYS_UNCONNECTED_104,
  SYNOPSYS_UNCONNECTED_105,SYNOPSYS_UNCONNECTED_106,SYNOPSYS_UNCONNECTED_107,
  SYNOPSYS_UNCONNECTED_108,SYNOPSYS_UNCONNECTED_109,SYNOPSYS_UNCONNECTED_110,
  SYNOPSYS_UNCONNECTED_111,SYNOPSYS_UNCONNECTED_112,SYNOPSYS_UNCONNECTED_113,
  SYNOPSYS_UNCONNECTED_114,SYNOPSYS_UNCONNECTED_115,SYNOPSYS_UNCONNECTED_116,
  SYNOPSYS_UNCONNECTED_117,SYNOPSYS_UNCONNECTED_118,SYNOPSYS_UNCONNECTED_119,SYNOPSYS_UNCONNECTED_120,
  SYNOPSYS_UNCONNECTED_121,SYNOPSYS_UNCONNECTED_122,SYNOPSYS_UNCONNECTED_123,
  SYNOPSYS_UNCONNECTED_124,SYNOPSYS_UNCONNECTED_125,SYNOPSYS_UNCONNECTED_126,
  SYNOPSYS_UNCONNECTED_127;
  assign class_o[10] = 1'b0;
  assign class_o[11] = 1'b0;
  assign class_o[12] = 1'b0;
  assign class_o[13] = 1'b0;
  assign class_o[14] = 1'b0;
  assign class_o[15] = 1'b0;
  assign class_o[16] = 1'b0;
  assign class_o[17] = 1'b0;
  assign class_o[18] = 1'b0;
  assign class_o[19] = 1'b0;
  assign class_o[20] = 1'b0;
  assign class_o[21] = 1'b0;
  assign class_o[22] = 1'b0;
  assign class_o[23] = 1'b0;
  assign class_o[24] = 1'b0;
  assign class_o[25] = 1'b0;
  assign class_o[26] = 1'b0;
  assign class_o[27] = 1'b0;
  assign class_o[28] = 1'b0;
  assign class_o[29] = 1'b0;
  assign class_o[30] = 1'b0;
  assign class_o[31] = 1'b0;
  assign class_o[32] = 1'b0;
  assign class_o[33] = 1'b0;
  assign class_o[34] = 1'b0;
  assign class_o[35] = 1'b0;
  assign class_o[36] = 1'b0;
  assign class_o[37] = 1'b0;
  assign class_o[38] = 1'b0;
  assign class_o[39] = 1'b0;
  assign class_o[40] = 1'b0;
  assign class_o[41] = 1'b0;
  assign class_o[42] = 1'b0;
  assign class_o[43] = 1'b0;
  assign class_o[44] = 1'b0;
  assign class_o[45] = 1'b0;
  assign class_o[46] = 1'b0;
  assign class_o[47] = 1'b0;
  assign class_o[48] = 1'b0;
  assign class_o[49] = 1'b0;
  assign class_o[50] = 1'b0;
  assign class_o[51] = 1'b0;
  assign class_o[52] = 1'b0;
  assign class_o[53] = 1'b0;
  assign class_o[54] = 1'b0;
  assign class_o[55] = 1'b0;
  assign class_o[56] = 1'b0;
  assign class_o[57] = 1'b0;
  assign class_o[58] = 1'b0;
  assign class_o[59] = 1'b0;
  assign class_o[60] = 1'b0;
  assign class_o[61] = 1'b0;
  assign class_o[62] = 1'b0;
  assign class_o[63] = 1'b0;
  assign class_o[64] = 1'b0;
  assign class_o[65] = 1'b0;
  assign class_o[66] = 1'b0;
  assign class_o[67] = 1'b0;
  assign class_o[68] = 1'b0;
  assign class_o[69] = 1'b0;
  assign class_o[70] = 1'b0;
  assign class_o[71] = 1'b0;
  assign class_o[72] = 1'b0;
  assign class_o[73] = 1'b0;
  assign class_o[74] = 1'b0;
  assign class_o[75] = 1'b0;
  assign class_o[76] = 1'b0;
  assign class_o[77] = 1'b0;
  assign class_o[78] = 1'b0;
  assign class_o[79] = 1'b0;
  assign class_o[80] = 1'b0;
  assign class_o[81] = 1'b0;
  assign class_o[82] = 1'b0;
  assign class_o[83] = 1'b0;
  assign class_o[84] = 1'b0;
  assign class_o[85] = 1'b0;
  assign class_o[86] = 1'b0;
  assign class_o[87] = 1'b0;
  assign class_o[88] = 1'b0;
  assign class_o[89] = 1'b0;
  assign class_o[90] = 1'b0;
  assign class_o[91] = 1'b0;
  assign class_o[92] = 1'b0;
  assign class_o[93] = 1'b0;
  assign class_o[94] = 1'b0;
  assign class_o[95] = 1'b0;
  assign class_o[96] = 1'b0;
  assign class_o[97] = 1'b0;
  assign class_o[98] = 1'b0;
  assign class_o[99] = 1'b0;
  assign class_o[100] = 1'b0;
  assign class_o[101] = 1'b0;
  assign class_o[102] = 1'b0;
  assign class_o[103] = 1'b0;
  assign class_o[104] = 1'b0;
  assign class_o[105] = 1'b0;
  assign class_o[106] = 1'b0;
  assign class_o[107] = 1'b0;
  assign class_o[108] = 1'b0;
  assign class_o[109] = 1'b0;
  assign class_o[110] = 1'b0;
  assign class_o[111] = 1'b0;
  assign class_o[112] = 1'b0;
  assign class_o[113] = 1'b0;
  assign class_o[114] = 1'b0;
  assign class_o[115] = 1'b0;
  assign class_o[116] = 1'b0;
  assign class_o[117] = 1'b0;
  assign class_o[118] = 1'b0;
  assign class_o[119] = 1'b0;
  assign class_o[120] = 1'b0;
  assign class_o[121] = 1'b0;
  assign class_o[122] = 1'b0;
  assign class_o[123] = 1'b0;
  assign class_o[124] = 1'b0;
  assign class_o[125] = 1'b0;
  assign class_o[126] = 1'b0;
  assign class_o[127] = 1'b0;

  bsg_fpu_preprocess_e_p15_m_p112
  prep
  (
    .a_i(a_i),
    .zero_o(zero),
    .nan_o(nan),
    .sig_nan_o(class_o[8]),
    .infty_o(infty),
    .denormal_o(denormal),
    .sign_o(sign),
    .exp_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15 }),
    .man_o({ SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52, SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54, SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56, SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58, SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60, SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62, SYNOPSYS_UNCONNECTED_63, SYNOPSYS_UNCONNECTED_64, SYNOPSYS_UNCONNECTED_65, SYNOPSYS_UNCONNECTED_66, SYNOPSYS_UNCONNECTED_67, SYNOPSYS_UNCONNECTED_68, SYNOPSYS_UNCONNECTED_69, SYNOPSYS_UNCONNECTED_70, SYNOPSYS_UNCONNECTED_71, SYNOPSYS_UNCONNECTED_72, SYNOPSYS_UNCONNECTED_73, SYNOPSYS_UNCONNECTED_74, SYNOPSYS_UNCONNECTED_75, SYNOPSYS_UNCONNECTED_76, SYNOPSYS_UNCONNECTED_77, SYNOPSYS_UNCONNECTED_78, SYNOPSYS_UNCONNECTED_79, SYNOPSYS_UNCONNECTED_80, SYNOPSYS_UNCONNECTED_81, SYNOPSYS_UNCONNECTED_82, SYNOPSYS_UNCONNECTED_83, SYNOPSYS_UNCONNECTED_84, SYNOPSYS_UNCONNECTED_85, SYNOPSYS_UNCONNECTED_86, SYNOPSYS_UNCONNECTED_87, SYNOPSYS_UNCONNECTED_88, SYNOPSYS_UNCONNECTED_89, SYNOPSYS_UNCONNECTED_90, SYNOPSYS_UNCONNECTED_91, SYNOPSYS_UNCONNECTED_92, SYNOPSYS_UNCONNECTED_93, SYNOPSYS_UNCONNECTED_94, SYNOPSYS_UNCONNECTED_95, SYNOPSYS_UNCONNECTED_96, SYNOPSYS_UNCONNECTED_97, SYNOPSYS_UNCONNECTED_98, SYNOPSYS_UNCONNECTED_99, SYNOPSYS_UNCONNECTED_100, SYNOPSYS_UNCONNECTED_101, SYNOPSYS_UNCONNECTED_102, SYNOPSYS_UNCONNECTED_103, SYNOPSYS_UNCONNECTED_104, SYNOPSYS_UNCONNECTED_105, SYNOPSYS_UNCONNECTED_106, SYNOPSYS_UNCONNECTED_107, SYNOPSYS_UNCONNECTED_108, SYNOPSYS_UNCONNECTED_109, SYNOPSYS_UNCONNECTED_110, SYNOPSYS_UNCONNECTED_111, SYNOPSYS_UNCONNECTED_112, SYNOPSYS_UNCONNECTED_113, SYNOPSYS_UNCONNECTED_114, SYNOPSYS_UNCONNECTED_115, SYNOPSYS_UNCONNECTED_116, SYNOPSYS_UNCONNECTED_117, SYNOPSYS_UNCONNECTED_118, SYNOPSYS_UNCONNECTED_119, SYNOPSYS_UNCONNECTED_120, SYNOPSYS_UNCONNECTED_121, SYNOPSYS_UNCONNECTED_122, SYNOPSYS_UNCONNECTED_123, SYNOPSYS_UNCONNECTED_124, SYNOPSYS_UNCONNECTED_125, SYNOPSYS_UNCONNECTED_126, SYNOPSYS_UNCONNECTED_127 })
  );

  assign class_o[0] = sign & infty;
  assign class_o[1] = N5 & N6;
  assign N5 = N3 & N4;
  assign N3 = N1 & N2;
  assign N1 = sign & N0;
  assign N0 = ~infty;
  assign N2 = ~denormal;
  assign N4 = ~nan;
  assign N6 = ~zero;
  assign class_o[2] = sign & denormal;
  assign class_o[3] = sign & zero;
  assign class_o[4] = N7 & zero;
  assign N7 = ~sign;
  assign class_o[5] = N7 & denormal;
  assign class_o[6] = N10 & N6;
  assign N10 = N9 & N4;
  assign N9 = N8 & N2;
  assign N8 = N7 & N0;
  assign class_o[7] = N7 & infty;
  assign class_o[9] = nan & N11;
  assign N11 = ~class_o[8];

endmodule

