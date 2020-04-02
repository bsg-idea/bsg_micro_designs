

module top
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [127:0] data0_i;
  input [127:0] data1_i;
  input [127:0] sel_i;
  output [127:0] data_o;

  bsg_mux_bitwise
  wrapper
  (
    .data0_i(data0_i),
    .data1_i(data1_i),
    .sel_i(sel_i),
    .data_o(data_o)
  );


endmodule



module bsg_mux_segmented_segments_p128_segment_width_p1
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [127:0] data0_i;
  input [127:0] data1_i;
  input [127:0] sel_i;
  output [127:0] data_o;
  wire [127:0] data_o;
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
  assign data_o[0] = (N0)? data1_i[0] : 
                     (N128)? data0_i[0] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[1] = (N1)? data1_i[1] : 
                     (N129)? data0_i[1] : 1'b0;
  assign N1 = sel_i[1];
  assign data_o[2] = (N2)? data1_i[2] : 
                     (N130)? data0_i[2] : 1'b0;
  assign N2 = sel_i[2];
  assign data_o[3] = (N3)? data1_i[3] : 
                     (N131)? data0_i[3] : 1'b0;
  assign N3 = sel_i[3];
  assign data_o[4] = (N4)? data1_i[4] : 
                     (N132)? data0_i[4] : 1'b0;
  assign N4 = sel_i[4];
  assign data_o[5] = (N5)? data1_i[5] : 
                     (N133)? data0_i[5] : 1'b0;
  assign N5 = sel_i[5];
  assign data_o[6] = (N6)? data1_i[6] : 
                     (N134)? data0_i[6] : 1'b0;
  assign N6 = sel_i[6];
  assign data_o[7] = (N7)? data1_i[7] : 
                     (N135)? data0_i[7] : 1'b0;
  assign N7 = sel_i[7];
  assign data_o[8] = (N8)? data1_i[8] : 
                     (N136)? data0_i[8] : 1'b0;
  assign N8 = sel_i[8];
  assign data_o[9] = (N9)? data1_i[9] : 
                     (N137)? data0_i[9] : 1'b0;
  assign N9 = sel_i[9];
  assign data_o[10] = (N10)? data1_i[10] : 
                      (N138)? data0_i[10] : 1'b0;
  assign N10 = sel_i[10];
  assign data_o[11] = (N11)? data1_i[11] : 
                      (N139)? data0_i[11] : 1'b0;
  assign N11 = sel_i[11];
  assign data_o[12] = (N12)? data1_i[12] : 
                      (N140)? data0_i[12] : 1'b0;
  assign N12 = sel_i[12];
  assign data_o[13] = (N13)? data1_i[13] : 
                      (N141)? data0_i[13] : 1'b0;
  assign N13 = sel_i[13];
  assign data_o[14] = (N14)? data1_i[14] : 
                      (N142)? data0_i[14] : 1'b0;
  assign N14 = sel_i[14];
  assign data_o[15] = (N15)? data1_i[15] : 
                      (N143)? data0_i[15] : 1'b0;
  assign N15 = sel_i[15];
  assign data_o[16] = (N16)? data1_i[16] : 
                      (N144)? data0_i[16] : 1'b0;
  assign N16 = sel_i[16];
  assign data_o[17] = (N17)? data1_i[17] : 
                      (N145)? data0_i[17] : 1'b0;
  assign N17 = sel_i[17];
  assign data_o[18] = (N18)? data1_i[18] : 
                      (N146)? data0_i[18] : 1'b0;
  assign N18 = sel_i[18];
  assign data_o[19] = (N19)? data1_i[19] : 
                      (N147)? data0_i[19] : 1'b0;
  assign N19 = sel_i[19];
  assign data_o[20] = (N20)? data1_i[20] : 
                      (N148)? data0_i[20] : 1'b0;
  assign N20 = sel_i[20];
  assign data_o[21] = (N21)? data1_i[21] : 
                      (N149)? data0_i[21] : 1'b0;
  assign N21 = sel_i[21];
  assign data_o[22] = (N22)? data1_i[22] : 
                      (N150)? data0_i[22] : 1'b0;
  assign N22 = sel_i[22];
  assign data_o[23] = (N23)? data1_i[23] : 
                      (N151)? data0_i[23] : 1'b0;
  assign N23 = sel_i[23];
  assign data_o[24] = (N24)? data1_i[24] : 
                      (N152)? data0_i[24] : 1'b0;
  assign N24 = sel_i[24];
  assign data_o[25] = (N25)? data1_i[25] : 
                      (N153)? data0_i[25] : 1'b0;
  assign N25 = sel_i[25];
  assign data_o[26] = (N26)? data1_i[26] : 
                      (N154)? data0_i[26] : 1'b0;
  assign N26 = sel_i[26];
  assign data_o[27] = (N27)? data1_i[27] : 
                      (N155)? data0_i[27] : 1'b0;
  assign N27 = sel_i[27];
  assign data_o[28] = (N28)? data1_i[28] : 
                      (N156)? data0_i[28] : 1'b0;
  assign N28 = sel_i[28];
  assign data_o[29] = (N29)? data1_i[29] : 
                      (N157)? data0_i[29] : 1'b0;
  assign N29 = sel_i[29];
  assign data_o[30] = (N30)? data1_i[30] : 
                      (N158)? data0_i[30] : 1'b0;
  assign N30 = sel_i[30];
  assign data_o[31] = (N31)? data1_i[31] : 
                      (N159)? data0_i[31] : 1'b0;
  assign N31 = sel_i[31];
  assign data_o[32] = (N32)? data1_i[32] : 
                      (N160)? data0_i[32] : 1'b0;
  assign N32 = sel_i[32];
  assign data_o[33] = (N33)? data1_i[33] : 
                      (N161)? data0_i[33] : 1'b0;
  assign N33 = sel_i[33];
  assign data_o[34] = (N34)? data1_i[34] : 
                      (N162)? data0_i[34] : 1'b0;
  assign N34 = sel_i[34];
  assign data_o[35] = (N35)? data1_i[35] : 
                      (N163)? data0_i[35] : 1'b0;
  assign N35 = sel_i[35];
  assign data_o[36] = (N36)? data1_i[36] : 
                      (N164)? data0_i[36] : 1'b0;
  assign N36 = sel_i[36];
  assign data_o[37] = (N37)? data1_i[37] : 
                      (N165)? data0_i[37] : 1'b0;
  assign N37 = sel_i[37];
  assign data_o[38] = (N38)? data1_i[38] : 
                      (N166)? data0_i[38] : 1'b0;
  assign N38 = sel_i[38];
  assign data_o[39] = (N39)? data1_i[39] : 
                      (N167)? data0_i[39] : 1'b0;
  assign N39 = sel_i[39];
  assign data_o[40] = (N40)? data1_i[40] : 
                      (N168)? data0_i[40] : 1'b0;
  assign N40 = sel_i[40];
  assign data_o[41] = (N41)? data1_i[41] : 
                      (N169)? data0_i[41] : 1'b0;
  assign N41 = sel_i[41];
  assign data_o[42] = (N42)? data1_i[42] : 
                      (N170)? data0_i[42] : 1'b0;
  assign N42 = sel_i[42];
  assign data_o[43] = (N43)? data1_i[43] : 
                      (N171)? data0_i[43] : 1'b0;
  assign N43 = sel_i[43];
  assign data_o[44] = (N44)? data1_i[44] : 
                      (N172)? data0_i[44] : 1'b0;
  assign N44 = sel_i[44];
  assign data_o[45] = (N45)? data1_i[45] : 
                      (N173)? data0_i[45] : 1'b0;
  assign N45 = sel_i[45];
  assign data_o[46] = (N46)? data1_i[46] : 
                      (N174)? data0_i[46] : 1'b0;
  assign N46 = sel_i[46];
  assign data_o[47] = (N47)? data1_i[47] : 
                      (N175)? data0_i[47] : 1'b0;
  assign N47 = sel_i[47];
  assign data_o[48] = (N48)? data1_i[48] : 
                      (N176)? data0_i[48] : 1'b0;
  assign N48 = sel_i[48];
  assign data_o[49] = (N49)? data1_i[49] : 
                      (N177)? data0_i[49] : 1'b0;
  assign N49 = sel_i[49];
  assign data_o[50] = (N50)? data1_i[50] : 
                      (N178)? data0_i[50] : 1'b0;
  assign N50 = sel_i[50];
  assign data_o[51] = (N51)? data1_i[51] : 
                      (N179)? data0_i[51] : 1'b0;
  assign N51 = sel_i[51];
  assign data_o[52] = (N52)? data1_i[52] : 
                      (N180)? data0_i[52] : 1'b0;
  assign N52 = sel_i[52];
  assign data_o[53] = (N53)? data1_i[53] : 
                      (N181)? data0_i[53] : 1'b0;
  assign N53 = sel_i[53];
  assign data_o[54] = (N54)? data1_i[54] : 
                      (N182)? data0_i[54] : 1'b0;
  assign N54 = sel_i[54];
  assign data_o[55] = (N55)? data1_i[55] : 
                      (N183)? data0_i[55] : 1'b0;
  assign N55 = sel_i[55];
  assign data_o[56] = (N56)? data1_i[56] : 
                      (N184)? data0_i[56] : 1'b0;
  assign N56 = sel_i[56];
  assign data_o[57] = (N57)? data1_i[57] : 
                      (N185)? data0_i[57] : 1'b0;
  assign N57 = sel_i[57];
  assign data_o[58] = (N58)? data1_i[58] : 
                      (N186)? data0_i[58] : 1'b0;
  assign N58 = sel_i[58];
  assign data_o[59] = (N59)? data1_i[59] : 
                      (N187)? data0_i[59] : 1'b0;
  assign N59 = sel_i[59];
  assign data_o[60] = (N60)? data1_i[60] : 
                      (N188)? data0_i[60] : 1'b0;
  assign N60 = sel_i[60];
  assign data_o[61] = (N61)? data1_i[61] : 
                      (N189)? data0_i[61] : 1'b0;
  assign N61 = sel_i[61];
  assign data_o[62] = (N62)? data1_i[62] : 
                      (N190)? data0_i[62] : 1'b0;
  assign N62 = sel_i[62];
  assign data_o[63] = (N63)? data1_i[63] : 
                      (N191)? data0_i[63] : 1'b0;
  assign N63 = sel_i[63];
  assign data_o[64] = (N64)? data1_i[64] : 
                      (N192)? data0_i[64] : 1'b0;
  assign N64 = sel_i[64];
  assign data_o[65] = (N65)? data1_i[65] : 
                      (N193)? data0_i[65] : 1'b0;
  assign N65 = sel_i[65];
  assign data_o[66] = (N66)? data1_i[66] : 
                      (N194)? data0_i[66] : 1'b0;
  assign N66 = sel_i[66];
  assign data_o[67] = (N67)? data1_i[67] : 
                      (N195)? data0_i[67] : 1'b0;
  assign N67 = sel_i[67];
  assign data_o[68] = (N68)? data1_i[68] : 
                      (N196)? data0_i[68] : 1'b0;
  assign N68 = sel_i[68];
  assign data_o[69] = (N69)? data1_i[69] : 
                      (N197)? data0_i[69] : 1'b0;
  assign N69 = sel_i[69];
  assign data_o[70] = (N70)? data1_i[70] : 
                      (N198)? data0_i[70] : 1'b0;
  assign N70 = sel_i[70];
  assign data_o[71] = (N71)? data1_i[71] : 
                      (N199)? data0_i[71] : 1'b0;
  assign N71 = sel_i[71];
  assign data_o[72] = (N72)? data1_i[72] : 
                      (N200)? data0_i[72] : 1'b0;
  assign N72 = sel_i[72];
  assign data_o[73] = (N73)? data1_i[73] : 
                      (N201)? data0_i[73] : 1'b0;
  assign N73 = sel_i[73];
  assign data_o[74] = (N74)? data1_i[74] : 
                      (N202)? data0_i[74] : 1'b0;
  assign N74 = sel_i[74];
  assign data_o[75] = (N75)? data1_i[75] : 
                      (N203)? data0_i[75] : 1'b0;
  assign N75 = sel_i[75];
  assign data_o[76] = (N76)? data1_i[76] : 
                      (N204)? data0_i[76] : 1'b0;
  assign N76 = sel_i[76];
  assign data_o[77] = (N77)? data1_i[77] : 
                      (N205)? data0_i[77] : 1'b0;
  assign N77 = sel_i[77];
  assign data_o[78] = (N78)? data1_i[78] : 
                      (N206)? data0_i[78] : 1'b0;
  assign N78 = sel_i[78];
  assign data_o[79] = (N79)? data1_i[79] : 
                      (N207)? data0_i[79] : 1'b0;
  assign N79 = sel_i[79];
  assign data_o[80] = (N80)? data1_i[80] : 
                      (N208)? data0_i[80] : 1'b0;
  assign N80 = sel_i[80];
  assign data_o[81] = (N81)? data1_i[81] : 
                      (N209)? data0_i[81] : 1'b0;
  assign N81 = sel_i[81];
  assign data_o[82] = (N82)? data1_i[82] : 
                      (N210)? data0_i[82] : 1'b0;
  assign N82 = sel_i[82];
  assign data_o[83] = (N83)? data1_i[83] : 
                      (N211)? data0_i[83] : 1'b0;
  assign N83 = sel_i[83];
  assign data_o[84] = (N84)? data1_i[84] : 
                      (N212)? data0_i[84] : 1'b0;
  assign N84 = sel_i[84];
  assign data_o[85] = (N85)? data1_i[85] : 
                      (N213)? data0_i[85] : 1'b0;
  assign N85 = sel_i[85];
  assign data_o[86] = (N86)? data1_i[86] : 
                      (N214)? data0_i[86] : 1'b0;
  assign N86 = sel_i[86];
  assign data_o[87] = (N87)? data1_i[87] : 
                      (N215)? data0_i[87] : 1'b0;
  assign N87 = sel_i[87];
  assign data_o[88] = (N88)? data1_i[88] : 
                      (N216)? data0_i[88] : 1'b0;
  assign N88 = sel_i[88];
  assign data_o[89] = (N89)? data1_i[89] : 
                      (N217)? data0_i[89] : 1'b0;
  assign N89 = sel_i[89];
  assign data_o[90] = (N90)? data1_i[90] : 
                      (N218)? data0_i[90] : 1'b0;
  assign N90 = sel_i[90];
  assign data_o[91] = (N91)? data1_i[91] : 
                      (N219)? data0_i[91] : 1'b0;
  assign N91 = sel_i[91];
  assign data_o[92] = (N92)? data1_i[92] : 
                      (N220)? data0_i[92] : 1'b0;
  assign N92 = sel_i[92];
  assign data_o[93] = (N93)? data1_i[93] : 
                      (N221)? data0_i[93] : 1'b0;
  assign N93 = sel_i[93];
  assign data_o[94] = (N94)? data1_i[94] : 
                      (N222)? data0_i[94] : 1'b0;
  assign N94 = sel_i[94];
  assign data_o[95] = (N95)? data1_i[95] : 
                      (N223)? data0_i[95] : 1'b0;
  assign N95 = sel_i[95];
  assign data_o[96] = (N96)? data1_i[96] : 
                      (N224)? data0_i[96] : 1'b0;
  assign N96 = sel_i[96];
  assign data_o[97] = (N97)? data1_i[97] : 
                      (N225)? data0_i[97] : 1'b0;
  assign N97 = sel_i[97];
  assign data_o[98] = (N98)? data1_i[98] : 
                      (N226)? data0_i[98] : 1'b0;
  assign N98 = sel_i[98];
  assign data_o[99] = (N99)? data1_i[99] : 
                      (N227)? data0_i[99] : 1'b0;
  assign N99 = sel_i[99];
  assign data_o[100] = (N100)? data1_i[100] : 
                       (N228)? data0_i[100] : 1'b0;
  assign N100 = sel_i[100];
  assign data_o[101] = (N101)? data1_i[101] : 
                       (N229)? data0_i[101] : 1'b0;
  assign N101 = sel_i[101];
  assign data_o[102] = (N102)? data1_i[102] : 
                       (N230)? data0_i[102] : 1'b0;
  assign N102 = sel_i[102];
  assign data_o[103] = (N103)? data1_i[103] : 
                       (N231)? data0_i[103] : 1'b0;
  assign N103 = sel_i[103];
  assign data_o[104] = (N104)? data1_i[104] : 
                       (N232)? data0_i[104] : 1'b0;
  assign N104 = sel_i[104];
  assign data_o[105] = (N105)? data1_i[105] : 
                       (N233)? data0_i[105] : 1'b0;
  assign N105 = sel_i[105];
  assign data_o[106] = (N106)? data1_i[106] : 
                       (N234)? data0_i[106] : 1'b0;
  assign N106 = sel_i[106];
  assign data_o[107] = (N107)? data1_i[107] : 
                       (N235)? data0_i[107] : 1'b0;
  assign N107 = sel_i[107];
  assign data_o[108] = (N108)? data1_i[108] : 
                       (N236)? data0_i[108] : 1'b0;
  assign N108 = sel_i[108];
  assign data_o[109] = (N109)? data1_i[109] : 
                       (N237)? data0_i[109] : 1'b0;
  assign N109 = sel_i[109];
  assign data_o[110] = (N110)? data1_i[110] : 
                       (N238)? data0_i[110] : 1'b0;
  assign N110 = sel_i[110];
  assign data_o[111] = (N111)? data1_i[111] : 
                       (N239)? data0_i[111] : 1'b0;
  assign N111 = sel_i[111];
  assign data_o[112] = (N112)? data1_i[112] : 
                       (N240)? data0_i[112] : 1'b0;
  assign N112 = sel_i[112];
  assign data_o[113] = (N113)? data1_i[113] : 
                       (N241)? data0_i[113] : 1'b0;
  assign N113 = sel_i[113];
  assign data_o[114] = (N114)? data1_i[114] : 
                       (N242)? data0_i[114] : 1'b0;
  assign N114 = sel_i[114];
  assign data_o[115] = (N115)? data1_i[115] : 
                       (N243)? data0_i[115] : 1'b0;
  assign N115 = sel_i[115];
  assign data_o[116] = (N116)? data1_i[116] : 
                       (N244)? data0_i[116] : 1'b0;
  assign N116 = sel_i[116];
  assign data_o[117] = (N117)? data1_i[117] : 
                       (N245)? data0_i[117] : 1'b0;
  assign N117 = sel_i[117];
  assign data_o[118] = (N118)? data1_i[118] : 
                       (N246)? data0_i[118] : 1'b0;
  assign N118 = sel_i[118];
  assign data_o[119] = (N119)? data1_i[119] : 
                       (N247)? data0_i[119] : 1'b0;
  assign N119 = sel_i[119];
  assign data_o[120] = (N120)? data1_i[120] : 
                       (N248)? data0_i[120] : 1'b0;
  assign N120 = sel_i[120];
  assign data_o[121] = (N121)? data1_i[121] : 
                       (N249)? data0_i[121] : 1'b0;
  assign N121 = sel_i[121];
  assign data_o[122] = (N122)? data1_i[122] : 
                       (N250)? data0_i[122] : 1'b0;
  assign N122 = sel_i[122];
  assign data_o[123] = (N123)? data1_i[123] : 
                       (N251)? data0_i[123] : 1'b0;
  assign N123 = sel_i[123];
  assign data_o[124] = (N124)? data1_i[124] : 
                       (N252)? data0_i[124] : 1'b0;
  assign N124 = sel_i[124];
  assign data_o[125] = (N125)? data1_i[125] : 
                       (N253)? data0_i[125] : 1'b0;
  assign N125 = sel_i[125];
  assign data_o[126] = (N126)? data1_i[126] : 
                       (N254)? data0_i[126] : 1'b0;
  assign N126 = sel_i[126];
  assign data_o[127] = (N127)? data1_i[127] : 
                       (N255)? data0_i[127] : 1'b0;
  assign N127 = sel_i[127];
  assign N128 = ~sel_i[0];
  assign N129 = ~sel_i[1];
  assign N130 = ~sel_i[2];
  assign N131 = ~sel_i[3];
  assign N132 = ~sel_i[4];
  assign N133 = ~sel_i[5];
  assign N134 = ~sel_i[6];
  assign N135 = ~sel_i[7];
  assign N136 = ~sel_i[8];
  assign N137 = ~sel_i[9];
  assign N138 = ~sel_i[10];
  assign N139 = ~sel_i[11];
  assign N140 = ~sel_i[12];
  assign N141 = ~sel_i[13];
  assign N142 = ~sel_i[14];
  assign N143 = ~sel_i[15];
  assign N144 = ~sel_i[16];
  assign N145 = ~sel_i[17];
  assign N146 = ~sel_i[18];
  assign N147 = ~sel_i[19];
  assign N148 = ~sel_i[20];
  assign N149 = ~sel_i[21];
  assign N150 = ~sel_i[22];
  assign N151 = ~sel_i[23];
  assign N152 = ~sel_i[24];
  assign N153 = ~sel_i[25];
  assign N154 = ~sel_i[26];
  assign N155 = ~sel_i[27];
  assign N156 = ~sel_i[28];
  assign N157 = ~sel_i[29];
  assign N158 = ~sel_i[30];
  assign N159 = ~sel_i[31];
  assign N160 = ~sel_i[32];
  assign N161 = ~sel_i[33];
  assign N162 = ~sel_i[34];
  assign N163 = ~sel_i[35];
  assign N164 = ~sel_i[36];
  assign N165 = ~sel_i[37];
  assign N166 = ~sel_i[38];
  assign N167 = ~sel_i[39];
  assign N168 = ~sel_i[40];
  assign N169 = ~sel_i[41];
  assign N170 = ~sel_i[42];
  assign N171 = ~sel_i[43];
  assign N172 = ~sel_i[44];
  assign N173 = ~sel_i[45];
  assign N174 = ~sel_i[46];
  assign N175 = ~sel_i[47];
  assign N176 = ~sel_i[48];
  assign N177 = ~sel_i[49];
  assign N178 = ~sel_i[50];
  assign N179 = ~sel_i[51];
  assign N180 = ~sel_i[52];
  assign N181 = ~sel_i[53];
  assign N182 = ~sel_i[54];
  assign N183 = ~sel_i[55];
  assign N184 = ~sel_i[56];
  assign N185 = ~sel_i[57];
  assign N186 = ~sel_i[58];
  assign N187 = ~sel_i[59];
  assign N188 = ~sel_i[60];
  assign N189 = ~sel_i[61];
  assign N190 = ~sel_i[62];
  assign N191 = ~sel_i[63];
  assign N192 = ~sel_i[64];
  assign N193 = ~sel_i[65];
  assign N194 = ~sel_i[66];
  assign N195 = ~sel_i[67];
  assign N196 = ~sel_i[68];
  assign N197 = ~sel_i[69];
  assign N198 = ~sel_i[70];
  assign N199 = ~sel_i[71];
  assign N200 = ~sel_i[72];
  assign N201 = ~sel_i[73];
  assign N202 = ~sel_i[74];
  assign N203 = ~sel_i[75];
  assign N204 = ~sel_i[76];
  assign N205 = ~sel_i[77];
  assign N206 = ~sel_i[78];
  assign N207 = ~sel_i[79];
  assign N208 = ~sel_i[80];
  assign N209 = ~sel_i[81];
  assign N210 = ~sel_i[82];
  assign N211 = ~sel_i[83];
  assign N212 = ~sel_i[84];
  assign N213 = ~sel_i[85];
  assign N214 = ~sel_i[86];
  assign N215 = ~sel_i[87];
  assign N216 = ~sel_i[88];
  assign N217 = ~sel_i[89];
  assign N218 = ~sel_i[90];
  assign N219 = ~sel_i[91];
  assign N220 = ~sel_i[92];
  assign N221 = ~sel_i[93];
  assign N222 = ~sel_i[94];
  assign N223 = ~sel_i[95];
  assign N224 = ~sel_i[96];
  assign N225 = ~sel_i[97];
  assign N226 = ~sel_i[98];
  assign N227 = ~sel_i[99];
  assign N228 = ~sel_i[100];
  assign N229 = ~sel_i[101];
  assign N230 = ~sel_i[102];
  assign N231 = ~sel_i[103];
  assign N232 = ~sel_i[104];
  assign N233 = ~sel_i[105];
  assign N234 = ~sel_i[106];
  assign N235 = ~sel_i[107];
  assign N236 = ~sel_i[108];
  assign N237 = ~sel_i[109];
  assign N238 = ~sel_i[110];
  assign N239 = ~sel_i[111];
  assign N240 = ~sel_i[112];
  assign N241 = ~sel_i[113];
  assign N242 = ~sel_i[114];
  assign N243 = ~sel_i[115];
  assign N244 = ~sel_i[116];
  assign N245 = ~sel_i[117];
  assign N246 = ~sel_i[118];
  assign N247 = ~sel_i[119];
  assign N248 = ~sel_i[120];
  assign N249 = ~sel_i[121];
  assign N250 = ~sel_i[122];
  assign N251 = ~sel_i[123];
  assign N252 = ~sel_i[124];
  assign N253 = ~sel_i[125];
  assign N254 = ~sel_i[126];
  assign N255 = ~sel_i[127];

endmodule



module bsg_mux_bitwise
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [127:0] data0_i;
  input [127:0] data1_i;
  input [127:0] sel_i;
  output [127:0] data_o;
  wire [127:0] data_o;

  bsg_mux_segmented_segments_p128_segment_width_p1
  mux_segmented
  (
    .data0_i(data0_i),
    .data1_i(data1_i),
    .sel_i(sel_i),
    .data_o(data_o)
  );


endmodule

