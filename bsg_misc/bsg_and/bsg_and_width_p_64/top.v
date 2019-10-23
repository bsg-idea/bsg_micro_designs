

module top
(
  a_i,
  b_i,
  o
);

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] o;

  bsg_and
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .o(o)
  );


endmodule



module bsg_and
(
  a_i,
  b_i,
  o
);

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] o;
  wire [63:0] o;
  assign o[63] = a_i[63] & b_i[63];
  assign o[62] = a_i[62] & b_i[62];
  assign o[61] = a_i[61] & b_i[61];
  assign o[60] = a_i[60] & b_i[60];
  assign o[59] = a_i[59] & b_i[59];
  assign o[58] = a_i[58] & b_i[58];
  assign o[57] = a_i[57] & b_i[57];
  assign o[56] = a_i[56] & b_i[56];
  assign o[55] = a_i[55] & b_i[55];
  assign o[54] = a_i[54] & b_i[54];
  assign o[53] = a_i[53] & b_i[53];
  assign o[52] = a_i[52] & b_i[52];
  assign o[51] = a_i[51] & b_i[51];
  assign o[50] = a_i[50] & b_i[50];
  assign o[49] = a_i[49] & b_i[49];
  assign o[48] = a_i[48] & b_i[48];
  assign o[47] = a_i[47] & b_i[47];
  assign o[46] = a_i[46] & b_i[46];
  assign o[45] = a_i[45] & b_i[45];
  assign o[44] = a_i[44] & b_i[44];
  assign o[43] = a_i[43] & b_i[43];
  assign o[42] = a_i[42] & b_i[42];
  assign o[41] = a_i[41] & b_i[41];
  assign o[40] = a_i[40] & b_i[40];
  assign o[39] = a_i[39] & b_i[39];
  assign o[38] = a_i[38] & b_i[38];
  assign o[37] = a_i[37] & b_i[37];
  assign o[36] = a_i[36] & b_i[36];
  assign o[35] = a_i[35] & b_i[35];
  assign o[34] = a_i[34] & b_i[34];
  assign o[33] = a_i[33] & b_i[33];
  assign o[32] = a_i[32] & b_i[32];
  assign o[31] = a_i[31] & b_i[31];
  assign o[30] = a_i[30] & b_i[30];
  assign o[29] = a_i[29] & b_i[29];
  assign o[28] = a_i[28] & b_i[28];
  assign o[27] = a_i[27] & b_i[27];
  assign o[26] = a_i[26] & b_i[26];
  assign o[25] = a_i[25] & b_i[25];
  assign o[24] = a_i[24] & b_i[24];
  assign o[23] = a_i[23] & b_i[23];
  assign o[22] = a_i[22] & b_i[22];
  assign o[21] = a_i[21] & b_i[21];
  assign o[20] = a_i[20] & b_i[20];
  assign o[19] = a_i[19] & b_i[19];
  assign o[18] = a_i[18] & b_i[18];
  assign o[17] = a_i[17] & b_i[17];
  assign o[16] = a_i[16] & b_i[16];
  assign o[15] = a_i[15] & b_i[15];
  assign o[14] = a_i[14] & b_i[14];
  assign o[13] = a_i[13] & b_i[13];
  assign o[12] = a_i[12] & b_i[12];
  assign o[11] = a_i[11] & b_i[11];
  assign o[10] = a_i[10] & b_i[10];
  assign o[9] = a_i[9] & b_i[9];
  assign o[8] = a_i[8] & b_i[8];
  assign o[7] = a_i[7] & b_i[7];
  assign o[6] = a_i[6] & b_i[6];
  assign o[5] = a_i[5] & b_i[5];
  assign o[4] = a_i[4] & b_i[4];
  assign o[3] = a_i[3] & b_i[3];
  assign o[2] = a_i[2] & b_i[2];
  assign o[1] = a_i[1] & b_i[1];
  assign o[0] = a_i[0] & b_i[0];

endmodule

