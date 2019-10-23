

module top
(
  a_i,
  b_i,
  c_i,
  o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] c_i;
  output [63:0] o;

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

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] c_i;
  output [63:0] o;
  wire [63:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127;
  assign o[63] = ~N1;
  assign N1 = N0 | c_i[63];
  assign N0 = a_i[63] | b_i[63];
  assign o[62] = ~N3;
  assign N3 = N2 | c_i[62];
  assign N2 = a_i[62] | b_i[62];
  assign o[61] = ~N5;
  assign N5 = N4 | c_i[61];
  assign N4 = a_i[61] | b_i[61];
  assign o[60] = ~N7;
  assign N7 = N6 | c_i[60];
  assign N6 = a_i[60] | b_i[60];
  assign o[59] = ~N9;
  assign N9 = N8 | c_i[59];
  assign N8 = a_i[59] | b_i[59];
  assign o[58] = ~N11;
  assign N11 = N10 | c_i[58];
  assign N10 = a_i[58] | b_i[58];
  assign o[57] = ~N13;
  assign N13 = N12 | c_i[57];
  assign N12 = a_i[57] | b_i[57];
  assign o[56] = ~N15;
  assign N15 = N14 | c_i[56];
  assign N14 = a_i[56] | b_i[56];
  assign o[55] = ~N17;
  assign N17 = N16 | c_i[55];
  assign N16 = a_i[55] | b_i[55];
  assign o[54] = ~N19;
  assign N19 = N18 | c_i[54];
  assign N18 = a_i[54] | b_i[54];
  assign o[53] = ~N21;
  assign N21 = N20 | c_i[53];
  assign N20 = a_i[53] | b_i[53];
  assign o[52] = ~N23;
  assign N23 = N22 | c_i[52];
  assign N22 = a_i[52] | b_i[52];
  assign o[51] = ~N25;
  assign N25 = N24 | c_i[51];
  assign N24 = a_i[51] | b_i[51];
  assign o[50] = ~N27;
  assign N27 = N26 | c_i[50];
  assign N26 = a_i[50] | b_i[50];
  assign o[49] = ~N29;
  assign N29 = N28 | c_i[49];
  assign N28 = a_i[49] | b_i[49];
  assign o[48] = ~N31;
  assign N31 = N30 | c_i[48];
  assign N30 = a_i[48] | b_i[48];
  assign o[47] = ~N33;
  assign N33 = N32 | c_i[47];
  assign N32 = a_i[47] | b_i[47];
  assign o[46] = ~N35;
  assign N35 = N34 | c_i[46];
  assign N34 = a_i[46] | b_i[46];
  assign o[45] = ~N37;
  assign N37 = N36 | c_i[45];
  assign N36 = a_i[45] | b_i[45];
  assign o[44] = ~N39;
  assign N39 = N38 | c_i[44];
  assign N38 = a_i[44] | b_i[44];
  assign o[43] = ~N41;
  assign N41 = N40 | c_i[43];
  assign N40 = a_i[43] | b_i[43];
  assign o[42] = ~N43;
  assign N43 = N42 | c_i[42];
  assign N42 = a_i[42] | b_i[42];
  assign o[41] = ~N45;
  assign N45 = N44 | c_i[41];
  assign N44 = a_i[41] | b_i[41];
  assign o[40] = ~N47;
  assign N47 = N46 | c_i[40];
  assign N46 = a_i[40] | b_i[40];
  assign o[39] = ~N49;
  assign N49 = N48 | c_i[39];
  assign N48 = a_i[39] | b_i[39];
  assign o[38] = ~N51;
  assign N51 = N50 | c_i[38];
  assign N50 = a_i[38] | b_i[38];
  assign o[37] = ~N53;
  assign N53 = N52 | c_i[37];
  assign N52 = a_i[37] | b_i[37];
  assign o[36] = ~N55;
  assign N55 = N54 | c_i[36];
  assign N54 = a_i[36] | b_i[36];
  assign o[35] = ~N57;
  assign N57 = N56 | c_i[35];
  assign N56 = a_i[35] | b_i[35];
  assign o[34] = ~N59;
  assign N59 = N58 | c_i[34];
  assign N58 = a_i[34] | b_i[34];
  assign o[33] = ~N61;
  assign N61 = N60 | c_i[33];
  assign N60 = a_i[33] | b_i[33];
  assign o[32] = ~N63;
  assign N63 = N62 | c_i[32];
  assign N62 = a_i[32] | b_i[32];
  assign o[31] = ~N65;
  assign N65 = N64 | c_i[31];
  assign N64 = a_i[31] | b_i[31];
  assign o[30] = ~N67;
  assign N67 = N66 | c_i[30];
  assign N66 = a_i[30] | b_i[30];
  assign o[29] = ~N69;
  assign N69 = N68 | c_i[29];
  assign N68 = a_i[29] | b_i[29];
  assign o[28] = ~N71;
  assign N71 = N70 | c_i[28];
  assign N70 = a_i[28] | b_i[28];
  assign o[27] = ~N73;
  assign N73 = N72 | c_i[27];
  assign N72 = a_i[27] | b_i[27];
  assign o[26] = ~N75;
  assign N75 = N74 | c_i[26];
  assign N74 = a_i[26] | b_i[26];
  assign o[25] = ~N77;
  assign N77 = N76 | c_i[25];
  assign N76 = a_i[25] | b_i[25];
  assign o[24] = ~N79;
  assign N79 = N78 | c_i[24];
  assign N78 = a_i[24] | b_i[24];
  assign o[23] = ~N81;
  assign N81 = N80 | c_i[23];
  assign N80 = a_i[23] | b_i[23];
  assign o[22] = ~N83;
  assign N83 = N82 | c_i[22];
  assign N82 = a_i[22] | b_i[22];
  assign o[21] = ~N85;
  assign N85 = N84 | c_i[21];
  assign N84 = a_i[21] | b_i[21];
  assign o[20] = ~N87;
  assign N87 = N86 | c_i[20];
  assign N86 = a_i[20] | b_i[20];
  assign o[19] = ~N89;
  assign N89 = N88 | c_i[19];
  assign N88 = a_i[19] | b_i[19];
  assign o[18] = ~N91;
  assign N91 = N90 | c_i[18];
  assign N90 = a_i[18] | b_i[18];
  assign o[17] = ~N93;
  assign N93 = N92 | c_i[17];
  assign N92 = a_i[17] | b_i[17];
  assign o[16] = ~N95;
  assign N95 = N94 | c_i[16];
  assign N94 = a_i[16] | b_i[16];
  assign o[15] = ~N97;
  assign N97 = N96 | c_i[15];
  assign N96 = a_i[15] | b_i[15];
  assign o[14] = ~N99;
  assign N99 = N98 | c_i[14];
  assign N98 = a_i[14] | b_i[14];
  assign o[13] = ~N101;
  assign N101 = N100 | c_i[13];
  assign N100 = a_i[13] | b_i[13];
  assign o[12] = ~N103;
  assign N103 = N102 | c_i[12];
  assign N102 = a_i[12] | b_i[12];
  assign o[11] = ~N105;
  assign N105 = N104 | c_i[11];
  assign N104 = a_i[11] | b_i[11];
  assign o[10] = ~N107;
  assign N107 = N106 | c_i[10];
  assign N106 = a_i[10] | b_i[10];
  assign o[9] = ~N109;
  assign N109 = N108 | c_i[9];
  assign N108 = a_i[9] | b_i[9];
  assign o[8] = ~N111;
  assign N111 = N110 | c_i[8];
  assign N110 = a_i[8] | b_i[8];
  assign o[7] = ~N113;
  assign N113 = N112 | c_i[7];
  assign N112 = a_i[7] | b_i[7];
  assign o[6] = ~N115;
  assign N115 = N114 | c_i[6];
  assign N114 = a_i[6] | b_i[6];
  assign o[5] = ~N117;
  assign N117 = N116 | c_i[5];
  assign N116 = a_i[5] | b_i[5];
  assign o[4] = ~N119;
  assign N119 = N118 | c_i[4];
  assign N118 = a_i[4] | b_i[4];
  assign o[3] = ~N121;
  assign N121 = N120 | c_i[3];
  assign N120 = a_i[3] | b_i[3];
  assign o[2] = ~N123;
  assign N123 = N122 | c_i[2];
  assign N122 = a_i[2] | b_i[2];
  assign o[1] = ~N125;
  assign N125 = N124 | c_i[1];
  assign N124 = a_i[1] | b_i[1];
  assign o[0] = ~N127;
  assign N127 = N126 | c_i[0];
  assign N126 = a_i[0] | b_i[0];

endmodule

