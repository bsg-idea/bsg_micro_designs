

module top
(
  v_i,
  fc_o,
  v_o,
  fc_i
);

  input [127:0] v_i;
  output [127:0] fc_o;
  output [127:0] v_o;
  input [127:0] fc_i;

  bsg_flow_convert
  wrapper
  (
    .v_i(v_i),
    .fc_o(fc_o),
    .v_o(v_o),
    .fc_i(fc_i)
  );


endmodule



module bsg_flow_convert
(
  v_i,
  fc_o,
  v_o,
  fc_i
);

  input [127:0] v_i;
  output [127:0] fc_o;
  output [127:0] v_o;
  input [127:0] fc_i;
  wire [127:0] fc_o,v_o;
  assign fc_o[127] = fc_i[127];
  assign fc_o[126] = fc_i[126];
  assign fc_o[125] = fc_i[125];
  assign fc_o[124] = fc_i[124];
  assign fc_o[123] = fc_i[123];
  assign fc_o[122] = fc_i[122];
  assign fc_o[121] = fc_i[121];
  assign fc_o[120] = fc_i[120];
  assign fc_o[119] = fc_i[119];
  assign fc_o[118] = fc_i[118];
  assign fc_o[117] = fc_i[117];
  assign fc_o[116] = fc_i[116];
  assign fc_o[115] = fc_i[115];
  assign fc_o[114] = fc_i[114];
  assign fc_o[113] = fc_i[113];
  assign fc_o[112] = fc_i[112];
  assign fc_o[111] = fc_i[111];
  assign fc_o[110] = fc_i[110];
  assign fc_o[109] = fc_i[109];
  assign fc_o[108] = fc_i[108];
  assign fc_o[107] = fc_i[107];
  assign fc_o[106] = fc_i[106];
  assign fc_o[105] = fc_i[105];
  assign fc_o[104] = fc_i[104];
  assign fc_o[103] = fc_i[103];
  assign fc_o[102] = fc_i[102];
  assign fc_o[101] = fc_i[101];
  assign fc_o[100] = fc_i[100];
  assign fc_o[99] = fc_i[99];
  assign fc_o[98] = fc_i[98];
  assign fc_o[97] = fc_i[97];
  assign fc_o[96] = fc_i[96];
  assign fc_o[95] = fc_i[95];
  assign fc_o[94] = fc_i[94];
  assign fc_o[93] = fc_i[93];
  assign fc_o[92] = fc_i[92];
  assign fc_o[91] = fc_i[91];
  assign fc_o[90] = fc_i[90];
  assign fc_o[89] = fc_i[89];
  assign fc_o[88] = fc_i[88];
  assign fc_o[87] = fc_i[87];
  assign fc_o[86] = fc_i[86];
  assign fc_o[85] = fc_i[85];
  assign fc_o[84] = fc_i[84];
  assign fc_o[83] = fc_i[83];
  assign fc_o[82] = fc_i[82];
  assign fc_o[81] = fc_i[81];
  assign fc_o[80] = fc_i[80];
  assign fc_o[79] = fc_i[79];
  assign fc_o[78] = fc_i[78];
  assign fc_o[77] = fc_i[77];
  assign fc_o[76] = fc_i[76];
  assign fc_o[75] = fc_i[75];
  assign fc_o[74] = fc_i[74];
  assign fc_o[73] = fc_i[73];
  assign fc_o[72] = fc_i[72];
  assign fc_o[71] = fc_i[71];
  assign fc_o[70] = fc_i[70];
  assign fc_o[69] = fc_i[69];
  assign fc_o[68] = fc_i[68];
  assign fc_o[67] = fc_i[67];
  assign fc_o[66] = fc_i[66];
  assign fc_o[65] = fc_i[65];
  assign fc_o[64] = fc_i[64];
  assign fc_o[63] = fc_i[63];
  assign fc_o[62] = fc_i[62];
  assign fc_o[61] = fc_i[61];
  assign fc_o[60] = fc_i[60];
  assign fc_o[59] = fc_i[59];
  assign fc_o[58] = fc_i[58];
  assign fc_o[57] = fc_i[57];
  assign fc_o[56] = fc_i[56];
  assign fc_o[55] = fc_i[55];
  assign fc_o[54] = fc_i[54];
  assign fc_o[53] = fc_i[53];
  assign fc_o[52] = fc_i[52];
  assign fc_o[51] = fc_i[51];
  assign fc_o[50] = fc_i[50];
  assign fc_o[49] = fc_i[49];
  assign fc_o[48] = fc_i[48];
  assign fc_o[47] = fc_i[47];
  assign fc_o[46] = fc_i[46];
  assign fc_o[45] = fc_i[45];
  assign fc_o[44] = fc_i[44];
  assign fc_o[43] = fc_i[43];
  assign fc_o[42] = fc_i[42];
  assign fc_o[41] = fc_i[41];
  assign fc_o[40] = fc_i[40];
  assign fc_o[39] = fc_i[39];
  assign fc_o[38] = fc_i[38];
  assign fc_o[37] = fc_i[37];
  assign fc_o[36] = fc_i[36];
  assign fc_o[35] = fc_i[35];
  assign fc_o[34] = fc_i[34];
  assign fc_o[33] = fc_i[33];
  assign fc_o[32] = fc_i[32];
  assign fc_o[31] = fc_i[31];
  assign fc_o[30] = fc_i[30];
  assign fc_o[29] = fc_i[29];
  assign fc_o[28] = fc_i[28];
  assign fc_o[27] = fc_i[27];
  assign fc_o[26] = fc_i[26];
  assign fc_o[25] = fc_i[25];
  assign fc_o[24] = fc_i[24];
  assign fc_o[23] = fc_i[23];
  assign fc_o[22] = fc_i[22];
  assign fc_o[21] = fc_i[21];
  assign fc_o[20] = fc_i[20];
  assign fc_o[19] = fc_i[19];
  assign fc_o[18] = fc_i[18];
  assign fc_o[17] = fc_i[17];
  assign fc_o[16] = fc_i[16];
  assign fc_o[15] = fc_i[15];
  assign fc_o[14] = fc_i[14];
  assign fc_o[13] = fc_i[13];
  assign fc_o[12] = fc_i[12];
  assign fc_o[11] = fc_i[11];
  assign fc_o[10] = fc_i[10];
  assign fc_o[9] = fc_i[9];
  assign fc_o[8] = fc_i[8];
  assign fc_o[7] = fc_i[7];
  assign fc_o[6] = fc_i[6];
  assign fc_o[5] = fc_i[5];
  assign fc_o[4] = fc_i[4];
  assign fc_o[3] = fc_i[3];
  assign fc_o[2] = fc_i[2];
  assign fc_o[1] = fc_i[1];
  assign fc_o[0] = fc_i[0];
  assign v_o[127] = v_i[127];
  assign v_o[126] = v_i[126];
  assign v_o[125] = v_i[125];
  assign v_o[124] = v_i[124];
  assign v_o[123] = v_i[123];
  assign v_o[122] = v_i[122];
  assign v_o[121] = v_i[121];
  assign v_o[120] = v_i[120];
  assign v_o[119] = v_i[119];
  assign v_o[118] = v_i[118];
  assign v_o[117] = v_i[117];
  assign v_o[116] = v_i[116];
  assign v_o[115] = v_i[115];
  assign v_o[114] = v_i[114];
  assign v_o[113] = v_i[113];
  assign v_o[112] = v_i[112];
  assign v_o[111] = v_i[111];
  assign v_o[110] = v_i[110];
  assign v_o[109] = v_i[109];
  assign v_o[108] = v_i[108];
  assign v_o[107] = v_i[107];
  assign v_o[106] = v_i[106];
  assign v_o[105] = v_i[105];
  assign v_o[104] = v_i[104];
  assign v_o[103] = v_i[103];
  assign v_o[102] = v_i[102];
  assign v_o[101] = v_i[101];
  assign v_o[100] = v_i[100];
  assign v_o[99] = v_i[99];
  assign v_o[98] = v_i[98];
  assign v_o[97] = v_i[97];
  assign v_o[96] = v_i[96];
  assign v_o[95] = v_i[95];
  assign v_o[94] = v_i[94];
  assign v_o[93] = v_i[93];
  assign v_o[92] = v_i[92];
  assign v_o[91] = v_i[91];
  assign v_o[90] = v_i[90];
  assign v_o[89] = v_i[89];
  assign v_o[88] = v_i[88];
  assign v_o[87] = v_i[87];
  assign v_o[86] = v_i[86];
  assign v_o[85] = v_i[85];
  assign v_o[84] = v_i[84];
  assign v_o[83] = v_i[83];
  assign v_o[82] = v_i[82];
  assign v_o[81] = v_i[81];
  assign v_o[80] = v_i[80];
  assign v_o[79] = v_i[79];
  assign v_o[78] = v_i[78];
  assign v_o[77] = v_i[77];
  assign v_o[76] = v_i[76];
  assign v_o[75] = v_i[75];
  assign v_o[74] = v_i[74];
  assign v_o[73] = v_i[73];
  assign v_o[72] = v_i[72];
  assign v_o[71] = v_i[71];
  assign v_o[70] = v_i[70];
  assign v_o[69] = v_i[69];
  assign v_o[68] = v_i[68];
  assign v_o[67] = v_i[67];
  assign v_o[66] = v_i[66];
  assign v_o[65] = v_i[65];
  assign v_o[64] = v_i[64];
  assign v_o[63] = v_i[63];
  assign v_o[62] = v_i[62];
  assign v_o[61] = v_i[61];
  assign v_o[60] = v_i[60];
  assign v_o[59] = v_i[59];
  assign v_o[58] = v_i[58];
  assign v_o[57] = v_i[57];
  assign v_o[56] = v_i[56];
  assign v_o[55] = v_i[55];
  assign v_o[54] = v_i[54];
  assign v_o[53] = v_i[53];
  assign v_o[52] = v_i[52];
  assign v_o[51] = v_i[51];
  assign v_o[50] = v_i[50];
  assign v_o[49] = v_i[49];
  assign v_o[48] = v_i[48];
  assign v_o[47] = v_i[47];
  assign v_o[46] = v_i[46];
  assign v_o[45] = v_i[45];
  assign v_o[44] = v_i[44];
  assign v_o[43] = v_i[43];
  assign v_o[42] = v_i[42];
  assign v_o[41] = v_i[41];
  assign v_o[40] = v_i[40];
  assign v_o[39] = v_i[39];
  assign v_o[38] = v_i[38];
  assign v_o[37] = v_i[37];
  assign v_o[36] = v_i[36];
  assign v_o[35] = v_i[35];
  assign v_o[34] = v_i[34];
  assign v_o[33] = v_i[33];
  assign v_o[32] = v_i[32];
  assign v_o[31] = v_i[31];
  assign v_o[30] = v_i[30];
  assign v_o[29] = v_i[29];
  assign v_o[28] = v_i[28];
  assign v_o[27] = v_i[27];
  assign v_o[26] = v_i[26];
  assign v_o[25] = v_i[25];
  assign v_o[24] = v_i[24];
  assign v_o[23] = v_i[23];
  assign v_o[22] = v_i[22];
  assign v_o[21] = v_i[21];
  assign v_o[20] = v_i[20];
  assign v_o[19] = v_i[19];
  assign v_o[18] = v_i[18];
  assign v_o[17] = v_i[17];
  assign v_o[16] = v_i[16];
  assign v_o[15] = v_i[15];
  assign v_o[14] = v_i[14];
  assign v_o[13] = v_i[13];
  assign v_o[12] = v_i[12];
  assign v_o[11] = v_i[11];
  assign v_o[10] = v_i[10];
  assign v_o[9] = v_i[9];
  assign v_o[8] = v_i[8];
  assign v_o[7] = v_i[7];
  assign v_o[6] = v_i[6];
  assign v_o[5] = v_i[5];
  assign v_o[4] = v_i[4];
  assign v_o[3] = v_i[3];
  assign v_o[2] = v_i[2];
  assign v_o[1] = v_i[1];
  assign v_o[0] = v_i[0];

endmodule

