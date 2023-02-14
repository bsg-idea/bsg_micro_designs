

module top
(
  v0_en_i,
  v0_data_i,
  v1_data_o
);

  input [63:0] v0_data_i;
  output [63:0] v1_data_o;
  input v0_en_i;

  bsg_level_shift_up_down_source
  wrapper
  (
    .v0_data_i(v0_data_i),
    .v1_data_o(v1_data_o),
    .v0_en_i(v0_en_i)
  );


endmodule



module bsg_level_shift_up_down_source
(
  v0_en_i,
  v0_data_i,
  v1_data_o
);

  input [63:0] v0_data_i;
  output [63:0] v1_data_o;
  input v0_en_i;
  wire [63:0] v1_data_o;
  assign v1_data_o[63] = v0_data_i[63] & v0_en_i;
  assign v1_data_o[62] = v0_data_i[62] & v0_en_i;
  assign v1_data_o[61] = v0_data_i[61] & v0_en_i;
  assign v1_data_o[60] = v0_data_i[60] & v0_en_i;
  assign v1_data_o[59] = v0_data_i[59] & v0_en_i;
  assign v1_data_o[58] = v0_data_i[58] & v0_en_i;
  assign v1_data_o[57] = v0_data_i[57] & v0_en_i;
  assign v1_data_o[56] = v0_data_i[56] & v0_en_i;
  assign v1_data_o[55] = v0_data_i[55] & v0_en_i;
  assign v1_data_o[54] = v0_data_i[54] & v0_en_i;
  assign v1_data_o[53] = v0_data_i[53] & v0_en_i;
  assign v1_data_o[52] = v0_data_i[52] & v0_en_i;
  assign v1_data_o[51] = v0_data_i[51] & v0_en_i;
  assign v1_data_o[50] = v0_data_i[50] & v0_en_i;
  assign v1_data_o[49] = v0_data_i[49] & v0_en_i;
  assign v1_data_o[48] = v0_data_i[48] & v0_en_i;
  assign v1_data_o[47] = v0_data_i[47] & v0_en_i;
  assign v1_data_o[46] = v0_data_i[46] & v0_en_i;
  assign v1_data_o[45] = v0_data_i[45] & v0_en_i;
  assign v1_data_o[44] = v0_data_i[44] & v0_en_i;
  assign v1_data_o[43] = v0_data_i[43] & v0_en_i;
  assign v1_data_o[42] = v0_data_i[42] & v0_en_i;
  assign v1_data_o[41] = v0_data_i[41] & v0_en_i;
  assign v1_data_o[40] = v0_data_i[40] & v0_en_i;
  assign v1_data_o[39] = v0_data_i[39] & v0_en_i;
  assign v1_data_o[38] = v0_data_i[38] & v0_en_i;
  assign v1_data_o[37] = v0_data_i[37] & v0_en_i;
  assign v1_data_o[36] = v0_data_i[36] & v0_en_i;
  assign v1_data_o[35] = v0_data_i[35] & v0_en_i;
  assign v1_data_o[34] = v0_data_i[34] & v0_en_i;
  assign v1_data_o[33] = v0_data_i[33] & v0_en_i;
  assign v1_data_o[32] = v0_data_i[32] & v0_en_i;
  assign v1_data_o[31] = v0_data_i[31] & v0_en_i;
  assign v1_data_o[30] = v0_data_i[30] & v0_en_i;
  assign v1_data_o[29] = v0_data_i[29] & v0_en_i;
  assign v1_data_o[28] = v0_data_i[28] & v0_en_i;
  assign v1_data_o[27] = v0_data_i[27] & v0_en_i;
  assign v1_data_o[26] = v0_data_i[26] & v0_en_i;
  assign v1_data_o[25] = v0_data_i[25] & v0_en_i;
  assign v1_data_o[24] = v0_data_i[24] & v0_en_i;
  assign v1_data_o[23] = v0_data_i[23] & v0_en_i;
  assign v1_data_o[22] = v0_data_i[22] & v0_en_i;
  assign v1_data_o[21] = v0_data_i[21] & v0_en_i;
  assign v1_data_o[20] = v0_data_i[20] & v0_en_i;
  assign v1_data_o[19] = v0_data_i[19] & v0_en_i;
  assign v1_data_o[18] = v0_data_i[18] & v0_en_i;
  assign v1_data_o[17] = v0_data_i[17] & v0_en_i;
  assign v1_data_o[16] = v0_data_i[16] & v0_en_i;
  assign v1_data_o[15] = v0_data_i[15] & v0_en_i;
  assign v1_data_o[14] = v0_data_i[14] & v0_en_i;
  assign v1_data_o[13] = v0_data_i[13] & v0_en_i;
  assign v1_data_o[12] = v0_data_i[12] & v0_en_i;
  assign v1_data_o[11] = v0_data_i[11] & v0_en_i;
  assign v1_data_o[10] = v0_data_i[10] & v0_en_i;
  assign v1_data_o[9] = v0_data_i[9] & v0_en_i;
  assign v1_data_o[8] = v0_data_i[8] & v0_en_i;
  assign v1_data_o[7] = v0_data_i[7] & v0_en_i;
  assign v1_data_o[6] = v0_data_i[6] & v0_en_i;
  assign v1_data_o[5] = v0_data_i[5] & v0_en_i;
  assign v1_data_o[4] = v0_data_i[4] & v0_en_i;
  assign v1_data_o[3] = v0_data_i[3] & v0_en_i;
  assign v1_data_o[2] = v0_data_i[2] & v0_en_i;
  assign v1_data_o[1] = v0_data_i[1] & v0_en_i;
  assign v1_data_o[0] = v0_data_i[0] & v0_en_i;

endmodule

