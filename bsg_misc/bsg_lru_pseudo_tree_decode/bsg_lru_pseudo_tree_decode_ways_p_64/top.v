

module top
(
  way_id_i,
  data_o,
  mask_o
);

  input [5:0] way_id_i;
  output [62:0] data_o;
  output [62:0] mask_o;

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

  input [5:0] way_id_i;
  output [62:0] data_o;
  output [62:0] mask_o;
  wire [62:0] data_o,mask_o;
  wire N0,N1,N2,N3,N4,N5;
  assign mask_o[0] = 1'b1;
  assign data_o[0] = 1'b1 & N0;
  assign N0 = ~way_id_i[5];
  assign mask_o[1] = 1'b1 & N0;
  assign data_o[1] = mask_o[1] & N1;
  assign N1 = ~way_id_i[4];
  assign mask_o[2] = 1'b1 & way_id_i[5];
  assign data_o[2] = mask_o[2] & N1;
  assign mask_o[3] = mask_o[1] & N1;
  assign data_o[3] = mask_o[3] & N2;
  assign N2 = ~way_id_i[3];
  assign mask_o[4] = mask_o[1] & way_id_i[4];
  assign data_o[4] = mask_o[4] & N2;
  assign mask_o[5] = mask_o[2] & N1;
  assign data_o[5] = mask_o[5] & N2;
  assign mask_o[6] = mask_o[2] & way_id_i[4];
  assign data_o[6] = mask_o[6] & N2;
  assign mask_o[7] = mask_o[3] & N2;
  assign data_o[7] = mask_o[7] & N3;
  assign N3 = ~way_id_i[2];
  assign mask_o[8] = mask_o[3] & way_id_i[3];
  assign data_o[8] = mask_o[8] & N3;
  assign mask_o[9] = mask_o[4] & N2;
  assign data_o[9] = mask_o[9] & N3;
  assign mask_o[10] = mask_o[4] & way_id_i[3];
  assign data_o[10] = mask_o[10] & N3;
  assign mask_o[11] = mask_o[5] & N2;
  assign data_o[11] = mask_o[11] & N3;
  assign mask_o[12] = mask_o[5] & way_id_i[3];
  assign data_o[12] = mask_o[12] & N3;
  assign mask_o[13] = mask_o[6] & N2;
  assign data_o[13] = mask_o[13] & N3;
  assign mask_o[14] = mask_o[6] & way_id_i[3];
  assign data_o[14] = mask_o[14] & N3;
  assign mask_o[15] = mask_o[7] & N3;
  assign data_o[15] = mask_o[15] & N4;
  assign N4 = ~way_id_i[1];
  assign mask_o[16] = mask_o[7] & way_id_i[2];
  assign data_o[16] = mask_o[16] & N4;
  assign mask_o[17] = mask_o[8] & N3;
  assign data_o[17] = mask_o[17] & N4;
  assign mask_o[18] = mask_o[8] & way_id_i[2];
  assign data_o[18] = mask_o[18] & N4;
  assign mask_o[19] = mask_o[9] & N3;
  assign data_o[19] = mask_o[19] & N4;
  assign mask_o[20] = mask_o[9] & way_id_i[2];
  assign data_o[20] = mask_o[20] & N4;
  assign mask_o[21] = mask_o[10] & N3;
  assign data_o[21] = mask_o[21] & N4;
  assign mask_o[22] = mask_o[10] & way_id_i[2];
  assign data_o[22] = mask_o[22] & N4;
  assign mask_o[23] = mask_o[11] & N3;
  assign data_o[23] = mask_o[23] & N4;
  assign mask_o[24] = mask_o[11] & way_id_i[2];
  assign data_o[24] = mask_o[24] & N4;
  assign mask_o[25] = mask_o[12] & N3;
  assign data_o[25] = mask_o[25] & N4;
  assign mask_o[26] = mask_o[12] & way_id_i[2];
  assign data_o[26] = mask_o[26] & N4;
  assign mask_o[27] = mask_o[13] & N3;
  assign data_o[27] = mask_o[27] & N4;
  assign mask_o[28] = mask_o[13] & way_id_i[2];
  assign data_o[28] = mask_o[28] & N4;
  assign mask_o[29] = mask_o[14] & N3;
  assign data_o[29] = mask_o[29] & N4;
  assign mask_o[30] = mask_o[14] & way_id_i[2];
  assign data_o[30] = mask_o[30] & N4;
  assign mask_o[31] = mask_o[15] & N4;
  assign data_o[31] = mask_o[31] & N5;
  assign N5 = ~way_id_i[0];
  assign mask_o[32] = mask_o[15] & way_id_i[1];
  assign data_o[32] = mask_o[32] & N5;
  assign mask_o[33] = mask_o[16] & N4;
  assign data_o[33] = mask_o[33] & N5;
  assign mask_o[34] = mask_o[16] & way_id_i[1];
  assign data_o[34] = mask_o[34] & N5;
  assign mask_o[35] = mask_o[17] & N4;
  assign data_o[35] = mask_o[35] & N5;
  assign mask_o[36] = mask_o[17] & way_id_i[1];
  assign data_o[36] = mask_o[36] & N5;
  assign mask_o[37] = mask_o[18] & N4;
  assign data_o[37] = mask_o[37] & N5;
  assign mask_o[38] = mask_o[18] & way_id_i[1];
  assign data_o[38] = mask_o[38] & N5;
  assign mask_o[39] = mask_o[19] & N4;
  assign data_o[39] = mask_o[39] & N5;
  assign mask_o[40] = mask_o[19] & way_id_i[1];
  assign data_o[40] = mask_o[40] & N5;
  assign mask_o[41] = mask_o[20] & N4;
  assign data_o[41] = mask_o[41] & N5;
  assign mask_o[42] = mask_o[20] & way_id_i[1];
  assign data_o[42] = mask_o[42] & N5;
  assign mask_o[43] = mask_o[21] & N4;
  assign data_o[43] = mask_o[43] & N5;
  assign mask_o[44] = mask_o[21] & way_id_i[1];
  assign data_o[44] = mask_o[44] & N5;
  assign mask_o[45] = mask_o[22] & N4;
  assign data_o[45] = mask_o[45] & N5;
  assign mask_o[46] = mask_o[22] & way_id_i[1];
  assign data_o[46] = mask_o[46] & N5;
  assign mask_o[47] = mask_o[23] & N4;
  assign data_o[47] = mask_o[47] & N5;
  assign mask_o[48] = mask_o[23] & way_id_i[1];
  assign data_o[48] = mask_o[48] & N5;
  assign mask_o[49] = mask_o[24] & N4;
  assign data_o[49] = mask_o[49] & N5;
  assign mask_o[50] = mask_o[24] & way_id_i[1];
  assign data_o[50] = mask_o[50] & N5;
  assign mask_o[51] = mask_o[25] & N4;
  assign data_o[51] = mask_o[51] & N5;
  assign mask_o[52] = mask_o[25] & way_id_i[1];
  assign data_o[52] = mask_o[52] & N5;
  assign mask_o[53] = mask_o[26] & N4;
  assign data_o[53] = mask_o[53] & N5;
  assign mask_o[54] = mask_o[26] & way_id_i[1];
  assign data_o[54] = mask_o[54] & N5;
  assign mask_o[55] = mask_o[27] & N4;
  assign data_o[55] = mask_o[55] & N5;
  assign mask_o[56] = mask_o[27] & way_id_i[1];
  assign data_o[56] = mask_o[56] & N5;
  assign mask_o[57] = mask_o[28] & N4;
  assign data_o[57] = mask_o[57] & N5;
  assign mask_o[58] = mask_o[28] & way_id_i[1];
  assign data_o[58] = mask_o[58] & N5;
  assign mask_o[59] = mask_o[29] & N4;
  assign data_o[59] = mask_o[59] & N5;
  assign mask_o[60] = mask_o[29] & way_id_i[1];
  assign data_o[60] = mask_o[60] & N5;
  assign mask_o[61] = mask_o[30] & N4;
  assign data_o[61] = mask_o[61] & N5;
  assign mask_o[62] = mask_o[30] & way_id_i[1];
  assign data_o[62] = mask_o[62] & N5;

endmodule

