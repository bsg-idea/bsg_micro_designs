

module top
(
  a_i,
  signed_i,
  z_o,
  invalid_o
);

  input [127:0] a_i;
  output [127:0] z_o;
  input signed_i;
  output invalid_o;

  bsg_fpu_f2i
  wrapper
  (
    .a_i(a_i),
    .z_o(z_o),
    .signed_i(signed_i),
    .invalid_o(invalid_o)
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



module bsg_fpu_f2i
(
  a_i,
  signed_i,
  z_o,
  invalid_o
);

  input [127:0] a_i;
  output [127:0] z_o;
  input signed_i;
  output invalid_o;
  wire [127:0] z_o,shifted,inverted,post_round;
  wire invalid_o,N0,N1,N2,N3,N4,N5,zero,nan,infty,sign,N6,exp_too_big,N7,exp_too_small,
  N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,
  N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,
  N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,
  N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,
  N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,
  N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,
  N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,
  N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,
  N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,
  N170,N171,N172,N173,N174,N175;
  wire [14:0] exp;
  wire [111:0] mantissa;
  wire [127:14] preshift;
  wire [7:0] shamt;

  bsg_fpu_preprocess_e_p15_m_p112
  preprocess
  (
    .a_i(a_i),
    .zero_o(zero),
    .nan_o(nan),
    .infty_o(infty),
    .sign_o(sign),
    .exp_o(exp),
    .man_o(mantissa)
  );

  assign N6 = exp > { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1 };
  assign N7 = exp > { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 };
  assign exp_too_small = exp < { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 };
  assign shifted = { preshift, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } >> shamt;
  assign { N15, N14, N13, N12, N11, N10, N9, N8 } = { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1 } - exp[7:0];
  assign { N23, N22, N21, N20, N19, N18, N17, N16 } = { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 } - exp[7:0];
  assign post_round = inverted + sign;
  assign exp_too_big = (N0)? N6 : 
                       (N1)? N7 : 1'b0;
  assign N0 = signed_i;
  assign N1 = N175;
  assign preshift[126:14] = (N0)? { 1'b1, mantissa } : 
                            (N2)? { mantissa, 1'b0 } : 1'b0;
  assign N2 = preshift[127];
  assign shamt = (N0)? { N15, N14, N13, N12, N11, N10, N9, N8 } : 
                 (N1)? { N23, N22, N21, N20, N19, N18, N17, N16 } : 1'b0;
  assign N32 = (N3)? signed_i : 
               (N4)? N175 : 1'b0;
  assign N3 = sign;
  assign N4 = N31;
  assign z_o = (N5)? { N175, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N34)? { N32, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31 } : 
               (N37)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N40)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N43)? { sign, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31, N31 } : 
               (N46)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N30)? post_round : 1'b0;
  assign N5 = nan;
  assign invalid_o = (N5)? 1'b1 : 
                     (N34)? 1'b1 : 
                     (N37)? 1'b1 : 
                     (N40)? 1'b0 : 
                     (N43)? 1'b1 : 
                     (N46)? 1'b0 : 
                     (N30)? 1'b0 : 1'b0;
  assign preshift[127] = N175;
  assign inverted[127] = N47 ^ shifted[127];
  assign N47 = signed_i & sign;
  assign inverted[126] = N48 ^ shifted[126];
  assign N48 = signed_i & sign;
  assign inverted[125] = N49 ^ shifted[125];
  assign N49 = signed_i & sign;
  assign inverted[124] = N50 ^ shifted[124];
  assign N50 = signed_i & sign;
  assign inverted[123] = N51 ^ shifted[123];
  assign N51 = signed_i & sign;
  assign inverted[122] = N52 ^ shifted[122];
  assign N52 = signed_i & sign;
  assign inverted[121] = N53 ^ shifted[121];
  assign N53 = signed_i & sign;
  assign inverted[120] = N54 ^ shifted[120];
  assign N54 = signed_i & sign;
  assign inverted[119] = N55 ^ shifted[119];
  assign N55 = signed_i & sign;
  assign inverted[118] = N56 ^ shifted[118];
  assign N56 = signed_i & sign;
  assign inverted[117] = N57 ^ shifted[117];
  assign N57 = signed_i & sign;
  assign inverted[116] = N58 ^ shifted[116];
  assign N58 = signed_i & sign;
  assign inverted[115] = N59 ^ shifted[115];
  assign N59 = signed_i & sign;
  assign inverted[114] = N60 ^ shifted[114];
  assign N60 = signed_i & sign;
  assign inverted[113] = N61 ^ shifted[113];
  assign N61 = signed_i & sign;
  assign inverted[112] = N62 ^ shifted[112];
  assign N62 = signed_i & sign;
  assign inverted[111] = N63 ^ shifted[111];
  assign N63 = signed_i & sign;
  assign inverted[110] = N64 ^ shifted[110];
  assign N64 = signed_i & sign;
  assign inverted[109] = N65 ^ shifted[109];
  assign N65 = signed_i & sign;
  assign inverted[108] = N66 ^ shifted[108];
  assign N66 = signed_i & sign;
  assign inverted[107] = N67 ^ shifted[107];
  assign N67 = signed_i & sign;
  assign inverted[106] = N68 ^ shifted[106];
  assign N68 = signed_i & sign;
  assign inverted[105] = N69 ^ shifted[105];
  assign N69 = signed_i & sign;
  assign inverted[104] = N70 ^ shifted[104];
  assign N70 = signed_i & sign;
  assign inverted[103] = N71 ^ shifted[103];
  assign N71 = signed_i & sign;
  assign inverted[102] = N72 ^ shifted[102];
  assign N72 = signed_i & sign;
  assign inverted[101] = N73 ^ shifted[101];
  assign N73 = signed_i & sign;
  assign inverted[100] = N74 ^ shifted[100];
  assign N74 = signed_i & sign;
  assign inverted[99] = N75 ^ shifted[99];
  assign N75 = signed_i & sign;
  assign inverted[98] = N76 ^ shifted[98];
  assign N76 = signed_i & sign;
  assign inverted[97] = N77 ^ shifted[97];
  assign N77 = signed_i & sign;
  assign inverted[96] = N78 ^ shifted[96];
  assign N78 = signed_i & sign;
  assign inverted[95] = N79 ^ shifted[95];
  assign N79 = signed_i & sign;
  assign inverted[94] = N80 ^ shifted[94];
  assign N80 = signed_i & sign;
  assign inverted[93] = N81 ^ shifted[93];
  assign N81 = signed_i & sign;
  assign inverted[92] = N82 ^ shifted[92];
  assign N82 = signed_i & sign;
  assign inverted[91] = N83 ^ shifted[91];
  assign N83 = signed_i & sign;
  assign inverted[90] = N84 ^ shifted[90];
  assign N84 = signed_i & sign;
  assign inverted[89] = N85 ^ shifted[89];
  assign N85 = signed_i & sign;
  assign inverted[88] = N86 ^ shifted[88];
  assign N86 = signed_i & sign;
  assign inverted[87] = N87 ^ shifted[87];
  assign N87 = signed_i & sign;
  assign inverted[86] = N88 ^ shifted[86];
  assign N88 = signed_i & sign;
  assign inverted[85] = N89 ^ shifted[85];
  assign N89 = signed_i & sign;
  assign inverted[84] = N90 ^ shifted[84];
  assign N90 = signed_i & sign;
  assign inverted[83] = N91 ^ shifted[83];
  assign N91 = signed_i & sign;
  assign inverted[82] = N92 ^ shifted[82];
  assign N92 = signed_i & sign;
  assign inverted[81] = N93 ^ shifted[81];
  assign N93 = signed_i & sign;
  assign inverted[80] = N94 ^ shifted[80];
  assign N94 = signed_i & sign;
  assign inverted[79] = N95 ^ shifted[79];
  assign N95 = signed_i & sign;
  assign inverted[78] = N96 ^ shifted[78];
  assign N96 = signed_i & sign;
  assign inverted[77] = N97 ^ shifted[77];
  assign N97 = signed_i & sign;
  assign inverted[76] = N98 ^ shifted[76];
  assign N98 = signed_i & sign;
  assign inverted[75] = N99 ^ shifted[75];
  assign N99 = signed_i & sign;
  assign inverted[74] = N100 ^ shifted[74];
  assign N100 = signed_i & sign;
  assign inverted[73] = N101 ^ shifted[73];
  assign N101 = signed_i & sign;
  assign inverted[72] = N102 ^ shifted[72];
  assign N102 = signed_i & sign;
  assign inverted[71] = N103 ^ shifted[71];
  assign N103 = signed_i & sign;
  assign inverted[70] = N104 ^ shifted[70];
  assign N104 = signed_i & sign;
  assign inverted[69] = N105 ^ shifted[69];
  assign N105 = signed_i & sign;
  assign inverted[68] = N106 ^ shifted[68];
  assign N106 = signed_i & sign;
  assign inverted[67] = N107 ^ shifted[67];
  assign N107 = signed_i & sign;
  assign inverted[66] = N108 ^ shifted[66];
  assign N108 = signed_i & sign;
  assign inverted[65] = N109 ^ shifted[65];
  assign N109 = signed_i & sign;
  assign inverted[64] = N110 ^ shifted[64];
  assign N110 = signed_i & sign;
  assign inverted[63] = N111 ^ shifted[63];
  assign N111 = signed_i & sign;
  assign inverted[62] = N112 ^ shifted[62];
  assign N112 = signed_i & sign;
  assign inverted[61] = N113 ^ shifted[61];
  assign N113 = signed_i & sign;
  assign inverted[60] = N114 ^ shifted[60];
  assign N114 = signed_i & sign;
  assign inverted[59] = N115 ^ shifted[59];
  assign N115 = signed_i & sign;
  assign inverted[58] = N116 ^ shifted[58];
  assign N116 = signed_i & sign;
  assign inverted[57] = N117 ^ shifted[57];
  assign N117 = signed_i & sign;
  assign inverted[56] = N118 ^ shifted[56];
  assign N118 = signed_i & sign;
  assign inverted[55] = N119 ^ shifted[55];
  assign N119 = signed_i & sign;
  assign inverted[54] = N120 ^ shifted[54];
  assign N120 = signed_i & sign;
  assign inverted[53] = N121 ^ shifted[53];
  assign N121 = signed_i & sign;
  assign inverted[52] = N122 ^ shifted[52];
  assign N122 = signed_i & sign;
  assign inverted[51] = N123 ^ shifted[51];
  assign N123 = signed_i & sign;
  assign inverted[50] = N124 ^ shifted[50];
  assign N124 = signed_i & sign;
  assign inverted[49] = N125 ^ shifted[49];
  assign N125 = signed_i & sign;
  assign inverted[48] = N126 ^ shifted[48];
  assign N126 = signed_i & sign;
  assign inverted[47] = N127 ^ shifted[47];
  assign N127 = signed_i & sign;
  assign inverted[46] = N128 ^ shifted[46];
  assign N128 = signed_i & sign;
  assign inverted[45] = N129 ^ shifted[45];
  assign N129 = signed_i & sign;
  assign inverted[44] = N130 ^ shifted[44];
  assign N130 = signed_i & sign;
  assign inverted[43] = N131 ^ shifted[43];
  assign N131 = signed_i & sign;
  assign inverted[42] = N132 ^ shifted[42];
  assign N132 = signed_i & sign;
  assign inverted[41] = N133 ^ shifted[41];
  assign N133 = signed_i & sign;
  assign inverted[40] = N134 ^ shifted[40];
  assign N134 = signed_i & sign;
  assign inverted[39] = N135 ^ shifted[39];
  assign N135 = signed_i & sign;
  assign inverted[38] = N136 ^ shifted[38];
  assign N136 = signed_i & sign;
  assign inverted[37] = N137 ^ shifted[37];
  assign N137 = signed_i & sign;
  assign inverted[36] = N138 ^ shifted[36];
  assign N138 = signed_i & sign;
  assign inverted[35] = N139 ^ shifted[35];
  assign N139 = signed_i & sign;
  assign inverted[34] = N140 ^ shifted[34];
  assign N140 = signed_i & sign;
  assign inverted[33] = N141 ^ shifted[33];
  assign N141 = signed_i & sign;
  assign inverted[32] = N142 ^ shifted[32];
  assign N142 = signed_i & sign;
  assign inverted[31] = N143 ^ shifted[31];
  assign N143 = signed_i & sign;
  assign inverted[30] = N144 ^ shifted[30];
  assign N144 = signed_i & sign;
  assign inverted[29] = N145 ^ shifted[29];
  assign N145 = signed_i & sign;
  assign inverted[28] = N146 ^ shifted[28];
  assign N146 = signed_i & sign;
  assign inverted[27] = N147 ^ shifted[27];
  assign N147 = signed_i & sign;
  assign inverted[26] = N148 ^ shifted[26];
  assign N148 = signed_i & sign;
  assign inverted[25] = N149 ^ shifted[25];
  assign N149 = signed_i & sign;
  assign inverted[24] = N150 ^ shifted[24];
  assign N150 = signed_i & sign;
  assign inverted[23] = N151 ^ shifted[23];
  assign N151 = signed_i & sign;
  assign inverted[22] = N152 ^ shifted[22];
  assign N152 = signed_i & sign;
  assign inverted[21] = N153 ^ shifted[21];
  assign N153 = signed_i & sign;
  assign inverted[20] = N154 ^ shifted[20];
  assign N154 = signed_i & sign;
  assign inverted[19] = N155 ^ shifted[19];
  assign N155 = signed_i & sign;
  assign inverted[18] = N156 ^ shifted[18];
  assign N156 = signed_i & sign;
  assign inverted[17] = N157 ^ shifted[17];
  assign N157 = signed_i & sign;
  assign inverted[16] = N158 ^ shifted[16];
  assign N158 = signed_i & sign;
  assign inverted[15] = N159 ^ shifted[15];
  assign N159 = signed_i & sign;
  assign inverted[14] = N160 ^ shifted[14];
  assign N160 = signed_i & sign;
  assign inverted[13] = N161 ^ shifted[13];
  assign N161 = signed_i & sign;
  assign inverted[12] = N162 ^ shifted[12];
  assign N162 = signed_i & sign;
  assign inverted[11] = N163 ^ shifted[11];
  assign N163 = signed_i & sign;
  assign inverted[10] = N164 ^ shifted[10];
  assign N164 = signed_i & sign;
  assign inverted[9] = N165 ^ shifted[9];
  assign N165 = signed_i & sign;
  assign inverted[8] = N166 ^ shifted[8];
  assign N166 = signed_i & sign;
  assign inverted[7] = N167 ^ shifted[7];
  assign N167 = signed_i & sign;
  assign inverted[6] = N168 ^ shifted[6];
  assign N168 = signed_i & sign;
  assign inverted[5] = N169 ^ shifted[5];
  assign N169 = signed_i & sign;
  assign inverted[4] = N170 ^ shifted[4];
  assign N170 = signed_i & sign;
  assign inverted[3] = N171 ^ shifted[3];
  assign N171 = signed_i & sign;
  assign inverted[2] = N172 ^ shifted[2];
  assign N172 = signed_i & sign;
  assign inverted[1] = N173 ^ shifted[1];
  assign N173 = signed_i & sign;
  assign inverted[0] = N174 ^ shifted[0];
  assign N174 = signed_i & sign;
  assign N24 = N175 & sign;
  assign N175 = ~signed_i;
  assign N25 = infty | nan;
  assign N26 = N24 | N25;
  assign N27 = zero | N26;
  assign N28 = exp_too_big | N27;
  assign N29 = exp_too_small | N28;
  assign N30 = ~N29;
  assign N31 = ~sign;
  assign N33 = ~nan;
  assign N34 = infty & N33;
  assign N35 = ~infty;
  assign N36 = N33 & N35;
  assign N37 = N24 & N36;
  assign N38 = ~N24;
  assign N39 = N36 & N38;
  assign N40 = zero & N39;
  assign N41 = ~zero;
  assign N42 = N39 & N41;
  assign N43 = exp_too_big & N42;
  assign N44 = ~exp_too_big;
  assign N45 = N42 & N44;
  assign N46 = exp_too_small & N45;

endmodule

