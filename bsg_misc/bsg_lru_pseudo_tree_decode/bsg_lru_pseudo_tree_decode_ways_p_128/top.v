

module top
(
  way_id_i,
  data_o,
  mask_o
);

  input [6:0] way_id_i;
  output [126:0] data_o;
  output [126:0] mask_o;

  bsg_lru_pseudo_tree_decode
  wrapper
  (
    .way_id_i(way_id_i),
    .data_o(data_o),
    .mask_o(mask_o)
  );


endmodule



module bsg_lru_pseudo_tree_decode
(
  way_id_i,
  data_o,
  mask_o
);

  input [6:0] way_id_i;
  output [126:0] data_o;
  output [126:0] mask_o;
  wire [126:0] data_o,mask_o;
  wire N0,N1,N2,N3,N4,N5,N6;
  assign mask_o[0] = 1'b1;
  assign data_o[0] = 1'b1 & N0;
  assign N0 = ~way_id_i[6];
  assign mask_o[1] = 1'b1 & N0;
  assign data_o[1] = mask_o[1] & N1;
  assign N1 = ~way_id_i[5];
  assign mask_o[2] = 1'b1 & way_id_i[6];
  assign data_o[2] = mask_o[2] & N1;
  assign mask_o[3] = mask_o[1] & N1;
  assign data_o[3] = mask_o[3] & N2;
  assign N2 = ~way_id_i[4];
  assign mask_o[4] = mask_o[1] & way_id_i[5];
  assign data_o[4] = mask_o[4] & N2;
  assign mask_o[5] = mask_o[2] & N1;
  assign data_o[5] = mask_o[5] & N2;
  assign mask_o[6] = mask_o[2] & way_id_i[5];
  assign data_o[6] = mask_o[6] & N2;
  assign mask_o[7] = mask_o[3] & N2;
  assign data_o[7] = mask_o[7] & N3;
  assign N3 = ~way_id_i[3];
  assign mask_o[8] = mask_o[3] & way_id_i[4];
  assign data_o[8] = mask_o[8] & N3;
  assign mask_o[9] = mask_o[4] & N2;
  assign data_o[9] = mask_o[9] & N3;
  assign mask_o[10] = mask_o[4] & way_id_i[4];
  assign data_o[10] = mask_o[10] & N3;
  assign mask_o[11] = mask_o[5] & N2;
  assign data_o[11] = mask_o[11] & N3;
  assign mask_o[12] = mask_o[5] & way_id_i[4];
  assign data_o[12] = mask_o[12] & N3;
  assign mask_o[13] = mask_o[6] & N2;
  assign data_o[13] = mask_o[13] & N3;
  assign mask_o[14] = mask_o[6] & way_id_i[4];
  assign data_o[14] = mask_o[14] & N3;
  assign mask_o[15] = mask_o[7] & N3;
  assign data_o[15] = mask_o[15] & N4;
  assign N4 = ~way_id_i[2];
  assign mask_o[16] = mask_o[7] & way_id_i[3];
  assign data_o[16] = mask_o[16] & N4;
  assign mask_o[17] = mask_o[8] & N3;
  assign data_o[17] = mask_o[17] & N4;
  assign mask_o[18] = mask_o[8] & way_id_i[3];
  assign data_o[18] = mask_o[18] & N4;
  assign mask_o[19] = mask_o[9] & N3;
  assign data_o[19] = mask_o[19] & N4;
  assign mask_o[20] = mask_o[9] & way_id_i[3];
  assign data_o[20] = mask_o[20] & N4;
  assign mask_o[21] = mask_o[10] & N3;
  assign data_o[21] = mask_o[21] & N4;
  assign mask_o[22] = mask_o[10] & way_id_i[3];
  assign data_o[22] = mask_o[22] & N4;
  assign mask_o[23] = mask_o[11] & N3;
  assign data_o[23] = mask_o[23] & N4;
  assign mask_o[24] = mask_o[11] & way_id_i[3];
  assign data_o[24] = mask_o[24] & N4;
  assign mask_o[25] = mask_o[12] & N3;
  assign data_o[25] = mask_o[25] & N4;
  assign mask_o[26] = mask_o[12] & way_id_i[3];
  assign data_o[26] = mask_o[26] & N4;
  assign mask_o[27] = mask_o[13] & N3;
  assign data_o[27] = mask_o[27] & N4;
  assign mask_o[28] = mask_o[13] & way_id_i[3];
  assign data_o[28] = mask_o[28] & N4;
  assign mask_o[29] = mask_o[14] & N3;
  assign data_o[29] = mask_o[29] & N4;
  assign mask_o[30] = mask_o[14] & way_id_i[3];
  assign data_o[30] = mask_o[30] & N4;
  assign mask_o[31] = mask_o[15] & N4;
  assign data_o[31] = mask_o[31] & N5;
  assign N5 = ~way_id_i[1];
  assign mask_o[32] = mask_o[15] & way_id_i[2];
  assign data_o[32] = mask_o[32] & N5;
  assign mask_o[33] = mask_o[16] & N4;
  assign data_o[33] = mask_o[33] & N5;
  assign mask_o[34] = mask_o[16] & way_id_i[2];
  assign data_o[34] = mask_o[34] & N5;
  assign mask_o[35] = mask_o[17] & N4;
  assign data_o[35] = mask_o[35] & N5;
  assign mask_o[36] = mask_o[17] & way_id_i[2];
  assign data_o[36] = mask_o[36] & N5;
  assign mask_o[37] = mask_o[18] & N4;
  assign data_o[37] = mask_o[37] & N5;
  assign mask_o[38] = mask_o[18] & way_id_i[2];
  assign data_o[38] = mask_o[38] & N5;
  assign mask_o[39] = mask_o[19] & N4;
  assign data_o[39] = mask_o[39] & N5;
  assign mask_o[40] = mask_o[19] & way_id_i[2];
  assign data_o[40] = mask_o[40] & N5;
  assign mask_o[41] = mask_o[20] & N4;
  assign data_o[41] = mask_o[41] & N5;
  assign mask_o[42] = mask_o[20] & way_id_i[2];
  assign data_o[42] = mask_o[42] & N5;
  assign mask_o[43] = mask_o[21] & N4;
  assign data_o[43] = mask_o[43] & N5;
  assign mask_o[44] = mask_o[21] & way_id_i[2];
  assign data_o[44] = mask_o[44] & N5;
  assign mask_o[45] = mask_o[22] & N4;
  assign data_o[45] = mask_o[45] & N5;
  assign mask_o[46] = mask_o[22] & way_id_i[2];
  assign data_o[46] = mask_o[46] & N5;
  assign mask_o[47] = mask_o[23] & N4;
  assign data_o[47] = mask_o[47] & N5;
  assign mask_o[48] = mask_o[23] & way_id_i[2];
  assign data_o[48] = mask_o[48] & N5;
  assign mask_o[49] = mask_o[24] & N4;
  assign data_o[49] = mask_o[49] & N5;
  assign mask_o[50] = mask_o[24] & way_id_i[2];
  assign data_o[50] = mask_o[50] & N5;
  assign mask_o[51] = mask_o[25] & N4;
  assign data_o[51] = mask_o[51] & N5;
  assign mask_o[52] = mask_o[25] & way_id_i[2];
  assign data_o[52] = mask_o[52] & N5;
  assign mask_o[53] = mask_o[26] & N4;
  assign data_o[53] = mask_o[53] & N5;
  assign mask_o[54] = mask_o[26] & way_id_i[2];
  assign data_o[54] = mask_o[54] & N5;
  assign mask_o[55] = mask_o[27] & N4;
  assign data_o[55] = mask_o[55] & N5;
  assign mask_o[56] = mask_o[27] & way_id_i[2];
  assign data_o[56] = mask_o[56] & N5;
  assign mask_o[57] = mask_o[28] & N4;
  assign data_o[57] = mask_o[57] & N5;
  assign mask_o[58] = mask_o[28] & way_id_i[2];
  assign data_o[58] = mask_o[58] & N5;
  assign mask_o[59] = mask_o[29] & N4;
  assign data_o[59] = mask_o[59] & N5;
  assign mask_o[60] = mask_o[29] & way_id_i[2];
  assign data_o[60] = mask_o[60] & N5;
  assign mask_o[61] = mask_o[30] & N4;
  assign data_o[61] = mask_o[61] & N5;
  assign mask_o[62] = mask_o[30] & way_id_i[2];
  assign data_o[62] = mask_o[62] & N5;
  assign mask_o[63] = mask_o[31] & N5;
  assign data_o[63] = mask_o[63] & N6;
  assign N6 = ~way_id_i[0];
  assign mask_o[64] = mask_o[31] & way_id_i[1];
  assign data_o[64] = mask_o[64] & N6;
  assign mask_o[65] = mask_o[32] & N5;
  assign data_o[65] = mask_o[65] & N6;
  assign mask_o[66] = mask_o[32] & way_id_i[1];
  assign data_o[66] = mask_o[66] & N6;
  assign mask_o[67] = mask_o[33] & N5;
  assign data_o[67] = mask_o[67] & N6;
  assign mask_o[68] = mask_o[33] & way_id_i[1];
  assign data_o[68] = mask_o[68] & N6;
  assign mask_o[69] = mask_o[34] & N5;
  assign data_o[69] = mask_o[69] & N6;
  assign mask_o[70] = mask_o[34] & way_id_i[1];
  assign data_o[70] = mask_o[70] & N6;
  assign mask_o[71] = mask_o[35] & N5;
  assign data_o[71] = mask_o[71] & N6;
  assign mask_o[72] = mask_o[35] & way_id_i[1];
  assign data_o[72] = mask_o[72] & N6;
  assign mask_o[73] = mask_o[36] & N5;
  assign data_o[73] = mask_o[73] & N6;
  assign mask_o[74] = mask_o[36] & way_id_i[1];
  assign data_o[74] = mask_o[74] & N6;
  assign mask_o[75] = mask_o[37] & N5;
  assign data_o[75] = mask_o[75] & N6;
  assign mask_o[76] = mask_o[37] & way_id_i[1];
  assign data_o[76] = mask_o[76] & N6;
  assign mask_o[77] = mask_o[38] & N5;
  assign data_o[77] = mask_o[77] & N6;
  assign mask_o[78] = mask_o[38] & way_id_i[1];
  assign data_o[78] = mask_o[78] & N6;
  assign mask_o[79] = mask_o[39] & N5;
  assign data_o[79] = mask_o[79] & N6;
  assign mask_o[80] = mask_o[39] & way_id_i[1];
  assign data_o[80] = mask_o[80] & N6;
  assign mask_o[81] = mask_o[40] & N5;
  assign data_o[81] = mask_o[81] & N6;
  assign mask_o[82] = mask_o[40] & way_id_i[1];
  assign data_o[82] = mask_o[82] & N6;
  assign mask_o[83] = mask_o[41] & N5;
  assign data_o[83] = mask_o[83] & N6;
  assign mask_o[84] = mask_o[41] & way_id_i[1];
  assign data_o[84] = mask_o[84] & N6;
  assign mask_o[85] = mask_o[42] & N5;
  assign data_o[85] = mask_o[85] & N6;
  assign mask_o[86] = mask_o[42] & way_id_i[1];
  assign data_o[86] = mask_o[86] & N6;
  assign mask_o[87] = mask_o[43] & N5;
  assign data_o[87] = mask_o[87] & N6;
  assign mask_o[88] = mask_o[43] & way_id_i[1];
  assign data_o[88] = mask_o[88] & N6;
  assign mask_o[89] = mask_o[44] & N5;
  assign data_o[89] = mask_o[89] & N6;
  assign mask_o[90] = mask_o[44] & way_id_i[1];
  assign data_o[90] = mask_o[90] & N6;
  assign mask_o[91] = mask_o[45] & N5;
  assign data_o[91] = mask_o[91] & N6;
  assign mask_o[92] = mask_o[45] & way_id_i[1];
  assign data_o[92] = mask_o[92] & N6;
  assign mask_o[93] = mask_o[46] & N5;
  assign data_o[93] = mask_o[93] & N6;
  assign mask_o[94] = mask_o[46] & way_id_i[1];
  assign data_o[94] = mask_o[94] & N6;
  assign mask_o[95] = mask_o[47] & N5;
  assign data_o[95] = mask_o[95] & N6;
  assign mask_o[96] = mask_o[47] & way_id_i[1];
  assign data_o[96] = mask_o[96] & N6;
  assign mask_o[97] = mask_o[48] & N5;
  assign data_o[97] = mask_o[97] & N6;
  assign mask_o[98] = mask_o[48] & way_id_i[1];
  assign data_o[98] = mask_o[98] & N6;
  assign mask_o[99] = mask_o[49] & N5;
  assign data_o[99] = mask_o[99] & N6;
  assign mask_o[100] = mask_o[49] & way_id_i[1];
  assign data_o[100] = mask_o[100] & N6;
  assign mask_o[101] = mask_o[50] & N5;
  assign data_o[101] = mask_o[101] & N6;
  assign mask_o[102] = mask_o[50] & way_id_i[1];
  assign data_o[102] = mask_o[102] & N6;
  assign mask_o[103] = mask_o[51] & N5;
  assign data_o[103] = mask_o[103] & N6;
  assign mask_o[104] = mask_o[51] & way_id_i[1];
  assign data_o[104] = mask_o[104] & N6;
  assign mask_o[105] = mask_o[52] & N5;
  assign data_o[105] = mask_o[105] & N6;
  assign mask_o[106] = mask_o[52] & way_id_i[1];
  assign data_o[106] = mask_o[106] & N6;
  assign mask_o[107] = mask_o[53] & N5;
  assign data_o[107] = mask_o[107] & N6;
  assign mask_o[108] = mask_o[53] & way_id_i[1];
  assign data_o[108] = mask_o[108] & N6;
  assign mask_o[109] = mask_o[54] & N5;
  assign data_o[109] = mask_o[109] & N6;
  assign mask_o[110] = mask_o[54] & way_id_i[1];
  assign data_o[110] = mask_o[110] & N6;
  assign mask_o[111] = mask_o[55] & N5;
  assign data_o[111] = mask_o[111] & N6;
  assign mask_o[112] = mask_o[55] & way_id_i[1];
  assign data_o[112] = mask_o[112] & N6;
  assign mask_o[113] = mask_o[56] & N5;
  assign data_o[113] = mask_o[113] & N6;
  assign mask_o[114] = mask_o[56] & way_id_i[1];
  assign data_o[114] = mask_o[114] & N6;
  assign mask_o[115] = mask_o[57] & N5;
  assign data_o[115] = mask_o[115] & N6;
  assign mask_o[116] = mask_o[57] & way_id_i[1];
  assign data_o[116] = mask_o[116] & N6;
  assign mask_o[117] = mask_o[58] & N5;
  assign data_o[117] = mask_o[117] & N6;
  assign mask_o[118] = mask_o[58] & way_id_i[1];
  assign data_o[118] = mask_o[118] & N6;
  assign mask_o[119] = mask_o[59] & N5;
  assign data_o[119] = mask_o[119] & N6;
  assign mask_o[120] = mask_o[59] & way_id_i[1];
  assign data_o[120] = mask_o[120] & N6;
  assign mask_o[121] = mask_o[60] & N5;
  assign data_o[121] = mask_o[121] & N6;
  assign mask_o[122] = mask_o[60] & way_id_i[1];
  assign data_o[122] = mask_o[122] & N6;
  assign mask_o[123] = mask_o[61] & N5;
  assign data_o[123] = mask_o[123] & N6;
  assign mask_o[124] = mask_o[61] & way_id_i[1];
  assign data_o[124] = mask_o[124] & N6;
  assign mask_o[125] = mask_o[62] & N5;
  assign data_o[125] = mask_o[125] & N6;
  assign mask_o[126] = mask_o[62] & way_id_i[1];
  assign data_o[126] = mask_o[126] & N6;

endmodule

