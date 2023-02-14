

module top
(
  data_i,
  sel_i,
  data_o
);

  input [127:0] data_i;
  input [0:0] sel_i;
  output [127:0] data_o;

  bsg_mux
  wrapper
  (
    .data_i(data_i),
    .sel_i(sel_i),
    .data_o(data_o)
  );


endmodule



module bsg_mux
(
  data_i,
  sel_i,
  data_o
);

  input [127:0] data_i;
  input [0:0] sel_i;
  output [127:0] data_o;
  wire [127:0] data_o;
  assign data_o[127] = data_i[127];
  assign data_o[126] = data_i[126];
  assign data_o[125] = data_i[125];
  assign data_o[124] = data_i[124];
  assign data_o[123] = data_i[123];
  assign data_o[122] = data_i[122];
  assign data_o[121] = data_i[121];
  assign data_o[120] = data_i[120];
  assign data_o[119] = data_i[119];
  assign data_o[118] = data_i[118];
  assign data_o[117] = data_i[117];
  assign data_o[116] = data_i[116];
  assign data_o[115] = data_i[115];
  assign data_o[114] = data_i[114];
  assign data_o[113] = data_i[113];
  assign data_o[112] = data_i[112];
  assign data_o[111] = data_i[111];
  assign data_o[110] = data_i[110];
  assign data_o[109] = data_i[109];
  assign data_o[108] = data_i[108];
  assign data_o[107] = data_i[107];
  assign data_o[106] = data_i[106];
  assign data_o[105] = data_i[105];
  assign data_o[104] = data_i[104];
  assign data_o[103] = data_i[103];
  assign data_o[102] = data_i[102];
  assign data_o[101] = data_i[101];
  assign data_o[100] = data_i[100];
  assign data_o[99] = data_i[99];
  assign data_o[98] = data_i[98];
  assign data_o[97] = data_i[97];
  assign data_o[96] = data_i[96];
  assign data_o[95] = data_i[95];
  assign data_o[94] = data_i[94];
  assign data_o[93] = data_i[93];
  assign data_o[92] = data_i[92];
  assign data_o[91] = data_i[91];
  assign data_o[90] = data_i[90];
  assign data_o[89] = data_i[89];
  assign data_o[88] = data_i[88];
  assign data_o[87] = data_i[87];
  assign data_o[86] = data_i[86];
  assign data_o[85] = data_i[85];
  assign data_o[84] = data_i[84];
  assign data_o[83] = data_i[83];
  assign data_o[82] = data_i[82];
  assign data_o[81] = data_i[81];
  assign data_o[80] = data_i[80];
  assign data_o[79] = data_i[79];
  assign data_o[78] = data_i[78];
  assign data_o[77] = data_i[77];
  assign data_o[76] = data_i[76];
  assign data_o[75] = data_i[75];
  assign data_o[74] = data_i[74];
  assign data_o[73] = data_i[73];
  assign data_o[72] = data_i[72];
  assign data_o[71] = data_i[71];
  assign data_o[70] = data_i[70];
  assign data_o[69] = data_i[69];
  assign data_o[68] = data_i[68];
  assign data_o[67] = data_i[67];
  assign data_o[66] = data_i[66];
  assign data_o[65] = data_i[65];
  assign data_o[64] = data_i[64];
  assign data_o[63] = data_i[63];
  assign data_o[62] = data_i[62];
  assign data_o[61] = data_i[61];
  assign data_o[60] = data_i[60];
  assign data_o[59] = data_i[59];
  assign data_o[58] = data_i[58];
  assign data_o[57] = data_i[57];
  assign data_o[56] = data_i[56];
  assign data_o[55] = data_i[55];
  assign data_o[54] = data_i[54];
  assign data_o[53] = data_i[53];
  assign data_o[52] = data_i[52];
  assign data_o[51] = data_i[51];
  assign data_o[50] = data_i[50];
  assign data_o[49] = data_i[49];
  assign data_o[48] = data_i[48];
  assign data_o[47] = data_i[47];
  assign data_o[46] = data_i[46];
  assign data_o[45] = data_i[45];
  assign data_o[44] = data_i[44];
  assign data_o[43] = data_i[43];
  assign data_o[42] = data_i[42];
  assign data_o[41] = data_i[41];
  assign data_o[40] = data_i[40];
  assign data_o[39] = data_i[39];
  assign data_o[38] = data_i[38];
  assign data_o[37] = data_i[37];
  assign data_o[36] = data_i[36];
  assign data_o[35] = data_i[35];
  assign data_o[34] = data_i[34];
  assign data_o[33] = data_i[33];
  assign data_o[32] = data_i[32];
  assign data_o[31] = data_i[31];
  assign data_o[30] = data_i[30];
  assign data_o[29] = data_i[29];
  assign data_o[28] = data_i[28];
  assign data_o[27] = data_i[27];
  assign data_o[26] = data_i[26];
  assign data_o[25] = data_i[25];
  assign data_o[24] = data_i[24];
  assign data_o[23] = data_i[23];
  assign data_o[22] = data_i[22];
  assign data_o[21] = data_i[21];
  assign data_o[20] = data_i[20];
  assign data_o[19] = data_i[19];
  assign data_o[18] = data_i[18];
  assign data_o[17] = data_i[17];
  assign data_o[16] = data_i[16];
  assign data_o[15] = data_i[15];
  assign data_o[14] = data_i[14];
  assign data_o[13] = data_i[13];
  assign data_o[12] = data_i[12];
  assign data_o[11] = data_i[11];
  assign data_o[10] = data_i[10];
  assign data_o[9] = data_i[9];
  assign data_o[8] = data_i[8];
  assign data_o[7] = data_i[7];
  assign data_o[6] = data_i[6];
  assign data_o[5] = data_i[5];
  assign data_o[4] = data_i[4];
  assign data_o[3] = data_i[3];
  assign data_o[2] = data_i[2];
  assign data_o[1] = data_i[1];
  assign data_o[0] = data_i[0];

endmodule

