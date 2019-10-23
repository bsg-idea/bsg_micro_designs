

module top
(
  i,
  v_i,
  o
);

  input [5:0] i;
  output [63:0] o;
  input v_i;

  bsg_decode_with_v
  wrapper
  (
    .i(i),
    .o(o),
    .v_i(v_i)
  );


endmodule



module bsg_decode_num_out_p64
(
  i,
  o
);

  input [5:0] i;
  output [63:0] o;
  wire [63:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule



module bsg_decode_with_v
(
  i,
  v_i,
  o
);

  input [5:0] i;
  output [63:0] o;
  input v_i;
  wire [63:0] o,lo;

  bsg_decode_num_out_p64
  bd
  (
    .i(i),
    .o(lo)
  );

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

