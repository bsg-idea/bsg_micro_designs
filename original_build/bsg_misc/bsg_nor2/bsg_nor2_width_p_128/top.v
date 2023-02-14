

module top
(
  a_i,
  b_i,
  o
);

  input [127:0] a_i;
  input [127:0] b_i;
  output [127:0] o;

  bsg_nor2
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .o(o)
  );


endmodule



module bsg_nor2
(
  a_i,
  b_i,
  o
);

  input [127:0] a_i;
  input [127:0] b_i;
  output [127:0] o;
  wire [127:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127;
  assign o[127] = ~N0;
  assign N0 = a_i[127] | b_i[127];
  assign o[126] = ~N1;
  assign N1 = a_i[126] | b_i[126];
  assign o[125] = ~N2;
  assign N2 = a_i[125] | b_i[125];
  assign o[124] = ~N3;
  assign N3 = a_i[124] | b_i[124];
  assign o[123] = ~N4;
  assign N4 = a_i[123] | b_i[123];
  assign o[122] = ~N5;
  assign N5 = a_i[122] | b_i[122];
  assign o[121] = ~N6;
  assign N6 = a_i[121] | b_i[121];
  assign o[120] = ~N7;
  assign N7 = a_i[120] | b_i[120];
  assign o[119] = ~N8;
  assign N8 = a_i[119] | b_i[119];
  assign o[118] = ~N9;
  assign N9 = a_i[118] | b_i[118];
  assign o[117] = ~N10;
  assign N10 = a_i[117] | b_i[117];
  assign o[116] = ~N11;
  assign N11 = a_i[116] | b_i[116];
  assign o[115] = ~N12;
  assign N12 = a_i[115] | b_i[115];
  assign o[114] = ~N13;
  assign N13 = a_i[114] | b_i[114];
  assign o[113] = ~N14;
  assign N14 = a_i[113] | b_i[113];
  assign o[112] = ~N15;
  assign N15 = a_i[112] | b_i[112];
  assign o[111] = ~N16;
  assign N16 = a_i[111] | b_i[111];
  assign o[110] = ~N17;
  assign N17 = a_i[110] | b_i[110];
  assign o[109] = ~N18;
  assign N18 = a_i[109] | b_i[109];
  assign o[108] = ~N19;
  assign N19 = a_i[108] | b_i[108];
  assign o[107] = ~N20;
  assign N20 = a_i[107] | b_i[107];
  assign o[106] = ~N21;
  assign N21 = a_i[106] | b_i[106];
  assign o[105] = ~N22;
  assign N22 = a_i[105] | b_i[105];
  assign o[104] = ~N23;
  assign N23 = a_i[104] | b_i[104];
  assign o[103] = ~N24;
  assign N24 = a_i[103] | b_i[103];
  assign o[102] = ~N25;
  assign N25 = a_i[102] | b_i[102];
  assign o[101] = ~N26;
  assign N26 = a_i[101] | b_i[101];
  assign o[100] = ~N27;
  assign N27 = a_i[100] | b_i[100];
  assign o[99] = ~N28;
  assign N28 = a_i[99] | b_i[99];
  assign o[98] = ~N29;
  assign N29 = a_i[98] | b_i[98];
  assign o[97] = ~N30;
  assign N30 = a_i[97] | b_i[97];
  assign o[96] = ~N31;
  assign N31 = a_i[96] | b_i[96];
  assign o[95] = ~N32;
  assign N32 = a_i[95] | b_i[95];
  assign o[94] = ~N33;
  assign N33 = a_i[94] | b_i[94];
  assign o[93] = ~N34;
  assign N34 = a_i[93] | b_i[93];
  assign o[92] = ~N35;
  assign N35 = a_i[92] | b_i[92];
  assign o[91] = ~N36;
  assign N36 = a_i[91] | b_i[91];
  assign o[90] = ~N37;
  assign N37 = a_i[90] | b_i[90];
  assign o[89] = ~N38;
  assign N38 = a_i[89] | b_i[89];
  assign o[88] = ~N39;
  assign N39 = a_i[88] | b_i[88];
  assign o[87] = ~N40;
  assign N40 = a_i[87] | b_i[87];
  assign o[86] = ~N41;
  assign N41 = a_i[86] | b_i[86];
  assign o[85] = ~N42;
  assign N42 = a_i[85] | b_i[85];
  assign o[84] = ~N43;
  assign N43 = a_i[84] | b_i[84];
  assign o[83] = ~N44;
  assign N44 = a_i[83] | b_i[83];
  assign o[82] = ~N45;
  assign N45 = a_i[82] | b_i[82];
  assign o[81] = ~N46;
  assign N46 = a_i[81] | b_i[81];
  assign o[80] = ~N47;
  assign N47 = a_i[80] | b_i[80];
  assign o[79] = ~N48;
  assign N48 = a_i[79] | b_i[79];
  assign o[78] = ~N49;
  assign N49 = a_i[78] | b_i[78];
  assign o[77] = ~N50;
  assign N50 = a_i[77] | b_i[77];
  assign o[76] = ~N51;
  assign N51 = a_i[76] | b_i[76];
  assign o[75] = ~N52;
  assign N52 = a_i[75] | b_i[75];
  assign o[74] = ~N53;
  assign N53 = a_i[74] | b_i[74];
  assign o[73] = ~N54;
  assign N54 = a_i[73] | b_i[73];
  assign o[72] = ~N55;
  assign N55 = a_i[72] | b_i[72];
  assign o[71] = ~N56;
  assign N56 = a_i[71] | b_i[71];
  assign o[70] = ~N57;
  assign N57 = a_i[70] | b_i[70];
  assign o[69] = ~N58;
  assign N58 = a_i[69] | b_i[69];
  assign o[68] = ~N59;
  assign N59 = a_i[68] | b_i[68];
  assign o[67] = ~N60;
  assign N60 = a_i[67] | b_i[67];
  assign o[66] = ~N61;
  assign N61 = a_i[66] | b_i[66];
  assign o[65] = ~N62;
  assign N62 = a_i[65] | b_i[65];
  assign o[64] = ~N63;
  assign N63 = a_i[64] | b_i[64];
  assign o[63] = ~N64;
  assign N64 = a_i[63] | b_i[63];
  assign o[62] = ~N65;
  assign N65 = a_i[62] | b_i[62];
  assign o[61] = ~N66;
  assign N66 = a_i[61] | b_i[61];
  assign o[60] = ~N67;
  assign N67 = a_i[60] | b_i[60];
  assign o[59] = ~N68;
  assign N68 = a_i[59] | b_i[59];
  assign o[58] = ~N69;
  assign N69 = a_i[58] | b_i[58];
  assign o[57] = ~N70;
  assign N70 = a_i[57] | b_i[57];
  assign o[56] = ~N71;
  assign N71 = a_i[56] | b_i[56];
  assign o[55] = ~N72;
  assign N72 = a_i[55] | b_i[55];
  assign o[54] = ~N73;
  assign N73 = a_i[54] | b_i[54];
  assign o[53] = ~N74;
  assign N74 = a_i[53] | b_i[53];
  assign o[52] = ~N75;
  assign N75 = a_i[52] | b_i[52];
  assign o[51] = ~N76;
  assign N76 = a_i[51] | b_i[51];
  assign o[50] = ~N77;
  assign N77 = a_i[50] | b_i[50];
  assign o[49] = ~N78;
  assign N78 = a_i[49] | b_i[49];
  assign o[48] = ~N79;
  assign N79 = a_i[48] | b_i[48];
  assign o[47] = ~N80;
  assign N80 = a_i[47] | b_i[47];
  assign o[46] = ~N81;
  assign N81 = a_i[46] | b_i[46];
  assign o[45] = ~N82;
  assign N82 = a_i[45] | b_i[45];
  assign o[44] = ~N83;
  assign N83 = a_i[44] | b_i[44];
  assign o[43] = ~N84;
  assign N84 = a_i[43] | b_i[43];
  assign o[42] = ~N85;
  assign N85 = a_i[42] | b_i[42];
  assign o[41] = ~N86;
  assign N86 = a_i[41] | b_i[41];
  assign o[40] = ~N87;
  assign N87 = a_i[40] | b_i[40];
  assign o[39] = ~N88;
  assign N88 = a_i[39] | b_i[39];
  assign o[38] = ~N89;
  assign N89 = a_i[38] | b_i[38];
  assign o[37] = ~N90;
  assign N90 = a_i[37] | b_i[37];
  assign o[36] = ~N91;
  assign N91 = a_i[36] | b_i[36];
  assign o[35] = ~N92;
  assign N92 = a_i[35] | b_i[35];
  assign o[34] = ~N93;
  assign N93 = a_i[34] | b_i[34];
  assign o[33] = ~N94;
  assign N94 = a_i[33] | b_i[33];
  assign o[32] = ~N95;
  assign N95 = a_i[32] | b_i[32];
  assign o[31] = ~N96;
  assign N96 = a_i[31] | b_i[31];
  assign o[30] = ~N97;
  assign N97 = a_i[30] | b_i[30];
  assign o[29] = ~N98;
  assign N98 = a_i[29] | b_i[29];
  assign o[28] = ~N99;
  assign N99 = a_i[28] | b_i[28];
  assign o[27] = ~N100;
  assign N100 = a_i[27] | b_i[27];
  assign o[26] = ~N101;
  assign N101 = a_i[26] | b_i[26];
  assign o[25] = ~N102;
  assign N102 = a_i[25] | b_i[25];
  assign o[24] = ~N103;
  assign N103 = a_i[24] | b_i[24];
  assign o[23] = ~N104;
  assign N104 = a_i[23] | b_i[23];
  assign o[22] = ~N105;
  assign N105 = a_i[22] | b_i[22];
  assign o[21] = ~N106;
  assign N106 = a_i[21] | b_i[21];
  assign o[20] = ~N107;
  assign N107 = a_i[20] | b_i[20];
  assign o[19] = ~N108;
  assign N108 = a_i[19] | b_i[19];
  assign o[18] = ~N109;
  assign N109 = a_i[18] | b_i[18];
  assign o[17] = ~N110;
  assign N110 = a_i[17] | b_i[17];
  assign o[16] = ~N111;
  assign N111 = a_i[16] | b_i[16];
  assign o[15] = ~N112;
  assign N112 = a_i[15] | b_i[15];
  assign o[14] = ~N113;
  assign N113 = a_i[14] | b_i[14];
  assign o[13] = ~N114;
  assign N114 = a_i[13] | b_i[13];
  assign o[12] = ~N115;
  assign N115 = a_i[12] | b_i[12];
  assign o[11] = ~N116;
  assign N116 = a_i[11] | b_i[11];
  assign o[10] = ~N117;
  assign N117 = a_i[10] | b_i[10];
  assign o[9] = ~N118;
  assign N118 = a_i[9] | b_i[9];
  assign o[8] = ~N119;
  assign N119 = a_i[8] | b_i[8];
  assign o[7] = ~N120;
  assign N120 = a_i[7] | b_i[7];
  assign o[6] = ~N121;
  assign N121 = a_i[6] | b_i[6];
  assign o[5] = ~N122;
  assign N122 = a_i[5] | b_i[5];
  assign o[4] = ~N123;
  assign N123 = a_i[4] | b_i[4];
  assign o[3] = ~N124;
  assign N124 = a_i[3] | b_i[3];
  assign o[2] = ~N125;
  assign N125 = a_i[2] | b_i[2];
  assign o[1] = ~N126;
  assign N126 = a_i[1] | b_i[1];
  assign o[0] = ~N127;
  assign N127 = a_i[0] | b_i[0];

endmodule

