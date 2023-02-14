

module top
(
  a_i,
  b_i,
  c_i,
  o
);

  input [127:0] a_i;
  input [127:0] b_i;
  input [127:0] c_i;
  output [127:0] o;

  bsg_nor3
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .c_i(c_i),
    .o(o)
  );


endmodule



module bsg_nor3
(
  a_i,
  b_i,
  c_i,
  o
);

  input [127:0] a_i;
  input [127:0] b_i;
  input [127:0] c_i;
  output [127:0] o;
  wire [127:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,
  N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,
  N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,
  N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,
  N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,
  N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,
  N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,
  N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,
  N246,N247,N248,N249,N250,N251,N252,N253,N254,N255;
  assign o[127] = ~N1;
  assign N1 = N0 | c_i[127];
  assign N0 = a_i[127] | b_i[127];
  assign o[126] = ~N3;
  assign N3 = N2 | c_i[126];
  assign N2 = a_i[126] | b_i[126];
  assign o[125] = ~N5;
  assign N5 = N4 | c_i[125];
  assign N4 = a_i[125] | b_i[125];
  assign o[124] = ~N7;
  assign N7 = N6 | c_i[124];
  assign N6 = a_i[124] | b_i[124];
  assign o[123] = ~N9;
  assign N9 = N8 | c_i[123];
  assign N8 = a_i[123] | b_i[123];
  assign o[122] = ~N11;
  assign N11 = N10 | c_i[122];
  assign N10 = a_i[122] | b_i[122];
  assign o[121] = ~N13;
  assign N13 = N12 | c_i[121];
  assign N12 = a_i[121] | b_i[121];
  assign o[120] = ~N15;
  assign N15 = N14 | c_i[120];
  assign N14 = a_i[120] | b_i[120];
  assign o[119] = ~N17;
  assign N17 = N16 | c_i[119];
  assign N16 = a_i[119] | b_i[119];
  assign o[118] = ~N19;
  assign N19 = N18 | c_i[118];
  assign N18 = a_i[118] | b_i[118];
  assign o[117] = ~N21;
  assign N21 = N20 | c_i[117];
  assign N20 = a_i[117] | b_i[117];
  assign o[116] = ~N23;
  assign N23 = N22 | c_i[116];
  assign N22 = a_i[116] | b_i[116];
  assign o[115] = ~N25;
  assign N25 = N24 | c_i[115];
  assign N24 = a_i[115] | b_i[115];
  assign o[114] = ~N27;
  assign N27 = N26 | c_i[114];
  assign N26 = a_i[114] | b_i[114];
  assign o[113] = ~N29;
  assign N29 = N28 | c_i[113];
  assign N28 = a_i[113] | b_i[113];
  assign o[112] = ~N31;
  assign N31 = N30 | c_i[112];
  assign N30 = a_i[112] | b_i[112];
  assign o[111] = ~N33;
  assign N33 = N32 | c_i[111];
  assign N32 = a_i[111] | b_i[111];
  assign o[110] = ~N35;
  assign N35 = N34 | c_i[110];
  assign N34 = a_i[110] | b_i[110];
  assign o[109] = ~N37;
  assign N37 = N36 | c_i[109];
  assign N36 = a_i[109] | b_i[109];
  assign o[108] = ~N39;
  assign N39 = N38 | c_i[108];
  assign N38 = a_i[108] | b_i[108];
  assign o[107] = ~N41;
  assign N41 = N40 | c_i[107];
  assign N40 = a_i[107] | b_i[107];
  assign o[106] = ~N43;
  assign N43 = N42 | c_i[106];
  assign N42 = a_i[106] | b_i[106];
  assign o[105] = ~N45;
  assign N45 = N44 | c_i[105];
  assign N44 = a_i[105] | b_i[105];
  assign o[104] = ~N47;
  assign N47 = N46 | c_i[104];
  assign N46 = a_i[104] | b_i[104];
  assign o[103] = ~N49;
  assign N49 = N48 | c_i[103];
  assign N48 = a_i[103] | b_i[103];
  assign o[102] = ~N51;
  assign N51 = N50 | c_i[102];
  assign N50 = a_i[102] | b_i[102];
  assign o[101] = ~N53;
  assign N53 = N52 | c_i[101];
  assign N52 = a_i[101] | b_i[101];
  assign o[100] = ~N55;
  assign N55 = N54 | c_i[100];
  assign N54 = a_i[100] | b_i[100];
  assign o[99] = ~N57;
  assign N57 = N56 | c_i[99];
  assign N56 = a_i[99] | b_i[99];
  assign o[98] = ~N59;
  assign N59 = N58 | c_i[98];
  assign N58 = a_i[98] | b_i[98];
  assign o[97] = ~N61;
  assign N61 = N60 | c_i[97];
  assign N60 = a_i[97] | b_i[97];
  assign o[96] = ~N63;
  assign N63 = N62 | c_i[96];
  assign N62 = a_i[96] | b_i[96];
  assign o[95] = ~N65;
  assign N65 = N64 | c_i[95];
  assign N64 = a_i[95] | b_i[95];
  assign o[94] = ~N67;
  assign N67 = N66 | c_i[94];
  assign N66 = a_i[94] | b_i[94];
  assign o[93] = ~N69;
  assign N69 = N68 | c_i[93];
  assign N68 = a_i[93] | b_i[93];
  assign o[92] = ~N71;
  assign N71 = N70 | c_i[92];
  assign N70 = a_i[92] | b_i[92];
  assign o[91] = ~N73;
  assign N73 = N72 | c_i[91];
  assign N72 = a_i[91] | b_i[91];
  assign o[90] = ~N75;
  assign N75 = N74 | c_i[90];
  assign N74 = a_i[90] | b_i[90];
  assign o[89] = ~N77;
  assign N77 = N76 | c_i[89];
  assign N76 = a_i[89] | b_i[89];
  assign o[88] = ~N79;
  assign N79 = N78 | c_i[88];
  assign N78 = a_i[88] | b_i[88];
  assign o[87] = ~N81;
  assign N81 = N80 | c_i[87];
  assign N80 = a_i[87] | b_i[87];
  assign o[86] = ~N83;
  assign N83 = N82 | c_i[86];
  assign N82 = a_i[86] | b_i[86];
  assign o[85] = ~N85;
  assign N85 = N84 | c_i[85];
  assign N84 = a_i[85] | b_i[85];
  assign o[84] = ~N87;
  assign N87 = N86 | c_i[84];
  assign N86 = a_i[84] | b_i[84];
  assign o[83] = ~N89;
  assign N89 = N88 | c_i[83];
  assign N88 = a_i[83] | b_i[83];
  assign o[82] = ~N91;
  assign N91 = N90 | c_i[82];
  assign N90 = a_i[82] | b_i[82];
  assign o[81] = ~N93;
  assign N93 = N92 | c_i[81];
  assign N92 = a_i[81] | b_i[81];
  assign o[80] = ~N95;
  assign N95 = N94 | c_i[80];
  assign N94 = a_i[80] | b_i[80];
  assign o[79] = ~N97;
  assign N97 = N96 | c_i[79];
  assign N96 = a_i[79] | b_i[79];
  assign o[78] = ~N99;
  assign N99 = N98 | c_i[78];
  assign N98 = a_i[78] | b_i[78];
  assign o[77] = ~N101;
  assign N101 = N100 | c_i[77];
  assign N100 = a_i[77] | b_i[77];
  assign o[76] = ~N103;
  assign N103 = N102 | c_i[76];
  assign N102 = a_i[76] | b_i[76];
  assign o[75] = ~N105;
  assign N105 = N104 | c_i[75];
  assign N104 = a_i[75] | b_i[75];
  assign o[74] = ~N107;
  assign N107 = N106 | c_i[74];
  assign N106 = a_i[74] | b_i[74];
  assign o[73] = ~N109;
  assign N109 = N108 | c_i[73];
  assign N108 = a_i[73] | b_i[73];
  assign o[72] = ~N111;
  assign N111 = N110 | c_i[72];
  assign N110 = a_i[72] | b_i[72];
  assign o[71] = ~N113;
  assign N113 = N112 | c_i[71];
  assign N112 = a_i[71] | b_i[71];
  assign o[70] = ~N115;
  assign N115 = N114 | c_i[70];
  assign N114 = a_i[70] | b_i[70];
  assign o[69] = ~N117;
  assign N117 = N116 | c_i[69];
  assign N116 = a_i[69] | b_i[69];
  assign o[68] = ~N119;
  assign N119 = N118 | c_i[68];
  assign N118 = a_i[68] | b_i[68];
  assign o[67] = ~N121;
  assign N121 = N120 | c_i[67];
  assign N120 = a_i[67] | b_i[67];
  assign o[66] = ~N123;
  assign N123 = N122 | c_i[66];
  assign N122 = a_i[66] | b_i[66];
  assign o[65] = ~N125;
  assign N125 = N124 | c_i[65];
  assign N124 = a_i[65] | b_i[65];
  assign o[64] = ~N127;
  assign N127 = N126 | c_i[64];
  assign N126 = a_i[64] | b_i[64];
  assign o[63] = ~N129;
  assign N129 = N128 | c_i[63];
  assign N128 = a_i[63] | b_i[63];
  assign o[62] = ~N131;
  assign N131 = N130 | c_i[62];
  assign N130 = a_i[62] | b_i[62];
  assign o[61] = ~N133;
  assign N133 = N132 | c_i[61];
  assign N132 = a_i[61] | b_i[61];
  assign o[60] = ~N135;
  assign N135 = N134 | c_i[60];
  assign N134 = a_i[60] | b_i[60];
  assign o[59] = ~N137;
  assign N137 = N136 | c_i[59];
  assign N136 = a_i[59] | b_i[59];
  assign o[58] = ~N139;
  assign N139 = N138 | c_i[58];
  assign N138 = a_i[58] | b_i[58];
  assign o[57] = ~N141;
  assign N141 = N140 | c_i[57];
  assign N140 = a_i[57] | b_i[57];
  assign o[56] = ~N143;
  assign N143 = N142 | c_i[56];
  assign N142 = a_i[56] | b_i[56];
  assign o[55] = ~N145;
  assign N145 = N144 | c_i[55];
  assign N144 = a_i[55] | b_i[55];
  assign o[54] = ~N147;
  assign N147 = N146 | c_i[54];
  assign N146 = a_i[54] | b_i[54];
  assign o[53] = ~N149;
  assign N149 = N148 | c_i[53];
  assign N148 = a_i[53] | b_i[53];
  assign o[52] = ~N151;
  assign N151 = N150 | c_i[52];
  assign N150 = a_i[52] | b_i[52];
  assign o[51] = ~N153;
  assign N153 = N152 | c_i[51];
  assign N152 = a_i[51] | b_i[51];
  assign o[50] = ~N155;
  assign N155 = N154 | c_i[50];
  assign N154 = a_i[50] | b_i[50];
  assign o[49] = ~N157;
  assign N157 = N156 | c_i[49];
  assign N156 = a_i[49] | b_i[49];
  assign o[48] = ~N159;
  assign N159 = N158 | c_i[48];
  assign N158 = a_i[48] | b_i[48];
  assign o[47] = ~N161;
  assign N161 = N160 | c_i[47];
  assign N160 = a_i[47] | b_i[47];
  assign o[46] = ~N163;
  assign N163 = N162 | c_i[46];
  assign N162 = a_i[46] | b_i[46];
  assign o[45] = ~N165;
  assign N165 = N164 | c_i[45];
  assign N164 = a_i[45] | b_i[45];
  assign o[44] = ~N167;
  assign N167 = N166 | c_i[44];
  assign N166 = a_i[44] | b_i[44];
  assign o[43] = ~N169;
  assign N169 = N168 | c_i[43];
  assign N168 = a_i[43] | b_i[43];
  assign o[42] = ~N171;
  assign N171 = N170 | c_i[42];
  assign N170 = a_i[42] | b_i[42];
  assign o[41] = ~N173;
  assign N173 = N172 | c_i[41];
  assign N172 = a_i[41] | b_i[41];
  assign o[40] = ~N175;
  assign N175 = N174 | c_i[40];
  assign N174 = a_i[40] | b_i[40];
  assign o[39] = ~N177;
  assign N177 = N176 | c_i[39];
  assign N176 = a_i[39] | b_i[39];
  assign o[38] = ~N179;
  assign N179 = N178 | c_i[38];
  assign N178 = a_i[38] | b_i[38];
  assign o[37] = ~N181;
  assign N181 = N180 | c_i[37];
  assign N180 = a_i[37] | b_i[37];
  assign o[36] = ~N183;
  assign N183 = N182 | c_i[36];
  assign N182 = a_i[36] | b_i[36];
  assign o[35] = ~N185;
  assign N185 = N184 | c_i[35];
  assign N184 = a_i[35] | b_i[35];
  assign o[34] = ~N187;
  assign N187 = N186 | c_i[34];
  assign N186 = a_i[34] | b_i[34];
  assign o[33] = ~N189;
  assign N189 = N188 | c_i[33];
  assign N188 = a_i[33] | b_i[33];
  assign o[32] = ~N191;
  assign N191 = N190 | c_i[32];
  assign N190 = a_i[32] | b_i[32];
  assign o[31] = ~N193;
  assign N193 = N192 | c_i[31];
  assign N192 = a_i[31] | b_i[31];
  assign o[30] = ~N195;
  assign N195 = N194 | c_i[30];
  assign N194 = a_i[30] | b_i[30];
  assign o[29] = ~N197;
  assign N197 = N196 | c_i[29];
  assign N196 = a_i[29] | b_i[29];
  assign o[28] = ~N199;
  assign N199 = N198 | c_i[28];
  assign N198 = a_i[28] | b_i[28];
  assign o[27] = ~N201;
  assign N201 = N200 | c_i[27];
  assign N200 = a_i[27] | b_i[27];
  assign o[26] = ~N203;
  assign N203 = N202 | c_i[26];
  assign N202 = a_i[26] | b_i[26];
  assign o[25] = ~N205;
  assign N205 = N204 | c_i[25];
  assign N204 = a_i[25] | b_i[25];
  assign o[24] = ~N207;
  assign N207 = N206 | c_i[24];
  assign N206 = a_i[24] | b_i[24];
  assign o[23] = ~N209;
  assign N209 = N208 | c_i[23];
  assign N208 = a_i[23] | b_i[23];
  assign o[22] = ~N211;
  assign N211 = N210 | c_i[22];
  assign N210 = a_i[22] | b_i[22];
  assign o[21] = ~N213;
  assign N213 = N212 | c_i[21];
  assign N212 = a_i[21] | b_i[21];
  assign o[20] = ~N215;
  assign N215 = N214 | c_i[20];
  assign N214 = a_i[20] | b_i[20];
  assign o[19] = ~N217;
  assign N217 = N216 | c_i[19];
  assign N216 = a_i[19] | b_i[19];
  assign o[18] = ~N219;
  assign N219 = N218 | c_i[18];
  assign N218 = a_i[18] | b_i[18];
  assign o[17] = ~N221;
  assign N221 = N220 | c_i[17];
  assign N220 = a_i[17] | b_i[17];
  assign o[16] = ~N223;
  assign N223 = N222 | c_i[16];
  assign N222 = a_i[16] | b_i[16];
  assign o[15] = ~N225;
  assign N225 = N224 | c_i[15];
  assign N224 = a_i[15] | b_i[15];
  assign o[14] = ~N227;
  assign N227 = N226 | c_i[14];
  assign N226 = a_i[14] | b_i[14];
  assign o[13] = ~N229;
  assign N229 = N228 | c_i[13];
  assign N228 = a_i[13] | b_i[13];
  assign o[12] = ~N231;
  assign N231 = N230 | c_i[12];
  assign N230 = a_i[12] | b_i[12];
  assign o[11] = ~N233;
  assign N233 = N232 | c_i[11];
  assign N232 = a_i[11] | b_i[11];
  assign o[10] = ~N235;
  assign N235 = N234 | c_i[10];
  assign N234 = a_i[10] | b_i[10];
  assign o[9] = ~N237;
  assign N237 = N236 | c_i[9];
  assign N236 = a_i[9] | b_i[9];
  assign o[8] = ~N239;
  assign N239 = N238 | c_i[8];
  assign N238 = a_i[8] | b_i[8];
  assign o[7] = ~N241;
  assign N241 = N240 | c_i[7];
  assign N240 = a_i[7] | b_i[7];
  assign o[6] = ~N243;
  assign N243 = N242 | c_i[6];
  assign N242 = a_i[6] | b_i[6];
  assign o[5] = ~N245;
  assign N245 = N244 | c_i[5];
  assign N244 = a_i[5] | b_i[5];
  assign o[4] = ~N247;
  assign N247 = N246 | c_i[4];
  assign N246 = a_i[4] | b_i[4];
  assign o[3] = ~N249;
  assign N249 = N248 | c_i[3];
  assign N248 = a_i[3] | b_i[3];
  assign o[2] = ~N251;
  assign N251 = N250 | c_i[2];
  assign N250 = a_i[2] | b_i[2];
  assign o[1] = ~N253;
  assign N253 = N252 | c_i[1];
  assign N252 = a_i[1] | b_i[1];
  assign o[0] = ~N255;
  assign N255 = N254 | c_i[0];
  assign N254 = a_i[0] | b_i[0];

endmodule

