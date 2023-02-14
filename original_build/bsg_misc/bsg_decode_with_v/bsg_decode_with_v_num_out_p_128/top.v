

module top
(
  i,
  v_i,
  o
);

  input [6:0] i;
  output [127:0] o;
  input v_i;

  bsg_decode_with_v
  wrapper
  (
    .i(i),
    .o(o),
    .v_i(v_i)
  );


endmodule



module bsg_decode_num_out_p128
(
  i,
  o
);

  input [6:0] i;
  output [127:0] o;
  wire [127:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule



module bsg_decode_with_v
(
  i,
  v_i,
  o
);

  input [6:0] i;
  output [127:0] o;
  input v_i;
  wire [127:0] o,lo;

  bsg_decode_num_out_p128
  bd
  (
    .i(i),
    .o(lo)
  );

  assign o[127] = v_i & lo[127];
  assign o[126] = v_i & lo[126];
  assign o[125] = v_i & lo[125];
  assign o[124] = v_i & lo[124];
  assign o[123] = v_i & lo[123];
  assign o[122] = v_i & lo[122];
  assign o[121] = v_i & lo[121];
  assign o[120] = v_i & lo[120];
  assign o[119] = v_i & lo[119];
  assign o[118] = v_i & lo[118];
  assign o[117] = v_i & lo[117];
  assign o[116] = v_i & lo[116];
  assign o[115] = v_i & lo[115];
  assign o[114] = v_i & lo[114];
  assign o[113] = v_i & lo[113];
  assign o[112] = v_i & lo[112];
  assign o[111] = v_i & lo[111];
  assign o[110] = v_i & lo[110];
  assign o[109] = v_i & lo[109];
  assign o[108] = v_i & lo[108];
  assign o[107] = v_i & lo[107];
  assign o[106] = v_i & lo[106];
  assign o[105] = v_i & lo[105];
  assign o[104] = v_i & lo[104];
  assign o[103] = v_i & lo[103];
  assign o[102] = v_i & lo[102];
  assign o[101] = v_i & lo[101];
  assign o[100] = v_i & lo[100];
  assign o[99] = v_i & lo[99];
  assign o[98] = v_i & lo[98];
  assign o[97] = v_i & lo[97];
  assign o[96] = v_i & lo[96];
  assign o[95] = v_i & lo[95];
  assign o[94] = v_i & lo[94];
  assign o[93] = v_i & lo[93];
  assign o[92] = v_i & lo[92];
  assign o[91] = v_i & lo[91];
  assign o[90] = v_i & lo[90];
  assign o[89] = v_i & lo[89];
  assign o[88] = v_i & lo[88];
  assign o[87] = v_i & lo[87];
  assign o[86] = v_i & lo[86];
  assign o[85] = v_i & lo[85];
  assign o[84] = v_i & lo[84];
  assign o[83] = v_i & lo[83];
  assign o[82] = v_i & lo[82];
  assign o[81] = v_i & lo[81];
  assign o[80] = v_i & lo[80];
  assign o[79] = v_i & lo[79];
  assign o[78] = v_i & lo[78];
  assign o[77] = v_i & lo[77];
  assign o[76] = v_i & lo[76];
  assign o[75] = v_i & lo[75];
  assign o[74] = v_i & lo[74];
  assign o[73] = v_i & lo[73];
  assign o[72] = v_i & lo[72];
  assign o[71] = v_i & lo[71];
  assign o[70] = v_i & lo[70];
  assign o[69] = v_i & lo[69];
  assign o[68] = v_i & lo[68];
  assign o[67] = v_i & lo[67];
  assign o[66] = v_i & lo[66];
  assign o[65] = v_i & lo[65];
  assign o[64] = v_i & lo[64];
  assign o[63] = v_i & lo[63];
  assign o[62] = v_i & lo[62];
  assign o[61] = v_i & lo[61];
  assign o[60] = v_i & lo[60];
  assign o[59] = v_i & lo[59];
  assign o[58] = v_i & lo[58];
  assign o[57] = v_i & lo[57];
  assign o[56] = v_i & lo[56];
  assign o[55] = v_i & lo[55];
  assign o[54] = v_i & lo[54];
  assign o[53] = v_i & lo[53];
  assign o[52] = v_i & lo[52];
  assign o[51] = v_i & lo[51];
  assign o[50] = v_i & lo[50];
  assign o[49] = v_i & lo[49];
  assign o[48] = v_i & lo[48];
  assign o[47] = v_i & lo[47];
  assign o[46] = v_i & lo[46];
  assign o[45] = v_i & lo[45];
  assign o[44] = v_i & lo[44];
  assign o[43] = v_i & lo[43];
  assign o[42] = v_i & lo[42];
  assign o[41] = v_i & lo[41];
  assign o[40] = v_i & lo[40];
  assign o[39] = v_i & lo[39];
  assign o[38] = v_i & lo[38];
  assign o[37] = v_i & lo[37];
  assign o[36] = v_i & lo[36];
  assign o[35] = v_i & lo[35];
  assign o[34] = v_i & lo[34];
  assign o[33] = v_i & lo[33];
  assign o[32] = v_i & lo[32];
  assign o[31] = v_i & lo[31];
  assign o[30] = v_i & lo[30];
  assign o[29] = v_i & lo[29];
  assign o[28] = v_i & lo[28];
  assign o[27] = v_i & lo[27];
  assign o[26] = v_i & lo[26];
  assign o[25] = v_i & lo[25];
  assign o[24] = v_i & lo[24];
  assign o[23] = v_i & lo[23];
  assign o[22] = v_i & lo[22];
  assign o[21] = v_i & lo[21];
  assign o[20] = v_i & lo[20];
  assign o[19] = v_i & lo[19];
  assign o[18] = v_i & lo[18];
  assign o[17] = v_i & lo[17];
  assign o[16] = v_i & lo[16];
  assign o[15] = v_i & lo[15];
  assign o[14] = v_i & lo[14];
  assign o[13] = v_i & lo[13];
  assign o[12] = v_i & lo[12];
  assign o[11] = v_i & lo[11];
  assign o[10] = v_i & lo[10];
  assign o[9] = v_i & lo[9];
  assign o[8] = v_i & lo[8];
  assign o[7] = v_i & lo[7];
  assign o[6] = v_i & lo[6];
  assign o[5] = v_i & lo[5];
  assign o[4] = v_i & lo[4];
  assign o[3] = v_i & lo[3];
  assign o[2] = v_i & lo[2];
  assign o[1] = v_i & lo[1];
  assign o[0] = v_i & lo[0];

endmodule

