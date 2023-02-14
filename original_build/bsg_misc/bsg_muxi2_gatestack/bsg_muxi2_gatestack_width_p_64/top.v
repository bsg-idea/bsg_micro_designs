

module top
(
  i0,
  i1,
  i2,
  o
);

  input [63:0] i0;
  input [63:0] i1;
  input [63:0] i2;
  output [63:0] o;

  bsg_muxi2_gatestack
  wrapper
  (
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .o(o)
  );


endmodule



module bsg_muxi2_gatestack
(
  i0,
  i1,
  i2,
  o
);

  input [63:0] i0;
  input [63:0] i1;
  input [63:0] i2;
  output [63:0] o;
  wire [63:0] o;
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
  N182,N183,N184,N185,N186,N187,N188,N189,N190,N191;
  assign N65 = (N0)? i1[0] : 
               (N64)? i0[0] : 1'b0;
  assign N0 = i2[0];
  assign N67 = (N1)? i1[1] : 
               (N66)? i0[1] : 1'b0;
  assign N1 = i2[1];
  assign N69 = (N2)? i1[2] : 
               (N68)? i0[2] : 1'b0;
  assign N2 = i2[2];
  assign N71 = (N3)? i1[3] : 
               (N70)? i0[3] : 1'b0;
  assign N3 = i2[3];
  assign N73 = (N4)? i1[4] : 
               (N72)? i0[4] : 1'b0;
  assign N4 = i2[4];
  assign N75 = (N5)? i1[5] : 
               (N74)? i0[5] : 1'b0;
  assign N5 = i2[5];
  assign N77 = (N6)? i1[6] : 
               (N76)? i0[6] : 1'b0;
  assign N6 = i2[6];
  assign N79 = (N7)? i1[7] : 
               (N78)? i0[7] : 1'b0;
  assign N7 = i2[7];
  assign N81 = (N8)? i1[8] : 
               (N80)? i0[8] : 1'b0;
  assign N8 = i2[8];
  assign N83 = (N9)? i1[9] : 
               (N82)? i0[9] : 1'b0;
  assign N9 = i2[9];
  assign N85 = (N10)? i1[10] : 
               (N84)? i0[10] : 1'b0;
  assign N10 = i2[10];
  assign N87 = (N11)? i1[11] : 
               (N86)? i0[11] : 1'b0;
  assign N11 = i2[11];
  assign N89 = (N12)? i1[12] : 
               (N88)? i0[12] : 1'b0;
  assign N12 = i2[12];
  assign N91 = (N13)? i1[13] : 
               (N90)? i0[13] : 1'b0;
  assign N13 = i2[13];
  assign N93 = (N14)? i1[14] : 
               (N92)? i0[14] : 1'b0;
  assign N14 = i2[14];
  assign N95 = (N15)? i1[15] : 
               (N94)? i0[15] : 1'b0;
  assign N15 = i2[15];
  assign N97 = (N16)? i1[16] : 
               (N96)? i0[16] : 1'b0;
  assign N16 = i2[16];
  assign N99 = (N17)? i1[17] : 
               (N98)? i0[17] : 1'b0;
  assign N17 = i2[17];
  assign N101 = (N18)? i1[18] : 
                (N100)? i0[18] : 1'b0;
  assign N18 = i2[18];
  assign N103 = (N19)? i1[19] : 
                (N102)? i0[19] : 1'b0;
  assign N19 = i2[19];
  assign N105 = (N20)? i1[20] : 
                (N104)? i0[20] : 1'b0;
  assign N20 = i2[20];
  assign N107 = (N21)? i1[21] : 
                (N106)? i0[21] : 1'b0;
  assign N21 = i2[21];
  assign N109 = (N22)? i1[22] : 
                (N108)? i0[22] : 1'b0;
  assign N22 = i2[22];
  assign N111 = (N23)? i1[23] : 
                (N110)? i0[23] : 1'b0;
  assign N23 = i2[23];
  assign N113 = (N24)? i1[24] : 
                (N112)? i0[24] : 1'b0;
  assign N24 = i2[24];
  assign N115 = (N25)? i1[25] : 
                (N114)? i0[25] : 1'b0;
  assign N25 = i2[25];
  assign N117 = (N26)? i1[26] : 
                (N116)? i0[26] : 1'b0;
  assign N26 = i2[26];
  assign N119 = (N27)? i1[27] : 
                (N118)? i0[27] : 1'b0;
  assign N27 = i2[27];
  assign N121 = (N28)? i1[28] : 
                (N120)? i0[28] : 1'b0;
  assign N28 = i2[28];
  assign N123 = (N29)? i1[29] : 
                (N122)? i0[29] : 1'b0;
  assign N29 = i2[29];
  assign N125 = (N30)? i1[30] : 
                (N124)? i0[30] : 1'b0;
  assign N30 = i2[30];
  assign N127 = (N31)? i1[31] : 
                (N126)? i0[31] : 1'b0;
  assign N31 = i2[31];
  assign N129 = (N32)? i1[32] : 
                (N128)? i0[32] : 1'b0;
  assign N32 = i2[32];
  assign N131 = (N33)? i1[33] : 
                (N130)? i0[33] : 1'b0;
  assign N33 = i2[33];
  assign N133 = (N34)? i1[34] : 
                (N132)? i0[34] : 1'b0;
  assign N34 = i2[34];
  assign N135 = (N35)? i1[35] : 
                (N134)? i0[35] : 1'b0;
  assign N35 = i2[35];
  assign N137 = (N36)? i1[36] : 
                (N136)? i0[36] : 1'b0;
  assign N36 = i2[36];
  assign N139 = (N37)? i1[37] : 
                (N138)? i0[37] : 1'b0;
  assign N37 = i2[37];
  assign N141 = (N38)? i1[38] : 
                (N140)? i0[38] : 1'b0;
  assign N38 = i2[38];
  assign N143 = (N39)? i1[39] : 
                (N142)? i0[39] : 1'b0;
  assign N39 = i2[39];
  assign N145 = (N40)? i1[40] : 
                (N144)? i0[40] : 1'b0;
  assign N40 = i2[40];
  assign N147 = (N41)? i1[41] : 
                (N146)? i0[41] : 1'b0;
  assign N41 = i2[41];
  assign N149 = (N42)? i1[42] : 
                (N148)? i0[42] : 1'b0;
  assign N42 = i2[42];
  assign N151 = (N43)? i1[43] : 
                (N150)? i0[43] : 1'b0;
  assign N43 = i2[43];
  assign N153 = (N44)? i1[44] : 
                (N152)? i0[44] : 1'b0;
  assign N44 = i2[44];
  assign N155 = (N45)? i1[45] : 
                (N154)? i0[45] : 1'b0;
  assign N45 = i2[45];
  assign N157 = (N46)? i1[46] : 
                (N156)? i0[46] : 1'b0;
  assign N46 = i2[46];
  assign N159 = (N47)? i1[47] : 
                (N158)? i0[47] : 1'b0;
  assign N47 = i2[47];
  assign N161 = (N48)? i1[48] : 
                (N160)? i0[48] : 1'b0;
  assign N48 = i2[48];
  assign N163 = (N49)? i1[49] : 
                (N162)? i0[49] : 1'b0;
  assign N49 = i2[49];
  assign N165 = (N50)? i1[50] : 
                (N164)? i0[50] : 1'b0;
  assign N50 = i2[50];
  assign N167 = (N51)? i1[51] : 
                (N166)? i0[51] : 1'b0;
  assign N51 = i2[51];
  assign N169 = (N52)? i1[52] : 
                (N168)? i0[52] : 1'b0;
  assign N52 = i2[52];
  assign N171 = (N53)? i1[53] : 
                (N170)? i0[53] : 1'b0;
  assign N53 = i2[53];
  assign N173 = (N54)? i1[54] : 
                (N172)? i0[54] : 1'b0;
  assign N54 = i2[54];
  assign N175 = (N55)? i1[55] : 
                (N174)? i0[55] : 1'b0;
  assign N55 = i2[55];
  assign N177 = (N56)? i1[56] : 
                (N176)? i0[56] : 1'b0;
  assign N56 = i2[56];
  assign N179 = (N57)? i1[57] : 
                (N178)? i0[57] : 1'b0;
  assign N57 = i2[57];
  assign N181 = (N58)? i1[58] : 
                (N180)? i0[58] : 1'b0;
  assign N58 = i2[58];
  assign N183 = (N59)? i1[59] : 
                (N182)? i0[59] : 1'b0;
  assign N59 = i2[59];
  assign N185 = (N60)? i1[60] : 
                (N184)? i0[60] : 1'b0;
  assign N60 = i2[60];
  assign N187 = (N61)? i1[61] : 
                (N186)? i0[61] : 1'b0;
  assign N61 = i2[61];
  assign N189 = (N62)? i1[62] : 
                (N188)? i0[62] : 1'b0;
  assign N62 = i2[62];
  assign N191 = (N63)? i1[63] : 
                (N190)? i0[63] : 1'b0;
  assign N63 = i2[63];
  assign N64 = ~i2[0];
  assign o[0] = ~N65;
  assign N66 = ~i2[1];
  assign o[1] = ~N67;
  assign N68 = ~i2[2];
  assign o[2] = ~N69;
  assign N70 = ~i2[3];
  assign o[3] = ~N71;
  assign N72 = ~i2[4];
  assign o[4] = ~N73;
  assign N74 = ~i2[5];
  assign o[5] = ~N75;
  assign N76 = ~i2[6];
  assign o[6] = ~N77;
  assign N78 = ~i2[7];
  assign o[7] = ~N79;
  assign N80 = ~i2[8];
  assign o[8] = ~N81;
  assign N82 = ~i2[9];
  assign o[9] = ~N83;
  assign N84 = ~i2[10];
  assign o[10] = ~N85;
  assign N86 = ~i2[11];
  assign o[11] = ~N87;
  assign N88 = ~i2[12];
  assign o[12] = ~N89;
  assign N90 = ~i2[13];
  assign o[13] = ~N91;
  assign N92 = ~i2[14];
  assign o[14] = ~N93;
  assign N94 = ~i2[15];
  assign o[15] = ~N95;
  assign N96 = ~i2[16];
  assign o[16] = ~N97;
  assign N98 = ~i2[17];
  assign o[17] = ~N99;
  assign N100 = ~i2[18];
  assign o[18] = ~N101;
  assign N102 = ~i2[19];
  assign o[19] = ~N103;
  assign N104 = ~i2[20];
  assign o[20] = ~N105;
  assign N106 = ~i2[21];
  assign o[21] = ~N107;
  assign N108 = ~i2[22];
  assign o[22] = ~N109;
  assign N110 = ~i2[23];
  assign o[23] = ~N111;
  assign N112 = ~i2[24];
  assign o[24] = ~N113;
  assign N114 = ~i2[25];
  assign o[25] = ~N115;
  assign N116 = ~i2[26];
  assign o[26] = ~N117;
  assign N118 = ~i2[27];
  assign o[27] = ~N119;
  assign N120 = ~i2[28];
  assign o[28] = ~N121;
  assign N122 = ~i2[29];
  assign o[29] = ~N123;
  assign N124 = ~i2[30];
  assign o[30] = ~N125;
  assign N126 = ~i2[31];
  assign o[31] = ~N127;
  assign N128 = ~i2[32];
  assign o[32] = ~N129;
  assign N130 = ~i2[33];
  assign o[33] = ~N131;
  assign N132 = ~i2[34];
  assign o[34] = ~N133;
  assign N134 = ~i2[35];
  assign o[35] = ~N135;
  assign N136 = ~i2[36];
  assign o[36] = ~N137;
  assign N138 = ~i2[37];
  assign o[37] = ~N139;
  assign N140 = ~i2[38];
  assign o[38] = ~N141;
  assign N142 = ~i2[39];
  assign o[39] = ~N143;
  assign N144 = ~i2[40];
  assign o[40] = ~N145;
  assign N146 = ~i2[41];
  assign o[41] = ~N147;
  assign N148 = ~i2[42];
  assign o[42] = ~N149;
  assign N150 = ~i2[43];
  assign o[43] = ~N151;
  assign N152 = ~i2[44];
  assign o[44] = ~N153;
  assign N154 = ~i2[45];
  assign o[45] = ~N155;
  assign N156 = ~i2[46];
  assign o[46] = ~N157;
  assign N158 = ~i2[47];
  assign o[47] = ~N159;
  assign N160 = ~i2[48];
  assign o[48] = ~N161;
  assign N162 = ~i2[49];
  assign o[49] = ~N163;
  assign N164 = ~i2[50];
  assign o[50] = ~N165;
  assign N166 = ~i2[51];
  assign o[51] = ~N167;
  assign N168 = ~i2[52];
  assign o[52] = ~N169;
  assign N170 = ~i2[53];
  assign o[53] = ~N171;
  assign N172 = ~i2[54];
  assign o[54] = ~N173;
  assign N174 = ~i2[55];
  assign o[55] = ~N175;
  assign N176 = ~i2[56];
  assign o[56] = ~N177;
  assign N178 = ~i2[57];
  assign o[57] = ~N179;
  assign N180 = ~i2[58];
  assign o[58] = ~N181;
  assign N182 = ~i2[59];
  assign o[59] = ~N183;
  assign N184 = ~i2[60];
  assign o[60] = ~N185;
  assign N186 = ~i2[61];
  assign o[61] = ~N187;
  assign N188 = ~i2[62];
  assign o[62] = ~N189;
  assign N190 = ~i2[63];
  assign o[63] = ~N191;

endmodule

