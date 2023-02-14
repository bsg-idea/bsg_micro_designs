

module top
(
  a_i,
  b_i,
  o
);

  input [127:0] a_i;
  input [127:0] b_i;
  output [127:0] o;

  bsg_xor
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .o(o)
  );


endmodule



module bsg_xor
(
  a_i,
  b_i,
  o
);

  input [127:0] a_i;
  input [127:0] b_i;
  output [127:0] o;
  wire [127:0] o;
  assign o[127] = a_i[127] ^ b_i[127];
  assign o[126] = a_i[126] ^ b_i[126];
  assign o[125] = a_i[125] ^ b_i[125];
  assign o[124] = a_i[124] ^ b_i[124];
  assign o[123] = a_i[123] ^ b_i[123];
  assign o[122] = a_i[122] ^ b_i[122];
  assign o[121] = a_i[121] ^ b_i[121];
  assign o[120] = a_i[120] ^ b_i[120];
  assign o[119] = a_i[119] ^ b_i[119];
  assign o[118] = a_i[118] ^ b_i[118];
  assign o[117] = a_i[117] ^ b_i[117];
  assign o[116] = a_i[116] ^ b_i[116];
  assign o[115] = a_i[115] ^ b_i[115];
  assign o[114] = a_i[114] ^ b_i[114];
  assign o[113] = a_i[113] ^ b_i[113];
  assign o[112] = a_i[112] ^ b_i[112];
  assign o[111] = a_i[111] ^ b_i[111];
  assign o[110] = a_i[110] ^ b_i[110];
  assign o[109] = a_i[109] ^ b_i[109];
  assign o[108] = a_i[108] ^ b_i[108];
  assign o[107] = a_i[107] ^ b_i[107];
  assign o[106] = a_i[106] ^ b_i[106];
  assign o[105] = a_i[105] ^ b_i[105];
  assign o[104] = a_i[104] ^ b_i[104];
  assign o[103] = a_i[103] ^ b_i[103];
  assign o[102] = a_i[102] ^ b_i[102];
  assign o[101] = a_i[101] ^ b_i[101];
  assign o[100] = a_i[100] ^ b_i[100];
  assign o[99] = a_i[99] ^ b_i[99];
  assign o[98] = a_i[98] ^ b_i[98];
  assign o[97] = a_i[97] ^ b_i[97];
  assign o[96] = a_i[96] ^ b_i[96];
  assign o[95] = a_i[95] ^ b_i[95];
  assign o[94] = a_i[94] ^ b_i[94];
  assign o[93] = a_i[93] ^ b_i[93];
  assign o[92] = a_i[92] ^ b_i[92];
  assign o[91] = a_i[91] ^ b_i[91];
  assign o[90] = a_i[90] ^ b_i[90];
  assign o[89] = a_i[89] ^ b_i[89];
  assign o[88] = a_i[88] ^ b_i[88];
  assign o[87] = a_i[87] ^ b_i[87];
  assign o[86] = a_i[86] ^ b_i[86];
  assign o[85] = a_i[85] ^ b_i[85];
  assign o[84] = a_i[84] ^ b_i[84];
  assign o[83] = a_i[83] ^ b_i[83];
  assign o[82] = a_i[82] ^ b_i[82];
  assign o[81] = a_i[81] ^ b_i[81];
  assign o[80] = a_i[80] ^ b_i[80];
  assign o[79] = a_i[79] ^ b_i[79];
  assign o[78] = a_i[78] ^ b_i[78];
  assign o[77] = a_i[77] ^ b_i[77];
  assign o[76] = a_i[76] ^ b_i[76];
  assign o[75] = a_i[75] ^ b_i[75];
  assign o[74] = a_i[74] ^ b_i[74];
  assign o[73] = a_i[73] ^ b_i[73];
  assign o[72] = a_i[72] ^ b_i[72];
  assign o[71] = a_i[71] ^ b_i[71];
  assign o[70] = a_i[70] ^ b_i[70];
  assign o[69] = a_i[69] ^ b_i[69];
  assign o[68] = a_i[68] ^ b_i[68];
  assign o[67] = a_i[67] ^ b_i[67];
  assign o[66] = a_i[66] ^ b_i[66];
  assign o[65] = a_i[65] ^ b_i[65];
  assign o[64] = a_i[64] ^ b_i[64];
  assign o[63] = a_i[63] ^ b_i[63];
  assign o[62] = a_i[62] ^ b_i[62];
  assign o[61] = a_i[61] ^ b_i[61];
  assign o[60] = a_i[60] ^ b_i[60];
  assign o[59] = a_i[59] ^ b_i[59];
  assign o[58] = a_i[58] ^ b_i[58];
  assign o[57] = a_i[57] ^ b_i[57];
  assign o[56] = a_i[56] ^ b_i[56];
  assign o[55] = a_i[55] ^ b_i[55];
  assign o[54] = a_i[54] ^ b_i[54];
  assign o[53] = a_i[53] ^ b_i[53];
  assign o[52] = a_i[52] ^ b_i[52];
  assign o[51] = a_i[51] ^ b_i[51];
  assign o[50] = a_i[50] ^ b_i[50];
  assign o[49] = a_i[49] ^ b_i[49];
  assign o[48] = a_i[48] ^ b_i[48];
  assign o[47] = a_i[47] ^ b_i[47];
  assign o[46] = a_i[46] ^ b_i[46];
  assign o[45] = a_i[45] ^ b_i[45];
  assign o[44] = a_i[44] ^ b_i[44];
  assign o[43] = a_i[43] ^ b_i[43];
  assign o[42] = a_i[42] ^ b_i[42];
  assign o[41] = a_i[41] ^ b_i[41];
  assign o[40] = a_i[40] ^ b_i[40];
  assign o[39] = a_i[39] ^ b_i[39];
  assign o[38] = a_i[38] ^ b_i[38];
  assign o[37] = a_i[37] ^ b_i[37];
  assign o[36] = a_i[36] ^ b_i[36];
  assign o[35] = a_i[35] ^ b_i[35];
  assign o[34] = a_i[34] ^ b_i[34];
  assign o[33] = a_i[33] ^ b_i[33];
  assign o[32] = a_i[32] ^ b_i[32];
  assign o[31] = a_i[31] ^ b_i[31];
  assign o[30] = a_i[30] ^ b_i[30];
  assign o[29] = a_i[29] ^ b_i[29];
  assign o[28] = a_i[28] ^ b_i[28];
  assign o[27] = a_i[27] ^ b_i[27];
  assign o[26] = a_i[26] ^ b_i[26];
  assign o[25] = a_i[25] ^ b_i[25];
  assign o[24] = a_i[24] ^ b_i[24];
  assign o[23] = a_i[23] ^ b_i[23];
  assign o[22] = a_i[22] ^ b_i[22];
  assign o[21] = a_i[21] ^ b_i[21];
  assign o[20] = a_i[20] ^ b_i[20];
  assign o[19] = a_i[19] ^ b_i[19];
  assign o[18] = a_i[18] ^ b_i[18];
  assign o[17] = a_i[17] ^ b_i[17];
  assign o[16] = a_i[16] ^ b_i[16];
  assign o[15] = a_i[15] ^ b_i[15];
  assign o[14] = a_i[14] ^ b_i[14];
  assign o[13] = a_i[13] ^ b_i[13];
  assign o[12] = a_i[12] ^ b_i[12];
  assign o[11] = a_i[11] ^ b_i[11];
  assign o[10] = a_i[10] ^ b_i[10];
  assign o[9] = a_i[9] ^ b_i[9];
  assign o[8] = a_i[8] ^ b_i[8];
  assign o[7] = a_i[7] ^ b_i[7];
  assign o[6] = a_i[6] ^ b_i[6];
  assign o[5] = a_i[5] ^ b_i[5];
  assign o[4] = a_i[4] ^ b_i[4];
  assign o[3] = a_i[3] ^ b_i[3];
  assign o[2] = a_i[2] ^ b_i[2];
  assign o[1] = a_i[1] ^ b_i[1];
  assign o[0] = a_i[0] ^ b_i[0];

endmodule

