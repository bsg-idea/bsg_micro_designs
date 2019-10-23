

module top
(
  clk_i,
  reset_i,
  val_i,
  clk_r_o
);

  input [127:0] val_i;
  input clk_i;
  input reset_i;
  output clk_r_o;

  bsg_counter_clock_downsample
  wrapper
  (
    .val_i(val_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clk_r_o(clk_r_o)
  );


endmodule



module bsg_dff_width_p127_harden_p0_strength_p2
(
  clk_i,
  data_i,
  data_o
);

  input [126:0] data_i;
  output [126:0] data_o;
  input clk_i;
  reg [126:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[126:0] } <= { data_i[126:0] };
    end 
  end


endmodule



module bsg_xnor_width_p128_harden_p1
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
  assign N0 = a_i[127] ^ b_i[127];
  assign o[126] = ~N1;
  assign N1 = a_i[126] ^ b_i[126];
  assign o[125] = ~N2;
  assign N2 = a_i[125] ^ b_i[125];
  assign o[124] = ~N3;
  assign N3 = a_i[124] ^ b_i[124];
  assign o[123] = ~N4;
  assign N4 = a_i[123] ^ b_i[123];
  assign o[122] = ~N5;
  assign N5 = a_i[122] ^ b_i[122];
  assign o[121] = ~N6;
  assign N6 = a_i[121] ^ b_i[121];
  assign o[120] = ~N7;
  assign N7 = a_i[120] ^ b_i[120];
  assign o[119] = ~N8;
  assign N8 = a_i[119] ^ b_i[119];
  assign o[118] = ~N9;
  assign N9 = a_i[118] ^ b_i[118];
  assign o[117] = ~N10;
  assign N10 = a_i[117] ^ b_i[117];
  assign o[116] = ~N11;
  assign N11 = a_i[116] ^ b_i[116];
  assign o[115] = ~N12;
  assign N12 = a_i[115] ^ b_i[115];
  assign o[114] = ~N13;
  assign N13 = a_i[114] ^ b_i[114];
  assign o[113] = ~N14;
  assign N14 = a_i[113] ^ b_i[113];
  assign o[112] = ~N15;
  assign N15 = a_i[112] ^ b_i[112];
  assign o[111] = ~N16;
  assign N16 = a_i[111] ^ b_i[111];
  assign o[110] = ~N17;
  assign N17 = a_i[110] ^ b_i[110];
  assign o[109] = ~N18;
  assign N18 = a_i[109] ^ b_i[109];
  assign o[108] = ~N19;
  assign N19 = a_i[108] ^ b_i[108];
  assign o[107] = ~N20;
  assign N20 = a_i[107] ^ b_i[107];
  assign o[106] = ~N21;
  assign N21 = a_i[106] ^ b_i[106];
  assign o[105] = ~N22;
  assign N22 = a_i[105] ^ b_i[105];
  assign o[104] = ~N23;
  assign N23 = a_i[104] ^ b_i[104];
  assign o[103] = ~N24;
  assign N24 = a_i[103] ^ b_i[103];
  assign o[102] = ~N25;
  assign N25 = a_i[102] ^ b_i[102];
  assign o[101] = ~N26;
  assign N26 = a_i[101] ^ b_i[101];
  assign o[100] = ~N27;
  assign N27 = a_i[100] ^ b_i[100];
  assign o[99] = ~N28;
  assign N28 = a_i[99] ^ b_i[99];
  assign o[98] = ~N29;
  assign N29 = a_i[98] ^ b_i[98];
  assign o[97] = ~N30;
  assign N30 = a_i[97] ^ b_i[97];
  assign o[96] = ~N31;
  assign N31 = a_i[96] ^ b_i[96];
  assign o[95] = ~N32;
  assign N32 = a_i[95] ^ b_i[95];
  assign o[94] = ~N33;
  assign N33 = a_i[94] ^ b_i[94];
  assign o[93] = ~N34;
  assign N34 = a_i[93] ^ b_i[93];
  assign o[92] = ~N35;
  assign N35 = a_i[92] ^ b_i[92];
  assign o[91] = ~N36;
  assign N36 = a_i[91] ^ b_i[91];
  assign o[90] = ~N37;
  assign N37 = a_i[90] ^ b_i[90];
  assign o[89] = ~N38;
  assign N38 = a_i[89] ^ b_i[89];
  assign o[88] = ~N39;
  assign N39 = a_i[88] ^ b_i[88];
  assign o[87] = ~N40;
  assign N40 = a_i[87] ^ b_i[87];
  assign o[86] = ~N41;
  assign N41 = a_i[86] ^ b_i[86];
  assign o[85] = ~N42;
  assign N42 = a_i[85] ^ b_i[85];
  assign o[84] = ~N43;
  assign N43 = a_i[84] ^ b_i[84];
  assign o[83] = ~N44;
  assign N44 = a_i[83] ^ b_i[83];
  assign o[82] = ~N45;
  assign N45 = a_i[82] ^ b_i[82];
  assign o[81] = ~N46;
  assign N46 = a_i[81] ^ b_i[81];
  assign o[80] = ~N47;
  assign N47 = a_i[80] ^ b_i[80];
  assign o[79] = ~N48;
  assign N48 = a_i[79] ^ b_i[79];
  assign o[78] = ~N49;
  assign N49 = a_i[78] ^ b_i[78];
  assign o[77] = ~N50;
  assign N50 = a_i[77] ^ b_i[77];
  assign o[76] = ~N51;
  assign N51 = a_i[76] ^ b_i[76];
  assign o[75] = ~N52;
  assign N52 = a_i[75] ^ b_i[75];
  assign o[74] = ~N53;
  assign N53 = a_i[74] ^ b_i[74];
  assign o[73] = ~N54;
  assign N54 = a_i[73] ^ b_i[73];
  assign o[72] = ~N55;
  assign N55 = a_i[72] ^ b_i[72];
  assign o[71] = ~N56;
  assign N56 = a_i[71] ^ b_i[71];
  assign o[70] = ~N57;
  assign N57 = a_i[70] ^ b_i[70];
  assign o[69] = ~N58;
  assign N58 = a_i[69] ^ b_i[69];
  assign o[68] = ~N59;
  assign N59 = a_i[68] ^ b_i[68];
  assign o[67] = ~N60;
  assign N60 = a_i[67] ^ b_i[67];
  assign o[66] = ~N61;
  assign N61 = a_i[66] ^ b_i[66];
  assign o[65] = ~N62;
  assign N62 = a_i[65] ^ b_i[65];
  assign o[64] = ~N63;
  assign N63 = a_i[64] ^ b_i[64];
  assign o[63] = ~N64;
  assign N64 = a_i[63] ^ b_i[63];
  assign o[62] = ~N65;
  assign N65 = a_i[62] ^ b_i[62];
  assign o[61] = ~N66;
  assign N66 = a_i[61] ^ b_i[61];
  assign o[60] = ~N67;
  assign N67 = a_i[60] ^ b_i[60];
  assign o[59] = ~N68;
  assign N68 = a_i[59] ^ b_i[59];
  assign o[58] = ~N69;
  assign N69 = a_i[58] ^ b_i[58];
  assign o[57] = ~N70;
  assign N70 = a_i[57] ^ b_i[57];
  assign o[56] = ~N71;
  assign N71 = a_i[56] ^ b_i[56];
  assign o[55] = ~N72;
  assign N72 = a_i[55] ^ b_i[55];
  assign o[54] = ~N73;
  assign N73 = a_i[54] ^ b_i[54];
  assign o[53] = ~N74;
  assign N74 = a_i[53] ^ b_i[53];
  assign o[52] = ~N75;
  assign N75 = a_i[52] ^ b_i[52];
  assign o[51] = ~N76;
  assign N76 = a_i[51] ^ b_i[51];
  assign o[50] = ~N77;
  assign N77 = a_i[50] ^ b_i[50];
  assign o[49] = ~N78;
  assign N78 = a_i[49] ^ b_i[49];
  assign o[48] = ~N79;
  assign N79 = a_i[48] ^ b_i[48];
  assign o[47] = ~N80;
  assign N80 = a_i[47] ^ b_i[47];
  assign o[46] = ~N81;
  assign N81 = a_i[46] ^ b_i[46];
  assign o[45] = ~N82;
  assign N82 = a_i[45] ^ b_i[45];
  assign o[44] = ~N83;
  assign N83 = a_i[44] ^ b_i[44];
  assign o[43] = ~N84;
  assign N84 = a_i[43] ^ b_i[43];
  assign o[42] = ~N85;
  assign N85 = a_i[42] ^ b_i[42];
  assign o[41] = ~N86;
  assign N86 = a_i[41] ^ b_i[41];
  assign o[40] = ~N87;
  assign N87 = a_i[40] ^ b_i[40];
  assign o[39] = ~N88;
  assign N88 = a_i[39] ^ b_i[39];
  assign o[38] = ~N89;
  assign N89 = a_i[38] ^ b_i[38];
  assign o[37] = ~N90;
  assign N90 = a_i[37] ^ b_i[37];
  assign o[36] = ~N91;
  assign N91 = a_i[36] ^ b_i[36];
  assign o[35] = ~N92;
  assign N92 = a_i[35] ^ b_i[35];
  assign o[34] = ~N93;
  assign N93 = a_i[34] ^ b_i[34];
  assign o[33] = ~N94;
  assign N94 = a_i[33] ^ b_i[33];
  assign o[32] = ~N95;
  assign N95 = a_i[32] ^ b_i[32];
  assign o[31] = ~N96;
  assign N96 = a_i[31] ^ b_i[31];
  assign o[30] = ~N97;
  assign N97 = a_i[30] ^ b_i[30];
  assign o[29] = ~N98;
  assign N98 = a_i[29] ^ b_i[29];
  assign o[28] = ~N99;
  assign N99 = a_i[28] ^ b_i[28];
  assign o[27] = ~N100;
  assign N100 = a_i[27] ^ b_i[27];
  assign o[26] = ~N101;
  assign N101 = a_i[26] ^ b_i[26];
  assign o[25] = ~N102;
  assign N102 = a_i[25] ^ b_i[25];
  assign o[24] = ~N103;
  assign N103 = a_i[24] ^ b_i[24];
  assign o[23] = ~N104;
  assign N104 = a_i[23] ^ b_i[23];
  assign o[22] = ~N105;
  assign N105 = a_i[22] ^ b_i[22];
  assign o[21] = ~N106;
  assign N106 = a_i[21] ^ b_i[21];
  assign o[20] = ~N107;
  assign N107 = a_i[20] ^ b_i[20];
  assign o[19] = ~N108;
  assign N108 = a_i[19] ^ b_i[19];
  assign o[18] = ~N109;
  assign N109 = a_i[18] ^ b_i[18];
  assign o[17] = ~N110;
  assign N110 = a_i[17] ^ b_i[17];
  assign o[16] = ~N111;
  assign N111 = a_i[16] ^ b_i[16];
  assign o[15] = ~N112;
  assign N112 = a_i[15] ^ b_i[15];
  assign o[14] = ~N113;
  assign N113 = a_i[14] ^ b_i[14];
  assign o[13] = ~N114;
  assign N114 = a_i[13] ^ b_i[13];
  assign o[12] = ~N115;
  assign N115 = a_i[12] ^ b_i[12];
  assign o[11] = ~N116;
  assign N116 = a_i[11] ^ b_i[11];
  assign o[10] = ~N117;
  assign N117 = a_i[10] ^ b_i[10];
  assign o[9] = ~N118;
  assign N118 = a_i[9] ^ b_i[9];
  assign o[8] = ~N119;
  assign N119 = a_i[8] ^ b_i[8];
  assign o[7] = ~N120;
  assign N120 = a_i[7] ^ b_i[7];
  assign o[6] = ~N121;
  assign N121 = a_i[6] ^ b_i[6];
  assign o[5] = ~N122;
  assign N122 = a_i[5] ^ b_i[5];
  assign o[4] = ~N123;
  assign N123 = a_i[4] ^ b_i[4];
  assign o[3] = ~N124;
  assign N124 = a_i[3] ^ b_i[3];
  assign o[2] = ~N125;
  assign N125 = a_i[2] ^ b_i[2];
  assign o[1] = ~N126;
  assign N126 = a_i[1] ^ b_i[1];
  assign o[0] = ~N127;
  assign N127 = a_i[0] ^ b_i[0];

endmodule



module bsg_muxi2_gatestack_width_p128_harden_p1
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
  N246,N247,N248,N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,N260,N261,
  N262,N263,N264,N265,N266,N267,N268,N269,N270,N271,N272,N273,N274,N275,N276,N277,
  N278,N279,N280,N281,N282,N283,N284,N285,N286,N287,N288,N289,N290,N291,N292,N293,
  N294,N295,N296,N297,N298,N299,N300,N301,N302,N303,N304,N305,N306,N307,N308,N309,
  N310,N311,N312,N313,N314,N315,N316,N317,N318,N319,N320,N321,N322,N323,N324,N325,
  N326,N327,N328,N329,N330,N331,N332,N333,N334,N335,N336,N337,N338,N339,N340,N341,
  N342,N343,N344,N345,N346,N347,N348,N349,N350,N351,N352,N353,N354,N355,N356,N357,
  N358,N359,N360,N361,N362,N363,N364,N365,N366,N367,N368,N369,N370,N371,N372,N373,
  N374,N375,N376,N377,N378,N379,N380,N381,N382,N383;
  assign N129 = (N0)? i1[0] : 
                (N128)? i0[0] : 1'b0;
  assign N0 = i2[0];
  assign N131 = (N1)? i1[1] : 
                (N130)? i0[1] : 1'b0;
  assign N1 = i2[1];
  assign N133 = (N2)? i1[2] : 
                (N132)? i0[2] : 1'b0;
  assign N2 = i2[2];
  assign N135 = (N3)? i1[3] : 
                (N134)? i0[3] : 1'b0;
  assign N3 = i2[3];
  assign N137 = (N4)? i1[4] : 
                (N136)? i0[4] : 1'b0;
  assign N4 = i2[4];
  assign N139 = (N5)? i1[5] : 
                (N138)? i0[5] : 1'b0;
  assign N5 = i2[5];
  assign N141 = (N6)? i1[6] : 
                (N140)? i0[6] : 1'b0;
  assign N6 = i2[6];
  assign N143 = (N7)? i1[7] : 
                (N142)? i0[7] : 1'b0;
  assign N7 = i2[7];
  assign N145 = (N8)? i1[8] : 
                (N144)? i0[8] : 1'b0;
  assign N8 = i2[8];
  assign N147 = (N9)? i1[9] : 
                (N146)? i0[9] : 1'b0;
  assign N9 = i2[9];
  assign N149 = (N10)? i1[10] : 
                (N148)? i0[10] : 1'b0;
  assign N10 = i2[10];
  assign N151 = (N11)? i1[11] : 
                (N150)? i0[11] : 1'b0;
  assign N11 = i2[11];
  assign N153 = (N12)? i1[12] : 
                (N152)? i0[12] : 1'b0;
  assign N12 = i2[12];
  assign N155 = (N13)? i1[13] : 
                (N154)? i0[13] : 1'b0;
  assign N13 = i2[13];
  assign N157 = (N14)? i1[14] : 
                (N156)? i0[14] : 1'b0;
  assign N14 = i2[14];
  assign N159 = (N15)? i1[15] : 
                (N158)? i0[15] : 1'b0;
  assign N15 = i2[15];
  assign N161 = (N16)? i1[16] : 
                (N160)? i0[16] : 1'b0;
  assign N16 = i2[16];
  assign N163 = (N17)? i1[17] : 
                (N162)? i0[17] : 1'b0;
  assign N17 = i2[17];
  assign N165 = (N18)? i1[18] : 
                (N164)? i0[18] : 1'b0;
  assign N18 = i2[18];
  assign N167 = (N19)? i1[19] : 
                (N166)? i0[19] : 1'b0;
  assign N19 = i2[19];
  assign N169 = (N20)? i1[20] : 
                (N168)? i0[20] : 1'b0;
  assign N20 = i2[20];
  assign N171 = (N21)? i1[21] : 
                (N170)? i0[21] : 1'b0;
  assign N21 = i2[21];
  assign N173 = (N22)? i1[22] : 
                (N172)? i0[22] : 1'b0;
  assign N22 = i2[22];
  assign N175 = (N23)? i1[23] : 
                (N174)? i0[23] : 1'b0;
  assign N23 = i2[23];
  assign N177 = (N24)? i1[24] : 
                (N176)? i0[24] : 1'b0;
  assign N24 = i2[24];
  assign N179 = (N25)? i1[25] : 
                (N178)? i0[25] : 1'b0;
  assign N25 = i2[25];
  assign N181 = (N26)? i1[26] : 
                (N180)? i0[26] : 1'b0;
  assign N26 = i2[26];
  assign N183 = (N27)? i1[27] : 
                (N182)? i0[27] : 1'b0;
  assign N27 = i2[27];
  assign N185 = (N28)? i1[28] : 
                (N184)? i0[28] : 1'b0;
  assign N28 = i2[28];
  assign N187 = (N29)? i1[29] : 
                (N186)? i0[29] : 1'b0;
  assign N29 = i2[29];
  assign N189 = (N30)? i1[30] : 
                (N188)? i0[30] : 1'b0;
  assign N30 = i2[30];
  assign N191 = (N31)? i1[31] : 
                (N190)? i0[31] : 1'b0;
  assign N31 = i2[31];
  assign N193 = (N32)? i1[32] : 
                (N192)? i0[32] : 1'b0;
  assign N32 = i2[32];
  assign N195 = (N33)? i1[33] : 
                (N194)? i0[33] : 1'b0;
  assign N33 = i2[33];
  assign N197 = (N34)? i1[34] : 
                (N196)? i0[34] : 1'b0;
  assign N34 = i2[34];
  assign N199 = (N35)? i1[35] : 
                (N198)? i0[35] : 1'b0;
  assign N35 = i2[35];
  assign N201 = (N36)? i1[36] : 
                (N200)? i0[36] : 1'b0;
  assign N36 = i2[36];
  assign N203 = (N37)? i1[37] : 
                (N202)? i0[37] : 1'b0;
  assign N37 = i2[37];
  assign N205 = (N38)? i1[38] : 
                (N204)? i0[38] : 1'b0;
  assign N38 = i2[38];
  assign N207 = (N39)? i1[39] : 
                (N206)? i0[39] : 1'b0;
  assign N39 = i2[39];
  assign N209 = (N40)? i1[40] : 
                (N208)? i0[40] : 1'b0;
  assign N40 = i2[40];
  assign N211 = (N41)? i1[41] : 
                (N210)? i0[41] : 1'b0;
  assign N41 = i2[41];
  assign N213 = (N42)? i1[42] : 
                (N212)? i0[42] : 1'b0;
  assign N42 = i2[42];
  assign N215 = (N43)? i1[43] : 
                (N214)? i0[43] : 1'b0;
  assign N43 = i2[43];
  assign N217 = (N44)? i1[44] : 
                (N216)? i0[44] : 1'b0;
  assign N44 = i2[44];
  assign N219 = (N45)? i1[45] : 
                (N218)? i0[45] : 1'b0;
  assign N45 = i2[45];
  assign N221 = (N46)? i1[46] : 
                (N220)? i0[46] : 1'b0;
  assign N46 = i2[46];
  assign N223 = (N47)? i1[47] : 
                (N222)? i0[47] : 1'b0;
  assign N47 = i2[47];
  assign N225 = (N48)? i1[48] : 
                (N224)? i0[48] : 1'b0;
  assign N48 = i2[48];
  assign N227 = (N49)? i1[49] : 
                (N226)? i0[49] : 1'b0;
  assign N49 = i2[49];
  assign N229 = (N50)? i1[50] : 
                (N228)? i0[50] : 1'b0;
  assign N50 = i2[50];
  assign N231 = (N51)? i1[51] : 
                (N230)? i0[51] : 1'b0;
  assign N51 = i2[51];
  assign N233 = (N52)? i1[52] : 
                (N232)? i0[52] : 1'b0;
  assign N52 = i2[52];
  assign N235 = (N53)? i1[53] : 
                (N234)? i0[53] : 1'b0;
  assign N53 = i2[53];
  assign N237 = (N54)? i1[54] : 
                (N236)? i0[54] : 1'b0;
  assign N54 = i2[54];
  assign N239 = (N55)? i1[55] : 
                (N238)? i0[55] : 1'b0;
  assign N55 = i2[55];
  assign N241 = (N56)? i1[56] : 
                (N240)? i0[56] : 1'b0;
  assign N56 = i2[56];
  assign N243 = (N57)? i1[57] : 
                (N242)? i0[57] : 1'b0;
  assign N57 = i2[57];
  assign N245 = (N58)? i1[58] : 
                (N244)? i0[58] : 1'b0;
  assign N58 = i2[58];
  assign N247 = (N59)? i1[59] : 
                (N246)? i0[59] : 1'b0;
  assign N59 = i2[59];
  assign N249 = (N60)? i1[60] : 
                (N248)? i0[60] : 1'b0;
  assign N60 = i2[60];
  assign N251 = (N61)? i1[61] : 
                (N250)? i0[61] : 1'b0;
  assign N61 = i2[61];
  assign N253 = (N62)? i1[62] : 
                (N252)? i0[62] : 1'b0;
  assign N62 = i2[62];
  assign N255 = (N63)? i1[63] : 
                (N254)? i0[63] : 1'b0;
  assign N63 = i2[63];
  assign N257 = (N64)? i1[64] : 
                (N256)? i0[64] : 1'b0;
  assign N64 = i2[64];
  assign N259 = (N65)? i1[65] : 
                (N258)? i0[65] : 1'b0;
  assign N65 = i2[65];
  assign N261 = (N66)? i1[66] : 
                (N260)? i0[66] : 1'b0;
  assign N66 = i2[66];
  assign N263 = (N67)? i1[67] : 
                (N262)? i0[67] : 1'b0;
  assign N67 = i2[67];
  assign N265 = (N68)? i1[68] : 
                (N264)? i0[68] : 1'b0;
  assign N68 = i2[68];
  assign N267 = (N69)? i1[69] : 
                (N266)? i0[69] : 1'b0;
  assign N69 = i2[69];
  assign N269 = (N70)? i1[70] : 
                (N268)? i0[70] : 1'b0;
  assign N70 = i2[70];
  assign N271 = (N71)? i1[71] : 
                (N270)? i0[71] : 1'b0;
  assign N71 = i2[71];
  assign N273 = (N72)? i1[72] : 
                (N272)? i0[72] : 1'b0;
  assign N72 = i2[72];
  assign N275 = (N73)? i1[73] : 
                (N274)? i0[73] : 1'b0;
  assign N73 = i2[73];
  assign N277 = (N74)? i1[74] : 
                (N276)? i0[74] : 1'b0;
  assign N74 = i2[74];
  assign N279 = (N75)? i1[75] : 
                (N278)? i0[75] : 1'b0;
  assign N75 = i2[75];
  assign N281 = (N76)? i1[76] : 
                (N280)? i0[76] : 1'b0;
  assign N76 = i2[76];
  assign N283 = (N77)? i1[77] : 
                (N282)? i0[77] : 1'b0;
  assign N77 = i2[77];
  assign N285 = (N78)? i1[78] : 
                (N284)? i0[78] : 1'b0;
  assign N78 = i2[78];
  assign N287 = (N79)? i1[79] : 
                (N286)? i0[79] : 1'b0;
  assign N79 = i2[79];
  assign N289 = (N80)? i1[80] : 
                (N288)? i0[80] : 1'b0;
  assign N80 = i2[80];
  assign N291 = (N81)? i1[81] : 
                (N290)? i0[81] : 1'b0;
  assign N81 = i2[81];
  assign N293 = (N82)? i1[82] : 
                (N292)? i0[82] : 1'b0;
  assign N82 = i2[82];
  assign N295 = (N83)? i1[83] : 
                (N294)? i0[83] : 1'b0;
  assign N83 = i2[83];
  assign N297 = (N84)? i1[84] : 
                (N296)? i0[84] : 1'b0;
  assign N84 = i2[84];
  assign N299 = (N85)? i1[85] : 
                (N298)? i0[85] : 1'b0;
  assign N85 = i2[85];
  assign N301 = (N86)? i1[86] : 
                (N300)? i0[86] : 1'b0;
  assign N86 = i2[86];
  assign N303 = (N87)? i1[87] : 
                (N302)? i0[87] : 1'b0;
  assign N87 = i2[87];
  assign N305 = (N88)? i1[88] : 
                (N304)? i0[88] : 1'b0;
  assign N88 = i2[88];
  assign N307 = (N89)? i1[89] : 
                (N306)? i0[89] : 1'b0;
  assign N89 = i2[89];
  assign N309 = (N90)? i1[90] : 
                (N308)? i0[90] : 1'b0;
  assign N90 = i2[90];
  assign N311 = (N91)? i1[91] : 
                (N310)? i0[91] : 1'b0;
  assign N91 = i2[91];
  assign N313 = (N92)? i1[92] : 
                (N312)? i0[92] : 1'b0;
  assign N92 = i2[92];
  assign N315 = (N93)? i1[93] : 
                (N314)? i0[93] : 1'b0;
  assign N93 = i2[93];
  assign N317 = (N94)? i1[94] : 
                (N316)? i0[94] : 1'b0;
  assign N94 = i2[94];
  assign N319 = (N95)? i1[95] : 
                (N318)? i0[95] : 1'b0;
  assign N95 = i2[95];
  assign N321 = (N96)? i1[96] : 
                (N320)? i0[96] : 1'b0;
  assign N96 = i2[96];
  assign N323 = (N97)? i1[97] : 
                (N322)? i0[97] : 1'b0;
  assign N97 = i2[97];
  assign N325 = (N98)? i1[98] : 
                (N324)? i0[98] : 1'b0;
  assign N98 = i2[98];
  assign N327 = (N99)? i1[99] : 
                (N326)? i0[99] : 1'b0;
  assign N99 = i2[99];
  assign N329 = (N100)? i1[100] : 
                (N328)? i0[100] : 1'b0;
  assign N100 = i2[100];
  assign N331 = (N101)? i1[101] : 
                (N330)? i0[101] : 1'b0;
  assign N101 = i2[101];
  assign N333 = (N102)? i1[102] : 
                (N332)? i0[102] : 1'b0;
  assign N102 = i2[102];
  assign N335 = (N103)? i1[103] : 
                (N334)? i0[103] : 1'b0;
  assign N103 = i2[103];
  assign N337 = (N104)? i1[104] : 
                (N336)? i0[104] : 1'b0;
  assign N104 = i2[104];
  assign N339 = (N105)? i1[105] : 
                (N338)? i0[105] : 1'b0;
  assign N105 = i2[105];
  assign N341 = (N106)? i1[106] : 
                (N340)? i0[106] : 1'b0;
  assign N106 = i2[106];
  assign N343 = (N107)? i1[107] : 
                (N342)? i0[107] : 1'b0;
  assign N107 = i2[107];
  assign N345 = (N108)? i1[108] : 
                (N344)? i0[108] : 1'b0;
  assign N108 = i2[108];
  assign N347 = (N109)? i1[109] : 
                (N346)? i0[109] : 1'b0;
  assign N109 = i2[109];
  assign N349 = (N110)? i1[110] : 
                (N348)? i0[110] : 1'b0;
  assign N110 = i2[110];
  assign N351 = (N111)? i1[111] : 
                (N350)? i0[111] : 1'b0;
  assign N111 = i2[111];
  assign N353 = (N112)? i1[112] : 
                (N352)? i0[112] : 1'b0;
  assign N112 = i2[112];
  assign N355 = (N113)? i1[113] : 
                (N354)? i0[113] : 1'b0;
  assign N113 = i2[113];
  assign N357 = (N114)? i1[114] : 
                (N356)? i0[114] : 1'b0;
  assign N114 = i2[114];
  assign N359 = (N115)? i1[115] : 
                (N358)? i0[115] : 1'b0;
  assign N115 = i2[115];
  assign N361 = (N116)? i1[116] : 
                (N360)? i0[116] : 1'b0;
  assign N116 = i2[116];
  assign N363 = (N117)? i1[117] : 
                (N362)? i0[117] : 1'b0;
  assign N117 = i2[117];
  assign N365 = (N118)? i1[118] : 
                (N364)? i0[118] : 1'b0;
  assign N118 = i2[118];
  assign N367 = (N119)? i1[119] : 
                (N366)? i0[119] : 1'b0;
  assign N119 = i2[119];
  assign N369 = (N120)? i1[120] : 
                (N368)? i0[120] : 1'b0;
  assign N120 = i2[120];
  assign N371 = (N121)? i1[121] : 
                (N370)? i0[121] : 1'b0;
  assign N121 = i2[121];
  assign N373 = (N122)? i1[122] : 
                (N372)? i0[122] : 1'b0;
  assign N122 = i2[122];
  assign N375 = (N123)? i1[123] : 
                (N374)? i0[123] : 1'b0;
  assign N123 = i2[123];
  assign N377 = (N124)? i1[124] : 
                (N376)? i0[124] : 1'b0;
  assign N124 = i2[124];
  assign N379 = (N125)? i1[125] : 
                (N378)? i0[125] : 1'b0;
  assign N125 = i2[125];
  assign N381 = (N126)? i1[126] : 
                (N380)? i0[126] : 1'b0;
  assign N126 = i2[126];
  assign N383 = (N127)? i1[127] : 
                (N382)? i0[127] : 1'b0;
  assign N127 = i2[127];
  assign N128 = ~i2[0];
  assign o[0] = ~N129;
  assign N130 = ~i2[1];
  assign o[1] = ~N131;
  assign N132 = ~i2[2];
  assign o[2] = ~N133;
  assign N134 = ~i2[3];
  assign o[3] = ~N135;
  assign N136 = ~i2[4];
  assign o[4] = ~N137;
  assign N138 = ~i2[5];
  assign o[5] = ~N139;
  assign N140 = ~i2[6];
  assign o[6] = ~N141;
  assign N142 = ~i2[7];
  assign o[7] = ~N143;
  assign N144 = ~i2[8];
  assign o[8] = ~N145;
  assign N146 = ~i2[9];
  assign o[9] = ~N147;
  assign N148 = ~i2[10];
  assign o[10] = ~N149;
  assign N150 = ~i2[11];
  assign o[11] = ~N151;
  assign N152 = ~i2[12];
  assign o[12] = ~N153;
  assign N154 = ~i2[13];
  assign o[13] = ~N155;
  assign N156 = ~i2[14];
  assign o[14] = ~N157;
  assign N158 = ~i2[15];
  assign o[15] = ~N159;
  assign N160 = ~i2[16];
  assign o[16] = ~N161;
  assign N162 = ~i2[17];
  assign o[17] = ~N163;
  assign N164 = ~i2[18];
  assign o[18] = ~N165;
  assign N166 = ~i2[19];
  assign o[19] = ~N167;
  assign N168 = ~i2[20];
  assign o[20] = ~N169;
  assign N170 = ~i2[21];
  assign o[21] = ~N171;
  assign N172 = ~i2[22];
  assign o[22] = ~N173;
  assign N174 = ~i2[23];
  assign o[23] = ~N175;
  assign N176 = ~i2[24];
  assign o[24] = ~N177;
  assign N178 = ~i2[25];
  assign o[25] = ~N179;
  assign N180 = ~i2[26];
  assign o[26] = ~N181;
  assign N182 = ~i2[27];
  assign o[27] = ~N183;
  assign N184 = ~i2[28];
  assign o[28] = ~N185;
  assign N186 = ~i2[29];
  assign o[29] = ~N187;
  assign N188 = ~i2[30];
  assign o[30] = ~N189;
  assign N190 = ~i2[31];
  assign o[31] = ~N191;
  assign N192 = ~i2[32];
  assign o[32] = ~N193;
  assign N194 = ~i2[33];
  assign o[33] = ~N195;
  assign N196 = ~i2[34];
  assign o[34] = ~N197;
  assign N198 = ~i2[35];
  assign o[35] = ~N199;
  assign N200 = ~i2[36];
  assign o[36] = ~N201;
  assign N202 = ~i2[37];
  assign o[37] = ~N203;
  assign N204 = ~i2[38];
  assign o[38] = ~N205;
  assign N206 = ~i2[39];
  assign o[39] = ~N207;
  assign N208 = ~i2[40];
  assign o[40] = ~N209;
  assign N210 = ~i2[41];
  assign o[41] = ~N211;
  assign N212 = ~i2[42];
  assign o[42] = ~N213;
  assign N214 = ~i2[43];
  assign o[43] = ~N215;
  assign N216 = ~i2[44];
  assign o[44] = ~N217;
  assign N218 = ~i2[45];
  assign o[45] = ~N219;
  assign N220 = ~i2[46];
  assign o[46] = ~N221;
  assign N222 = ~i2[47];
  assign o[47] = ~N223;
  assign N224 = ~i2[48];
  assign o[48] = ~N225;
  assign N226 = ~i2[49];
  assign o[49] = ~N227;
  assign N228 = ~i2[50];
  assign o[50] = ~N229;
  assign N230 = ~i2[51];
  assign o[51] = ~N231;
  assign N232 = ~i2[52];
  assign o[52] = ~N233;
  assign N234 = ~i2[53];
  assign o[53] = ~N235;
  assign N236 = ~i2[54];
  assign o[54] = ~N237;
  assign N238 = ~i2[55];
  assign o[55] = ~N239;
  assign N240 = ~i2[56];
  assign o[56] = ~N241;
  assign N242 = ~i2[57];
  assign o[57] = ~N243;
  assign N244 = ~i2[58];
  assign o[58] = ~N245;
  assign N246 = ~i2[59];
  assign o[59] = ~N247;
  assign N248 = ~i2[60];
  assign o[60] = ~N249;
  assign N250 = ~i2[61];
  assign o[61] = ~N251;
  assign N252 = ~i2[62];
  assign o[62] = ~N253;
  assign N254 = ~i2[63];
  assign o[63] = ~N255;
  assign N256 = ~i2[64];
  assign o[64] = ~N257;
  assign N258 = ~i2[65];
  assign o[65] = ~N259;
  assign N260 = ~i2[66];
  assign o[66] = ~N261;
  assign N262 = ~i2[67];
  assign o[67] = ~N263;
  assign N264 = ~i2[68];
  assign o[68] = ~N265;
  assign N266 = ~i2[69];
  assign o[69] = ~N267;
  assign N268 = ~i2[70];
  assign o[70] = ~N269;
  assign N270 = ~i2[71];
  assign o[71] = ~N271;
  assign N272 = ~i2[72];
  assign o[72] = ~N273;
  assign N274 = ~i2[73];
  assign o[73] = ~N275;
  assign N276 = ~i2[74];
  assign o[74] = ~N277;
  assign N278 = ~i2[75];
  assign o[75] = ~N279;
  assign N280 = ~i2[76];
  assign o[76] = ~N281;
  assign N282 = ~i2[77];
  assign o[77] = ~N283;
  assign N284 = ~i2[78];
  assign o[78] = ~N285;
  assign N286 = ~i2[79];
  assign o[79] = ~N287;
  assign N288 = ~i2[80];
  assign o[80] = ~N289;
  assign N290 = ~i2[81];
  assign o[81] = ~N291;
  assign N292 = ~i2[82];
  assign o[82] = ~N293;
  assign N294 = ~i2[83];
  assign o[83] = ~N295;
  assign N296 = ~i2[84];
  assign o[84] = ~N297;
  assign N298 = ~i2[85];
  assign o[85] = ~N299;
  assign N300 = ~i2[86];
  assign o[86] = ~N301;
  assign N302 = ~i2[87];
  assign o[87] = ~N303;
  assign N304 = ~i2[88];
  assign o[88] = ~N305;
  assign N306 = ~i2[89];
  assign o[89] = ~N307;
  assign N308 = ~i2[90];
  assign o[90] = ~N309;
  assign N310 = ~i2[91];
  assign o[91] = ~N311;
  assign N312 = ~i2[92];
  assign o[92] = ~N313;
  assign N314 = ~i2[93];
  assign o[93] = ~N315;
  assign N316 = ~i2[94];
  assign o[94] = ~N317;
  assign N318 = ~i2[95];
  assign o[95] = ~N319;
  assign N320 = ~i2[96];
  assign o[96] = ~N321;
  assign N322 = ~i2[97];
  assign o[97] = ~N323;
  assign N324 = ~i2[98];
  assign o[98] = ~N325;
  assign N326 = ~i2[99];
  assign o[99] = ~N327;
  assign N328 = ~i2[100];
  assign o[100] = ~N329;
  assign N330 = ~i2[101];
  assign o[101] = ~N331;
  assign N332 = ~i2[102];
  assign o[102] = ~N333;
  assign N334 = ~i2[103];
  assign o[103] = ~N335;
  assign N336 = ~i2[104];
  assign o[104] = ~N337;
  assign N338 = ~i2[105];
  assign o[105] = ~N339;
  assign N340 = ~i2[106];
  assign o[106] = ~N341;
  assign N342 = ~i2[107];
  assign o[107] = ~N343;
  assign N344 = ~i2[108];
  assign o[108] = ~N345;
  assign N346 = ~i2[109];
  assign o[109] = ~N347;
  assign N348 = ~i2[110];
  assign o[110] = ~N349;
  assign N350 = ~i2[111];
  assign o[111] = ~N351;
  assign N352 = ~i2[112];
  assign o[112] = ~N353;
  assign N354 = ~i2[113];
  assign o[113] = ~N355;
  assign N356 = ~i2[114];
  assign o[114] = ~N357;
  assign N358 = ~i2[115];
  assign o[115] = ~N359;
  assign N360 = ~i2[116];
  assign o[116] = ~N361;
  assign N362 = ~i2[117];
  assign o[117] = ~N363;
  assign N364 = ~i2[118];
  assign o[118] = ~N365;
  assign N366 = ~i2[119];
  assign o[119] = ~N367;
  assign N368 = ~i2[120];
  assign o[120] = ~N369;
  assign N370 = ~i2[121];
  assign o[121] = ~N371;
  assign N372 = ~i2[122];
  assign o[122] = ~N373;
  assign N374 = ~i2[123];
  assign o[123] = ~N375;
  assign N376 = ~i2[124];
  assign o[124] = ~N377;
  assign N378 = ~i2[125];
  assign o[125] = ~N379;
  assign N380 = ~i2[126];
  assign o[126] = ~N381;
  assign N382 = ~i2[127];
  assign o[127] = ~N383;

endmodule



module bsg_dff_width_p128_harden_p0_strength_p4
(
  clk_i,
  data_i,
  data_o
);

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  reg [127:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[127:0] } <= { data_i[127:0] };
    end 
  end


endmodule



module bsg_nand_width_p128_harden_p1
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
  assign N0 = a_i[127] & b_i[127];
  assign o[126] = ~N1;
  assign N1 = a_i[126] & b_i[126];
  assign o[125] = ~N2;
  assign N2 = a_i[125] & b_i[125];
  assign o[124] = ~N3;
  assign N3 = a_i[124] & b_i[124];
  assign o[123] = ~N4;
  assign N4 = a_i[123] & b_i[123];
  assign o[122] = ~N5;
  assign N5 = a_i[122] & b_i[122];
  assign o[121] = ~N6;
  assign N6 = a_i[121] & b_i[121];
  assign o[120] = ~N7;
  assign N7 = a_i[120] & b_i[120];
  assign o[119] = ~N8;
  assign N8 = a_i[119] & b_i[119];
  assign o[118] = ~N9;
  assign N9 = a_i[118] & b_i[118];
  assign o[117] = ~N10;
  assign N10 = a_i[117] & b_i[117];
  assign o[116] = ~N11;
  assign N11 = a_i[116] & b_i[116];
  assign o[115] = ~N12;
  assign N12 = a_i[115] & b_i[115];
  assign o[114] = ~N13;
  assign N13 = a_i[114] & b_i[114];
  assign o[113] = ~N14;
  assign N14 = a_i[113] & b_i[113];
  assign o[112] = ~N15;
  assign N15 = a_i[112] & b_i[112];
  assign o[111] = ~N16;
  assign N16 = a_i[111] & b_i[111];
  assign o[110] = ~N17;
  assign N17 = a_i[110] & b_i[110];
  assign o[109] = ~N18;
  assign N18 = a_i[109] & b_i[109];
  assign o[108] = ~N19;
  assign N19 = a_i[108] & b_i[108];
  assign o[107] = ~N20;
  assign N20 = a_i[107] & b_i[107];
  assign o[106] = ~N21;
  assign N21 = a_i[106] & b_i[106];
  assign o[105] = ~N22;
  assign N22 = a_i[105] & b_i[105];
  assign o[104] = ~N23;
  assign N23 = a_i[104] & b_i[104];
  assign o[103] = ~N24;
  assign N24 = a_i[103] & b_i[103];
  assign o[102] = ~N25;
  assign N25 = a_i[102] & b_i[102];
  assign o[101] = ~N26;
  assign N26 = a_i[101] & b_i[101];
  assign o[100] = ~N27;
  assign N27 = a_i[100] & b_i[100];
  assign o[99] = ~N28;
  assign N28 = a_i[99] & b_i[99];
  assign o[98] = ~N29;
  assign N29 = a_i[98] & b_i[98];
  assign o[97] = ~N30;
  assign N30 = a_i[97] & b_i[97];
  assign o[96] = ~N31;
  assign N31 = a_i[96] & b_i[96];
  assign o[95] = ~N32;
  assign N32 = a_i[95] & b_i[95];
  assign o[94] = ~N33;
  assign N33 = a_i[94] & b_i[94];
  assign o[93] = ~N34;
  assign N34 = a_i[93] & b_i[93];
  assign o[92] = ~N35;
  assign N35 = a_i[92] & b_i[92];
  assign o[91] = ~N36;
  assign N36 = a_i[91] & b_i[91];
  assign o[90] = ~N37;
  assign N37 = a_i[90] & b_i[90];
  assign o[89] = ~N38;
  assign N38 = a_i[89] & b_i[89];
  assign o[88] = ~N39;
  assign N39 = a_i[88] & b_i[88];
  assign o[87] = ~N40;
  assign N40 = a_i[87] & b_i[87];
  assign o[86] = ~N41;
  assign N41 = a_i[86] & b_i[86];
  assign o[85] = ~N42;
  assign N42 = a_i[85] & b_i[85];
  assign o[84] = ~N43;
  assign N43 = a_i[84] & b_i[84];
  assign o[83] = ~N44;
  assign N44 = a_i[83] & b_i[83];
  assign o[82] = ~N45;
  assign N45 = a_i[82] & b_i[82];
  assign o[81] = ~N46;
  assign N46 = a_i[81] & b_i[81];
  assign o[80] = ~N47;
  assign N47 = a_i[80] & b_i[80];
  assign o[79] = ~N48;
  assign N48 = a_i[79] & b_i[79];
  assign o[78] = ~N49;
  assign N49 = a_i[78] & b_i[78];
  assign o[77] = ~N50;
  assign N50 = a_i[77] & b_i[77];
  assign o[76] = ~N51;
  assign N51 = a_i[76] & b_i[76];
  assign o[75] = ~N52;
  assign N52 = a_i[75] & b_i[75];
  assign o[74] = ~N53;
  assign N53 = a_i[74] & b_i[74];
  assign o[73] = ~N54;
  assign N54 = a_i[73] & b_i[73];
  assign o[72] = ~N55;
  assign N55 = a_i[72] & b_i[72];
  assign o[71] = ~N56;
  assign N56 = a_i[71] & b_i[71];
  assign o[70] = ~N57;
  assign N57 = a_i[70] & b_i[70];
  assign o[69] = ~N58;
  assign N58 = a_i[69] & b_i[69];
  assign o[68] = ~N59;
  assign N59 = a_i[68] & b_i[68];
  assign o[67] = ~N60;
  assign N60 = a_i[67] & b_i[67];
  assign o[66] = ~N61;
  assign N61 = a_i[66] & b_i[66];
  assign o[65] = ~N62;
  assign N62 = a_i[65] & b_i[65];
  assign o[64] = ~N63;
  assign N63 = a_i[64] & b_i[64];
  assign o[63] = ~N64;
  assign N64 = a_i[63] & b_i[63];
  assign o[62] = ~N65;
  assign N65 = a_i[62] & b_i[62];
  assign o[61] = ~N66;
  assign N66 = a_i[61] & b_i[61];
  assign o[60] = ~N67;
  assign N67 = a_i[60] & b_i[60];
  assign o[59] = ~N68;
  assign N68 = a_i[59] & b_i[59];
  assign o[58] = ~N69;
  assign N69 = a_i[58] & b_i[58];
  assign o[57] = ~N70;
  assign N70 = a_i[57] & b_i[57];
  assign o[56] = ~N71;
  assign N71 = a_i[56] & b_i[56];
  assign o[55] = ~N72;
  assign N72 = a_i[55] & b_i[55];
  assign o[54] = ~N73;
  assign N73 = a_i[54] & b_i[54];
  assign o[53] = ~N74;
  assign N74 = a_i[53] & b_i[53];
  assign o[52] = ~N75;
  assign N75 = a_i[52] & b_i[52];
  assign o[51] = ~N76;
  assign N76 = a_i[51] & b_i[51];
  assign o[50] = ~N77;
  assign N77 = a_i[50] & b_i[50];
  assign o[49] = ~N78;
  assign N78 = a_i[49] & b_i[49];
  assign o[48] = ~N79;
  assign N79 = a_i[48] & b_i[48];
  assign o[47] = ~N80;
  assign N80 = a_i[47] & b_i[47];
  assign o[46] = ~N81;
  assign N81 = a_i[46] & b_i[46];
  assign o[45] = ~N82;
  assign N82 = a_i[45] & b_i[45];
  assign o[44] = ~N83;
  assign N83 = a_i[44] & b_i[44];
  assign o[43] = ~N84;
  assign N84 = a_i[43] & b_i[43];
  assign o[42] = ~N85;
  assign N85 = a_i[42] & b_i[42];
  assign o[41] = ~N86;
  assign N86 = a_i[41] & b_i[41];
  assign o[40] = ~N87;
  assign N87 = a_i[40] & b_i[40];
  assign o[39] = ~N88;
  assign N88 = a_i[39] & b_i[39];
  assign o[38] = ~N89;
  assign N89 = a_i[38] & b_i[38];
  assign o[37] = ~N90;
  assign N90 = a_i[37] & b_i[37];
  assign o[36] = ~N91;
  assign N91 = a_i[36] & b_i[36];
  assign o[35] = ~N92;
  assign N92 = a_i[35] & b_i[35];
  assign o[34] = ~N93;
  assign N93 = a_i[34] & b_i[34];
  assign o[33] = ~N94;
  assign N94 = a_i[33] & b_i[33];
  assign o[32] = ~N95;
  assign N95 = a_i[32] & b_i[32];
  assign o[31] = ~N96;
  assign N96 = a_i[31] & b_i[31];
  assign o[30] = ~N97;
  assign N97 = a_i[30] & b_i[30];
  assign o[29] = ~N98;
  assign N98 = a_i[29] & b_i[29];
  assign o[28] = ~N99;
  assign N99 = a_i[28] & b_i[28];
  assign o[27] = ~N100;
  assign N100 = a_i[27] & b_i[27];
  assign o[26] = ~N101;
  assign N101 = a_i[26] & b_i[26];
  assign o[25] = ~N102;
  assign N102 = a_i[25] & b_i[25];
  assign o[24] = ~N103;
  assign N103 = a_i[24] & b_i[24];
  assign o[23] = ~N104;
  assign N104 = a_i[23] & b_i[23];
  assign o[22] = ~N105;
  assign N105 = a_i[22] & b_i[22];
  assign o[21] = ~N106;
  assign N106 = a_i[21] & b_i[21];
  assign o[20] = ~N107;
  assign N107 = a_i[20] & b_i[20];
  assign o[19] = ~N108;
  assign N108 = a_i[19] & b_i[19];
  assign o[18] = ~N109;
  assign N109 = a_i[18] & b_i[18];
  assign o[17] = ~N110;
  assign N110 = a_i[17] & b_i[17];
  assign o[16] = ~N111;
  assign N111 = a_i[16] & b_i[16];
  assign o[15] = ~N112;
  assign N112 = a_i[15] & b_i[15];
  assign o[14] = ~N113;
  assign N113 = a_i[14] & b_i[14];
  assign o[13] = ~N114;
  assign N114 = a_i[13] & b_i[13];
  assign o[12] = ~N115;
  assign N115 = a_i[12] & b_i[12];
  assign o[11] = ~N116;
  assign N116 = a_i[11] & b_i[11];
  assign o[10] = ~N117;
  assign N117 = a_i[10] & b_i[10];
  assign o[9] = ~N118;
  assign N118 = a_i[9] & b_i[9];
  assign o[8] = ~N119;
  assign N119 = a_i[8] & b_i[8];
  assign o[7] = ~N120;
  assign N120 = a_i[7] & b_i[7];
  assign o[6] = ~N121;
  assign N121 = a_i[6] & b_i[6];
  assign o[5] = ~N122;
  assign N122 = a_i[5] & b_i[5];
  assign o[4] = ~N123;
  assign N123 = a_i[4] & b_i[4];
  assign o[3] = ~N124;
  assign N124 = a_i[3] & b_i[3];
  assign o[2] = ~N125;
  assign N125 = a_i[2] & b_i[2];
  assign o[1] = ~N126;
  assign N126 = a_i[1] & b_i[1];
  assign o[0] = ~N127;
  assign N127 = a_i[0] & b_i[0];

endmodule



module bsg_nor3_width_p127_harden_p1
(
  a_i,
  b_i,
  c_i,
  o
);

  input [126:0] a_i;
  input [126:0] b_i;
  input [126:0] c_i;
  output [126:0] o;
  wire [126:0] o;
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
  N246,N247,N248,N249,N250,N251,N252,N253;
  assign o[126] = ~N1;
  assign N1 = N0 | c_i[126];
  assign N0 = a_i[126] | b_i[126];
  assign o[125] = ~N3;
  assign N3 = N2 | c_i[125];
  assign N2 = a_i[125] | b_i[125];
  assign o[124] = ~N5;
  assign N5 = N4 | c_i[124];
  assign N4 = a_i[124] | b_i[124];
  assign o[123] = ~N7;
  assign N7 = N6 | c_i[123];
  assign N6 = a_i[123] | b_i[123];
  assign o[122] = ~N9;
  assign N9 = N8 | c_i[122];
  assign N8 = a_i[122] | b_i[122];
  assign o[121] = ~N11;
  assign N11 = N10 | c_i[121];
  assign N10 = a_i[121] | b_i[121];
  assign o[120] = ~N13;
  assign N13 = N12 | c_i[120];
  assign N12 = a_i[120] | b_i[120];
  assign o[119] = ~N15;
  assign N15 = N14 | c_i[119];
  assign N14 = a_i[119] | b_i[119];
  assign o[118] = ~N17;
  assign N17 = N16 | c_i[118];
  assign N16 = a_i[118] | b_i[118];
  assign o[117] = ~N19;
  assign N19 = N18 | c_i[117];
  assign N18 = a_i[117] | b_i[117];
  assign o[116] = ~N21;
  assign N21 = N20 | c_i[116];
  assign N20 = a_i[116] | b_i[116];
  assign o[115] = ~N23;
  assign N23 = N22 | c_i[115];
  assign N22 = a_i[115] | b_i[115];
  assign o[114] = ~N25;
  assign N25 = N24 | c_i[114];
  assign N24 = a_i[114] | b_i[114];
  assign o[113] = ~N27;
  assign N27 = N26 | c_i[113];
  assign N26 = a_i[113] | b_i[113];
  assign o[112] = ~N29;
  assign N29 = N28 | c_i[112];
  assign N28 = a_i[112] | b_i[112];
  assign o[111] = ~N31;
  assign N31 = N30 | c_i[111];
  assign N30 = a_i[111] | b_i[111];
  assign o[110] = ~N33;
  assign N33 = N32 | c_i[110];
  assign N32 = a_i[110] | b_i[110];
  assign o[109] = ~N35;
  assign N35 = N34 | c_i[109];
  assign N34 = a_i[109] | b_i[109];
  assign o[108] = ~N37;
  assign N37 = N36 | c_i[108];
  assign N36 = a_i[108] | b_i[108];
  assign o[107] = ~N39;
  assign N39 = N38 | c_i[107];
  assign N38 = a_i[107] | b_i[107];
  assign o[106] = ~N41;
  assign N41 = N40 | c_i[106];
  assign N40 = a_i[106] | b_i[106];
  assign o[105] = ~N43;
  assign N43 = N42 | c_i[105];
  assign N42 = a_i[105] | b_i[105];
  assign o[104] = ~N45;
  assign N45 = N44 | c_i[104];
  assign N44 = a_i[104] | b_i[104];
  assign o[103] = ~N47;
  assign N47 = N46 | c_i[103];
  assign N46 = a_i[103] | b_i[103];
  assign o[102] = ~N49;
  assign N49 = N48 | c_i[102];
  assign N48 = a_i[102] | b_i[102];
  assign o[101] = ~N51;
  assign N51 = N50 | c_i[101];
  assign N50 = a_i[101] | b_i[101];
  assign o[100] = ~N53;
  assign N53 = N52 | c_i[100];
  assign N52 = a_i[100] | b_i[100];
  assign o[99] = ~N55;
  assign N55 = N54 | c_i[99];
  assign N54 = a_i[99] | b_i[99];
  assign o[98] = ~N57;
  assign N57 = N56 | c_i[98];
  assign N56 = a_i[98] | b_i[98];
  assign o[97] = ~N59;
  assign N59 = N58 | c_i[97];
  assign N58 = a_i[97] | b_i[97];
  assign o[96] = ~N61;
  assign N61 = N60 | c_i[96];
  assign N60 = a_i[96] | b_i[96];
  assign o[95] = ~N63;
  assign N63 = N62 | c_i[95];
  assign N62 = a_i[95] | b_i[95];
  assign o[94] = ~N65;
  assign N65 = N64 | c_i[94];
  assign N64 = a_i[94] | b_i[94];
  assign o[93] = ~N67;
  assign N67 = N66 | c_i[93];
  assign N66 = a_i[93] | b_i[93];
  assign o[92] = ~N69;
  assign N69 = N68 | c_i[92];
  assign N68 = a_i[92] | b_i[92];
  assign o[91] = ~N71;
  assign N71 = N70 | c_i[91];
  assign N70 = a_i[91] | b_i[91];
  assign o[90] = ~N73;
  assign N73 = N72 | c_i[90];
  assign N72 = a_i[90] | b_i[90];
  assign o[89] = ~N75;
  assign N75 = N74 | c_i[89];
  assign N74 = a_i[89] | b_i[89];
  assign o[88] = ~N77;
  assign N77 = N76 | c_i[88];
  assign N76 = a_i[88] | b_i[88];
  assign o[87] = ~N79;
  assign N79 = N78 | c_i[87];
  assign N78 = a_i[87] | b_i[87];
  assign o[86] = ~N81;
  assign N81 = N80 | c_i[86];
  assign N80 = a_i[86] | b_i[86];
  assign o[85] = ~N83;
  assign N83 = N82 | c_i[85];
  assign N82 = a_i[85] | b_i[85];
  assign o[84] = ~N85;
  assign N85 = N84 | c_i[84];
  assign N84 = a_i[84] | b_i[84];
  assign o[83] = ~N87;
  assign N87 = N86 | c_i[83];
  assign N86 = a_i[83] | b_i[83];
  assign o[82] = ~N89;
  assign N89 = N88 | c_i[82];
  assign N88 = a_i[82] | b_i[82];
  assign o[81] = ~N91;
  assign N91 = N90 | c_i[81];
  assign N90 = a_i[81] | b_i[81];
  assign o[80] = ~N93;
  assign N93 = N92 | c_i[80];
  assign N92 = a_i[80] | b_i[80];
  assign o[79] = ~N95;
  assign N95 = N94 | c_i[79];
  assign N94 = a_i[79] | b_i[79];
  assign o[78] = ~N97;
  assign N97 = N96 | c_i[78];
  assign N96 = a_i[78] | b_i[78];
  assign o[77] = ~N99;
  assign N99 = N98 | c_i[77];
  assign N98 = a_i[77] | b_i[77];
  assign o[76] = ~N101;
  assign N101 = N100 | c_i[76];
  assign N100 = a_i[76] | b_i[76];
  assign o[75] = ~N103;
  assign N103 = N102 | c_i[75];
  assign N102 = a_i[75] | b_i[75];
  assign o[74] = ~N105;
  assign N105 = N104 | c_i[74];
  assign N104 = a_i[74] | b_i[74];
  assign o[73] = ~N107;
  assign N107 = N106 | c_i[73];
  assign N106 = a_i[73] | b_i[73];
  assign o[72] = ~N109;
  assign N109 = N108 | c_i[72];
  assign N108 = a_i[72] | b_i[72];
  assign o[71] = ~N111;
  assign N111 = N110 | c_i[71];
  assign N110 = a_i[71] | b_i[71];
  assign o[70] = ~N113;
  assign N113 = N112 | c_i[70];
  assign N112 = a_i[70] | b_i[70];
  assign o[69] = ~N115;
  assign N115 = N114 | c_i[69];
  assign N114 = a_i[69] | b_i[69];
  assign o[68] = ~N117;
  assign N117 = N116 | c_i[68];
  assign N116 = a_i[68] | b_i[68];
  assign o[67] = ~N119;
  assign N119 = N118 | c_i[67];
  assign N118 = a_i[67] | b_i[67];
  assign o[66] = ~N121;
  assign N121 = N120 | c_i[66];
  assign N120 = a_i[66] | b_i[66];
  assign o[65] = ~N123;
  assign N123 = N122 | c_i[65];
  assign N122 = a_i[65] | b_i[65];
  assign o[64] = ~N125;
  assign N125 = N124 | c_i[64];
  assign N124 = a_i[64] | b_i[64];
  assign o[63] = ~N127;
  assign N127 = N126 | c_i[63];
  assign N126 = a_i[63] | b_i[63];
  assign o[62] = ~N129;
  assign N129 = N128 | c_i[62];
  assign N128 = a_i[62] | b_i[62];
  assign o[61] = ~N131;
  assign N131 = N130 | c_i[61];
  assign N130 = a_i[61] | b_i[61];
  assign o[60] = ~N133;
  assign N133 = N132 | c_i[60];
  assign N132 = a_i[60] | b_i[60];
  assign o[59] = ~N135;
  assign N135 = N134 | c_i[59];
  assign N134 = a_i[59] | b_i[59];
  assign o[58] = ~N137;
  assign N137 = N136 | c_i[58];
  assign N136 = a_i[58] | b_i[58];
  assign o[57] = ~N139;
  assign N139 = N138 | c_i[57];
  assign N138 = a_i[57] | b_i[57];
  assign o[56] = ~N141;
  assign N141 = N140 | c_i[56];
  assign N140 = a_i[56] | b_i[56];
  assign o[55] = ~N143;
  assign N143 = N142 | c_i[55];
  assign N142 = a_i[55] | b_i[55];
  assign o[54] = ~N145;
  assign N145 = N144 | c_i[54];
  assign N144 = a_i[54] | b_i[54];
  assign o[53] = ~N147;
  assign N147 = N146 | c_i[53];
  assign N146 = a_i[53] | b_i[53];
  assign o[52] = ~N149;
  assign N149 = N148 | c_i[52];
  assign N148 = a_i[52] | b_i[52];
  assign o[51] = ~N151;
  assign N151 = N150 | c_i[51];
  assign N150 = a_i[51] | b_i[51];
  assign o[50] = ~N153;
  assign N153 = N152 | c_i[50];
  assign N152 = a_i[50] | b_i[50];
  assign o[49] = ~N155;
  assign N155 = N154 | c_i[49];
  assign N154 = a_i[49] | b_i[49];
  assign o[48] = ~N157;
  assign N157 = N156 | c_i[48];
  assign N156 = a_i[48] | b_i[48];
  assign o[47] = ~N159;
  assign N159 = N158 | c_i[47];
  assign N158 = a_i[47] | b_i[47];
  assign o[46] = ~N161;
  assign N161 = N160 | c_i[46];
  assign N160 = a_i[46] | b_i[46];
  assign o[45] = ~N163;
  assign N163 = N162 | c_i[45];
  assign N162 = a_i[45] | b_i[45];
  assign o[44] = ~N165;
  assign N165 = N164 | c_i[44];
  assign N164 = a_i[44] | b_i[44];
  assign o[43] = ~N167;
  assign N167 = N166 | c_i[43];
  assign N166 = a_i[43] | b_i[43];
  assign o[42] = ~N169;
  assign N169 = N168 | c_i[42];
  assign N168 = a_i[42] | b_i[42];
  assign o[41] = ~N171;
  assign N171 = N170 | c_i[41];
  assign N170 = a_i[41] | b_i[41];
  assign o[40] = ~N173;
  assign N173 = N172 | c_i[40];
  assign N172 = a_i[40] | b_i[40];
  assign o[39] = ~N175;
  assign N175 = N174 | c_i[39];
  assign N174 = a_i[39] | b_i[39];
  assign o[38] = ~N177;
  assign N177 = N176 | c_i[38];
  assign N176 = a_i[38] | b_i[38];
  assign o[37] = ~N179;
  assign N179 = N178 | c_i[37];
  assign N178 = a_i[37] | b_i[37];
  assign o[36] = ~N181;
  assign N181 = N180 | c_i[36];
  assign N180 = a_i[36] | b_i[36];
  assign o[35] = ~N183;
  assign N183 = N182 | c_i[35];
  assign N182 = a_i[35] | b_i[35];
  assign o[34] = ~N185;
  assign N185 = N184 | c_i[34];
  assign N184 = a_i[34] | b_i[34];
  assign o[33] = ~N187;
  assign N187 = N186 | c_i[33];
  assign N186 = a_i[33] | b_i[33];
  assign o[32] = ~N189;
  assign N189 = N188 | c_i[32];
  assign N188 = a_i[32] | b_i[32];
  assign o[31] = ~N191;
  assign N191 = N190 | c_i[31];
  assign N190 = a_i[31] | b_i[31];
  assign o[30] = ~N193;
  assign N193 = N192 | c_i[30];
  assign N192 = a_i[30] | b_i[30];
  assign o[29] = ~N195;
  assign N195 = N194 | c_i[29];
  assign N194 = a_i[29] | b_i[29];
  assign o[28] = ~N197;
  assign N197 = N196 | c_i[28];
  assign N196 = a_i[28] | b_i[28];
  assign o[27] = ~N199;
  assign N199 = N198 | c_i[27];
  assign N198 = a_i[27] | b_i[27];
  assign o[26] = ~N201;
  assign N201 = N200 | c_i[26];
  assign N200 = a_i[26] | b_i[26];
  assign o[25] = ~N203;
  assign N203 = N202 | c_i[25];
  assign N202 = a_i[25] | b_i[25];
  assign o[24] = ~N205;
  assign N205 = N204 | c_i[24];
  assign N204 = a_i[24] | b_i[24];
  assign o[23] = ~N207;
  assign N207 = N206 | c_i[23];
  assign N206 = a_i[23] | b_i[23];
  assign o[22] = ~N209;
  assign N209 = N208 | c_i[22];
  assign N208 = a_i[22] | b_i[22];
  assign o[21] = ~N211;
  assign N211 = N210 | c_i[21];
  assign N210 = a_i[21] | b_i[21];
  assign o[20] = ~N213;
  assign N213 = N212 | c_i[20];
  assign N212 = a_i[20] | b_i[20];
  assign o[19] = ~N215;
  assign N215 = N214 | c_i[19];
  assign N214 = a_i[19] | b_i[19];
  assign o[18] = ~N217;
  assign N217 = N216 | c_i[18];
  assign N216 = a_i[18] | b_i[18];
  assign o[17] = ~N219;
  assign N219 = N218 | c_i[17];
  assign N218 = a_i[17] | b_i[17];
  assign o[16] = ~N221;
  assign N221 = N220 | c_i[16];
  assign N220 = a_i[16] | b_i[16];
  assign o[15] = ~N223;
  assign N223 = N222 | c_i[15];
  assign N222 = a_i[15] | b_i[15];
  assign o[14] = ~N225;
  assign N225 = N224 | c_i[14];
  assign N224 = a_i[14] | b_i[14];
  assign o[13] = ~N227;
  assign N227 = N226 | c_i[13];
  assign N226 = a_i[13] | b_i[13];
  assign o[12] = ~N229;
  assign N229 = N228 | c_i[12];
  assign N228 = a_i[12] | b_i[12];
  assign o[11] = ~N231;
  assign N231 = N230 | c_i[11];
  assign N230 = a_i[11] | b_i[11];
  assign o[10] = ~N233;
  assign N233 = N232 | c_i[10];
  assign N232 = a_i[10] | b_i[10];
  assign o[9] = ~N235;
  assign N235 = N234 | c_i[9];
  assign N234 = a_i[9] | b_i[9];
  assign o[8] = ~N237;
  assign N237 = N236 | c_i[8];
  assign N236 = a_i[8] | b_i[8];
  assign o[7] = ~N239;
  assign N239 = N238 | c_i[7];
  assign N238 = a_i[7] | b_i[7];
  assign o[6] = ~N241;
  assign N241 = N240 | c_i[6];
  assign N240 = a_i[6] | b_i[6];
  assign o[5] = ~N243;
  assign N243 = N242 | c_i[5];
  assign N242 = a_i[5] | b_i[5];
  assign o[4] = ~N245;
  assign N245 = N244 | c_i[4];
  assign N244 = a_i[4] | b_i[4];
  assign o[3] = ~N247;
  assign N247 = N246 | c_i[3];
  assign N246 = a_i[3] | b_i[3];
  assign o[2] = ~N249;
  assign N249 = N248 | c_i[2];
  assign N248 = a_i[2] | b_i[2];
  assign o[1] = ~N251;
  assign N251 = N250 | c_i[1];
  assign N250 = a_i[1] | b_i[1];
  assign o[0] = ~N253;
  assign N253 = N252 | c_i[0];
  assign N252 = a_i[0] | b_i[0];

endmodule



module bsg_reduce_width_p128_and_p1_harden_p1
(
  i,
  o
);

  input [127:0] i;
  output o;
  wire o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,
  N117,N118,N119,N120,N121,N122,N123,N124,N125;
  assign o = N125 & i[0];
  assign N125 = N124 & i[1];
  assign N124 = N123 & i[2];
  assign N123 = N122 & i[3];
  assign N122 = N121 & i[4];
  assign N121 = N120 & i[5];
  assign N120 = N119 & i[6];
  assign N119 = N118 & i[7];
  assign N118 = N117 & i[8];
  assign N117 = N116 & i[9];
  assign N116 = N115 & i[10];
  assign N115 = N114 & i[11];
  assign N114 = N113 & i[12];
  assign N113 = N112 & i[13];
  assign N112 = N111 & i[14];
  assign N111 = N110 & i[15];
  assign N110 = N109 & i[16];
  assign N109 = N108 & i[17];
  assign N108 = N107 & i[18];
  assign N107 = N106 & i[19];
  assign N106 = N105 & i[20];
  assign N105 = N104 & i[21];
  assign N104 = N103 & i[22];
  assign N103 = N102 & i[23];
  assign N102 = N101 & i[24];
  assign N101 = N100 & i[25];
  assign N100 = N99 & i[26];
  assign N99 = N98 & i[27];
  assign N98 = N97 & i[28];
  assign N97 = N96 & i[29];
  assign N96 = N95 & i[30];
  assign N95 = N94 & i[31];
  assign N94 = N93 & i[32];
  assign N93 = N92 & i[33];
  assign N92 = N91 & i[34];
  assign N91 = N90 & i[35];
  assign N90 = N89 & i[36];
  assign N89 = N88 & i[37];
  assign N88 = N87 & i[38];
  assign N87 = N86 & i[39];
  assign N86 = N85 & i[40];
  assign N85 = N84 & i[41];
  assign N84 = N83 & i[42];
  assign N83 = N82 & i[43];
  assign N82 = N81 & i[44];
  assign N81 = N80 & i[45];
  assign N80 = N79 & i[46];
  assign N79 = N78 & i[47];
  assign N78 = N77 & i[48];
  assign N77 = N76 & i[49];
  assign N76 = N75 & i[50];
  assign N75 = N74 & i[51];
  assign N74 = N73 & i[52];
  assign N73 = N72 & i[53];
  assign N72 = N71 & i[54];
  assign N71 = N70 & i[55];
  assign N70 = N69 & i[56];
  assign N69 = N68 & i[57];
  assign N68 = N67 & i[58];
  assign N67 = N66 & i[59];
  assign N66 = N65 & i[60];
  assign N65 = N64 & i[61];
  assign N64 = N63 & i[62];
  assign N63 = N62 & i[63];
  assign N62 = N61 & i[64];
  assign N61 = N60 & i[65];
  assign N60 = N59 & i[66];
  assign N59 = N58 & i[67];
  assign N58 = N57 & i[68];
  assign N57 = N56 & i[69];
  assign N56 = N55 & i[70];
  assign N55 = N54 & i[71];
  assign N54 = N53 & i[72];
  assign N53 = N52 & i[73];
  assign N52 = N51 & i[74];
  assign N51 = N50 & i[75];
  assign N50 = N49 & i[76];
  assign N49 = N48 & i[77];
  assign N48 = N47 & i[78];
  assign N47 = N46 & i[79];
  assign N46 = N45 & i[80];
  assign N45 = N44 & i[81];
  assign N44 = N43 & i[82];
  assign N43 = N42 & i[83];
  assign N42 = N41 & i[84];
  assign N41 = N40 & i[85];
  assign N40 = N39 & i[86];
  assign N39 = N38 & i[87];
  assign N38 = N37 & i[88];
  assign N37 = N36 & i[89];
  assign N36 = N35 & i[90];
  assign N35 = N34 & i[91];
  assign N34 = N33 & i[92];
  assign N33 = N32 & i[93];
  assign N32 = N31 & i[94];
  assign N31 = N30 & i[95];
  assign N30 = N29 & i[96];
  assign N29 = N28 & i[97];
  assign N28 = N27 & i[98];
  assign N27 = N26 & i[99];
  assign N26 = N25 & i[100];
  assign N25 = N24 & i[101];
  assign N24 = N23 & i[102];
  assign N23 = N22 & i[103];
  assign N22 = N21 & i[104];
  assign N21 = N20 & i[105];
  assign N20 = N19 & i[106];
  assign N19 = N18 & i[107];
  assign N18 = N17 & i[108];
  assign N17 = N16 & i[109];
  assign N16 = N15 & i[110];
  assign N15 = N14 & i[111];
  assign N14 = N13 & i[112];
  assign N13 = N12 & i[113];
  assign N12 = N11 & i[114];
  assign N11 = N10 & i[115];
  assign N10 = N9 & i[116];
  assign N9 = N8 & i[117];
  assign N8 = N7 & i[118];
  assign N7 = N6 & i[119];
  assign N6 = N5 & i[120];
  assign N5 = N4 & i[121];
  assign N4 = N3 & i[122];
  assign N3 = N2 & i[123];
  assign N2 = N1 & i[124];
  assign N1 = N0 & i[125];
  assign N0 = i[127] & i[126];

endmodule



module bsg_buf_width_p1
(
  i,
  o
);

  input [0:0] i;
  output [0:0] o;
  wire [0:0] o;
  assign o[0] = i[0];

endmodule



module bsg_strobe_width_p128_harden_p0
(
  clk_i,
  reset_r_i,
  init_val_r_i,
  strobe_r_o
);

  input [127:0] init_val_r_i;
  input clk_i;
  input reset_r_i;
  output strobe_r_o;
  wire strobe_n,new_val,strobe_n_buf;
  wire [126:0] C_n,C_r;
  wire [127:0] S_r,S_n,S_n_n,C_n_prereset;
  reg strobe_r_o;

  bsg_dff_width_p127_harden_p0_strength_p2
  C_reg
  (
    .clk_i(clk_i),
    .data_i(C_n),
    .data_o(C_r)
  );


  bsg_xnor_width_p128_harden_p1
  xnor_S_n
  (
    .a_i(S_r),
    .b_i({ C_r, 1'b1 }),
    .o(S_n)
  );


  bsg_muxi2_gatestack_width_p128_harden_p1
  muxi2_S_n
  (
    .i0(S_n),
    .i1(init_val_r_i),
    .i2({ new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val }),
    .o(S_n_n)
  );


  bsg_dff_width_p128_harden_p0_strength_p4
  S_reg
  (
    .clk_i(clk_i),
    .data_i(S_n_n),
    .data_o(S_r)
  );


  bsg_nand_width_p128_harden_p1
  nand_C_n
  (
    .a_i(S_r),
    .b_i({ C_r, 1'b1 }),
    .o(C_n_prereset)
  );


  bsg_nor3_width_p127_harden_p1
  nor3_C_n
  (
    .a_i({ strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf }),
    .b_i(C_n_prereset[126:0]),
    .c_i({ reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i }),
    .o(C_n)
  );


  bsg_reduce_width_p128_and_p1_harden_p1
  andr
  (
    .i(S_r),
    .o(strobe_n)
  );


  bsg_buf_width_p1
  strobe_buf_gate
  (
    .i(strobe_n),
    .o(strobe_n_buf)
  );

  assign new_val = reset_r_i | strobe_n;

  always @(posedge clk_i) begin
    if(1'b1) begin
      strobe_r_o <= strobe_n_buf;
    end 
  end


endmodule



module bsg_counter_clock_downsample
(
  clk_i,
  reset_i,
  val_i,
  clk_r_o
);

  input [127:0] val_i;
  input clk_i;
  input reset_i;
  output clk_r_o;
  wire N0,strobe_r,N1,N2,N3,N4,N5,N6,N7,N8;
  reg clk_r_o;

  bsg_strobe_width_p128_harden_p0
  strobe
  (
    .clk_i(clk_i),
    .reset_r_i(reset_i),
    .init_val_r_i(val_i),
    .strobe_r_o(strobe_r)
  );

  assign N5 = (N0)? 1'b1 : 
              (N8)? 1'b1 : 
              (N3)? 1'b0 : 1'b0;
  assign N0 = N1;
  assign N6 = (N0)? 1'b0 : 
              (N8)? N4 : 1'b0;
  assign N1 = reset_i;
  assign N2 = strobe_r | N1;
  assign N3 = ~N2;
  assign N4 = ~clk_r_o;
  assign N7 = ~N1;
  assign N8 = strobe_r & N7;

  always @(posedge clk_i) begin
    if(N5) begin
      clk_r_o <= N6;
    end 
  end


endmodule

