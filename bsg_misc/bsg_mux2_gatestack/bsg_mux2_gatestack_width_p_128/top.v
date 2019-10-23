

module top
(
  i0,
  i1,
  i2,
  o
);

  input [127:0] i0;
  input [127:0] i1;
  input [127:0] i2;
  output [127:0] o;

  bsg_mux2_gatestack
  wrapper
  (
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .o(o)
  );


endmodule



module bsg_mux2_gatestack
(
  i0,
  i1,
  i2,
  o
);

  input [127:0] i0;
  input [127:0] i1;
  input [127:0] i2;
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
  assign o[0] = (N0)? i1[0] : 
                (N128)? i0[0] : 1'b0;
  assign N0 = i2[0];
  assign o[1] = (N1)? i1[1] : 
                (N129)? i0[1] : 1'b0;
  assign N1 = i2[1];
  assign o[2] = (N2)? i1[2] : 
                (N130)? i0[2] : 1'b0;
  assign N2 = i2[2];
  assign o[3] = (N3)? i1[3] : 
                (N131)? i0[3] : 1'b0;
  assign N3 = i2[3];
  assign o[4] = (N4)? i1[4] : 
                (N132)? i0[4] : 1'b0;
  assign N4 = i2[4];
  assign o[5] = (N5)? i1[5] : 
                (N133)? i0[5] : 1'b0;
  assign N5 = i2[5];
  assign o[6] = (N6)? i1[6] : 
                (N134)? i0[6] : 1'b0;
  assign N6 = i2[6];
  assign o[7] = (N7)? i1[7] : 
                (N135)? i0[7] : 1'b0;
  assign N7 = i2[7];
  assign o[8] = (N8)? i1[8] : 
                (N136)? i0[8] : 1'b0;
  assign N8 = i2[8];
  assign o[9] = (N9)? i1[9] : 
                (N137)? i0[9] : 1'b0;
  assign N9 = i2[9];
  assign o[10] = (N10)? i1[10] : 
                 (N138)? i0[10] : 1'b0;
  assign N10 = i2[10];
  assign o[11] = (N11)? i1[11] : 
                 (N139)? i0[11] : 1'b0;
  assign N11 = i2[11];
  assign o[12] = (N12)? i1[12] : 
                 (N140)? i0[12] : 1'b0;
  assign N12 = i2[12];
  assign o[13] = (N13)? i1[13] : 
                 (N141)? i0[13] : 1'b0;
  assign N13 = i2[13];
  assign o[14] = (N14)? i1[14] : 
                 (N142)? i0[14] : 1'b0;
  assign N14 = i2[14];
  assign o[15] = (N15)? i1[15] : 
                 (N143)? i0[15] : 1'b0;
  assign N15 = i2[15];
  assign o[16] = (N16)? i1[16] : 
                 (N144)? i0[16] : 1'b0;
  assign N16 = i2[16];
  assign o[17] = (N17)? i1[17] : 
                 (N145)? i0[17] : 1'b0;
  assign N17 = i2[17];
  assign o[18] = (N18)? i1[18] : 
                 (N146)? i0[18] : 1'b0;
  assign N18 = i2[18];
  assign o[19] = (N19)? i1[19] : 
                 (N147)? i0[19] : 1'b0;
  assign N19 = i2[19];
  assign o[20] = (N20)? i1[20] : 
                 (N148)? i0[20] : 1'b0;
  assign N20 = i2[20];
  assign o[21] = (N21)? i1[21] : 
                 (N149)? i0[21] : 1'b0;
  assign N21 = i2[21];
  assign o[22] = (N22)? i1[22] : 
                 (N150)? i0[22] : 1'b0;
  assign N22 = i2[22];
  assign o[23] = (N23)? i1[23] : 
                 (N151)? i0[23] : 1'b0;
  assign N23 = i2[23];
  assign o[24] = (N24)? i1[24] : 
                 (N152)? i0[24] : 1'b0;
  assign N24 = i2[24];
  assign o[25] = (N25)? i1[25] : 
                 (N153)? i0[25] : 1'b0;
  assign N25 = i2[25];
  assign o[26] = (N26)? i1[26] : 
                 (N154)? i0[26] : 1'b0;
  assign N26 = i2[26];
  assign o[27] = (N27)? i1[27] : 
                 (N155)? i0[27] : 1'b0;
  assign N27 = i2[27];
  assign o[28] = (N28)? i1[28] : 
                 (N156)? i0[28] : 1'b0;
  assign N28 = i2[28];
  assign o[29] = (N29)? i1[29] : 
                 (N157)? i0[29] : 1'b0;
  assign N29 = i2[29];
  assign o[30] = (N30)? i1[30] : 
                 (N158)? i0[30] : 1'b0;
  assign N30 = i2[30];
  assign o[31] = (N31)? i1[31] : 
                 (N159)? i0[31] : 1'b0;
  assign N31 = i2[31];
  assign o[32] = (N32)? i1[32] : 
                 (N160)? i0[32] : 1'b0;
  assign N32 = i2[32];
  assign o[33] = (N33)? i1[33] : 
                 (N161)? i0[33] : 1'b0;
  assign N33 = i2[33];
  assign o[34] = (N34)? i1[34] : 
                 (N162)? i0[34] : 1'b0;
  assign N34 = i2[34];
  assign o[35] = (N35)? i1[35] : 
                 (N163)? i0[35] : 1'b0;
  assign N35 = i2[35];
  assign o[36] = (N36)? i1[36] : 
                 (N164)? i0[36] : 1'b0;
  assign N36 = i2[36];
  assign o[37] = (N37)? i1[37] : 
                 (N165)? i0[37] : 1'b0;
  assign N37 = i2[37];
  assign o[38] = (N38)? i1[38] : 
                 (N166)? i0[38] : 1'b0;
  assign N38 = i2[38];
  assign o[39] = (N39)? i1[39] : 
                 (N167)? i0[39] : 1'b0;
  assign N39 = i2[39];
  assign o[40] = (N40)? i1[40] : 
                 (N168)? i0[40] : 1'b0;
  assign N40 = i2[40];
  assign o[41] = (N41)? i1[41] : 
                 (N169)? i0[41] : 1'b0;
  assign N41 = i2[41];
  assign o[42] = (N42)? i1[42] : 
                 (N170)? i0[42] : 1'b0;
  assign N42 = i2[42];
  assign o[43] = (N43)? i1[43] : 
                 (N171)? i0[43] : 1'b0;
  assign N43 = i2[43];
  assign o[44] = (N44)? i1[44] : 
                 (N172)? i0[44] : 1'b0;
  assign N44 = i2[44];
  assign o[45] = (N45)? i1[45] : 
                 (N173)? i0[45] : 1'b0;
  assign N45 = i2[45];
  assign o[46] = (N46)? i1[46] : 
                 (N174)? i0[46] : 1'b0;
  assign N46 = i2[46];
  assign o[47] = (N47)? i1[47] : 
                 (N175)? i0[47] : 1'b0;
  assign N47 = i2[47];
  assign o[48] = (N48)? i1[48] : 
                 (N176)? i0[48] : 1'b0;
  assign N48 = i2[48];
  assign o[49] = (N49)? i1[49] : 
                 (N177)? i0[49] : 1'b0;
  assign N49 = i2[49];
  assign o[50] = (N50)? i1[50] : 
                 (N178)? i0[50] : 1'b0;
  assign N50 = i2[50];
  assign o[51] = (N51)? i1[51] : 
                 (N179)? i0[51] : 1'b0;
  assign N51 = i2[51];
  assign o[52] = (N52)? i1[52] : 
                 (N180)? i0[52] : 1'b0;
  assign N52 = i2[52];
  assign o[53] = (N53)? i1[53] : 
                 (N181)? i0[53] : 1'b0;
  assign N53 = i2[53];
  assign o[54] = (N54)? i1[54] : 
                 (N182)? i0[54] : 1'b0;
  assign N54 = i2[54];
  assign o[55] = (N55)? i1[55] : 
                 (N183)? i0[55] : 1'b0;
  assign N55 = i2[55];
  assign o[56] = (N56)? i1[56] : 
                 (N184)? i0[56] : 1'b0;
  assign N56 = i2[56];
  assign o[57] = (N57)? i1[57] : 
                 (N185)? i0[57] : 1'b0;
  assign N57 = i2[57];
  assign o[58] = (N58)? i1[58] : 
                 (N186)? i0[58] : 1'b0;
  assign N58 = i2[58];
  assign o[59] = (N59)? i1[59] : 
                 (N187)? i0[59] : 1'b0;
  assign N59 = i2[59];
  assign o[60] = (N60)? i1[60] : 
                 (N188)? i0[60] : 1'b0;
  assign N60 = i2[60];
  assign o[61] = (N61)? i1[61] : 
                 (N189)? i0[61] : 1'b0;
  assign N61 = i2[61];
  assign o[62] = (N62)? i1[62] : 
                 (N190)? i0[62] : 1'b0;
  assign N62 = i2[62];
  assign o[63] = (N63)? i1[63] : 
                 (N191)? i0[63] : 1'b0;
  assign N63 = i2[63];
  assign o[64] = (N64)? i1[64] : 
                 (N192)? i0[64] : 1'b0;
  assign N64 = i2[64];
  assign o[65] = (N65)? i1[65] : 
                 (N193)? i0[65] : 1'b0;
  assign N65 = i2[65];
  assign o[66] = (N66)? i1[66] : 
                 (N194)? i0[66] : 1'b0;
  assign N66 = i2[66];
  assign o[67] = (N67)? i1[67] : 
                 (N195)? i0[67] : 1'b0;
  assign N67 = i2[67];
  assign o[68] = (N68)? i1[68] : 
                 (N196)? i0[68] : 1'b0;
  assign N68 = i2[68];
  assign o[69] = (N69)? i1[69] : 
                 (N197)? i0[69] : 1'b0;
  assign N69 = i2[69];
  assign o[70] = (N70)? i1[70] : 
                 (N198)? i0[70] : 1'b0;
  assign N70 = i2[70];
  assign o[71] = (N71)? i1[71] : 
                 (N199)? i0[71] : 1'b0;
  assign N71 = i2[71];
  assign o[72] = (N72)? i1[72] : 
                 (N200)? i0[72] : 1'b0;
  assign N72 = i2[72];
  assign o[73] = (N73)? i1[73] : 
                 (N201)? i0[73] : 1'b0;
  assign N73 = i2[73];
  assign o[74] = (N74)? i1[74] : 
                 (N202)? i0[74] : 1'b0;
  assign N74 = i2[74];
  assign o[75] = (N75)? i1[75] : 
                 (N203)? i0[75] : 1'b0;
  assign N75 = i2[75];
  assign o[76] = (N76)? i1[76] : 
                 (N204)? i0[76] : 1'b0;
  assign N76 = i2[76];
  assign o[77] = (N77)? i1[77] : 
                 (N205)? i0[77] : 1'b0;
  assign N77 = i2[77];
  assign o[78] = (N78)? i1[78] : 
                 (N206)? i0[78] : 1'b0;
  assign N78 = i2[78];
  assign o[79] = (N79)? i1[79] : 
                 (N207)? i0[79] : 1'b0;
  assign N79 = i2[79];
  assign o[80] = (N80)? i1[80] : 
                 (N208)? i0[80] : 1'b0;
  assign N80 = i2[80];
  assign o[81] = (N81)? i1[81] : 
                 (N209)? i0[81] : 1'b0;
  assign N81 = i2[81];
  assign o[82] = (N82)? i1[82] : 
                 (N210)? i0[82] : 1'b0;
  assign N82 = i2[82];
  assign o[83] = (N83)? i1[83] : 
                 (N211)? i0[83] : 1'b0;
  assign N83 = i2[83];
  assign o[84] = (N84)? i1[84] : 
                 (N212)? i0[84] : 1'b0;
  assign N84 = i2[84];
  assign o[85] = (N85)? i1[85] : 
                 (N213)? i0[85] : 1'b0;
  assign N85 = i2[85];
  assign o[86] = (N86)? i1[86] : 
                 (N214)? i0[86] : 1'b0;
  assign N86 = i2[86];
  assign o[87] = (N87)? i1[87] : 
                 (N215)? i0[87] : 1'b0;
  assign N87 = i2[87];
  assign o[88] = (N88)? i1[88] : 
                 (N216)? i0[88] : 1'b0;
  assign N88 = i2[88];
  assign o[89] = (N89)? i1[89] : 
                 (N217)? i0[89] : 1'b0;
  assign N89 = i2[89];
  assign o[90] = (N90)? i1[90] : 
                 (N218)? i0[90] : 1'b0;
  assign N90 = i2[90];
  assign o[91] = (N91)? i1[91] : 
                 (N219)? i0[91] : 1'b0;
  assign N91 = i2[91];
  assign o[92] = (N92)? i1[92] : 
                 (N220)? i0[92] : 1'b0;
  assign N92 = i2[92];
  assign o[93] = (N93)? i1[93] : 
                 (N221)? i0[93] : 1'b0;
  assign N93 = i2[93];
  assign o[94] = (N94)? i1[94] : 
                 (N222)? i0[94] : 1'b0;
  assign N94 = i2[94];
  assign o[95] = (N95)? i1[95] : 
                 (N223)? i0[95] : 1'b0;
  assign N95 = i2[95];
  assign o[96] = (N96)? i1[96] : 
                 (N224)? i0[96] : 1'b0;
  assign N96 = i2[96];
  assign o[97] = (N97)? i1[97] : 
                 (N225)? i0[97] : 1'b0;
  assign N97 = i2[97];
  assign o[98] = (N98)? i1[98] : 
                 (N226)? i0[98] : 1'b0;
  assign N98 = i2[98];
  assign o[99] = (N99)? i1[99] : 
                 (N227)? i0[99] : 1'b0;
  assign N99 = i2[99];
  assign o[100] = (N100)? i1[100] : 
                  (N228)? i0[100] : 1'b0;
  assign N100 = i2[100];
  assign o[101] = (N101)? i1[101] : 
                  (N229)? i0[101] : 1'b0;
  assign N101 = i2[101];
  assign o[102] = (N102)? i1[102] : 
                  (N230)? i0[102] : 1'b0;
  assign N102 = i2[102];
  assign o[103] = (N103)? i1[103] : 
                  (N231)? i0[103] : 1'b0;
  assign N103 = i2[103];
  assign o[104] = (N104)? i1[104] : 
                  (N232)? i0[104] : 1'b0;
  assign N104 = i2[104];
  assign o[105] = (N105)? i1[105] : 
                  (N233)? i0[105] : 1'b0;
  assign N105 = i2[105];
  assign o[106] = (N106)? i1[106] : 
                  (N234)? i0[106] : 1'b0;
  assign N106 = i2[106];
  assign o[107] = (N107)? i1[107] : 
                  (N235)? i0[107] : 1'b0;
  assign N107 = i2[107];
  assign o[108] = (N108)? i1[108] : 
                  (N236)? i0[108] : 1'b0;
  assign N108 = i2[108];
  assign o[109] = (N109)? i1[109] : 
                  (N237)? i0[109] : 1'b0;
  assign N109 = i2[109];
  assign o[110] = (N110)? i1[110] : 
                  (N238)? i0[110] : 1'b0;
  assign N110 = i2[110];
  assign o[111] = (N111)? i1[111] : 
                  (N239)? i0[111] : 1'b0;
  assign N111 = i2[111];
  assign o[112] = (N112)? i1[112] : 
                  (N240)? i0[112] : 1'b0;
  assign N112 = i2[112];
  assign o[113] = (N113)? i1[113] : 
                  (N241)? i0[113] : 1'b0;
  assign N113 = i2[113];
  assign o[114] = (N114)? i1[114] : 
                  (N242)? i0[114] : 1'b0;
  assign N114 = i2[114];
  assign o[115] = (N115)? i1[115] : 
                  (N243)? i0[115] : 1'b0;
  assign N115 = i2[115];
  assign o[116] = (N116)? i1[116] : 
                  (N244)? i0[116] : 1'b0;
  assign N116 = i2[116];
  assign o[117] = (N117)? i1[117] : 
                  (N245)? i0[117] : 1'b0;
  assign N117 = i2[117];
  assign o[118] = (N118)? i1[118] : 
                  (N246)? i0[118] : 1'b0;
  assign N118 = i2[118];
  assign o[119] = (N119)? i1[119] : 
                  (N247)? i0[119] : 1'b0;
  assign N119 = i2[119];
  assign o[120] = (N120)? i1[120] : 
                  (N248)? i0[120] : 1'b0;
  assign N120 = i2[120];
  assign o[121] = (N121)? i1[121] : 
                  (N249)? i0[121] : 1'b0;
  assign N121 = i2[121];
  assign o[122] = (N122)? i1[122] : 
                  (N250)? i0[122] : 1'b0;
  assign N122 = i2[122];
  assign o[123] = (N123)? i1[123] : 
                  (N251)? i0[123] : 1'b0;
  assign N123 = i2[123];
  assign o[124] = (N124)? i1[124] : 
                  (N252)? i0[124] : 1'b0;
  assign N124 = i2[124];
  assign o[125] = (N125)? i1[125] : 
                  (N253)? i0[125] : 1'b0;
  assign N125 = i2[125];
  assign o[126] = (N126)? i1[126] : 
                  (N254)? i0[126] : 1'b0;
  assign N126 = i2[126];
  assign o[127] = (N127)? i1[127] : 
                  (N255)? i0[127] : 1'b0;
  assign N127 = i2[127];
  assign N128 = ~i2[0];
  assign N129 = ~i2[1];
  assign N130 = ~i2[2];
  assign N131 = ~i2[3];
  assign N132 = ~i2[4];
  assign N133 = ~i2[5];
  assign N134 = ~i2[6];
  assign N135 = ~i2[7];
  assign N136 = ~i2[8];
  assign N137 = ~i2[9];
  assign N138 = ~i2[10];
  assign N139 = ~i2[11];
  assign N140 = ~i2[12];
  assign N141 = ~i2[13];
  assign N142 = ~i2[14];
  assign N143 = ~i2[15];
  assign N144 = ~i2[16];
  assign N145 = ~i2[17];
  assign N146 = ~i2[18];
  assign N147 = ~i2[19];
  assign N148 = ~i2[20];
  assign N149 = ~i2[21];
  assign N150 = ~i2[22];
  assign N151 = ~i2[23];
  assign N152 = ~i2[24];
  assign N153 = ~i2[25];
  assign N154 = ~i2[26];
  assign N155 = ~i2[27];
  assign N156 = ~i2[28];
  assign N157 = ~i2[29];
  assign N158 = ~i2[30];
  assign N159 = ~i2[31];
  assign N160 = ~i2[32];
  assign N161 = ~i2[33];
  assign N162 = ~i2[34];
  assign N163 = ~i2[35];
  assign N164 = ~i2[36];
  assign N165 = ~i2[37];
  assign N166 = ~i2[38];
  assign N167 = ~i2[39];
  assign N168 = ~i2[40];
  assign N169 = ~i2[41];
  assign N170 = ~i2[42];
  assign N171 = ~i2[43];
  assign N172 = ~i2[44];
  assign N173 = ~i2[45];
  assign N174 = ~i2[46];
  assign N175 = ~i2[47];
  assign N176 = ~i2[48];
  assign N177 = ~i2[49];
  assign N178 = ~i2[50];
  assign N179 = ~i2[51];
  assign N180 = ~i2[52];
  assign N181 = ~i2[53];
  assign N182 = ~i2[54];
  assign N183 = ~i2[55];
  assign N184 = ~i2[56];
  assign N185 = ~i2[57];
  assign N186 = ~i2[58];
  assign N187 = ~i2[59];
  assign N188 = ~i2[60];
  assign N189 = ~i2[61];
  assign N190 = ~i2[62];
  assign N191 = ~i2[63];
  assign N192 = ~i2[64];
  assign N193 = ~i2[65];
  assign N194 = ~i2[66];
  assign N195 = ~i2[67];
  assign N196 = ~i2[68];
  assign N197 = ~i2[69];
  assign N198 = ~i2[70];
  assign N199 = ~i2[71];
  assign N200 = ~i2[72];
  assign N201 = ~i2[73];
  assign N202 = ~i2[74];
  assign N203 = ~i2[75];
  assign N204 = ~i2[76];
  assign N205 = ~i2[77];
  assign N206 = ~i2[78];
  assign N207 = ~i2[79];
  assign N208 = ~i2[80];
  assign N209 = ~i2[81];
  assign N210 = ~i2[82];
  assign N211 = ~i2[83];
  assign N212 = ~i2[84];
  assign N213 = ~i2[85];
  assign N214 = ~i2[86];
  assign N215 = ~i2[87];
  assign N216 = ~i2[88];
  assign N217 = ~i2[89];
  assign N218 = ~i2[90];
  assign N219 = ~i2[91];
  assign N220 = ~i2[92];
  assign N221 = ~i2[93];
  assign N222 = ~i2[94];
  assign N223 = ~i2[95];
  assign N224 = ~i2[96];
  assign N225 = ~i2[97];
  assign N226 = ~i2[98];
  assign N227 = ~i2[99];
  assign N228 = ~i2[100];
  assign N229 = ~i2[101];
  assign N230 = ~i2[102];
  assign N231 = ~i2[103];
  assign N232 = ~i2[104];
  assign N233 = ~i2[105];
  assign N234 = ~i2[106];
  assign N235 = ~i2[107];
  assign N236 = ~i2[108];
  assign N237 = ~i2[109];
  assign N238 = ~i2[110];
  assign N239 = ~i2[111];
  assign N240 = ~i2[112];
  assign N241 = ~i2[113];
  assign N242 = ~i2[114];
  assign N243 = ~i2[115];
  assign N244 = ~i2[116];
  assign N245 = ~i2[117];
  assign N246 = ~i2[118];
  assign N247 = ~i2[119];
  assign N248 = ~i2[120];
  assign N249 = ~i2[121];
  assign N250 = ~i2[122];
  assign N251 = ~i2[123];
  assign N252 = ~i2[124];
  assign N253 = ~i2[125];
  assign N254 = ~i2[126];
  assign N255 = ~i2[127];

endmodule

