

module top
(
  a_i,
  b_i,
  o
);

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] o;

  bsg_xnor
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .o(o)
  );


endmodule



module bsg_xnor
(
  a_i,
  b_i,
  o
);

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] o;
  wire [63:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63;
  assign o[63] = ~N0;
  assign N0 = a_i[63] ^ b_i[63];
  assign o[62] = ~N1;
  assign N1 = a_i[62] ^ b_i[62];
  assign o[61] = ~N2;
  assign N2 = a_i[61] ^ b_i[61];
  assign o[60] = ~N3;
  assign N3 = a_i[60] ^ b_i[60];
  assign o[59] = ~N4;
  assign N4 = a_i[59] ^ b_i[59];
  assign o[58] = ~N5;
  assign N5 = a_i[58] ^ b_i[58];
  assign o[57] = ~N6;
  assign N6 = a_i[57] ^ b_i[57];
  assign o[56] = ~N7;
  assign N7 = a_i[56] ^ b_i[56];
  assign o[55] = ~N8;
  assign N8 = a_i[55] ^ b_i[55];
  assign o[54] = ~N9;
  assign N9 = a_i[54] ^ b_i[54];
  assign o[53] = ~N10;
  assign N10 = a_i[53] ^ b_i[53];
  assign o[52] = ~N11;
  assign N11 = a_i[52] ^ b_i[52];
  assign o[51] = ~N12;
  assign N12 = a_i[51] ^ b_i[51];
  assign o[50] = ~N13;
  assign N13 = a_i[50] ^ b_i[50];
  assign o[49] = ~N14;
  assign N14 = a_i[49] ^ b_i[49];
  assign o[48] = ~N15;
  assign N15 = a_i[48] ^ b_i[48];
  assign o[47] = ~N16;
  assign N16 = a_i[47] ^ b_i[47];
  assign o[46] = ~N17;
  assign N17 = a_i[46] ^ b_i[46];
  assign o[45] = ~N18;
  assign N18 = a_i[45] ^ b_i[45];
  assign o[44] = ~N19;
  assign N19 = a_i[44] ^ b_i[44];
  assign o[43] = ~N20;
  assign N20 = a_i[43] ^ b_i[43];
  assign o[42] = ~N21;
  assign N21 = a_i[42] ^ b_i[42];
  assign o[41] = ~N22;
  assign N22 = a_i[41] ^ b_i[41];
  assign o[40] = ~N23;
  assign N23 = a_i[40] ^ b_i[40];
  assign o[39] = ~N24;
  assign N24 = a_i[39] ^ b_i[39];
  assign o[38] = ~N25;
  assign N25 = a_i[38] ^ b_i[38];
  assign o[37] = ~N26;
  assign N26 = a_i[37] ^ b_i[37];
  assign o[36] = ~N27;
  assign N27 = a_i[36] ^ b_i[36];
  assign o[35] = ~N28;
  assign N28 = a_i[35] ^ b_i[35];
  assign o[34] = ~N29;
  assign N29 = a_i[34] ^ b_i[34];
  assign o[33] = ~N30;
  assign N30 = a_i[33] ^ b_i[33];
  assign o[32] = ~N31;
  assign N31 = a_i[32] ^ b_i[32];
  assign o[31] = ~N32;
  assign N32 = a_i[31] ^ b_i[31];
  assign o[30] = ~N33;
  assign N33 = a_i[30] ^ b_i[30];
  assign o[29] = ~N34;
  assign N34 = a_i[29] ^ b_i[29];
  assign o[28] = ~N35;
  assign N35 = a_i[28] ^ b_i[28];
  assign o[27] = ~N36;
  assign N36 = a_i[27] ^ b_i[27];
  assign o[26] = ~N37;
  assign N37 = a_i[26] ^ b_i[26];
  assign o[25] = ~N38;
  assign N38 = a_i[25] ^ b_i[25];
  assign o[24] = ~N39;
  assign N39 = a_i[24] ^ b_i[24];
  assign o[23] = ~N40;
  assign N40 = a_i[23] ^ b_i[23];
  assign o[22] = ~N41;
  assign N41 = a_i[22] ^ b_i[22];
  assign o[21] = ~N42;
  assign N42 = a_i[21] ^ b_i[21];
  assign o[20] = ~N43;
  assign N43 = a_i[20] ^ b_i[20];
  assign o[19] = ~N44;
  assign N44 = a_i[19] ^ b_i[19];
  assign o[18] = ~N45;
  assign N45 = a_i[18] ^ b_i[18];
  assign o[17] = ~N46;
  assign N46 = a_i[17] ^ b_i[17];
  assign o[16] = ~N47;
  assign N47 = a_i[16] ^ b_i[16];
  assign o[15] = ~N48;
  assign N48 = a_i[15] ^ b_i[15];
  assign o[14] = ~N49;
  assign N49 = a_i[14] ^ b_i[14];
  assign o[13] = ~N50;
  assign N50 = a_i[13] ^ b_i[13];
  assign o[12] = ~N51;
  assign N51 = a_i[12] ^ b_i[12];
  assign o[11] = ~N52;
  assign N52 = a_i[11] ^ b_i[11];
  assign o[10] = ~N53;
  assign N53 = a_i[10] ^ b_i[10];
  assign o[9] = ~N54;
  assign N54 = a_i[9] ^ b_i[9];
  assign o[8] = ~N55;
  assign N55 = a_i[8] ^ b_i[8];
  assign o[7] = ~N56;
  assign N56 = a_i[7] ^ b_i[7];
  assign o[6] = ~N57;
  assign N57 = a_i[6] ^ b_i[6];
  assign o[5] = ~N58;
  assign N58 = a_i[5] ^ b_i[5];
  assign o[4] = ~N59;
  assign N59 = a_i[4] ^ b_i[4];
  assign o[3] = ~N60;
  assign N60 = a_i[3] ^ b_i[3];
  assign o[2] = ~N61;
  assign N61 = a_i[2] ^ b_i[2];
  assign o[1] = ~N62;
  assign N62 = a_i[1] ^ b_i[1];
  assign o[0] = ~N63;
  assign N63 = a_i[0] ^ b_i[0];

endmodule

