

module top
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  o
);

  input [63:0] a_i;
  input [63:0] b_i;
  output [127:0] o;
  input clk_i;
  input rst_i;
  input v_i;

  bsg_mul_array
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .o(o),
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i)
  );


endmodule



module bsg_and_width_p64
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



module bsg_adder_ripple_carry_width_p64
(
  a_i,
  b_i,
  s_o,
  c_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] s_o;
  output c_o;
  wire [63:0] s_o;
  wire c_o;
  assign { c_o, s_o } = a_i + b_i;

endmodule



module bsg_mul_array_row_64_0_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [0:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [1:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [1:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[1] = s_o[0];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_1_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [1:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [2:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [2:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[2] = s_o[0];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_2_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [2:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [3:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [3:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[3] = s_o[0];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_3_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [3:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [4:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [4:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[4] = s_o[0];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_4_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [4:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [5:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [5:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[5] = s_o[0];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_5_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [5:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [6:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [6:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[6] = s_o[0];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_6_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [6:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [7:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [7:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[7] = s_o[0];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_7_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [7:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [8:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [8:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[8] = s_o[0];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_8_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [8:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [9:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [9:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[9] = s_o[0];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_9_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [9:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [10:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [10:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[10] = s_o[0];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_10_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [10:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [11:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [11:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[11] = s_o[0];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_11_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [11:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [12:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [12:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[12] = s_o[0];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_12_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [12:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [13:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [13:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[13] = s_o[0];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_13_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [13:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [14:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [14:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[14] = s_o[0];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_14_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [14:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [15:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [15:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[15] = s_o[0];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_15_1
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [15:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [16:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire N0,N1,pc,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,
  N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,
  N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,
  N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,
  N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,
  N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,
  N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,
  N213,N214,N215,N216,N217,N218,N219;
  wire [63:0] pp,ps;
  reg [16:0] prod_accum_o;
  reg [63:0] a_o,b_o,s_o;
  reg c_o;

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(ps),
    .c_o(pc)
  );

  assign { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                       (N1)? a_i : 1'b0;
  assign N0 = rst_i;
  assign N1 = N2;
  assign { N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                             (N1)? b_i : 1'b0;
  assign { N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N1)? ps : 1'b0;
  assign N195 = (N0)? 1'b0 : 
                (N1)? pc : 1'b0;
  assign { N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                    (N1)? { ps[0:0], prod_accum_i } : 1'b0;
  assign N2 = ~rst_i;
  assign N213 = ~v_i;
  assign N214 = N213 & N2;
  assign N215 = ~N214;
  assign N216 = N213 & N2;
  assign N217 = ~N216;
  assign N218 = N213 & N2;
  assign N219 = ~N218;

  always @(posedge clk_i) begin
    if(N215) begin
      { prod_accum_o[16:16] } <= { N212 };
      { b_o[33:0] } <= { N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 };
      { s_o[63:0] } <= { N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131 };
      c_o <= N195;
    end 
    if(N217) begin
      { prod_accum_o[15:15], prod_accum_o[4:0] } <= { N211, N200, N199, N198, N197, N196 };
      { a_o[63:0] } <= { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 };
      { b_o[63:34] } <= { N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101 };
    end 
    if(N219) begin
      { prod_accum_o[14:5] } <= { N210, N209, N208, N207, N206, N205, N204, N203, N202, N201 };
    end 
  end


endmodule



module bsg_mul_array_row_64_16_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [16:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [17:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [17:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[17] = s_o[0];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_17_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [17:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [18:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [18:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[18] = s_o[0];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_18_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [18:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [19:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [19:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[19] = s_o[0];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_19_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [19:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [20:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [20:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[20] = s_o[0];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_20_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [20:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [21:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [21:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[21] = s_o[0];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_21_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [21:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [22:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [22:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[22] = s_o[0];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_22_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [22:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [23:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [23:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[23] = s_o[0];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_23_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [23:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [24:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [24:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[24] = s_o[0];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_24_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [24:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [25:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [25:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[25] = s_o[0];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_25_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [25:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [26:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [26:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[26] = s_o[0];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_26_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [26:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [27:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [27:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[27] = s_o[0];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_27_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [27:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [28:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [28:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[28] = s_o[0];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_28_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [28:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [29:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [29:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[29] = s_o[0];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_29_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [29:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [30:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [30:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[30] = s_o[0];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_30_0
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [30:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [31:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [31:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[31] = s_o[0];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_31_1
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [31:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [32:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire N0,N1,pc,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,
  N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,
  N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,
  N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,
  N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,
  N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,
  N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,
  N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,
  N229,N230,N231,N232,N233,N234,N235;
  wire [63:0] pp,ps;
  reg [32:0] prod_accum_o;
  reg [63:0] a_o,b_o,s_o;
  reg c_o;

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32], b_i[32:32] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(ps),
    .c_o(pc)
  );

  assign { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                       (N1)? a_i : 1'b0;
  assign N0 = rst_i;
  assign N1 = N2;
  assign { N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                             (N1)? b_i : 1'b0;
  assign { N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N1)? ps : 1'b0;
  assign N195 = (N0)? 1'b0 : 
                (N1)? pc : 1'b0;
  assign { N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                    (N1)? { ps[0:0], prod_accum_i } : 1'b0;
  assign N2 = ~rst_i;
  assign N229 = ~v_i;
  assign N230 = N229 & N2;
  assign N231 = ~N230;
  assign N232 = N229 & N2;
  assign N233 = ~N232;
  assign N234 = N229 & N2;
  assign N235 = ~N234;

  always @(posedge clk_i) begin
    if(N231) begin
      { prod_accum_o[32:32] } <= { N228 };
      { b_o[33:0] } <= { N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 };
      { s_o[63:0] } <= { N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131 };
      c_o <= N195;
    end 
    if(N233) begin
      { prod_accum_o[31:31], prod_accum_o[4:0] } <= { N227, N200, N199, N198, N197, N196 };
      { a_o[63:0] } <= { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 };
      { b_o[63:34] } <= { N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101 };
    end 
    if(N235) begin
      { prod_accum_o[30:5] } <= { N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201 };
    end 
  end


endmodule



module bsg_mul_array_row_64_32_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [32:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [33:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [33:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[33] = s_o[0];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_33_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [33:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [34:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [34:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[34] = s_o[0];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34], b_i[34:34] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_34_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [34:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [35:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [35:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[35] = s_o[0];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35], b_i[35:35] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_35_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [35:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [36:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [36:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[36] = s_o[0];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36], b_i[36:36] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_36_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [36:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [37:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [37:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[37] = s_o[0];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37], b_i[37:37] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_37_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [37:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [38:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [38:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[38] = s_o[0];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38], b_i[38:38] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_38_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [38:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [39:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [39:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[39] = s_o[0];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39], b_i[39:39] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_39_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [39:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [40:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [40:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[40] = s_o[0];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40], b_i[40:40] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_40_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [40:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [41:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [41:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[41] = s_o[0];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41], b_i[41:41] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_41_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [41:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [42:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [42:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[42] = s_o[0];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42], b_i[42:42] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_42_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [42:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [43:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [43:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[43] = s_o[0];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43], b_i[43:43] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_43_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [43:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [44:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [44:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[44] = s_o[0];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44], b_i[44:44] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_44_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [44:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [45:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [45:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[45] = s_o[0];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45], b_i[45:45] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_45_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [45:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [46:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [46:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[46] = s_o[0];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46], b_i[46:46] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_46_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [46:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [47:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [47:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[47] = s_o[0];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47], b_i[47:47] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_47_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [47:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [48:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [48:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[48] = s_o[0];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48], b_i[48:48] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_48_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [48:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [49:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [49:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[49] = s_o[0];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49], b_i[49:49] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_49_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [49:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [50:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [50:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[50] = s_o[0];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50], b_i[50:50] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_50_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [50:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [51:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [51:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[51] = s_o[0];
  assign prod_accum_o[50] = prod_accum_i[50];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51], b_i[51:51] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_51_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [51:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [52:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [52:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[52] = s_o[0];
  assign prod_accum_o[51] = prod_accum_i[51];
  assign prod_accum_o[50] = prod_accum_i[50];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52], b_i[52:52] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_52_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [52:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [53:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [53:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[53] = s_o[0];
  assign prod_accum_o[52] = prod_accum_i[52];
  assign prod_accum_o[51] = prod_accum_i[51];
  assign prod_accum_o[50] = prod_accum_i[50];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53], b_i[53:53] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_53_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [53:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [54:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [54:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[54] = s_o[0];
  assign prod_accum_o[53] = prod_accum_i[53];
  assign prod_accum_o[52] = prod_accum_i[52];
  assign prod_accum_o[51] = prod_accum_i[51];
  assign prod_accum_o[50] = prod_accum_i[50];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54], b_i[54:54] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_54_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [54:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [55:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [55:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[55] = s_o[0];
  assign prod_accum_o[54] = prod_accum_i[54];
  assign prod_accum_o[53] = prod_accum_i[53];
  assign prod_accum_o[52] = prod_accum_i[52];
  assign prod_accum_o[51] = prod_accum_i[51];
  assign prod_accum_o[50] = prod_accum_i[50];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55], b_i[55:55] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_55_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [55:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [56:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [56:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[56] = s_o[0];
  assign prod_accum_o[55] = prod_accum_i[55];
  assign prod_accum_o[54] = prod_accum_i[54];
  assign prod_accum_o[53] = prod_accum_i[53];
  assign prod_accum_o[52] = prod_accum_i[52];
  assign prod_accum_o[51] = prod_accum_i[51];
  assign prod_accum_o[50] = prod_accum_i[50];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56], b_i[56:56] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_56_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [56:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [57:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [57:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[57] = s_o[0];
  assign prod_accum_o[56] = prod_accum_i[56];
  assign prod_accum_o[55] = prod_accum_i[55];
  assign prod_accum_o[54] = prod_accum_i[54];
  assign prod_accum_o[53] = prod_accum_i[53];
  assign prod_accum_o[52] = prod_accum_i[52];
  assign prod_accum_o[51] = prod_accum_i[51];
  assign prod_accum_o[50] = prod_accum_i[50];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57], b_i[57:57] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_57_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [57:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [58:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [58:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[58] = s_o[0];
  assign prod_accum_o[57] = prod_accum_i[57];
  assign prod_accum_o[56] = prod_accum_i[56];
  assign prod_accum_o[55] = prod_accum_i[55];
  assign prod_accum_o[54] = prod_accum_i[54];
  assign prod_accum_o[53] = prod_accum_i[53];
  assign prod_accum_o[52] = prod_accum_i[52];
  assign prod_accum_o[51] = prod_accum_i[51];
  assign prod_accum_o[50] = prod_accum_i[50];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58], b_i[58:58] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_58_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [58:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [59:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [59:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[59] = s_o[0];
  assign prod_accum_o[58] = prod_accum_i[58];
  assign prod_accum_o[57] = prod_accum_i[57];
  assign prod_accum_o[56] = prod_accum_i[56];
  assign prod_accum_o[55] = prod_accum_i[55];
  assign prod_accum_o[54] = prod_accum_i[54];
  assign prod_accum_o[53] = prod_accum_i[53];
  assign prod_accum_o[52] = prod_accum_i[52];
  assign prod_accum_o[51] = prod_accum_i[51];
  assign prod_accum_o[50] = prod_accum_i[50];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59], b_i[59:59] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_59_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [59:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [60:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [60:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[60] = s_o[0];
  assign prod_accum_o[59] = prod_accum_i[59];
  assign prod_accum_o[58] = prod_accum_i[58];
  assign prod_accum_o[57] = prod_accum_i[57];
  assign prod_accum_o[56] = prod_accum_i[56];
  assign prod_accum_o[55] = prod_accum_i[55];
  assign prod_accum_o[54] = prod_accum_i[54];
  assign prod_accum_o[53] = prod_accum_i[53];
  assign prod_accum_o[52] = prod_accum_i[52];
  assign prod_accum_o[51] = prod_accum_i[51];
  assign prod_accum_o[50] = prod_accum_i[50];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60], b_i[60:60] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_60_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [60:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [61:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [61:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[61] = s_o[0];
  assign prod_accum_o[60] = prod_accum_i[60];
  assign prod_accum_o[59] = prod_accum_i[59];
  assign prod_accum_o[58] = prod_accum_i[58];
  assign prod_accum_o[57] = prod_accum_i[57];
  assign prod_accum_o[56] = prod_accum_i[56];
  assign prod_accum_o[55] = prod_accum_i[55];
  assign prod_accum_o[54] = prod_accum_i[54];
  assign prod_accum_o[53] = prod_accum_i[53];
  assign prod_accum_o[52] = prod_accum_i[52];
  assign prod_accum_o[51] = prod_accum_i[51];
  assign prod_accum_o[50] = prod_accum_i[50];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61], b_i[61:61] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_61_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [61:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [62:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,pp;
  wire [62:0] prod_accum_o;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[62] = s_o[0];
  assign prod_accum_o[61] = prod_accum_i[61];
  assign prod_accum_o[60] = prod_accum_i[60];
  assign prod_accum_o[59] = prod_accum_i[59];
  assign prod_accum_o[58] = prod_accum_i[58];
  assign prod_accum_o[57] = prod_accum_i[57];
  assign prod_accum_o[56] = prod_accum_i[56];
  assign prod_accum_o[55] = prod_accum_i[55];
  assign prod_accum_o[54] = prod_accum_i[54];
  assign prod_accum_o[53] = prod_accum_i[53];
  assign prod_accum_o[52] = prod_accum_i[52];
  assign prod_accum_o[51] = prod_accum_i[51];
  assign prod_accum_o[50] = prod_accum_i[50];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62], b_i[62:62] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_64_62_x
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [62:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [63:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [63:0] a_o,b_o,s_o,prod_accum_o,pp;
  wire c_o;
  assign a_o[63] = a_i[63];
  assign a_o[62] = a_i[62];
  assign a_o[61] = a_i[61];
  assign a_o[60] = a_i[60];
  assign a_o[59] = a_i[59];
  assign a_o[58] = a_i[58];
  assign a_o[57] = a_i[57];
  assign a_o[56] = a_i[56];
  assign a_o[55] = a_i[55];
  assign a_o[54] = a_i[54];
  assign a_o[53] = a_i[53];
  assign a_o[52] = a_i[52];
  assign a_o[51] = a_i[51];
  assign a_o[50] = a_i[50];
  assign a_o[49] = a_i[49];
  assign a_o[48] = a_i[48];
  assign a_o[47] = a_i[47];
  assign a_o[46] = a_i[46];
  assign a_o[45] = a_i[45];
  assign a_o[44] = a_i[44];
  assign a_o[43] = a_i[43];
  assign a_o[42] = a_i[42];
  assign a_o[41] = a_i[41];
  assign a_o[40] = a_i[40];
  assign a_o[39] = a_i[39];
  assign a_o[38] = a_i[38];
  assign a_o[37] = a_i[37];
  assign a_o[36] = a_i[36];
  assign a_o[35] = a_i[35];
  assign a_o[34] = a_i[34];
  assign a_o[33] = a_i[33];
  assign a_o[32] = a_i[32];
  assign a_o[31] = a_i[31];
  assign a_o[30] = a_i[30];
  assign a_o[29] = a_i[29];
  assign a_o[28] = a_i[28];
  assign a_o[27] = a_i[27];
  assign a_o[26] = a_i[26];
  assign a_o[25] = a_i[25];
  assign a_o[24] = a_i[24];
  assign a_o[23] = a_i[23];
  assign a_o[22] = a_i[22];
  assign a_o[21] = a_i[21];
  assign a_o[20] = a_i[20];
  assign a_o[19] = a_i[19];
  assign a_o[18] = a_i[18];
  assign a_o[17] = a_i[17];
  assign a_o[16] = a_i[16];
  assign a_o[15] = a_i[15];
  assign a_o[14] = a_i[14];
  assign a_o[13] = a_i[13];
  assign a_o[12] = a_i[12];
  assign a_o[11] = a_i[11];
  assign a_o[10] = a_i[10];
  assign a_o[9] = a_i[9];
  assign a_o[8] = a_i[8];
  assign a_o[7] = a_i[7];
  assign a_o[6] = a_i[6];
  assign a_o[5] = a_i[5];
  assign a_o[4] = a_i[4];
  assign a_o[3] = a_i[3];
  assign a_o[2] = a_i[2];
  assign a_o[1] = a_i[1];
  assign a_o[0] = a_i[0];
  assign b_o[63] = b_i[63];
  assign b_o[62] = b_i[62];
  assign b_o[61] = b_i[61];
  assign b_o[60] = b_i[60];
  assign b_o[59] = b_i[59];
  assign b_o[58] = b_i[58];
  assign b_o[57] = b_i[57];
  assign b_o[56] = b_i[56];
  assign b_o[55] = b_i[55];
  assign b_o[54] = b_i[54];
  assign b_o[53] = b_i[53];
  assign b_o[52] = b_i[52];
  assign b_o[51] = b_i[51];
  assign b_o[50] = b_i[50];
  assign b_o[49] = b_i[49];
  assign b_o[48] = b_i[48];
  assign b_o[47] = b_i[47];
  assign b_o[46] = b_i[46];
  assign b_o[45] = b_i[45];
  assign b_o[44] = b_i[44];
  assign b_o[43] = b_i[43];
  assign b_o[42] = b_i[42];
  assign b_o[41] = b_i[41];
  assign b_o[40] = b_i[40];
  assign b_o[39] = b_i[39];
  assign b_o[38] = b_i[38];
  assign b_o[37] = b_i[37];
  assign b_o[36] = b_i[36];
  assign b_o[35] = b_i[35];
  assign b_o[34] = b_i[34];
  assign b_o[33] = b_i[33];
  assign b_o[32] = b_i[32];
  assign b_o[31] = b_i[31];
  assign b_o[30] = b_i[30];
  assign b_o[29] = b_i[29];
  assign b_o[28] = b_i[28];
  assign b_o[27] = b_i[27];
  assign b_o[26] = b_i[26];
  assign b_o[25] = b_i[25];
  assign b_o[24] = b_i[24];
  assign b_o[23] = b_i[23];
  assign b_o[22] = b_i[22];
  assign b_o[21] = b_i[21];
  assign b_o[20] = b_i[20];
  assign b_o[19] = b_i[19];
  assign b_o[18] = b_i[18];
  assign b_o[17] = b_i[17];
  assign b_o[16] = b_i[16];
  assign b_o[15] = b_i[15];
  assign b_o[14] = b_i[14];
  assign b_o[13] = b_i[13];
  assign b_o[12] = b_i[12];
  assign b_o[11] = b_i[11];
  assign b_o[10] = b_i[10];
  assign b_o[9] = b_i[9];
  assign b_o[8] = b_i[8];
  assign b_o[7] = b_i[7];
  assign b_o[6] = b_i[6];
  assign b_o[5] = b_i[5];
  assign b_o[4] = b_i[4];
  assign b_o[3] = b_i[3];
  assign b_o[2] = b_i[2];
  assign b_o[1] = b_i[1];
  assign b_o[0] = b_i[0];
  assign prod_accum_o[63] = s_o[0];
  assign prod_accum_o[62] = prod_accum_i[62];
  assign prod_accum_o[61] = prod_accum_i[61];
  assign prod_accum_o[60] = prod_accum_i[60];
  assign prod_accum_o[59] = prod_accum_i[59];
  assign prod_accum_o[58] = prod_accum_i[58];
  assign prod_accum_o[57] = prod_accum_i[57];
  assign prod_accum_o[56] = prod_accum_i[56];
  assign prod_accum_o[55] = prod_accum_i[55];
  assign prod_accum_o[54] = prod_accum_i[54];
  assign prod_accum_o[53] = prod_accum_i[53];
  assign prod_accum_o[52] = prod_accum_i[52];
  assign prod_accum_o[51] = prod_accum_i[51];
  assign prod_accum_o[50] = prod_accum_i[50];
  assign prod_accum_o[49] = prod_accum_i[49];
  assign prod_accum_o[48] = prod_accum_i[48];
  assign prod_accum_o[47] = prod_accum_i[47];
  assign prod_accum_o[46] = prod_accum_i[46];
  assign prod_accum_o[45] = prod_accum_i[45];
  assign prod_accum_o[44] = prod_accum_i[44];
  assign prod_accum_o[43] = prod_accum_i[43];
  assign prod_accum_o[42] = prod_accum_i[42];
  assign prod_accum_o[41] = prod_accum_i[41];
  assign prod_accum_o[40] = prod_accum_i[40];
  assign prod_accum_o[39] = prod_accum_i[39];
  assign prod_accum_o[38] = prod_accum_i[38];
  assign prod_accum_o[37] = prod_accum_i[37];
  assign prod_accum_o[36] = prod_accum_i[36];
  assign prod_accum_o[35] = prod_accum_i[35];
  assign prod_accum_o[34] = prod_accum_i[34];
  assign prod_accum_o[33] = prod_accum_i[33];
  assign prod_accum_o[32] = prod_accum_i[32];
  assign prod_accum_o[31] = prod_accum_i[31];
  assign prod_accum_o[30] = prod_accum_i[30];
  assign prod_accum_o[29] = prod_accum_i[29];
  assign prod_accum_o[28] = prod_accum_i[28];
  assign prod_accum_o[27] = prod_accum_i[27];
  assign prod_accum_o[26] = prod_accum_i[26];
  assign prod_accum_o[25] = prod_accum_i[25];
  assign prod_accum_o[24] = prod_accum_i[24];
  assign prod_accum_o[23] = prod_accum_i[23];
  assign prod_accum_o[22] = prod_accum_i[22];
  assign prod_accum_o[21] = prod_accum_i[21];
  assign prod_accum_o[20] = prod_accum_i[20];
  assign prod_accum_o[19] = prod_accum_i[19];
  assign prod_accum_o[18] = prod_accum_i[18];
  assign prod_accum_o[17] = prod_accum_i[17];
  assign prod_accum_o[16] = prod_accum_i[16];
  assign prod_accum_o[15] = prod_accum_i[15];
  assign prod_accum_o[14] = prod_accum_i[14];
  assign prod_accum_o[13] = prod_accum_i[13];
  assign prod_accum_o[12] = prod_accum_i[12];
  assign prod_accum_o[11] = prod_accum_i[11];
  assign prod_accum_o[10] = prod_accum_i[10];
  assign prod_accum_o[9] = prod_accum_i[9];
  assign prod_accum_o[8] = prod_accum_i[8];
  assign prod_accum_o[7] = prod_accum_i[7];
  assign prod_accum_o[6] = prod_accum_i[6];
  assign prod_accum_o[5] = prod_accum_i[5];
  assign prod_accum_o[4] = prod_accum_i[4];
  assign prod_accum_o[3] = prod_accum_i[3];
  assign prod_accum_o[2] = prod_accum_i[2];
  assign prod_accum_o[1] = prod_accum_i[1];
  assign prod_accum_o[0] = prod_accum_i[0];

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63], b_i[63:63] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  o
);

  input [63:0] a_i;
  input [63:0] b_i;
  output [127:0] o;
  input clk_i;
  input rst_i;
  input v_i;
  wire [127:0] o;
  wire s_r_6__63_,s_r_6__62_,s_r_6__61_,s_r_6__60_,s_r_6__59_,s_r_6__58_,s_r_6__57_,
  s_r_6__56_,s_r_6__55_,s_r_6__54_,s_r_6__53_,s_r_6__52_,s_r_6__51_,s_r_6__50_,
  s_r_6__49_,s_r_6__48_,s_r_6__47_,s_r_6__46_,s_r_6__45_,s_r_6__44_,s_r_6__43_,
  s_r_6__42_,s_r_6__41_,s_r_6__40_,s_r_6__39_,s_r_6__38_,s_r_6__37_,s_r_6__36_,s_r_6__35_,
  s_r_6__34_,s_r_6__33_,s_r_6__32_,s_r_6__31_,s_r_6__30_,s_r_6__29_,s_r_6__28_,
  s_r_6__27_,s_r_6__26_,s_r_6__25_,s_r_6__24_,s_r_6__23_,s_r_6__22_,s_r_6__21_,
  s_r_6__20_,s_r_6__19_,s_r_6__18_,s_r_6__17_,s_r_6__16_,s_r_6__15_,s_r_6__14_,
  s_r_6__13_,s_r_6__12_,s_r_6__11_,s_r_6__10_,s_r_6__9_,s_r_6__8_,s_r_6__7_,s_r_6__6_,
  s_r_6__5_,s_r_6__4_,s_r_6__3_,s_r_6__2_,s_r_6__1_,s_r_6__0_,s_r_5__63_,s_r_5__62_,
  s_r_5__61_,s_r_5__60_,s_r_5__59_,s_r_5__58_,s_r_5__57_,s_r_5__56_,s_r_5__55_,
  s_r_5__54_,s_r_5__53_,s_r_5__52_,s_r_5__51_,s_r_5__50_,s_r_5__49_,s_r_5__48_,
  s_r_5__47_,s_r_5__46_,s_r_5__45_,s_r_5__44_,s_r_5__43_,s_r_5__42_,s_r_5__41_,s_r_5__40_,
  s_r_5__39_,s_r_5__38_,s_r_5__37_,s_r_5__36_,s_r_5__35_,s_r_5__34_,s_r_5__33_,
  s_r_5__32_,s_r_5__31_,s_r_5__30_,s_r_5__29_,s_r_5__28_,s_r_5__27_,s_r_5__26_,
  s_r_5__25_,s_r_5__24_,s_r_5__23_,s_r_5__22_,s_r_5__21_,s_r_5__20_,s_r_5__19_,s_r_5__18_,
  s_r_5__17_,s_r_5__16_,s_r_5__15_,s_r_5__14_,s_r_5__13_,s_r_5__12_,s_r_5__11_,
  s_r_5__10_,s_r_5__9_,s_r_5__8_,s_r_5__7_,s_r_5__6_,s_r_5__5_,s_r_5__4_,s_r_5__3_,
  s_r_5__2_,s_r_5__1_,s_r_5__0_,s_r_4__63_,s_r_4__62_,s_r_4__61_,s_r_4__60_,
  s_r_4__59_,s_r_4__58_,s_r_4__57_,s_r_4__56_,s_r_4__55_,s_r_4__54_,s_r_4__53_,s_r_4__52_,
  s_r_4__51_,s_r_4__50_,s_r_4__49_,s_r_4__48_,s_r_4__47_,s_r_4__46_,s_r_4__45_,
  s_r_4__44_,s_r_4__43_,s_r_4__42_,s_r_4__41_,s_r_4__40_,s_r_4__39_,s_r_4__38_,
  s_r_4__37_,s_r_4__36_,s_r_4__35_,s_r_4__34_,s_r_4__33_,s_r_4__32_,s_r_4__31_,
  s_r_4__30_,s_r_4__29_,s_r_4__28_,s_r_4__27_,s_r_4__26_,s_r_4__25_,s_r_4__24_,s_r_4__23_,
  s_r_4__22_,s_r_4__21_,s_r_4__20_,s_r_4__19_,s_r_4__18_,s_r_4__17_,s_r_4__16_,
  s_r_4__15_,s_r_4__14_,s_r_4__13_,s_r_4__12_,s_r_4__11_,s_r_4__10_,s_r_4__9_,
  s_r_4__8_,s_r_4__7_,s_r_4__6_,s_r_4__5_,s_r_4__4_,s_r_4__3_,s_r_4__2_,s_r_4__1_,
  s_r_4__0_,s_r_3__63_,s_r_3__62_,s_r_3__61_,s_r_3__60_,s_r_3__59_,s_r_3__58_,s_r_3__57_,
  s_r_3__56_,s_r_3__55_,s_r_3__54_,s_r_3__53_,s_r_3__52_,s_r_3__51_,s_r_3__50_,
  s_r_3__49_,s_r_3__48_,s_r_3__47_,s_r_3__46_,s_r_3__45_,s_r_3__44_,s_r_3__43_,
  s_r_3__42_,s_r_3__41_,s_r_3__40_,s_r_3__39_,s_r_3__38_,s_r_3__37_,s_r_3__36_,
  s_r_3__35_,s_r_3__34_,s_r_3__33_,s_r_3__32_,s_r_3__31_,s_r_3__30_,s_r_3__29_,s_r_3__28_,
  s_r_3__27_,s_r_3__26_,s_r_3__25_,s_r_3__24_,s_r_3__23_,s_r_3__22_,s_r_3__21_,
  s_r_3__20_,s_r_3__19_,s_r_3__18_,s_r_3__17_,s_r_3__16_,s_r_3__15_,s_r_3__14_,
  s_r_3__13_,s_r_3__12_,s_r_3__11_,s_r_3__10_,s_r_3__9_,s_r_3__8_,s_r_3__7_,s_r_3__6_,
  s_r_3__5_,s_r_3__4_,s_r_3__3_,s_r_3__2_,s_r_3__1_,s_r_3__0_,s_r_2__63_,s_r_2__62_,
  s_r_2__61_,s_r_2__60_,s_r_2__59_,s_r_2__58_,s_r_2__57_,s_r_2__56_,s_r_2__55_,
  s_r_2__54_,s_r_2__53_,s_r_2__52_,s_r_2__51_,s_r_2__50_,s_r_2__49_,s_r_2__48_,
  s_r_2__47_,s_r_2__46_,s_r_2__45_,s_r_2__44_,s_r_2__43_,s_r_2__42_,s_r_2__41_,s_r_2__40_,
  s_r_2__39_,s_r_2__38_,s_r_2__37_,s_r_2__36_,s_r_2__35_,s_r_2__34_,s_r_2__33_,
  s_r_2__32_,s_r_2__31_,s_r_2__30_,s_r_2__29_,s_r_2__28_,s_r_2__27_,s_r_2__26_,
  s_r_2__25_,s_r_2__24_,s_r_2__23_,s_r_2__22_,s_r_2__21_,s_r_2__20_,s_r_2__19_,
  s_r_2__18_,s_r_2__17_,s_r_2__16_,s_r_2__15_,s_r_2__14_,s_r_2__13_,s_r_2__12_,s_r_2__11_,
  s_r_2__10_,s_r_2__9_,s_r_2__8_,s_r_2__7_,s_r_2__6_,s_r_2__5_,s_r_2__4_,s_r_2__3_,
  s_r_2__2_,s_r_2__1_,s_r_2__0_,s_r_1__63_,s_r_1__62_,s_r_1__61_,s_r_1__60_,
  s_r_1__59_,s_r_1__58_,s_r_1__57_,s_r_1__56_,s_r_1__55_,s_r_1__54_,s_r_1__53_,
  s_r_1__52_,s_r_1__51_,s_r_1__50_,s_r_1__49_,s_r_1__48_,s_r_1__47_,s_r_1__46_,s_r_1__45_,
  s_r_1__44_,s_r_1__43_,s_r_1__42_,s_r_1__41_,s_r_1__40_,s_r_1__39_,s_r_1__38_,
  s_r_1__37_,s_r_1__36_,s_r_1__35_,s_r_1__34_,s_r_1__33_,s_r_1__32_,s_r_1__31_,
  s_r_1__30_,s_r_1__29_,s_r_1__28_,s_r_1__27_,s_r_1__26_,s_r_1__25_,s_r_1__24_,
  s_r_1__23_,s_r_1__22_,s_r_1__21_,s_r_1__20_,s_r_1__19_,s_r_1__18_,s_r_1__17_,s_r_1__16_,
  s_r_1__15_,s_r_1__14_,s_r_1__13_,s_r_1__12_,s_r_1__11_,s_r_1__10_,s_r_1__9_,
  s_r_1__8_,s_r_1__7_,s_r_1__6_,s_r_1__5_,s_r_1__4_,s_r_1__3_,s_r_1__2_,s_r_1__1_,
  s_r_1__0_,s_r_0__63_,s_r_0__62_,s_r_0__61_,s_r_0__60_,s_r_0__59_,s_r_0__58_,
  s_r_0__57_,s_r_0__56_,s_r_0__55_,s_r_0__54_,s_r_0__53_,s_r_0__52_,s_r_0__51_,s_r_0__50_,
  s_r_0__49_,s_r_0__48_,s_r_0__47_,s_r_0__46_,s_r_0__45_,s_r_0__44_,s_r_0__43_,
  s_r_0__42_,s_r_0__41_,s_r_0__40_,s_r_0__39_,s_r_0__38_,s_r_0__37_,s_r_0__36_,
  s_r_0__35_,s_r_0__34_,s_r_0__33_,s_r_0__32_,s_r_0__31_,s_r_0__30_,s_r_0__29_,s_r_0__28_,
  s_r_0__27_,s_r_0__26_,s_r_0__25_,s_r_0__24_,s_r_0__23_,s_r_0__22_,s_r_0__21_,
  s_r_0__20_,s_r_0__19_,s_r_0__18_,s_r_0__17_,s_r_0__16_,s_r_0__15_,s_r_0__14_,
  s_r_0__13_,s_r_0__12_,s_r_0__11_,s_r_0__10_,s_r_0__9_,s_r_0__8_,s_r_0__7_,s_r_0__6_,
  s_r_0__5_,s_r_0__4_,s_r_0__3_,s_r_0__2_,s_r_0__1_,s_r_0__0_,prod_accum_6__7_,
  prod_accum_6__6_,prod_accum_6__5_,prod_accum_6__4_,prod_accum_6__3_,prod_accum_6__2_,
  prod_accum_6__1_,prod_accum_6__0_,prod_accum_5__6_,prod_accum_5__5_,
  prod_accum_5__4_,prod_accum_5__3_,prod_accum_5__2_,prod_accum_5__1_,prod_accum_5__0_,
  prod_accum_4__5_,prod_accum_4__4_,prod_accum_4__3_,prod_accum_4__2_,prod_accum_4__1_,
  prod_accum_4__0_,prod_accum_3__4_,prod_accum_3__3_,prod_accum_3__2_,
  prod_accum_3__1_,prod_accum_3__0_,prod_accum_2__3_,prod_accum_2__2_,prod_accum_2__1_,
  prod_accum_2__0_,prod_accum_1__2_,prod_accum_1__1_,prod_accum_1__0_,prod_accum_0__1_,
  prod_accum_0__0_,s_r_14__63_,s_r_14__62_,s_r_14__61_,s_r_14__60_,s_r_14__59_,
  s_r_14__58_,s_r_14__57_,s_r_14__56_,s_r_14__55_,s_r_14__54_,s_r_14__53_,s_r_14__52_,
  s_r_14__51_,s_r_14__50_,s_r_14__49_,s_r_14__48_,s_r_14__47_,s_r_14__46_,
  s_r_14__45_,s_r_14__44_,s_r_14__43_,s_r_14__42_,s_r_14__41_,s_r_14__40_,s_r_14__39_,
  s_r_14__38_,s_r_14__37_,s_r_14__36_,s_r_14__35_,s_r_14__34_,s_r_14__33_,s_r_14__32_,
  s_r_14__31_,s_r_14__30_,s_r_14__29_,s_r_14__28_,s_r_14__27_,s_r_14__26_,
  s_r_14__25_,s_r_14__24_,s_r_14__23_,s_r_14__22_,s_r_14__21_,s_r_14__20_,s_r_14__19_,
  s_r_14__18_,s_r_14__17_,s_r_14__16_,s_r_14__15_,s_r_14__14_,s_r_14__13_,s_r_14__12_,
  s_r_14__11_,s_r_14__10_,s_r_14__9_,s_r_14__8_,s_r_14__7_,s_r_14__6_,s_r_14__5_,
  s_r_14__4_,s_r_14__3_,s_r_14__2_,s_r_14__1_,s_r_14__0_,s_r_13__63_,s_r_13__62_,
  s_r_13__61_,s_r_13__60_,s_r_13__59_,s_r_13__58_,s_r_13__57_,s_r_13__56_,s_r_13__55_,
  s_r_13__54_,s_r_13__53_,s_r_13__52_,s_r_13__51_,s_r_13__50_,s_r_13__49_,
  s_r_13__48_,s_r_13__47_,s_r_13__46_,s_r_13__45_,s_r_13__44_,s_r_13__43_,s_r_13__42_,
  s_r_13__41_,s_r_13__40_,s_r_13__39_,s_r_13__38_,s_r_13__37_,s_r_13__36_,s_r_13__35_,
  s_r_13__34_,s_r_13__33_,s_r_13__32_,s_r_13__31_,s_r_13__30_,s_r_13__29_,
  s_r_13__28_,s_r_13__27_,s_r_13__26_,s_r_13__25_,s_r_13__24_,s_r_13__23_,s_r_13__22_,
  s_r_13__21_,s_r_13__20_,s_r_13__19_,s_r_13__18_,s_r_13__17_,s_r_13__16_,s_r_13__15_,
  s_r_13__14_,s_r_13__13_,s_r_13__12_,s_r_13__11_,s_r_13__10_,s_r_13__9_,
  s_r_13__8_,s_r_13__7_,s_r_13__6_,s_r_13__5_,s_r_13__4_,s_r_13__3_,s_r_13__2_,s_r_13__1_,
  s_r_13__0_,s_r_12__63_,s_r_12__62_,s_r_12__61_,s_r_12__60_,s_r_12__59_,
  s_r_12__58_,s_r_12__57_,s_r_12__56_,s_r_12__55_,s_r_12__54_,s_r_12__53_,s_r_12__52_,
  s_r_12__51_,s_r_12__50_,s_r_12__49_,s_r_12__48_,s_r_12__47_,s_r_12__46_,s_r_12__45_,
  s_r_12__44_,s_r_12__43_,s_r_12__42_,s_r_12__41_,s_r_12__40_,s_r_12__39_,
  s_r_12__38_,s_r_12__37_,s_r_12__36_,s_r_12__35_,s_r_12__34_,s_r_12__33_,s_r_12__32_,
  s_r_12__31_,s_r_12__30_,s_r_12__29_,s_r_12__28_,s_r_12__27_,s_r_12__26_,s_r_12__25_,
  s_r_12__24_,s_r_12__23_,s_r_12__22_,s_r_12__21_,s_r_12__20_,s_r_12__19_,
  s_r_12__18_,s_r_12__17_,s_r_12__16_,s_r_12__15_,s_r_12__14_,s_r_12__13_,s_r_12__12_,
  s_r_12__11_,s_r_12__10_,s_r_12__9_,s_r_12__8_,s_r_12__7_,s_r_12__6_,s_r_12__5_,
  s_r_12__4_,s_r_12__3_,s_r_12__2_,s_r_12__1_,s_r_12__0_,s_r_11__63_,s_r_11__62_,
  s_r_11__61_,s_r_11__60_,s_r_11__59_,s_r_11__58_,s_r_11__57_,s_r_11__56_,s_r_11__55_,
  s_r_11__54_,s_r_11__53_,s_r_11__52_,s_r_11__51_,s_r_11__50_,s_r_11__49_,s_r_11__48_,
  s_r_11__47_,s_r_11__46_,s_r_11__45_,s_r_11__44_,s_r_11__43_,s_r_11__42_,
  s_r_11__41_,s_r_11__40_,s_r_11__39_,s_r_11__38_,s_r_11__37_,s_r_11__36_,s_r_11__35_,
  s_r_11__34_,s_r_11__33_,s_r_11__32_,s_r_11__31_,s_r_11__30_,s_r_11__29_,s_r_11__28_,
  s_r_11__27_,s_r_11__26_,s_r_11__25_,s_r_11__24_,s_r_11__23_,s_r_11__22_,
  s_r_11__21_,s_r_11__20_,s_r_11__19_,s_r_11__18_,s_r_11__17_,s_r_11__16_,s_r_11__15_,
  s_r_11__14_,s_r_11__13_,s_r_11__12_,s_r_11__11_,s_r_11__10_,s_r_11__9_,s_r_11__8_,
  s_r_11__7_,s_r_11__6_,s_r_11__5_,s_r_11__4_,s_r_11__3_,s_r_11__2_,s_r_11__1_,
  s_r_11__0_,s_r_10__63_,s_r_10__62_,s_r_10__61_,s_r_10__60_,s_r_10__59_,s_r_10__58_,
  s_r_10__57_,s_r_10__56_,s_r_10__55_,s_r_10__54_,s_r_10__53_,s_r_10__52_,
  s_r_10__51_,s_r_10__50_,s_r_10__49_,s_r_10__48_,s_r_10__47_,s_r_10__46_,s_r_10__45_,
  s_r_10__44_,s_r_10__43_,s_r_10__42_,s_r_10__41_,s_r_10__40_,s_r_10__39_,s_r_10__38_,
  s_r_10__37_,s_r_10__36_,s_r_10__35_,s_r_10__34_,s_r_10__33_,s_r_10__32_,
  s_r_10__31_,s_r_10__30_,s_r_10__29_,s_r_10__28_,s_r_10__27_,s_r_10__26_,s_r_10__25_,
  s_r_10__24_,s_r_10__23_,s_r_10__22_,s_r_10__21_,s_r_10__20_,s_r_10__19_,s_r_10__18_,
  s_r_10__17_,s_r_10__16_,s_r_10__15_,s_r_10__14_,s_r_10__13_,s_r_10__12_,
  s_r_10__11_,s_r_10__10_,s_r_10__9_,s_r_10__8_,s_r_10__7_,s_r_10__6_,s_r_10__5_,s_r_10__4_,
  s_r_10__3_,s_r_10__2_,s_r_10__1_,s_r_10__0_,s_r_9__63_,s_r_9__62_,s_r_9__61_,
  s_r_9__60_,s_r_9__59_,s_r_9__58_,s_r_9__57_,s_r_9__56_,s_r_9__55_,s_r_9__54_,
  s_r_9__53_,s_r_9__52_,s_r_9__51_,s_r_9__50_,s_r_9__49_,s_r_9__48_,s_r_9__47_,
  s_r_9__46_,s_r_9__45_,s_r_9__44_,s_r_9__43_,s_r_9__42_,s_r_9__41_,s_r_9__40_,s_r_9__39_,
  s_r_9__38_,s_r_9__37_,s_r_9__36_,s_r_9__35_,s_r_9__34_,s_r_9__33_,s_r_9__32_,
  s_r_9__31_,s_r_9__30_,s_r_9__29_,s_r_9__28_,s_r_9__27_,s_r_9__26_,s_r_9__25_,
  s_r_9__24_,s_r_9__23_,s_r_9__22_,s_r_9__21_,s_r_9__20_,s_r_9__19_,s_r_9__18_,s_r_9__17_,
  s_r_9__16_,s_r_9__15_,s_r_9__14_,s_r_9__13_,s_r_9__12_,s_r_9__11_,s_r_9__10_,
  s_r_9__9_,s_r_9__8_,s_r_9__7_,s_r_9__6_,s_r_9__5_,s_r_9__4_,s_r_9__3_,s_r_9__2_,
  s_r_9__1_,s_r_9__0_,s_r_8__63_,s_r_8__62_,s_r_8__61_,s_r_8__60_,s_r_8__59_,
  s_r_8__58_,s_r_8__57_,s_r_8__56_,s_r_8__55_,s_r_8__54_,s_r_8__53_,s_r_8__52_,s_r_8__51_,
  s_r_8__50_,s_r_8__49_,s_r_8__48_,s_r_8__47_,s_r_8__46_,s_r_8__45_,s_r_8__44_,
  s_r_8__43_,s_r_8__42_,s_r_8__41_,s_r_8__40_,s_r_8__39_,s_r_8__38_,s_r_8__37_,
  s_r_8__36_,s_r_8__35_,s_r_8__34_,s_r_8__33_,s_r_8__32_,s_r_8__31_,s_r_8__30_,
  s_r_8__29_,s_r_8__28_,s_r_8__27_,s_r_8__26_,s_r_8__25_,s_r_8__24_,s_r_8__23_,s_r_8__22_,
  s_r_8__21_,s_r_8__20_,s_r_8__19_,s_r_8__18_,s_r_8__17_,s_r_8__16_,s_r_8__15_,
  s_r_8__14_,s_r_8__13_,s_r_8__12_,s_r_8__11_,s_r_8__10_,s_r_8__9_,s_r_8__8_,
  s_r_8__7_,s_r_8__6_,s_r_8__5_,s_r_8__4_,s_r_8__3_,s_r_8__2_,s_r_8__1_,s_r_8__0_,
  s_r_7__63_,s_r_7__62_,s_r_7__61_,s_r_7__60_,s_r_7__59_,s_r_7__58_,s_r_7__57_,s_r_7__56_,
  s_r_7__55_,s_r_7__54_,s_r_7__53_,s_r_7__52_,s_r_7__51_,s_r_7__50_,s_r_7__49_,
  s_r_7__48_,s_r_7__47_,s_r_7__46_,s_r_7__45_,s_r_7__44_,s_r_7__43_,s_r_7__42_,
  s_r_7__41_,s_r_7__40_,s_r_7__39_,s_r_7__38_,s_r_7__37_,s_r_7__36_,s_r_7__35_,
  s_r_7__34_,s_r_7__33_,s_r_7__32_,s_r_7__31_,s_r_7__30_,s_r_7__29_,s_r_7__28_,s_r_7__27_,
  s_r_7__26_,s_r_7__25_,s_r_7__24_,s_r_7__23_,s_r_7__22_,s_r_7__21_,s_r_7__20_,
  s_r_7__19_,s_r_7__18_,s_r_7__17_,s_r_7__16_,s_r_7__15_,s_r_7__14_,s_r_7__13_,
  s_r_7__12_,s_r_7__11_,s_r_7__10_,s_r_7__9_,s_r_7__8_,s_r_7__7_,s_r_7__6_,s_r_7__5_,
  s_r_7__4_,s_r_7__3_,s_r_7__2_,s_r_7__1_,s_r_7__0_,prod_accum_14__15_,
  prod_accum_14__14_,prod_accum_14__13_,prod_accum_14__12_,prod_accum_14__11_,prod_accum_14__10_,
  prod_accum_14__9_,prod_accum_14__8_,prod_accum_14__7_,prod_accum_14__6_,
  prod_accum_14__5_,prod_accum_14__4_,prod_accum_14__3_,prod_accum_14__2_,
  prod_accum_14__1_,prod_accum_14__0_,prod_accum_13__14_,prod_accum_13__13_,prod_accum_13__12_,
  prod_accum_13__11_,prod_accum_13__10_,prod_accum_13__9_,prod_accum_13__8_,
  prod_accum_13__7_,prod_accum_13__6_,prod_accum_13__5_,prod_accum_13__4_,prod_accum_13__3_,
  prod_accum_13__2_,prod_accum_13__1_,prod_accum_13__0_,prod_accum_12__13_,
  prod_accum_12__12_,prod_accum_12__11_,prod_accum_12__10_,prod_accum_12__9_,
  prod_accum_12__8_,prod_accum_12__7_,prod_accum_12__6_,prod_accum_12__5_,prod_accum_12__4_,
  prod_accum_12__3_,prod_accum_12__2_,prod_accum_12__1_,prod_accum_12__0_,
  prod_accum_11__12_,prod_accum_11__11_,prod_accum_11__10_,prod_accum_11__9_,
  prod_accum_11__8_,prod_accum_11__7_,prod_accum_11__6_,prod_accum_11__5_,prod_accum_11__4_,
  prod_accum_11__3_,prod_accum_11__2_,prod_accum_11__1_,prod_accum_11__0_,
  prod_accum_10__11_,prod_accum_10__10_,prod_accum_10__9_,prod_accum_10__8_,prod_accum_10__7_,
  prod_accum_10__6_,prod_accum_10__5_,prod_accum_10__4_,prod_accum_10__3_,
  prod_accum_10__2_,prod_accum_10__1_,prod_accum_10__0_,prod_accum_9__10_,prod_accum_9__9_,
  prod_accum_9__8_,prod_accum_9__7_,prod_accum_9__6_,prod_accum_9__5_,
  prod_accum_9__4_,prod_accum_9__3_,prod_accum_9__2_,prod_accum_9__1_,prod_accum_9__0_,
  prod_accum_8__9_,prod_accum_8__8_,prod_accum_8__7_,prod_accum_8__6_,prod_accum_8__5_,
  prod_accum_8__4_,prod_accum_8__3_,prod_accum_8__2_,prod_accum_8__1_,
  prod_accum_8__0_,prod_accum_7__8_,prod_accum_7__7_,prod_accum_7__6_,prod_accum_7__5_,
  prod_accum_7__4_,prod_accum_7__3_,prod_accum_7__2_,prod_accum_7__1_,prod_accum_7__0_,
  s_r_22__63_,s_r_22__62_,s_r_22__61_,s_r_22__60_,s_r_22__59_,s_r_22__58_,s_r_22__57_,
  s_r_22__56_,s_r_22__55_,s_r_22__54_,s_r_22__53_,s_r_22__52_,s_r_22__51_,
  s_r_22__50_,s_r_22__49_,s_r_22__48_,s_r_22__47_,s_r_22__46_,s_r_22__45_,s_r_22__44_,
  s_r_22__43_,s_r_22__42_,s_r_22__41_,s_r_22__40_,s_r_22__39_,s_r_22__38_,s_r_22__37_,
  s_r_22__36_,s_r_22__35_,s_r_22__34_,s_r_22__33_,s_r_22__32_,s_r_22__31_,
  s_r_22__30_,s_r_22__29_,s_r_22__28_,s_r_22__27_,s_r_22__26_,s_r_22__25_,s_r_22__24_,
  s_r_22__23_,s_r_22__22_,s_r_22__21_,s_r_22__20_,s_r_22__19_,s_r_22__18_,s_r_22__17_,
  s_r_22__16_,s_r_22__15_,s_r_22__14_,s_r_22__13_,s_r_22__12_,s_r_22__11_,
  s_r_22__10_,s_r_22__9_,s_r_22__8_,s_r_22__7_,s_r_22__6_,s_r_22__5_,s_r_22__4_,
  s_r_22__3_,s_r_22__2_,s_r_22__1_,s_r_22__0_,s_r_21__63_,s_r_21__62_,s_r_21__61_,
  s_r_21__60_,s_r_21__59_,s_r_21__58_,s_r_21__57_,s_r_21__56_,s_r_21__55_,s_r_21__54_,
  s_r_21__53_,s_r_21__52_,s_r_21__51_,s_r_21__50_,s_r_21__49_,s_r_21__48_,s_r_21__47_,
  s_r_21__46_,s_r_21__45_,s_r_21__44_,s_r_21__43_,s_r_21__42_,s_r_21__41_,
  s_r_21__40_,s_r_21__39_,s_r_21__38_,s_r_21__37_,s_r_21__36_,s_r_21__35_,s_r_21__34_,
  s_r_21__33_,s_r_21__32_,s_r_21__31_,s_r_21__30_,s_r_21__29_,s_r_21__28_,s_r_21__27_,
  s_r_21__26_,s_r_21__25_,s_r_21__24_,s_r_21__23_,s_r_21__22_,s_r_21__21_,
  s_r_21__20_,s_r_21__19_,s_r_21__18_,s_r_21__17_,s_r_21__16_,s_r_21__15_,s_r_21__14_,
  s_r_21__13_,s_r_21__12_,s_r_21__11_,s_r_21__10_,s_r_21__9_,s_r_21__8_,s_r_21__7_,
  s_r_21__6_,s_r_21__5_,s_r_21__4_,s_r_21__3_,s_r_21__2_,s_r_21__1_,s_r_21__0_,
  s_r_20__63_,s_r_20__62_,s_r_20__61_,s_r_20__60_,s_r_20__59_,s_r_20__58_,s_r_20__57_,
  s_r_20__56_,s_r_20__55_,s_r_20__54_,s_r_20__53_,s_r_20__52_,s_r_20__51_,s_r_20__50_,
  s_r_20__49_,s_r_20__48_,s_r_20__47_,s_r_20__46_,s_r_20__45_,s_r_20__44_,
  s_r_20__43_,s_r_20__42_,s_r_20__41_,s_r_20__40_,s_r_20__39_,s_r_20__38_,s_r_20__37_,
  s_r_20__36_,s_r_20__35_,s_r_20__34_,s_r_20__33_,s_r_20__32_,s_r_20__31_,s_r_20__30_,
  s_r_20__29_,s_r_20__28_,s_r_20__27_,s_r_20__26_,s_r_20__25_,s_r_20__24_,
  s_r_20__23_,s_r_20__22_,s_r_20__21_,s_r_20__20_,s_r_20__19_,s_r_20__18_,s_r_20__17_,
  s_r_20__16_,s_r_20__15_,s_r_20__14_,s_r_20__13_,s_r_20__12_,s_r_20__11_,s_r_20__10_,
  s_r_20__9_,s_r_20__8_,s_r_20__7_,s_r_20__6_,s_r_20__5_,s_r_20__4_,s_r_20__3_,
  s_r_20__2_,s_r_20__1_,s_r_20__0_,s_r_19__63_,s_r_19__62_,s_r_19__61_,s_r_19__60_,
  s_r_19__59_,s_r_19__58_,s_r_19__57_,s_r_19__56_,s_r_19__55_,s_r_19__54_,
  s_r_19__53_,s_r_19__52_,s_r_19__51_,s_r_19__50_,s_r_19__49_,s_r_19__48_,s_r_19__47_,
  s_r_19__46_,s_r_19__45_,s_r_19__44_,s_r_19__43_,s_r_19__42_,s_r_19__41_,s_r_19__40_,
  s_r_19__39_,s_r_19__38_,s_r_19__37_,s_r_19__36_,s_r_19__35_,s_r_19__34_,
  s_r_19__33_,s_r_19__32_,s_r_19__31_,s_r_19__30_,s_r_19__29_,s_r_19__28_,s_r_19__27_,
  s_r_19__26_,s_r_19__25_,s_r_19__24_,s_r_19__23_,s_r_19__22_,s_r_19__21_,s_r_19__20_,
  s_r_19__19_,s_r_19__18_,s_r_19__17_,s_r_19__16_,s_r_19__15_,s_r_19__14_,
  s_r_19__13_,s_r_19__12_,s_r_19__11_,s_r_19__10_,s_r_19__9_,s_r_19__8_,s_r_19__7_,
  s_r_19__6_,s_r_19__5_,s_r_19__4_,s_r_19__3_,s_r_19__2_,s_r_19__1_,s_r_19__0_,s_r_18__63_,
  s_r_18__62_,s_r_18__61_,s_r_18__60_,s_r_18__59_,s_r_18__58_,s_r_18__57_,
  s_r_18__56_,s_r_18__55_,s_r_18__54_,s_r_18__53_,s_r_18__52_,s_r_18__51_,s_r_18__50_,
  s_r_18__49_,s_r_18__48_,s_r_18__47_,s_r_18__46_,s_r_18__45_,s_r_18__44_,s_r_18__43_,
  s_r_18__42_,s_r_18__41_,s_r_18__40_,s_r_18__39_,s_r_18__38_,s_r_18__37_,
  s_r_18__36_,s_r_18__35_,s_r_18__34_,s_r_18__33_,s_r_18__32_,s_r_18__31_,s_r_18__30_,
  s_r_18__29_,s_r_18__28_,s_r_18__27_,s_r_18__26_,s_r_18__25_,s_r_18__24_,s_r_18__23_,
  s_r_18__22_,s_r_18__21_,s_r_18__20_,s_r_18__19_,s_r_18__18_,s_r_18__17_,
  s_r_18__16_,s_r_18__15_,s_r_18__14_,s_r_18__13_,s_r_18__12_,s_r_18__11_,s_r_18__10_,
  s_r_18__9_,s_r_18__8_,s_r_18__7_,s_r_18__6_,s_r_18__5_,s_r_18__4_,s_r_18__3_,
  s_r_18__2_,s_r_18__1_,s_r_18__0_,s_r_17__63_,s_r_17__62_,s_r_17__61_,s_r_17__60_,
  s_r_17__59_,s_r_17__58_,s_r_17__57_,s_r_17__56_,s_r_17__55_,s_r_17__54_,s_r_17__53_,
  s_r_17__52_,s_r_17__51_,s_r_17__50_,s_r_17__49_,s_r_17__48_,s_r_17__47_,
  s_r_17__46_,s_r_17__45_,s_r_17__44_,s_r_17__43_,s_r_17__42_,s_r_17__41_,s_r_17__40_,
  s_r_17__39_,s_r_17__38_,s_r_17__37_,s_r_17__36_,s_r_17__35_,s_r_17__34_,s_r_17__33_,
  s_r_17__32_,s_r_17__31_,s_r_17__30_,s_r_17__29_,s_r_17__28_,s_r_17__27_,
  s_r_17__26_,s_r_17__25_,s_r_17__24_,s_r_17__23_,s_r_17__22_,s_r_17__21_,s_r_17__20_,
  s_r_17__19_,s_r_17__18_,s_r_17__17_,s_r_17__16_,s_r_17__15_,s_r_17__14_,s_r_17__13_,
  s_r_17__12_,s_r_17__11_,s_r_17__10_,s_r_17__9_,s_r_17__8_,s_r_17__7_,s_r_17__6_,
  s_r_17__5_,s_r_17__4_,s_r_17__3_,s_r_17__2_,s_r_17__1_,s_r_17__0_,s_r_16__63_,
  s_r_16__62_,s_r_16__61_,s_r_16__60_,s_r_16__59_,s_r_16__58_,s_r_16__57_,s_r_16__56_,
  s_r_16__55_,s_r_16__54_,s_r_16__53_,s_r_16__52_,s_r_16__51_,s_r_16__50_,
  s_r_16__49_,s_r_16__48_,s_r_16__47_,s_r_16__46_,s_r_16__45_,s_r_16__44_,s_r_16__43_,
  s_r_16__42_,s_r_16__41_,s_r_16__40_,s_r_16__39_,s_r_16__38_,s_r_16__37_,s_r_16__36_,
  s_r_16__35_,s_r_16__34_,s_r_16__33_,s_r_16__32_,s_r_16__31_,s_r_16__30_,
  s_r_16__29_,s_r_16__28_,s_r_16__27_,s_r_16__26_,s_r_16__25_,s_r_16__24_,s_r_16__23_,
  s_r_16__22_,s_r_16__21_,s_r_16__20_,s_r_16__19_,s_r_16__18_,s_r_16__17_,s_r_16__16_,
  s_r_16__15_,s_r_16__14_,s_r_16__13_,s_r_16__12_,s_r_16__11_,s_r_16__10_,
  s_r_16__9_,s_r_16__8_,s_r_16__7_,s_r_16__6_,s_r_16__5_,s_r_16__4_,s_r_16__3_,s_r_16__2_,
  s_r_16__1_,s_r_16__0_,s_r_15__63_,s_r_15__62_,s_r_15__61_,s_r_15__60_,
  s_r_15__59_,s_r_15__58_,s_r_15__57_,s_r_15__56_,s_r_15__55_,s_r_15__54_,s_r_15__53_,
  s_r_15__52_,s_r_15__51_,s_r_15__50_,s_r_15__49_,s_r_15__48_,s_r_15__47_,s_r_15__46_,
  s_r_15__45_,s_r_15__44_,s_r_15__43_,s_r_15__42_,s_r_15__41_,s_r_15__40_,
  s_r_15__39_,s_r_15__38_,s_r_15__37_,s_r_15__36_,s_r_15__35_,s_r_15__34_,s_r_15__33_,
  s_r_15__32_,s_r_15__31_,s_r_15__30_,s_r_15__29_,s_r_15__28_,s_r_15__27_,s_r_15__26_,
  s_r_15__25_,s_r_15__24_,s_r_15__23_,s_r_15__22_,s_r_15__21_,s_r_15__20_,
  s_r_15__19_,s_r_15__18_,s_r_15__17_,s_r_15__16_,s_r_15__15_,s_r_15__14_,s_r_15__13_,
  s_r_15__12_,s_r_15__11_,s_r_15__10_,s_r_15__9_,s_r_15__8_,s_r_15__7_,s_r_15__6_,
  s_r_15__5_,s_r_15__4_,s_r_15__3_,s_r_15__2_,s_r_15__1_,s_r_15__0_,prod_accum_22__23_,
  prod_accum_22__22_,prod_accum_22__21_,prod_accum_22__20_,prod_accum_22__19_,
  prod_accum_22__18_,prod_accum_22__17_,prod_accum_22__16_,prod_accum_22__15_,
  prod_accum_22__14_,prod_accum_22__13_,prod_accum_22__12_,prod_accum_22__11_,
  prod_accum_22__10_,prod_accum_22__9_,prod_accum_22__8_,prod_accum_22__7_,prod_accum_22__6_,
  prod_accum_22__5_,prod_accum_22__4_,prod_accum_22__3_,prod_accum_22__2_,
  prod_accum_22__1_,prod_accum_22__0_,prod_accum_21__22_,prod_accum_21__21_,
  prod_accum_21__20_,prod_accum_21__19_,prod_accum_21__18_,prod_accum_21__17_,prod_accum_21__16_,
  prod_accum_21__15_,prod_accum_21__14_,prod_accum_21__13_,prod_accum_21__12_,
  prod_accum_21__11_,prod_accum_21__10_,prod_accum_21__9_,prod_accum_21__8_,
  prod_accum_21__7_,prod_accum_21__6_,prod_accum_21__5_,prod_accum_21__4_,prod_accum_21__3_,
  prod_accum_21__2_,prod_accum_21__1_,prod_accum_21__0_,prod_accum_20__21_,
  prod_accum_20__20_,prod_accum_20__19_,prod_accum_20__18_,prod_accum_20__17_,
  prod_accum_20__16_,prod_accum_20__15_,prod_accum_20__14_,prod_accum_20__13_,
  prod_accum_20__12_,prod_accum_20__11_,prod_accum_20__10_,prod_accum_20__9_,prod_accum_20__8_,
  prod_accum_20__7_,prod_accum_20__6_,prod_accum_20__5_,prod_accum_20__4_,
  prod_accum_20__3_,prod_accum_20__2_,prod_accum_20__1_,prod_accum_20__0_,prod_accum_19__20_,
  prod_accum_19__19_,prod_accum_19__18_,prod_accum_19__17_,prod_accum_19__16_,
  prod_accum_19__15_,prod_accum_19__14_,prod_accum_19__13_,prod_accum_19__12_,
  prod_accum_19__11_,prod_accum_19__10_,prod_accum_19__9_,prod_accum_19__8_,
  prod_accum_19__7_,prod_accum_19__6_,prod_accum_19__5_,prod_accum_19__4_,prod_accum_19__3_,
  prod_accum_19__2_,prod_accum_19__1_,prod_accum_19__0_,prod_accum_18__19_,
  prod_accum_18__18_,prod_accum_18__17_,prod_accum_18__16_,prod_accum_18__15_,
  prod_accum_18__14_,prod_accum_18__13_,prod_accum_18__12_,prod_accum_18__11_,prod_accum_18__10_,
  prod_accum_18__9_,prod_accum_18__8_,prod_accum_18__7_,prod_accum_18__6_,
  prod_accum_18__5_,prod_accum_18__4_,prod_accum_18__3_,prod_accum_18__2_,
  prod_accum_18__1_,prod_accum_18__0_,prod_accum_17__18_,prod_accum_17__17_,prod_accum_17__16_,
  prod_accum_17__15_,prod_accum_17__14_,prod_accum_17__13_,prod_accum_17__12_,
  prod_accum_17__11_,prod_accum_17__10_,prod_accum_17__9_,prod_accum_17__8_,
  prod_accum_17__7_,prod_accum_17__6_,prod_accum_17__5_,prod_accum_17__4_,prod_accum_17__3_,
  prod_accum_17__2_,prod_accum_17__1_,prod_accum_17__0_,prod_accum_16__17_,
  prod_accum_16__16_,prod_accum_16__15_,prod_accum_16__14_,prod_accum_16__13_,
  prod_accum_16__12_,prod_accum_16__11_,prod_accum_16__10_,prod_accum_16__9_,prod_accum_16__8_,
  prod_accum_16__7_,prod_accum_16__6_,prod_accum_16__5_,prod_accum_16__4_,
  prod_accum_16__3_,prod_accum_16__2_,prod_accum_16__1_,prod_accum_16__0_,
  prod_accum_15__16_,prod_accum_15__15_,prod_accum_15__14_,prod_accum_15__13_,prod_accum_15__12_,
  prod_accum_15__11_,prod_accum_15__10_,prod_accum_15__9_,prod_accum_15__8_,
  prod_accum_15__7_,prod_accum_15__6_,prod_accum_15__5_,prod_accum_15__4_,
  prod_accum_15__3_,prod_accum_15__2_,prod_accum_15__1_,prod_accum_15__0_,s_r_30__63_,s_r_30__62_,
  s_r_30__61_,s_r_30__60_,s_r_30__59_,s_r_30__58_,s_r_30__57_,s_r_30__56_,
  s_r_30__55_,s_r_30__54_,s_r_30__53_,s_r_30__52_,s_r_30__51_,s_r_30__50_,s_r_30__49_,
  s_r_30__48_,s_r_30__47_,s_r_30__46_,s_r_30__45_,s_r_30__44_,s_r_30__43_,s_r_30__42_,
  s_r_30__41_,s_r_30__40_,s_r_30__39_,s_r_30__38_,s_r_30__37_,s_r_30__36_,
  s_r_30__35_,s_r_30__34_,s_r_30__33_,s_r_30__32_,s_r_30__31_,s_r_30__30_,s_r_30__29_,
  s_r_30__28_,s_r_30__27_,s_r_30__26_,s_r_30__25_,s_r_30__24_,s_r_30__23_,s_r_30__22_,
  s_r_30__21_,s_r_30__20_,s_r_30__19_,s_r_30__18_,s_r_30__17_,s_r_30__16_,
  s_r_30__15_,s_r_30__14_,s_r_30__13_,s_r_30__12_,s_r_30__11_,s_r_30__10_,s_r_30__9_,
  s_r_30__8_,s_r_30__7_,s_r_30__6_,s_r_30__5_,s_r_30__4_,s_r_30__3_,s_r_30__2_,
  s_r_30__1_,s_r_30__0_,s_r_29__63_,s_r_29__62_,s_r_29__61_,s_r_29__60_,s_r_29__59_,
  s_r_29__58_,s_r_29__57_,s_r_29__56_,s_r_29__55_,s_r_29__54_,s_r_29__53_,s_r_29__52_,
  s_r_29__51_,s_r_29__50_,s_r_29__49_,s_r_29__48_,s_r_29__47_,s_r_29__46_,
  s_r_29__45_,s_r_29__44_,s_r_29__43_,s_r_29__42_,s_r_29__41_,s_r_29__40_,s_r_29__39_,
  s_r_29__38_,s_r_29__37_,s_r_29__36_,s_r_29__35_,s_r_29__34_,s_r_29__33_,s_r_29__32_,
  s_r_29__31_,s_r_29__30_,s_r_29__29_,s_r_29__28_,s_r_29__27_,s_r_29__26_,
  s_r_29__25_,s_r_29__24_,s_r_29__23_,s_r_29__22_,s_r_29__21_,s_r_29__20_,s_r_29__19_,
  s_r_29__18_,s_r_29__17_,s_r_29__16_,s_r_29__15_,s_r_29__14_,s_r_29__13_,s_r_29__12_,
  s_r_29__11_,s_r_29__10_,s_r_29__9_,s_r_29__8_,s_r_29__7_,s_r_29__6_,s_r_29__5_,
  s_r_29__4_,s_r_29__3_,s_r_29__2_,s_r_29__1_,s_r_29__0_,s_r_28__63_,s_r_28__62_,
  s_r_28__61_,s_r_28__60_,s_r_28__59_,s_r_28__58_,s_r_28__57_,s_r_28__56_,s_r_28__55_,
  s_r_28__54_,s_r_28__53_,s_r_28__52_,s_r_28__51_,s_r_28__50_,s_r_28__49_,
  s_r_28__48_,s_r_28__47_,s_r_28__46_,s_r_28__45_,s_r_28__44_,s_r_28__43_,s_r_28__42_,
  s_r_28__41_,s_r_28__40_,s_r_28__39_,s_r_28__38_,s_r_28__37_,s_r_28__36_,s_r_28__35_,
  s_r_28__34_,s_r_28__33_,s_r_28__32_,s_r_28__31_,s_r_28__30_,s_r_28__29_,
  s_r_28__28_,s_r_28__27_,s_r_28__26_,s_r_28__25_,s_r_28__24_,s_r_28__23_,s_r_28__22_,
  s_r_28__21_,s_r_28__20_,s_r_28__19_,s_r_28__18_,s_r_28__17_,s_r_28__16_,s_r_28__15_,
  s_r_28__14_,s_r_28__13_,s_r_28__12_,s_r_28__11_,s_r_28__10_,s_r_28__9_,
  s_r_28__8_,s_r_28__7_,s_r_28__6_,s_r_28__5_,s_r_28__4_,s_r_28__3_,s_r_28__2_,s_r_28__1_,
  s_r_28__0_,s_r_27__63_,s_r_27__62_,s_r_27__61_,s_r_27__60_,s_r_27__59_,
  s_r_27__58_,s_r_27__57_,s_r_27__56_,s_r_27__55_,s_r_27__54_,s_r_27__53_,s_r_27__52_,
  s_r_27__51_,s_r_27__50_,s_r_27__49_,s_r_27__48_,s_r_27__47_,s_r_27__46_,s_r_27__45_,
  s_r_27__44_,s_r_27__43_,s_r_27__42_,s_r_27__41_,s_r_27__40_,s_r_27__39_,
  s_r_27__38_,s_r_27__37_,s_r_27__36_,s_r_27__35_,s_r_27__34_,s_r_27__33_,s_r_27__32_,
  s_r_27__31_,s_r_27__30_,s_r_27__29_,s_r_27__28_,s_r_27__27_,s_r_27__26_,s_r_27__25_,
  s_r_27__24_,s_r_27__23_,s_r_27__22_,s_r_27__21_,s_r_27__20_,s_r_27__19_,
  s_r_27__18_,s_r_27__17_,s_r_27__16_,s_r_27__15_,s_r_27__14_,s_r_27__13_,s_r_27__12_,
  s_r_27__11_,s_r_27__10_,s_r_27__9_,s_r_27__8_,s_r_27__7_,s_r_27__6_,s_r_27__5_,
  s_r_27__4_,s_r_27__3_,s_r_27__2_,s_r_27__1_,s_r_27__0_,s_r_26__63_,s_r_26__62_,
  s_r_26__61_,s_r_26__60_,s_r_26__59_,s_r_26__58_,s_r_26__57_,s_r_26__56_,s_r_26__55_,
  s_r_26__54_,s_r_26__53_,s_r_26__52_,s_r_26__51_,s_r_26__50_,s_r_26__49_,s_r_26__48_,
  s_r_26__47_,s_r_26__46_,s_r_26__45_,s_r_26__44_,s_r_26__43_,s_r_26__42_,
  s_r_26__41_,s_r_26__40_,s_r_26__39_,s_r_26__38_,s_r_26__37_,s_r_26__36_,s_r_26__35_,
  s_r_26__34_,s_r_26__33_,s_r_26__32_,s_r_26__31_,s_r_26__30_,s_r_26__29_,s_r_26__28_,
  s_r_26__27_,s_r_26__26_,s_r_26__25_,s_r_26__24_,s_r_26__23_,s_r_26__22_,
  s_r_26__21_,s_r_26__20_,s_r_26__19_,s_r_26__18_,s_r_26__17_,s_r_26__16_,s_r_26__15_,
  s_r_26__14_,s_r_26__13_,s_r_26__12_,s_r_26__11_,s_r_26__10_,s_r_26__9_,s_r_26__8_,
  s_r_26__7_,s_r_26__6_,s_r_26__5_,s_r_26__4_,s_r_26__3_,s_r_26__2_,s_r_26__1_,
  s_r_26__0_,s_r_25__63_,s_r_25__62_,s_r_25__61_,s_r_25__60_,s_r_25__59_,s_r_25__58_,
  s_r_25__57_,s_r_25__56_,s_r_25__55_,s_r_25__54_,s_r_25__53_,s_r_25__52_,
  s_r_25__51_,s_r_25__50_,s_r_25__49_,s_r_25__48_,s_r_25__47_,s_r_25__46_,s_r_25__45_,
  s_r_25__44_,s_r_25__43_,s_r_25__42_,s_r_25__41_,s_r_25__40_,s_r_25__39_,s_r_25__38_,
  s_r_25__37_,s_r_25__36_,s_r_25__35_,s_r_25__34_,s_r_25__33_,s_r_25__32_,
  s_r_25__31_,s_r_25__30_,s_r_25__29_,s_r_25__28_,s_r_25__27_,s_r_25__26_,s_r_25__25_,
  s_r_25__24_,s_r_25__23_,s_r_25__22_,s_r_25__21_,s_r_25__20_,s_r_25__19_,s_r_25__18_,
  s_r_25__17_,s_r_25__16_,s_r_25__15_,s_r_25__14_,s_r_25__13_,s_r_25__12_,
  s_r_25__11_,s_r_25__10_,s_r_25__9_,s_r_25__8_,s_r_25__7_,s_r_25__6_,s_r_25__5_,s_r_25__4_,
  s_r_25__3_,s_r_25__2_,s_r_25__1_,s_r_25__0_,s_r_24__63_,s_r_24__62_,s_r_24__61_,
  s_r_24__60_,s_r_24__59_,s_r_24__58_,s_r_24__57_,s_r_24__56_,s_r_24__55_,
  s_r_24__54_,s_r_24__53_,s_r_24__52_,s_r_24__51_,s_r_24__50_,s_r_24__49_,s_r_24__48_,
  s_r_24__47_,s_r_24__46_,s_r_24__45_,s_r_24__44_,s_r_24__43_,s_r_24__42_,s_r_24__41_,
  s_r_24__40_,s_r_24__39_,s_r_24__38_,s_r_24__37_,s_r_24__36_,s_r_24__35_,
  s_r_24__34_,s_r_24__33_,s_r_24__32_,s_r_24__31_,s_r_24__30_,s_r_24__29_,s_r_24__28_,
  s_r_24__27_,s_r_24__26_,s_r_24__25_,s_r_24__24_,s_r_24__23_,s_r_24__22_,s_r_24__21_,
  s_r_24__20_,s_r_24__19_,s_r_24__18_,s_r_24__17_,s_r_24__16_,s_r_24__15_,
  s_r_24__14_,s_r_24__13_,s_r_24__12_,s_r_24__11_,s_r_24__10_,s_r_24__9_,s_r_24__8_,
  s_r_24__7_,s_r_24__6_,s_r_24__5_,s_r_24__4_,s_r_24__3_,s_r_24__2_,s_r_24__1_,
  s_r_24__0_,s_r_23__63_,s_r_23__62_,s_r_23__61_,s_r_23__60_,s_r_23__59_,s_r_23__58_,
  s_r_23__57_,s_r_23__56_,s_r_23__55_,s_r_23__54_,s_r_23__53_,s_r_23__52_,s_r_23__51_,
  s_r_23__50_,s_r_23__49_,s_r_23__48_,s_r_23__47_,s_r_23__46_,s_r_23__45_,
  s_r_23__44_,s_r_23__43_,s_r_23__42_,s_r_23__41_,s_r_23__40_,s_r_23__39_,s_r_23__38_,
  s_r_23__37_,s_r_23__36_,s_r_23__35_,s_r_23__34_,s_r_23__33_,s_r_23__32_,s_r_23__31_,
  s_r_23__30_,s_r_23__29_,s_r_23__28_,s_r_23__27_,s_r_23__26_,s_r_23__25_,
  s_r_23__24_,s_r_23__23_,s_r_23__22_,s_r_23__21_,s_r_23__20_,s_r_23__19_,s_r_23__18_,
  s_r_23__17_,s_r_23__16_,s_r_23__15_,s_r_23__14_,s_r_23__13_,s_r_23__12_,s_r_23__11_,
  s_r_23__10_,s_r_23__9_,s_r_23__8_,s_r_23__7_,s_r_23__6_,s_r_23__5_,s_r_23__4_,
  s_r_23__3_,s_r_23__2_,s_r_23__1_,s_r_23__0_,prod_accum_30__31_,prod_accum_30__30_,
  prod_accum_30__29_,prod_accum_30__28_,prod_accum_30__27_,prod_accum_30__26_,
  prod_accum_30__25_,prod_accum_30__24_,prod_accum_30__23_,prod_accum_30__22_,
  prod_accum_30__21_,prod_accum_30__20_,prod_accum_30__19_,prod_accum_30__18_,
  prod_accum_30__17_,prod_accum_30__16_,prod_accum_30__15_,prod_accum_30__14_,
  prod_accum_30__13_,prod_accum_30__12_,prod_accum_30__11_,prod_accum_30__10_,prod_accum_30__9_,
  prod_accum_30__8_,prod_accum_30__7_,prod_accum_30__6_,prod_accum_30__5_,
  prod_accum_30__4_,prod_accum_30__3_,prod_accum_30__2_,prod_accum_30__1_,prod_accum_30__0_,
  prod_accum_29__30_,prod_accum_29__29_,prod_accum_29__28_,prod_accum_29__27_,
  prod_accum_29__26_,prod_accum_29__25_,prod_accum_29__24_,prod_accum_29__23_,
  prod_accum_29__22_,prod_accum_29__21_,prod_accum_29__20_,prod_accum_29__19_,
  prod_accum_29__18_,prod_accum_29__17_,prod_accum_29__16_,prod_accum_29__15_,
  prod_accum_29__14_,prod_accum_29__13_,prod_accum_29__12_,prod_accum_29__11_,prod_accum_29__10_,
  prod_accum_29__9_,prod_accum_29__8_,prod_accum_29__7_,prod_accum_29__6_,
  prod_accum_29__5_,prod_accum_29__4_,prod_accum_29__3_,prod_accum_29__2_,prod_accum_29__1_,
  prod_accum_29__0_,prod_accum_28__29_,prod_accum_28__28_,prod_accum_28__27_,
  prod_accum_28__26_,prod_accum_28__25_,prod_accum_28__24_,prod_accum_28__23_,
  prod_accum_28__22_,prod_accum_28__21_,prod_accum_28__20_,prod_accum_28__19_,
  prod_accum_28__18_,prod_accum_28__17_,prod_accum_28__16_,prod_accum_28__15_,
  prod_accum_28__14_,prod_accum_28__13_,prod_accum_28__12_,prod_accum_28__11_,prod_accum_28__10_,
  prod_accum_28__9_,prod_accum_28__8_,prod_accum_28__7_,prod_accum_28__6_,
  prod_accum_28__5_,prod_accum_28__4_,prod_accum_28__3_,prod_accum_28__2_,prod_accum_28__1_,
  prod_accum_28__0_,prod_accum_27__28_,prod_accum_27__27_,prod_accum_27__26_,
  prod_accum_27__25_,prod_accum_27__24_,prod_accum_27__23_,prod_accum_27__22_,
  prod_accum_27__21_,prod_accum_27__20_,prod_accum_27__19_,prod_accum_27__18_,
  prod_accum_27__17_,prod_accum_27__16_,prod_accum_27__15_,prod_accum_27__14_,
  prod_accum_27__13_,prod_accum_27__12_,prod_accum_27__11_,prod_accum_27__10_,prod_accum_27__9_,
  prod_accum_27__8_,prod_accum_27__7_,prod_accum_27__6_,prod_accum_27__5_,
  prod_accum_27__4_,prod_accum_27__3_,prod_accum_27__2_,prod_accum_27__1_,prod_accum_27__0_,
  prod_accum_26__27_,prod_accum_26__26_,prod_accum_26__25_,prod_accum_26__24_,
  prod_accum_26__23_,prod_accum_26__22_,prod_accum_26__21_,prod_accum_26__20_,
  prod_accum_26__19_,prod_accum_26__18_,prod_accum_26__17_,prod_accum_26__16_,
  prod_accum_26__15_,prod_accum_26__14_,prod_accum_26__13_,prod_accum_26__12_,
  prod_accum_26__11_,prod_accum_26__10_,prod_accum_26__9_,prod_accum_26__8_,prod_accum_26__7_,
  prod_accum_26__6_,prod_accum_26__5_,prod_accum_26__4_,prod_accum_26__3_,
  prod_accum_26__2_,prod_accum_26__1_,prod_accum_26__0_,prod_accum_25__26_,prod_accum_25__25_,
  prod_accum_25__24_,prod_accum_25__23_,prod_accum_25__22_,prod_accum_25__21_,
  prod_accum_25__20_,prod_accum_25__19_,prod_accum_25__18_,prod_accum_25__17_,
  prod_accum_25__16_,prod_accum_25__15_,prod_accum_25__14_,prod_accum_25__13_,
  prod_accum_25__12_,prod_accum_25__11_,prod_accum_25__10_,prod_accum_25__9_,prod_accum_25__8_,
  prod_accum_25__7_,prod_accum_25__6_,prod_accum_25__5_,prod_accum_25__4_,
  prod_accum_25__3_,prod_accum_25__2_,prod_accum_25__1_,prod_accum_25__0_,
  prod_accum_24__25_,prod_accum_24__24_,prod_accum_24__23_,prod_accum_24__22_,prod_accum_24__21_,
  prod_accum_24__20_,prod_accum_24__19_,prod_accum_24__18_,prod_accum_24__17_,
  prod_accum_24__16_,prod_accum_24__15_,prod_accum_24__14_,prod_accum_24__13_,
  prod_accum_24__12_,prod_accum_24__11_,prod_accum_24__10_,prod_accum_24__9_,
  prod_accum_24__8_,prod_accum_24__7_,prod_accum_24__6_,prod_accum_24__5_,prod_accum_24__4_,
  prod_accum_24__3_,prod_accum_24__2_,prod_accum_24__1_,prod_accum_24__0_,
  prod_accum_23__24_,prod_accum_23__23_,prod_accum_23__22_,prod_accum_23__21_,
  prod_accum_23__20_,prod_accum_23__19_,prod_accum_23__18_,prod_accum_23__17_,prod_accum_23__16_,
  prod_accum_23__15_,prod_accum_23__14_,prod_accum_23__13_,prod_accum_23__12_,
  prod_accum_23__11_,prod_accum_23__10_,prod_accum_23__9_,prod_accum_23__8_,
  prod_accum_23__7_,prod_accum_23__6_,prod_accum_23__5_,prod_accum_23__4_,prod_accum_23__3_,
  prod_accum_23__2_,prod_accum_23__1_,prod_accum_23__0_,s_r_38__63_,s_r_38__62_,
  s_r_38__61_,s_r_38__60_,s_r_38__59_,s_r_38__58_,s_r_38__57_,s_r_38__56_,s_r_38__55_,
  s_r_38__54_,s_r_38__53_,s_r_38__52_,s_r_38__51_,s_r_38__50_,s_r_38__49_,
  s_r_38__48_,s_r_38__47_,s_r_38__46_,s_r_38__45_,s_r_38__44_,s_r_38__43_,s_r_38__42_,
  s_r_38__41_,s_r_38__40_,s_r_38__39_,s_r_38__38_,s_r_38__37_,s_r_38__36_,s_r_38__35_,
  s_r_38__34_,s_r_38__33_,s_r_38__32_,s_r_38__31_,s_r_38__30_,s_r_38__29_,
  s_r_38__28_,s_r_38__27_,s_r_38__26_,s_r_38__25_,s_r_38__24_,s_r_38__23_,s_r_38__22_,
  s_r_38__21_,s_r_38__20_,s_r_38__19_,s_r_38__18_,s_r_38__17_,s_r_38__16_,s_r_38__15_,
  s_r_38__14_,s_r_38__13_,s_r_38__12_,s_r_38__11_,s_r_38__10_,s_r_38__9_,
  s_r_38__8_,s_r_38__7_,s_r_38__6_,s_r_38__5_,s_r_38__4_,s_r_38__3_,s_r_38__2_,s_r_38__1_,
  s_r_38__0_,s_r_37__63_,s_r_37__62_,s_r_37__61_,s_r_37__60_,s_r_37__59_,
  s_r_37__58_,s_r_37__57_,s_r_37__56_,s_r_37__55_,s_r_37__54_,s_r_37__53_,s_r_37__52_,
  s_r_37__51_,s_r_37__50_,s_r_37__49_,s_r_37__48_,s_r_37__47_,s_r_37__46_,s_r_37__45_,
  s_r_37__44_,s_r_37__43_,s_r_37__42_,s_r_37__41_,s_r_37__40_,s_r_37__39_,
  s_r_37__38_,s_r_37__37_,s_r_37__36_,s_r_37__35_,s_r_37__34_,s_r_37__33_,s_r_37__32_,
  s_r_37__31_,s_r_37__30_,s_r_37__29_,s_r_37__28_,s_r_37__27_,s_r_37__26_,s_r_37__25_,
  s_r_37__24_,s_r_37__23_,s_r_37__22_,s_r_37__21_,s_r_37__20_,s_r_37__19_,
  s_r_37__18_,s_r_37__17_,s_r_37__16_,s_r_37__15_,s_r_37__14_,s_r_37__13_,s_r_37__12_,
  s_r_37__11_,s_r_37__10_,s_r_37__9_,s_r_37__8_,s_r_37__7_,s_r_37__6_,s_r_37__5_,
  s_r_37__4_,s_r_37__3_,s_r_37__2_,s_r_37__1_,s_r_37__0_,s_r_36__63_,s_r_36__62_,
  s_r_36__61_,s_r_36__60_,s_r_36__59_,s_r_36__58_,s_r_36__57_,s_r_36__56_,s_r_36__55_,
  s_r_36__54_,s_r_36__53_,s_r_36__52_,s_r_36__51_,s_r_36__50_,s_r_36__49_,s_r_36__48_,
  s_r_36__47_,s_r_36__46_,s_r_36__45_,s_r_36__44_,s_r_36__43_,s_r_36__42_,
  s_r_36__41_,s_r_36__40_,s_r_36__39_,s_r_36__38_,s_r_36__37_,s_r_36__36_,s_r_36__35_,
  s_r_36__34_,s_r_36__33_,s_r_36__32_,s_r_36__31_,s_r_36__30_,s_r_36__29_,s_r_36__28_,
  s_r_36__27_,s_r_36__26_,s_r_36__25_,s_r_36__24_,s_r_36__23_,s_r_36__22_,
  s_r_36__21_,s_r_36__20_,s_r_36__19_,s_r_36__18_,s_r_36__17_,s_r_36__16_,s_r_36__15_,
  s_r_36__14_,s_r_36__13_,s_r_36__12_,s_r_36__11_,s_r_36__10_,s_r_36__9_,s_r_36__8_,
  s_r_36__7_,s_r_36__6_,s_r_36__5_,s_r_36__4_,s_r_36__3_,s_r_36__2_,s_r_36__1_,
  s_r_36__0_,s_r_35__63_,s_r_35__62_,s_r_35__61_,s_r_35__60_,s_r_35__59_,s_r_35__58_,
  s_r_35__57_,s_r_35__56_,s_r_35__55_,s_r_35__54_,s_r_35__53_,s_r_35__52_,
  s_r_35__51_,s_r_35__50_,s_r_35__49_,s_r_35__48_,s_r_35__47_,s_r_35__46_,s_r_35__45_,
  s_r_35__44_,s_r_35__43_,s_r_35__42_,s_r_35__41_,s_r_35__40_,s_r_35__39_,s_r_35__38_,
  s_r_35__37_,s_r_35__36_,s_r_35__35_,s_r_35__34_,s_r_35__33_,s_r_35__32_,
  s_r_35__31_,s_r_35__30_,s_r_35__29_,s_r_35__28_,s_r_35__27_,s_r_35__26_,s_r_35__25_,
  s_r_35__24_,s_r_35__23_,s_r_35__22_,s_r_35__21_,s_r_35__20_,s_r_35__19_,s_r_35__18_,
  s_r_35__17_,s_r_35__16_,s_r_35__15_,s_r_35__14_,s_r_35__13_,s_r_35__12_,
  s_r_35__11_,s_r_35__10_,s_r_35__9_,s_r_35__8_,s_r_35__7_,s_r_35__6_,s_r_35__5_,s_r_35__4_,
  s_r_35__3_,s_r_35__2_,s_r_35__1_,s_r_35__0_,s_r_34__63_,s_r_34__62_,s_r_34__61_,
  s_r_34__60_,s_r_34__59_,s_r_34__58_,s_r_34__57_,s_r_34__56_,s_r_34__55_,
  s_r_34__54_,s_r_34__53_,s_r_34__52_,s_r_34__51_,s_r_34__50_,s_r_34__49_,s_r_34__48_,
  s_r_34__47_,s_r_34__46_,s_r_34__45_,s_r_34__44_,s_r_34__43_,s_r_34__42_,s_r_34__41_,
  s_r_34__40_,s_r_34__39_,s_r_34__38_,s_r_34__37_,s_r_34__36_,s_r_34__35_,
  s_r_34__34_,s_r_34__33_,s_r_34__32_,s_r_34__31_,s_r_34__30_,s_r_34__29_,s_r_34__28_,
  s_r_34__27_,s_r_34__26_,s_r_34__25_,s_r_34__24_,s_r_34__23_,s_r_34__22_,s_r_34__21_,
  s_r_34__20_,s_r_34__19_,s_r_34__18_,s_r_34__17_,s_r_34__16_,s_r_34__15_,
  s_r_34__14_,s_r_34__13_,s_r_34__12_,s_r_34__11_,s_r_34__10_,s_r_34__9_,s_r_34__8_,
  s_r_34__7_,s_r_34__6_,s_r_34__5_,s_r_34__4_,s_r_34__3_,s_r_34__2_,s_r_34__1_,
  s_r_34__0_,s_r_33__63_,s_r_33__62_,s_r_33__61_,s_r_33__60_,s_r_33__59_,s_r_33__58_,
  s_r_33__57_,s_r_33__56_,s_r_33__55_,s_r_33__54_,s_r_33__53_,s_r_33__52_,s_r_33__51_,
  s_r_33__50_,s_r_33__49_,s_r_33__48_,s_r_33__47_,s_r_33__46_,s_r_33__45_,
  s_r_33__44_,s_r_33__43_,s_r_33__42_,s_r_33__41_,s_r_33__40_,s_r_33__39_,s_r_33__38_,
  s_r_33__37_,s_r_33__36_,s_r_33__35_,s_r_33__34_,s_r_33__33_,s_r_33__32_,s_r_33__31_,
  s_r_33__30_,s_r_33__29_,s_r_33__28_,s_r_33__27_,s_r_33__26_,s_r_33__25_,
  s_r_33__24_,s_r_33__23_,s_r_33__22_,s_r_33__21_,s_r_33__20_,s_r_33__19_,s_r_33__18_,
  s_r_33__17_,s_r_33__16_,s_r_33__15_,s_r_33__14_,s_r_33__13_,s_r_33__12_,s_r_33__11_,
  s_r_33__10_,s_r_33__9_,s_r_33__8_,s_r_33__7_,s_r_33__6_,s_r_33__5_,s_r_33__4_,
  s_r_33__3_,s_r_33__2_,s_r_33__1_,s_r_33__0_,s_r_32__63_,s_r_32__62_,s_r_32__61_,
  s_r_32__60_,s_r_32__59_,s_r_32__58_,s_r_32__57_,s_r_32__56_,s_r_32__55_,s_r_32__54_,
  s_r_32__53_,s_r_32__52_,s_r_32__51_,s_r_32__50_,s_r_32__49_,s_r_32__48_,
  s_r_32__47_,s_r_32__46_,s_r_32__45_,s_r_32__44_,s_r_32__43_,s_r_32__42_,s_r_32__41_,
  s_r_32__40_,s_r_32__39_,s_r_32__38_,s_r_32__37_,s_r_32__36_,s_r_32__35_,s_r_32__34_,
  s_r_32__33_,s_r_32__32_,s_r_32__31_,s_r_32__30_,s_r_32__29_,s_r_32__28_,
  s_r_32__27_,s_r_32__26_,s_r_32__25_,s_r_32__24_,s_r_32__23_,s_r_32__22_,s_r_32__21_,
  s_r_32__20_,s_r_32__19_,s_r_32__18_,s_r_32__17_,s_r_32__16_,s_r_32__15_,s_r_32__14_,
  s_r_32__13_,s_r_32__12_,s_r_32__11_,s_r_32__10_,s_r_32__9_,s_r_32__8_,
  s_r_32__7_,s_r_32__6_,s_r_32__5_,s_r_32__4_,s_r_32__3_,s_r_32__2_,s_r_32__1_,s_r_32__0_,
  s_r_31__63_,s_r_31__62_,s_r_31__61_,s_r_31__60_,s_r_31__59_,s_r_31__58_,
  s_r_31__57_,s_r_31__56_,s_r_31__55_,s_r_31__54_,s_r_31__53_,s_r_31__52_,s_r_31__51_,
  s_r_31__50_,s_r_31__49_,s_r_31__48_,s_r_31__47_,s_r_31__46_,s_r_31__45_,s_r_31__44_,
  s_r_31__43_,s_r_31__42_,s_r_31__41_,s_r_31__40_,s_r_31__39_,s_r_31__38_,
  s_r_31__37_,s_r_31__36_,s_r_31__35_,s_r_31__34_,s_r_31__33_,s_r_31__32_,s_r_31__31_,
  s_r_31__30_,s_r_31__29_,s_r_31__28_,s_r_31__27_,s_r_31__26_,s_r_31__25_,s_r_31__24_,
  s_r_31__23_,s_r_31__22_,s_r_31__21_,s_r_31__20_,s_r_31__19_,s_r_31__18_,
  s_r_31__17_,s_r_31__16_,s_r_31__15_,s_r_31__14_,s_r_31__13_,s_r_31__12_,s_r_31__11_,
  s_r_31__10_,s_r_31__9_,s_r_31__8_,s_r_31__7_,s_r_31__6_,s_r_31__5_,s_r_31__4_,
  s_r_31__3_,s_r_31__2_,s_r_31__1_,s_r_31__0_,prod_accum_38__39_,prod_accum_38__38_,
  prod_accum_38__37_,prod_accum_38__36_,prod_accum_38__35_,prod_accum_38__34_,
  prod_accum_38__33_,prod_accum_38__32_,prod_accum_38__31_,prod_accum_38__30_,
  prod_accum_38__29_,prod_accum_38__28_,prod_accum_38__27_,prod_accum_38__26_,
  prod_accum_38__25_,prod_accum_38__24_,prod_accum_38__23_,prod_accum_38__22_,prod_accum_38__21_,
  prod_accum_38__20_,prod_accum_38__19_,prod_accum_38__18_,prod_accum_38__17_,
  prod_accum_38__16_,prod_accum_38__15_,prod_accum_38__14_,prod_accum_38__13_,
  prod_accum_38__12_,prod_accum_38__11_,prod_accum_38__10_,prod_accum_38__9_,
  prod_accum_38__8_,prod_accum_38__7_,prod_accum_38__6_,prod_accum_38__5_,prod_accum_38__4_,
  prod_accum_38__3_,prod_accum_38__2_,prod_accum_38__1_,prod_accum_38__0_,
  prod_accum_37__38_,prod_accum_37__37_,prod_accum_37__36_,prod_accum_37__35_,
  prod_accum_37__34_,prod_accum_37__33_,prod_accum_37__32_,prod_accum_37__31_,prod_accum_37__30_,
  prod_accum_37__29_,prod_accum_37__28_,prod_accum_37__27_,prod_accum_37__26_,
  prod_accum_37__25_,prod_accum_37__24_,prod_accum_37__23_,prod_accum_37__22_,
  prod_accum_37__21_,prod_accum_37__20_,prod_accum_37__19_,prod_accum_37__18_,
  prod_accum_37__17_,prod_accum_37__16_,prod_accum_37__15_,prod_accum_37__14_,prod_accum_37__13_,
  prod_accum_37__12_,prod_accum_37__11_,prod_accum_37__10_,prod_accum_37__9_,
  prod_accum_37__8_,prod_accum_37__7_,prod_accum_37__6_,prod_accum_37__5_,
  prod_accum_37__4_,prod_accum_37__3_,prod_accum_37__2_,prod_accum_37__1_,prod_accum_37__0_,
  prod_accum_36__37_,prod_accum_36__36_,prod_accum_36__35_,prod_accum_36__34_,
  prod_accum_36__33_,prod_accum_36__32_,prod_accum_36__31_,prod_accum_36__30_,
  prod_accum_36__29_,prod_accum_36__28_,prod_accum_36__27_,prod_accum_36__26_,
  prod_accum_36__25_,prod_accum_36__24_,prod_accum_36__23_,prod_accum_36__22_,prod_accum_36__21_,
  prod_accum_36__20_,prod_accum_36__19_,prod_accum_36__18_,prod_accum_36__17_,
  prod_accum_36__16_,prod_accum_36__15_,prod_accum_36__14_,prod_accum_36__13_,
  prod_accum_36__12_,prod_accum_36__11_,prod_accum_36__10_,prod_accum_36__9_,
  prod_accum_36__8_,prod_accum_36__7_,prod_accum_36__6_,prod_accum_36__5_,prod_accum_36__4_,
  prod_accum_36__3_,prod_accum_36__2_,prod_accum_36__1_,prod_accum_36__0_,
  prod_accum_35__36_,prod_accum_35__35_,prod_accum_35__34_,prod_accum_35__33_,
  prod_accum_35__32_,prod_accum_35__31_,prod_accum_35__30_,prod_accum_35__29_,prod_accum_35__28_,
  prod_accum_35__27_,prod_accum_35__26_,prod_accum_35__25_,prod_accum_35__24_,
  prod_accum_35__23_,prod_accum_35__22_,prod_accum_35__21_,prod_accum_35__20_,
  prod_accum_35__19_,prod_accum_35__18_,prod_accum_35__17_,prod_accum_35__16_,
  prod_accum_35__15_,prod_accum_35__14_,prod_accum_35__13_,prod_accum_35__12_,
  prod_accum_35__11_,prod_accum_35__10_,prod_accum_35__9_,prod_accum_35__8_,prod_accum_35__7_,
  prod_accum_35__6_,prod_accum_35__5_,prod_accum_35__4_,prod_accum_35__3_,
  prod_accum_35__2_,prod_accum_35__1_,prod_accum_35__0_,prod_accum_34__35_,prod_accum_34__34_,
  prod_accum_34__33_,prod_accum_34__32_,prod_accum_34__31_,prod_accum_34__30_,
  prod_accum_34__29_,prod_accum_34__28_,prod_accum_34__27_,prod_accum_34__26_,
  prod_accum_34__25_,prod_accum_34__24_,prod_accum_34__23_,prod_accum_34__22_,
  prod_accum_34__21_,prod_accum_34__20_,prod_accum_34__19_,prod_accum_34__18_,
  prod_accum_34__17_,prod_accum_34__16_,prod_accum_34__15_,prod_accum_34__14_,prod_accum_34__13_,
  prod_accum_34__12_,prod_accum_34__11_,prod_accum_34__10_,prod_accum_34__9_,
  prod_accum_34__8_,prod_accum_34__7_,prod_accum_34__6_,prod_accum_34__5_,
  prod_accum_34__4_,prod_accum_34__3_,prod_accum_34__2_,prod_accum_34__1_,prod_accum_34__0_,
  prod_accum_33__34_,prod_accum_33__33_,prod_accum_33__32_,prod_accum_33__31_,
  prod_accum_33__30_,prod_accum_33__29_,prod_accum_33__28_,prod_accum_33__27_,
  prod_accum_33__26_,prod_accum_33__25_,prod_accum_33__24_,prod_accum_33__23_,
  prod_accum_33__22_,prod_accum_33__21_,prod_accum_33__20_,prod_accum_33__19_,prod_accum_33__18_,
  prod_accum_33__17_,prod_accum_33__16_,prod_accum_33__15_,prod_accum_33__14_,
  prod_accum_33__13_,prod_accum_33__12_,prod_accum_33__11_,prod_accum_33__10_,
  prod_accum_33__9_,prod_accum_33__8_,prod_accum_33__7_,prod_accum_33__6_,
  prod_accum_33__5_,prod_accum_33__4_,prod_accum_33__3_,prod_accum_33__2_,prod_accum_33__1_,
  prod_accum_33__0_,prod_accum_32__33_,prod_accum_32__32_,prod_accum_32__31_,
  prod_accum_32__30_,prod_accum_32__29_,prod_accum_32__28_,prod_accum_32__27_,
  prod_accum_32__26_,prod_accum_32__25_,prod_accum_32__24_,prod_accum_32__23_,prod_accum_32__22_,
  prod_accum_32__21_,prod_accum_32__20_,prod_accum_32__19_,prod_accum_32__18_,
  prod_accum_32__17_,prod_accum_32__16_,prod_accum_32__15_,prod_accum_32__14_,
  prod_accum_32__13_,prod_accum_32__12_,prod_accum_32__11_,prod_accum_32__10_,
  prod_accum_32__9_,prod_accum_32__8_,prod_accum_32__7_,prod_accum_32__6_,prod_accum_32__5_,
  prod_accum_32__4_,prod_accum_32__3_,prod_accum_32__2_,prod_accum_32__1_,
  prod_accum_32__0_,prod_accum_31__32_,prod_accum_31__31_,prod_accum_31__30_,
  prod_accum_31__29_,prod_accum_31__28_,prod_accum_31__27_,prod_accum_31__26_,prod_accum_31__25_,
  prod_accum_31__24_,prod_accum_31__23_,prod_accum_31__22_,prod_accum_31__21_,
  prod_accum_31__20_,prod_accum_31__19_,prod_accum_31__18_,prod_accum_31__17_,
  prod_accum_31__16_,prod_accum_31__15_,prod_accum_31__14_,prod_accum_31__13_,
  prod_accum_31__12_,prod_accum_31__11_,prod_accum_31__10_,prod_accum_31__9_,prod_accum_31__8_,
  prod_accum_31__7_,prod_accum_31__6_,prod_accum_31__5_,prod_accum_31__4_,
  prod_accum_31__3_,prod_accum_31__2_,prod_accum_31__1_,prod_accum_31__0_,s_r_46__63_,
  s_r_46__62_,s_r_46__61_,s_r_46__60_,s_r_46__59_,s_r_46__58_,s_r_46__57_,s_r_46__56_,
  s_r_46__55_,s_r_46__54_,s_r_46__53_,s_r_46__52_,s_r_46__51_,s_r_46__50_,
  s_r_46__49_,s_r_46__48_,s_r_46__47_,s_r_46__46_,s_r_46__45_,s_r_46__44_,s_r_46__43_,
  s_r_46__42_,s_r_46__41_,s_r_46__40_,s_r_46__39_,s_r_46__38_,s_r_46__37_,s_r_46__36_,
  s_r_46__35_,s_r_46__34_,s_r_46__33_,s_r_46__32_,s_r_46__31_,s_r_46__30_,
  s_r_46__29_,s_r_46__28_,s_r_46__27_,s_r_46__26_,s_r_46__25_,s_r_46__24_,s_r_46__23_,
  s_r_46__22_,s_r_46__21_,s_r_46__20_,s_r_46__19_,s_r_46__18_,s_r_46__17_,s_r_46__16_,
  s_r_46__15_,s_r_46__14_,s_r_46__13_,s_r_46__12_,s_r_46__11_,s_r_46__10_,
  s_r_46__9_,s_r_46__8_,s_r_46__7_,s_r_46__6_,s_r_46__5_,s_r_46__4_,s_r_46__3_,s_r_46__2_,
  s_r_46__1_,s_r_46__0_,s_r_45__63_,s_r_45__62_,s_r_45__61_,s_r_45__60_,
  s_r_45__59_,s_r_45__58_,s_r_45__57_,s_r_45__56_,s_r_45__55_,s_r_45__54_,s_r_45__53_,
  s_r_45__52_,s_r_45__51_,s_r_45__50_,s_r_45__49_,s_r_45__48_,s_r_45__47_,s_r_45__46_,
  s_r_45__45_,s_r_45__44_,s_r_45__43_,s_r_45__42_,s_r_45__41_,s_r_45__40_,
  s_r_45__39_,s_r_45__38_,s_r_45__37_,s_r_45__36_,s_r_45__35_,s_r_45__34_,s_r_45__33_,
  s_r_45__32_,s_r_45__31_,s_r_45__30_,s_r_45__29_,s_r_45__28_,s_r_45__27_,s_r_45__26_,
  s_r_45__25_,s_r_45__24_,s_r_45__23_,s_r_45__22_,s_r_45__21_,s_r_45__20_,
  s_r_45__19_,s_r_45__18_,s_r_45__17_,s_r_45__16_,s_r_45__15_,s_r_45__14_,s_r_45__13_,
  s_r_45__12_,s_r_45__11_,s_r_45__10_,s_r_45__9_,s_r_45__8_,s_r_45__7_,s_r_45__6_,
  s_r_45__5_,s_r_45__4_,s_r_45__3_,s_r_45__2_,s_r_45__1_,s_r_45__0_,s_r_44__63_,
  s_r_44__62_,s_r_44__61_,s_r_44__60_,s_r_44__59_,s_r_44__58_,s_r_44__57_,s_r_44__56_,
  s_r_44__55_,s_r_44__54_,s_r_44__53_,s_r_44__52_,s_r_44__51_,s_r_44__50_,s_r_44__49_,
  s_r_44__48_,s_r_44__47_,s_r_44__46_,s_r_44__45_,s_r_44__44_,s_r_44__43_,
  s_r_44__42_,s_r_44__41_,s_r_44__40_,s_r_44__39_,s_r_44__38_,s_r_44__37_,s_r_44__36_,
  s_r_44__35_,s_r_44__34_,s_r_44__33_,s_r_44__32_,s_r_44__31_,s_r_44__30_,s_r_44__29_,
  s_r_44__28_,s_r_44__27_,s_r_44__26_,s_r_44__25_,s_r_44__24_,s_r_44__23_,
  s_r_44__22_,s_r_44__21_,s_r_44__20_,s_r_44__19_,s_r_44__18_,s_r_44__17_,s_r_44__16_,
  s_r_44__15_,s_r_44__14_,s_r_44__13_,s_r_44__12_,s_r_44__11_,s_r_44__10_,s_r_44__9_,
  s_r_44__8_,s_r_44__7_,s_r_44__6_,s_r_44__5_,s_r_44__4_,s_r_44__3_,s_r_44__2_,
  s_r_44__1_,s_r_44__0_,s_r_43__63_,s_r_43__62_,s_r_43__61_,s_r_43__60_,s_r_43__59_,
  s_r_43__58_,s_r_43__57_,s_r_43__56_,s_r_43__55_,s_r_43__54_,s_r_43__53_,
  s_r_43__52_,s_r_43__51_,s_r_43__50_,s_r_43__49_,s_r_43__48_,s_r_43__47_,s_r_43__46_,
  s_r_43__45_,s_r_43__44_,s_r_43__43_,s_r_43__42_,s_r_43__41_,s_r_43__40_,s_r_43__39_,
  s_r_43__38_,s_r_43__37_,s_r_43__36_,s_r_43__35_,s_r_43__34_,s_r_43__33_,
  s_r_43__32_,s_r_43__31_,s_r_43__30_,s_r_43__29_,s_r_43__28_,s_r_43__27_,s_r_43__26_,
  s_r_43__25_,s_r_43__24_,s_r_43__23_,s_r_43__22_,s_r_43__21_,s_r_43__20_,s_r_43__19_,
  s_r_43__18_,s_r_43__17_,s_r_43__16_,s_r_43__15_,s_r_43__14_,s_r_43__13_,
  s_r_43__12_,s_r_43__11_,s_r_43__10_,s_r_43__9_,s_r_43__8_,s_r_43__7_,s_r_43__6_,
  s_r_43__5_,s_r_43__4_,s_r_43__3_,s_r_43__2_,s_r_43__1_,s_r_43__0_,s_r_42__63_,s_r_42__62_,
  s_r_42__61_,s_r_42__60_,s_r_42__59_,s_r_42__58_,s_r_42__57_,s_r_42__56_,
  s_r_42__55_,s_r_42__54_,s_r_42__53_,s_r_42__52_,s_r_42__51_,s_r_42__50_,s_r_42__49_,
  s_r_42__48_,s_r_42__47_,s_r_42__46_,s_r_42__45_,s_r_42__44_,s_r_42__43_,s_r_42__42_,
  s_r_42__41_,s_r_42__40_,s_r_42__39_,s_r_42__38_,s_r_42__37_,s_r_42__36_,
  s_r_42__35_,s_r_42__34_,s_r_42__33_,s_r_42__32_,s_r_42__31_,s_r_42__30_,s_r_42__29_,
  s_r_42__28_,s_r_42__27_,s_r_42__26_,s_r_42__25_,s_r_42__24_,s_r_42__23_,s_r_42__22_,
  s_r_42__21_,s_r_42__20_,s_r_42__19_,s_r_42__18_,s_r_42__17_,s_r_42__16_,
  s_r_42__15_,s_r_42__14_,s_r_42__13_,s_r_42__12_,s_r_42__11_,s_r_42__10_,s_r_42__9_,
  s_r_42__8_,s_r_42__7_,s_r_42__6_,s_r_42__5_,s_r_42__4_,s_r_42__3_,s_r_42__2_,
  s_r_42__1_,s_r_42__0_,s_r_41__63_,s_r_41__62_,s_r_41__61_,s_r_41__60_,s_r_41__59_,
  s_r_41__58_,s_r_41__57_,s_r_41__56_,s_r_41__55_,s_r_41__54_,s_r_41__53_,s_r_41__52_,
  s_r_41__51_,s_r_41__50_,s_r_41__49_,s_r_41__48_,s_r_41__47_,s_r_41__46_,
  s_r_41__45_,s_r_41__44_,s_r_41__43_,s_r_41__42_,s_r_41__41_,s_r_41__40_,s_r_41__39_,
  s_r_41__38_,s_r_41__37_,s_r_41__36_,s_r_41__35_,s_r_41__34_,s_r_41__33_,s_r_41__32_,
  s_r_41__31_,s_r_41__30_,s_r_41__29_,s_r_41__28_,s_r_41__27_,s_r_41__26_,
  s_r_41__25_,s_r_41__24_,s_r_41__23_,s_r_41__22_,s_r_41__21_,s_r_41__20_,s_r_41__19_,
  s_r_41__18_,s_r_41__17_,s_r_41__16_,s_r_41__15_,s_r_41__14_,s_r_41__13_,s_r_41__12_,
  s_r_41__11_,s_r_41__10_,s_r_41__9_,s_r_41__8_,s_r_41__7_,s_r_41__6_,s_r_41__5_,
  s_r_41__4_,s_r_41__3_,s_r_41__2_,s_r_41__1_,s_r_41__0_,s_r_40__63_,s_r_40__62_,
  s_r_40__61_,s_r_40__60_,s_r_40__59_,s_r_40__58_,s_r_40__57_,s_r_40__56_,s_r_40__55_,
  s_r_40__54_,s_r_40__53_,s_r_40__52_,s_r_40__51_,s_r_40__50_,s_r_40__49_,
  s_r_40__48_,s_r_40__47_,s_r_40__46_,s_r_40__45_,s_r_40__44_,s_r_40__43_,s_r_40__42_,
  s_r_40__41_,s_r_40__40_,s_r_40__39_,s_r_40__38_,s_r_40__37_,s_r_40__36_,s_r_40__35_,
  s_r_40__34_,s_r_40__33_,s_r_40__32_,s_r_40__31_,s_r_40__30_,s_r_40__29_,
  s_r_40__28_,s_r_40__27_,s_r_40__26_,s_r_40__25_,s_r_40__24_,s_r_40__23_,s_r_40__22_,
  s_r_40__21_,s_r_40__20_,s_r_40__19_,s_r_40__18_,s_r_40__17_,s_r_40__16_,s_r_40__15_,
  s_r_40__14_,s_r_40__13_,s_r_40__12_,s_r_40__11_,s_r_40__10_,s_r_40__9_,
  s_r_40__8_,s_r_40__7_,s_r_40__6_,s_r_40__5_,s_r_40__4_,s_r_40__3_,s_r_40__2_,s_r_40__1_,
  s_r_40__0_,s_r_39__63_,s_r_39__62_,s_r_39__61_,s_r_39__60_,s_r_39__59_,
  s_r_39__58_,s_r_39__57_,s_r_39__56_,s_r_39__55_,s_r_39__54_,s_r_39__53_,s_r_39__52_,
  s_r_39__51_,s_r_39__50_,s_r_39__49_,s_r_39__48_,s_r_39__47_,s_r_39__46_,s_r_39__45_,
  s_r_39__44_,s_r_39__43_,s_r_39__42_,s_r_39__41_,s_r_39__40_,s_r_39__39_,
  s_r_39__38_,s_r_39__37_,s_r_39__36_,s_r_39__35_,s_r_39__34_,s_r_39__33_,s_r_39__32_,
  s_r_39__31_,s_r_39__30_,s_r_39__29_,s_r_39__28_,s_r_39__27_,s_r_39__26_,s_r_39__25_,
  s_r_39__24_,s_r_39__23_,s_r_39__22_,s_r_39__21_,s_r_39__20_,s_r_39__19_,
  s_r_39__18_,s_r_39__17_,s_r_39__16_,s_r_39__15_,s_r_39__14_,s_r_39__13_,s_r_39__12_,
  s_r_39__11_,s_r_39__10_,s_r_39__9_,s_r_39__8_,s_r_39__7_,s_r_39__6_,s_r_39__5_,
  s_r_39__4_,s_r_39__3_,s_r_39__2_,s_r_39__1_,s_r_39__0_,prod_accum_46__47_,
  prod_accum_46__46_,prod_accum_46__45_,prod_accum_46__44_,prod_accum_46__43_,
  prod_accum_46__42_,prod_accum_46__41_,prod_accum_46__40_,prod_accum_46__39_,prod_accum_46__38_,
  prod_accum_46__37_,prod_accum_46__36_,prod_accum_46__35_,prod_accum_46__34_,
  prod_accum_46__33_,prod_accum_46__32_,prod_accum_46__31_,prod_accum_46__30_,
  prod_accum_46__29_,prod_accum_46__28_,prod_accum_46__27_,prod_accum_46__26_,
  prod_accum_46__25_,prod_accum_46__24_,prod_accum_46__23_,prod_accum_46__22_,
  prod_accum_46__21_,prod_accum_46__20_,prod_accum_46__19_,prod_accum_46__18_,prod_accum_46__17_,
  prod_accum_46__16_,prod_accum_46__15_,prod_accum_46__14_,prod_accum_46__13_,
  prod_accum_46__12_,prod_accum_46__11_,prod_accum_46__10_,prod_accum_46__9_,
  prod_accum_46__8_,prod_accum_46__7_,prod_accum_46__6_,prod_accum_46__5_,prod_accum_46__4_,
  prod_accum_46__3_,prod_accum_46__2_,prod_accum_46__1_,prod_accum_46__0_,
  prod_accum_45__46_,prod_accum_45__45_,prod_accum_45__44_,prod_accum_45__43_,
  prod_accum_45__42_,prod_accum_45__41_,prod_accum_45__40_,prod_accum_45__39_,
  prod_accum_45__38_,prod_accum_45__37_,prod_accum_45__36_,prod_accum_45__35_,prod_accum_45__34_,
  prod_accum_45__33_,prod_accum_45__32_,prod_accum_45__31_,prod_accum_45__30_,
  prod_accum_45__29_,prod_accum_45__28_,prod_accum_45__27_,prod_accum_45__26_,
  prod_accum_45__25_,prod_accum_45__24_,prod_accum_45__23_,prod_accum_45__22_,
  prod_accum_45__21_,prod_accum_45__20_,prod_accum_45__19_,prod_accum_45__18_,prod_accum_45__17_,
  prod_accum_45__16_,prod_accum_45__15_,prod_accum_45__14_,prod_accum_45__13_,
  prod_accum_45__12_,prod_accum_45__11_,prod_accum_45__10_,prod_accum_45__9_,
  prod_accum_45__8_,prod_accum_45__7_,prod_accum_45__6_,prod_accum_45__5_,
  prod_accum_45__4_,prod_accum_45__3_,prod_accum_45__2_,prod_accum_45__1_,prod_accum_45__0_,
  prod_accum_44__45_,prod_accum_44__44_,prod_accum_44__43_,prod_accum_44__42_,
  prod_accum_44__41_,prod_accum_44__40_,prod_accum_44__39_,prod_accum_44__38_,
  prod_accum_44__37_,prod_accum_44__36_,prod_accum_44__35_,prod_accum_44__34_,prod_accum_44__33_,
  prod_accum_44__32_,prod_accum_44__31_,prod_accum_44__30_,prod_accum_44__29_,
  prod_accum_44__28_,prod_accum_44__27_,prod_accum_44__26_,prod_accum_44__25_,
  prod_accum_44__24_,prod_accum_44__23_,prod_accum_44__22_,prod_accum_44__21_,
  prod_accum_44__20_,prod_accum_44__19_,prod_accum_44__18_,prod_accum_44__17_,
  prod_accum_44__16_,prod_accum_44__15_,prod_accum_44__14_,prod_accum_44__13_,prod_accum_44__12_,
  prod_accum_44__11_,prod_accum_44__10_,prod_accum_44__9_,prod_accum_44__8_,
  prod_accum_44__7_,prod_accum_44__6_,prod_accum_44__5_,prod_accum_44__4_,
  prod_accum_44__3_,prod_accum_44__2_,prod_accum_44__1_,prod_accum_44__0_,prod_accum_43__44_,
  prod_accum_43__43_,prod_accum_43__42_,prod_accum_43__41_,prod_accum_43__40_,
  prod_accum_43__39_,prod_accum_43__38_,prod_accum_43__37_,prod_accum_43__36_,
  prod_accum_43__35_,prod_accum_43__34_,prod_accum_43__33_,prod_accum_43__32_,
  prod_accum_43__31_,prod_accum_43__30_,prod_accum_43__29_,prod_accum_43__28_,prod_accum_43__27_,
  prod_accum_43__26_,prod_accum_43__25_,prod_accum_43__24_,prod_accum_43__23_,
  prod_accum_43__22_,prod_accum_43__21_,prod_accum_43__20_,prod_accum_43__19_,
  prod_accum_43__18_,prod_accum_43__17_,prod_accum_43__16_,prod_accum_43__15_,
  prod_accum_43__14_,prod_accum_43__13_,prod_accum_43__12_,prod_accum_43__11_,
  prod_accum_43__10_,prod_accum_43__9_,prod_accum_43__8_,prod_accum_43__7_,prod_accum_43__6_,
  prod_accum_43__5_,prod_accum_43__4_,prod_accum_43__3_,prod_accum_43__2_,
  prod_accum_43__1_,prod_accum_43__0_,prod_accum_42__43_,prod_accum_42__42_,prod_accum_42__41_,
  prod_accum_42__40_,prod_accum_42__39_,prod_accum_42__38_,prod_accum_42__37_,
  prod_accum_42__36_,prod_accum_42__35_,prod_accum_42__34_,prod_accum_42__33_,
  prod_accum_42__32_,prod_accum_42__31_,prod_accum_42__30_,prod_accum_42__29_,
  prod_accum_42__28_,prod_accum_42__27_,prod_accum_42__26_,prod_accum_42__25_,
  prod_accum_42__24_,prod_accum_42__23_,prod_accum_42__22_,prod_accum_42__21_,prod_accum_42__20_,
  prod_accum_42__19_,prod_accum_42__18_,prod_accum_42__17_,prod_accum_42__16_,
  prod_accum_42__15_,prod_accum_42__14_,prod_accum_42__13_,prod_accum_42__12_,
  prod_accum_42__11_,prod_accum_42__10_,prod_accum_42__9_,prod_accum_42__8_,
  prod_accum_42__7_,prod_accum_42__6_,prod_accum_42__5_,prod_accum_42__4_,prod_accum_42__3_,
  prod_accum_42__2_,prod_accum_42__1_,prod_accum_42__0_,prod_accum_41__42_,
  prod_accum_41__41_,prod_accum_41__40_,prod_accum_41__39_,prod_accum_41__38_,
  prod_accum_41__37_,prod_accum_41__36_,prod_accum_41__35_,prod_accum_41__34_,prod_accum_41__33_,
  prod_accum_41__32_,prod_accum_41__31_,prod_accum_41__30_,prod_accum_41__29_,
  prod_accum_41__28_,prod_accum_41__27_,prod_accum_41__26_,prod_accum_41__25_,
  prod_accum_41__24_,prod_accum_41__23_,prod_accum_41__22_,prod_accum_41__21_,
  prod_accum_41__20_,prod_accum_41__19_,prod_accum_41__18_,prod_accum_41__17_,
  prod_accum_41__16_,prod_accum_41__15_,prod_accum_41__14_,prod_accum_41__13_,prod_accum_41__12_,
  prod_accum_41__11_,prod_accum_41__10_,prod_accum_41__9_,prod_accum_41__8_,
  prod_accum_41__7_,prod_accum_41__6_,prod_accum_41__5_,prod_accum_41__4_,
  prod_accum_41__3_,prod_accum_41__2_,prod_accum_41__1_,prod_accum_41__0_,prod_accum_40__41_,
  prod_accum_40__40_,prod_accum_40__39_,prod_accum_40__38_,prod_accum_40__37_,
  prod_accum_40__36_,prod_accum_40__35_,prod_accum_40__34_,prod_accum_40__33_,
  prod_accum_40__32_,prod_accum_40__31_,prod_accum_40__30_,prod_accum_40__29_,
  prod_accum_40__28_,prod_accum_40__27_,prod_accum_40__26_,prod_accum_40__25_,prod_accum_40__24_,
  prod_accum_40__23_,prod_accum_40__22_,prod_accum_40__21_,prod_accum_40__20_,
  prod_accum_40__19_,prod_accum_40__18_,prod_accum_40__17_,prod_accum_40__16_,
  prod_accum_40__15_,prod_accum_40__14_,prod_accum_40__13_,prod_accum_40__12_,
  prod_accum_40__11_,prod_accum_40__10_,prod_accum_40__9_,prod_accum_40__8_,prod_accum_40__7_,
  prod_accum_40__6_,prod_accum_40__5_,prod_accum_40__4_,prod_accum_40__3_,
  prod_accum_40__2_,prod_accum_40__1_,prod_accum_40__0_,prod_accum_39__40_,
  prod_accum_39__39_,prod_accum_39__38_,prod_accum_39__37_,prod_accum_39__36_,prod_accum_39__35_,
  prod_accum_39__34_,prod_accum_39__33_,prod_accum_39__32_,prod_accum_39__31_,
  prod_accum_39__30_,prod_accum_39__29_,prod_accum_39__28_,prod_accum_39__27_,
  prod_accum_39__26_,prod_accum_39__25_,prod_accum_39__24_,prod_accum_39__23_,
  prod_accum_39__22_,prod_accum_39__21_,prod_accum_39__20_,prod_accum_39__19_,prod_accum_39__18_,
  prod_accum_39__17_,prod_accum_39__16_,prod_accum_39__15_,prod_accum_39__14_,
  prod_accum_39__13_,prod_accum_39__12_,prod_accum_39__11_,prod_accum_39__10_,
  prod_accum_39__9_,prod_accum_39__8_,prod_accum_39__7_,prod_accum_39__6_,
  prod_accum_39__5_,prod_accum_39__4_,prod_accum_39__3_,prod_accum_39__2_,prod_accum_39__1_,
  prod_accum_39__0_,s_r_54__63_,s_r_54__62_,s_r_54__61_,s_r_54__60_,s_r_54__59_,
  s_r_54__58_,s_r_54__57_,s_r_54__56_,s_r_54__55_,s_r_54__54_,s_r_54__53_,s_r_54__52_,
  s_r_54__51_,s_r_54__50_,s_r_54__49_,s_r_54__48_,s_r_54__47_,s_r_54__46_,s_r_54__45_,
  s_r_54__44_,s_r_54__43_,s_r_54__42_,s_r_54__41_,s_r_54__40_,s_r_54__39_,
  s_r_54__38_,s_r_54__37_,s_r_54__36_,s_r_54__35_,s_r_54__34_,s_r_54__33_,s_r_54__32_,
  s_r_54__31_,s_r_54__30_,s_r_54__29_,s_r_54__28_,s_r_54__27_,s_r_54__26_,s_r_54__25_,
  s_r_54__24_,s_r_54__23_,s_r_54__22_,s_r_54__21_,s_r_54__20_,s_r_54__19_,
  s_r_54__18_,s_r_54__17_,s_r_54__16_,s_r_54__15_,s_r_54__14_,s_r_54__13_,s_r_54__12_,
  s_r_54__11_,s_r_54__10_,s_r_54__9_,s_r_54__8_,s_r_54__7_,s_r_54__6_,s_r_54__5_,
  s_r_54__4_,s_r_54__3_,s_r_54__2_,s_r_54__1_,s_r_54__0_,s_r_53__63_,s_r_53__62_,
  s_r_53__61_,s_r_53__60_,s_r_53__59_,s_r_53__58_,s_r_53__57_,s_r_53__56_,s_r_53__55_,
  s_r_53__54_,s_r_53__53_,s_r_53__52_,s_r_53__51_,s_r_53__50_,s_r_53__49_,
  s_r_53__48_,s_r_53__47_,s_r_53__46_,s_r_53__45_,s_r_53__44_,s_r_53__43_,s_r_53__42_,
  s_r_53__41_,s_r_53__40_,s_r_53__39_,s_r_53__38_,s_r_53__37_,s_r_53__36_,s_r_53__35_,
  s_r_53__34_,s_r_53__33_,s_r_53__32_,s_r_53__31_,s_r_53__30_,s_r_53__29_,
  s_r_53__28_,s_r_53__27_,s_r_53__26_,s_r_53__25_,s_r_53__24_,s_r_53__23_,s_r_53__22_,
  s_r_53__21_,s_r_53__20_,s_r_53__19_,s_r_53__18_,s_r_53__17_,s_r_53__16_,s_r_53__15_,
  s_r_53__14_,s_r_53__13_,s_r_53__12_,s_r_53__11_,s_r_53__10_,s_r_53__9_,s_r_53__8_,
  s_r_53__7_,s_r_53__6_,s_r_53__5_,s_r_53__4_,s_r_53__3_,s_r_53__2_,s_r_53__1_,
  s_r_53__0_,s_r_52__63_,s_r_52__62_,s_r_52__61_,s_r_52__60_,s_r_52__59_,s_r_52__58_,
  s_r_52__57_,s_r_52__56_,s_r_52__55_,s_r_52__54_,s_r_52__53_,s_r_52__52_,
  s_r_52__51_,s_r_52__50_,s_r_52__49_,s_r_52__48_,s_r_52__47_,s_r_52__46_,s_r_52__45_,
  s_r_52__44_,s_r_52__43_,s_r_52__42_,s_r_52__41_,s_r_52__40_,s_r_52__39_,s_r_52__38_,
  s_r_52__37_,s_r_52__36_,s_r_52__35_,s_r_52__34_,s_r_52__33_,s_r_52__32_,
  s_r_52__31_,s_r_52__30_,s_r_52__29_,s_r_52__28_,s_r_52__27_,s_r_52__26_,s_r_52__25_,
  s_r_52__24_,s_r_52__23_,s_r_52__22_,s_r_52__21_,s_r_52__20_,s_r_52__19_,s_r_52__18_,
  s_r_52__17_,s_r_52__16_,s_r_52__15_,s_r_52__14_,s_r_52__13_,s_r_52__12_,
  s_r_52__11_,s_r_52__10_,s_r_52__9_,s_r_52__8_,s_r_52__7_,s_r_52__6_,s_r_52__5_,
  s_r_52__4_,s_r_52__3_,s_r_52__2_,s_r_52__1_,s_r_52__0_,s_r_51__63_,s_r_51__62_,
  s_r_51__61_,s_r_51__60_,s_r_51__59_,s_r_51__58_,s_r_51__57_,s_r_51__56_,s_r_51__55_,
  s_r_51__54_,s_r_51__53_,s_r_51__52_,s_r_51__51_,s_r_51__50_,s_r_51__49_,s_r_51__48_,
  s_r_51__47_,s_r_51__46_,s_r_51__45_,s_r_51__44_,s_r_51__43_,s_r_51__42_,
  s_r_51__41_,s_r_51__40_,s_r_51__39_,s_r_51__38_,s_r_51__37_,s_r_51__36_,s_r_51__35_,
  s_r_51__34_,s_r_51__33_,s_r_51__32_,s_r_51__31_,s_r_51__30_,s_r_51__29_,s_r_51__28_,
  s_r_51__27_,s_r_51__26_,s_r_51__25_,s_r_51__24_,s_r_51__23_,s_r_51__22_,
  s_r_51__21_,s_r_51__20_,s_r_51__19_,s_r_51__18_,s_r_51__17_,s_r_51__16_,s_r_51__15_,
  s_r_51__14_,s_r_51__13_,s_r_51__12_,s_r_51__11_,s_r_51__10_,s_r_51__9_,s_r_51__8_,
  s_r_51__7_,s_r_51__6_,s_r_51__5_,s_r_51__4_,s_r_51__3_,s_r_51__2_,s_r_51__1_,
  s_r_51__0_,s_r_50__63_,s_r_50__62_,s_r_50__61_,s_r_50__60_,s_r_50__59_,s_r_50__58_,
  s_r_50__57_,s_r_50__56_,s_r_50__55_,s_r_50__54_,s_r_50__53_,s_r_50__52_,s_r_50__51_,
  s_r_50__50_,s_r_50__49_,s_r_50__48_,s_r_50__47_,s_r_50__46_,s_r_50__45_,
  s_r_50__44_,s_r_50__43_,s_r_50__42_,s_r_50__41_,s_r_50__40_,s_r_50__39_,s_r_50__38_,
  s_r_50__37_,s_r_50__36_,s_r_50__35_,s_r_50__34_,s_r_50__33_,s_r_50__32_,s_r_50__31_,
  s_r_50__30_,s_r_50__29_,s_r_50__28_,s_r_50__27_,s_r_50__26_,s_r_50__25_,
  s_r_50__24_,s_r_50__23_,s_r_50__22_,s_r_50__21_,s_r_50__20_,s_r_50__19_,s_r_50__18_,
  s_r_50__17_,s_r_50__16_,s_r_50__15_,s_r_50__14_,s_r_50__13_,s_r_50__12_,s_r_50__11_,
  s_r_50__10_,s_r_50__9_,s_r_50__8_,s_r_50__7_,s_r_50__6_,s_r_50__5_,s_r_50__4_,
  s_r_50__3_,s_r_50__2_,s_r_50__1_,s_r_50__0_,s_r_49__63_,s_r_49__62_,s_r_49__61_,
  s_r_49__60_,s_r_49__59_,s_r_49__58_,s_r_49__57_,s_r_49__56_,s_r_49__55_,
  s_r_49__54_,s_r_49__53_,s_r_49__52_,s_r_49__51_,s_r_49__50_,s_r_49__49_,s_r_49__48_,
  s_r_49__47_,s_r_49__46_,s_r_49__45_,s_r_49__44_,s_r_49__43_,s_r_49__42_,s_r_49__41_,
  s_r_49__40_,s_r_49__39_,s_r_49__38_,s_r_49__37_,s_r_49__36_,s_r_49__35_,
  s_r_49__34_,s_r_49__33_,s_r_49__32_,s_r_49__31_,s_r_49__30_,s_r_49__29_,s_r_49__28_,
  s_r_49__27_,s_r_49__26_,s_r_49__25_,s_r_49__24_,s_r_49__23_,s_r_49__22_,s_r_49__21_,
  s_r_49__20_,s_r_49__19_,s_r_49__18_,s_r_49__17_,s_r_49__16_,s_r_49__15_,
  s_r_49__14_,s_r_49__13_,s_r_49__12_,s_r_49__11_,s_r_49__10_,s_r_49__9_,s_r_49__8_,
  s_r_49__7_,s_r_49__6_,s_r_49__5_,s_r_49__4_,s_r_49__3_,s_r_49__2_,s_r_49__1_,s_r_49__0_,
  s_r_48__63_,s_r_48__62_,s_r_48__61_,s_r_48__60_,s_r_48__59_,s_r_48__58_,
  s_r_48__57_,s_r_48__56_,s_r_48__55_,s_r_48__54_,s_r_48__53_,s_r_48__52_,s_r_48__51_,
  s_r_48__50_,s_r_48__49_,s_r_48__48_,s_r_48__47_,s_r_48__46_,s_r_48__45_,s_r_48__44_,
  s_r_48__43_,s_r_48__42_,s_r_48__41_,s_r_48__40_,s_r_48__39_,s_r_48__38_,
  s_r_48__37_,s_r_48__36_,s_r_48__35_,s_r_48__34_,s_r_48__33_,s_r_48__32_,s_r_48__31_,
  s_r_48__30_,s_r_48__29_,s_r_48__28_,s_r_48__27_,s_r_48__26_,s_r_48__25_,s_r_48__24_,
  s_r_48__23_,s_r_48__22_,s_r_48__21_,s_r_48__20_,s_r_48__19_,s_r_48__18_,
  s_r_48__17_,s_r_48__16_,s_r_48__15_,s_r_48__14_,s_r_48__13_,s_r_48__12_,s_r_48__11_,
  s_r_48__10_,s_r_48__9_,s_r_48__8_,s_r_48__7_,s_r_48__6_,s_r_48__5_,s_r_48__4_,
  s_r_48__3_,s_r_48__2_,s_r_48__1_,s_r_48__0_,s_r_47__63_,s_r_47__62_,s_r_47__61_,
  s_r_47__60_,s_r_47__59_,s_r_47__58_,s_r_47__57_,s_r_47__56_,s_r_47__55_,s_r_47__54_,
  s_r_47__53_,s_r_47__52_,s_r_47__51_,s_r_47__50_,s_r_47__49_,s_r_47__48_,
  s_r_47__47_,s_r_47__46_,s_r_47__45_,s_r_47__44_,s_r_47__43_,s_r_47__42_,s_r_47__41_,
  s_r_47__40_,s_r_47__39_,s_r_47__38_,s_r_47__37_,s_r_47__36_,s_r_47__35_,s_r_47__34_,
  s_r_47__33_,s_r_47__32_,s_r_47__31_,s_r_47__30_,s_r_47__29_,s_r_47__28_,
  s_r_47__27_,s_r_47__26_,s_r_47__25_,s_r_47__24_,s_r_47__23_,s_r_47__22_,s_r_47__21_,
  s_r_47__20_,s_r_47__19_,s_r_47__18_,s_r_47__17_,s_r_47__16_,s_r_47__15_,s_r_47__14_,
  s_r_47__13_,s_r_47__12_,s_r_47__11_,s_r_47__10_,s_r_47__9_,s_r_47__8_,s_r_47__7_,
  s_r_47__6_,s_r_47__5_,s_r_47__4_,s_r_47__3_,s_r_47__2_,s_r_47__1_,s_r_47__0_,
  prod_accum_54__55_,prod_accum_54__54_,prod_accum_54__53_,prod_accum_54__52_,
  prod_accum_54__51_,prod_accum_54__50_,prod_accum_54__49_,prod_accum_54__48_,
  prod_accum_54__47_,prod_accum_54__46_,prod_accum_54__45_,prod_accum_54__44_,
  prod_accum_54__43_,prod_accum_54__42_,prod_accum_54__41_,prod_accum_54__40_,prod_accum_54__39_,
  prod_accum_54__38_,prod_accum_54__37_,prod_accum_54__36_,prod_accum_54__35_,
  prod_accum_54__34_,prod_accum_54__33_,prod_accum_54__32_,prod_accum_54__31_,
  prod_accum_54__30_,prod_accum_54__29_,prod_accum_54__28_,prod_accum_54__27_,
  prod_accum_54__26_,prod_accum_54__25_,prod_accum_54__24_,prod_accum_54__23_,
  prod_accum_54__22_,prod_accum_54__21_,prod_accum_54__20_,prod_accum_54__19_,prod_accum_54__18_,
  prod_accum_54__17_,prod_accum_54__16_,prod_accum_54__15_,prod_accum_54__14_,
  prod_accum_54__13_,prod_accum_54__12_,prod_accum_54__11_,prod_accum_54__10_,
  prod_accum_54__9_,prod_accum_54__8_,prod_accum_54__7_,prod_accum_54__6_,prod_accum_54__5_,
  prod_accum_54__4_,prod_accum_54__3_,prod_accum_54__2_,prod_accum_54__1_,
  prod_accum_54__0_,prod_accum_53__54_,prod_accum_53__53_,prod_accum_53__52_,
  prod_accum_53__51_,prod_accum_53__50_,prod_accum_53__49_,prod_accum_53__48_,
  prod_accum_53__47_,prod_accum_53__46_,prod_accum_53__45_,prod_accum_53__44_,prod_accum_53__43_,
  prod_accum_53__42_,prod_accum_53__41_,prod_accum_53__40_,prod_accum_53__39_,
  prod_accum_53__38_,prod_accum_53__37_,prod_accum_53__36_,prod_accum_53__35_,
  prod_accum_53__34_,prod_accum_53__33_,prod_accum_53__32_,prod_accum_53__31_,
  prod_accum_53__30_,prod_accum_53__29_,prod_accum_53__28_,prod_accum_53__27_,
  prod_accum_53__26_,prod_accum_53__25_,prod_accum_53__24_,prod_accum_53__23_,prod_accum_53__22_,
  prod_accum_53__21_,prod_accum_53__20_,prod_accum_53__19_,prod_accum_53__18_,
  prod_accum_53__17_,prod_accum_53__16_,prod_accum_53__15_,prod_accum_53__14_,
  prod_accum_53__13_,prod_accum_53__12_,prod_accum_53__11_,prod_accum_53__10_,
  prod_accum_53__9_,prod_accum_53__8_,prod_accum_53__7_,prod_accum_53__6_,prod_accum_53__5_,
  prod_accum_53__4_,prod_accum_53__3_,prod_accum_53__2_,prod_accum_53__1_,
  prod_accum_53__0_,prod_accum_52__53_,prod_accum_52__52_,prod_accum_52__51_,
  prod_accum_52__50_,prod_accum_52__49_,prod_accum_52__48_,prod_accum_52__47_,prod_accum_52__46_,
  prod_accum_52__45_,prod_accum_52__44_,prod_accum_52__43_,prod_accum_52__42_,
  prod_accum_52__41_,prod_accum_52__40_,prod_accum_52__39_,prod_accum_52__38_,
  prod_accum_52__37_,prod_accum_52__36_,prod_accum_52__35_,prod_accum_52__34_,
  prod_accum_52__33_,prod_accum_52__32_,prod_accum_52__31_,prod_accum_52__30_,prod_accum_52__29_,
  prod_accum_52__28_,prod_accum_52__27_,prod_accum_52__26_,prod_accum_52__25_,
  prod_accum_52__24_,prod_accum_52__23_,prod_accum_52__22_,prod_accum_52__21_,
  prod_accum_52__20_,prod_accum_52__19_,prod_accum_52__18_,prod_accum_52__17_,
  prod_accum_52__16_,prod_accum_52__15_,prod_accum_52__14_,prod_accum_52__13_,
  prod_accum_52__12_,prod_accum_52__11_,prod_accum_52__10_,prod_accum_52__9_,prod_accum_52__8_,
  prod_accum_52__7_,prod_accum_52__6_,prod_accum_52__5_,prod_accum_52__4_,
  prod_accum_52__3_,prod_accum_52__2_,prod_accum_52__1_,prod_accum_52__0_,prod_accum_51__52_,
  prod_accum_51__51_,prod_accum_51__50_,prod_accum_51__49_,prod_accum_51__48_,
  prod_accum_51__47_,prod_accum_51__46_,prod_accum_51__45_,prod_accum_51__44_,
  prod_accum_51__43_,prod_accum_51__42_,prod_accum_51__41_,prod_accum_51__40_,
  prod_accum_51__39_,prod_accum_51__38_,prod_accum_51__37_,prod_accum_51__36_,
  prod_accum_51__35_,prod_accum_51__34_,prod_accum_51__33_,prod_accum_51__32_,prod_accum_51__31_,
  prod_accum_51__30_,prod_accum_51__29_,prod_accum_51__28_,prod_accum_51__27_,
  prod_accum_51__26_,prod_accum_51__25_,prod_accum_51__24_,prod_accum_51__23_,
  prod_accum_51__22_,prod_accum_51__21_,prod_accum_51__20_,prod_accum_51__19_,
  prod_accum_51__18_,prod_accum_51__17_,prod_accum_51__16_,prod_accum_51__15_,
  prod_accum_51__14_,prod_accum_51__13_,prod_accum_51__12_,prod_accum_51__11_,prod_accum_51__10_,
  prod_accum_51__9_,prod_accum_51__8_,prod_accum_51__7_,prod_accum_51__6_,
  prod_accum_51__5_,prod_accum_51__4_,prod_accum_51__3_,prod_accum_51__2_,prod_accum_51__1_,
  prod_accum_51__0_,prod_accum_50__51_,prod_accum_50__50_,prod_accum_50__49_,
  prod_accum_50__48_,prod_accum_50__47_,prod_accum_50__46_,prod_accum_50__45_,
  prod_accum_50__44_,prod_accum_50__43_,prod_accum_50__42_,prod_accum_50__41_,
  prod_accum_50__40_,prod_accum_50__39_,prod_accum_50__38_,prod_accum_50__37_,
  prod_accum_50__36_,prod_accum_50__35_,prod_accum_50__34_,prod_accum_50__33_,prod_accum_50__32_,
  prod_accum_50__31_,prod_accum_50__30_,prod_accum_50__29_,prod_accum_50__28_,
  prod_accum_50__27_,prod_accum_50__26_,prod_accum_50__25_,prod_accum_50__24_,
  prod_accum_50__23_,prod_accum_50__22_,prod_accum_50__21_,prod_accum_50__20_,
  prod_accum_50__19_,prod_accum_50__18_,prod_accum_50__17_,prod_accum_50__16_,
  prod_accum_50__15_,prod_accum_50__14_,prod_accum_50__13_,prod_accum_50__12_,prod_accum_50__11_,
  prod_accum_50__10_,prod_accum_50__9_,prod_accum_50__8_,prod_accum_50__7_,
  prod_accum_50__6_,prod_accum_50__5_,prod_accum_50__4_,prod_accum_50__3_,prod_accum_50__2_,
  prod_accum_50__1_,prod_accum_50__0_,prod_accum_49__50_,prod_accum_49__49_,
  prod_accum_49__48_,prod_accum_49__47_,prod_accum_49__46_,prod_accum_49__45_,
  prod_accum_49__44_,prod_accum_49__43_,prod_accum_49__42_,prod_accum_49__41_,
  prod_accum_49__40_,prod_accum_49__39_,prod_accum_49__38_,prod_accum_49__37_,
  prod_accum_49__36_,prod_accum_49__35_,prod_accum_49__34_,prod_accum_49__33_,prod_accum_49__32_,
  prod_accum_49__31_,prod_accum_49__30_,prod_accum_49__29_,prod_accum_49__28_,
  prod_accum_49__27_,prod_accum_49__26_,prod_accum_49__25_,prod_accum_49__24_,
  prod_accum_49__23_,prod_accum_49__22_,prod_accum_49__21_,prod_accum_49__20_,
  prod_accum_49__19_,prod_accum_49__18_,prod_accum_49__17_,prod_accum_49__16_,prod_accum_49__15_,
  prod_accum_49__14_,prod_accum_49__13_,prod_accum_49__12_,prod_accum_49__11_,
  prod_accum_49__10_,prod_accum_49__9_,prod_accum_49__8_,prod_accum_49__7_,
  prod_accum_49__6_,prod_accum_49__5_,prod_accum_49__4_,prod_accum_49__3_,prod_accum_49__2_,
  prod_accum_49__1_,prod_accum_49__0_,prod_accum_48__49_,prod_accum_48__48_,
  prod_accum_48__47_,prod_accum_48__46_,prod_accum_48__45_,prod_accum_48__44_,
  prod_accum_48__43_,prod_accum_48__42_,prod_accum_48__41_,prod_accum_48__40_,
  prod_accum_48__39_,prod_accum_48__38_,prod_accum_48__37_,prod_accum_48__36_,prod_accum_48__35_,
  prod_accum_48__34_,prod_accum_48__33_,prod_accum_48__32_,prod_accum_48__31_,
  prod_accum_48__30_,prod_accum_48__29_,prod_accum_48__28_,prod_accum_48__27_,
  prod_accum_48__26_,prod_accum_48__25_,prod_accum_48__24_,prod_accum_48__23_,
  prod_accum_48__22_,prod_accum_48__21_,prod_accum_48__20_,prod_accum_48__19_,
  prod_accum_48__18_,prod_accum_48__17_,prod_accum_48__16_,prod_accum_48__15_,prod_accum_48__14_,
  prod_accum_48__13_,prod_accum_48__12_,prod_accum_48__11_,prod_accum_48__10_,
  prod_accum_48__9_,prod_accum_48__8_,prod_accum_48__7_,prod_accum_48__6_,
  prod_accum_48__5_,prod_accum_48__4_,prod_accum_48__3_,prod_accum_48__2_,prod_accum_48__1_,
  prod_accum_48__0_,prod_accum_47__48_,prod_accum_47__47_,prod_accum_47__46_,
  prod_accum_47__45_,prod_accum_47__44_,prod_accum_47__43_,prod_accum_47__42_,
  prod_accum_47__41_,prod_accum_47__40_,prod_accum_47__39_,prod_accum_47__38_,
  prod_accum_47__37_,prod_accum_47__36_,prod_accum_47__35_,prod_accum_47__34_,prod_accum_47__33_,
  prod_accum_47__32_,prod_accum_47__31_,prod_accum_47__30_,prod_accum_47__29_,
  prod_accum_47__28_,prod_accum_47__27_,prod_accum_47__26_,prod_accum_47__25_,
  prod_accum_47__24_,prod_accum_47__23_,prod_accum_47__22_,prod_accum_47__21_,
  prod_accum_47__20_,prod_accum_47__19_,prod_accum_47__18_,prod_accum_47__17_,
  prod_accum_47__16_,prod_accum_47__15_,prod_accum_47__14_,prod_accum_47__13_,prod_accum_47__12_,
  prod_accum_47__11_,prod_accum_47__10_,prod_accum_47__9_,prod_accum_47__8_,
  prod_accum_47__7_,prod_accum_47__6_,prod_accum_47__5_,prod_accum_47__4_,
  prod_accum_47__3_,prod_accum_47__2_,prod_accum_47__1_,prod_accum_47__0_,s_r_61__63_,s_r_61__62_,
  s_r_61__61_,s_r_61__60_,s_r_61__59_,s_r_61__58_,s_r_61__57_,s_r_61__56_,
  s_r_61__55_,s_r_61__54_,s_r_61__53_,s_r_61__52_,s_r_61__51_,s_r_61__50_,s_r_61__49_,
  s_r_61__48_,s_r_61__47_,s_r_61__46_,s_r_61__45_,s_r_61__44_,s_r_61__43_,s_r_61__42_,
  s_r_61__41_,s_r_61__40_,s_r_61__39_,s_r_61__38_,s_r_61__37_,s_r_61__36_,
  s_r_61__35_,s_r_61__34_,s_r_61__33_,s_r_61__32_,s_r_61__31_,s_r_61__30_,s_r_61__29_,
  s_r_61__28_,s_r_61__27_,s_r_61__26_,s_r_61__25_,s_r_61__24_,s_r_61__23_,s_r_61__22_,
  s_r_61__21_,s_r_61__20_,s_r_61__19_,s_r_61__18_,s_r_61__17_,s_r_61__16_,
  s_r_61__15_,s_r_61__14_,s_r_61__13_,s_r_61__12_,s_r_61__11_,s_r_61__10_,s_r_61__9_,
  s_r_61__8_,s_r_61__7_,s_r_61__6_,s_r_61__5_,s_r_61__4_,s_r_61__3_,s_r_61__2_,
  s_r_61__1_,s_r_61__0_,s_r_60__63_,s_r_60__62_,s_r_60__61_,s_r_60__60_,s_r_60__59_,
  s_r_60__58_,s_r_60__57_,s_r_60__56_,s_r_60__55_,s_r_60__54_,s_r_60__53_,s_r_60__52_,
  s_r_60__51_,s_r_60__50_,s_r_60__49_,s_r_60__48_,s_r_60__47_,s_r_60__46_,
  s_r_60__45_,s_r_60__44_,s_r_60__43_,s_r_60__42_,s_r_60__41_,s_r_60__40_,s_r_60__39_,
  s_r_60__38_,s_r_60__37_,s_r_60__36_,s_r_60__35_,s_r_60__34_,s_r_60__33_,s_r_60__32_,
  s_r_60__31_,s_r_60__30_,s_r_60__29_,s_r_60__28_,s_r_60__27_,s_r_60__26_,
  s_r_60__25_,s_r_60__24_,s_r_60__23_,s_r_60__22_,s_r_60__21_,s_r_60__20_,s_r_60__19_,
  s_r_60__18_,s_r_60__17_,s_r_60__16_,s_r_60__15_,s_r_60__14_,s_r_60__13_,s_r_60__12_,
  s_r_60__11_,s_r_60__10_,s_r_60__9_,s_r_60__8_,s_r_60__7_,s_r_60__6_,s_r_60__5_,
  s_r_60__4_,s_r_60__3_,s_r_60__2_,s_r_60__1_,s_r_60__0_,s_r_59__63_,s_r_59__62_,
  s_r_59__61_,s_r_59__60_,s_r_59__59_,s_r_59__58_,s_r_59__57_,s_r_59__56_,s_r_59__55_,
  s_r_59__54_,s_r_59__53_,s_r_59__52_,s_r_59__51_,s_r_59__50_,s_r_59__49_,
  s_r_59__48_,s_r_59__47_,s_r_59__46_,s_r_59__45_,s_r_59__44_,s_r_59__43_,s_r_59__42_,
  s_r_59__41_,s_r_59__40_,s_r_59__39_,s_r_59__38_,s_r_59__37_,s_r_59__36_,s_r_59__35_,
  s_r_59__34_,s_r_59__33_,s_r_59__32_,s_r_59__31_,s_r_59__30_,s_r_59__29_,
  s_r_59__28_,s_r_59__27_,s_r_59__26_,s_r_59__25_,s_r_59__24_,s_r_59__23_,s_r_59__22_,
  s_r_59__21_,s_r_59__20_,s_r_59__19_,s_r_59__18_,s_r_59__17_,s_r_59__16_,s_r_59__15_,
  s_r_59__14_,s_r_59__13_,s_r_59__12_,s_r_59__11_,s_r_59__10_,s_r_59__9_,
  s_r_59__8_,s_r_59__7_,s_r_59__6_,s_r_59__5_,s_r_59__4_,s_r_59__3_,s_r_59__2_,s_r_59__1_,
  s_r_59__0_,s_r_58__63_,s_r_58__62_,s_r_58__61_,s_r_58__60_,s_r_58__59_,
  s_r_58__58_,s_r_58__57_,s_r_58__56_,s_r_58__55_,s_r_58__54_,s_r_58__53_,s_r_58__52_,
  s_r_58__51_,s_r_58__50_,s_r_58__49_,s_r_58__48_,s_r_58__47_,s_r_58__46_,s_r_58__45_,
  s_r_58__44_,s_r_58__43_,s_r_58__42_,s_r_58__41_,s_r_58__40_,s_r_58__39_,
  s_r_58__38_,s_r_58__37_,s_r_58__36_,s_r_58__35_,s_r_58__34_,s_r_58__33_,s_r_58__32_,
  s_r_58__31_,s_r_58__30_,s_r_58__29_,s_r_58__28_,s_r_58__27_,s_r_58__26_,s_r_58__25_,
  s_r_58__24_,s_r_58__23_,s_r_58__22_,s_r_58__21_,s_r_58__20_,s_r_58__19_,
  s_r_58__18_,s_r_58__17_,s_r_58__16_,s_r_58__15_,s_r_58__14_,s_r_58__13_,s_r_58__12_,
  s_r_58__11_,s_r_58__10_,s_r_58__9_,s_r_58__8_,s_r_58__7_,s_r_58__6_,s_r_58__5_,
  s_r_58__4_,s_r_58__3_,s_r_58__2_,s_r_58__1_,s_r_58__0_,s_r_57__63_,s_r_57__62_,
  s_r_57__61_,s_r_57__60_,s_r_57__59_,s_r_57__58_,s_r_57__57_,s_r_57__56_,s_r_57__55_,
  s_r_57__54_,s_r_57__53_,s_r_57__52_,s_r_57__51_,s_r_57__50_,s_r_57__49_,s_r_57__48_,
  s_r_57__47_,s_r_57__46_,s_r_57__45_,s_r_57__44_,s_r_57__43_,s_r_57__42_,
  s_r_57__41_,s_r_57__40_,s_r_57__39_,s_r_57__38_,s_r_57__37_,s_r_57__36_,s_r_57__35_,
  s_r_57__34_,s_r_57__33_,s_r_57__32_,s_r_57__31_,s_r_57__30_,s_r_57__29_,s_r_57__28_,
  s_r_57__27_,s_r_57__26_,s_r_57__25_,s_r_57__24_,s_r_57__23_,s_r_57__22_,
  s_r_57__21_,s_r_57__20_,s_r_57__19_,s_r_57__18_,s_r_57__17_,s_r_57__16_,s_r_57__15_,
  s_r_57__14_,s_r_57__13_,s_r_57__12_,s_r_57__11_,s_r_57__10_,s_r_57__9_,s_r_57__8_,
  s_r_57__7_,s_r_57__6_,s_r_57__5_,s_r_57__4_,s_r_57__3_,s_r_57__2_,s_r_57__1_,
  s_r_57__0_,s_r_56__63_,s_r_56__62_,s_r_56__61_,s_r_56__60_,s_r_56__59_,s_r_56__58_,
  s_r_56__57_,s_r_56__56_,s_r_56__55_,s_r_56__54_,s_r_56__53_,s_r_56__52_,
  s_r_56__51_,s_r_56__50_,s_r_56__49_,s_r_56__48_,s_r_56__47_,s_r_56__46_,s_r_56__45_,
  s_r_56__44_,s_r_56__43_,s_r_56__42_,s_r_56__41_,s_r_56__40_,s_r_56__39_,s_r_56__38_,
  s_r_56__37_,s_r_56__36_,s_r_56__35_,s_r_56__34_,s_r_56__33_,s_r_56__32_,
  s_r_56__31_,s_r_56__30_,s_r_56__29_,s_r_56__28_,s_r_56__27_,s_r_56__26_,s_r_56__25_,
  s_r_56__24_,s_r_56__23_,s_r_56__22_,s_r_56__21_,s_r_56__20_,s_r_56__19_,s_r_56__18_,
  s_r_56__17_,s_r_56__16_,s_r_56__15_,s_r_56__14_,s_r_56__13_,s_r_56__12_,
  s_r_56__11_,s_r_56__10_,s_r_56__9_,s_r_56__8_,s_r_56__7_,s_r_56__6_,s_r_56__5_,s_r_56__4_,
  s_r_56__3_,s_r_56__2_,s_r_56__1_,s_r_56__0_,s_r_55__63_,s_r_55__62_,s_r_55__61_,
  s_r_55__60_,s_r_55__59_,s_r_55__58_,s_r_55__57_,s_r_55__56_,s_r_55__55_,
  s_r_55__54_,s_r_55__53_,s_r_55__52_,s_r_55__51_,s_r_55__50_,s_r_55__49_,s_r_55__48_,
  s_r_55__47_,s_r_55__46_,s_r_55__45_,s_r_55__44_,s_r_55__43_,s_r_55__42_,s_r_55__41_,
  s_r_55__40_,s_r_55__39_,s_r_55__38_,s_r_55__37_,s_r_55__36_,s_r_55__35_,
  s_r_55__34_,s_r_55__33_,s_r_55__32_,s_r_55__31_,s_r_55__30_,s_r_55__29_,s_r_55__28_,
  s_r_55__27_,s_r_55__26_,s_r_55__25_,s_r_55__24_,s_r_55__23_,s_r_55__22_,s_r_55__21_,
  s_r_55__20_,s_r_55__19_,s_r_55__18_,s_r_55__17_,s_r_55__16_,s_r_55__15_,
  s_r_55__14_,s_r_55__13_,s_r_55__12_,s_r_55__11_,s_r_55__10_,s_r_55__9_,s_r_55__8_,
  s_r_55__7_,s_r_55__6_,s_r_55__5_,s_r_55__4_,s_r_55__3_,s_r_55__2_,s_r_55__1_,
  s_r_55__0_,prod_accum_62__63_,prod_accum_61__62_,prod_accum_61__61_,prod_accum_61__60_,
  prod_accum_61__59_,prod_accum_61__58_,prod_accum_61__57_,prod_accum_61__56_,
  prod_accum_61__55_,prod_accum_61__54_,prod_accum_61__53_,prod_accum_61__52_,
  prod_accum_61__51_,prod_accum_61__50_,prod_accum_61__49_,prod_accum_61__48_,
  prod_accum_61__47_,prod_accum_61__46_,prod_accum_61__45_,prod_accum_61__44_,
  prod_accum_61__43_,prod_accum_61__42_,prod_accum_61__41_,prod_accum_61__40_,prod_accum_61__39_,
  prod_accum_61__38_,prod_accum_61__37_,prod_accum_61__36_,prod_accum_61__35_,
  prod_accum_61__34_,prod_accum_61__33_,prod_accum_61__32_,prod_accum_61__31_,
  prod_accum_61__30_,prod_accum_61__29_,prod_accum_61__28_,prod_accum_61__27_,
  prod_accum_61__26_,prod_accum_61__25_,prod_accum_61__24_,prod_accum_61__23_,prod_accum_61__22_,
  prod_accum_61__21_,prod_accum_61__20_,prod_accum_61__19_,prod_accum_61__18_,
  prod_accum_61__17_,prod_accum_61__16_,prod_accum_61__15_,prod_accum_61__14_,
  prod_accum_61__13_,prod_accum_61__12_,prod_accum_61__11_,prod_accum_61__10_,
  prod_accum_61__9_,prod_accum_61__8_,prod_accum_61__7_,prod_accum_61__6_,prod_accum_61__5_,
  prod_accum_61__4_,prod_accum_61__3_,prod_accum_61__2_,prod_accum_61__1_,
  prod_accum_61__0_,prod_accum_60__61_,prod_accum_60__60_,prod_accum_60__59_,
  prod_accum_60__58_,prod_accum_60__57_,prod_accum_60__56_,prod_accum_60__55_,prod_accum_60__54_,
  prod_accum_60__53_,prod_accum_60__52_,prod_accum_60__51_,prod_accum_60__50_,
  prod_accum_60__49_,prod_accum_60__48_,prod_accum_60__47_,prod_accum_60__46_,
  prod_accum_60__45_,prod_accum_60__44_,prod_accum_60__43_,prod_accum_60__42_,
  prod_accum_60__41_,prod_accum_60__40_,prod_accum_60__39_,prod_accum_60__38_,
  prod_accum_60__37_,prod_accum_60__36_,prod_accum_60__35_,prod_accum_60__34_,prod_accum_60__33_,
  prod_accum_60__32_,prod_accum_60__31_,prod_accum_60__30_,prod_accum_60__29_,
  prod_accum_60__28_,prod_accum_60__27_,prod_accum_60__26_,prod_accum_60__25_,
  prod_accum_60__24_,prod_accum_60__23_,prod_accum_60__22_,prod_accum_60__21_,
  prod_accum_60__20_,prod_accum_60__19_,prod_accum_60__18_,prod_accum_60__17_,
  prod_accum_60__16_,prod_accum_60__15_,prod_accum_60__14_,prod_accum_60__13_,prod_accum_60__12_,
  prod_accum_60__11_,prod_accum_60__10_,prod_accum_60__9_,prod_accum_60__8_,
  prod_accum_60__7_,prod_accum_60__6_,prod_accum_60__5_,prod_accum_60__4_,
  prod_accum_60__3_,prod_accum_60__2_,prod_accum_60__1_,prod_accum_60__0_,prod_accum_59__60_,
  prod_accum_59__59_,prod_accum_59__58_,prod_accum_59__57_,prod_accum_59__56_,
  prod_accum_59__55_,prod_accum_59__54_,prod_accum_59__53_,prod_accum_59__52_,
  prod_accum_59__51_,prod_accum_59__50_,prod_accum_59__49_,prod_accum_59__48_,
  prod_accum_59__47_,prod_accum_59__46_,prod_accum_59__45_,prod_accum_59__44_,prod_accum_59__43_,
  prod_accum_59__42_,prod_accum_59__41_,prod_accum_59__40_,prod_accum_59__39_,
  prod_accum_59__38_,prod_accum_59__37_,prod_accum_59__36_,prod_accum_59__35_,
  prod_accum_59__34_,prod_accum_59__33_,prod_accum_59__32_,prod_accum_59__31_,
  prod_accum_59__30_,prod_accum_59__29_,prod_accum_59__28_,prod_accum_59__27_,
  prod_accum_59__26_,prod_accum_59__25_,prod_accum_59__24_,prod_accum_59__23_,prod_accum_59__22_,
  prod_accum_59__21_,prod_accum_59__20_,prod_accum_59__19_,prod_accum_59__18_,
  prod_accum_59__17_,prod_accum_59__16_,prod_accum_59__15_,prod_accum_59__14_,
  prod_accum_59__13_,prod_accum_59__12_,prod_accum_59__11_,prod_accum_59__10_,
  prod_accum_59__9_,prod_accum_59__8_,prod_accum_59__7_,prod_accum_59__6_,prod_accum_59__5_,
  prod_accum_59__4_,prod_accum_59__3_,prod_accum_59__2_,prod_accum_59__1_,
  prod_accum_59__0_,prod_accum_58__59_,prod_accum_58__58_,prod_accum_58__57_,
  prod_accum_58__56_,prod_accum_58__55_,prod_accum_58__54_,prod_accum_58__53_,prod_accum_58__52_,
  prod_accum_58__51_,prod_accum_58__50_,prod_accum_58__49_,prod_accum_58__48_,
  prod_accum_58__47_,prod_accum_58__46_,prod_accum_58__45_,prod_accum_58__44_,
  prod_accum_58__43_,prod_accum_58__42_,prod_accum_58__41_,prod_accum_58__40_,
  prod_accum_58__39_,prod_accum_58__38_,prod_accum_58__37_,prod_accum_58__36_,prod_accum_58__35_,
  prod_accum_58__34_,prod_accum_58__33_,prod_accum_58__32_,prod_accum_58__31_,
  prod_accum_58__30_,prod_accum_58__29_,prod_accum_58__28_,prod_accum_58__27_,
  prod_accum_58__26_,prod_accum_58__25_,prod_accum_58__24_,prod_accum_58__23_,
  prod_accum_58__22_,prod_accum_58__21_,prod_accum_58__20_,prod_accum_58__19_,
  prod_accum_58__18_,prod_accum_58__17_,prod_accum_58__16_,prod_accum_58__15_,prod_accum_58__14_,
  prod_accum_58__13_,prod_accum_58__12_,prod_accum_58__11_,prod_accum_58__10_,
  prod_accum_58__9_,prod_accum_58__8_,prod_accum_58__7_,prod_accum_58__6_,
  prod_accum_58__5_,prod_accum_58__4_,prod_accum_58__3_,prod_accum_58__2_,prod_accum_58__1_,
  prod_accum_58__0_,prod_accum_57__58_,prod_accum_57__57_,prod_accum_57__56_,
  prod_accum_57__55_,prod_accum_57__54_,prod_accum_57__53_,prod_accum_57__52_,
  prod_accum_57__51_,prod_accum_57__50_,prod_accum_57__49_,prod_accum_57__48_,
  prod_accum_57__47_,prod_accum_57__46_,prod_accum_57__45_,prod_accum_57__44_,prod_accum_57__43_,
  prod_accum_57__42_,prod_accum_57__41_,prod_accum_57__40_,prod_accum_57__39_,
  prod_accum_57__38_,prod_accum_57__37_,prod_accum_57__36_,prod_accum_57__35_,
  prod_accum_57__34_,prod_accum_57__33_,prod_accum_57__32_,prod_accum_57__31_,
  prod_accum_57__30_,prod_accum_57__29_,prod_accum_57__28_,prod_accum_57__27_,
  prod_accum_57__26_,prod_accum_57__25_,prod_accum_57__24_,prod_accum_57__23_,prod_accum_57__22_,
  prod_accum_57__21_,prod_accum_57__20_,prod_accum_57__19_,prod_accum_57__18_,
  prod_accum_57__17_,prod_accum_57__16_,prod_accum_57__15_,prod_accum_57__14_,
  prod_accum_57__13_,prod_accum_57__12_,prod_accum_57__11_,prod_accum_57__10_,
  prod_accum_57__9_,prod_accum_57__8_,prod_accum_57__7_,prod_accum_57__6_,prod_accum_57__5_,
  prod_accum_57__4_,prod_accum_57__3_,prod_accum_57__2_,prod_accum_57__1_,
  prod_accum_57__0_,prod_accum_56__57_,prod_accum_56__56_,prod_accum_56__55_,
  prod_accum_56__54_,prod_accum_56__53_,prod_accum_56__52_,prod_accum_56__51_,prod_accum_56__50_,
  prod_accum_56__49_,prod_accum_56__48_,prod_accum_56__47_,prod_accum_56__46_,
  prod_accum_56__45_,prod_accum_56__44_,prod_accum_56__43_,prod_accum_56__42_,
  prod_accum_56__41_,prod_accum_56__40_,prod_accum_56__39_,prod_accum_56__38_,
  prod_accum_56__37_,prod_accum_56__36_,prod_accum_56__35_,prod_accum_56__34_,
  prod_accum_56__33_,prod_accum_56__32_,prod_accum_56__31_,prod_accum_56__30_,prod_accum_56__29_,
  prod_accum_56__28_,prod_accum_56__27_,prod_accum_56__26_,prod_accum_56__25_,
  prod_accum_56__24_,prod_accum_56__23_,prod_accum_56__22_,prod_accum_56__21_,
  prod_accum_56__20_,prod_accum_56__19_,prod_accum_56__18_,prod_accum_56__17_,
  prod_accum_56__16_,prod_accum_56__15_,prod_accum_56__14_,prod_accum_56__13_,prod_accum_56__12_,
  prod_accum_56__11_,prod_accum_56__10_,prod_accum_56__9_,prod_accum_56__8_,
  prod_accum_56__7_,prod_accum_56__6_,prod_accum_56__5_,prod_accum_56__4_,
  prod_accum_56__3_,prod_accum_56__2_,prod_accum_56__1_,prod_accum_56__0_,prod_accum_55__56_,
  prod_accum_55__55_,prod_accum_55__54_,prod_accum_55__53_,prod_accum_55__52_,
  prod_accum_55__51_,prod_accum_55__50_,prod_accum_55__49_,prod_accum_55__48_,
  prod_accum_55__47_,prod_accum_55__46_,prod_accum_55__45_,prod_accum_55__44_,
  prod_accum_55__43_,prod_accum_55__42_,prod_accum_55__41_,prod_accum_55__40_,prod_accum_55__39_,
  prod_accum_55__38_,prod_accum_55__37_,prod_accum_55__36_,prod_accum_55__35_,
  prod_accum_55__34_,prod_accum_55__33_,prod_accum_55__32_,prod_accum_55__31_,
  prod_accum_55__30_,prod_accum_55__29_,prod_accum_55__28_,prod_accum_55__27_,
  prod_accum_55__26_,prod_accum_55__25_,prod_accum_55__24_,prod_accum_55__23_,
  prod_accum_55__22_,prod_accum_55__21_,prod_accum_55__20_,prod_accum_55__19_,prod_accum_55__18_,
  prod_accum_55__17_,prod_accum_55__16_,prod_accum_55__15_,prod_accum_55__14_,
  prod_accum_55__13_,prod_accum_55__12_,prod_accum_55__11_,prod_accum_55__10_,
  prod_accum_55__9_,prod_accum_55__8_,prod_accum_55__7_,prod_accum_55__6_,
  prod_accum_55__5_,prod_accum_55__4_,prod_accum_55__3_,prod_accum_55__2_,prod_accum_55__1_,
  prod_accum_55__0_,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,
  SYNOPSYS_UNCONNECTED_4,SYNOPSYS_UNCONNECTED_5,SYNOPSYS_UNCONNECTED_6,
  SYNOPSYS_UNCONNECTED_7,SYNOPSYS_UNCONNECTED_8,SYNOPSYS_UNCONNECTED_9,
  SYNOPSYS_UNCONNECTED_10,SYNOPSYS_UNCONNECTED_11,SYNOPSYS_UNCONNECTED_12,SYNOPSYS_UNCONNECTED_13,
  SYNOPSYS_UNCONNECTED_14,SYNOPSYS_UNCONNECTED_15,SYNOPSYS_UNCONNECTED_16,
  SYNOPSYS_UNCONNECTED_17,SYNOPSYS_UNCONNECTED_18,SYNOPSYS_UNCONNECTED_19,
  SYNOPSYS_UNCONNECTED_20,SYNOPSYS_UNCONNECTED_21,SYNOPSYS_UNCONNECTED_22,SYNOPSYS_UNCONNECTED_23,
  SYNOPSYS_UNCONNECTED_24,SYNOPSYS_UNCONNECTED_25,SYNOPSYS_UNCONNECTED_26,
  SYNOPSYS_UNCONNECTED_27,SYNOPSYS_UNCONNECTED_28,SYNOPSYS_UNCONNECTED_29,
  SYNOPSYS_UNCONNECTED_30,SYNOPSYS_UNCONNECTED_31,SYNOPSYS_UNCONNECTED_32,SYNOPSYS_UNCONNECTED_33,
  SYNOPSYS_UNCONNECTED_34,SYNOPSYS_UNCONNECTED_35,SYNOPSYS_UNCONNECTED_36,
  SYNOPSYS_UNCONNECTED_37,SYNOPSYS_UNCONNECTED_38,SYNOPSYS_UNCONNECTED_39,
  SYNOPSYS_UNCONNECTED_40,SYNOPSYS_UNCONNECTED_41,SYNOPSYS_UNCONNECTED_42,SYNOPSYS_UNCONNECTED_43,
  SYNOPSYS_UNCONNECTED_44,SYNOPSYS_UNCONNECTED_45,SYNOPSYS_UNCONNECTED_46,
  SYNOPSYS_UNCONNECTED_47,SYNOPSYS_UNCONNECTED_48,SYNOPSYS_UNCONNECTED_49,
  SYNOPSYS_UNCONNECTED_50,SYNOPSYS_UNCONNECTED_51,SYNOPSYS_UNCONNECTED_52,SYNOPSYS_UNCONNECTED_53,
  SYNOPSYS_UNCONNECTED_54,SYNOPSYS_UNCONNECTED_55,SYNOPSYS_UNCONNECTED_56,
  SYNOPSYS_UNCONNECTED_57,SYNOPSYS_UNCONNECTED_58,SYNOPSYS_UNCONNECTED_59,
  SYNOPSYS_UNCONNECTED_60,SYNOPSYS_UNCONNECTED_61,SYNOPSYS_UNCONNECTED_62,SYNOPSYS_UNCONNECTED_63,
  SYNOPSYS_UNCONNECTED_64,SYNOPSYS_UNCONNECTED_65,SYNOPSYS_UNCONNECTED_66,
  SYNOPSYS_UNCONNECTED_67,SYNOPSYS_UNCONNECTED_68,SYNOPSYS_UNCONNECTED_69,
  SYNOPSYS_UNCONNECTED_70,SYNOPSYS_UNCONNECTED_71,SYNOPSYS_UNCONNECTED_72,SYNOPSYS_UNCONNECTED_73,
  SYNOPSYS_UNCONNECTED_74,SYNOPSYS_UNCONNECTED_75,SYNOPSYS_UNCONNECTED_76,
  SYNOPSYS_UNCONNECTED_77,SYNOPSYS_UNCONNECTED_78,SYNOPSYS_UNCONNECTED_79,
  SYNOPSYS_UNCONNECTED_80,SYNOPSYS_UNCONNECTED_81,SYNOPSYS_UNCONNECTED_82,SYNOPSYS_UNCONNECTED_83,
  SYNOPSYS_UNCONNECTED_84,SYNOPSYS_UNCONNECTED_85,SYNOPSYS_UNCONNECTED_86,
  SYNOPSYS_UNCONNECTED_87,SYNOPSYS_UNCONNECTED_88,SYNOPSYS_UNCONNECTED_89,
  SYNOPSYS_UNCONNECTED_90,SYNOPSYS_UNCONNECTED_91,SYNOPSYS_UNCONNECTED_92,SYNOPSYS_UNCONNECTED_93,
  SYNOPSYS_UNCONNECTED_94,SYNOPSYS_UNCONNECTED_95,SYNOPSYS_UNCONNECTED_96,
  SYNOPSYS_UNCONNECTED_97,SYNOPSYS_UNCONNECTED_98,SYNOPSYS_UNCONNECTED_99,
  SYNOPSYS_UNCONNECTED_100,SYNOPSYS_UNCONNECTED_101,SYNOPSYS_UNCONNECTED_102,SYNOPSYS_UNCONNECTED_103,
  SYNOPSYS_UNCONNECTED_104,SYNOPSYS_UNCONNECTED_105,SYNOPSYS_UNCONNECTED_106,
  SYNOPSYS_UNCONNECTED_107,SYNOPSYS_UNCONNECTED_108,SYNOPSYS_UNCONNECTED_109,
  SYNOPSYS_UNCONNECTED_110,SYNOPSYS_UNCONNECTED_111,SYNOPSYS_UNCONNECTED_112,
  SYNOPSYS_UNCONNECTED_113,SYNOPSYS_UNCONNECTED_114,SYNOPSYS_UNCONNECTED_115,
  SYNOPSYS_UNCONNECTED_116,SYNOPSYS_UNCONNECTED_117,SYNOPSYS_UNCONNECTED_118,SYNOPSYS_UNCONNECTED_119,
  SYNOPSYS_UNCONNECTED_120,SYNOPSYS_UNCONNECTED_121,SYNOPSYS_UNCONNECTED_122,
  SYNOPSYS_UNCONNECTED_123,SYNOPSYS_UNCONNECTED_124,SYNOPSYS_UNCONNECTED_125,
  SYNOPSYS_UNCONNECTED_126,SYNOPSYS_UNCONNECTED_127,SYNOPSYS_UNCONNECTED_128;
  wire [63:0] pp0;
  wire [3967:0] a_r,b_r;
  wire [61:0] c_r;

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0] }),
    .o(pp0)
  );


  bsg_mul_array_row_64_0_0
  genblk1_0__genblk1_first_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_i),
    .b_i(b_i),
    .s_i(pp0),
    .c_i(1'b0),
    .prod_accum_i(pp0[0]),
    .a_o(a_r[63:0]),
    .b_o(b_r[63:0]),
    .s_o({ s_r_0__63_, s_r_0__62_, s_r_0__61_, s_r_0__60_, s_r_0__59_, s_r_0__58_, s_r_0__57_, s_r_0__56_, s_r_0__55_, s_r_0__54_, s_r_0__53_, s_r_0__52_, s_r_0__51_, s_r_0__50_, s_r_0__49_, s_r_0__48_, s_r_0__47_, s_r_0__46_, s_r_0__45_, s_r_0__44_, s_r_0__43_, s_r_0__42_, s_r_0__41_, s_r_0__40_, s_r_0__39_, s_r_0__38_, s_r_0__37_, s_r_0__36_, s_r_0__35_, s_r_0__34_, s_r_0__33_, s_r_0__32_, s_r_0__31_, s_r_0__30_, s_r_0__29_, s_r_0__28_, s_r_0__27_, s_r_0__26_, s_r_0__25_, s_r_0__24_, s_r_0__23_, s_r_0__22_, s_r_0__21_, s_r_0__20_, s_r_0__19_, s_r_0__18_, s_r_0__17_, s_r_0__16_, s_r_0__15_, s_r_0__14_, s_r_0__13_, s_r_0__12_, s_r_0__11_, s_r_0__10_, s_r_0__9_, s_r_0__8_, s_r_0__7_, s_r_0__6_, s_r_0__5_, s_r_0__4_, s_r_0__3_, s_r_0__2_, s_r_0__1_, s_r_0__0_ }),
    .c_o(c_r[0]),
    .prod_accum_o({ prod_accum_0__1_, prod_accum_0__0_ })
  );


  bsg_mul_array_row_64_1_0
  genblk1_1__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[63:0]),
    .b_i(b_r[63:0]),
    .s_i({ s_r_0__63_, s_r_0__62_, s_r_0__61_, s_r_0__60_, s_r_0__59_, s_r_0__58_, s_r_0__57_, s_r_0__56_, s_r_0__55_, s_r_0__54_, s_r_0__53_, s_r_0__52_, s_r_0__51_, s_r_0__50_, s_r_0__49_, s_r_0__48_, s_r_0__47_, s_r_0__46_, s_r_0__45_, s_r_0__44_, s_r_0__43_, s_r_0__42_, s_r_0__41_, s_r_0__40_, s_r_0__39_, s_r_0__38_, s_r_0__37_, s_r_0__36_, s_r_0__35_, s_r_0__34_, s_r_0__33_, s_r_0__32_, s_r_0__31_, s_r_0__30_, s_r_0__29_, s_r_0__28_, s_r_0__27_, s_r_0__26_, s_r_0__25_, s_r_0__24_, s_r_0__23_, s_r_0__22_, s_r_0__21_, s_r_0__20_, s_r_0__19_, s_r_0__18_, s_r_0__17_, s_r_0__16_, s_r_0__15_, s_r_0__14_, s_r_0__13_, s_r_0__12_, s_r_0__11_, s_r_0__10_, s_r_0__9_, s_r_0__8_, s_r_0__7_, s_r_0__6_, s_r_0__5_, s_r_0__4_, s_r_0__3_, s_r_0__2_, s_r_0__1_, s_r_0__0_ }),
    .c_i(c_r[0]),
    .prod_accum_i({ prod_accum_0__1_, prod_accum_0__0_ }),
    .a_o(a_r[127:64]),
    .b_o(b_r[127:64]),
    .s_o({ s_r_1__63_, s_r_1__62_, s_r_1__61_, s_r_1__60_, s_r_1__59_, s_r_1__58_, s_r_1__57_, s_r_1__56_, s_r_1__55_, s_r_1__54_, s_r_1__53_, s_r_1__52_, s_r_1__51_, s_r_1__50_, s_r_1__49_, s_r_1__48_, s_r_1__47_, s_r_1__46_, s_r_1__45_, s_r_1__44_, s_r_1__43_, s_r_1__42_, s_r_1__41_, s_r_1__40_, s_r_1__39_, s_r_1__38_, s_r_1__37_, s_r_1__36_, s_r_1__35_, s_r_1__34_, s_r_1__33_, s_r_1__32_, s_r_1__31_, s_r_1__30_, s_r_1__29_, s_r_1__28_, s_r_1__27_, s_r_1__26_, s_r_1__25_, s_r_1__24_, s_r_1__23_, s_r_1__22_, s_r_1__21_, s_r_1__20_, s_r_1__19_, s_r_1__18_, s_r_1__17_, s_r_1__16_, s_r_1__15_, s_r_1__14_, s_r_1__13_, s_r_1__12_, s_r_1__11_, s_r_1__10_, s_r_1__9_, s_r_1__8_, s_r_1__7_, s_r_1__6_, s_r_1__5_, s_r_1__4_, s_r_1__3_, s_r_1__2_, s_r_1__1_, s_r_1__0_ }),
    .c_o(c_r[1]),
    .prod_accum_o({ prod_accum_1__2_, prod_accum_1__1_, prod_accum_1__0_ })
  );


  bsg_mul_array_row_64_2_0
  genblk1_2__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[127:64]),
    .b_i(b_r[127:64]),
    .s_i({ s_r_1__63_, s_r_1__62_, s_r_1__61_, s_r_1__60_, s_r_1__59_, s_r_1__58_, s_r_1__57_, s_r_1__56_, s_r_1__55_, s_r_1__54_, s_r_1__53_, s_r_1__52_, s_r_1__51_, s_r_1__50_, s_r_1__49_, s_r_1__48_, s_r_1__47_, s_r_1__46_, s_r_1__45_, s_r_1__44_, s_r_1__43_, s_r_1__42_, s_r_1__41_, s_r_1__40_, s_r_1__39_, s_r_1__38_, s_r_1__37_, s_r_1__36_, s_r_1__35_, s_r_1__34_, s_r_1__33_, s_r_1__32_, s_r_1__31_, s_r_1__30_, s_r_1__29_, s_r_1__28_, s_r_1__27_, s_r_1__26_, s_r_1__25_, s_r_1__24_, s_r_1__23_, s_r_1__22_, s_r_1__21_, s_r_1__20_, s_r_1__19_, s_r_1__18_, s_r_1__17_, s_r_1__16_, s_r_1__15_, s_r_1__14_, s_r_1__13_, s_r_1__12_, s_r_1__11_, s_r_1__10_, s_r_1__9_, s_r_1__8_, s_r_1__7_, s_r_1__6_, s_r_1__5_, s_r_1__4_, s_r_1__3_, s_r_1__2_, s_r_1__1_, s_r_1__0_ }),
    .c_i(c_r[1]),
    .prod_accum_i({ prod_accum_1__2_, prod_accum_1__1_, prod_accum_1__0_ }),
    .a_o(a_r[191:128]),
    .b_o(b_r[191:128]),
    .s_o({ s_r_2__63_, s_r_2__62_, s_r_2__61_, s_r_2__60_, s_r_2__59_, s_r_2__58_, s_r_2__57_, s_r_2__56_, s_r_2__55_, s_r_2__54_, s_r_2__53_, s_r_2__52_, s_r_2__51_, s_r_2__50_, s_r_2__49_, s_r_2__48_, s_r_2__47_, s_r_2__46_, s_r_2__45_, s_r_2__44_, s_r_2__43_, s_r_2__42_, s_r_2__41_, s_r_2__40_, s_r_2__39_, s_r_2__38_, s_r_2__37_, s_r_2__36_, s_r_2__35_, s_r_2__34_, s_r_2__33_, s_r_2__32_, s_r_2__31_, s_r_2__30_, s_r_2__29_, s_r_2__28_, s_r_2__27_, s_r_2__26_, s_r_2__25_, s_r_2__24_, s_r_2__23_, s_r_2__22_, s_r_2__21_, s_r_2__20_, s_r_2__19_, s_r_2__18_, s_r_2__17_, s_r_2__16_, s_r_2__15_, s_r_2__14_, s_r_2__13_, s_r_2__12_, s_r_2__11_, s_r_2__10_, s_r_2__9_, s_r_2__8_, s_r_2__7_, s_r_2__6_, s_r_2__5_, s_r_2__4_, s_r_2__3_, s_r_2__2_, s_r_2__1_, s_r_2__0_ }),
    .c_o(c_r[2]),
    .prod_accum_o({ prod_accum_2__3_, prod_accum_2__2_, prod_accum_2__1_, prod_accum_2__0_ })
  );


  bsg_mul_array_row_64_3_0
  genblk1_3__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[191:128]),
    .b_i(b_r[191:128]),
    .s_i({ s_r_2__63_, s_r_2__62_, s_r_2__61_, s_r_2__60_, s_r_2__59_, s_r_2__58_, s_r_2__57_, s_r_2__56_, s_r_2__55_, s_r_2__54_, s_r_2__53_, s_r_2__52_, s_r_2__51_, s_r_2__50_, s_r_2__49_, s_r_2__48_, s_r_2__47_, s_r_2__46_, s_r_2__45_, s_r_2__44_, s_r_2__43_, s_r_2__42_, s_r_2__41_, s_r_2__40_, s_r_2__39_, s_r_2__38_, s_r_2__37_, s_r_2__36_, s_r_2__35_, s_r_2__34_, s_r_2__33_, s_r_2__32_, s_r_2__31_, s_r_2__30_, s_r_2__29_, s_r_2__28_, s_r_2__27_, s_r_2__26_, s_r_2__25_, s_r_2__24_, s_r_2__23_, s_r_2__22_, s_r_2__21_, s_r_2__20_, s_r_2__19_, s_r_2__18_, s_r_2__17_, s_r_2__16_, s_r_2__15_, s_r_2__14_, s_r_2__13_, s_r_2__12_, s_r_2__11_, s_r_2__10_, s_r_2__9_, s_r_2__8_, s_r_2__7_, s_r_2__6_, s_r_2__5_, s_r_2__4_, s_r_2__3_, s_r_2__2_, s_r_2__1_, s_r_2__0_ }),
    .c_i(c_r[2]),
    .prod_accum_i({ prod_accum_2__3_, prod_accum_2__2_, prod_accum_2__1_, prod_accum_2__0_ }),
    .a_o(a_r[255:192]),
    .b_o(b_r[255:192]),
    .s_o({ s_r_3__63_, s_r_3__62_, s_r_3__61_, s_r_3__60_, s_r_3__59_, s_r_3__58_, s_r_3__57_, s_r_3__56_, s_r_3__55_, s_r_3__54_, s_r_3__53_, s_r_3__52_, s_r_3__51_, s_r_3__50_, s_r_3__49_, s_r_3__48_, s_r_3__47_, s_r_3__46_, s_r_3__45_, s_r_3__44_, s_r_3__43_, s_r_3__42_, s_r_3__41_, s_r_3__40_, s_r_3__39_, s_r_3__38_, s_r_3__37_, s_r_3__36_, s_r_3__35_, s_r_3__34_, s_r_3__33_, s_r_3__32_, s_r_3__31_, s_r_3__30_, s_r_3__29_, s_r_3__28_, s_r_3__27_, s_r_3__26_, s_r_3__25_, s_r_3__24_, s_r_3__23_, s_r_3__22_, s_r_3__21_, s_r_3__20_, s_r_3__19_, s_r_3__18_, s_r_3__17_, s_r_3__16_, s_r_3__15_, s_r_3__14_, s_r_3__13_, s_r_3__12_, s_r_3__11_, s_r_3__10_, s_r_3__9_, s_r_3__8_, s_r_3__7_, s_r_3__6_, s_r_3__5_, s_r_3__4_, s_r_3__3_, s_r_3__2_, s_r_3__1_, s_r_3__0_ }),
    .c_o(c_r[3]),
    .prod_accum_o({ prod_accum_3__4_, prod_accum_3__3_, prod_accum_3__2_, prod_accum_3__1_, prod_accum_3__0_ })
  );


  bsg_mul_array_row_64_4_0
  genblk1_4__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[255:192]),
    .b_i(b_r[255:192]),
    .s_i({ s_r_3__63_, s_r_3__62_, s_r_3__61_, s_r_3__60_, s_r_3__59_, s_r_3__58_, s_r_3__57_, s_r_3__56_, s_r_3__55_, s_r_3__54_, s_r_3__53_, s_r_3__52_, s_r_3__51_, s_r_3__50_, s_r_3__49_, s_r_3__48_, s_r_3__47_, s_r_3__46_, s_r_3__45_, s_r_3__44_, s_r_3__43_, s_r_3__42_, s_r_3__41_, s_r_3__40_, s_r_3__39_, s_r_3__38_, s_r_3__37_, s_r_3__36_, s_r_3__35_, s_r_3__34_, s_r_3__33_, s_r_3__32_, s_r_3__31_, s_r_3__30_, s_r_3__29_, s_r_3__28_, s_r_3__27_, s_r_3__26_, s_r_3__25_, s_r_3__24_, s_r_3__23_, s_r_3__22_, s_r_3__21_, s_r_3__20_, s_r_3__19_, s_r_3__18_, s_r_3__17_, s_r_3__16_, s_r_3__15_, s_r_3__14_, s_r_3__13_, s_r_3__12_, s_r_3__11_, s_r_3__10_, s_r_3__9_, s_r_3__8_, s_r_3__7_, s_r_3__6_, s_r_3__5_, s_r_3__4_, s_r_3__3_, s_r_3__2_, s_r_3__1_, s_r_3__0_ }),
    .c_i(c_r[3]),
    .prod_accum_i({ prod_accum_3__4_, prod_accum_3__3_, prod_accum_3__2_, prod_accum_3__1_, prod_accum_3__0_ }),
    .a_o(a_r[319:256]),
    .b_o(b_r[319:256]),
    .s_o({ s_r_4__63_, s_r_4__62_, s_r_4__61_, s_r_4__60_, s_r_4__59_, s_r_4__58_, s_r_4__57_, s_r_4__56_, s_r_4__55_, s_r_4__54_, s_r_4__53_, s_r_4__52_, s_r_4__51_, s_r_4__50_, s_r_4__49_, s_r_4__48_, s_r_4__47_, s_r_4__46_, s_r_4__45_, s_r_4__44_, s_r_4__43_, s_r_4__42_, s_r_4__41_, s_r_4__40_, s_r_4__39_, s_r_4__38_, s_r_4__37_, s_r_4__36_, s_r_4__35_, s_r_4__34_, s_r_4__33_, s_r_4__32_, s_r_4__31_, s_r_4__30_, s_r_4__29_, s_r_4__28_, s_r_4__27_, s_r_4__26_, s_r_4__25_, s_r_4__24_, s_r_4__23_, s_r_4__22_, s_r_4__21_, s_r_4__20_, s_r_4__19_, s_r_4__18_, s_r_4__17_, s_r_4__16_, s_r_4__15_, s_r_4__14_, s_r_4__13_, s_r_4__12_, s_r_4__11_, s_r_4__10_, s_r_4__9_, s_r_4__8_, s_r_4__7_, s_r_4__6_, s_r_4__5_, s_r_4__4_, s_r_4__3_, s_r_4__2_, s_r_4__1_, s_r_4__0_ }),
    .c_o(c_r[4]),
    .prod_accum_o({ prod_accum_4__5_, prod_accum_4__4_, prod_accum_4__3_, prod_accum_4__2_, prod_accum_4__1_, prod_accum_4__0_ })
  );


  bsg_mul_array_row_64_5_0
  genblk1_5__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[319:256]),
    .b_i(b_r[319:256]),
    .s_i({ s_r_4__63_, s_r_4__62_, s_r_4__61_, s_r_4__60_, s_r_4__59_, s_r_4__58_, s_r_4__57_, s_r_4__56_, s_r_4__55_, s_r_4__54_, s_r_4__53_, s_r_4__52_, s_r_4__51_, s_r_4__50_, s_r_4__49_, s_r_4__48_, s_r_4__47_, s_r_4__46_, s_r_4__45_, s_r_4__44_, s_r_4__43_, s_r_4__42_, s_r_4__41_, s_r_4__40_, s_r_4__39_, s_r_4__38_, s_r_4__37_, s_r_4__36_, s_r_4__35_, s_r_4__34_, s_r_4__33_, s_r_4__32_, s_r_4__31_, s_r_4__30_, s_r_4__29_, s_r_4__28_, s_r_4__27_, s_r_4__26_, s_r_4__25_, s_r_4__24_, s_r_4__23_, s_r_4__22_, s_r_4__21_, s_r_4__20_, s_r_4__19_, s_r_4__18_, s_r_4__17_, s_r_4__16_, s_r_4__15_, s_r_4__14_, s_r_4__13_, s_r_4__12_, s_r_4__11_, s_r_4__10_, s_r_4__9_, s_r_4__8_, s_r_4__7_, s_r_4__6_, s_r_4__5_, s_r_4__4_, s_r_4__3_, s_r_4__2_, s_r_4__1_, s_r_4__0_ }),
    .c_i(c_r[4]),
    .prod_accum_i({ prod_accum_4__5_, prod_accum_4__4_, prod_accum_4__3_, prod_accum_4__2_, prod_accum_4__1_, prod_accum_4__0_ }),
    .a_o(a_r[383:320]),
    .b_o(b_r[383:320]),
    .s_o({ s_r_5__63_, s_r_5__62_, s_r_5__61_, s_r_5__60_, s_r_5__59_, s_r_5__58_, s_r_5__57_, s_r_5__56_, s_r_5__55_, s_r_5__54_, s_r_5__53_, s_r_5__52_, s_r_5__51_, s_r_5__50_, s_r_5__49_, s_r_5__48_, s_r_5__47_, s_r_5__46_, s_r_5__45_, s_r_5__44_, s_r_5__43_, s_r_5__42_, s_r_5__41_, s_r_5__40_, s_r_5__39_, s_r_5__38_, s_r_5__37_, s_r_5__36_, s_r_5__35_, s_r_5__34_, s_r_5__33_, s_r_5__32_, s_r_5__31_, s_r_5__30_, s_r_5__29_, s_r_5__28_, s_r_5__27_, s_r_5__26_, s_r_5__25_, s_r_5__24_, s_r_5__23_, s_r_5__22_, s_r_5__21_, s_r_5__20_, s_r_5__19_, s_r_5__18_, s_r_5__17_, s_r_5__16_, s_r_5__15_, s_r_5__14_, s_r_5__13_, s_r_5__12_, s_r_5__11_, s_r_5__10_, s_r_5__9_, s_r_5__8_, s_r_5__7_, s_r_5__6_, s_r_5__5_, s_r_5__4_, s_r_5__3_, s_r_5__2_, s_r_5__1_, s_r_5__0_ }),
    .c_o(c_r[5]),
    .prod_accum_o({ prod_accum_5__6_, prod_accum_5__5_, prod_accum_5__4_, prod_accum_5__3_, prod_accum_5__2_, prod_accum_5__1_, prod_accum_5__0_ })
  );


  bsg_mul_array_row_64_6_0
  genblk1_6__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[383:320]),
    .b_i(b_r[383:320]),
    .s_i({ s_r_5__63_, s_r_5__62_, s_r_5__61_, s_r_5__60_, s_r_5__59_, s_r_5__58_, s_r_5__57_, s_r_5__56_, s_r_5__55_, s_r_5__54_, s_r_5__53_, s_r_5__52_, s_r_5__51_, s_r_5__50_, s_r_5__49_, s_r_5__48_, s_r_5__47_, s_r_5__46_, s_r_5__45_, s_r_5__44_, s_r_5__43_, s_r_5__42_, s_r_5__41_, s_r_5__40_, s_r_5__39_, s_r_5__38_, s_r_5__37_, s_r_5__36_, s_r_5__35_, s_r_5__34_, s_r_5__33_, s_r_5__32_, s_r_5__31_, s_r_5__30_, s_r_5__29_, s_r_5__28_, s_r_5__27_, s_r_5__26_, s_r_5__25_, s_r_5__24_, s_r_5__23_, s_r_5__22_, s_r_5__21_, s_r_5__20_, s_r_5__19_, s_r_5__18_, s_r_5__17_, s_r_5__16_, s_r_5__15_, s_r_5__14_, s_r_5__13_, s_r_5__12_, s_r_5__11_, s_r_5__10_, s_r_5__9_, s_r_5__8_, s_r_5__7_, s_r_5__6_, s_r_5__5_, s_r_5__4_, s_r_5__3_, s_r_5__2_, s_r_5__1_, s_r_5__0_ }),
    .c_i(c_r[5]),
    .prod_accum_i({ prod_accum_5__6_, prod_accum_5__5_, prod_accum_5__4_, prod_accum_5__3_, prod_accum_5__2_, prod_accum_5__1_, prod_accum_5__0_ }),
    .a_o(a_r[447:384]),
    .b_o(b_r[447:384]),
    .s_o({ s_r_6__63_, s_r_6__62_, s_r_6__61_, s_r_6__60_, s_r_6__59_, s_r_6__58_, s_r_6__57_, s_r_6__56_, s_r_6__55_, s_r_6__54_, s_r_6__53_, s_r_6__52_, s_r_6__51_, s_r_6__50_, s_r_6__49_, s_r_6__48_, s_r_6__47_, s_r_6__46_, s_r_6__45_, s_r_6__44_, s_r_6__43_, s_r_6__42_, s_r_6__41_, s_r_6__40_, s_r_6__39_, s_r_6__38_, s_r_6__37_, s_r_6__36_, s_r_6__35_, s_r_6__34_, s_r_6__33_, s_r_6__32_, s_r_6__31_, s_r_6__30_, s_r_6__29_, s_r_6__28_, s_r_6__27_, s_r_6__26_, s_r_6__25_, s_r_6__24_, s_r_6__23_, s_r_6__22_, s_r_6__21_, s_r_6__20_, s_r_6__19_, s_r_6__18_, s_r_6__17_, s_r_6__16_, s_r_6__15_, s_r_6__14_, s_r_6__13_, s_r_6__12_, s_r_6__11_, s_r_6__10_, s_r_6__9_, s_r_6__8_, s_r_6__7_, s_r_6__6_, s_r_6__5_, s_r_6__4_, s_r_6__3_, s_r_6__2_, s_r_6__1_, s_r_6__0_ }),
    .c_o(c_r[6]),
    .prod_accum_o({ prod_accum_6__7_, prod_accum_6__6_, prod_accum_6__5_, prod_accum_6__4_, prod_accum_6__3_, prod_accum_6__2_, prod_accum_6__1_, prod_accum_6__0_ })
  );


  bsg_mul_array_row_64_7_0
  genblk1_7__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[447:384]),
    .b_i(b_r[447:384]),
    .s_i({ s_r_6__63_, s_r_6__62_, s_r_6__61_, s_r_6__60_, s_r_6__59_, s_r_6__58_, s_r_6__57_, s_r_6__56_, s_r_6__55_, s_r_6__54_, s_r_6__53_, s_r_6__52_, s_r_6__51_, s_r_6__50_, s_r_6__49_, s_r_6__48_, s_r_6__47_, s_r_6__46_, s_r_6__45_, s_r_6__44_, s_r_6__43_, s_r_6__42_, s_r_6__41_, s_r_6__40_, s_r_6__39_, s_r_6__38_, s_r_6__37_, s_r_6__36_, s_r_6__35_, s_r_6__34_, s_r_6__33_, s_r_6__32_, s_r_6__31_, s_r_6__30_, s_r_6__29_, s_r_6__28_, s_r_6__27_, s_r_6__26_, s_r_6__25_, s_r_6__24_, s_r_6__23_, s_r_6__22_, s_r_6__21_, s_r_6__20_, s_r_6__19_, s_r_6__18_, s_r_6__17_, s_r_6__16_, s_r_6__15_, s_r_6__14_, s_r_6__13_, s_r_6__12_, s_r_6__11_, s_r_6__10_, s_r_6__9_, s_r_6__8_, s_r_6__7_, s_r_6__6_, s_r_6__5_, s_r_6__4_, s_r_6__3_, s_r_6__2_, s_r_6__1_, s_r_6__0_ }),
    .c_i(c_r[6]),
    .prod_accum_i({ prod_accum_6__7_, prod_accum_6__6_, prod_accum_6__5_, prod_accum_6__4_, prod_accum_6__3_, prod_accum_6__2_, prod_accum_6__1_, prod_accum_6__0_ }),
    .a_o(a_r[511:448]),
    .b_o(b_r[511:448]),
    .s_o({ s_r_7__63_, s_r_7__62_, s_r_7__61_, s_r_7__60_, s_r_7__59_, s_r_7__58_, s_r_7__57_, s_r_7__56_, s_r_7__55_, s_r_7__54_, s_r_7__53_, s_r_7__52_, s_r_7__51_, s_r_7__50_, s_r_7__49_, s_r_7__48_, s_r_7__47_, s_r_7__46_, s_r_7__45_, s_r_7__44_, s_r_7__43_, s_r_7__42_, s_r_7__41_, s_r_7__40_, s_r_7__39_, s_r_7__38_, s_r_7__37_, s_r_7__36_, s_r_7__35_, s_r_7__34_, s_r_7__33_, s_r_7__32_, s_r_7__31_, s_r_7__30_, s_r_7__29_, s_r_7__28_, s_r_7__27_, s_r_7__26_, s_r_7__25_, s_r_7__24_, s_r_7__23_, s_r_7__22_, s_r_7__21_, s_r_7__20_, s_r_7__19_, s_r_7__18_, s_r_7__17_, s_r_7__16_, s_r_7__15_, s_r_7__14_, s_r_7__13_, s_r_7__12_, s_r_7__11_, s_r_7__10_, s_r_7__9_, s_r_7__8_, s_r_7__7_, s_r_7__6_, s_r_7__5_, s_r_7__4_, s_r_7__3_, s_r_7__2_, s_r_7__1_, s_r_7__0_ }),
    .c_o(c_r[7]),
    .prod_accum_o({ prod_accum_7__8_, prod_accum_7__7_, prod_accum_7__6_, prod_accum_7__5_, prod_accum_7__4_, prod_accum_7__3_, prod_accum_7__2_, prod_accum_7__1_, prod_accum_7__0_ })
  );


  bsg_mul_array_row_64_8_0
  genblk1_8__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[511:448]),
    .b_i(b_r[511:448]),
    .s_i({ s_r_7__63_, s_r_7__62_, s_r_7__61_, s_r_7__60_, s_r_7__59_, s_r_7__58_, s_r_7__57_, s_r_7__56_, s_r_7__55_, s_r_7__54_, s_r_7__53_, s_r_7__52_, s_r_7__51_, s_r_7__50_, s_r_7__49_, s_r_7__48_, s_r_7__47_, s_r_7__46_, s_r_7__45_, s_r_7__44_, s_r_7__43_, s_r_7__42_, s_r_7__41_, s_r_7__40_, s_r_7__39_, s_r_7__38_, s_r_7__37_, s_r_7__36_, s_r_7__35_, s_r_7__34_, s_r_7__33_, s_r_7__32_, s_r_7__31_, s_r_7__30_, s_r_7__29_, s_r_7__28_, s_r_7__27_, s_r_7__26_, s_r_7__25_, s_r_7__24_, s_r_7__23_, s_r_7__22_, s_r_7__21_, s_r_7__20_, s_r_7__19_, s_r_7__18_, s_r_7__17_, s_r_7__16_, s_r_7__15_, s_r_7__14_, s_r_7__13_, s_r_7__12_, s_r_7__11_, s_r_7__10_, s_r_7__9_, s_r_7__8_, s_r_7__7_, s_r_7__6_, s_r_7__5_, s_r_7__4_, s_r_7__3_, s_r_7__2_, s_r_7__1_, s_r_7__0_ }),
    .c_i(c_r[7]),
    .prod_accum_i({ prod_accum_7__8_, prod_accum_7__7_, prod_accum_7__6_, prod_accum_7__5_, prod_accum_7__4_, prod_accum_7__3_, prod_accum_7__2_, prod_accum_7__1_, prod_accum_7__0_ }),
    .a_o(a_r[575:512]),
    .b_o(b_r[575:512]),
    .s_o({ s_r_8__63_, s_r_8__62_, s_r_8__61_, s_r_8__60_, s_r_8__59_, s_r_8__58_, s_r_8__57_, s_r_8__56_, s_r_8__55_, s_r_8__54_, s_r_8__53_, s_r_8__52_, s_r_8__51_, s_r_8__50_, s_r_8__49_, s_r_8__48_, s_r_8__47_, s_r_8__46_, s_r_8__45_, s_r_8__44_, s_r_8__43_, s_r_8__42_, s_r_8__41_, s_r_8__40_, s_r_8__39_, s_r_8__38_, s_r_8__37_, s_r_8__36_, s_r_8__35_, s_r_8__34_, s_r_8__33_, s_r_8__32_, s_r_8__31_, s_r_8__30_, s_r_8__29_, s_r_8__28_, s_r_8__27_, s_r_8__26_, s_r_8__25_, s_r_8__24_, s_r_8__23_, s_r_8__22_, s_r_8__21_, s_r_8__20_, s_r_8__19_, s_r_8__18_, s_r_8__17_, s_r_8__16_, s_r_8__15_, s_r_8__14_, s_r_8__13_, s_r_8__12_, s_r_8__11_, s_r_8__10_, s_r_8__9_, s_r_8__8_, s_r_8__7_, s_r_8__6_, s_r_8__5_, s_r_8__4_, s_r_8__3_, s_r_8__2_, s_r_8__1_, s_r_8__0_ }),
    .c_o(c_r[8]),
    .prod_accum_o({ prod_accum_8__9_, prod_accum_8__8_, prod_accum_8__7_, prod_accum_8__6_, prod_accum_8__5_, prod_accum_8__4_, prod_accum_8__3_, prod_accum_8__2_, prod_accum_8__1_, prod_accum_8__0_ })
  );


  bsg_mul_array_row_64_9_0
  genblk1_9__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[575:512]),
    .b_i(b_r[575:512]),
    .s_i({ s_r_8__63_, s_r_8__62_, s_r_8__61_, s_r_8__60_, s_r_8__59_, s_r_8__58_, s_r_8__57_, s_r_8__56_, s_r_8__55_, s_r_8__54_, s_r_8__53_, s_r_8__52_, s_r_8__51_, s_r_8__50_, s_r_8__49_, s_r_8__48_, s_r_8__47_, s_r_8__46_, s_r_8__45_, s_r_8__44_, s_r_8__43_, s_r_8__42_, s_r_8__41_, s_r_8__40_, s_r_8__39_, s_r_8__38_, s_r_8__37_, s_r_8__36_, s_r_8__35_, s_r_8__34_, s_r_8__33_, s_r_8__32_, s_r_8__31_, s_r_8__30_, s_r_8__29_, s_r_8__28_, s_r_8__27_, s_r_8__26_, s_r_8__25_, s_r_8__24_, s_r_8__23_, s_r_8__22_, s_r_8__21_, s_r_8__20_, s_r_8__19_, s_r_8__18_, s_r_8__17_, s_r_8__16_, s_r_8__15_, s_r_8__14_, s_r_8__13_, s_r_8__12_, s_r_8__11_, s_r_8__10_, s_r_8__9_, s_r_8__8_, s_r_8__7_, s_r_8__6_, s_r_8__5_, s_r_8__4_, s_r_8__3_, s_r_8__2_, s_r_8__1_, s_r_8__0_ }),
    .c_i(c_r[8]),
    .prod_accum_i({ prod_accum_8__9_, prod_accum_8__8_, prod_accum_8__7_, prod_accum_8__6_, prod_accum_8__5_, prod_accum_8__4_, prod_accum_8__3_, prod_accum_8__2_, prod_accum_8__1_, prod_accum_8__0_ }),
    .a_o(a_r[639:576]),
    .b_o(b_r[639:576]),
    .s_o({ s_r_9__63_, s_r_9__62_, s_r_9__61_, s_r_9__60_, s_r_9__59_, s_r_9__58_, s_r_9__57_, s_r_9__56_, s_r_9__55_, s_r_9__54_, s_r_9__53_, s_r_9__52_, s_r_9__51_, s_r_9__50_, s_r_9__49_, s_r_9__48_, s_r_9__47_, s_r_9__46_, s_r_9__45_, s_r_9__44_, s_r_9__43_, s_r_9__42_, s_r_9__41_, s_r_9__40_, s_r_9__39_, s_r_9__38_, s_r_9__37_, s_r_9__36_, s_r_9__35_, s_r_9__34_, s_r_9__33_, s_r_9__32_, s_r_9__31_, s_r_9__30_, s_r_9__29_, s_r_9__28_, s_r_9__27_, s_r_9__26_, s_r_9__25_, s_r_9__24_, s_r_9__23_, s_r_9__22_, s_r_9__21_, s_r_9__20_, s_r_9__19_, s_r_9__18_, s_r_9__17_, s_r_9__16_, s_r_9__15_, s_r_9__14_, s_r_9__13_, s_r_9__12_, s_r_9__11_, s_r_9__10_, s_r_9__9_, s_r_9__8_, s_r_9__7_, s_r_9__6_, s_r_9__5_, s_r_9__4_, s_r_9__3_, s_r_9__2_, s_r_9__1_, s_r_9__0_ }),
    .c_o(c_r[9]),
    .prod_accum_o({ prod_accum_9__10_, prod_accum_9__9_, prod_accum_9__8_, prod_accum_9__7_, prod_accum_9__6_, prod_accum_9__5_, prod_accum_9__4_, prod_accum_9__3_, prod_accum_9__2_, prod_accum_9__1_, prod_accum_9__0_ })
  );


  bsg_mul_array_row_64_10_0
  genblk1_10__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[639:576]),
    .b_i(b_r[639:576]),
    .s_i({ s_r_9__63_, s_r_9__62_, s_r_9__61_, s_r_9__60_, s_r_9__59_, s_r_9__58_, s_r_9__57_, s_r_9__56_, s_r_9__55_, s_r_9__54_, s_r_9__53_, s_r_9__52_, s_r_9__51_, s_r_9__50_, s_r_9__49_, s_r_9__48_, s_r_9__47_, s_r_9__46_, s_r_9__45_, s_r_9__44_, s_r_9__43_, s_r_9__42_, s_r_9__41_, s_r_9__40_, s_r_9__39_, s_r_9__38_, s_r_9__37_, s_r_9__36_, s_r_9__35_, s_r_9__34_, s_r_9__33_, s_r_9__32_, s_r_9__31_, s_r_9__30_, s_r_9__29_, s_r_9__28_, s_r_9__27_, s_r_9__26_, s_r_9__25_, s_r_9__24_, s_r_9__23_, s_r_9__22_, s_r_9__21_, s_r_9__20_, s_r_9__19_, s_r_9__18_, s_r_9__17_, s_r_9__16_, s_r_9__15_, s_r_9__14_, s_r_9__13_, s_r_9__12_, s_r_9__11_, s_r_9__10_, s_r_9__9_, s_r_9__8_, s_r_9__7_, s_r_9__6_, s_r_9__5_, s_r_9__4_, s_r_9__3_, s_r_9__2_, s_r_9__1_, s_r_9__0_ }),
    .c_i(c_r[9]),
    .prod_accum_i({ prod_accum_9__10_, prod_accum_9__9_, prod_accum_9__8_, prod_accum_9__7_, prod_accum_9__6_, prod_accum_9__5_, prod_accum_9__4_, prod_accum_9__3_, prod_accum_9__2_, prod_accum_9__1_, prod_accum_9__0_ }),
    .a_o(a_r[703:640]),
    .b_o(b_r[703:640]),
    .s_o({ s_r_10__63_, s_r_10__62_, s_r_10__61_, s_r_10__60_, s_r_10__59_, s_r_10__58_, s_r_10__57_, s_r_10__56_, s_r_10__55_, s_r_10__54_, s_r_10__53_, s_r_10__52_, s_r_10__51_, s_r_10__50_, s_r_10__49_, s_r_10__48_, s_r_10__47_, s_r_10__46_, s_r_10__45_, s_r_10__44_, s_r_10__43_, s_r_10__42_, s_r_10__41_, s_r_10__40_, s_r_10__39_, s_r_10__38_, s_r_10__37_, s_r_10__36_, s_r_10__35_, s_r_10__34_, s_r_10__33_, s_r_10__32_, s_r_10__31_, s_r_10__30_, s_r_10__29_, s_r_10__28_, s_r_10__27_, s_r_10__26_, s_r_10__25_, s_r_10__24_, s_r_10__23_, s_r_10__22_, s_r_10__21_, s_r_10__20_, s_r_10__19_, s_r_10__18_, s_r_10__17_, s_r_10__16_, s_r_10__15_, s_r_10__14_, s_r_10__13_, s_r_10__12_, s_r_10__11_, s_r_10__10_, s_r_10__9_, s_r_10__8_, s_r_10__7_, s_r_10__6_, s_r_10__5_, s_r_10__4_, s_r_10__3_, s_r_10__2_, s_r_10__1_, s_r_10__0_ }),
    .c_o(c_r[10]),
    .prod_accum_o({ prod_accum_10__11_, prod_accum_10__10_, prod_accum_10__9_, prod_accum_10__8_, prod_accum_10__7_, prod_accum_10__6_, prod_accum_10__5_, prod_accum_10__4_, prod_accum_10__3_, prod_accum_10__2_, prod_accum_10__1_, prod_accum_10__0_ })
  );


  bsg_mul_array_row_64_11_0
  genblk1_11__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[703:640]),
    .b_i(b_r[703:640]),
    .s_i({ s_r_10__63_, s_r_10__62_, s_r_10__61_, s_r_10__60_, s_r_10__59_, s_r_10__58_, s_r_10__57_, s_r_10__56_, s_r_10__55_, s_r_10__54_, s_r_10__53_, s_r_10__52_, s_r_10__51_, s_r_10__50_, s_r_10__49_, s_r_10__48_, s_r_10__47_, s_r_10__46_, s_r_10__45_, s_r_10__44_, s_r_10__43_, s_r_10__42_, s_r_10__41_, s_r_10__40_, s_r_10__39_, s_r_10__38_, s_r_10__37_, s_r_10__36_, s_r_10__35_, s_r_10__34_, s_r_10__33_, s_r_10__32_, s_r_10__31_, s_r_10__30_, s_r_10__29_, s_r_10__28_, s_r_10__27_, s_r_10__26_, s_r_10__25_, s_r_10__24_, s_r_10__23_, s_r_10__22_, s_r_10__21_, s_r_10__20_, s_r_10__19_, s_r_10__18_, s_r_10__17_, s_r_10__16_, s_r_10__15_, s_r_10__14_, s_r_10__13_, s_r_10__12_, s_r_10__11_, s_r_10__10_, s_r_10__9_, s_r_10__8_, s_r_10__7_, s_r_10__6_, s_r_10__5_, s_r_10__4_, s_r_10__3_, s_r_10__2_, s_r_10__1_, s_r_10__0_ }),
    .c_i(c_r[10]),
    .prod_accum_i({ prod_accum_10__11_, prod_accum_10__10_, prod_accum_10__9_, prod_accum_10__8_, prod_accum_10__7_, prod_accum_10__6_, prod_accum_10__5_, prod_accum_10__4_, prod_accum_10__3_, prod_accum_10__2_, prod_accum_10__1_, prod_accum_10__0_ }),
    .a_o(a_r[767:704]),
    .b_o(b_r[767:704]),
    .s_o({ s_r_11__63_, s_r_11__62_, s_r_11__61_, s_r_11__60_, s_r_11__59_, s_r_11__58_, s_r_11__57_, s_r_11__56_, s_r_11__55_, s_r_11__54_, s_r_11__53_, s_r_11__52_, s_r_11__51_, s_r_11__50_, s_r_11__49_, s_r_11__48_, s_r_11__47_, s_r_11__46_, s_r_11__45_, s_r_11__44_, s_r_11__43_, s_r_11__42_, s_r_11__41_, s_r_11__40_, s_r_11__39_, s_r_11__38_, s_r_11__37_, s_r_11__36_, s_r_11__35_, s_r_11__34_, s_r_11__33_, s_r_11__32_, s_r_11__31_, s_r_11__30_, s_r_11__29_, s_r_11__28_, s_r_11__27_, s_r_11__26_, s_r_11__25_, s_r_11__24_, s_r_11__23_, s_r_11__22_, s_r_11__21_, s_r_11__20_, s_r_11__19_, s_r_11__18_, s_r_11__17_, s_r_11__16_, s_r_11__15_, s_r_11__14_, s_r_11__13_, s_r_11__12_, s_r_11__11_, s_r_11__10_, s_r_11__9_, s_r_11__8_, s_r_11__7_, s_r_11__6_, s_r_11__5_, s_r_11__4_, s_r_11__3_, s_r_11__2_, s_r_11__1_, s_r_11__0_ }),
    .c_o(c_r[11]),
    .prod_accum_o({ prod_accum_11__12_, prod_accum_11__11_, prod_accum_11__10_, prod_accum_11__9_, prod_accum_11__8_, prod_accum_11__7_, prod_accum_11__6_, prod_accum_11__5_, prod_accum_11__4_, prod_accum_11__3_, prod_accum_11__2_, prod_accum_11__1_, prod_accum_11__0_ })
  );


  bsg_mul_array_row_64_12_0
  genblk1_12__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[767:704]),
    .b_i(b_r[767:704]),
    .s_i({ s_r_11__63_, s_r_11__62_, s_r_11__61_, s_r_11__60_, s_r_11__59_, s_r_11__58_, s_r_11__57_, s_r_11__56_, s_r_11__55_, s_r_11__54_, s_r_11__53_, s_r_11__52_, s_r_11__51_, s_r_11__50_, s_r_11__49_, s_r_11__48_, s_r_11__47_, s_r_11__46_, s_r_11__45_, s_r_11__44_, s_r_11__43_, s_r_11__42_, s_r_11__41_, s_r_11__40_, s_r_11__39_, s_r_11__38_, s_r_11__37_, s_r_11__36_, s_r_11__35_, s_r_11__34_, s_r_11__33_, s_r_11__32_, s_r_11__31_, s_r_11__30_, s_r_11__29_, s_r_11__28_, s_r_11__27_, s_r_11__26_, s_r_11__25_, s_r_11__24_, s_r_11__23_, s_r_11__22_, s_r_11__21_, s_r_11__20_, s_r_11__19_, s_r_11__18_, s_r_11__17_, s_r_11__16_, s_r_11__15_, s_r_11__14_, s_r_11__13_, s_r_11__12_, s_r_11__11_, s_r_11__10_, s_r_11__9_, s_r_11__8_, s_r_11__7_, s_r_11__6_, s_r_11__5_, s_r_11__4_, s_r_11__3_, s_r_11__2_, s_r_11__1_, s_r_11__0_ }),
    .c_i(c_r[11]),
    .prod_accum_i({ prod_accum_11__12_, prod_accum_11__11_, prod_accum_11__10_, prod_accum_11__9_, prod_accum_11__8_, prod_accum_11__7_, prod_accum_11__6_, prod_accum_11__5_, prod_accum_11__4_, prod_accum_11__3_, prod_accum_11__2_, prod_accum_11__1_, prod_accum_11__0_ }),
    .a_o(a_r[831:768]),
    .b_o(b_r[831:768]),
    .s_o({ s_r_12__63_, s_r_12__62_, s_r_12__61_, s_r_12__60_, s_r_12__59_, s_r_12__58_, s_r_12__57_, s_r_12__56_, s_r_12__55_, s_r_12__54_, s_r_12__53_, s_r_12__52_, s_r_12__51_, s_r_12__50_, s_r_12__49_, s_r_12__48_, s_r_12__47_, s_r_12__46_, s_r_12__45_, s_r_12__44_, s_r_12__43_, s_r_12__42_, s_r_12__41_, s_r_12__40_, s_r_12__39_, s_r_12__38_, s_r_12__37_, s_r_12__36_, s_r_12__35_, s_r_12__34_, s_r_12__33_, s_r_12__32_, s_r_12__31_, s_r_12__30_, s_r_12__29_, s_r_12__28_, s_r_12__27_, s_r_12__26_, s_r_12__25_, s_r_12__24_, s_r_12__23_, s_r_12__22_, s_r_12__21_, s_r_12__20_, s_r_12__19_, s_r_12__18_, s_r_12__17_, s_r_12__16_, s_r_12__15_, s_r_12__14_, s_r_12__13_, s_r_12__12_, s_r_12__11_, s_r_12__10_, s_r_12__9_, s_r_12__8_, s_r_12__7_, s_r_12__6_, s_r_12__5_, s_r_12__4_, s_r_12__3_, s_r_12__2_, s_r_12__1_, s_r_12__0_ }),
    .c_o(c_r[12]),
    .prod_accum_o({ prod_accum_12__13_, prod_accum_12__12_, prod_accum_12__11_, prod_accum_12__10_, prod_accum_12__9_, prod_accum_12__8_, prod_accum_12__7_, prod_accum_12__6_, prod_accum_12__5_, prod_accum_12__4_, prod_accum_12__3_, prod_accum_12__2_, prod_accum_12__1_, prod_accum_12__0_ })
  );


  bsg_mul_array_row_64_13_0
  genblk1_13__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[831:768]),
    .b_i(b_r[831:768]),
    .s_i({ s_r_12__63_, s_r_12__62_, s_r_12__61_, s_r_12__60_, s_r_12__59_, s_r_12__58_, s_r_12__57_, s_r_12__56_, s_r_12__55_, s_r_12__54_, s_r_12__53_, s_r_12__52_, s_r_12__51_, s_r_12__50_, s_r_12__49_, s_r_12__48_, s_r_12__47_, s_r_12__46_, s_r_12__45_, s_r_12__44_, s_r_12__43_, s_r_12__42_, s_r_12__41_, s_r_12__40_, s_r_12__39_, s_r_12__38_, s_r_12__37_, s_r_12__36_, s_r_12__35_, s_r_12__34_, s_r_12__33_, s_r_12__32_, s_r_12__31_, s_r_12__30_, s_r_12__29_, s_r_12__28_, s_r_12__27_, s_r_12__26_, s_r_12__25_, s_r_12__24_, s_r_12__23_, s_r_12__22_, s_r_12__21_, s_r_12__20_, s_r_12__19_, s_r_12__18_, s_r_12__17_, s_r_12__16_, s_r_12__15_, s_r_12__14_, s_r_12__13_, s_r_12__12_, s_r_12__11_, s_r_12__10_, s_r_12__9_, s_r_12__8_, s_r_12__7_, s_r_12__6_, s_r_12__5_, s_r_12__4_, s_r_12__3_, s_r_12__2_, s_r_12__1_, s_r_12__0_ }),
    .c_i(c_r[12]),
    .prod_accum_i({ prod_accum_12__13_, prod_accum_12__12_, prod_accum_12__11_, prod_accum_12__10_, prod_accum_12__9_, prod_accum_12__8_, prod_accum_12__7_, prod_accum_12__6_, prod_accum_12__5_, prod_accum_12__4_, prod_accum_12__3_, prod_accum_12__2_, prod_accum_12__1_, prod_accum_12__0_ }),
    .a_o(a_r[895:832]),
    .b_o(b_r[895:832]),
    .s_o({ s_r_13__63_, s_r_13__62_, s_r_13__61_, s_r_13__60_, s_r_13__59_, s_r_13__58_, s_r_13__57_, s_r_13__56_, s_r_13__55_, s_r_13__54_, s_r_13__53_, s_r_13__52_, s_r_13__51_, s_r_13__50_, s_r_13__49_, s_r_13__48_, s_r_13__47_, s_r_13__46_, s_r_13__45_, s_r_13__44_, s_r_13__43_, s_r_13__42_, s_r_13__41_, s_r_13__40_, s_r_13__39_, s_r_13__38_, s_r_13__37_, s_r_13__36_, s_r_13__35_, s_r_13__34_, s_r_13__33_, s_r_13__32_, s_r_13__31_, s_r_13__30_, s_r_13__29_, s_r_13__28_, s_r_13__27_, s_r_13__26_, s_r_13__25_, s_r_13__24_, s_r_13__23_, s_r_13__22_, s_r_13__21_, s_r_13__20_, s_r_13__19_, s_r_13__18_, s_r_13__17_, s_r_13__16_, s_r_13__15_, s_r_13__14_, s_r_13__13_, s_r_13__12_, s_r_13__11_, s_r_13__10_, s_r_13__9_, s_r_13__8_, s_r_13__7_, s_r_13__6_, s_r_13__5_, s_r_13__4_, s_r_13__3_, s_r_13__2_, s_r_13__1_, s_r_13__0_ }),
    .c_o(c_r[13]),
    .prod_accum_o({ prod_accum_13__14_, prod_accum_13__13_, prod_accum_13__12_, prod_accum_13__11_, prod_accum_13__10_, prod_accum_13__9_, prod_accum_13__8_, prod_accum_13__7_, prod_accum_13__6_, prod_accum_13__5_, prod_accum_13__4_, prod_accum_13__3_, prod_accum_13__2_, prod_accum_13__1_, prod_accum_13__0_ })
  );


  bsg_mul_array_row_64_14_0
  genblk1_14__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[895:832]),
    .b_i(b_r[895:832]),
    .s_i({ s_r_13__63_, s_r_13__62_, s_r_13__61_, s_r_13__60_, s_r_13__59_, s_r_13__58_, s_r_13__57_, s_r_13__56_, s_r_13__55_, s_r_13__54_, s_r_13__53_, s_r_13__52_, s_r_13__51_, s_r_13__50_, s_r_13__49_, s_r_13__48_, s_r_13__47_, s_r_13__46_, s_r_13__45_, s_r_13__44_, s_r_13__43_, s_r_13__42_, s_r_13__41_, s_r_13__40_, s_r_13__39_, s_r_13__38_, s_r_13__37_, s_r_13__36_, s_r_13__35_, s_r_13__34_, s_r_13__33_, s_r_13__32_, s_r_13__31_, s_r_13__30_, s_r_13__29_, s_r_13__28_, s_r_13__27_, s_r_13__26_, s_r_13__25_, s_r_13__24_, s_r_13__23_, s_r_13__22_, s_r_13__21_, s_r_13__20_, s_r_13__19_, s_r_13__18_, s_r_13__17_, s_r_13__16_, s_r_13__15_, s_r_13__14_, s_r_13__13_, s_r_13__12_, s_r_13__11_, s_r_13__10_, s_r_13__9_, s_r_13__8_, s_r_13__7_, s_r_13__6_, s_r_13__5_, s_r_13__4_, s_r_13__3_, s_r_13__2_, s_r_13__1_, s_r_13__0_ }),
    .c_i(c_r[13]),
    .prod_accum_i({ prod_accum_13__14_, prod_accum_13__13_, prod_accum_13__12_, prod_accum_13__11_, prod_accum_13__10_, prod_accum_13__9_, prod_accum_13__8_, prod_accum_13__7_, prod_accum_13__6_, prod_accum_13__5_, prod_accum_13__4_, prod_accum_13__3_, prod_accum_13__2_, prod_accum_13__1_, prod_accum_13__0_ }),
    .a_o(a_r[959:896]),
    .b_o(b_r[959:896]),
    .s_o({ s_r_14__63_, s_r_14__62_, s_r_14__61_, s_r_14__60_, s_r_14__59_, s_r_14__58_, s_r_14__57_, s_r_14__56_, s_r_14__55_, s_r_14__54_, s_r_14__53_, s_r_14__52_, s_r_14__51_, s_r_14__50_, s_r_14__49_, s_r_14__48_, s_r_14__47_, s_r_14__46_, s_r_14__45_, s_r_14__44_, s_r_14__43_, s_r_14__42_, s_r_14__41_, s_r_14__40_, s_r_14__39_, s_r_14__38_, s_r_14__37_, s_r_14__36_, s_r_14__35_, s_r_14__34_, s_r_14__33_, s_r_14__32_, s_r_14__31_, s_r_14__30_, s_r_14__29_, s_r_14__28_, s_r_14__27_, s_r_14__26_, s_r_14__25_, s_r_14__24_, s_r_14__23_, s_r_14__22_, s_r_14__21_, s_r_14__20_, s_r_14__19_, s_r_14__18_, s_r_14__17_, s_r_14__16_, s_r_14__15_, s_r_14__14_, s_r_14__13_, s_r_14__12_, s_r_14__11_, s_r_14__10_, s_r_14__9_, s_r_14__8_, s_r_14__7_, s_r_14__6_, s_r_14__5_, s_r_14__4_, s_r_14__3_, s_r_14__2_, s_r_14__1_, s_r_14__0_ }),
    .c_o(c_r[14]),
    .prod_accum_o({ prod_accum_14__15_, prod_accum_14__14_, prod_accum_14__13_, prod_accum_14__12_, prod_accum_14__11_, prod_accum_14__10_, prod_accum_14__9_, prod_accum_14__8_, prod_accum_14__7_, prod_accum_14__6_, prod_accum_14__5_, prod_accum_14__4_, prod_accum_14__3_, prod_accum_14__2_, prod_accum_14__1_, prod_accum_14__0_ })
  );


  bsg_mul_array_row_64_15_1
  genblk1_15__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[959:896]),
    .b_i(b_r[959:896]),
    .s_i({ s_r_14__63_, s_r_14__62_, s_r_14__61_, s_r_14__60_, s_r_14__59_, s_r_14__58_, s_r_14__57_, s_r_14__56_, s_r_14__55_, s_r_14__54_, s_r_14__53_, s_r_14__52_, s_r_14__51_, s_r_14__50_, s_r_14__49_, s_r_14__48_, s_r_14__47_, s_r_14__46_, s_r_14__45_, s_r_14__44_, s_r_14__43_, s_r_14__42_, s_r_14__41_, s_r_14__40_, s_r_14__39_, s_r_14__38_, s_r_14__37_, s_r_14__36_, s_r_14__35_, s_r_14__34_, s_r_14__33_, s_r_14__32_, s_r_14__31_, s_r_14__30_, s_r_14__29_, s_r_14__28_, s_r_14__27_, s_r_14__26_, s_r_14__25_, s_r_14__24_, s_r_14__23_, s_r_14__22_, s_r_14__21_, s_r_14__20_, s_r_14__19_, s_r_14__18_, s_r_14__17_, s_r_14__16_, s_r_14__15_, s_r_14__14_, s_r_14__13_, s_r_14__12_, s_r_14__11_, s_r_14__10_, s_r_14__9_, s_r_14__8_, s_r_14__7_, s_r_14__6_, s_r_14__5_, s_r_14__4_, s_r_14__3_, s_r_14__2_, s_r_14__1_, s_r_14__0_ }),
    .c_i(c_r[14]),
    .prod_accum_i({ prod_accum_14__15_, prod_accum_14__14_, prod_accum_14__13_, prod_accum_14__12_, prod_accum_14__11_, prod_accum_14__10_, prod_accum_14__9_, prod_accum_14__8_, prod_accum_14__7_, prod_accum_14__6_, prod_accum_14__5_, prod_accum_14__4_, prod_accum_14__3_, prod_accum_14__2_, prod_accum_14__1_, prod_accum_14__0_ }),
    .a_o(a_r[1023:960]),
    .b_o(b_r[1023:960]),
    .s_o({ s_r_15__63_, s_r_15__62_, s_r_15__61_, s_r_15__60_, s_r_15__59_, s_r_15__58_, s_r_15__57_, s_r_15__56_, s_r_15__55_, s_r_15__54_, s_r_15__53_, s_r_15__52_, s_r_15__51_, s_r_15__50_, s_r_15__49_, s_r_15__48_, s_r_15__47_, s_r_15__46_, s_r_15__45_, s_r_15__44_, s_r_15__43_, s_r_15__42_, s_r_15__41_, s_r_15__40_, s_r_15__39_, s_r_15__38_, s_r_15__37_, s_r_15__36_, s_r_15__35_, s_r_15__34_, s_r_15__33_, s_r_15__32_, s_r_15__31_, s_r_15__30_, s_r_15__29_, s_r_15__28_, s_r_15__27_, s_r_15__26_, s_r_15__25_, s_r_15__24_, s_r_15__23_, s_r_15__22_, s_r_15__21_, s_r_15__20_, s_r_15__19_, s_r_15__18_, s_r_15__17_, s_r_15__16_, s_r_15__15_, s_r_15__14_, s_r_15__13_, s_r_15__12_, s_r_15__11_, s_r_15__10_, s_r_15__9_, s_r_15__8_, s_r_15__7_, s_r_15__6_, s_r_15__5_, s_r_15__4_, s_r_15__3_, s_r_15__2_, s_r_15__1_, s_r_15__0_ }),
    .c_o(c_r[15]),
    .prod_accum_o({ prod_accum_15__16_, prod_accum_15__15_, prod_accum_15__14_, prod_accum_15__13_, prod_accum_15__12_, prod_accum_15__11_, prod_accum_15__10_, prod_accum_15__9_, prod_accum_15__8_, prod_accum_15__7_, prod_accum_15__6_, prod_accum_15__5_, prod_accum_15__4_, prod_accum_15__3_, prod_accum_15__2_, prod_accum_15__1_, prod_accum_15__0_ })
  );


  bsg_mul_array_row_64_16_0
  genblk1_16__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1023:960]),
    .b_i(b_r[1023:960]),
    .s_i({ s_r_15__63_, s_r_15__62_, s_r_15__61_, s_r_15__60_, s_r_15__59_, s_r_15__58_, s_r_15__57_, s_r_15__56_, s_r_15__55_, s_r_15__54_, s_r_15__53_, s_r_15__52_, s_r_15__51_, s_r_15__50_, s_r_15__49_, s_r_15__48_, s_r_15__47_, s_r_15__46_, s_r_15__45_, s_r_15__44_, s_r_15__43_, s_r_15__42_, s_r_15__41_, s_r_15__40_, s_r_15__39_, s_r_15__38_, s_r_15__37_, s_r_15__36_, s_r_15__35_, s_r_15__34_, s_r_15__33_, s_r_15__32_, s_r_15__31_, s_r_15__30_, s_r_15__29_, s_r_15__28_, s_r_15__27_, s_r_15__26_, s_r_15__25_, s_r_15__24_, s_r_15__23_, s_r_15__22_, s_r_15__21_, s_r_15__20_, s_r_15__19_, s_r_15__18_, s_r_15__17_, s_r_15__16_, s_r_15__15_, s_r_15__14_, s_r_15__13_, s_r_15__12_, s_r_15__11_, s_r_15__10_, s_r_15__9_, s_r_15__8_, s_r_15__7_, s_r_15__6_, s_r_15__5_, s_r_15__4_, s_r_15__3_, s_r_15__2_, s_r_15__1_, s_r_15__0_ }),
    .c_i(c_r[15]),
    .prod_accum_i({ prod_accum_15__16_, prod_accum_15__15_, prod_accum_15__14_, prod_accum_15__13_, prod_accum_15__12_, prod_accum_15__11_, prod_accum_15__10_, prod_accum_15__9_, prod_accum_15__8_, prod_accum_15__7_, prod_accum_15__6_, prod_accum_15__5_, prod_accum_15__4_, prod_accum_15__3_, prod_accum_15__2_, prod_accum_15__1_, prod_accum_15__0_ }),
    .a_o(a_r[1087:1024]),
    .b_o(b_r[1087:1024]),
    .s_o({ s_r_16__63_, s_r_16__62_, s_r_16__61_, s_r_16__60_, s_r_16__59_, s_r_16__58_, s_r_16__57_, s_r_16__56_, s_r_16__55_, s_r_16__54_, s_r_16__53_, s_r_16__52_, s_r_16__51_, s_r_16__50_, s_r_16__49_, s_r_16__48_, s_r_16__47_, s_r_16__46_, s_r_16__45_, s_r_16__44_, s_r_16__43_, s_r_16__42_, s_r_16__41_, s_r_16__40_, s_r_16__39_, s_r_16__38_, s_r_16__37_, s_r_16__36_, s_r_16__35_, s_r_16__34_, s_r_16__33_, s_r_16__32_, s_r_16__31_, s_r_16__30_, s_r_16__29_, s_r_16__28_, s_r_16__27_, s_r_16__26_, s_r_16__25_, s_r_16__24_, s_r_16__23_, s_r_16__22_, s_r_16__21_, s_r_16__20_, s_r_16__19_, s_r_16__18_, s_r_16__17_, s_r_16__16_, s_r_16__15_, s_r_16__14_, s_r_16__13_, s_r_16__12_, s_r_16__11_, s_r_16__10_, s_r_16__9_, s_r_16__8_, s_r_16__7_, s_r_16__6_, s_r_16__5_, s_r_16__4_, s_r_16__3_, s_r_16__2_, s_r_16__1_, s_r_16__0_ }),
    .c_o(c_r[16]),
    .prod_accum_o({ prod_accum_16__17_, prod_accum_16__16_, prod_accum_16__15_, prod_accum_16__14_, prod_accum_16__13_, prod_accum_16__12_, prod_accum_16__11_, prod_accum_16__10_, prod_accum_16__9_, prod_accum_16__8_, prod_accum_16__7_, prod_accum_16__6_, prod_accum_16__5_, prod_accum_16__4_, prod_accum_16__3_, prod_accum_16__2_, prod_accum_16__1_, prod_accum_16__0_ })
  );


  bsg_mul_array_row_64_17_0
  genblk1_17__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1087:1024]),
    .b_i(b_r[1087:1024]),
    .s_i({ s_r_16__63_, s_r_16__62_, s_r_16__61_, s_r_16__60_, s_r_16__59_, s_r_16__58_, s_r_16__57_, s_r_16__56_, s_r_16__55_, s_r_16__54_, s_r_16__53_, s_r_16__52_, s_r_16__51_, s_r_16__50_, s_r_16__49_, s_r_16__48_, s_r_16__47_, s_r_16__46_, s_r_16__45_, s_r_16__44_, s_r_16__43_, s_r_16__42_, s_r_16__41_, s_r_16__40_, s_r_16__39_, s_r_16__38_, s_r_16__37_, s_r_16__36_, s_r_16__35_, s_r_16__34_, s_r_16__33_, s_r_16__32_, s_r_16__31_, s_r_16__30_, s_r_16__29_, s_r_16__28_, s_r_16__27_, s_r_16__26_, s_r_16__25_, s_r_16__24_, s_r_16__23_, s_r_16__22_, s_r_16__21_, s_r_16__20_, s_r_16__19_, s_r_16__18_, s_r_16__17_, s_r_16__16_, s_r_16__15_, s_r_16__14_, s_r_16__13_, s_r_16__12_, s_r_16__11_, s_r_16__10_, s_r_16__9_, s_r_16__8_, s_r_16__7_, s_r_16__6_, s_r_16__5_, s_r_16__4_, s_r_16__3_, s_r_16__2_, s_r_16__1_, s_r_16__0_ }),
    .c_i(c_r[16]),
    .prod_accum_i({ prod_accum_16__17_, prod_accum_16__16_, prod_accum_16__15_, prod_accum_16__14_, prod_accum_16__13_, prod_accum_16__12_, prod_accum_16__11_, prod_accum_16__10_, prod_accum_16__9_, prod_accum_16__8_, prod_accum_16__7_, prod_accum_16__6_, prod_accum_16__5_, prod_accum_16__4_, prod_accum_16__3_, prod_accum_16__2_, prod_accum_16__1_, prod_accum_16__0_ }),
    .a_o(a_r[1151:1088]),
    .b_o(b_r[1151:1088]),
    .s_o({ s_r_17__63_, s_r_17__62_, s_r_17__61_, s_r_17__60_, s_r_17__59_, s_r_17__58_, s_r_17__57_, s_r_17__56_, s_r_17__55_, s_r_17__54_, s_r_17__53_, s_r_17__52_, s_r_17__51_, s_r_17__50_, s_r_17__49_, s_r_17__48_, s_r_17__47_, s_r_17__46_, s_r_17__45_, s_r_17__44_, s_r_17__43_, s_r_17__42_, s_r_17__41_, s_r_17__40_, s_r_17__39_, s_r_17__38_, s_r_17__37_, s_r_17__36_, s_r_17__35_, s_r_17__34_, s_r_17__33_, s_r_17__32_, s_r_17__31_, s_r_17__30_, s_r_17__29_, s_r_17__28_, s_r_17__27_, s_r_17__26_, s_r_17__25_, s_r_17__24_, s_r_17__23_, s_r_17__22_, s_r_17__21_, s_r_17__20_, s_r_17__19_, s_r_17__18_, s_r_17__17_, s_r_17__16_, s_r_17__15_, s_r_17__14_, s_r_17__13_, s_r_17__12_, s_r_17__11_, s_r_17__10_, s_r_17__9_, s_r_17__8_, s_r_17__7_, s_r_17__6_, s_r_17__5_, s_r_17__4_, s_r_17__3_, s_r_17__2_, s_r_17__1_, s_r_17__0_ }),
    .c_o(c_r[17]),
    .prod_accum_o({ prod_accum_17__18_, prod_accum_17__17_, prod_accum_17__16_, prod_accum_17__15_, prod_accum_17__14_, prod_accum_17__13_, prod_accum_17__12_, prod_accum_17__11_, prod_accum_17__10_, prod_accum_17__9_, prod_accum_17__8_, prod_accum_17__7_, prod_accum_17__6_, prod_accum_17__5_, prod_accum_17__4_, prod_accum_17__3_, prod_accum_17__2_, prod_accum_17__1_, prod_accum_17__0_ })
  );


  bsg_mul_array_row_64_18_0
  genblk1_18__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1151:1088]),
    .b_i(b_r[1151:1088]),
    .s_i({ s_r_17__63_, s_r_17__62_, s_r_17__61_, s_r_17__60_, s_r_17__59_, s_r_17__58_, s_r_17__57_, s_r_17__56_, s_r_17__55_, s_r_17__54_, s_r_17__53_, s_r_17__52_, s_r_17__51_, s_r_17__50_, s_r_17__49_, s_r_17__48_, s_r_17__47_, s_r_17__46_, s_r_17__45_, s_r_17__44_, s_r_17__43_, s_r_17__42_, s_r_17__41_, s_r_17__40_, s_r_17__39_, s_r_17__38_, s_r_17__37_, s_r_17__36_, s_r_17__35_, s_r_17__34_, s_r_17__33_, s_r_17__32_, s_r_17__31_, s_r_17__30_, s_r_17__29_, s_r_17__28_, s_r_17__27_, s_r_17__26_, s_r_17__25_, s_r_17__24_, s_r_17__23_, s_r_17__22_, s_r_17__21_, s_r_17__20_, s_r_17__19_, s_r_17__18_, s_r_17__17_, s_r_17__16_, s_r_17__15_, s_r_17__14_, s_r_17__13_, s_r_17__12_, s_r_17__11_, s_r_17__10_, s_r_17__9_, s_r_17__8_, s_r_17__7_, s_r_17__6_, s_r_17__5_, s_r_17__4_, s_r_17__3_, s_r_17__2_, s_r_17__1_, s_r_17__0_ }),
    .c_i(c_r[17]),
    .prod_accum_i({ prod_accum_17__18_, prod_accum_17__17_, prod_accum_17__16_, prod_accum_17__15_, prod_accum_17__14_, prod_accum_17__13_, prod_accum_17__12_, prod_accum_17__11_, prod_accum_17__10_, prod_accum_17__9_, prod_accum_17__8_, prod_accum_17__7_, prod_accum_17__6_, prod_accum_17__5_, prod_accum_17__4_, prod_accum_17__3_, prod_accum_17__2_, prod_accum_17__1_, prod_accum_17__0_ }),
    .a_o(a_r[1215:1152]),
    .b_o(b_r[1215:1152]),
    .s_o({ s_r_18__63_, s_r_18__62_, s_r_18__61_, s_r_18__60_, s_r_18__59_, s_r_18__58_, s_r_18__57_, s_r_18__56_, s_r_18__55_, s_r_18__54_, s_r_18__53_, s_r_18__52_, s_r_18__51_, s_r_18__50_, s_r_18__49_, s_r_18__48_, s_r_18__47_, s_r_18__46_, s_r_18__45_, s_r_18__44_, s_r_18__43_, s_r_18__42_, s_r_18__41_, s_r_18__40_, s_r_18__39_, s_r_18__38_, s_r_18__37_, s_r_18__36_, s_r_18__35_, s_r_18__34_, s_r_18__33_, s_r_18__32_, s_r_18__31_, s_r_18__30_, s_r_18__29_, s_r_18__28_, s_r_18__27_, s_r_18__26_, s_r_18__25_, s_r_18__24_, s_r_18__23_, s_r_18__22_, s_r_18__21_, s_r_18__20_, s_r_18__19_, s_r_18__18_, s_r_18__17_, s_r_18__16_, s_r_18__15_, s_r_18__14_, s_r_18__13_, s_r_18__12_, s_r_18__11_, s_r_18__10_, s_r_18__9_, s_r_18__8_, s_r_18__7_, s_r_18__6_, s_r_18__5_, s_r_18__4_, s_r_18__3_, s_r_18__2_, s_r_18__1_, s_r_18__0_ }),
    .c_o(c_r[18]),
    .prod_accum_o({ prod_accum_18__19_, prod_accum_18__18_, prod_accum_18__17_, prod_accum_18__16_, prod_accum_18__15_, prod_accum_18__14_, prod_accum_18__13_, prod_accum_18__12_, prod_accum_18__11_, prod_accum_18__10_, prod_accum_18__9_, prod_accum_18__8_, prod_accum_18__7_, prod_accum_18__6_, prod_accum_18__5_, prod_accum_18__4_, prod_accum_18__3_, prod_accum_18__2_, prod_accum_18__1_, prod_accum_18__0_ })
  );


  bsg_mul_array_row_64_19_0
  genblk1_19__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1215:1152]),
    .b_i(b_r[1215:1152]),
    .s_i({ s_r_18__63_, s_r_18__62_, s_r_18__61_, s_r_18__60_, s_r_18__59_, s_r_18__58_, s_r_18__57_, s_r_18__56_, s_r_18__55_, s_r_18__54_, s_r_18__53_, s_r_18__52_, s_r_18__51_, s_r_18__50_, s_r_18__49_, s_r_18__48_, s_r_18__47_, s_r_18__46_, s_r_18__45_, s_r_18__44_, s_r_18__43_, s_r_18__42_, s_r_18__41_, s_r_18__40_, s_r_18__39_, s_r_18__38_, s_r_18__37_, s_r_18__36_, s_r_18__35_, s_r_18__34_, s_r_18__33_, s_r_18__32_, s_r_18__31_, s_r_18__30_, s_r_18__29_, s_r_18__28_, s_r_18__27_, s_r_18__26_, s_r_18__25_, s_r_18__24_, s_r_18__23_, s_r_18__22_, s_r_18__21_, s_r_18__20_, s_r_18__19_, s_r_18__18_, s_r_18__17_, s_r_18__16_, s_r_18__15_, s_r_18__14_, s_r_18__13_, s_r_18__12_, s_r_18__11_, s_r_18__10_, s_r_18__9_, s_r_18__8_, s_r_18__7_, s_r_18__6_, s_r_18__5_, s_r_18__4_, s_r_18__3_, s_r_18__2_, s_r_18__1_, s_r_18__0_ }),
    .c_i(c_r[18]),
    .prod_accum_i({ prod_accum_18__19_, prod_accum_18__18_, prod_accum_18__17_, prod_accum_18__16_, prod_accum_18__15_, prod_accum_18__14_, prod_accum_18__13_, prod_accum_18__12_, prod_accum_18__11_, prod_accum_18__10_, prod_accum_18__9_, prod_accum_18__8_, prod_accum_18__7_, prod_accum_18__6_, prod_accum_18__5_, prod_accum_18__4_, prod_accum_18__3_, prod_accum_18__2_, prod_accum_18__1_, prod_accum_18__0_ }),
    .a_o(a_r[1279:1216]),
    .b_o(b_r[1279:1216]),
    .s_o({ s_r_19__63_, s_r_19__62_, s_r_19__61_, s_r_19__60_, s_r_19__59_, s_r_19__58_, s_r_19__57_, s_r_19__56_, s_r_19__55_, s_r_19__54_, s_r_19__53_, s_r_19__52_, s_r_19__51_, s_r_19__50_, s_r_19__49_, s_r_19__48_, s_r_19__47_, s_r_19__46_, s_r_19__45_, s_r_19__44_, s_r_19__43_, s_r_19__42_, s_r_19__41_, s_r_19__40_, s_r_19__39_, s_r_19__38_, s_r_19__37_, s_r_19__36_, s_r_19__35_, s_r_19__34_, s_r_19__33_, s_r_19__32_, s_r_19__31_, s_r_19__30_, s_r_19__29_, s_r_19__28_, s_r_19__27_, s_r_19__26_, s_r_19__25_, s_r_19__24_, s_r_19__23_, s_r_19__22_, s_r_19__21_, s_r_19__20_, s_r_19__19_, s_r_19__18_, s_r_19__17_, s_r_19__16_, s_r_19__15_, s_r_19__14_, s_r_19__13_, s_r_19__12_, s_r_19__11_, s_r_19__10_, s_r_19__9_, s_r_19__8_, s_r_19__7_, s_r_19__6_, s_r_19__5_, s_r_19__4_, s_r_19__3_, s_r_19__2_, s_r_19__1_, s_r_19__0_ }),
    .c_o(c_r[19]),
    .prod_accum_o({ prod_accum_19__20_, prod_accum_19__19_, prod_accum_19__18_, prod_accum_19__17_, prod_accum_19__16_, prod_accum_19__15_, prod_accum_19__14_, prod_accum_19__13_, prod_accum_19__12_, prod_accum_19__11_, prod_accum_19__10_, prod_accum_19__9_, prod_accum_19__8_, prod_accum_19__7_, prod_accum_19__6_, prod_accum_19__5_, prod_accum_19__4_, prod_accum_19__3_, prod_accum_19__2_, prod_accum_19__1_, prod_accum_19__0_ })
  );


  bsg_mul_array_row_64_20_0
  genblk1_20__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1279:1216]),
    .b_i(b_r[1279:1216]),
    .s_i({ s_r_19__63_, s_r_19__62_, s_r_19__61_, s_r_19__60_, s_r_19__59_, s_r_19__58_, s_r_19__57_, s_r_19__56_, s_r_19__55_, s_r_19__54_, s_r_19__53_, s_r_19__52_, s_r_19__51_, s_r_19__50_, s_r_19__49_, s_r_19__48_, s_r_19__47_, s_r_19__46_, s_r_19__45_, s_r_19__44_, s_r_19__43_, s_r_19__42_, s_r_19__41_, s_r_19__40_, s_r_19__39_, s_r_19__38_, s_r_19__37_, s_r_19__36_, s_r_19__35_, s_r_19__34_, s_r_19__33_, s_r_19__32_, s_r_19__31_, s_r_19__30_, s_r_19__29_, s_r_19__28_, s_r_19__27_, s_r_19__26_, s_r_19__25_, s_r_19__24_, s_r_19__23_, s_r_19__22_, s_r_19__21_, s_r_19__20_, s_r_19__19_, s_r_19__18_, s_r_19__17_, s_r_19__16_, s_r_19__15_, s_r_19__14_, s_r_19__13_, s_r_19__12_, s_r_19__11_, s_r_19__10_, s_r_19__9_, s_r_19__8_, s_r_19__7_, s_r_19__6_, s_r_19__5_, s_r_19__4_, s_r_19__3_, s_r_19__2_, s_r_19__1_, s_r_19__0_ }),
    .c_i(c_r[19]),
    .prod_accum_i({ prod_accum_19__20_, prod_accum_19__19_, prod_accum_19__18_, prod_accum_19__17_, prod_accum_19__16_, prod_accum_19__15_, prod_accum_19__14_, prod_accum_19__13_, prod_accum_19__12_, prod_accum_19__11_, prod_accum_19__10_, prod_accum_19__9_, prod_accum_19__8_, prod_accum_19__7_, prod_accum_19__6_, prod_accum_19__5_, prod_accum_19__4_, prod_accum_19__3_, prod_accum_19__2_, prod_accum_19__1_, prod_accum_19__0_ }),
    .a_o(a_r[1343:1280]),
    .b_o(b_r[1343:1280]),
    .s_o({ s_r_20__63_, s_r_20__62_, s_r_20__61_, s_r_20__60_, s_r_20__59_, s_r_20__58_, s_r_20__57_, s_r_20__56_, s_r_20__55_, s_r_20__54_, s_r_20__53_, s_r_20__52_, s_r_20__51_, s_r_20__50_, s_r_20__49_, s_r_20__48_, s_r_20__47_, s_r_20__46_, s_r_20__45_, s_r_20__44_, s_r_20__43_, s_r_20__42_, s_r_20__41_, s_r_20__40_, s_r_20__39_, s_r_20__38_, s_r_20__37_, s_r_20__36_, s_r_20__35_, s_r_20__34_, s_r_20__33_, s_r_20__32_, s_r_20__31_, s_r_20__30_, s_r_20__29_, s_r_20__28_, s_r_20__27_, s_r_20__26_, s_r_20__25_, s_r_20__24_, s_r_20__23_, s_r_20__22_, s_r_20__21_, s_r_20__20_, s_r_20__19_, s_r_20__18_, s_r_20__17_, s_r_20__16_, s_r_20__15_, s_r_20__14_, s_r_20__13_, s_r_20__12_, s_r_20__11_, s_r_20__10_, s_r_20__9_, s_r_20__8_, s_r_20__7_, s_r_20__6_, s_r_20__5_, s_r_20__4_, s_r_20__3_, s_r_20__2_, s_r_20__1_, s_r_20__0_ }),
    .c_o(c_r[20]),
    .prod_accum_o({ prod_accum_20__21_, prod_accum_20__20_, prod_accum_20__19_, prod_accum_20__18_, prod_accum_20__17_, prod_accum_20__16_, prod_accum_20__15_, prod_accum_20__14_, prod_accum_20__13_, prod_accum_20__12_, prod_accum_20__11_, prod_accum_20__10_, prod_accum_20__9_, prod_accum_20__8_, prod_accum_20__7_, prod_accum_20__6_, prod_accum_20__5_, prod_accum_20__4_, prod_accum_20__3_, prod_accum_20__2_, prod_accum_20__1_, prod_accum_20__0_ })
  );


  bsg_mul_array_row_64_21_0
  genblk1_21__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1343:1280]),
    .b_i(b_r[1343:1280]),
    .s_i({ s_r_20__63_, s_r_20__62_, s_r_20__61_, s_r_20__60_, s_r_20__59_, s_r_20__58_, s_r_20__57_, s_r_20__56_, s_r_20__55_, s_r_20__54_, s_r_20__53_, s_r_20__52_, s_r_20__51_, s_r_20__50_, s_r_20__49_, s_r_20__48_, s_r_20__47_, s_r_20__46_, s_r_20__45_, s_r_20__44_, s_r_20__43_, s_r_20__42_, s_r_20__41_, s_r_20__40_, s_r_20__39_, s_r_20__38_, s_r_20__37_, s_r_20__36_, s_r_20__35_, s_r_20__34_, s_r_20__33_, s_r_20__32_, s_r_20__31_, s_r_20__30_, s_r_20__29_, s_r_20__28_, s_r_20__27_, s_r_20__26_, s_r_20__25_, s_r_20__24_, s_r_20__23_, s_r_20__22_, s_r_20__21_, s_r_20__20_, s_r_20__19_, s_r_20__18_, s_r_20__17_, s_r_20__16_, s_r_20__15_, s_r_20__14_, s_r_20__13_, s_r_20__12_, s_r_20__11_, s_r_20__10_, s_r_20__9_, s_r_20__8_, s_r_20__7_, s_r_20__6_, s_r_20__5_, s_r_20__4_, s_r_20__3_, s_r_20__2_, s_r_20__1_, s_r_20__0_ }),
    .c_i(c_r[20]),
    .prod_accum_i({ prod_accum_20__21_, prod_accum_20__20_, prod_accum_20__19_, prod_accum_20__18_, prod_accum_20__17_, prod_accum_20__16_, prod_accum_20__15_, prod_accum_20__14_, prod_accum_20__13_, prod_accum_20__12_, prod_accum_20__11_, prod_accum_20__10_, prod_accum_20__9_, prod_accum_20__8_, prod_accum_20__7_, prod_accum_20__6_, prod_accum_20__5_, prod_accum_20__4_, prod_accum_20__3_, prod_accum_20__2_, prod_accum_20__1_, prod_accum_20__0_ }),
    .a_o(a_r[1407:1344]),
    .b_o(b_r[1407:1344]),
    .s_o({ s_r_21__63_, s_r_21__62_, s_r_21__61_, s_r_21__60_, s_r_21__59_, s_r_21__58_, s_r_21__57_, s_r_21__56_, s_r_21__55_, s_r_21__54_, s_r_21__53_, s_r_21__52_, s_r_21__51_, s_r_21__50_, s_r_21__49_, s_r_21__48_, s_r_21__47_, s_r_21__46_, s_r_21__45_, s_r_21__44_, s_r_21__43_, s_r_21__42_, s_r_21__41_, s_r_21__40_, s_r_21__39_, s_r_21__38_, s_r_21__37_, s_r_21__36_, s_r_21__35_, s_r_21__34_, s_r_21__33_, s_r_21__32_, s_r_21__31_, s_r_21__30_, s_r_21__29_, s_r_21__28_, s_r_21__27_, s_r_21__26_, s_r_21__25_, s_r_21__24_, s_r_21__23_, s_r_21__22_, s_r_21__21_, s_r_21__20_, s_r_21__19_, s_r_21__18_, s_r_21__17_, s_r_21__16_, s_r_21__15_, s_r_21__14_, s_r_21__13_, s_r_21__12_, s_r_21__11_, s_r_21__10_, s_r_21__9_, s_r_21__8_, s_r_21__7_, s_r_21__6_, s_r_21__5_, s_r_21__4_, s_r_21__3_, s_r_21__2_, s_r_21__1_, s_r_21__0_ }),
    .c_o(c_r[21]),
    .prod_accum_o({ prod_accum_21__22_, prod_accum_21__21_, prod_accum_21__20_, prod_accum_21__19_, prod_accum_21__18_, prod_accum_21__17_, prod_accum_21__16_, prod_accum_21__15_, prod_accum_21__14_, prod_accum_21__13_, prod_accum_21__12_, prod_accum_21__11_, prod_accum_21__10_, prod_accum_21__9_, prod_accum_21__8_, prod_accum_21__7_, prod_accum_21__6_, prod_accum_21__5_, prod_accum_21__4_, prod_accum_21__3_, prod_accum_21__2_, prod_accum_21__1_, prod_accum_21__0_ })
  );


  bsg_mul_array_row_64_22_0
  genblk1_22__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1407:1344]),
    .b_i(b_r[1407:1344]),
    .s_i({ s_r_21__63_, s_r_21__62_, s_r_21__61_, s_r_21__60_, s_r_21__59_, s_r_21__58_, s_r_21__57_, s_r_21__56_, s_r_21__55_, s_r_21__54_, s_r_21__53_, s_r_21__52_, s_r_21__51_, s_r_21__50_, s_r_21__49_, s_r_21__48_, s_r_21__47_, s_r_21__46_, s_r_21__45_, s_r_21__44_, s_r_21__43_, s_r_21__42_, s_r_21__41_, s_r_21__40_, s_r_21__39_, s_r_21__38_, s_r_21__37_, s_r_21__36_, s_r_21__35_, s_r_21__34_, s_r_21__33_, s_r_21__32_, s_r_21__31_, s_r_21__30_, s_r_21__29_, s_r_21__28_, s_r_21__27_, s_r_21__26_, s_r_21__25_, s_r_21__24_, s_r_21__23_, s_r_21__22_, s_r_21__21_, s_r_21__20_, s_r_21__19_, s_r_21__18_, s_r_21__17_, s_r_21__16_, s_r_21__15_, s_r_21__14_, s_r_21__13_, s_r_21__12_, s_r_21__11_, s_r_21__10_, s_r_21__9_, s_r_21__8_, s_r_21__7_, s_r_21__6_, s_r_21__5_, s_r_21__4_, s_r_21__3_, s_r_21__2_, s_r_21__1_, s_r_21__0_ }),
    .c_i(c_r[21]),
    .prod_accum_i({ prod_accum_21__22_, prod_accum_21__21_, prod_accum_21__20_, prod_accum_21__19_, prod_accum_21__18_, prod_accum_21__17_, prod_accum_21__16_, prod_accum_21__15_, prod_accum_21__14_, prod_accum_21__13_, prod_accum_21__12_, prod_accum_21__11_, prod_accum_21__10_, prod_accum_21__9_, prod_accum_21__8_, prod_accum_21__7_, prod_accum_21__6_, prod_accum_21__5_, prod_accum_21__4_, prod_accum_21__3_, prod_accum_21__2_, prod_accum_21__1_, prod_accum_21__0_ }),
    .a_o(a_r[1471:1408]),
    .b_o(b_r[1471:1408]),
    .s_o({ s_r_22__63_, s_r_22__62_, s_r_22__61_, s_r_22__60_, s_r_22__59_, s_r_22__58_, s_r_22__57_, s_r_22__56_, s_r_22__55_, s_r_22__54_, s_r_22__53_, s_r_22__52_, s_r_22__51_, s_r_22__50_, s_r_22__49_, s_r_22__48_, s_r_22__47_, s_r_22__46_, s_r_22__45_, s_r_22__44_, s_r_22__43_, s_r_22__42_, s_r_22__41_, s_r_22__40_, s_r_22__39_, s_r_22__38_, s_r_22__37_, s_r_22__36_, s_r_22__35_, s_r_22__34_, s_r_22__33_, s_r_22__32_, s_r_22__31_, s_r_22__30_, s_r_22__29_, s_r_22__28_, s_r_22__27_, s_r_22__26_, s_r_22__25_, s_r_22__24_, s_r_22__23_, s_r_22__22_, s_r_22__21_, s_r_22__20_, s_r_22__19_, s_r_22__18_, s_r_22__17_, s_r_22__16_, s_r_22__15_, s_r_22__14_, s_r_22__13_, s_r_22__12_, s_r_22__11_, s_r_22__10_, s_r_22__9_, s_r_22__8_, s_r_22__7_, s_r_22__6_, s_r_22__5_, s_r_22__4_, s_r_22__3_, s_r_22__2_, s_r_22__1_, s_r_22__0_ }),
    .c_o(c_r[22]),
    .prod_accum_o({ prod_accum_22__23_, prod_accum_22__22_, prod_accum_22__21_, prod_accum_22__20_, prod_accum_22__19_, prod_accum_22__18_, prod_accum_22__17_, prod_accum_22__16_, prod_accum_22__15_, prod_accum_22__14_, prod_accum_22__13_, prod_accum_22__12_, prod_accum_22__11_, prod_accum_22__10_, prod_accum_22__9_, prod_accum_22__8_, prod_accum_22__7_, prod_accum_22__6_, prod_accum_22__5_, prod_accum_22__4_, prod_accum_22__3_, prod_accum_22__2_, prod_accum_22__1_, prod_accum_22__0_ })
  );


  bsg_mul_array_row_64_23_0
  genblk1_23__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1471:1408]),
    .b_i(b_r[1471:1408]),
    .s_i({ s_r_22__63_, s_r_22__62_, s_r_22__61_, s_r_22__60_, s_r_22__59_, s_r_22__58_, s_r_22__57_, s_r_22__56_, s_r_22__55_, s_r_22__54_, s_r_22__53_, s_r_22__52_, s_r_22__51_, s_r_22__50_, s_r_22__49_, s_r_22__48_, s_r_22__47_, s_r_22__46_, s_r_22__45_, s_r_22__44_, s_r_22__43_, s_r_22__42_, s_r_22__41_, s_r_22__40_, s_r_22__39_, s_r_22__38_, s_r_22__37_, s_r_22__36_, s_r_22__35_, s_r_22__34_, s_r_22__33_, s_r_22__32_, s_r_22__31_, s_r_22__30_, s_r_22__29_, s_r_22__28_, s_r_22__27_, s_r_22__26_, s_r_22__25_, s_r_22__24_, s_r_22__23_, s_r_22__22_, s_r_22__21_, s_r_22__20_, s_r_22__19_, s_r_22__18_, s_r_22__17_, s_r_22__16_, s_r_22__15_, s_r_22__14_, s_r_22__13_, s_r_22__12_, s_r_22__11_, s_r_22__10_, s_r_22__9_, s_r_22__8_, s_r_22__7_, s_r_22__6_, s_r_22__5_, s_r_22__4_, s_r_22__3_, s_r_22__2_, s_r_22__1_, s_r_22__0_ }),
    .c_i(c_r[22]),
    .prod_accum_i({ prod_accum_22__23_, prod_accum_22__22_, prod_accum_22__21_, prod_accum_22__20_, prod_accum_22__19_, prod_accum_22__18_, prod_accum_22__17_, prod_accum_22__16_, prod_accum_22__15_, prod_accum_22__14_, prod_accum_22__13_, prod_accum_22__12_, prod_accum_22__11_, prod_accum_22__10_, prod_accum_22__9_, prod_accum_22__8_, prod_accum_22__7_, prod_accum_22__6_, prod_accum_22__5_, prod_accum_22__4_, prod_accum_22__3_, prod_accum_22__2_, prod_accum_22__1_, prod_accum_22__0_ }),
    .a_o(a_r[1535:1472]),
    .b_o(b_r[1535:1472]),
    .s_o({ s_r_23__63_, s_r_23__62_, s_r_23__61_, s_r_23__60_, s_r_23__59_, s_r_23__58_, s_r_23__57_, s_r_23__56_, s_r_23__55_, s_r_23__54_, s_r_23__53_, s_r_23__52_, s_r_23__51_, s_r_23__50_, s_r_23__49_, s_r_23__48_, s_r_23__47_, s_r_23__46_, s_r_23__45_, s_r_23__44_, s_r_23__43_, s_r_23__42_, s_r_23__41_, s_r_23__40_, s_r_23__39_, s_r_23__38_, s_r_23__37_, s_r_23__36_, s_r_23__35_, s_r_23__34_, s_r_23__33_, s_r_23__32_, s_r_23__31_, s_r_23__30_, s_r_23__29_, s_r_23__28_, s_r_23__27_, s_r_23__26_, s_r_23__25_, s_r_23__24_, s_r_23__23_, s_r_23__22_, s_r_23__21_, s_r_23__20_, s_r_23__19_, s_r_23__18_, s_r_23__17_, s_r_23__16_, s_r_23__15_, s_r_23__14_, s_r_23__13_, s_r_23__12_, s_r_23__11_, s_r_23__10_, s_r_23__9_, s_r_23__8_, s_r_23__7_, s_r_23__6_, s_r_23__5_, s_r_23__4_, s_r_23__3_, s_r_23__2_, s_r_23__1_, s_r_23__0_ }),
    .c_o(c_r[23]),
    .prod_accum_o({ prod_accum_23__24_, prod_accum_23__23_, prod_accum_23__22_, prod_accum_23__21_, prod_accum_23__20_, prod_accum_23__19_, prod_accum_23__18_, prod_accum_23__17_, prod_accum_23__16_, prod_accum_23__15_, prod_accum_23__14_, prod_accum_23__13_, prod_accum_23__12_, prod_accum_23__11_, prod_accum_23__10_, prod_accum_23__9_, prod_accum_23__8_, prod_accum_23__7_, prod_accum_23__6_, prod_accum_23__5_, prod_accum_23__4_, prod_accum_23__3_, prod_accum_23__2_, prod_accum_23__1_, prod_accum_23__0_ })
  );


  bsg_mul_array_row_64_24_0
  genblk1_24__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1535:1472]),
    .b_i(b_r[1535:1472]),
    .s_i({ s_r_23__63_, s_r_23__62_, s_r_23__61_, s_r_23__60_, s_r_23__59_, s_r_23__58_, s_r_23__57_, s_r_23__56_, s_r_23__55_, s_r_23__54_, s_r_23__53_, s_r_23__52_, s_r_23__51_, s_r_23__50_, s_r_23__49_, s_r_23__48_, s_r_23__47_, s_r_23__46_, s_r_23__45_, s_r_23__44_, s_r_23__43_, s_r_23__42_, s_r_23__41_, s_r_23__40_, s_r_23__39_, s_r_23__38_, s_r_23__37_, s_r_23__36_, s_r_23__35_, s_r_23__34_, s_r_23__33_, s_r_23__32_, s_r_23__31_, s_r_23__30_, s_r_23__29_, s_r_23__28_, s_r_23__27_, s_r_23__26_, s_r_23__25_, s_r_23__24_, s_r_23__23_, s_r_23__22_, s_r_23__21_, s_r_23__20_, s_r_23__19_, s_r_23__18_, s_r_23__17_, s_r_23__16_, s_r_23__15_, s_r_23__14_, s_r_23__13_, s_r_23__12_, s_r_23__11_, s_r_23__10_, s_r_23__9_, s_r_23__8_, s_r_23__7_, s_r_23__6_, s_r_23__5_, s_r_23__4_, s_r_23__3_, s_r_23__2_, s_r_23__1_, s_r_23__0_ }),
    .c_i(c_r[23]),
    .prod_accum_i({ prod_accum_23__24_, prod_accum_23__23_, prod_accum_23__22_, prod_accum_23__21_, prod_accum_23__20_, prod_accum_23__19_, prod_accum_23__18_, prod_accum_23__17_, prod_accum_23__16_, prod_accum_23__15_, prod_accum_23__14_, prod_accum_23__13_, prod_accum_23__12_, prod_accum_23__11_, prod_accum_23__10_, prod_accum_23__9_, prod_accum_23__8_, prod_accum_23__7_, prod_accum_23__6_, prod_accum_23__5_, prod_accum_23__4_, prod_accum_23__3_, prod_accum_23__2_, prod_accum_23__1_, prod_accum_23__0_ }),
    .a_o(a_r[1599:1536]),
    .b_o(b_r[1599:1536]),
    .s_o({ s_r_24__63_, s_r_24__62_, s_r_24__61_, s_r_24__60_, s_r_24__59_, s_r_24__58_, s_r_24__57_, s_r_24__56_, s_r_24__55_, s_r_24__54_, s_r_24__53_, s_r_24__52_, s_r_24__51_, s_r_24__50_, s_r_24__49_, s_r_24__48_, s_r_24__47_, s_r_24__46_, s_r_24__45_, s_r_24__44_, s_r_24__43_, s_r_24__42_, s_r_24__41_, s_r_24__40_, s_r_24__39_, s_r_24__38_, s_r_24__37_, s_r_24__36_, s_r_24__35_, s_r_24__34_, s_r_24__33_, s_r_24__32_, s_r_24__31_, s_r_24__30_, s_r_24__29_, s_r_24__28_, s_r_24__27_, s_r_24__26_, s_r_24__25_, s_r_24__24_, s_r_24__23_, s_r_24__22_, s_r_24__21_, s_r_24__20_, s_r_24__19_, s_r_24__18_, s_r_24__17_, s_r_24__16_, s_r_24__15_, s_r_24__14_, s_r_24__13_, s_r_24__12_, s_r_24__11_, s_r_24__10_, s_r_24__9_, s_r_24__8_, s_r_24__7_, s_r_24__6_, s_r_24__5_, s_r_24__4_, s_r_24__3_, s_r_24__2_, s_r_24__1_, s_r_24__0_ }),
    .c_o(c_r[24]),
    .prod_accum_o({ prod_accum_24__25_, prod_accum_24__24_, prod_accum_24__23_, prod_accum_24__22_, prod_accum_24__21_, prod_accum_24__20_, prod_accum_24__19_, prod_accum_24__18_, prod_accum_24__17_, prod_accum_24__16_, prod_accum_24__15_, prod_accum_24__14_, prod_accum_24__13_, prod_accum_24__12_, prod_accum_24__11_, prod_accum_24__10_, prod_accum_24__9_, prod_accum_24__8_, prod_accum_24__7_, prod_accum_24__6_, prod_accum_24__5_, prod_accum_24__4_, prod_accum_24__3_, prod_accum_24__2_, prod_accum_24__1_, prod_accum_24__0_ })
  );


  bsg_mul_array_row_64_25_0
  genblk1_25__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1599:1536]),
    .b_i(b_r[1599:1536]),
    .s_i({ s_r_24__63_, s_r_24__62_, s_r_24__61_, s_r_24__60_, s_r_24__59_, s_r_24__58_, s_r_24__57_, s_r_24__56_, s_r_24__55_, s_r_24__54_, s_r_24__53_, s_r_24__52_, s_r_24__51_, s_r_24__50_, s_r_24__49_, s_r_24__48_, s_r_24__47_, s_r_24__46_, s_r_24__45_, s_r_24__44_, s_r_24__43_, s_r_24__42_, s_r_24__41_, s_r_24__40_, s_r_24__39_, s_r_24__38_, s_r_24__37_, s_r_24__36_, s_r_24__35_, s_r_24__34_, s_r_24__33_, s_r_24__32_, s_r_24__31_, s_r_24__30_, s_r_24__29_, s_r_24__28_, s_r_24__27_, s_r_24__26_, s_r_24__25_, s_r_24__24_, s_r_24__23_, s_r_24__22_, s_r_24__21_, s_r_24__20_, s_r_24__19_, s_r_24__18_, s_r_24__17_, s_r_24__16_, s_r_24__15_, s_r_24__14_, s_r_24__13_, s_r_24__12_, s_r_24__11_, s_r_24__10_, s_r_24__9_, s_r_24__8_, s_r_24__7_, s_r_24__6_, s_r_24__5_, s_r_24__4_, s_r_24__3_, s_r_24__2_, s_r_24__1_, s_r_24__0_ }),
    .c_i(c_r[24]),
    .prod_accum_i({ prod_accum_24__25_, prod_accum_24__24_, prod_accum_24__23_, prod_accum_24__22_, prod_accum_24__21_, prod_accum_24__20_, prod_accum_24__19_, prod_accum_24__18_, prod_accum_24__17_, prod_accum_24__16_, prod_accum_24__15_, prod_accum_24__14_, prod_accum_24__13_, prod_accum_24__12_, prod_accum_24__11_, prod_accum_24__10_, prod_accum_24__9_, prod_accum_24__8_, prod_accum_24__7_, prod_accum_24__6_, prod_accum_24__5_, prod_accum_24__4_, prod_accum_24__3_, prod_accum_24__2_, prod_accum_24__1_, prod_accum_24__0_ }),
    .a_o(a_r[1663:1600]),
    .b_o(b_r[1663:1600]),
    .s_o({ s_r_25__63_, s_r_25__62_, s_r_25__61_, s_r_25__60_, s_r_25__59_, s_r_25__58_, s_r_25__57_, s_r_25__56_, s_r_25__55_, s_r_25__54_, s_r_25__53_, s_r_25__52_, s_r_25__51_, s_r_25__50_, s_r_25__49_, s_r_25__48_, s_r_25__47_, s_r_25__46_, s_r_25__45_, s_r_25__44_, s_r_25__43_, s_r_25__42_, s_r_25__41_, s_r_25__40_, s_r_25__39_, s_r_25__38_, s_r_25__37_, s_r_25__36_, s_r_25__35_, s_r_25__34_, s_r_25__33_, s_r_25__32_, s_r_25__31_, s_r_25__30_, s_r_25__29_, s_r_25__28_, s_r_25__27_, s_r_25__26_, s_r_25__25_, s_r_25__24_, s_r_25__23_, s_r_25__22_, s_r_25__21_, s_r_25__20_, s_r_25__19_, s_r_25__18_, s_r_25__17_, s_r_25__16_, s_r_25__15_, s_r_25__14_, s_r_25__13_, s_r_25__12_, s_r_25__11_, s_r_25__10_, s_r_25__9_, s_r_25__8_, s_r_25__7_, s_r_25__6_, s_r_25__5_, s_r_25__4_, s_r_25__3_, s_r_25__2_, s_r_25__1_, s_r_25__0_ }),
    .c_o(c_r[25]),
    .prod_accum_o({ prod_accum_25__26_, prod_accum_25__25_, prod_accum_25__24_, prod_accum_25__23_, prod_accum_25__22_, prod_accum_25__21_, prod_accum_25__20_, prod_accum_25__19_, prod_accum_25__18_, prod_accum_25__17_, prod_accum_25__16_, prod_accum_25__15_, prod_accum_25__14_, prod_accum_25__13_, prod_accum_25__12_, prod_accum_25__11_, prod_accum_25__10_, prod_accum_25__9_, prod_accum_25__8_, prod_accum_25__7_, prod_accum_25__6_, prod_accum_25__5_, prod_accum_25__4_, prod_accum_25__3_, prod_accum_25__2_, prod_accum_25__1_, prod_accum_25__0_ })
  );


  bsg_mul_array_row_64_26_0
  genblk1_26__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1663:1600]),
    .b_i(b_r[1663:1600]),
    .s_i({ s_r_25__63_, s_r_25__62_, s_r_25__61_, s_r_25__60_, s_r_25__59_, s_r_25__58_, s_r_25__57_, s_r_25__56_, s_r_25__55_, s_r_25__54_, s_r_25__53_, s_r_25__52_, s_r_25__51_, s_r_25__50_, s_r_25__49_, s_r_25__48_, s_r_25__47_, s_r_25__46_, s_r_25__45_, s_r_25__44_, s_r_25__43_, s_r_25__42_, s_r_25__41_, s_r_25__40_, s_r_25__39_, s_r_25__38_, s_r_25__37_, s_r_25__36_, s_r_25__35_, s_r_25__34_, s_r_25__33_, s_r_25__32_, s_r_25__31_, s_r_25__30_, s_r_25__29_, s_r_25__28_, s_r_25__27_, s_r_25__26_, s_r_25__25_, s_r_25__24_, s_r_25__23_, s_r_25__22_, s_r_25__21_, s_r_25__20_, s_r_25__19_, s_r_25__18_, s_r_25__17_, s_r_25__16_, s_r_25__15_, s_r_25__14_, s_r_25__13_, s_r_25__12_, s_r_25__11_, s_r_25__10_, s_r_25__9_, s_r_25__8_, s_r_25__7_, s_r_25__6_, s_r_25__5_, s_r_25__4_, s_r_25__3_, s_r_25__2_, s_r_25__1_, s_r_25__0_ }),
    .c_i(c_r[25]),
    .prod_accum_i({ prod_accum_25__26_, prod_accum_25__25_, prod_accum_25__24_, prod_accum_25__23_, prod_accum_25__22_, prod_accum_25__21_, prod_accum_25__20_, prod_accum_25__19_, prod_accum_25__18_, prod_accum_25__17_, prod_accum_25__16_, prod_accum_25__15_, prod_accum_25__14_, prod_accum_25__13_, prod_accum_25__12_, prod_accum_25__11_, prod_accum_25__10_, prod_accum_25__9_, prod_accum_25__8_, prod_accum_25__7_, prod_accum_25__6_, prod_accum_25__5_, prod_accum_25__4_, prod_accum_25__3_, prod_accum_25__2_, prod_accum_25__1_, prod_accum_25__0_ }),
    .a_o(a_r[1727:1664]),
    .b_o(b_r[1727:1664]),
    .s_o({ s_r_26__63_, s_r_26__62_, s_r_26__61_, s_r_26__60_, s_r_26__59_, s_r_26__58_, s_r_26__57_, s_r_26__56_, s_r_26__55_, s_r_26__54_, s_r_26__53_, s_r_26__52_, s_r_26__51_, s_r_26__50_, s_r_26__49_, s_r_26__48_, s_r_26__47_, s_r_26__46_, s_r_26__45_, s_r_26__44_, s_r_26__43_, s_r_26__42_, s_r_26__41_, s_r_26__40_, s_r_26__39_, s_r_26__38_, s_r_26__37_, s_r_26__36_, s_r_26__35_, s_r_26__34_, s_r_26__33_, s_r_26__32_, s_r_26__31_, s_r_26__30_, s_r_26__29_, s_r_26__28_, s_r_26__27_, s_r_26__26_, s_r_26__25_, s_r_26__24_, s_r_26__23_, s_r_26__22_, s_r_26__21_, s_r_26__20_, s_r_26__19_, s_r_26__18_, s_r_26__17_, s_r_26__16_, s_r_26__15_, s_r_26__14_, s_r_26__13_, s_r_26__12_, s_r_26__11_, s_r_26__10_, s_r_26__9_, s_r_26__8_, s_r_26__7_, s_r_26__6_, s_r_26__5_, s_r_26__4_, s_r_26__3_, s_r_26__2_, s_r_26__1_, s_r_26__0_ }),
    .c_o(c_r[26]),
    .prod_accum_o({ prod_accum_26__27_, prod_accum_26__26_, prod_accum_26__25_, prod_accum_26__24_, prod_accum_26__23_, prod_accum_26__22_, prod_accum_26__21_, prod_accum_26__20_, prod_accum_26__19_, prod_accum_26__18_, prod_accum_26__17_, prod_accum_26__16_, prod_accum_26__15_, prod_accum_26__14_, prod_accum_26__13_, prod_accum_26__12_, prod_accum_26__11_, prod_accum_26__10_, prod_accum_26__9_, prod_accum_26__8_, prod_accum_26__7_, prod_accum_26__6_, prod_accum_26__5_, prod_accum_26__4_, prod_accum_26__3_, prod_accum_26__2_, prod_accum_26__1_, prod_accum_26__0_ })
  );


  bsg_mul_array_row_64_27_0
  genblk1_27__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1727:1664]),
    .b_i(b_r[1727:1664]),
    .s_i({ s_r_26__63_, s_r_26__62_, s_r_26__61_, s_r_26__60_, s_r_26__59_, s_r_26__58_, s_r_26__57_, s_r_26__56_, s_r_26__55_, s_r_26__54_, s_r_26__53_, s_r_26__52_, s_r_26__51_, s_r_26__50_, s_r_26__49_, s_r_26__48_, s_r_26__47_, s_r_26__46_, s_r_26__45_, s_r_26__44_, s_r_26__43_, s_r_26__42_, s_r_26__41_, s_r_26__40_, s_r_26__39_, s_r_26__38_, s_r_26__37_, s_r_26__36_, s_r_26__35_, s_r_26__34_, s_r_26__33_, s_r_26__32_, s_r_26__31_, s_r_26__30_, s_r_26__29_, s_r_26__28_, s_r_26__27_, s_r_26__26_, s_r_26__25_, s_r_26__24_, s_r_26__23_, s_r_26__22_, s_r_26__21_, s_r_26__20_, s_r_26__19_, s_r_26__18_, s_r_26__17_, s_r_26__16_, s_r_26__15_, s_r_26__14_, s_r_26__13_, s_r_26__12_, s_r_26__11_, s_r_26__10_, s_r_26__9_, s_r_26__8_, s_r_26__7_, s_r_26__6_, s_r_26__5_, s_r_26__4_, s_r_26__3_, s_r_26__2_, s_r_26__1_, s_r_26__0_ }),
    .c_i(c_r[26]),
    .prod_accum_i({ prod_accum_26__27_, prod_accum_26__26_, prod_accum_26__25_, prod_accum_26__24_, prod_accum_26__23_, prod_accum_26__22_, prod_accum_26__21_, prod_accum_26__20_, prod_accum_26__19_, prod_accum_26__18_, prod_accum_26__17_, prod_accum_26__16_, prod_accum_26__15_, prod_accum_26__14_, prod_accum_26__13_, prod_accum_26__12_, prod_accum_26__11_, prod_accum_26__10_, prod_accum_26__9_, prod_accum_26__8_, prod_accum_26__7_, prod_accum_26__6_, prod_accum_26__5_, prod_accum_26__4_, prod_accum_26__3_, prod_accum_26__2_, prod_accum_26__1_, prod_accum_26__0_ }),
    .a_o(a_r[1791:1728]),
    .b_o(b_r[1791:1728]),
    .s_o({ s_r_27__63_, s_r_27__62_, s_r_27__61_, s_r_27__60_, s_r_27__59_, s_r_27__58_, s_r_27__57_, s_r_27__56_, s_r_27__55_, s_r_27__54_, s_r_27__53_, s_r_27__52_, s_r_27__51_, s_r_27__50_, s_r_27__49_, s_r_27__48_, s_r_27__47_, s_r_27__46_, s_r_27__45_, s_r_27__44_, s_r_27__43_, s_r_27__42_, s_r_27__41_, s_r_27__40_, s_r_27__39_, s_r_27__38_, s_r_27__37_, s_r_27__36_, s_r_27__35_, s_r_27__34_, s_r_27__33_, s_r_27__32_, s_r_27__31_, s_r_27__30_, s_r_27__29_, s_r_27__28_, s_r_27__27_, s_r_27__26_, s_r_27__25_, s_r_27__24_, s_r_27__23_, s_r_27__22_, s_r_27__21_, s_r_27__20_, s_r_27__19_, s_r_27__18_, s_r_27__17_, s_r_27__16_, s_r_27__15_, s_r_27__14_, s_r_27__13_, s_r_27__12_, s_r_27__11_, s_r_27__10_, s_r_27__9_, s_r_27__8_, s_r_27__7_, s_r_27__6_, s_r_27__5_, s_r_27__4_, s_r_27__3_, s_r_27__2_, s_r_27__1_, s_r_27__0_ }),
    .c_o(c_r[27]),
    .prod_accum_o({ prod_accum_27__28_, prod_accum_27__27_, prod_accum_27__26_, prod_accum_27__25_, prod_accum_27__24_, prod_accum_27__23_, prod_accum_27__22_, prod_accum_27__21_, prod_accum_27__20_, prod_accum_27__19_, prod_accum_27__18_, prod_accum_27__17_, prod_accum_27__16_, prod_accum_27__15_, prod_accum_27__14_, prod_accum_27__13_, prod_accum_27__12_, prod_accum_27__11_, prod_accum_27__10_, prod_accum_27__9_, prod_accum_27__8_, prod_accum_27__7_, prod_accum_27__6_, prod_accum_27__5_, prod_accum_27__4_, prod_accum_27__3_, prod_accum_27__2_, prod_accum_27__1_, prod_accum_27__0_ })
  );


  bsg_mul_array_row_64_28_0
  genblk1_28__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1791:1728]),
    .b_i(b_r[1791:1728]),
    .s_i({ s_r_27__63_, s_r_27__62_, s_r_27__61_, s_r_27__60_, s_r_27__59_, s_r_27__58_, s_r_27__57_, s_r_27__56_, s_r_27__55_, s_r_27__54_, s_r_27__53_, s_r_27__52_, s_r_27__51_, s_r_27__50_, s_r_27__49_, s_r_27__48_, s_r_27__47_, s_r_27__46_, s_r_27__45_, s_r_27__44_, s_r_27__43_, s_r_27__42_, s_r_27__41_, s_r_27__40_, s_r_27__39_, s_r_27__38_, s_r_27__37_, s_r_27__36_, s_r_27__35_, s_r_27__34_, s_r_27__33_, s_r_27__32_, s_r_27__31_, s_r_27__30_, s_r_27__29_, s_r_27__28_, s_r_27__27_, s_r_27__26_, s_r_27__25_, s_r_27__24_, s_r_27__23_, s_r_27__22_, s_r_27__21_, s_r_27__20_, s_r_27__19_, s_r_27__18_, s_r_27__17_, s_r_27__16_, s_r_27__15_, s_r_27__14_, s_r_27__13_, s_r_27__12_, s_r_27__11_, s_r_27__10_, s_r_27__9_, s_r_27__8_, s_r_27__7_, s_r_27__6_, s_r_27__5_, s_r_27__4_, s_r_27__3_, s_r_27__2_, s_r_27__1_, s_r_27__0_ }),
    .c_i(c_r[27]),
    .prod_accum_i({ prod_accum_27__28_, prod_accum_27__27_, prod_accum_27__26_, prod_accum_27__25_, prod_accum_27__24_, prod_accum_27__23_, prod_accum_27__22_, prod_accum_27__21_, prod_accum_27__20_, prod_accum_27__19_, prod_accum_27__18_, prod_accum_27__17_, prod_accum_27__16_, prod_accum_27__15_, prod_accum_27__14_, prod_accum_27__13_, prod_accum_27__12_, prod_accum_27__11_, prod_accum_27__10_, prod_accum_27__9_, prod_accum_27__8_, prod_accum_27__7_, prod_accum_27__6_, prod_accum_27__5_, prod_accum_27__4_, prod_accum_27__3_, prod_accum_27__2_, prod_accum_27__1_, prod_accum_27__0_ }),
    .a_o(a_r[1855:1792]),
    .b_o(b_r[1855:1792]),
    .s_o({ s_r_28__63_, s_r_28__62_, s_r_28__61_, s_r_28__60_, s_r_28__59_, s_r_28__58_, s_r_28__57_, s_r_28__56_, s_r_28__55_, s_r_28__54_, s_r_28__53_, s_r_28__52_, s_r_28__51_, s_r_28__50_, s_r_28__49_, s_r_28__48_, s_r_28__47_, s_r_28__46_, s_r_28__45_, s_r_28__44_, s_r_28__43_, s_r_28__42_, s_r_28__41_, s_r_28__40_, s_r_28__39_, s_r_28__38_, s_r_28__37_, s_r_28__36_, s_r_28__35_, s_r_28__34_, s_r_28__33_, s_r_28__32_, s_r_28__31_, s_r_28__30_, s_r_28__29_, s_r_28__28_, s_r_28__27_, s_r_28__26_, s_r_28__25_, s_r_28__24_, s_r_28__23_, s_r_28__22_, s_r_28__21_, s_r_28__20_, s_r_28__19_, s_r_28__18_, s_r_28__17_, s_r_28__16_, s_r_28__15_, s_r_28__14_, s_r_28__13_, s_r_28__12_, s_r_28__11_, s_r_28__10_, s_r_28__9_, s_r_28__8_, s_r_28__7_, s_r_28__6_, s_r_28__5_, s_r_28__4_, s_r_28__3_, s_r_28__2_, s_r_28__1_, s_r_28__0_ }),
    .c_o(c_r[28]),
    .prod_accum_o({ prod_accum_28__29_, prod_accum_28__28_, prod_accum_28__27_, prod_accum_28__26_, prod_accum_28__25_, prod_accum_28__24_, prod_accum_28__23_, prod_accum_28__22_, prod_accum_28__21_, prod_accum_28__20_, prod_accum_28__19_, prod_accum_28__18_, prod_accum_28__17_, prod_accum_28__16_, prod_accum_28__15_, prod_accum_28__14_, prod_accum_28__13_, prod_accum_28__12_, prod_accum_28__11_, prod_accum_28__10_, prod_accum_28__9_, prod_accum_28__8_, prod_accum_28__7_, prod_accum_28__6_, prod_accum_28__5_, prod_accum_28__4_, prod_accum_28__3_, prod_accum_28__2_, prod_accum_28__1_, prod_accum_28__0_ })
  );


  bsg_mul_array_row_64_29_0
  genblk1_29__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1855:1792]),
    .b_i(b_r[1855:1792]),
    .s_i({ s_r_28__63_, s_r_28__62_, s_r_28__61_, s_r_28__60_, s_r_28__59_, s_r_28__58_, s_r_28__57_, s_r_28__56_, s_r_28__55_, s_r_28__54_, s_r_28__53_, s_r_28__52_, s_r_28__51_, s_r_28__50_, s_r_28__49_, s_r_28__48_, s_r_28__47_, s_r_28__46_, s_r_28__45_, s_r_28__44_, s_r_28__43_, s_r_28__42_, s_r_28__41_, s_r_28__40_, s_r_28__39_, s_r_28__38_, s_r_28__37_, s_r_28__36_, s_r_28__35_, s_r_28__34_, s_r_28__33_, s_r_28__32_, s_r_28__31_, s_r_28__30_, s_r_28__29_, s_r_28__28_, s_r_28__27_, s_r_28__26_, s_r_28__25_, s_r_28__24_, s_r_28__23_, s_r_28__22_, s_r_28__21_, s_r_28__20_, s_r_28__19_, s_r_28__18_, s_r_28__17_, s_r_28__16_, s_r_28__15_, s_r_28__14_, s_r_28__13_, s_r_28__12_, s_r_28__11_, s_r_28__10_, s_r_28__9_, s_r_28__8_, s_r_28__7_, s_r_28__6_, s_r_28__5_, s_r_28__4_, s_r_28__3_, s_r_28__2_, s_r_28__1_, s_r_28__0_ }),
    .c_i(c_r[28]),
    .prod_accum_i({ prod_accum_28__29_, prod_accum_28__28_, prod_accum_28__27_, prod_accum_28__26_, prod_accum_28__25_, prod_accum_28__24_, prod_accum_28__23_, prod_accum_28__22_, prod_accum_28__21_, prod_accum_28__20_, prod_accum_28__19_, prod_accum_28__18_, prod_accum_28__17_, prod_accum_28__16_, prod_accum_28__15_, prod_accum_28__14_, prod_accum_28__13_, prod_accum_28__12_, prod_accum_28__11_, prod_accum_28__10_, prod_accum_28__9_, prod_accum_28__8_, prod_accum_28__7_, prod_accum_28__6_, prod_accum_28__5_, prod_accum_28__4_, prod_accum_28__3_, prod_accum_28__2_, prod_accum_28__1_, prod_accum_28__0_ }),
    .a_o(a_r[1919:1856]),
    .b_o(b_r[1919:1856]),
    .s_o({ s_r_29__63_, s_r_29__62_, s_r_29__61_, s_r_29__60_, s_r_29__59_, s_r_29__58_, s_r_29__57_, s_r_29__56_, s_r_29__55_, s_r_29__54_, s_r_29__53_, s_r_29__52_, s_r_29__51_, s_r_29__50_, s_r_29__49_, s_r_29__48_, s_r_29__47_, s_r_29__46_, s_r_29__45_, s_r_29__44_, s_r_29__43_, s_r_29__42_, s_r_29__41_, s_r_29__40_, s_r_29__39_, s_r_29__38_, s_r_29__37_, s_r_29__36_, s_r_29__35_, s_r_29__34_, s_r_29__33_, s_r_29__32_, s_r_29__31_, s_r_29__30_, s_r_29__29_, s_r_29__28_, s_r_29__27_, s_r_29__26_, s_r_29__25_, s_r_29__24_, s_r_29__23_, s_r_29__22_, s_r_29__21_, s_r_29__20_, s_r_29__19_, s_r_29__18_, s_r_29__17_, s_r_29__16_, s_r_29__15_, s_r_29__14_, s_r_29__13_, s_r_29__12_, s_r_29__11_, s_r_29__10_, s_r_29__9_, s_r_29__8_, s_r_29__7_, s_r_29__6_, s_r_29__5_, s_r_29__4_, s_r_29__3_, s_r_29__2_, s_r_29__1_, s_r_29__0_ }),
    .c_o(c_r[29]),
    .prod_accum_o({ prod_accum_29__30_, prod_accum_29__29_, prod_accum_29__28_, prod_accum_29__27_, prod_accum_29__26_, prod_accum_29__25_, prod_accum_29__24_, prod_accum_29__23_, prod_accum_29__22_, prod_accum_29__21_, prod_accum_29__20_, prod_accum_29__19_, prod_accum_29__18_, prod_accum_29__17_, prod_accum_29__16_, prod_accum_29__15_, prod_accum_29__14_, prod_accum_29__13_, prod_accum_29__12_, prod_accum_29__11_, prod_accum_29__10_, prod_accum_29__9_, prod_accum_29__8_, prod_accum_29__7_, prod_accum_29__6_, prod_accum_29__5_, prod_accum_29__4_, prod_accum_29__3_, prod_accum_29__2_, prod_accum_29__1_, prod_accum_29__0_ })
  );


  bsg_mul_array_row_64_30_0
  genblk1_30__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1919:1856]),
    .b_i(b_r[1919:1856]),
    .s_i({ s_r_29__63_, s_r_29__62_, s_r_29__61_, s_r_29__60_, s_r_29__59_, s_r_29__58_, s_r_29__57_, s_r_29__56_, s_r_29__55_, s_r_29__54_, s_r_29__53_, s_r_29__52_, s_r_29__51_, s_r_29__50_, s_r_29__49_, s_r_29__48_, s_r_29__47_, s_r_29__46_, s_r_29__45_, s_r_29__44_, s_r_29__43_, s_r_29__42_, s_r_29__41_, s_r_29__40_, s_r_29__39_, s_r_29__38_, s_r_29__37_, s_r_29__36_, s_r_29__35_, s_r_29__34_, s_r_29__33_, s_r_29__32_, s_r_29__31_, s_r_29__30_, s_r_29__29_, s_r_29__28_, s_r_29__27_, s_r_29__26_, s_r_29__25_, s_r_29__24_, s_r_29__23_, s_r_29__22_, s_r_29__21_, s_r_29__20_, s_r_29__19_, s_r_29__18_, s_r_29__17_, s_r_29__16_, s_r_29__15_, s_r_29__14_, s_r_29__13_, s_r_29__12_, s_r_29__11_, s_r_29__10_, s_r_29__9_, s_r_29__8_, s_r_29__7_, s_r_29__6_, s_r_29__5_, s_r_29__4_, s_r_29__3_, s_r_29__2_, s_r_29__1_, s_r_29__0_ }),
    .c_i(c_r[29]),
    .prod_accum_i({ prod_accum_29__30_, prod_accum_29__29_, prod_accum_29__28_, prod_accum_29__27_, prod_accum_29__26_, prod_accum_29__25_, prod_accum_29__24_, prod_accum_29__23_, prod_accum_29__22_, prod_accum_29__21_, prod_accum_29__20_, prod_accum_29__19_, prod_accum_29__18_, prod_accum_29__17_, prod_accum_29__16_, prod_accum_29__15_, prod_accum_29__14_, prod_accum_29__13_, prod_accum_29__12_, prod_accum_29__11_, prod_accum_29__10_, prod_accum_29__9_, prod_accum_29__8_, prod_accum_29__7_, prod_accum_29__6_, prod_accum_29__5_, prod_accum_29__4_, prod_accum_29__3_, prod_accum_29__2_, prod_accum_29__1_, prod_accum_29__0_ }),
    .a_o(a_r[1983:1920]),
    .b_o(b_r[1983:1920]),
    .s_o({ s_r_30__63_, s_r_30__62_, s_r_30__61_, s_r_30__60_, s_r_30__59_, s_r_30__58_, s_r_30__57_, s_r_30__56_, s_r_30__55_, s_r_30__54_, s_r_30__53_, s_r_30__52_, s_r_30__51_, s_r_30__50_, s_r_30__49_, s_r_30__48_, s_r_30__47_, s_r_30__46_, s_r_30__45_, s_r_30__44_, s_r_30__43_, s_r_30__42_, s_r_30__41_, s_r_30__40_, s_r_30__39_, s_r_30__38_, s_r_30__37_, s_r_30__36_, s_r_30__35_, s_r_30__34_, s_r_30__33_, s_r_30__32_, s_r_30__31_, s_r_30__30_, s_r_30__29_, s_r_30__28_, s_r_30__27_, s_r_30__26_, s_r_30__25_, s_r_30__24_, s_r_30__23_, s_r_30__22_, s_r_30__21_, s_r_30__20_, s_r_30__19_, s_r_30__18_, s_r_30__17_, s_r_30__16_, s_r_30__15_, s_r_30__14_, s_r_30__13_, s_r_30__12_, s_r_30__11_, s_r_30__10_, s_r_30__9_, s_r_30__8_, s_r_30__7_, s_r_30__6_, s_r_30__5_, s_r_30__4_, s_r_30__3_, s_r_30__2_, s_r_30__1_, s_r_30__0_ }),
    .c_o(c_r[30]),
    .prod_accum_o({ prod_accum_30__31_, prod_accum_30__30_, prod_accum_30__29_, prod_accum_30__28_, prod_accum_30__27_, prod_accum_30__26_, prod_accum_30__25_, prod_accum_30__24_, prod_accum_30__23_, prod_accum_30__22_, prod_accum_30__21_, prod_accum_30__20_, prod_accum_30__19_, prod_accum_30__18_, prod_accum_30__17_, prod_accum_30__16_, prod_accum_30__15_, prod_accum_30__14_, prod_accum_30__13_, prod_accum_30__12_, prod_accum_30__11_, prod_accum_30__10_, prod_accum_30__9_, prod_accum_30__8_, prod_accum_30__7_, prod_accum_30__6_, prod_accum_30__5_, prod_accum_30__4_, prod_accum_30__3_, prod_accum_30__2_, prod_accum_30__1_, prod_accum_30__0_ })
  );


  bsg_mul_array_row_64_31_1
  genblk1_31__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[1983:1920]),
    .b_i(b_r[1983:1920]),
    .s_i({ s_r_30__63_, s_r_30__62_, s_r_30__61_, s_r_30__60_, s_r_30__59_, s_r_30__58_, s_r_30__57_, s_r_30__56_, s_r_30__55_, s_r_30__54_, s_r_30__53_, s_r_30__52_, s_r_30__51_, s_r_30__50_, s_r_30__49_, s_r_30__48_, s_r_30__47_, s_r_30__46_, s_r_30__45_, s_r_30__44_, s_r_30__43_, s_r_30__42_, s_r_30__41_, s_r_30__40_, s_r_30__39_, s_r_30__38_, s_r_30__37_, s_r_30__36_, s_r_30__35_, s_r_30__34_, s_r_30__33_, s_r_30__32_, s_r_30__31_, s_r_30__30_, s_r_30__29_, s_r_30__28_, s_r_30__27_, s_r_30__26_, s_r_30__25_, s_r_30__24_, s_r_30__23_, s_r_30__22_, s_r_30__21_, s_r_30__20_, s_r_30__19_, s_r_30__18_, s_r_30__17_, s_r_30__16_, s_r_30__15_, s_r_30__14_, s_r_30__13_, s_r_30__12_, s_r_30__11_, s_r_30__10_, s_r_30__9_, s_r_30__8_, s_r_30__7_, s_r_30__6_, s_r_30__5_, s_r_30__4_, s_r_30__3_, s_r_30__2_, s_r_30__1_, s_r_30__0_ }),
    .c_i(c_r[30]),
    .prod_accum_i({ prod_accum_30__31_, prod_accum_30__30_, prod_accum_30__29_, prod_accum_30__28_, prod_accum_30__27_, prod_accum_30__26_, prod_accum_30__25_, prod_accum_30__24_, prod_accum_30__23_, prod_accum_30__22_, prod_accum_30__21_, prod_accum_30__20_, prod_accum_30__19_, prod_accum_30__18_, prod_accum_30__17_, prod_accum_30__16_, prod_accum_30__15_, prod_accum_30__14_, prod_accum_30__13_, prod_accum_30__12_, prod_accum_30__11_, prod_accum_30__10_, prod_accum_30__9_, prod_accum_30__8_, prod_accum_30__7_, prod_accum_30__6_, prod_accum_30__5_, prod_accum_30__4_, prod_accum_30__3_, prod_accum_30__2_, prod_accum_30__1_, prod_accum_30__0_ }),
    .a_o(a_r[2047:1984]),
    .b_o(b_r[2047:1984]),
    .s_o({ s_r_31__63_, s_r_31__62_, s_r_31__61_, s_r_31__60_, s_r_31__59_, s_r_31__58_, s_r_31__57_, s_r_31__56_, s_r_31__55_, s_r_31__54_, s_r_31__53_, s_r_31__52_, s_r_31__51_, s_r_31__50_, s_r_31__49_, s_r_31__48_, s_r_31__47_, s_r_31__46_, s_r_31__45_, s_r_31__44_, s_r_31__43_, s_r_31__42_, s_r_31__41_, s_r_31__40_, s_r_31__39_, s_r_31__38_, s_r_31__37_, s_r_31__36_, s_r_31__35_, s_r_31__34_, s_r_31__33_, s_r_31__32_, s_r_31__31_, s_r_31__30_, s_r_31__29_, s_r_31__28_, s_r_31__27_, s_r_31__26_, s_r_31__25_, s_r_31__24_, s_r_31__23_, s_r_31__22_, s_r_31__21_, s_r_31__20_, s_r_31__19_, s_r_31__18_, s_r_31__17_, s_r_31__16_, s_r_31__15_, s_r_31__14_, s_r_31__13_, s_r_31__12_, s_r_31__11_, s_r_31__10_, s_r_31__9_, s_r_31__8_, s_r_31__7_, s_r_31__6_, s_r_31__5_, s_r_31__4_, s_r_31__3_, s_r_31__2_, s_r_31__1_, s_r_31__0_ }),
    .c_o(c_r[31]),
    .prod_accum_o({ prod_accum_31__32_, prod_accum_31__31_, prod_accum_31__30_, prod_accum_31__29_, prod_accum_31__28_, prod_accum_31__27_, prod_accum_31__26_, prod_accum_31__25_, prod_accum_31__24_, prod_accum_31__23_, prod_accum_31__22_, prod_accum_31__21_, prod_accum_31__20_, prod_accum_31__19_, prod_accum_31__18_, prod_accum_31__17_, prod_accum_31__16_, prod_accum_31__15_, prod_accum_31__14_, prod_accum_31__13_, prod_accum_31__12_, prod_accum_31__11_, prod_accum_31__10_, prod_accum_31__9_, prod_accum_31__8_, prod_accum_31__7_, prod_accum_31__6_, prod_accum_31__5_, prod_accum_31__4_, prod_accum_31__3_, prod_accum_31__2_, prod_accum_31__1_, prod_accum_31__0_ })
  );


  bsg_mul_array_row_64_32_x
  genblk1_32__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2047:1984]),
    .b_i(b_r[2047:1984]),
    .s_i({ s_r_31__63_, s_r_31__62_, s_r_31__61_, s_r_31__60_, s_r_31__59_, s_r_31__58_, s_r_31__57_, s_r_31__56_, s_r_31__55_, s_r_31__54_, s_r_31__53_, s_r_31__52_, s_r_31__51_, s_r_31__50_, s_r_31__49_, s_r_31__48_, s_r_31__47_, s_r_31__46_, s_r_31__45_, s_r_31__44_, s_r_31__43_, s_r_31__42_, s_r_31__41_, s_r_31__40_, s_r_31__39_, s_r_31__38_, s_r_31__37_, s_r_31__36_, s_r_31__35_, s_r_31__34_, s_r_31__33_, s_r_31__32_, s_r_31__31_, s_r_31__30_, s_r_31__29_, s_r_31__28_, s_r_31__27_, s_r_31__26_, s_r_31__25_, s_r_31__24_, s_r_31__23_, s_r_31__22_, s_r_31__21_, s_r_31__20_, s_r_31__19_, s_r_31__18_, s_r_31__17_, s_r_31__16_, s_r_31__15_, s_r_31__14_, s_r_31__13_, s_r_31__12_, s_r_31__11_, s_r_31__10_, s_r_31__9_, s_r_31__8_, s_r_31__7_, s_r_31__6_, s_r_31__5_, s_r_31__4_, s_r_31__3_, s_r_31__2_, s_r_31__1_, s_r_31__0_ }),
    .c_i(c_r[31]),
    .prod_accum_i({ prod_accum_31__32_, prod_accum_31__31_, prod_accum_31__30_, prod_accum_31__29_, prod_accum_31__28_, prod_accum_31__27_, prod_accum_31__26_, prod_accum_31__25_, prod_accum_31__24_, prod_accum_31__23_, prod_accum_31__22_, prod_accum_31__21_, prod_accum_31__20_, prod_accum_31__19_, prod_accum_31__18_, prod_accum_31__17_, prod_accum_31__16_, prod_accum_31__15_, prod_accum_31__14_, prod_accum_31__13_, prod_accum_31__12_, prod_accum_31__11_, prod_accum_31__10_, prod_accum_31__9_, prod_accum_31__8_, prod_accum_31__7_, prod_accum_31__6_, prod_accum_31__5_, prod_accum_31__4_, prod_accum_31__3_, prod_accum_31__2_, prod_accum_31__1_, prod_accum_31__0_ }),
    .a_o(a_r[2111:2048]),
    .b_o(b_r[2111:2048]),
    .s_o({ s_r_32__63_, s_r_32__62_, s_r_32__61_, s_r_32__60_, s_r_32__59_, s_r_32__58_, s_r_32__57_, s_r_32__56_, s_r_32__55_, s_r_32__54_, s_r_32__53_, s_r_32__52_, s_r_32__51_, s_r_32__50_, s_r_32__49_, s_r_32__48_, s_r_32__47_, s_r_32__46_, s_r_32__45_, s_r_32__44_, s_r_32__43_, s_r_32__42_, s_r_32__41_, s_r_32__40_, s_r_32__39_, s_r_32__38_, s_r_32__37_, s_r_32__36_, s_r_32__35_, s_r_32__34_, s_r_32__33_, s_r_32__32_, s_r_32__31_, s_r_32__30_, s_r_32__29_, s_r_32__28_, s_r_32__27_, s_r_32__26_, s_r_32__25_, s_r_32__24_, s_r_32__23_, s_r_32__22_, s_r_32__21_, s_r_32__20_, s_r_32__19_, s_r_32__18_, s_r_32__17_, s_r_32__16_, s_r_32__15_, s_r_32__14_, s_r_32__13_, s_r_32__12_, s_r_32__11_, s_r_32__10_, s_r_32__9_, s_r_32__8_, s_r_32__7_, s_r_32__6_, s_r_32__5_, s_r_32__4_, s_r_32__3_, s_r_32__2_, s_r_32__1_, s_r_32__0_ }),
    .c_o(c_r[32]),
    .prod_accum_o({ prod_accum_32__33_, prod_accum_32__32_, prod_accum_32__31_, prod_accum_32__30_, prod_accum_32__29_, prod_accum_32__28_, prod_accum_32__27_, prod_accum_32__26_, prod_accum_32__25_, prod_accum_32__24_, prod_accum_32__23_, prod_accum_32__22_, prod_accum_32__21_, prod_accum_32__20_, prod_accum_32__19_, prod_accum_32__18_, prod_accum_32__17_, prod_accum_32__16_, prod_accum_32__15_, prod_accum_32__14_, prod_accum_32__13_, prod_accum_32__12_, prod_accum_32__11_, prod_accum_32__10_, prod_accum_32__9_, prod_accum_32__8_, prod_accum_32__7_, prod_accum_32__6_, prod_accum_32__5_, prod_accum_32__4_, prod_accum_32__3_, prod_accum_32__2_, prod_accum_32__1_, prod_accum_32__0_ })
  );


  bsg_mul_array_row_64_33_x
  genblk1_33__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2111:2048]),
    .b_i(b_r[2111:2048]),
    .s_i({ s_r_32__63_, s_r_32__62_, s_r_32__61_, s_r_32__60_, s_r_32__59_, s_r_32__58_, s_r_32__57_, s_r_32__56_, s_r_32__55_, s_r_32__54_, s_r_32__53_, s_r_32__52_, s_r_32__51_, s_r_32__50_, s_r_32__49_, s_r_32__48_, s_r_32__47_, s_r_32__46_, s_r_32__45_, s_r_32__44_, s_r_32__43_, s_r_32__42_, s_r_32__41_, s_r_32__40_, s_r_32__39_, s_r_32__38_, s_r_32__37_, s_r_32__36_, s_r_32__35_, s_r_32__34_, s_r_32__33_, s_r_32__32_, s_r_32__31_, s_r_32__30_, s_r_32__29_, s_r_32__28_, s_r_32__27_, s_r_32__26_, s_r_32__25_, s_r_32__24_, s_r_32__23_, s_r_32__22_, s_r_32__21_, s_r_32__20_, s_r_32__19_, s_r_32__18_, s_r_32__17_, s_r_32__16_, s_r_32__15_, s_r_32__14_, s_r_32__13_, s_r_32__12_, s_r_32__11_, s_r_32__10_, s_r_32__9_, s_r_32__8_, s_r_32__7_, s_r_32__6_, s_r_32__5_, s_r_32__4_, s_r_32__3_, s_r_32__2_, s_r_32__1_, s_r_32__0_ }),
    .c_i(c_r[32]),
    .prod_accum_i({ prod_accum_32__33_, prod_accum_32__32_, prod_accum_32__31_, prod_accum_32__30_, prod_accum_32__29_, prod_accum_32__28_, prod_accum_32__27_, prod_accum_32__26_, prod_accum_32__25_, prod_accum_32__24_, prod_accum_32__23_, prod_accum_32__22_, prod_accum_32__21_, prod_accum_32__20_, prod_accum_32__19_, prod_accum_32__18_, prod_accum_32__17_, prod_accum_32__16_, prod_accum_32__15_, prod_accum_32__14_, prod_accum_32__13_, prod_accum_32__12_, prod_accum_32__11_, prod_accum_32__10_, prod_accum_32__9_, prod_accum_32__8_, prod_accum_32__7_, prod_accum_32__6_, prod_accum_32__5_, prod_accum_32__4_, prod_accum_32__3_, prod_accum_32__2_, prod_accum_32__1_, prod_accum_32__0_ }),
    .a_o(a_r[2175:2112]),
    .b_o(b_r[2175:2112]),
    .s_o({ s_r_33__63_, s_r_33__62_, s_r_33__61_, s_r_33__60_, s_r_33__59_, s_r_33__58_, s_r_33__57_, s_r_33__56_, s_r_33__55_, s_r_33__54_, s_r_33__53_, s_r_33__52_, s_r_33__51_, s_r_33__50_, s_r_33__49_, s_r_33__48_, s_r_33__47_, s_r_33__46_, s_r_33__45_, s_r_33__44_, s_r_33__43_, s_r_33__42_, s_r_33__41_, s_r_33__40_, s_r_33__39_, s_r_33__38_, s_r_33__37_, s_r_33__36_, s_r_33__35_, s_r_33__34_, s_r_33__33_, s_r_33__32_, s_r_33__31_, s_r_33__30_, s_r_33__29_, s_r_33__28_, s_r_33__27_, s_r_33__26_, s_r_33__25_, s_r_33__24_, s_r_33__23_, s_r_33__22_, s_r_33__21_, s_r_33__20_, s_r_33__19_, s_r_33__18_, s_r_33__17_, s_r_33__16_, s_r_33__15_, s_r_33__14_, s_r_33__13_, s_r_33__12_, s_r_33__11_, s_r_33__10_, s_r_33__9_, s_r_33__8_, s_r_33__7_, s_r_33__6_, s_r_33__5_, s_r_33__4_, s_r_33__3_, s_r_33__2_, s_r_33__1_, s_r_33__0_ }),
    .c_o(c_r[33]),
    .prod_accum_o({ prod_accum_33__34_, prod_accum_33__33_, prod_accum_33__32_, prod_accum_33__31_, prod_accum_33__30_, prod_accum_33__29_, prod_accum_33__28_, prod_accum_33__27_, prod_accum_33__26_, prod_accum_33__25_, prod_accum_33__24_, prod_accum_33__23_, prod_accum_33__22_, prod_accum_33__21_, prod_accum_33__20_, prod_accum_33__19_, prod_accum_33__18_, prod_accum_33__17_, prod_accum_33__16_, prod_accum_33__15_, prod_accum_33__14_, prod_accum_33__13_, prod_accum_33__12_, prod_accum_33__11_, prod_accum_33__10_, prod_accum_33__9_, prod_accum_33__8_, prod_accum_33__7_, prod_accum_33__6_, prod_accum_33__5_, prod_accum_33__4_, prod_accum_33__3_, prod_accum_33__2_, prod_accum_33__1_, prod_accum_33__0_ })
  );


  bsg_mul_array_row_64_34_x
  genblk1_34__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2175:2112]),
    .b_i(b_r[2175:2112]),
    .s_i({ s_r_33__63_, s_r_33__62_, s_r_33__61_, s_r_33__60_, s_r_33__59_, s_r_33__58_, s_r_33__57_, s_r_33__56_, s_r_33__55_, s_r_33__54_, s_r_33__53_, s_r_33__52_, s_r_33__51_, s_r_33__50_, s_r_33__49_, s_r_33__48_, s_r_33__47_, s_r_33__46_, s_r_33__45_, s_r_33__44_, s_r_33__43_, s_r_33__42_, s_r_33__41_, s_r_33__40_, s_r_33__39_, s_r_33__38_, s_r_33__37_, s_r_33__36_, s_r_33__35_, s_r_33__34_, s_r_33__33_, s_r_33__32_, s_r_33__31_, s_r_33__30_, s_r_33__29_, s_r_33__28_, s_r_33__27_, s_r_33__26_, s_r_33__25_, s_r_33__24_, s_r_33__23_, s_r_33__22_, s_r_33__21_, s_r_33__20_, s_r_33__19_, s_r_33__18_, s_r_33__17_, s_r_33__16_, s_r_33__15_, s_r_33__14_, s_r_33__13_, s_r_33__12_, s_r_33__11_, s_r_33__10_, s_r_33__9_, s_r_33__8_, s_r_33__7_, s_r_33__6_, s_r_33__5_, s_r_33__4_, s_r_33__3_, s_r_33__2_, s_r_33__1_, s_r_33__0_ }),
    .c_i(c_r[33]),
    .prod_accum_i({ prod_accum_33__34_, prod_accum_33__33_, prod_accum_33__32_, prod_accum_33__31_, prod_accum_33__30_, prod_accum_33__29_, prod_accum_33__28_, prod_accum_33__27_, prod_accum_33__26_, prod_accum_33__25_, prod_accum_33__24_, prod_accum_33__23_, prod_accum_33__22_, prod_accum_33__21_, prod_accum_33__20_, prod_accum_33__19_, prod_accum_33__18_, prod_accum_33__17_, prod_accum_33__16_, prod_accum_33__15_, prod_accum_33__14_, prod_accum_33__13_, prod_accum_33__12_, prod_accum_33__11_, prod_accum_33__10_, prod_accum_33__9_, prod_accum_33__8_, prod_accum_33__7_, prod_accum_33__6_, prod_accum_33__5_, prod_accum_33__4_, prod_accum_33__3_, prod_accum_33__2_, prod_accum_33__1_, prod_accum_33__0_ }),
    .a_o(a_r[2239:2176]),
    .b_o(b_r[2239:2176]),
    .s_o({ s_r_34__63_, s_r_34__62_, s_r_34__61_, s_r_34__60_, s_r_34__59_, s_r_34__58_, s_r_34__57_, s_r_34__56_, s_r_34__55_, s_r_34__54_, s_r_34__53_, s_r_34__52_, s_r_34__51_, s_r_34__50_, s_r_34__49_, s_r_34__48_, s_r_34__47_, s_r_34__46_, s_r_34__45_, s_r_34__44_, s_r_34__43_, s_r_34__42_, s_r_34__41_, s_r_34__40_, s_r_34__39_, s_r_34__38_, s_r_34__37_, s_r_34__36_, s_r_34__35_, s_r_34__34_, s_r_34__33_, s_r_34__32_, s_r_34__31_, s_r_34__30_, s_r_34__29_, s_r_34__28_, s_r_34__27_, s_r_34__26_, s_r_34__25_, s_r_34__24_, s_r_34__23_, s_r_34__22_, s_r_34__21_, s_r_34__20_, s_r_34__19_, s_r_34__18_, s_r_34__17_, s_r_34__16_, s_r_34__15_, s_r_34__14_, s_r_34__13_, s_r_34__12_, s_r_34__11_, s_r_34__10_, s_r_34__9_, s_r_34__8_, s_r_34__7_, s_r_34__6_, s_r_34__5_, s_r_34__4_, s_r_34__3_, s_r_34__2_, s_r_34__1_, s_r_34__0_ }),
    .c_o(c_r[34]),
    .prod_accum_o({ prod_accum_34__35_, prod_accum_34__34_, prod_accum_34__33_, prod_accum_34__32_, prod_accum_34__31_, prod_accum_34__30_, prod_accum_34__29_, prod_accum_34__28_, prod_accum_34__27_, prod_accum_34__26_, prod_accum_34__25_, prod_accum_34__24_, prod_accum_34__23_, prod_accum_34__22_, prod_accum_34__21_, prod_accum_34__20_, prod_accum_34__19_, prod_accum_34__18_, prod_accum_34__17_, prod_accum_34__16_, prod_accum_34__15_, prod_accum_34__14_, prod_accum_34__13_, prod_accum_34__12_, prod_accum_34__11_, prod_accum_34__10_, prod_accum_34__9_, prod_accum_34__8_, prod_accum_34__7_, prod_accum_34__6_, prod_accum_34__5_, prod_accum_34__4_, prod_accum_34__3_, prod_accum_34__2_, prod_accum_34__1_, prod_accum_34__0_ })
  );


  bsg_mul_array_row_64_35_x
  genblk1_35__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2239:2176]),
    .b_i(b_r[2239:2176]),
    .s_i({ s_r_34__63_, s_r_34__62_, s_r_34__61_, s_r_34__60_, s_r_34__59_, s_r_34__58_, s_r_34__57_, s_r_34__56_, s_r_34__55_, s_r_34__54_, s_r_34__53_, s_r_34__52_, s_r_34__51_, s_r_34__50_, s_r_34__49_, s_r_34__48_, s_r_34__47_, s_r_34__46_, s_r_34__45_, s_r_34__44_, s_r_34__43_, s_r_34__42_, s_r_34__41_, s_r_34__40_, s_r_34__39_, s_r_34__38_, s_r_34__37_, s_r_34__36_, s_r_34__35_, s_r_34__34_, s_r_34__33_, s_r_34__32_, s_r_34__31_, s_r_34__30_, s_r_34__29_, s_r_34__28_, s_r_34__27_, s_r_34__26_, s_r_34__25_, s_r_34__24_, s_r_34__23_, s_r_34__22_, s_r_34__21_, s_r_34__20_, s_r_34__19_, s_r_34__18_, s_r_34__17_, s_r_34__16_, s_r_34__15_, s_r_34__14_, s_r_34__13_, s_r_34__12_, s_r_34__11_, s_r_34__10_, s_r_34__9_, s_r_34__8_, s_r_34__7_, s_r_34__6_, s_r_34__5_, s_r_34__4_, s_r_34__3_, s_r_34__2_, s_r_34__1_, s_r_34__0_ }),
    .c_i(c_r[34]),
    .prod_accum_i({ prod_accum_34__35_, prod_accum_34__34_, prod_accum_34__33_, prod_accum_34__32_, prod_accum_34__31_, prod_accum_34__30_, prod_accum_34__29_, prod_accum_34__28_, prod_accum_34__27_, prod_accum_34__26_, prod_accum_34__25_, prod_accum_34__24_, prod_accum_34__23_, prod_accum_34__22_, prod_accum_34__21_, prod_accum_34__20_, prod_accum_34__19_, prod_accum_34__18_, prod_accum_34__17_, prod_accum_34__16_, prod_accum_34__15_, prod_accum_34__14_, prod_accum_34__13_, prod_accum_34__12_, prod_accum_34__11_, prod_accum_34__10_, prod_accum_34__9_, prod_accum_34__8_, prod_accum_34__7_, prod_accum_34__6_, prod_accum_34__5_, prod_accum_34__4_, prod_accum_34__3_, prod_accum_34__2_, prod_accum_34__1_, prod_accum_34__0_ }),
    .a_o(a_r[2303:2240]),
    .b_o(b_r[2303:2240]),
    .s_o({ s_r_35__63_, s_r_35__62_, s_r_35__61_, s_r_35__60_, s_r_35__59_, s_r_35__58_, s_r_35__57_, s_r_35__56_, s_r_35__55_, s_r_35__54_, s_r_35__53_, s_r_35__52_, s_r_35__51_, s_r_35__50_, s_r_35__49_, s_r_35__48_, s_r_35__47_, s_r_35__46_, s_r_35__45_, s_r_35__44_, s_r_35__43_, s_r_35__42_, s_r_35__41_, s_r_35__40_, s_r_35__39_, s_r_35__38_, s_r_35__37_, s_r_35__36_, s_r_35__35_, s_r_35__34_, s_r_35__33_, s_r_35__32_, s_r_35__31_, s_r_35__30_, s_r_35__29_, s_r_35__28_, s_r_35__27_, s_r_35__26_, s_r_35__25_, s_r_35__24_, s_r_35__23_, s_r_35__22_, s_r_35__21_, s_r_35__20_, s_r_35__19_, s_r_35__18_, s_r_35__17_, s_r_35__16_, s_r_35__15_, s_r_35__14_, s_r_35__13_, s_r_35__12_, s_r_35__11_, s_r_35__10_, s_r_35__9_, s_r_35__8_, s_r_35__7_, s_r_35__6_, s_r_35__5_, s_r_35__4_, s_r_35__3_, s_r_35__2_, s_r_35__1_, s_r_35__0_ }),
    .c_o(c_r[35]),
    .prod_accum_o({ prod_accum_35__36_, prod_accum_35__35_, prod_accum_35__34_, prod_accum_35__33_, prod_accum_35__32_, prod_accum_35__31_, prod_accum_35__30_, prod_accum_35__29_, prod_accum_35__28_, prod_accum_35__27_, prod_accum_35__26_, prod_accum_35__25_, prod_accum_35__24_, prod_accum_35__23_, prod_accum_35__22_, prod_accum_35__21_, prod_accum_35__20_, prod_accum_35__19_, prod_accum_35__18_, prod_accum_35__17_, prod_accum_35__16_, prod_accum_35__15_, prod_accum_35__14_, prod_accum_35__13_, prod_accum_35__12_, prod_accum_35__11_, prod_accum_35__10_, prod_accum_35__9_, prod_accum_35__8_, prod_accum_35__7_, prod_accum_35__6_, prod_accum_35__5_, prod_accum_35__4_, prod_accum_35__3_, prod_accum_35__2_, prod_accum_35__1_, prod_accum_35__0_ })
  );


  bsg_mul_array_row_64_36_x
  genblk1_36__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2303:2240]),
    .b_i(b_r[2303:2240]),
    .s_i({ s_r_35__63_, s_r_35__62_, s_r_35__61_, s_r_35__60_, s_r_35__59_, s_r_35__58_, s_r_35__57_, s_r_35__56_, s_r_35__55_, s_r_35__54_, s_r_35__53_, s_r_35__52_, s_r_35__51_, s_r_35__50_, s_r_35__49_, s_r_35__48_, s_r_35__47_, s_r_35__46_, s_r_35__45_, s_r_35__44_, s_r_35__43_, s_r_35__42_, s_r_35__41_, s_r_35__40_, s_r_35__39_, s_r_35__38_, s_r_35__37_, s_r_35__36_, s_r_35__35_, s_r_35__34_, s_r_35__33_, s_r_35__32_, s_r_35__31_, s_r_35__30_, s_r_35__29_, s_r_35__28_, s_r_35__27_, s_r_35__26_, s_r_35__25_, s_r_35__24_, s_r_35__23_, s_r_35__22_, s_r_35__21_, s_r_35__20_, s_r_35__19_, s_r_35__18_, s_r_35__17_, s_r_35__16_, s_r_35__15_, s_r_35__14_, s_r_35__13_, s_r_35__12_, s_r_35__11_, s_r_35__10_, s_r_35__9_, s_r_35__8_, s_r_35__7_, s_r_35__6_, s_r_35__5_, s_r_35__4_, s_r_35__3_, s_r_35__2_, s_r_35__1_, s_r_35__0_ }),
    .c_i(c_r[35]),
    .prod_accum_i({ prod_accum_35__36_, prod_accum_35__35_, prod_accum_35__34_, prod_accum_35__33_, prod_accum_35__32_, prod_accum_35__31_, prod_accum_35__30_, prod_accum_35__29_, prod_accum_35__28_, prod_accum_35__27_, prod_accum_35__26_, prod_accum_35__25_, prod_accum_35__24_, prod_accum_35__23_, prod_accum_35__22_, prod_accum_35__21_, prod_accum_35__20_, prod_accum_35__19_, prod_accum_35__18_, prod_accum_35__17_, prod_accum_35__16_, prod_accum_35__15_, prod_accum_35__14_, prod_accum_35__13_, prod_accum_35__12_, prod_accum_35__11_, prod_accum_35__10_, prod_accum_35__9_, prod_accum_35__8_, prod_accum_35__7_, prod_accum_35__6_, prod_accum_35__5_, prod_accum_35__4_, prod_accum_35__3_, prod_accum_35__2_, prod_accum_35__1_, prod_accum_35__0_ }),
    .a_o(a_r[2367:2304]),
    .b_o(b_r[2367:2304]),
    .s_o({ s_r_36__63_, s_r_36__62_, s_r_36__61_, s_r_36__60_, s_r_36__59_, s_r_36__58_, s_r_36__57_, s_r_36__56_, s_r_36__55_, s_r_36__54_, s_r_36__53_, s_r_36__52_, s_r_36__51_, s_r_36__50_, s_r_36__49_, s_r_36__48_, s_r_36__47_, s_r_36__46_, s_r_36__45_, s_r_36__44_, s_r_36__43_, s_r_36__42_, s_r_36__41_, s_r_36__40_, s_r_36__39_, s_r_36__38_, s_r_36__37_, s_r_36__36_, s_r_36__35_, s_r_36__34_, s_r_36__33_, s_r_36__32_, s_r_36__31_, s_r_36__30_, s_r_36__29_, s_r_36__28_, s_r_36__27_, s_r_36__26_, s_r_36__25_, s_r_36__24_, s_r_36__23_, s_r_36__22_, s_r_36__21_, s_r_36__20_, s_r_36__19_, s_r_36__18_, s_r_36__17_, s_r_36__16_, s_r_36__15_, s_r_36__14_, s_r_36__13_, s_r_36__12_, s_r_36__11_, s_r_36__10_, s_r_36__9_, s_r_36__8_, s_r_36__7_, s_r_36__6_, s_r_36__5_, s_r_36__4_, s_r_36__3_, s_r_36__2_, s_r_36__1_, s_r_36__0_ }),
    .c_o(c_r[36]),
    .prod_accum_o({ prod_accum_36__37_, prod_accum_36__36_, prod_accum_36__35_, prod_accum_36__34_, prod_accum_36__33_, prod_accum_36__32_, prod_accum_36__31_, prod_accum_36__30_, prod_accum_36__29_, prod_accum_36__28_, prod_accum_36__27_, prod_accum_36__26_, prod_accum_36__25_, prod_accum_36__24_, prod_accum_36__23_, prod_accum_36__22_, prod_accum_36__21_, prod_accum_36__20_, prod_accum_36__19_, prod_accum_36__18_, prod_accum_36__17_, prod_accum_36__16_, prod_accum_36__15_, prod_accum_36__14_, prod_accum_36__13_, prod_accum_36__12_, prod_accum_36__11_, prod_accum_36__10_, prod_accum_36__9_, prod_accum_36__8_, prod_accum_36__7_, prod_accum_36__6_, prod_accum_36__5_, prod_accum_36__4_, prod_accum_36__3_, prod_accum_36__2_, prod_accum_36__1_, prod_accum_36__0_ })
  );


  bsg_mul_array_row_64_37_x
  genblk1_37__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2367:2304]),
    .b_i(b_r[2367:2304]),
    .s_i({ s_r_36__63_, s_r_36__62_, s_r_36__61_, s_r_36__60_, s_r_36__59_, s_r_36__58_, s_r_36__57_, s_r_36__56_, s_r_36__55_, s_r_36__54_, s_r_36__53_, s_r_36__52_, s_r_36__51_, s_r_36__50_, s_r_36__49_, s_r_36__48_, s_r_36__47_, s_r_36__46_, s_r_36__45_, s_r_36__44_, s_r_36__43_, s_r_36__42_, s_r_36__41_, s_r_36__40_, s_r_36__39_, s_r_36__38_, s_r_36__37_, s_r_36__36_, s_r_36__35_, s_r_36__34_, s_r_36__33_, s_r_36__32_, s_r_36__31_, s_r_36__30_, s_r_36__29_, s_r_36__28_, s_r_36__27_, s_r_36__26_, s_r_36__25_, s_r_36__24_, s_r_36__23_, s_r_36__22_, s_r_36__21_, s_r_36__20_, s_r_36__19_, s_r_36__18_, s_r_36__17_, s_r_36__16_, s_r_36__15_, s_r_36__14_, s_r_36__13_, s_r_36__12_, s_r_36__11_, s_r_36__10_, s_r_36__9_, s_r_36__8_, s_r_36__7_, s_r_36__6_, s_r_36__5_, s_r_36__4_, s_r_36__3_, s_r_36__2_, s_r_36__1_, s_r_36__0_ }),
    .c_i(c_r[36]),
    .prod_accum_i({ prod_accum_36__37_, prod_accum_36__36_, prod_accum_36__35_, prod_accum_36__34_, prod_accum_36__33_, prod_accum_36__32_, prod_accum_36__31_, prod_accum_36__30_, prod_accum_36__29_, prod_accum_36__28_, prod_accum_36__27_, prod_accum_36__26_, prod_accum_36__25_, prod_accum_36__24_, prod_accum_36__23_, prod_accum_36__22_, prod_accum_36__21_, prod_accum_36__20_, prod_accum_36__19_, prod_accum_36__18_, prod_accum_36__17_, prod_accum_36__16_, prod_accum_36__15_, prod_accum_36__14_, prod_accum_36__13_, prod_accum_36__12_, prod_accum_36__11_, prod_accum_36__10_, prod_accum_36__9_, prod_accum_36__8_, prod_accum_36__7_, prod_accum_36__6_, prod_accum_36__5_, prod_accum_36__4_, prod_accum_36__3_, prod_accum_36__2_, prod_accum_36__1_, prod_accum_36__0_ }),
    .a_o(a_r[2431:2368]),
    .b_o(b_r[2431:2368]),
    .s_o({ s_r_37__63_, s_r_37__62_, s_r_37__61_, s_r_37__60_, s_r_37__59_, s_r_37__58_, s_r_37__57_, s_r_37__56_, s_r_37__55_, s_r_37__54_, s_r_37__53_, s_r_37__52_, s_r_37__51_, s_r_37__50_, s_r_37__49_, s_r_37__48_, s_r_37__47_, s_r_37__46_, s_r_37__45_, s_r_37__44_, s_r_37__43_, s_r_37__42_, s_r_37__41_, s_r_37__40_, s_r_37__39_, s_r_37__38_, s_r_37__37_, s_r_37__36_, s_r_37__35_, s_r_37__34_, s_r_37__33_, s_r_37__32_, s_r_37__31_, s_r_37__30_, s_r_37__29_, s_r_37__28_, s_r_37__27_, s_r_37__26_, s_r_37__25_, s_r_37__24_, s_r_37__23_, s_r_37__22_, s_r_37__21_, s_r_37__20_, s_r_37__19_, s_r_37__18_, s_r_37__17_, s_r_37__16_, s_r_37__15_, s_r_37__14_, s_r_37__13_, s_r_37__12_, s_r_37__11_, s_r_37__10_, s_r_37__9_, s_r_37__8_, s_r_37__7_, s_r_37__6_, s_r_37__5_, s_r_37__4_, s_r_37__3_, s_r_37__2_, s_r_37__1_, s_r_37__0_ }),
    .c_o(c_r[37]),
    .prod_accum_o({ prod_accum_37__38_, prod_accum_37__37_, prod_accum_37__36_, prod_accum_37__35_, prod_accum_37__34_, prod_accum_37__33_, prod_accum_37__32_, prod_accum_37__31_, prod_accum_37__30_, prod_accum_37__29_, prod_accum_37__28_, prod_accum_37__27_, prod_accum_37__26_, prod_accum_37__25_, prod_accum_37__24_, prod_accum_37__23_, prod_accum_37__22_, prod_accum_37__21_, prod_accum_37__20_, prod_accum_37__19_, prod_accum_37__18_, prod_accum_37__17_, prod_accum_37__16_, prod_accum_37__15_, prod_accum_37__14_, prod_accum_37__13_, prod_accum_37__12_, prod_accum_37__11_, prod_accum_37__10_, prod_accum_37__9_, prod_accum_37__8_, prod_accum_37__7_, prod_accum_37__6_, prod_accum_37__5_, prod_accum_37__4_, prod_accum_37__3_, prod_accum_37__2_, prod_accum_37__1_, prod_accum_37__0_ })
  );


  bsg_mul_array_row_64_38_x
  genblk1_38__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2431:2368]),
    .b_i(b_r[2431:2368]),
    .s_i({ s_r_37__63_, s_r_37__62_, s_r_37__61_, s_r_37__60_, s_r_37__59_, s_r_37__58_, s_r_37__57_, s_r_37__56_, s_r_37__55_, s_r_37__54_, s_r_37__53_, s_r_37__52_, s_r_37__51_, s_r_37__50_, s_r_37__49_, s_r_37__48_, s_r_37__47_, s_r_37__46_, s_r_37__45_, s_r_37__44_, s_r_37__43_, s_r_37__42_, s_r_37__41_, s_r_37__40_, s_r_37__39_, s_r_37__38_, s_r_37__37_, s_r_37__36_, s_r_37__35_, s_r_37__34_, s_r_37__33_, s_r_37__32_, s_r_37__31_, s_r_37__30_, s_r_37__29_, s_r_37__28_, s_r_37__27_, s_r_37__26_, s_r_37__25_, s_r_37__24_, s_r_37__23_, s_r_37__22_, s_r_37__21_, s_r_37__20_, s_r_37__19_, s_r_37__18_, s_r_37__17_, s_r_37__16_, s_r_37__15_, s_r_37__14_, s_r_37__13_, s_r_37__12_, s_r_37__11_, s_r_37__10_, s_r_37__9_, s_r_37__8_, s_r_37__7_, s_r_37__6_, s_r_37__5_, s_r_37__4_, s_r_37__3_, s_r_37__2_, s_r_37__1_, s_r_37__0_ }),
    .c_i(c_r[37]),
    .prod_accum_i({ prod_accum_37__38_, prod_accum_37__37_, prod_accum_37__36_, prod_accum_37__35_, prod_accum_37__34_, prod_accum_37__33_, prod_accum_37__32_, prod_accum_37__31_, prod_accum_37__30_, prod_accum_37__29_, prod_accum_37__28_, prod_accum_37__27_, prod_accum_37__26_, prod_accum_37__25_, prod_accum_37__24_, prod_accum_37__23_, prod_accum_37__22_, prod_accum_37__21_, prod_accum_37__20_, prod_accum_37__19_, prod_accum_37__18_, prod_accum_37__17_, prod_accum_37__16_, prod_accum_37__15_, prod_accum_37__14_, prod_accum_37__13_, prod_accum_37__12_, prod_accum_37__11_, prod_accum_37__10_, prod_accum_37__9_, prod_accum_37__8_, prod_accum_37__7_, prod_accum_37__6_, prod_accum_37__5_, prod_accum_37__4_, prod_accum_37__3_, prod_accum_37__2_, prod_accum_37__1_, prod_accum_37__0_ }),
    .a_o(a_r[2495:2432]),
    .b_o(b_r[2495:2432]),
    .s_o({ s_r_38__63_, s_r_38__62_, s_r_38__61_, s_r_38__60_, s_r_38__59_, s_r_38__58_, s_r_38__57_, s_r_38__56_, s_r_38__55_, s_r_38__54_, s_r_38__53_, s_r_38__52_, s_r_38__51_, s_r_38__50_, s_r_38__49_, s_r_38__48_, s_r_38__47_, s_r_38__46_, s_r_38__45_, s_r_38__44_, s_r_38__43_, s_r_38__42_, s_r_38__41_, s_r_38__40_, s_r_38__39_, s_r_38__38_, s_r_38__37_, s_r_38__36_, s_r_38__35_, s_r_38__34_, s_r_38__33_, s_r_38__32_, s_r_38__31_, s_r_38__30_, s_r_38__29_, s_r_38__28_, s_r_38__27_, s_r_38__26_, s_r_38__25_, s_r_38__24_, s_r_38__23_, s_r_38__22_, s_r_38__21_, s_r_38__20_, s_r_38__19_, s_r_38__18_, s_r_38__17_, s_r_38__16_, s_r_38__15_, s_r_38__14_, s_r_38__13_, s_r_38__12_, s_r_38__11_, s_r_38__10_, s_r_38__9_, s_r_38__8_, s_r_38__7_, s_r_38__6_, s_r_38__5_, s_r_38__4_, s_r_38__3_, s_r_38__2_, s_r_38__1_, s_r_38__0_ }),
    .c_o(c_r[38]),
    .prod_accum_o({ prod_accum_38__39_, prod_accum_38__38_, prod_accum_38__37_, prod_accum_38__36_, prod_accum_38__35_, prod_accum_38__34_, prod_accum_38__33_, prod_accum_38__32_, prod_accum_38__31_, prod_accum_38__30_, prod_accum_38__29_, prod_accum_38__28_, prod_accum_38__27_, prod_accum_38__26_, prod_accum_38__25_, prod_accum_38__24_, prod_accum_38__23_, prod_accum_38__22_, prod_accum_38__21_, prod_accum_38__20_, prod_accum_38__19_, prod_accum_38__18_, prod_accum_38__17_, prod_accum_38__16_, prod_accum_38__15_, prod_accum_38__14_, prod_accum_38__13_, prod_accum_38__12_, prod_accum_38__11_, prod_accum_38__10_, prod_accum_38__9_, prod_accum_38__8_, prod_accum_38__7_, prod_accum_38__6_, prod_accum_38__5_, prod_accum_38__4_, prod_accum_38__3_, prod_accum_38__2_, prod_accum_38__1_, prod_accum_38__0_ })
  );


  bsg_mul_array_row_64_39_x
  genblk1_39__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2495:2432]),
    .b_i(b_r[2495:2432]),
    .s_i({ s_r_38__63_, s_r_38__62_, s_r_38__61_, s_r_38__60_, s_r_38__59_, s_r_38__58_, s_r_38__57_, s_r_38__56_, s_r_38__55_, s_r_38__54_, s_r_38__53_, s_r_38__52_, s_r_38__51_, s_r_38__50_, s_r_38__49_, s_r_38__48_, s_r_38__47_, s_r_38__46_, s_r_38__45_, s_r_38__44_, s_r_38__43_, s_r_38__42_, s_r_38__41_, s_r_38__40_, s_r_38__39_, s_r_38__38_, s_r_38__37_, s_r_38__36_, s_r_38__35_, s_r_38__34_, s_r_38__33_, s_r_38__32_, s_r_38__31_, s_r_38__30_, s_r_38__29_, s_r_38__28_, s_r_38__27_, s_r_38__26_, s_r_38__25_, s_r_38__24_, s_r_38__23_, s_r_38__22_, s_r_38__21_, s_r_38__20_, s_r_38__19_, s_r_38__18_, s_r_38__17_, s_r_38__16_, s_r_38__15_, s_r_38__14_, s_r_38__13_, s_r_38__12_, s_r_38__11_, s_r_38__10_, s_r_38__9_, s_r_38__8_, s_r_38__7_, s_r_38__6_, s_r_38__5_, s_r_38__4_, s_r_38__3_, s_r_38__2_, s_r_38__1_, s_r_38__0_ }),
    .c_i(c_r[38]),
    .prod_accum_i({ prod_accum_38__39_, prod_accum_38__38_, prod_accum_38__37_, prod_accum_38__36_, prod_accum_38__35_, prod_accum_38__34_, prod_accum_38__33_, prod_accum_38__32_, prod_accum_38__31_, prod_accum_38__30_, prod_accum_38__29_, prod_accum_38__28_, prod_accum_38__27_, prod_accum_38__26_, prod_accum_38__25_, prod_accum_38__24_, prod_accum_38__23_, prod_accum_38__22_, prod_accum_38__21_, prod_accum_38__20_, prod_accum_38__19_, prod_accum_38__18_, prod_accum_38__17_, prod_accum_38__16_, prod_accum_38__15_, prod_accum_38__14_, prod_accum_38__13_, prod_accum_38__12_, prod_accum_38__11_, prod_accum_38__10_, prod_accum_38__9_, prod_accum_38__8_, prod_accum_38__7_, prod_accum_38__6_, prod_accum_38__5_, prod_accum_38__4_, prod_accum_38__3_, prod_accum_38__2_, prod_accum_38__1_, prod_accum_38__0_ }),
    .a_o(a_r[2559:2496]),
    .b_o(b_r[2559:2496]),
    .s_o({ s_r_39__63_, s_r_39__62_, s_r_39__61_, s_r_39__60_, s_r_39__59_, s_r_39__58_, s_r_39__57_, s_r_39__56_, s_r_39__55_, s_r_39__54_, s_r_39__53_, s_r_39__52_, s_r_39__51_, s_r_39__50_, s_r_39__49_, s_r_39__48_, s_r_39__47_, s_r_39__46_, s_r_39__45_, s_r_39__44_, s_r_39__43_, s_r_39__42_, s_r_39__41_, s_r_39__40_, s_r_39__39_, s_r_39__38_, s_r_39__37_, s_r_39__36_, s_r_39__35_, s_r_39__34_, s_r_39__33_, s_r_39__32_, s_r_39__31_, s_r_39__30_, s_r_39__29_, s_r_39__28_, s_r_39__27_, s_r_39__26_, s_r_39__25_, s_r_39__24_, s_r_39__23_, s_r_39__22_, s_r_39__21_, s_r_39__20_, s_r_39__19_, s_r_39__18_, s_r_39__17_, s_r_39__16_, s_r_39__15_, s_r_39__14_, s_r_39__13_, s_r_39__12_, s_r_39__11_, s_r_39__10_, s_r_39__9_, s_r_39__8_, s_r_39__7_, s_r_39__6_, s_r_39__5_, s_r_39__4_, s_r_39__3_, s_r_39__2_, s_r_39__1_, s_r_39__0_ }),
    .c_o(c_r[39]),
    .prod_accum_o({ prod_accum_39__40_, prod_accum_39__39_, prod_accum_39__38_, prod_accum_39__37_, prod_accum_39__36_, prod_accum_39__35_, prod_accum_39__34_, prod_accum_39__33_, prod_accum_39__32_, prod_accum_39__31_, prod_accum_39__30_, prod_accum_39__29_, prod_accum_39__28_, prod_accum_39__27_, prod_accum_39__26_, prod_accum_39__25_, prod_accum_39__24_, prod_accum_39__23_, prod_accum_39__22_, prod_accum_39__21_, prod_accum_39__20_, prod_accum_39__19_, prod_accum_39__18_, prod_accum_39__17_, prod_accum_39__16_, prod_accum_39__15_, prod_accum_39__14_, prod_accum_39__13_, prod_accum_39__12_, prod_accum_39__11_, prod_accum_39__10_, prod_accum_39__9_, prod_accum_39__8_, prod_accum_39__7_, prod_accum_39__6_, prod_accum_39__5_, prod_accum_39__4_, prod_accum_39__3_, prod_accum_39__2_, prod_accum_39__1_, prod_accum_39__0_ })
  );


  bsg_mul_array_row_64_40_x
  genblk1_40__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2559:2496]),
    .b_i(b_r[2559:2496]),
    .s_i({ s_r_39__63_, s_r_39__62_, s_r_39__61_, s_r_39__60_, s_r_39__59_, s_r_39__58_, s_r_39__57_, s_r_39__56_, s_r_39__55_, s_r_39__54_, s_r_39__53_, s_r_39__52_, s_r_39__51_, s_r_39__50_, s_r_39__49_, s_r_39__48_, s_r_39__47_, s_r_39__46_, s_r_39__45_, s_r_39__44_, s_r_39__43_, s_r_39__42_, s_r_39__41_, s_r_39__40_, s_r_39__39_, s_r_39__38_, s_r_39__37_, s_r_39__36_, s_r_39__35_, s_r_39__34_, s_r_39__33_, s_r_39__32_, s_r_39__31_, s_r_39__30_, s_r_39__29_, s_r_39__28_, s_r_39__27_, s_r_39__26_, s_r_39__25_, s_r_39__24_, s_r_39__23_, s_r_39__22_, s_r_39__21_, s_r_39__20_, s_r_39__19_, s_r_39__18_, s_r_39__17_, s_r_39__16_, s_r_39__15_, s_r_39__14_, s_r_39__13_, s_r_39__12_, s_r_39__11_, s_r_39__10_, s_r_39__9_, s_r_39__8_, s_r_39__7_, s_r_39__6_, s_r_39__5_, s_r_39__4_, s_r_39__3_, s_r_39__2_, s_r_39__1_, s_r_39__0_ }),
    .c_i(c_r[39]),
    .prod_accum_i({ prod_accum_39__40_, prod_accum_39__39_, prod_accum_39__38_, prod_accum_39__37_, prod_accum_39__36_, prod_accum_39__35_, prod_accum_39__34_, prod_accum_39__33_, prod_accum_39__32_, prod_accum_39__31_, prod_accum_39__30_, prod_accum_39__29_, prod_accum_39__28_, prod_accum_39__27_, prod_accum_39__26_, prod_accum_39__25_, prod_accum_39__24_, prod_accum_39__23_, prod_accum_39__22_, prod_accum_39__21_, prod_accum_39__20_, prod_accum_39__19_, prod_accum_39__18_, prod_accum_39__17_, prod_accum_39__16_, prod_accum_39__15_, prod_accum_39__14_, prod_accum_39__13_, prod_accum_39__12_, prod_accum_39__11_, prod_accum_39__10_, prod_accum_39__9_, prod_accum_39__8_, prod_accum_39__7_, prod_accum_39__6_, prod_accum_39__5_, prod_accum_39__4_, prod_accum_39__3_, prod_accum_39__2_, prod_accum_39__1_, prod_accum_39__0_ }),
    .a_o(a_r[2623:2560]),
    .b_o(b_r[2623:2560]),
    .s_o({ s_r_40__63_, s_r_40__62_, s_r_40__61_, s_r_40__60_, s_r_40__59_, s_r_40__58_, s_r_40__57_, s_r_40__56_, s_r_40__55_, s_r_40__54_, s_r_40__53_, s_r_40__52_, s_r_40__51_, s_r_40__50_, s_r_40__49_, s_r_40__48_, s_r_40__47_, s_r_40__46_, s_r_40__45_, s_r_40__44_, s_r_40__43_, s_r_40__42_, s_r_40__41_, s_r_40__40_, s_r_40__39_, s_r_40__38_, s_r_40__37_, s_r_40__36_, s_r_40__35_, s_r_40__34_, s_r_40__33_, s_r_40__32_, s_r_40__31_, s_r_40__30_, s_r_40__29_, s_r_40__28_, s_r_40__27_, s_r_40__26_, s_r_40__25_, s_r_40__24_, s_r_40__23_, s_r_40__22_, s_r_40__21_, s_r_40__20_, s_r_40__19_, s_r_40__18_, s_r_40__17_, s_r_40__16_, s_r_40__15_, s_r_40__14_, s_r_40__13_, s_r_40__12_, s_r_40__11_, s_r_40__10_, s_r_40__9_, s_r_40__8_, s_r_40__7_, s_r_40__6_, s_r_40__5_, s_r_40__4_, s_r_40__3_, s_r_40__2_, s_r_40__1_, s_r_40__0_ }),
    .c_o(c_r[40]),
    .prod_accum_o({ prod_accum_40__41_, prod_accum_40__40_, prod_accum_40__39_, prod_accum_40__38_, prod_accum_40__37_, prod_accum_40__36_, prod_accum_40__35_, prod_accum_40__34_, prod_accum_40__33_, prod_accum_40__32_, prod_accum_40__31_, prod_accum_40__30_, prod_accum_40__29_, prod_accum_40__28_, prod_accum_40__27_, prod_accum_40__26_, prod_accum_40__25_, prod_accum_40__24_, prod_accum_40__23_, prod_accum_40__22_, prod_accum_40__21_, prod_accum_40__20_, prod_accum_40__19_, prod_accum_40__18_, prod_accum_40__17_, prod_accum_40__16_, prod_accum_40__15_, prod_accum_40__14_, prod_accum_40__13_, prod_accum_40__12_, prod_accum_40__11_, prod_accum_40__10_, prod_accum_40__9_, prod_accum_40__8_, prod_accum_40__7_, prod_accum_40__6_, prod_accum_40__5_, prod_accum_40__4_, prod_accum_40__3_, prod_accum_40__2_, prod_accum_40__1_, prod_accum_40__0_ })
  );


  bsg_mul_array_row_64_41_x
  genblk1_41__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2623:2560]),
    .b_i(b_r[2623:2560]),
    .s_i({ s_r_40__63_, s_r_40__62_, s_r_40__61_, s_r_40__60_, s_r_40__59_, s_r_40__58_, s_r_40__57_, s_r_40__56_, s_r_40__55_, s_r_40__54_, s_r_40__53_, s_r_40__52_, s_r_40__51_, s_r_40__50_, s_r_40__49_, s_r_40__48_, s_r_40__47_, s_r_40__46_, s_r_40__45_, s_r_40__44_, s_r_40__43_, s_r_40__42_, s_r_40__41_, s_r_40__40_, s_r_40__39_, s_r_40__38_, s_r_40__37_, s_r_40__36_, s_r_40__35_, s_r_40__34_, s_r_40__33_, s_r_40__32_, s_r_40__31_, s_r_40__30_, s_r_40__29_, s_r_40__28_, s_r_40__27_, s_r_40__26_, s_r_40__25_, s_r_40__24_, s_r_40__23_, s_r_40__22_, s_r_40__21_, s_r_40__20_, s_r_40__19_, s_r_40__18_, s_r_40__17_, s_r_40__16_, s_r_40__15_, s_r_40__14_, s_r_40__13_, s_r_40__12_, s_r_40__11_, s_r_40__10_, s_r_40__9_, s_r_40__8_, s_r_40__7_, s_r_40__6_, s_r_40__5_, s_r_40__4_, s_r_40__3_, s_r_40__2_, s_r_40__1_, s_r_40__0_ }),
    .c_i(c_r[40]),
    .prod_accum_i({ prod_accum_40__41_, prod_accum_40__40_, prod_accum_40__39_, prod_accum_40__38_, prod_accum_40__37_, prod_accum_40__36_, prod_accum_40__35_, prod_accum_40__34_, prod_accum_40__33_, prod_accum_40__32_, prod_accum_40__31_, prod_accum_40__30_, prod_accum_40__29_, prod_accum_40__28_, prod_accum_40__27_, prod_accum_40__26_, prod_accum_40__25_, prod_accum_40__24_, prod_accum_40__23_, prod_accum_40__22_, prod_accum_40__21_, prod_accum_40__20_, prod_accum_40__19_, prod_accum_40__18_, prod_accum_40__17_, prod_accum_40__16_, prod_accum_40__15_, prod_accum_40__14_, prod_accum_40__13_, prod_accum_40__12_, prod_accum_40__11_, prod_accum_40__10_, prod_accum_40__9_, prod_accum_40__8_, prod_accum_40__7_, prod_accum_40__6_, prod_accum_40__5_, prod_accum_40__4_, prod_accum_40__3_, prod_accum_40__2_, prod_accum_40__1_, prod_accum_40__0_ }),
    .a_o(a_r[2687:2624]),
    .b_o(b_r[2687:2624]),
    .s_o({ s_r_41__63_, s_r_41__62_, s_r_41__61_, s_r_41__60_, s_r_41__59_, s_r_41__58_, s_r_41__57_, s_r_41__56_, s_r_41__55_, s_r_41__54_, s_r_41__53_, s_r_41__52_, s_r_41__51_, s_r_41__50_, s_r_41__49_, s_r_41__48_, s_r_41__47_, s_r_41__46_, s_r_41__45_, s_r_41__44_, s_r_41__43_, s_r_41__42_, s_r_41__41_, s_r_41__40_, s_r_41__39_, s_r_41__38_, s_r_41__37_, s_r_41__36_, s_r_41__35_, s_r_41__34_, s_r_41__33_, s_r_41__32_, s_r_41__31_, s_r_41__30_, s_r_41__29_, s_r_41__28_, s_r_41__27_, s_r_41__26_, s_r_41__25_, s_r_41__24_, s_r_41__23_, s_r_41__22_, s_r_41__21_, s_r_41__20_, s_r_41__19_, s_r_41__18_, s_r_41__17_, s_r_41__16_, s_r_41__15_, s_r_41__14_, s_r_41__13_, s_r_41__12_, s_r_41__11_, s_r_41__10_, s_r_41__9_, s_r_41__8_, s_r_41__7_, s_r_41__6_, s_r_41__5_, s_r_41__4_, s_r_41__3_, s_r_41__2_, s_r_41__1_, s_r_41__0_ }),
    .c_o(c_r[41]),
    .prod_accum_o({ prod_accum_41__42_, prod_accum_41__41_, prod_accum_41__40_, prod_accum_41__39_, prod_accum_41__38_, prod_accum_41__37_, prod_accum_41__36_, prod_accum_41__35_, prod_accum_41__34_, prod_accum_41__33_, prod_accum_41__32_, prod_accum_41__31_, prod_accum_41__30_, prod_accum_41__29_, prod_accum_41__28_, prod_accum_41__27_, prod_accum_41__26_, prod_accum_41__25_, prod_accum_41__24_, prod_accum_41__23_, prod_accum_41__22_, prod_accum_41__21_, prod_accum_41__20_, prod_accum_41__19_, prod_accum_41__18_, prod_accum_41__17_, prod_accum_41__16_, prod_accum_41__15_, prod_accum_41__14_, prod_accum_41__13_, prod_accum_41__12_, prod_accum_41__11_, prod_accum_41__10_, prod_accum_41__9_, prod_accum_41__8_, prod_accum_41__7_, prod_accum_41__6_, prod_accum_41__5_, prod_accum_41__4_, prod_accum_41__3_, prod_accum_41__2_, prod_accum_41__1_, prod_accum_41__0_ })
  );


  bsg_mul_array_row_64_42_x
  genblk1_42__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2687:2624]),
    .b_i(b_r[2687:2624]),
    .s_i({ s_r_41__63_, s_r_41__62_, s_r_41__61_, s_r_41__60_, s_r_41__59_, s_r_41__58_, s_r_41__57_, s_r_41__56_, s_r_41__55_, s_r_41__54_, s_r_41__53_, s_r_41__52_, s_r_41__51_, s_r_41__50_, s_r_41__49_, s_r_41__48_, s_r_41__47_, s_r_41__46_, s_r_41__45_, s_r_41__44_, s_r_41__43_, s_r_41__42_, s_r_41__41_, s_r_41__40_, s_r_41__39_, s_r_41__38_, s_r_41__37_, s_r_41__36_, s_r_41__35_, s_r_41__34_, s_r_41__33_, s_r_41__32_, s_r_41__31_, s_r_41__30_, s_r_41__29_, s_r_41__28_, s_r_41__27_, s_r_41__26_, s_r_41__25_, s_r_41__24_, s_r_41__23_, s_r_41__22_, s_r_41__21_, s_r_41__20_, s_r_41__19_, s_r_41__18_, s_r_41__17_, s_r_41__16_, s_r_41__15_, s_r_41__14_, s_r_41__13_, s_r_41__12_, s_r_41__11_, s_r_41__10_, s_r_41__9_, s_r_41__8_, s_r_41__7_, s_r_41__6_, s_r_41__5_, s_r_41__4_, s_r_41__3_, s_r_41__2_, s_r_41__1_, s_r_41__0_ }),
    .c_i(c_r[41]),
    .prod_accum_i({ prod_accum_41__42_, prod_accum_41__41_, prod_accum_41__40_, prod_accum_41__39_, prod_accum_41__38_, prod_accum_41__37_, prod_accum_41__36_, prod_accum_41__35_, prod_accum_41__34_, prod_accum_41__33_, prod_accum_41__32_, prod_accum_41__31_, prod_accum_41__30_, prod_accum_41__29_, prod_accum_41__28_, prod_accum_41__27_, prod_accum_41__26_, prod_accum_41__25_, prod_accum_41__24_, prod_accum_41__23_, prod_accum_41__22_, prod_accum_41__21_, prod_accum_41__20_, prod_accum_41__19_, prod_accum_41__18_, prod_accum_41__17_, prod_accum_41__16_, prod_accum_41__15_, prod_accum_41__14_, prod_accum_41__13_, prod_accum_41__12_, prod_accum_41__11_, prod_accum_41__10_, prod_accum_41__9_, prod_accum_41__8_, prod_accum_41__7_, prod_accum_41__6_, prod_accum_41__5_, prod_accum_41__4_, prod_accum_41__3_, prod_accum_41__2_, prod_accum_41__1_, prod_accum_41__0_ }),
    .a_o(a_r[2751:2688]),
    .b_o(b_r[2751:2688]),
    .s_o({ s_r_42__63_, s_r_42__62_, s_r_42__61_, s_r_42__60_, s_r_42__59_, s_r_42__58_, s_r_42__57_, s_r_42__56_, s_r_42__55_, s_r_42__54_, s_r_42__53_, s_r_42__52_, s_r_42__51_, s_r_42__50_, s_r_42__49_, s_r_42__48_, s_r_42__47_, s_r_42__46_, s_r_42__45_, s_r_42__44_, s_r_42__43_, s_r_42__42_, s_r_42__41_, s_r_42__40_, s_r_42__39_, s_r_42__38_, s_r_42__37_, s_r_42__36_, s_r_42__35_, s_r_42__34_, s_r_42__33_, s_r_42__32_, s_r_42__31_, s_r_42__30_, s_r_42__29_, s_r_42__28_, s_r_42__27_, s_r_42__26_, s_r_42__25_, s_r_42__24_, s_r_42__23_, s_r_42__22_, s_r_42__21_, s_r_42__20_, s_r_42__19_, s_r_42__18_, s_r_42__17_, s_r_42__16_, s_r_42__15_, s_r_42__14_, s_r_42__13_, s_r_42__12_, s_r_42__11_, s_r_42__10_, s_r_42__9_, s_r_42__8_, s_r_42__7_, s_r_42__6_, s_r_42__5_, s_r_42__4_, s_r_42__3_, s_r_42__2_, s_r_42__1_, s_r_42__0_ }),
    .c_o(c_r[42]),
    .prod_accum_o({ prod_accum_42__43_, prod_accum_42__42_, prod_accum_42__41_, prod_accum_42__40_, prod_accum_42__39_, prod_accum_42__38_, prod_accum_42__37_, prod_accum_42__36_, prod_accum_42__35_, prod_accum_42__34_, prod_accum_42__33_, prod_accum_42__32_, prod_accum_42__31_, prod_accum_42__30_, prod_accum_42__29_, prod_accum_42__28_, prod_accum_42__27_, prod_accum_42__26_, prod_accum_42__25_, prod_accum_42__24_, prod_accum_42__23_, prod_accum_42__22_, prod_accum_42__21_, prod_accum_42__20_, prod_accum_42__19_, prod_accum_42__18_, prod_accum_42__17_, prod_accum_42__16_, prod_accum_42__15_, prod_accum_42__14_, prod_accum_42__13_, prod_accum_42__12_, prod_accum_42__11_, prod_accum_42__10_, prod_accum_42__9_, prod_accum_42__8_, prod_accum_42__7_, prod_accum_42__6_, prod_accum_42__5_, prod_accum_42__4_, prod_accum_42__3_, prod_accum_42__2_, prod_accum_42__1_, prod_accum_42__0_ })
  );


  bsg_mul_array_row_64_43_x
  genblk1_43__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2751:2688]),
    .b_i(b_r[2751:2688]),
    .s_i({ s_r_42__63_, s_r_42__62_, s_r_42__61_, s_r_42__60_, s_r_42__59_, s_r_42__58_, s_r_42__57_, s_r_42__56_, s_r_42__55_, s_r_42__54_, s_r_42__53_, s_r_42__52_, s_r_42__51_, s_r_42__50_, s_r_42__49_, s_r_42__48_, s_r_42__47_, s_r_42__46_, s_r_42__45_, s_r_42__44_, s_r_42__43_, s_r_42__42_, s_r_42__41_, s_r_42__40_, s_r_42__39_, s_r_42__38_, s_r_42__37_, s_r_42__36_, s_r_42__35_, s_r_42__34_, s_r_42__33_, s_r_42__32_, s_r_42__31_, s_r_42__30_, s_r_42__29_, s_r_42__28_, s_r_42__27_, s_r_42__26_, s_r_42__25_, s_r_42__24_, s_r_42__23_, s_r_42__22_, s_r_42__21_, s_r_42__20_, s_r_42__19_, s_r_42__18_, s_r_42__17_, s_r_42__16_, s_r_42__15_, s_r_42__14_, s_r_42__13_, s_r_42__12_, s_r_42__11_, s_r_42__10_, s_r_42__9_, s_r_42__8_, s_r_42__7_, s_r_42__6_, s_r_42__5_, s_r_42__4_, s_r_42__3_, s_r_42__2_, s_r_42__1_, s_r_42__0_ }),
    .c_i(c_r[42]),
    .prod_accum_i({ prod_accum_42__43_, prod_accum_42__42_, prod_accum_42__41_, prod_accum_42__40_, prod_accum_42__39_, prod_accum_42__38_, prod_accum_42__37_, prod_accum_42__36_, prod_accum_42__35_, prod_accum_42__34_, prod_accum_42__33_, prod_accum_42__32_, prod_accum_42__31_, prod_accum_42__30_, prod_accum_42__29_, prod_accum_42__28_, prod_accum_42__27_, prod_accum_42__26_, prod_accum_42__25_, prod_accum_42__24_, prod_accum_42__23_, prod_accum_42__22_, prod_accum_42__21_, prod_accum_42__20_, prod_accum_42__19_, prod_accum_42__18_, prod_accum_42__17_, prod_accum_42__16_, prod_accum_42__15_, prod_accum_42__14_, prod_accum_42__13_, prod_accum_42__12_, prod_accum_42__11_, prod_accum_42__10_, prod_accum_42__9_, prod_accum_42__8_, prod_accum_42__7_, prod_accum_42__6_, prod_accum_42__5_, prod_accum_42__4_, prod_accum_42__3_, prod_accum_42__2_, prod_accum_42__1_, prod_accum_42__0_ }),
    .a_o(a_r[2815:2752]),
    .b_o(b_r[2815:2752]),
    .s_o({ s_r_43__63_, s_r_43__62_, s_r_43__61_, s_r_43__60_, s_r_43__59_, s_r_43__58_, s_r_43__57_, s_r_43__56_, s_r_43__55_, s_r_43__54_, s_r_43__53_, s_r_43__52_, s_r_43__51_, s_r_43__50_, s_r_43__49_, s_r_43__48_, s_r_43__47_, s_r_43__46_, s_r_43__45_, s_r_43__44_, s_r_43__43_, s_r_43__42_, s_r_43__41_, s_r_43__40_, s_r_43__39_, s_r_43__38_, s_r_43__37_, s_r_43__36_, s_r_43__35_, s_r_43__34_, s_r_43__33_, s_r_43__32_, s_r_43__31_, s_r_43__30_, s_r_43__29_, s_r_43__28_, s_r_43__27_, s_r_43__26_, s_r_43__25_, s_r_43__24_, s_r_43__23_, s_r_43__22_, s_r_43__21_, s_r_43__20_, s_r_43__19_, s_r_43__18_, s_r_43__17_, s_r_43__16_, s_r_43__15_, s_r_43__14_, s_r_43__13_, s_r_43__12_, s_r_43__11_, s_r_43__10_, s_r_43__9_, s_r_43__8_, s_r_43__7_, s_r_43__6_, s_r_43__5_, s_r_43__4_, s_r_43__3_, s_r_43__2_, s_r_43__1_, s_r_43__0_ }),
    .c_o(c_r[43]),
    .prod_accum_o({ prod_accum_43__44_, prod_accum_43__43_, prod_accum_43__42_, prod_accum_43__41_, prod_accum_43__40_, prod_accum_43__39_, prod_accum_43__38_, prod_accum_43__37_, prod_accum_43__36_, prod_accum_43__35_, prod_accum_43__34_, prod_accum_43__33_, prod_accum_43__32_, prod_accum_43__31_, prod_accum_43__30_, prod_accum_43__29_, prod_accum_43__28_, prod_accum_43__27_, prod_accum_43__26_, prod_accum_43__25_, prod_accum_43__24_, prod_accum_43__23_, prod_accum_43__22_, prod_accum_43__21_, prod_accum_43__20_, prod_accum_43__19_, prod_accum_43__18_, prod_accum_43__17_, prod_accum_43__16_, prod_accum_43__15_, prod_accum_43__14_, prod_accum_43__13_, prod_accum_43__12_, prod_accum_43__11_, prod_accum_43__10_, prod_accum_43__9_, prod_accum_43__8_, prod_accum_43__7_, prod_accum_43__6_, prod_accum_43__5_, prod_accum_43__4_, prod_accum_43__3_, prod_accum_43__2_, prod_accum_43__1_, prod_accum_43__0_ })
  );


  bsg_mul_array_row_64_44_x
  genblk1_44__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2815:2752]),
    .b_i(b_r[2815:2752]),
    .s_i({ s_r_43__63_, s_r_43__62_, s_r_43__61_, s_r_43__60_, s_r_43__59_, s_r_43__58_, s_r_43__57_, s_r_43__56_, s_r_43__55_, s_r_43__54_, s_r_43__53_, s_r_43__52_, s_r_43__51_, s_r_43__50_, s_r_43__49_, s_r_43__48_, s_r_43__47_, s_r_43__46_, s_r_43__45_, s_r_43__44_, s_r_43__43_, s_r_43__42_, s_r_43__41_, s_r_43__40_, s_r_43__39_, s_r_43__38_, s_r_43__37_, s_r_43__36_, s_r_43__35_, s_r_43__34_, s_r_43__33_, s_r_43__32_, s_r_43__31_, s_r_43__30_, s_r_43__29_, s_r_43__28_, s_r_43__27_, s_r_43__26_, s_r_43__25_, s_r_43__24_, s_r_43__23_, s_r_43__22_, s_r_43__21_, s_r_43__20_, s_r_43__19_, s_r_43__18_, s_r_43__17_, s_r_43__16_, s_r_43__15_, s_r_43__14_, s_r_43__13_, s_r_43__12_, s_r_43__11_, s_r_43__10_, s_r_43__9_, s_r_43__8_, s_r_43__7_, s_r_43__6_, s_r_43__5_, s_r_43__4_, s_r_43__3_, s_r_43__2_, s_r_43__1_, s_r_43__0_ }),
    .c_i(c_r[43]),
    .prod_accum_i({ prod_accum_43__44_, prod_accum_43__43_, prod_accum_43__42_, prod_accum_43__41_, prod_accum_43__40_, prod_accum_43__39_, prod_accum_43__38_, prod_accum_43__37_, prod_accum_43__36_, prod_accum_43__35_, prod_accum_43__34_, prod_accum_43__33_, prod_accum_43__32_, prod_accum_43__31_, prod_accum_43__30_, prod_accum_43__29_, prod_accum_43__28_, prod_accum_43__27_, prod_accum_43__26_, prod_accum_43__25_, prod_accum_43__24_, prod_accum_43__23_, prod_accum_43__22_, prod_accum_43__21_, prod_accum_43__20_, prod_accum_43__19_, prod_accum_43__18_, prod_accum_43__17_, prod_accum_43__16_, prod_accum_43__15_, prod_accum_43__14_, prod_accum_43__13_, prod_accum_43__12_, prod_accum_43__11_, prod_accum_43__10_, prod_accum_43__9_, prod_accum_43__8_, prod_accum_43__7_, prod_accum_43__6_, prod_accum_43__5_, prod_accum_43__4_, prod_accum_43__3_, prod_accum_43__2_, prod_accum_43__1_, prod_accum_43__0_ }),
    .a_o(a_r[2879:2816]),
    .b_o(b_r[2879:2816]),
    .s_o({ s_r_44__63_, s_r_44__62_, s_r_44__61_, s_r_44__60_, s_r_44__59_, s_r_44__58_, s_r_44__57_, s_r_44__56_, s_r_44__55_, s_r_44__54_, s_r_44__53_, s_r_44__52_, s_r_44__51_, s_r_44__50_, s_r_44__49_, s_r_44__48_, s_r_44__47_, s_r_44__46_, s_r_44__45_, s_r_44__44_, s_r_44__43_, s_r_44__42_, s_r_44__41_, s_r_44__40_, s_r_44__39_, s_r_44__38_, s_r_44__37_, s_r_44__36_, s_r_44__35_, s_r_44__34_, s_r_44__33_, s_r_44__32_, s_r_44__31_, s_r_44__30_, s_r_44__29_, s_r_44__28_, s_r_44__27_, s_r_44__26_, s_r_44__25_, s_r_44__24_, s_r_44__23_, s_r_44__22_, s_r_44__21_, s_r_44__20_, s_r_44__19_, s_r_44__18_, s_r_44__17_, s_r_44__16_, s_r_44__15_, s_r_44__14_, s_r_44__13_, s_r_44__12_, s_r_44__11_, s_r_44__10_, s_r_44__9_, s_r_44__8_, s_r_44__7_, s_r_44__6_, s_r_44__5_, s_r_44__4_, s_r_44__3_, s_r_44__2_, s_r_44__1_, s_r_44__0_ }),
    .c_o(c_r[44]),
    .prod_accum_o({ prod_accum_44__45_, prod_accum_44__44_, prod_accum_44__43_, prod_accum_44__42_, prod_accum_44__41_, prod_accum_44__40_, prod_accum_44__39_, prod_accum_44__38_, prod_accum_44__37_, prod_accum_44__36_, prod_accum_44__35_, prod_accum_44__34_, prod_accum_44__33_, prod_accum_44__32_, prod_accum_44__31_, prod_accum_44__30_, prod_accum_44__29_, prod_accum_44__28_, prod_accum_44__27_, prod_accum_44__26_, prod_accum_44__25_, prod_accum_44__24_, prod_accum_44__23_, prod_accum_44__22_, prod_accum_44__21_, prod_accum_44__20_, prod_accum_44__19_, prod_accum_44__18_, prod_accum_44__17_, prod_accum_44__16_, prod_accum_44__15_, prod_accum_44__14_, prod_accum_44__13_, prod_accum_44__12_, prod_accum_44__11_, prod_accum_44__10_, prod_accum_44__9_, prod_accum_44__8_, prod_accum_44__7_, prod_accum_44__6_, prod_accum_44__5_, prod_accum_44__4_, prod_accum_44__3_, prod_accum_44__2_, prod_accum_44__1_, prod_accum_44__0_ })
  );


  bsg_mul_array_row_64_45_x
  genblk1_45__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2879:2816]),
    .b_i(b_r[2879:2816]),
    .s_i({ s_r_44__63_, s_r_44__62_, s_r_44__61_, s_r_44__60_, s_r_44__59_, s_r_44__58_, s_r_44__57_, s_r_44__56_, s_r_44__55_, s_r_44__54_, s_r_44__53_, s_r_44__52_, s_r_44__51_, s_r_44__50_, s_r_44__49_, s_r_44__48_, s_r_44__47_, s_r_44__46_, s_r_44__45_, s_r_44__44_, s_r_44__43_, s_r_44__42_, s_r_44__41_, s_r_44__40_, s_r_44__39_, s_r_44__38_, s_r_44__37_, s_r_44__36_, s_r_44__35_, s_r_44__34_, s_r_44__33_, s_r_44__32_, s_r_44__31_, s_r_44__30_, s_r_44__29_, s_r_44__28_, s_r_44__27_, s_r_44__26_, s_r_44__25_, s_r_44__24_, s_r_44__23_, s_r_44__22_, s_r_44__21_, s_r_44__20_, s_r_44__19_, s_r_44__18_, s_r_44__17_, s_r_44__16_, s_r_44__15_, s_r_44__14_, s_r_44__13_, s_r_44__12_, s_r_44__11_, s_r_44__10_, s_r_44__9_, s_r_44__8_, s_r_44__7_, s_r_44__6_, s_r_44__5_, s_r_44__4_, s_r_44__3_, s_r_44__2_, s_r_44__1_, s_r_44__0_ }),
    .c_i(c_r[44]),
    .prod_accum_i({ prod_accum_44__45_, prod_accum_44__44_, prod_accum_44__43_, prod_accum_44__42_, prod_accum_44__41_, prod_accum_44__40_, prod_accum_44__39_, prod_accum_44__38_, prod_accum_44__37_, prod_accum_44__36_, prod_accum_44__35_, prod_accum_44__34_, prod_accum_44__33_, prod_accum_44__32_, prod_accum_44__31_, prod_accum_44__30_, prod_accum_44__29_, prod_accum_44__28_, prod_accum_44__27_, prod_accum_44__26_, prod_accum_44__25_, prod_accum_44__24_, prod_accum_44__23_, prod_accum_44__22_, prod_accum_44__21_, prod_accum_44__20_, prod_accum_44__19_, prod_accum_44__18_, prod_accum_44__17_, prod_accum_44__16_, prod_accum_44__15_, prod_accum_44__14_, prod_accum_44__13_, prod_accum_44__12_, prod_accum_44__11_, prod_accum_44__10_, prod_accum_44__9_, prod_accum_44__8_, prod_accum_44__7_, prod_accum_44__6_, prod_accum_44__5_, prod_accum_44__4_, prod_accum_44__3_, prod_accum_44__2_, prod_accum_44__1_, prod_accum_44__0_ }),
    .a_o(a_r[2943:2880]),
    .b_o(b_r[2943:2880]),
    .s_o({ s_r_45__63_, s_r_45__62_, s_r_45__61_, s_r_45__60_, s_r_45__59_, s_r_45__58_, s_r_45__57_, s_r_45__56_, s_r_45__55_, s_r_45__54_, s_r_45__53_, s_r_45__52_, s_r_45__51_, s_r_45__50_, s_r_45__49_, s_r_45__48_, s_r_45__47_, s_r_45__46_, s_r_45__45_, s_r_45__44_, s_r_45__43_, s_r_45__42_, s_r_45__41_, s_r_45__40_, s_r_45__39_, s_r_45__38_, s_r_45__37_, s_r_45__36_, s_r_45__35_, s_r_45__34_, s_r_45__33_, s_r_45__32_, s_r_45__31_, s_r_45__30_, s_r_45__29_, s_r_45__28_, s_r_45__27_, s_r_45__26_, s_r_45__25_, s_r_45__24_, s_r_45__23_, s_r_45__22_, s_r_45__21_, s_r_45__20_, s_r_45__19_, s_r_45__18_, s_r_45__17_, s_r_45__16_, s_r_45__15_, s_r_45__14_, s_r_45__13_, s_r_45__12_, s_r_45__11_, s_r_45__10_, s_r_45__9_, s_r_45__8_, s_r_45__7_, s_r_45__6_, s_r_45__5_, s_r_45__4_, s_r_45__3_, s_r_45__2_, s_r_45__1_, s_r_45__0_ }),
    .c_o(c_r[45]),
    .prod_accum_o({ prod_accum_45__46_, prod_accum_45__45_, prod_accum_45__44_, prod_accum_45__43_, prod_accum_45__42_, prod_accum_45__41_, prod_accum_45__40_, prod_accum_45__39_, prod_accum_45__38_, prod_accum_45__37_, prod_accum_45__36_, prod_accum_45__35_, prod_accum_45__34_, prod_accum_45__33_, prod_accum_45__32_, prod_accum_45__31_, prod_accum_45__30_, prod_accum_45__29_, prod_accum_45__28_, prod_accum_45__27_, prod_accum_45__26_, prod_accum_45__25_, prod_accum_45__24_, prod_accum_45__23_, prod_accum_45__22_, prod_accum_45__21_, prod_accum_45__20_, prod_accum_45__19_, prod_accum_45__18_, prod_accum_45__17_, prod_accum_45__16_, prod_accum_45__15_, prod_accum_45__14_, prod_accum_45__13_, prod_accum_45__12_, prod_accum_45__11_, prod_accum_45__10_, prod_accum_45__9_, prod_accum_45__8_, prod_accum_45__7_, prod_accum_45__6_, prod_accum_45__5_, prod_accum_45__4_, prod_accum_45__3_, prod_accum_45__2_, prod_accum_45__1_, prod_accum_45__0_ })
  );


  bsg_mul_array_row_64_46_x
  genblk1_46__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[2943:2880]),
    .b_i(b_r[2943:2880]),
    .s_i({ s_r_45__63_, s_r_45__62_, s_r_45__61_, s_r_45__60_, s_r_45__59_, s_r_45__58_, s_r_45__57_, s_r_45__56_, s_r_45__55_, s_r_45__54_, s_r_45__53_, s_r_45__52_, s_r_45__51_, s_r_45__50_, s_r_45__49_, s_r_45__48_, s_r_45__47_, s_r_45__46_, s_r_45__45_, s_r_45__44_, s_r_45__43_, s_r_45__42_, s_r_45__41_, s_r_45__40_, s_r_45__39_, s_r_45__38_, s_r_45__37_, s_r_45__36_, s_r_45__35_, s_r_45__34_, s_r_45__33_, s_r_45__32_, s_r_45__31_, s_r_45__30_, s_r_45__29_, s_r_45__28_, s_r_45__27_, s_r_45__26_, s_r_45__25_, s_r_45__24_, s_r_45__23_, s_r_45__22_, s_r_45__21_, s_r_45__20_, s_r_45__19_, s_r_45__18_, s_r_45__17_, s_r_45__16_, s_r_45__15_, s_r_45__14_, s_r_45__13_, s_r_45__12_, s_r_45__11_, s_r_45__10_, s_r_45__9_, s_r_45__8_, s_r_45__7_, s_r_45__6_, s_r_45__5_, s_r_45__4_, s_r_45__3_, s_r_45__2_, s_r_45__1_, s_r_45__0_ }),
    .c_i(c_r[45]),
    .prod_accum_i({ prod_accum_45__46_, prod_accum_45__45_, prod_accum_45__44_, prod_accum_45__43_, prod_accum_45__42_, prod_accum_45__41_, prod_accum_45__40_, prod_accum_45__39_, prod_accum_45__38_, prod_accum_45__37_, prod_accum_45__36_, prod_accum_45__35_, prod_accum_45__34_, prod_accum_45__33_, prod_accum_45__32_, prod_accum_45__31_, prod_accum_45__30_, prod_accum_45__29_, prod_accum_45__28_, prod_accum_45__27_, prod_accum_45__26_, prod_accum_45__25_, prod_accum_45__24_, prod_accum_45__23_, prod_accum_45__22_, prod_accum_45__21_, prod_accum_45__20_, prod_accum_45__19_, prod_accum_45__18_, prod_accum_45__17_, prod_accum_45__16_, prod_accum_45__15_, prod_accum_45__14_, prod_accum_45__13_, prod_accum_45__12_, prod_accum_45__11_, prod_accum_45__10_, prod_accum_45__9_, prod_accum_45__8_, prod_accum_45__7_, prod_accum_45__6_, prod_accum_45__5_, prod_accum_45__4_, prod_accum_45__3_, prod_accum_45__2_, prod_accum_45__1_, prod_accum_45__0_ }),
    .a_o(a_r[3007:2944]),
    .b_o(b_r[3007:2944]),
    .s_o({ s_r_46__63_, s_r_46__62_, s_r_46__61_, s_r_46__60_, s_r_46__59_, s_r_46__58_, s_r_46__57_, s_r_46__56_, s_r_46__55_, s_r_46__54_, s_r_46__53_, s_r_46__52_, s_r_46__51_, s_r_46__50_, s_r_46__49_, s_r_46__48_, s_r_46__47_, s_r_46__46_, s_r_46__45_, s_r_46__44_, s_r_46__43_, s_r_46__42_, s_r_46__41_, s_r_46__40_, s_r_46__39_, s_r_46__38_, s_r_46__37_, s_r_46__36_, s_r_46__35_, s_r_46__34_, s_r_46__33_, s_r_46__32_, s_r_46__31_, s_r_46__30_, s_r_46__29_, s_r_46__28_, s_r_46__27_, s_r_46__26_, s_r_46__25_, s_r_46__24_, s_r_46__23_, s_r_46__22_, s_r_46__21_, s_r_46__20_, s_r_46__19_, s_r_46__18_, s_r_46__17_, s_r_46__16_, s_r_46__15_, s_r_46__14_, s_r_46__13_, s_r_46__12_, s_r_46__11_, s_r_46__10_, s_r_46__9_, s_r_46__8_, s_r_46__7_, s_r_46__6_, s_r_46__5_, s_r_46__4_, s_r_46__3_, s_r_46__2_, s_r_46__1_, s_r_46__0_ }),
    .c_o(c_r[46]),
    .prod_accum_o({ prod_accum_46__47_, prod_accum_46__46_, prod_accum_46__45_, prod_accum_46__44_, prod_accum_46__43_, prod_accum_46__42_, prod_accum_46__41_, prod_accum_46__40_, prod_accum_46__39_, prod_accum_46__38_, prod_accum_46__37_, prod_accum_46__36_, prod_accum_46__35_, prod_accum_46__34_, prod_accum_46__33_, prod_accum_46__32_, prod_accum_46__31_, prod_accum_46__30_, prod_accum_46__29_, prod_accum_46__28_, prod_accum_46__27_, prod_accum_46__26_, prod_accum_46__25_, prod_accum_46__24_, prod_accum_46__23_, prod_accum_46__22_, prod_accum_46__21_, prod_accum_46__20_, prod_accum_46__19_, prod_accum_46__18_, prod_accum_46__17_, prod_accum_46__16_, prod_accum_46__15_, prod_accum_46__14_, prod_accum_46__13_, prod_accum_46__12_, prod_accum_46__11_, prod_accum_46__10_, prod_accum_46__9_, prod_accum_46__8_, prod_accum_46__7_, prod_accum_46__6_, prod_accum_46__5_, prod_accum_46__4_, prod_accum_46__3_, prod_accum_46__2_, prod_accum_46__1_, prod_accum_46__0_ })
  );


  bsg_mul_array_row_64_47_x
  genblk1_47__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3007:2944]),
    .b_i(b_r[3007:2944]),
    .s_i({ s_r_46__63_, s_r_46__62_, s_r_46__61_, s_r_46__60_, s_r_46__59_, s_r_46__58_, s_r_46__57_, s_r_46__56_, s_r_46__55_, s_r_46__54_, s_r_46__53_, s_r_46__52_, s_r_46__51_, s_r_46__50_, s_r_46__49_, s_r_46__48_, s_r_46__47_, s_r_46__46_, s_r_46__45_, s_r_46__44_, s_r_46__43_, s_r_46__42_, s_r_46__41_, s_r_46__40_, s_r_46__39_, s_r_46__38_, s_r_46__37_, s_r_46__36_, s_r_46__35_, s_r_46__34_, s_r_46__33_, s_r_46__32_, s_r_46__31_, s_r_46__30_, s_r_46__29_, s_r_46__28_, s_r_46__27_, s_r_46__26_, s_r_46__25_, s_r_46__24_, s_r_46__23_, s_r_46__22_, s_r_46__21_, s_r_46__20_, s_r_46__19_, s_r_46__18_, s_r_46__17_, s_r_46__16_, s_r_46__15_, s_r_46__14_, s_r_46__13_, s_r_46__12_, s_r_46__11_, s_r_46__10_, s_r_46__9_, s_r_46__8_, s_r_46__7_, s_r_46__6_, s_r_46__5_, s_r_46__4_, s_r_46__3_, s_r_46__2_, s_r_46__1_, s_r_46__0_ }),
    .c_i(c_r[46]),
    .prod_accum_i({ prod_accum_46__47_, prod_accum_46__46_, prod_accum_46__45_, prod_accum_46__44_, prod_accum_46__43_, prod_accum_46__42_, prod_accum_46__41_, prod_accum_46__40_, prod_accum_46__39_, prod_accum_46__38_, prod_accum_46__37_, prod_accum_46__36_, prod_accum_46__35_, prod_accum_46__34_, prod_accum_46__33_, prod_accum_46__32_, prod_accum_46__31_, prod_accum_46__30_, prod_accum_46__29_, prod_accum_46__28_, prod_accum_46__27_, prod_accum_46__26_, prod_accum_46__25_, prod_accum_46__24_, prod_accum_46__23_, prod_accum_46__22_, prod_accum_46__21_, prod_accum_46__20_, prod_accum_46__19_, prod_accum_46__18_, prod_accum_46__17_, prod_accum_46__16_, prod_accum_46__15_, prod_accum_46__14_, prod_accum_46__13_, prod_accum_46__12_, prod_accum_46__11_, prod_accum_46__10_, prod_accum_46__9_, prod_accum_46__8_, prod_accum_46__7_, prod_accum_46__6_, prod_accum_46__5_, prod_accum_46__4_, prod_accum_46__3_, prod_accum_46__2_, prod_accum_46__1_, prod_accum_46__0_ }),
    .a_o(a_r[3071:3008]),
    .b_o(b_r[3071:3008]),
    .s_o({ s_r_47__63_, s_r_47__62_, s_r_47__61_, s_r_47__60_, s_r_47__59_, s_r_47__58_, s_r_47__57_, s_r_47__56_, s_r_47__55_, s_r_47__54_, s_r_47__53_, s_r_47__52_, s_r_47__51_, s_r_47__50_, s_r_47__49_, s_r_47__48_, s_r_47__47_, s_r_47__46_, s_r_47__45_, s_r_47__44_, s_r_47__43_, s_r_47__42_, s_r_47__41_, s_r_47__40_, s_r_47__39_, s_r_47__38_, s_r_47__37_, s_r_47__36_, s_r_47__35_, s_r_47__34_, s_r_47__33_, s_r_47__32_, s_r_47__31_, s_r_47__30_, s_r_47__29_, s_r_47__28_, s_r_47__27_, s_r_47__26_, s_r_47__25_, s_r_47__24_, s_r_47__23_, s_r_47__22_, s_r_47__21_, s_r_47__20_, s_r_47__19_, s_r_47__18_, s_r_47__17_, s_r_47__16_, s_r_47__15_, s_r_47__14_, s_r_47__13_, s_r_47__12_, s_r_47__11_, s_r_47__10_, s_r_47__9_, s_r_47__8_, s_r_47__7_, s_r_47__6_, s_r_47__5_, s_r_47__4_, s_r_47__3_, s_r_47__2_, s_r_47__1_, s_r_47__0_ }),
    .c_o(c_r[47]),
    .prod_accum_o({ prod_accum_47__48_, prod_accum_47__47_, prod_accum_47__46_, prod_accum_47__45_, prod_accum_47__44_, prod_accum_47__43_, prod_accum_47__42_, prod_accum_47__41_, prod_accum_47__40_, prod_accum_47__39_, prod_accum_47__38_, prod_accum_47__37_, prod_accum_47__36_, prod_accum_47__35_, prod_accum_47__34_, prod_accum_47__33_, prod_accum_47__32_, prod_accum_47__31_, prod_accum_47__30_, prod_accum_47__29_, prod_accum_47__28_, prod_accum_47__27_, prod_accum_47__26_, prod_accum_47__25_, prod_accum_47__24_, prod_accum_47__23_, prod_accum_47__22_, prod_accum_47__21_, prod_accum_47__20_, prod_accum_47__19_, prod_accum_47__18_, prod_accum_47__17_, prod_accum_47__16_, prod_accum_47__15_, prod_accum_47__14_, prod_accum_47__13_, prod_accum_47__12_, prod_accum_47__11_, prod_accum_47__10_, prod_accum_47__9_, prod_accum_47__8_, prod_accum_47__7_, prod_accum_47__6_, prod_accum_47__5_, prod_accum_47__4_, prod_accum_47__3_, prod_accum_47__2_, prod_accum_47__1_, prod_accum_47__0_ })
  );


  bsg_mul_array_row_64_48_x
  genblk1_48__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3071:3008]),
    .b_i(b_r[3071:3008]),
    .s_i({ s_r_47__63_, s_r_47__62_, s_r_47__61_, s_r_47__60_, s_r_47__59_, s_r_47__58_, s_r_47__57_, s_r_47__56_, s_r_47__55_, s_r_47__54_, s_r_47__53_, s_r_47__52_, s_r_47__51_, s_r_47__50_, s_r_47__49_, s_r_47__48_, s_r_47__47_, s_r_47__46_, s_r_47__45_, s_r_47__44_, s_r_47__43_, s_r_47__42_, s_r_47__41_, s_r_47__40_, s_r_47__39_, s_r_47__38_, s_r_47__37_, s_r_47__36_, s_r_47__35_, s_r_47__34_, s_r_47__33_, s_r_47__32_, s_r_47__31_, s_r_47__30_, s_r_47__29_, s_r_47__28_, s_r_47__27_, s_r_47__26_, s_r_47__25_, s_r_47__24_, s_r_47__23_, s_r_47__22_, s_r_47__21_, s_r_47__20_, s_r_47__19_, s_r_47__18_, s_r_47__17_, s_r_47__16_, s_r_47__15_, s_r_47__14_, s_r_47__13_, s_r_47__12_, s_r_47__11_, s_r_47__10_, s_r_47__9_, s_r_47__8_, s_r_47__7_, s_r_47__6_, s_r_47__5_, s_r_47__4_, s_r_47__3_, s_r_47__2_, s_r_47__1_, s_r_47__0_ }),
    .c_i(c_r[47]),
    .prod_accum_i({ prod_accum_47__48_, prod_accum_47__47_, prod_accum_47__46_, prod_accum_47__45_, prod_accum_47__44_, prod_accum_47__43_, prod_accum_47__42_, prod_accum_47__41_, prod_accum_47__40_, prod_accum_47__39_, prod_accum_47__38_, prod_accum_47__37_, prod_accum_47__36_, prod_accum_47__35_, prod_accum_47__34_, prod_accum_47__33_, prod_accum_47__32_, prod_accum_47__31_, prod_accum_47__30_, prod_accum_47__29_, prod_accum_47__28_, prod_accum_47__27_, prod_accum_47__26_, prod_accum_47__25_, prod_accum_47__24_, prod_accum_47__23_, prod_accum_47__22_, prod_accum_47__21_, prod_accum_47__20_, prod_accum_47__19_, prod_accum_47__18_, prod_accum_47__17_, prod_accum_47__16_, prod_accum_47__15_, prod_accum_47__14_, prod_accum_47__13_, prod_accum_47__12_, prod_accum_47__11_, prod_accum_47__10_, prod_accum_47__9_, prod_accum_47__8_, prod_accum_47__7_, prod_accum_47__6_, prod_accum_47__5_, prod_accum_47__4_, prod_accum_47__3_, prod_accum_47__2_, prod_accum_47__1_, prod_accum_47__0_ }),
    .a_o(a_r[3135:3072]),
    .b_o(b_r[3135:3072]),
    .s_o({ s_r_48__63_, s_r_48__62_, s_r_48__61_, s_r_48__60_, s_r_48__59_, s_r_48__58_, s_r_48__57_, s_r_48__56_, s_r_48__55_, s_r_48__54_, s_r_48__53_, s_r_48__52_, s_r_48__51_, s_r_48__50_, s_r_48__49_, s_r_48__48_, s_r_48__47_, s_r_48__46_, s_r_48__45_, s_r_48__44_, s_r_48__43_, s_r_48__42_, s_r_48__41_, s_r_48__40_, s_r_48__39_, s_r_48__38_, s_r_48__37_, s_r_48__36_, s_r_48__35_, s_r_48__34_, s_r_48__33_, s_r_48__32_, s_r_48__31_, s_r_48__30_, s_r_48__29_, s_r_48__28_, s_r_48__27_, s_r_48__26_, s_r_48__25_, s_r_48__24_, s_r_48__23_, s_r_48__22_, s_r_48__21_, s_r_48__20_, s_r_48__19_, s_r_48__18_, s_r_48__17_, s_r_48__16_, s_r_48__15_, s_r_48__14_, s_r_48__13_, s_r_48__12_, s_r_48__11_, s_r_48__10_, s_r_48__9_, s_r_48__8_, s_r_48__7_, s_r_48__6_, s_r_48__5_, s_r_48__4_, s_r_48__3_, s_r_48__2_, s_r_48__1_, s_r_48__0_ }),
    .c_o(c_r[48]),
    .prod_accum_o({ prod_accum_48__49_, prod_accum_48__48_, prod_accum_48__47_, prod_accum_48__46_, prod_accum_48__45_, prod_accum_48__44_, prod_accum_48__43_, prod_accum_48__42_, prod_accum_48__41_, prod_accum_48__40_, prod_accum_48__39_, prod_accum_48__38_, prod_accum_48__37_, prod_accum_48__36_, prod_accum_48__35_, prod_accum_48__34_, prod_accum_48__33_, prod_accum_48__32_, prod_accum_48__31_, prod_accum_48__30_, prod_accum_48__29_, prod_accum_48__28_, prod_accum_48__27_, prod_accum_48__26_, prod_accum_48__25_, prod_accum_48__24_, prod_accum_48__23_, prod_accum_48__22_, prod_accum_48__21_, prod_accum_48__20_, prod_accum_48__19_, prod_accum_48__18_, prod_accum_48__17_, prod_accum_48__16_, prod_accum_48__15_, prod_accum_48__14_, prod_accum_48__13_, prod_accum_48__12_, prod_accum_48__11_, prod_accum_48__10_, prod_accum_48__9_, prod_accum_48__8_, prod_accum_48__7_, prod_accum_48__6_, prod_accum_48__5_, prod_accum_48__4_, prod_accum_48__3_, prod_accum_48__2_, prod_accum_48__1_, prod_accum_48__0_ })
  );


  bsg_mul_array_row_64_49_x
  genblk1_49__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3135:3072]),
    .b_i(b_r[3135:3072]),
    .s_i({ s_r_48__63_, s_r_48__62_, s_r_48__61_, s_r_48__60_, s_r_48__59_, s_r_48__58_, s_r_48__57_, s_r_48__56_, s_r_48__55_, s_r_48__54_, s_r_48__53_, s_r_48__52_, s_r_48__51_, s_r_48__50_, s_r_48__49_, s_r_48__48_, s_r_48__47_, s_r_48__46_, s_r_48__45_, s_r_48__44_, s_r_48__43_, s_r_48__42_, s_r_48__41_, s_r_48__40_, s_r_48__39_, s_r_48__38_, s_r_48__37_, s_r_48__36_, s_r_48__35_, s_r_48__34_, s_r_48__33_, s_r_48__32_, s_r_48__31_, s_r_48__30_, s_r_48__29_, s_r_48__28_, s_r_48__27_, s_r_48__26_, s_r_48__25_, s_r_48__24_, s_r_48__23_, s_r_48__22_, s_r_48__21_, s_r_48__20_, s_r_48__19_, s_r_48__18_, s_r_48__17_, s_r_48__16_, s_r_48__15_, s_r_48__14_, s_r_48__13_, s_r_48__12_, s_r_48__11_, s_r_48__10_, s_r_48__9_, s_r_48__8_, s_r_48__7_, s_r_48__6_, s_r_48__5_, s_r_48__4_, s_r_48__3_, s_r_48__2_, s_r_48__1_, s_r_48__0_ }),
    .c_i(c_r[48]),
    .prod_accum_i({ prod_accum_48__49_, prod_accum_48__48_, prod_accum_48__47_, prod_accum_48__46_, prod_accum_48__45_, prod_accum_48__44_, prod_accum_48__43_, prod_accum_48__42_, prod_accum_48__41_, prod_accum_48__40_, prod_accum_48__39_, prod_accum_48__38_, prod_accum_48__37_, prod_accum_48__36_, prod_accum_48__35_, prod_accum_48__34_, prod_accum_48__33_, prod_accum_48__32_, prod_accum_48__31_, prod_accum_48__30_, prod_accum_48__29_, prod_accum_48__28_, prod_accum_48__27_, prod_accum_48__26_, prod_accum_48__25_, prod_accum_48__24_, prod_accum_48__23_, prod_accum_48__22_, prod_accum_48__21_, prod_accum_48__20_, prod_accum_48__19_, prod_accum_48__18_, prod_accum_48__17_, prod_accum_48__16_, prod_accum_48__15_, prod_accum_48__14_, prod_accum_48__13_, prod_accum_48__12_, prod_accum_48__11_, prod_accum_48__10_, prod_accum_48__9_, prod_accum_48__8_, prod_accum_48__7_, prod_accum_48__6_, prod_accum_48__5_, prod_accum_48__4_, prod_accum_48__3_, prod_accum_48__2_, prod_accum_48__1_, prod_accum_48__0_ }),
    .a_o(a_r[3199:3136]),
    .b_o(b_r[3199:3136]),
    .s_o({ s_r_49__63_, s_r_49__62_, s_r_49__61_, s_r_49__60_, s_r_49__59_, s_r_49__58_, s_r_49__57_, s_r_49__56_, s_r_49__55_, s_r_49__54_, s_r_49__53_, s_r_49__52_, s_r_49__51_, s_r_49__50_, s_r_49__49_, s_r_49__48_, s_r_49__47_, s_r_49__46_, s_r_49__45_, s_r_49__44_, s_r_49__43_, s_r_49__42_, s_r_49__41_, s_r_49__40_, s_r_49__39_, s_r_49__38_, s_r_49__37_, s_r_49__36_, s_r_49__35_, s_r_49__34_, s_r_49__33_, s_r_49__32_, s_r_49__31_, s_r_49__30_, s_r_49__29_, s_r_49__28_, s_r_49__27_, s_r_49__26_, s_r_49__25_, s_r_49__24_, s_r_49__23_, s_r_49__22_, s_r_49__21_, s_r_49__20_, s_r_49__19_, s_r_49__18_, s_r_49__17_, s_r_49__16_, s_r_49__15_, s_r_49__14_, s_r_49__13_, s_r_49__12_, s_r_49__11_, s_r_49__10_, s_r_49__9_, s_r_49__8_, s_r_49__7_, s_r_49__6_, s_r_49__5_, s_r_49__4_, s_r_49__3_, s_r_49__2_, s_r_49__1_, s_r_49__0_ }),
    .c_o(c_r[49]),
    .prod_accum_o({ prod_accum_49__50_, prod_accum_49__49_, prod_accum_49__48_, prod_accum_49__47_, prod_accum_49__46_, prod_accum_49__45_, prod_accum_49__44_, prod_accum_49__43_, prod_accum_49__42_, prod_accum_49__41_, prod_accum_49__40_, prod_accum_49__39_, prod_accum_49__38_, prod_accum_49__37_, prod_accum_49__36_, prod_accum_49__35_, prod_accum_49__34_, prod_accum_49__33_, prod_accum_49__32_, prod_accum_49__31_, prod_accum_49__30_, prod_accum_49__29_, prod_accum_49__28_, prod_accum_49__27_, prod_accum_49__26_, prod_accum_49__25_, prod_accum_49__24_, prod_accum_49__23_, prod_accum_49__22_, prod_accum_49__21_, prod_accum_49__20_, prod_accum_49__19_, prod_accum_49__18_, prod_accum_49__17_, prod_accum_49__16_, prod_accum_49__15_, prod_accum_49__14_, prod_accum_49__13_, prod_accum_49__12_, prod_accum_49__11_, prod_accum_49__10_, prod_accum_49__9_, prod_accum_49__8_, prod_accum_49__7_, prod_accum_49__6_, prod_accum_49__5_, prod_accum_49__4_, prod_accum_49__3_, prod_accum_49__2_, prod_accum_49__1_, prod_accum_49__0_ })
  );


  bsg_mul_array_row_64_50_x
  genblk1_50__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3199:3136]),
    .b_i(b_r[3199:3136]),
    .s_i({ s_r_49__63_, s_r_49__62_, s_r_49__61_, s_r_49__60_, s_r_49__59_, s_r_49__58_, s_r_49__57_, s_r_49__56_, s_r_49__55_, s_r_49__54_, s_r_49__53_, s_r_49__52_, s_r_49__51_, s_r_49__50_, s_r_49__49_, s_r_49__48_, s_r_49__47_, s_r_49__46_, s_r_49__45_, s_r_49__44_, s_r_49__43_, s_r_49__42_, s_r_49__41_, s_r_49__40_, s_r_49__39_, s_r_49__38_, s_r_49__37_, s_r_49__36_, s_r_49__35_, s_r_49__34_, s_r_49__33_, s_r_49__32_, s_r_49__31_, s_r_49__30_, s_r_49__29_, s_r_49__28_, s_r_49__27_, s_r_49__26_, s_r_49__25_, s_r_49__24_, s_r_49__23_, s_r_49__22_, s_r_49__21_, s_r_49__20_, s_r_49__19_, s_r_49__18_, s_r_49__17_, s_r_49__16_, s_r_49__15_, s_r_49__14_, s_r_49__13_, s_r_49__12_, s_r_49__11_, s_r_49__10_, s_r_49__9_, s_r_49__8_, s_r_49__7_, s_r_49__6_, s_r_49__5_, s_r_49__4_, s_r_49__3_, s_r_49__2_, s_r_49__1_, s_r_49__0_ }),
    .c_i(c_r[49]),
    .prod_accum_i({ prod_accum_49__50_, prod_accum_49__49_, prod_accum_49__48_, prod_accum_49__47_, prod_accum_49__46_, prod_accum_49__45_, prod_accum_49__44_, prod_accum_49__43_, prod_accum_49__42_, prod_accum_49__41_, prod_accum_49__40_, prod_accum_49__39_, prod_accum_49__38_, prod_accum_49__37_, prod_accum_49__36_, prod_accum_49__35_, prod_accum_49__34_, prod_accum_49__33_, prod_accum_49__32_, prod_accum_49__31_, prod_accum_49__30_, prod_accum_49__29_, prod_accum_49__28_, prod_accum_49__27_, prod_accum_49__26_, prod_accum_49__25_, prod_accum_49__24_, prod_accum_49__23_, prod_accum_49__22_, prod_accum_49__21_, prod_accum_49__20_, prod_accum_49__19_, prod_accum_49__18_, prod_accum_49__17_, prod_accum_49__16_, prod_accum_49__15_, prod_accum_49__14_, prod_accum_49__13_, prod_accum_49__12_, prod_accum_49__11_, prod_accum_49__10_, prod_accum_49__9_, prod_accum_49__8_, prod_accum_49__7_, prod_accum_49__6_, prod_accum_49__5_, prod_accum_49__4_, prod_accum_49__3_, prod_accum_49__2_, prod_accum_49__1_, prod_accum_49__0_ }),
    .a_o(a_r[3263:3200]),
    .b_o(b_r[3263:3200]),
    .s_o({ s_r_50__63_, s_r_50__62_, s_r_50__61_, s_r_50__60_, s_r_50__59_, s_r_50__58_, s_r_50__57_, s_r_50__56_, s_r_50__55_, s_r_50__54_, s_r_50__53_, s_r_50__52_, s_r_50__51_, s_r_50__50_, s_r_50__49_, s_r_50__48_, s_r_50__47_, s_r_50__46_, s_r_50__45_, s_r_50__44_, s_r_50__43_, s_r_50__42_, s_r_50__41_, s_r_50__40_, s_r_50__39_, s_r_50__38_, s_r_50__37_, s_r_50__36_, s_r_50__35_, s_r_50__34_, s_r_50__33_, s_r_50__32_, s_r_50__31_, s_r_50__30_, s_r_50__29_, s_r_50__28_, s_r_50__27_, s_r_50__26_, s_r_50__25_, s_r_50__24_, s_r_50__23_, s_r_50__22_, s_r_50__21_, s_r_50__20_, s_r_50__19_, s_r_50__18_, s_r_50__17_, s_r_50__16_, s_r_50__15_, s_r_50__14_, s_r_50__13_, s_r_50__12_, s_r_50__11_, s_r_50__10_, s_r_50__9_, s_r_50__8_, s_r_50__7_, s_r_50__6_, s_r_50__5_, s_r_50__4_, s_r_50__3_, s_r_50__2_, s_r_50__1_, s_r_50__0_ }),
    .c_o(c_r[50]),
    .prod_accum_o({ prod_accum_50__51_, prod_accum_50__50_, prod_accum_50__49_, prod_accum_50__48_, prod_accum_50__47_, prod_accum_50__46_, prod_accum_50__45_, prod_accum_50__44_, prod_accum_50__43_, prod_accum_50__42_, prod_accum_50__41_, prod_accum_50__40_, prod_accum_50__39_, prod_accum_50__38_, prod_accum_50__37_, prod_accum_50__36_, prod_accum_50__35_, prod_accum_50__34_, prod_accum_50__33_, prod_accum_50__32_, prod_accum_50__31_, prod_accum_50__30_, prod_accum_50__29_, prod_accum_50__28_, prod_accum_50__27_, prod_accum_50__26_, prod_accum_50__25_, prod_accum_50__24_, prod_accum_50__23_, prod_accum_50__22_, prod_accum_50__21_, prod_accum_50__20_, prod_accum_50__19_, prod_accum_50__18_, prod_accum_50__17_, prod_accum_50__16_, prod_accum_50__15_, prod_accum_50__14_, prod_accum_50__13_, prod_accum_50__12_, prod_accum_50__11_, prod_accum_50__10_, prod_accum_50__9_, prod_accum_50__8_, prod_accum_50__7_, prod_accum_50__6_, prod_accum_50__5_, prod_accum_50__4_, prod_accum_50__3_, prod_accum_50__2_, prod_accum_50__1_, prod_accum_50__0_ })
  );


  bsg_mul_array_row_64_51_x
  genblk1_51__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3263:3200]),
    .b_i(b_r[3263:3200]),
    .s_i({ s_r_50__63_, s_r_50__62_, s_r_50__61_, s_r_50__60_, s_r_50__59_, s_r_50__58_, s_r_50__57_, s_r_50__56_, s_r_50__55_, s_r_50__54_, s_r_50__53_, s_r_50__52_, s_r_50__51_, s_r_50__50_, s_r_50__49_, s_r_50__48_, s_r_50__47_, s_r_50__46_, s_r_50__45_, s_r_50__44_, s_r_50__43_, s_r_50__42_, s_r_50__41_, s_r_50__40_, s_r_50__39_, s_r_50__38_, s_r_50__37_, s_r_50__36_, s_r_50__35_, s_r_50__34_, s_r_50__33_, s_r_50__32_, s_r_50__31_, s_r_50__30_, s_r_50__29_, s_r_50__28_, s_r_50__27_, s_r_50__26_, s_r_50__25_, s_r_50__24_, s_r_50__23_, s_r_50__22_, s_r_50__21_, s_r_50__20_, s_r_50__19_, s_r_50__18_, s_r_50__17_, s_r_50__16_, s_r_50__15_, s_r_50__14_, s_r_50__13_, s_r_50__12_, s_r_50__11_, s_r_50__10_, s_r_50__9_, s_r_50__8_, s_r_50__7_, s_r_50__6_, s_r_50__5_, s_r_50__4_, s_r_50__3_, s_r_50__2_, s_r_50__1_, s_r_50__0_ }),
    .c_i(c_r[50]),
    .prod_accum_i({ prod_accum_50__51_, prod_accum_50__50_, prod_accum_50__49_, prod_accum_50__48_, prod_accum_50__47_, prod_accum_50__46_, prod_accum_50__45_, prod_accum_50__44_, prod_accum_50__43_, prod_accum_50__42_, prod_accum_50__41_, prod_accum_50__40_, prod_accum_50__39_, prod_accum_50__38_, prod_accum_50__37_, prod_accum_50__36_, prod_accum_50__35_, prod_accum_50__34_, prod_accum_50__33_, prod_accum_50__32_, prod_accum_50__31_, prod_accum_50__30_, prod_accum_50__29_, prod_accum_50__28_, prod_accum_50__27_, prod_accum_50__26_, prod_accum_50__25_, prod_accum_50__24_, prod_accum_50__23_, prod_accum_50__22_, prod_accum_50__21_, prod_accum_50__20_, prod_accum_50__19_, prod_accum_50__18_, prod_accum_50__17_, prod_accum_50__16_, prod_accum_50__15_, prod_accum_50__14_, prod_accum_50__13_, prod_accum_50__12_, prod_accum_50__11_, prod_accum_50__10_, prod_accum_50__9_, prod_accum_50__8_, prod_accum_50__7_, prod_accum_50__6_, prod_accum_50__5_, prod_accum_50__4_, prod_accum_50__3_, prod_accum_50__2_, prod_accum_50__1_, prod_accum_50__0_ }),
    .a_o(a_r[3327:3264]),
    .b_o(b_r[3327:3264]),
    .s_o({ s_r_51__63_, s_r_51__62_, s_r_51__61_, s_r_51__60_, s_r_51__59_, s_r_51__58_, s_r_51__57_, s_r_51__56_, s_r_51__55_, s_r_51__54_, s_r_51__53_, s_r_51__52_, s_r_51__51_, s_r_51__50_, s_r_51__49_, s_r_51__48_, s_r_51__47_, s_r_51__46_, s_r_51__45_, s_r_51__44_, s_r_51__43_, s_r_51__42_, s_r_51__41_, s_r_51__40_, s_r_51__39_, s_r_51__38_, s_r_51__37_, s_r_51__36_, s_r_51__35_, s_r_51__34_, s_r_51__33_, s_r_51__32_, s_r_51__31_, s_r_51__30_, s_r_51__29_, s_r_51__28_, s_r_51__27_, s_r_51__26_, s_r_51__25_, s_r_51__24_, s_r_51__23_, s_r_51__22_, s_r_51__21_, s_r_51__20_, s_r_51__19_, s_r_51__18_, s_r_51__17_, s_r_51__16_, s_r_51__15_, s_r_51__14_, s_r_51__13_, s_r_51__12_, s_r_51__11_, s_r_51__10_, s_r_51__9_, s_r_51__8_, s_r_51__7_, s_r_51__6_, s_r_51__5_, s_r_51__4_, s_r_51__3_, s_r_51__2_, s_r_51__1_, s_r_51__0_ }),
    .c_o(c_r[51]),
    .prod_accum_o({ prod_accum_51__52_, prod_accum_51__51_, prod_accum_51__50_, prod_accum_51__49_, prod_accum_51__48_, prod_accum_51__47_, prod_accum_51__46_, prod_accum_51__45_, prod_accum_51__44_, prod_accum_51__43_, prod_accum_51__42_, prod_accum_51__41_, prod_accum_51__40_, prod_accum_51__39_, prod_accum_51__38_, prod_accum_51__37_, prod_accum_51__36_, prod_accum_51__35_, prod_accum_51__34_, prod_accum_51__33_, prod_accum_51__32_, prod_accum_51__31_, prod_accum_51__30_, prod_accum_51__29_, prod_accum_51__28_, prod_accum_51__27_, prod_accum_51__26_, prod_accum_51__25_, prod_accum_51__24_, prod_accum_51__23_, prod_accum_51__22_, prod_accum_51__21_, prod_accum_51__20_, prod_accum_51__19_, prod_accum_51__18_, prod_accum_51__17_, prod_accum_51__16_, prod_accum_51__15_, prod_accum_51__14_, prod_accum_51__13_, prod_accum_51__12_, prod_accum_51__11_, prod_accum_51__10_, prod_accum_51__9_, prod_accum_51__8_, prod_accum_51__7_, prod_accum_51__6_, prod_accum_51__5_, prod_accum_51__4_, prod_accum_51__3_, prod_accum_51__2_, prod_accum_51__1_, prod_accum_51__0_ })
  );


  bsg_mul_array_row_64_52_x
  genblk1_52__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3327:3264]),
    .b_i(b_r[3327:3264]),
    .s_i({ s_r_51__63_, s_r_51__62_, s_r_51__61_, s_r_51__60_, s_r_51__59_, s_r_51__58_, s_r_51__57_, s_r_51__56_, s_r_51__55_, s_r_51__54_, s_r_51__53_, s_r_51__52_, s_r_51__51_, s_r_51__50_, s_r_51__49_, s_r_51__48_, s_r_51__47_, s_r_51__46_, s_r_51__45_, s_r_51__44_, s_r_51__43_, s_r_51__42_, s_r_51__41_, s_r_51__40_, s_r_51__39_, s_r_51__38_, s_r_51__37_, s_r_51__36_, s_r_51__35_, s_r_51__34_, s_r_51__33_, s_r_51__32_, s_r_51__31_, s_r_51__30_, s_r_51__29_, s_r_51__28_, s_r_51__27_, s_r_51__26_, s_r_51__25_, s_r_51__24_, s_r_51__23_, s_r_51__22_, s_r_51__21_, s_r_51__20_, s_r_51__19_, s_r_51__18_, s_r_51__17_, s_r_51__16_, s_r_51__15_, s_r_51__14_, s_r_51__13_, s_r_51__12_, s_r_51__11_, s_r_51__10_, s_r_51__9_, s_r_51__8_, s_r_51__7_, s_r_51__6_, s_r_51__5_, s_r_51__4_, s_r_51__3_, s_r_51__2_, s_r_51__1_, s_r_51__0_ }),
    .c_i(c_r[51]),
    .prod_accum_i({ prod_accum_51__52_, prod_accum_51__51_, prod_accum_51__50_, prod_accum_51__49_, prod_accum_51__48_, prod_accum_51__47_, prod_accum_51__46_, prod_accum_51__45_, prod_accum_51__44_, prod_accum_51__43_, prod_accum_51__42_, prod_accum_51__41_, prod_accum_51__40_, prod_accum_51__39_, prod_accum_51__38_, prod_accum_51__37_, prod_accum_51__36_, prod_accum_51__35_, prod_accum_51__34_, prod_accum_51__33_, prod_accum_51__32_, prod_accum_51__31_, prod_accum_51__30_, prod_accum_51__29_, prod_accum_51__28_, prod_accum_51__27_, prod_accum_51__26_, prod_accum_51__25_, prod_accum_51__24_, prod_accum_51__23_, prod_accum_51__22_, prod_accum_51__21_, prod_accum_51__20_, prod_accum_51__19_, prod_accum_51__18_, prod_accum_51__17_, prod_accum_51__16_, prod_accum_51__15_, prod_accum_51__14_, prod_accum_51__13_, prod_accum_51__12_, prod_accum_51__11_, prod_accum_51__10_, prod_accum_51__9_, prod_accum_51__8_, prod_accum_51__7_, prod_accum_51__6_, prod_accum_51__5_, prod_accum_51__4_, prod_accum_51__3_, prod_accum_51__2_, prod_accum_51__1_, prod_accum_51__0_ }),
    .a_o(a_r[3391:3328]),
    .b_o(b_r[3391:3328]),
    .s_o({ s_r_52__63_, s_r_52__62_, s_r_52__61_, s_r_52__60_, s_r_52__59_, s_r_52__58_, s_r_52__57_, s_r_52__56_, s_r_52__55_, s_r_52__54_, s_r_52__53_, s_r_52__52_, s_r_52__51_, s_r_52__50_, s_r_52__49_, s_r_52__48_, s_r_52__47_, s_r_52__46_, s_r_52__45_, s_r_52__44_, s_r_52__43_, s_r_52__42_, s_r_52__41_, s_r_52__40_, s_r_52__39_, s_r_52__38_, s_r_52__37_, s_r_52__36_, s_r_52__35_, s_r_52__34_, s_r_52__33_, s_r_52__32_, s_r_52__31_, s_r_52__30_, s_r_52__29_, s_r_52__28_, s_r_52__27_, s_r_52__26_, s_r_52__25_, s_r_52__24_, s_r_52__23_, s_r_52__22_, s_r_52__21_, s_r_52__20_, s_r_52__19_, s_r_52__18_, s_r_52__17_, s_r_52__16_, s_r_52__15_, s_r_52__14_, s_r_52__13_, s_r_52__12_, s_r_52__11_, s_r_52__10_, s_r_52__9_, s_r_52__8_, s_r_52__7_, s_r_52__6_, s_r_52__5_, s_r_52__4_, s_r_52__3_, s_r_52__2_, s_r_52__1_, s_r_52__0_ }),
    .c_o(c_r[52]),
    .prod_accum_o({ prod_accum_52__53_, prod_accum_52__52_, prod_accum_52__51_, prod_accum_52__50_, prod_accum_52__49_, prod_accum_52__48_, prod_accum_52__47_, prod_accum_52__46_, prod_accum_52__45_, prod_accum_52__44_, prod_accum_52__43_, prod_accum_52__42_, prod_accum_52__41_, prod_accum_52__40_, prod_accum_52__39_, prod_accum_52__38_, prod_accum_52__37_, prod_accum_52__36_, prod_accum_52__35_, prod_accum_52__34_, prod_accum_52__33_, prod_accum_52__32_, prod_accum_52__31_, prod_accum_52__30_, prod_accum_52__29_, prod_accum_52__28_, prod_accum_52__27_, prod_accum_52__26_, prod_accum_52__25_, prod_accum_52__24_, prod_accum_52__23_, prod_accum_52__22_, prod_accum_52__21_, prod_accum_52__20_, prod_accum_52__19_, prod_accum_52__18_, prod_accum_52__17_, prod_accum_52__16_, prod_accum_52__15_, prod_accum_52__14_, prod_accum_52__13_, prod_accum_52__12_, prod_accum_52__11_, prod_accum_52__10_, prod_accum_52__9_, prod_accum_52__8_, prod_accum_52__7_, prod_accum_52__6_, prod_accum_52__5_, prod_accum_52__4_, prod_accum_52__3_, prod_accum_52__2_, prod_accum_52__1_, prod_accum_52__0_ })
  );


  bsg_mul_array_row_64_53_x
  genblk1_53__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3391:3328]),
    .b_i(b_r[3391:3328]),
    .s_i({ s_r_52__63_, s_r_52__62_, s_r_52__61_, s_r_52__60_, s_r_52__59_, s_r_52__58_, s_r_52__57_, s_r_52__56_, s_r_52__55_, s_r_52__54_, s_r_52__53_, s_r_52__52_, s_r_52__51_, s_r_52__50_, s_r_52__49_, s_r_52__48_, s_r_52__47_, s_r_52__46_, s_r_52__45_, s_r_52__44_, s_r_52__43_, s_r_52__42_, s_r_52__41_, s_r_52__40_, s_r_52__39_, s_r_52__38_, s_r_52__37_, s_r_52__36_, s_r_52__35_, s_r_52__34_, s_r_52__33_, s_r_52__32_, s_r_52__31_, s_r_52__30_, s_r_52__29_, s_r_52__28_, s_r_52__27_, s_r_52__26_, s_r_52__25_, s_r_52__24_, s_r_52__23_, s_r_52__22_, s_r_52__21_, s_r_52__20_, s_r_52__19_, s_r_52__18_, s_r_52__17_, s_r_52__16_, s_r_52__15_, s_r_52__14_, s_r_52__13_, s_r_52__12_, s_r_52__11_, s_r_52__10_, s_r_52__9_, s_r_52__8_, s_r_52__7_, s_r_52__6_, s_r_52__5_, s_r_52__4_, s_r_52__3_, s_r_52__2_, s_r_52__1_, s_r_52__0_ }),
    .c_i(c_r[52]),
    .prod_accum_i({ prod_accum_52__53_, prod_accum_52__52_, prod_accum_52__51_, prod_accum_52__50_, prod_accum_52__49_, prod_accum_52__48_, prod_accum_52__47_, prod_accum_52__46_, prod_accum_52__45_, prod_accum_52__44_, prod_accum_52__43_, prod_accum_52__42_, prod_accum_52__41_, prod_accum_52__40_, prod_accum_52__39_, prod_accum_52__38_, prod_accum_52__37_, prod_accum_52__36_, prod_accum_52__35_, prod_accum_52__34_, prod_accum_52__33_, prod_accum_52__32_, prod_accum_52__31_, prod_accum_52__30_, prod_accum_52__29_, prod_accum_52__28_, prod_accum_52__27_, prod_accum_52__26_, prod_accum_52__25_, prod_accum_52__24_, prod_accum_52__23_, prod_accum_52__22_, prod_accum_52__21_, prod_accum_52__20_, prod_accum_52__19_, prod_accum_52__18_, prod_accum_52__17_, prod_accum_52__16_, prod_accum_52__15_, prod_accum_52__14_, prod_accum_52__13_, prod_accum_52__12_, prod_accum_52__11_, prod_accum_52__10_, prod_accum_52__9_, prod_accum_52__8_, prod_accum_52__7_, prod_accum_52__6_, prod_accum_52__5_, prod_accum_52__4_, prod_accum_52__3_, prod_accum_52__2_, prod_accum_52__1_, prod_accum_52__0_ }),
    .a_o(a_r[3455:3392]),
    .b_o(b_r[3455:3392]),
    .s_o({ s_r_53__63_, s_r_53__62_, s_r_53__61_, s_r_53__60_, s_r_53__59_, s_r_53__58_, s_r_53__57_, s_r_53__56_, s_r_53__55_, s_r_53__54_, s_r_53__53_, s_r_53__52_, s_r_53__51_, s_r_53__50_, s_r_53__49_, s_r_53__48_, s_r_53__47_, s_r_53__46_, s_r_53__45_, s_r_53__44_, s_r_53__43_, s_r_53__42_, s_r_53__41_, s_r_53__40_, s_r_53__39_, s_r_53__38_, s_r_53__37_, s_r_53__36_, s_r_53__35_, s_r_53__34_, s_r_53__33_, s_r_53__32_, s_r_53__31_, s_r_53__30_, s_r_53__29_, s_r_53__28_, s_r_53__27_, s_r_53__26_, s_r_53__25_, s_r_53__24_, s_r_53__23_, s_r_53__22_, s_r_53__21_, s_r_53__20_, s_r_53__19_, s_r_53__18_, s_r_53__17_, s_r_53__16_, s_r_53__15_, s_r_53__14_, s_r_53__13_, s_r_53__12_, s_r_53__11_, s_r_53__10_, s_r_53__9_, s_r_53__8_, s_r_53__7_, s_r_53__6_, s_r_53__5_, s_r_53__4_, s_r_53__3_, s_r_53__2_, s_r_53__1_, s_r_53__0_ }),
    .c_o(c_r[53]),
    .prod_accum_o({ prod_accum_53__54_, prod_accum_53__53_, prod_accum_53__52_, prod_accum_53__51_, prod_accum_53__50_, prod_accum_53__49_, prod_accum_53__48_, prod_accum_53__47_, prod_accum_53__46_, prod_accum_53__45_, prod_accum_53__44_, prod_accum_53__43_, prod_accum_53__42_, prod_accum_53__41_, prod_accum_53__40_, prod_accum_53__39_, prod_accum_53__38_, prod_accum_53__37_, prod_accum_53__36_, prod_accum_53__35_, prod_accum_53__34_, prod_accum_53__33_, prod_accum_53__32_, prod_accum_53__31_, prod_accum_53__30_, prod_accum_53__29_, prod_accum_53__28_, prod_accum_53__27_, prod_accum_53__26_, prod_accum_53__25_, prod_accum_53__24_, prod_accum_53__23_, prod_accum_53__22_, prod_accum_53__21_, prod_accum_53__20_, prod_accum_53__19_, prod_accum_53__18_, prod_accum_53__17_, prod_accum_53__16_, prod_accum_53__15_, prod_accum_53__14_, prod_accum_53__13_, prod_accum_53__12_, prod_accum_53__11_, prod_accum_53__10_, prod_accum_53__9_, prod_accum_53__8_, prod_accum_53__7_, prod_accum_53__6_, prod_accum_53__5_, prod_accum_53__4_, prod_accum_53__3_, prod_accum_53__2_, prod_accum_53__1_, prod_accum_53__0_ })
  );


  bsg_mul_array_row_64_54_x
  genblk1_54__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3455:3392]),
    .b_i(b_r[3455:3392]),
    .s_i({ s_r_53__63_, s_r_53__62_, s_r_53__61_, s_r_53__60_, s_r_53__59_, s_r_53__58_, s_r_53__57_, s_r_53__56_, s_r_53__55_, s_r_53__54_, s_r_53__53_, s_r_53__52_, s_r_53__51_, s_r_53__50_, s_r_53__49_, s_r_53__48_, s_r_53__47_, s_r_53__46_, s_r_53__45_, s_r_53__44_, s_r_53__43_, s_r_53__42_, s_r_53__41_, s_r_53__40_, s_r_53__39_, s_r_53__38_, s_r_53__37_, s_r_53__36_, s_r_53__35_, s_r_53__34_, s_r_53__33_, s_r_53__32_, s_r_53__31_, s_r_53__30_, s_r_53__29_, s_r_53__28_, s_r_53__27_, s_r_53__26_, s_r_53__25_, s_r_53__24_, s_r_53__23_, s_r_53__22_, s_r_53__21_, s_r_53__20_, s_r_53__19_, s_r_53__18_, s_r_53__17_, s_r_53__16_, s_r_53__15_, s_r_53__14_, s_r_53__13_, s_r_53__12_, s_r_53__11_, s_r_53__10_, s_r_53__9_, s_r_53__8_, s_r_53__7_, s_r_53__6_, s_r_53__5_, s_r_53__4_, s_r_53__3_, s_r_53__2_, s_r_53__1_, s_r_53__0_ }),
    .c_i(c_r[53]),
    .prod_accum_i({ prod_accum_53__54_, prod_accum_53__53_, prod_accum_53__52_, prod_accum_53__51_, prod_accum_53__50_, prod_accum_53__49_, prod_accum_53__48_, prod_accum_53__47_, prod_accum_53__46_, prod_accum_53__45_, prod_accum_53__44_, prod_accum_53__43_, prod_accum_53__42_, prod_accum_53__41_, prod_accum_53__40_, prod_accum_53__39_, prod_accum_53__38_, prod_accum_53__37_, prod_accum_53__36_, prod_accum_53__35_, prod_accum_53__34_, prod_accum_53__33_, prod_accum_53__32_, prod_accum_53__31_, prod_accum_53__30_, prod_accum_53__29_, prod_accum_53__28_, prod_accum_53__27_, prod_accum_53__26_, prod_accum_53__25_, prod_accum_53__24_, prod_accum_53__23_, prod_accum_53__22_, prod_accum_53__21_, prod_accum_53__20_, prod_accum_53__19_, prod_accum_53__18_, prod_accum_53__17_, prod_accum_53__16_, prod_accum_53__15_, prod_accum_53__14_, prod_accum_53__13_, prod_accum_53__12_, prod_accum_53__11_, prod_accum_53__10_, prod_accum_53__9_, prod_accum_53__8_, prod_accum_53__7_, prod_accum_53__6_, prod_accum_53__5_, prod_accum_53__4_, prod_accum_53__3_, prod_accum_53__2_, prod_accum_53__1_, prod_accum_53__0_ }),
    .a_o(a_r[3519:3456]),
    .b_o(b_r[3519:3456]),
    .s_o({ s_r_54__63_, s_r_54__62_, s_r_54__61_, s_r_54__60_, s_r_54__59_, s_r_54__58_, s_r_54__57_, s_r_54__56_, s_r_54__55_, s_r_54__54_, s_r_54__53_, s_r_54__52_, s_r_54__51_, s_r_54__50_, s_r_54__49_, s_r_54__48_, s_r_54__47_, s_r_54__46_, s_r_54__45_, s_r_54__44_, s_r_54__43_, s_r_54__42_, s_r_54__41_, s_r_54__40_, s_r_54__39_, s_r_54__38_, s_r_54__37_, s_r_54__36_, s_r_54__35_, s_r_54__34_, s_r_54__33_, s_r_54__32_, s_r_54__31_, s_r_54__30_, s_r_54__29_, s_r_54__28_, s_r_54__27_, s_r_54__26_, s_r_54__25_, s_r_54__24_, s_r_54__23_, s_r_54__22_, s_r_54__21_, s_r_54__20_, s_r_54__19_, s_r_54__18_, s_r_54__17_, s_r_54__16_, s_r_54__15_, s_r_54__14_, s_r_54__13_, s_r_54__12_, s_r_54__11_, s_r_54__10_, s_r_54__9_, s_r_54__8_, s_r_54__7_, s_r_54__6_, s_r_54__5_, s_r_54__4_, s_r_54__3_, s_r_54__2_, s_r_54__1_, s_r_54__0_ }),
    .c_o(c_r[54]),
    .prod_accum_o({ prod_accum_54__55_, prod_accum_54__54_, prod_accum_54__53_, prod_accum_54__52_, prod_accum_54__51_, prod_accum_54__50_, prod_accum_54__49_, prod_accum_54__48_, prod_accum_54__47_, prod_accum_54__46_, prod_accum_54__45_, prod_accum_54__44_, prod_accum_54__43_, prod_accum_54__42_, prod_accum_54__41_, prod_accum_54__40_, prod_accum_54__39_, prod_accum_54__38_, prod_accum_54__37_, prod_accum_54__36_, prod_accum_54__35_, prod_accum_54__34_, prod_accum_54__33_, prod_accum_54__32_, prod_accum_54__31_, prod_accum_54__30_, prod_accum_54__29_, prod_accum_54__28_, prod_accum_54__27_, prod_accum_54__26_, prod_accum_54__25_, prod_accum_54__24_, prod_accum_54__23_, prod_accum_54__22_, prod_accum_54__21_, prod_accum_54__20_, prod_accum_54__19_, prod_accum_54__18_, prod_accum_54__17_, prod_accum_54__16_, prod_accum_54__15_, prod_accum_54__14_, prod_accum_54__13_, prod_accum_54__12_, prod_accum_54__11_, prod_accum_54__10_, prod_accum_54__9_, prod_accum_54__8_, prod_accum_54__7_, prod_accum_54__6_, prod_accum_54__5_, prod_accum_54__4_, prod_accum_54__3_, prod_accum_54__2_, prod_accum_54__1_, prod_accum_54__0_ })
  );


  bsg_mul_array_row_64_55_x
  genblk1_55__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3519:3456]),
    .b_i(b_r[3519:3456]),
    .s_i({ s_r_54__63_, s_r_54__62_, s_r_54__61_, s_r_54__60_, s_r_54__59_, s_r_54__58_, s_r_54__57_, s_r_54__56_, s_r_54__55_, s_r_54__54_, s_r_54__53_, s_r_54__52_, s_r_54__51_, s_r_54__50_, s_r_54__49_, s_r_54__48_, s_r_54__47_, s_r_54__46_, s_r_54__45_, s_r_54__44_, s_r_54__43_, s_r_54__42_, s_r_54__41_, s_r_54__40_, s_r_54__39_, s_r_54__38_, s_r_54__37_, s_r_54__36_, s_r_54__35_, s_r_54__34_, s_r_54__33_, s_r_54__32_, s_r_54__31_, s_r_54__30_, s_r_54__29_, s_r_54__28_, s_r_54__27_, s_r_54__26_, s_r_54__25_, s_r_54__24_, s_r_54__23_, s_r_54__22_, s_r_54__21_, s_r_54__20_, s_r_54__19_, s_r_54__18_, s_r_54__17_, s_r_54__16_, s_r_54__15_, s_r_54__14_, s_r_54__13_, s_r_54__12_, s_r_54__11_, s_r_54__10_, s_r_54__9_, s_r_54__8_, s_r_54__7_, s_r_54__6_, s_r_54__5_, s_r_54__4_, s_r_54__3_, s_r_54__2_, s_r_54__1_, s_r_54__0_ }),
    .c_i(c_r[54]),
    .prod_accum_i({ prod_accum_54__55_, prod_accum_54__54_, prod_accum_54__53_, prod_accum_54__52_, prod_accum_54__51_, prod_accum_54__50_, prod_accum_54__49_, prod_accum_54__48_, prod_accum_54__47_, prod_accum_54__46_, prod_accum_54__45_, prod_accum_54__44_, prod_accum_54__43_, prod_accum_54__42_, prod_accum_54__41_, prod_accum_54__40_, prod_accum_54__39_, prod_accum_54__38_, prod_accum_54__37_, prod_accum_54__36_, prod_accum_54__35_, prod_accum_54__34_, prod_accum_54__33_, prod_accum_54__32_, prod_accum_54__31_, prod_accum_54__30_, prod_accum_54__29_, prod_accum_54__28_, prod_accum_54__27_, prod_accum_54__26_, prod_accum_54__25_, prod_accum_54__24_, prod_accum_54__23_, prod_accum_54__22_, prod_accum_54__21_, prod_accum_54__20_, prod_accum_54__19_, prod_accum_54__18_, prod_accum_54__17_, prod_accum_54__16_, prod_accum_54__15_, prod_accum_54__14_, prod_accum_54__13_, prod_accum_54__12_, prod_accum_54__11_, prod_accum_54__10_, prod_accum_54__9_, prod_accum_54__8_, prod_accum_54__7_, prod_accum_54__6_, prod_accum_54__5_, prod_accum_54__4_, prod_accum_54__3_, prod_accum_54__2_, prod_accum_54__1_, prod_accum_54__0_ }),
    .a_o(a_r[3583:3520]),
    .b_o(b_r[3583:3520]),
    .s_o({ s_r_55__63_, s_r_55__62_, s_r_55__61_, s_r_55__60_, s_r_55__59_, s_r_55__58_, s_r_55__57_, s_r_55__56_, s_r_55__55_, s_r_55__54_, s_r_55__53_, s_r_55__52_, s_r_55__51_, s_r_55__50_, s_r_55__49_, s_r_55__48_, s_r_55__47_, s_r_55__46_, s_r_55__45_, s_r_55__44_, s_r_55__43_, s_r_55__42_, s_r_55__41_, s_r_55__40_, s_r_55__39_, s_r_55__38_, s_r_55__37_, s_r_55__36_, s_r_55__35_, s_r_55__34_, s_r_55__33_, s_r_55__32_, s_r_55__31_, s_r_55__30_, s_r_55__29_, s_r_55__28_, s_r_55__27_, s_r_55__26_, s_r_55__25_, s_r_55__24_, s_r_55__23_, s_r_55__22_, s_r_55__21_, s_r_55__20_, s_r_55__19_, s_r_55__18_, s_r_55__17_, s_r_55__16_, s_r_55__15_, s_r_55__14_, s_r_55__13_, s_r_55__12_, s_r_55__11_, s_r_55__10_, s_r_55__9_, s_r_55__8_, s_r_55__7_, s_r_55__6_, s_r_55__5_, s_r_55__4_, s_r_55__3_, s_r_55__2_, s_r_55__1_, s_r_55__0_ }),
    .c_o(c_r[55]),
    .prod_accum_o({ prod_accum_55__56_, prod_accum_55__55_, prod_accum_55__54_, prod_accum_55__53_, prod_accum_55__52_, prod_accum_55__51_, prod_accum_55__50_, prod_accum_55__49_, prod_accum_55__48_, prod_accum_55__47_, prod_accum_55__46_, prod_accum_55__45_, prod_accum_55__44_, prod_accum_55__43_, prod_accum_55__42_, prod_accum_55__41_, prod_accum_55__40_, prod_accum_55__39_, prod_accum_55__38_, prod_accum_55__37_, prod_accum_55__36_, prod_accum_55__35_, prod_accum_55__34_, prod_accum_55__33_, prod_accum_55__32_, prod_accum_55__31_, prod_accum_55__30_, prod_accum_55__29_, prod_accum_55__28_, prod_accum_55__27_, prod_accum_55__26_, prod_accum_55__25_, prod_accum_55__24_, prod_accum_55__23_, prod_accum_55__22_, prod_accum_55__21_, prod_accum_55__20_, prod_accum_55__19_, prod_accum_55__18_, prod_accum_55__17_, prod_accum_55__16_, prod_accum_55__15_, prod_accum_55__14_, prod_accum_55__13_, prod_accum_55__12_, prod_accum_55__11_, prod_accum_55__10_, prod_accum_55__9_, prod_accum_55__8_, prod_accum_55__7_, prod_accum_55__6_, prod_accum_55__5_, prod_accum_55__4_, prod_accum_55__3_, prod_accum_55__2_, prod_accum_55__1_, prod_accum_55__0_ })
  );


  bsg_mul_array_row_64_56_x
  genblk1_56__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3583:3520]),
    .b_i(b_r[3583:3520]),
    .s_i({ s_r_55__63_, s_r_55__62_, s_r_55__61_, s_r_55__60_, s_r_55__59_, s_r_55__58_, s_r_55__57_, s_r_55__56_, s_r_55__55_, s_r_55__54_, s_r_55__53_, s_r_55__52_, s_r_55__51_, s_r_55__50_, s_r_55__49_, s_r_55__48_, s_r_55__47_, s_r_55__46_, s_r_55__45_, s_r_55__44_, s_r_55__43_, s_r_55__42_, s_r_55__41_, s_r_55__40_, s_r_55__39_, s_r_55__38_, s_r_55__37_, s_r_55__36_, s_r_55__35_, s_r_55__34_, s_r_55__33_, s_r_55__32_, s_r_55__31_, s_r_55__30_, s_r_55__29_, s_r_55__28_, s_r_55__27_, s_r_55__26_, s_r_55__25_, s_r_55__24_, s_r_55__23_, s_r_55__22_, s_r_55__21_, s_r_55__20_, s_r_55__19_, s_r_55__18_, s_r_55__17_, s_r_55__16_, s_r_55__15_, s_r_55__14_, s_r_55__13_, s_r_55__12_, s_r_55__11_, s_r_55__10_, s_r_55__9_, s_r_55__8_, s_r_55__7_, s_r_55__6_, s_r_55__5_, s_r_55__4_, s_r_55__3_, s_r_55__2_, s_r_55__1_, s_r_55__0_ }),
    .c_i(c_r[55]),
    .prod_accum_i({ prod_accum_55__56_, prod_accum_55__55_, prod_accum_55__54_, prod_accum_55__53_, prod_accum_55__52_, prod_accum_55__51_, prod_accum_55__50_, prod_accum_55__49_, prod_accum_55__48_, prod_accum_55__47_, prod_accum_55__46_, prod_accum_55__45_, prod_accum_55__44_, prod_accum_55__43_, prod_accum_55__42_, prod_accum_55__41_, prod_accum_55__40_, prod_accum_55__39_, prod_accum_55__38_, prod_accum_55__37_, prod_accum_55__36_, prod_accum_55__35_, prod_accum_55__34_, prod_accum_55__33_, prod_accum_55__32_, prod_accum_55__31_, prod_accum_55__30_, prod_accum_55__29_, prod_accum_55__28_, prod_accum_55__27_, prod_accum_55__26_, prod_accum_55__25_, prod_accum_55__24_, prod_accum_55__23_, prod_accum_55__22_, prod_accum_55__21_, prod_accum_55__20_, prod_accum_55__19_, prod_accum_55__18_, prod_accum_55__17_, prod_accum_55__16_, prod_accum_55__15_, prod_accum_55__14_, prod_accum_55__13_, prod_accum_55__12_, prod_accum_55__11_, prod_accum_55__10_, prod_accum_55__9_, prod_accum_55__8_, prod_accum_55__7_, prod_accum_55__6_, prod_accum_55__5_, prod_accum_55__4_, prod_accum_55__3_, prod_accum_55__2_, prod_accum_55__1_, prod_accum_55__0_ }),
    .a_o(a_r[3647:3584]),
    .b_o(b_r[3647:3584]),
    .s_o({ s_r_56__63_, s_r_56__62_, s_r_56__61_, s_r_56__60_, s_r_56__59_, s_r_56__58_, s_r_56__57_, s_r_56__56_, s_r_56__55_, s_r_56__54_, s_r_56__53_, s_r_56__52_, s_r_56__51_, s_r_56__50_, s_r_56__49_, s_r_56__48_, s_r_56__47_, s_r_56__46_, s_r_56__45_, s_r_56__44_, s_r_56__43_, s_r_56__42_, s_r_56__41_, s_r_56__40_, s_r_56__39_, s_r_56__38_, s_r_56__37_, s_r_56__36_, s_r_56__35_, s_r_56__34_, s_r_56__33_, s_r_56__32_, s_r_56__31_, s_r_56__30_, s_r_56__29_, s_r_56__28_, s_r_56__27_, s_r_56__26_, s_r_56__25_, s_r_56__24_, s_r_56__23_, s_r_56__22_, s_r_56__21_, s_r_56__20_, s_r_56__19_, s_r_56__18_, s_r_56__17_, s_r_56__16_, s_r_56__15_, s_r_56__14_, s_r_56__13_, s_r_56__12_, s_r_56__11_, s_r_56__10_, s_r_56__9_, s_r_56__8_, s_r_56__7_, s_r_56__6_, s_r_56__5_, s_r_56__4_, s_r_56__3_, s_r_56__2_, s_r_56__1_, s_r_56__0_ }),
    .c_o(c_r[56]),
    .prod_accum_o({ prod_accum_56__57_, prod_accum_56__56_, prod_accum_56__55_, prod_accum_56__54_, prod_accum_56__53_, prod_accum_56__52_, prod_accum_56__51_, prod_accum_56__50_, prod_accum_56__49_, prod_accum_56__48_, prod_accum_56__47_, prod_accum_56__46_, prod_accum_56__45_, prod_accum_56__44_, prod_accum_56__43_, prod_accum_56__42_, prod_accum_56__41_, prod_accum_56__40_, prod_accum_56__39_, prod_accum_56__38_, prod_accum_56__37_, prod_accum_56__36_, prod_accum_56__35_, prod_accum_56__34_, prod_accum_56__33_, prod_accum_56__32_, prod_accum_56__31_, prod_accum_56__30_, prod_accum_56__29_, prod_accum_56__28_, prod_accum_56__27_, prod_accum_56__26_, prod_accum_56__25_, prod_accum_56__24_, prod_accum_56__23_, prod_accum_56__22_, prod_accum_56__21_, prod_accum_56__20_, prod_accum_56__19_, prod_accum_56__18_, prod_accum_56__17_, prod_accum_56__16_, prod_accum_56__15_, prod_accum_56__14_, prod_accum_56__13_, prod_accum_56__12_, prod_accum_56__11_, prod_accum_56__10_, prod_accum_56__9_, prod_accum_56__8_, prod_accum_56__7_, prod_accum_56__6_, prod_accum_56__5_, prod_accum_56__4_, prod_accum_56__3_, prod_accum_56__2_, prod_accum_56__1_, prod_accum_56__0_ })
  );


  bsg_mul_array_row_64_57_x
  genblk1_57__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3647:3584]),
    .b_i(b_r[3647:3584]),
    .s_i({ s_r_56__63_, s_r_56__62_, s_r_56__61_, s_r_56__60_, s_r_56__59_, s_r_56__58_, s_r_56__57_, s_r_56__56_, s_r_56__55_, s_r_56__54_, s_r_56__53_, s_r_56__52_, s_r_56__51_, s_r_56__50_, s_r_56__49_, s_r_56__48_, s_r_56__47_, s_r_56__46_, s_r_56__45_, s_r_56__44_, s_r_56__43_, s_r_56__42_, s_r_56__41_, s_r_56__40_, s_r_56__39_, s_r_56__38_, s_r_56__37_, s_r_56__36_, s_r_56__35_, s_r_56__34_, s_r_56__33_, s_r_56__32_, s_r_56__31_, s_r_56__30_, s_r_56__29_, s_r_56__28_, s_r_56__27_, s_r_56__26_, s_r_56__25_, s_r_56__24_, s_r_56__23_, s_r_56__22_, s_r_56__21_, s_r_56__20_, s_r_56__19_, s_r_56__18_, s_r_56__17_, s_r_56__16_, s_r_56__15_, s_r_56__14_, s_r_56__13_, s_r_56__12_, s_r_56__11_, s_r_56__10_, s_r_56__9_, s_r_56__8_, s_r_56__7_, s_r_56__6_, s_r_56__5_, s_r_56__4_, s_r_56__3_, s_r_56__2_, s_r_56__1_, s_r_56__0_ }),
    .c_i(c_r[56]),
    .prod_accum_i({ prod_accum_56__57_, prod_accum_56__56_, prod_accum_56__55_, prod_accum_56__54_, prod_accum_56__53_, prod_accum_56__52_, prod_accum_56__51_, prod_accum_56__50_, prod_accum_56__49_, prod_accum_56__48_, prod_accum_56__47_, prod_accum_56__46_, prod_accum_56__45_, prod_accum_56__44_, prod_accum_56__43_, prod_accum_56__42_, prod_accum_56__41_, prod_accum_56__40_, prod_accum_56__39_, prod_accum_56__38_, prod_accum_56__37_, prod_accum_56__36_, prod_accum_56__35_, prod_accum_56__34_, prod_accum_56__33_, prod_accum_56__32_, prod_accum_56__31_, prod_accum_56__30_, prod_accum_56__29_, prod_accum_56__28_, prod_accum_56__27_, prod_accum_56__26_, prod_accum_56__25_, prod_accum_56__24_, prod_accum_56__23_, prod_accum_56__22_, prod_accum_56__21_, prod_accum_56__20_, prod_accum_56__19_, prod_accum_56__18_, prod_accum_56__17_, prod_accum_56__16_, prod_accum_56__15_, prod_accum_56__14_, prod_accum_56__13_, prod_accum_56__12_, prod_accum_56__11_, prod_accum_56__10_, prod_accum_56__9_, prod_accum_56__8_, prod_accum_56__7_, prod_accum_56__6_, prod_accum_56__5_, prod_accum_56__4_, prod_accum_56__3_, prod_accum_56__2_, prod_accum_56__1_, prod_accum_56__0_ }),
    .a_o(a_r[3711:3648]),
    .b_o(b_r[3711:3648]),
    .s_o({ s_r_57__63_, s_r_57__62_, s_r_57__61_, s_r_57__60_, s_r_57__59_, s_r_57__58_, s_r_57__57_, s_r_57__56_, s_r_57__55_, s_r_57__54_, s_r_57__53_, s_r_57__52_, s_r_57__51_, s_r_57__50_, s_r_57__49_, s_r_57__48_, s_r_57__47_, s_r_57__46_, s_r_57__45_, s_r_57__44_, s_r_57__43_, s_r_57__42_, s_r_57__41_, s_r_57__40_, s_r_57__39_, s_r_57__38_, s_r_57__37_, s_r_57__36_, s_r_57__35_, s_r_57__34_, s_r_57__33_, s_r_57__32_, s_r_57__31_, s_r_57__30_, s_r_57__29_, s_r_57__28_, s_r_57__27_, s_r_57__26_, s_r_57__25_, s_r_57__24_, s_r_57__23_, s_r_57__22_, s_r_57__21_, s_r_57__20_, s_r_57__19_, s_r_57__18_, s_r_57__17_, s_r_57__16_, s_r_57__15_, s_r_57__14_, s_r_57__13_, s_r_57__12_, s_r_57__11_, s_r_57__10_, s_r_57__9_, s_r_57__8_, s_r_57__7_, s_r_57__6_, s_r_57__5_, s_r_57__4_, s_r_57__3_, s_r_57__2_, s_r_57__1_, s_r_57__0_ }),
    .c_o(c_r[57]),
    .prod_accum_o({ prod_accum_57__58_, prod_accum_57__57_, prod_accum_57__56_, prod_accum_57__55_, prod_accum_57__54_, prod_accum_57__53_, prod_accum_57__52_, prod_accum_57__51_, prod_accum_57__50_, prod_accum_57__49_, prod_accum_57__48_, prod_accum_57__47_, prod_accum_57__46_, prod_accum_57__45_, prod_accum_57__44_, prod_accum_57__43_, prod_accum_57__42_, prod_accum_57__41_, prod_accum_57__40_, prod_accum_57__39_, prod_accum_57__38_, prod_accum_57__37_, prod_accum_57__36_, prod_accum_57__35_, prod_accum_57__34_, prod_accum_57__33_, prod_accum_57__32_, prod_accum_57__31_, prod_accum_57__30_, prod_accum_57__29_, prod_accum_57__28_, prod_accum_57__27_, prod_accum_57__26_, prod_accum_57__25_, prod_accum_57__24_, prod_accum_57__23_, prod_accum_57__22_, prod_accum_57__21_, prod_accum_57__20_, prod_accum_57__19_, prod_accum_57__18_, prod_accum_57__17_, prod_accum_57__16_, prod_accum_57__15_, prod_accum_57__14_, prod_accum_57__13_, prod_accum_57__12_, prod_accum_57__11_, prod_accum_57__10_, prod_accum_57__9_, prod_accum_57__8_, prod_accum_57__7_, prod_accum_57__6_, prod_accum_57__5_, prod_accum_57__4_, prod_accum_57__3_, prod_accum_57__2_, prod_accum_57__1_, prod_accum_57__0_ })
  );


  bsg_mul_array_row_64_58_x
  genblk1_58__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3711:3648]),
    .b_i(b_r[3711:3648]),
    .s_i({ s_r_57__63_, s_r_57__62_, s_r_57__61_, s_r_57__60_, s_r_57__59_, s_r_57__58_, s_r_57__57_, s_r_57__56_, s_r_57__55_, s_r_57__54_, s_r_57__53_, s_r_57__52_, s_r_57__51_, s_r_57__50_, s_r_57__49_, s_r_57__48_, s_r_57__47_, s_r_57__46_, s_r_57__45_, s_r_57__44_, s_r_57__43_, s_r_57__42_, s_r_57__41_, s_r_57__40_, s_r_57__39_, s_r_57__38_, s_r_57__37_, s_r_57__36_, s_r_57__35_, s_r_57__34_, s_r_57__33_, s_r_57__32_, s_r_57__31_, s_r_57__30_, s_r_57__29_, s_r_57__28_, s_r_57__27_, s_r_57__26_, s_r_57__25_, s_r_57__24_, s_r_57__23_, s_r_57__22_, s_r_57__21_, s_r_57__20_, s_r_57__19_, s_r_57__18_, s_r_57__17_, s_r_57__16_, s_r_57__15_, s_r_57__14_, s_r_57__13_, s_r_57__12_, s_r_57__11_, s_r_57__10_, s_r_57__9_, s_r_57__8_, s_r_57__7_, s_r_57__6_, s_r_57__5_, s_r_57__4_, s_r_57__3_, s_r_57__2_, s_r_57__1_, s_r_57__0_ }),
    .c_i(c_r[57]),
    .prod_accum_i({ prod_accum_57__58_, prod_accum_57__57_, prod_accum_57__56_, prod_accum_57__55_, prod_accum_57__54_, prod_accum_57__53_, prod_accum_57__52_, prod_accum_57__51_, prod_accum_57__50_, prod_accum_57__49_, prod_accum_57__48_, prod_accum_57__47_, prod_accum_57__46_, prod_accum_57__45_, prod_accum_57__44_, prod_accum_57__43_, prod_accum_57__42_, prod_accum_57__41_, prod_accum_57__40_, prod_accum_57__39_, prod_accum_57__38_, prod_accum_57__37_, prod_accum_57__36_, prod_accum_57__35_, prod_accum_57__34_, prod_accum_57__33_, prod_accum_57__32_, prod_accum_57__31_, prod_accum_57__30_, prod_accum_57__29_, prod_accum_57__28_, prod_accum_57__27_, prod_accum_57__26_, prod_accum_57__25_, prod_accum_57__24_, prod_accum_57__23_, prod_accum_57__22_, prod_accum_57__21_, prod_accum_57__20_, prod_accum_57__19_, prod_accum_57__18_, prod_accum_57__17_, prod_accum_57__16_, prod_accum_57__15_, prod_accum_57__14_, prod_accum_57__13_, prod_accum_57__12_, prod_accum_57__11_, prod_accum_57__10_, prod_accum_57__9_, prod_accum_57__8_, prod_accum_57__7_, prod_accum_57__6_, prod_accum_57__5_, prod_accum_57__4_, prod_accum_57__3_, prod_accum_57__2_, prod_accum_57__1_, prod_accum_57__0_ }),
    .a_o(a_r[3775:3712]),
    .b_o(b_r[3775:3712]),
    .s_o({ s_r_58__63_, s_r_58__62_, s_r_58__61_, s_r_58__60_, s_r_58__59_, s_r_58__58_, s_r_58__57_, s_r_58__56_, s_r_58__55_, s_r_58__54_, s_r_58__53_, s_r_58__52_, s_r_58__51_, s_r_58__50_, s_r_58__49_, s_r_58__48_, s_r_58__47_, s_r_58__46_, s_r_58__45_, s_r_58__44_, s_r_58__43_, s_r_58__42_, s_r_58__41_, s_r_58__40_, s_r_58__39_, s_r_58__38_, s_r_58__37_, s_r_58__36_, s_r_58__35_, s_r_58__34_, s_r_58__33_, s_r_58__32_, s_r_58__31_, s_r_58__30_, s_r_58__29_, s_r_58__28_, s_r_58__27_, s_r_58__26_, s_r_58__25_, s_r_58__24_, s_r_58__23_, s_r_58__22_, s_r_58__21_, s_r_58__20_, s_r_58__19_, s_r_58__18_, s_r_58__17_, s_r_58__16_, s_r_58__15_, s_r_58__14_, s_r_58__13_, s_r_58__12_, s_r_58__11_, s_r_58__10_, s_r_58__9_, s_r_58__8_, s_r_58__7_, s_r_58__6_, s_r_58__5_, s_r_58__4_, s_r_58__3_, s_r_58__2_, s_r_58__1_, s_r_58__0_ }),
    .c_o(c_r[58]),
    .prod_accum_o({ prod_accum_58__59_, prod_accum_58__58_, prod_accum_58__57_, prod_accum_58__56_, prod_accum_58__55_, prod_accum_58__54_, prod_accum_58__53_, prod_accum_58__52_, prod_accum_58__51_, prod_accum_58__50_, prod_accum_58__49_, prod_accum_58__48_, prod_accum_58__47_, prod_accum_58__46_, prod_accum_58__45_, prod_accum_58__44_, prod_accum_58__43_, prod_accum_58__42_, prod_accum_58__41_, prod_accum_58__40_, prod_accum_58__39_, prod_accum_58__38_, prod_accum_58__37_, prod_accum_58__36_, prod_accum_58__35_, prod_accum_58__34_, prod_accum_58__33_, prod_accum_58__32_, prod_accum_58__31_, prod_accum_58__30_, prod_accum_58__29_, prod_accum_58__28_, prod_accum_58__27_, prod_accum_58__26_, prod_accum_58__25_, prod_accum_58__24_, prod_accum_58__23_, prod_accum_58__22_, prod_accum_58__21_, prod_accum_58__20_, prod_accum_58__19_, prod_accum_58__18_, prod_accum_58__17_, prod_accum_58__16_, prod_accum_58__15_, prod_accum_58__14_, prod_accum_58__13_, prod_accum_58__12_, prod_accum_58__11_, prod_accum_58__10_, prod_accum_58__9_, prod_accum_58__8_, prod_accum_58__7_, prod_accum_58__6_, prod_accum_58__5_, prod_accum_58__4_, prod_accum_58__3_, prod_accum_58__2_, prod_accum_58__1_, prod_accum_58__0_ })
  );


  bsg_mul_array_row_64_59_x
  genblk1_59__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3775:3712]),
    .b_i(b_r[3775:3712]),
    .s_i({ s_r_58__63_, s_r_58__62_, s_r_58__61_, s_r_58__60_, s_r_58__59_, s_r_58__58_, s_r_58__57_, s_r_58__56_, s_r_58__55_, s_r_58__54_, s_r_58__53_, s_r_58__52_, s_r_58__51_, s_r_58__50_, s_r_58__49_, s_r_58__48_, s_r_58__47_, s_r_58__46_, s_r_58__45_, s_r_58__44_, s_r_58__43_, s_r_58__42_, s_r_58__41_, s_r_58__40_, s_r_58__39_, s_r_58__38_, s_r_58__37_, s_r_58__36_, s_r_58__35_, s_r_58__34_, s_r_58__33_, s_r_58__32_, s_r_58__31_, s_r_58__30_, s_r_58__29_, s_r_58__28_, s_r_58__27_, s_r_58__26_, s_r_58__25_, s_r_58__24_, s_r_58__23_, s_r_58__22_, s_r_58__21_, s_r_58__20_, s_r_58__19_, s_r_58__18_, s_r_58__17_, s_r_58__16_, s_r_58__15_, s_r_58__14_, s_r_58__13_, s_r_58__12_, s_r_58__11_, s_r_58__10_, s_r_58__9_, s_r_58__8_, s_r_58__7_, s_r_58__6_, s_r_58__5_, s_r_58__4_, s_r_58__3_, s_r_58__2_, s_r_58__1_, s_r_58__0_ }),
    .c_i(c_r[58]),
    .prod_accum_i({ prod_accum_58__59_, prod_accum_58__58_, prod_accum_58__57_, prod_accum_58__56_, prod_accum_58__55_, prod_accum_58__54_, prod_accum_58__53_, prod_accum_58__52_, prod_accum_58__51_, prod_accum_58__50_, prod_accum_58__49_, prod_accum_58__48_, prod_accum_58__47_, prod_accum_58__46_, prod_accum_58__45_, prod_accum_58__44_, prod_accum_58__43_, prod_accum_58__42_, prod_accum_58__41_, prod_accum_58__40_, prod_accum_58__39_, prod_accum_58__38_, prod_accum_58__37_, prod_accum_58__36_, prod_accum_58__35_, prod_accum_58__34_, prod_accum_58__33_, prod_accum_58__32_, prod_accum_58__31_, prod_accum_58__30_, prod_accum_58__29_, prod_accum_58__28_, prod_accum_58__27_, prod_accum_58__26_, prod_accum_58__25_, prod_accum_58__24_, prod_accum_58__23_, prod_accum_58__22_, prod_accum_58__21_, prod_accum_58__20_, prod_accum_58__19_, prod_accum_58__18_, prod_accum_58__17_, prod_accum_58__16_, prod_accum_58__15_, prod_accum_58__14_, prod_accum_58__13_, prod_accum_58__12_, prod_accum_58__11_, prod_accum_58__10_, prod_accum_58__9_, prod_accum_58__8_, prod_accum_58__7_, prod_accum_58__6_, prod_accum_58__5_, prod_accum_58__4_, prod_accum_58__3_, prod_accum_58__2_, prod_accum_58__1_, prod_accum_58__0_ }),
    .a_o(a_r[3839:3776]),
    .b_o(b_r[3839:3776]),
    .s_o({ s_r_59__63_, s_r_59__62_, s_r_59__61_, s_r_59__60_, s_r_59__59_, s_r_59__58_, s_r_59__57_, s_r_59__56_, s_r_59__55_, s_r_59__54_, s_r_59__53_, s_r_59__52_, s_r_59__51_, s_r_59__50_, s_r_59__49_, s_r_59__48_, s_r_59__47_, s_r_59__46_, s_r_59__45_, s_r_59__44_, s_r_59__43_, s_r_59__42_, s_r_59__41_, s_r_59__40_, s_r_59__39_, s_r_59__38_, s_r_59__37_, s_r_59__36_, s_r_59__35_, s_r_59__34_, s_r_59__33_, s_r_59__32_, s_r_59__31_, s_r_59__30_, s_r_59__29_, s_r_59__28_, s_r_59__27_, s_r_59__26_, s_r_59__25_, s_r_59__24_, s_r_59__23_, s_r_59__22_, s_r_59__21_, s_r_59__20_, s_r_59__19_, s_r_59__18_, s_r_59__17_, s_r_59__16_, s_r_59__15_, s_r_59__14_, s_r_59__13_, s_r_59__12_, s_r_59__11_, s_r_59__10_, s_r_59__9_, s_r_59__8_, s_r_59__7_, s_r_59__6_, s_r_59__5_, s_r_59__4_, s_r_59__3_, s_r_59__2_, s_r_59__1_, s_r_59__0_ }),
    .c_o(c_r[59]),
    .prod_accum_o({ prod_accum_59__60_, prod_accum_59__59_, prod_accum_59__58_, prod_accum_59__57_, prod_accum_59__56_, prod_accum_59__55_, prod_accum_59__54_, prod_accum_59__53_, prod_accum_59__52_, prod_accum_59__51_, prod_accum_59__50_, prod_accum_59__49_, prod_accum_59__48_, prod_accum_59__47_, prod_accum_59__46_, prod_accum_59__45_, prod_accum_59__44_, prod_accum_59__43_, prod_accum_59__42_, prod_accum_59__41_, prod_accum_59__40_, prod_accum_59__39_, prod_accum_59__38_, prod_accum_59__37_, prod_accum_59__36_, prod_accum_59__35_, prod_accum_59__34_, prod_accum_59__33_, prod_accum_59__32_, prod_accum_59__31_, prod_accum_59__30_, prod_accum_59__29_, prod_accum_59__28_, prod_accum_59__27_, prod_accum_59__26_, prod_accum_59__25_, prod_accum_59__24_, prod_accum_59__23_, prod_accum_59__22_, prod_accum_59__21_, prod_accum_59__20_, prod_accum_59__19_, prod_accum_59__18_, prod_accum_59__17_, prod_accum_59__16_, prod_accum_59__15_, prod_accum_59__14_, prod_accum_59__13_, prod_accum_59__12_, prod_accum_59__11_, prod_accum_59__10_, prod_accum_59__9_, prod_accum_59__8_, prod_accum_59__7_, prod_accum_59__6_, prod_accum_59__5_, prod_accum_59__4_, prod_accum_59__3_, prod_accum_59__2_, prod_accum_59__1_, prod_accum_59__0_ })
  );


  bsg_mul_array_row_64_60_x
  genblk1_60__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3839:3776]),
    .b_i(b_r[3839:3776]),
    .s_i({ s_r_59__63_, s_r_59__62_, s_r_59__61_, s_r_59__60_, s_r_59__59_, s_r_59__58_, s_r_59__57_, s_r_59__56_, s_r_59__55_, s_r_59__54_, s_r_59__53_, s_r_59__52_, s_r_59__51_, s_r_59__50_, s_r_59__49_, s_r_59__48_, s_r_59__47_, s_r_59__46_, s_r_59__45_, s_r_59__44_, s_r_59__43_, s_r_59__42_, s_r_59__41_, s_r_59__40_, s_r_59__39_, s_r_59__38_, s_r_59__37_, s_r_59__36_, s_r_59__35_, s_r_59__34_, s_r_59__33_, s_r_59__32_, s_r_59__31_, s_r_59__30_, s_r_59__29_, s_r_59__28_, s_r_59__27_, s_r_59__26_, s_r_59__25_, s_r_59__24_, s_r_59__23_, s_r_59__22_, s_r_59__21_, s_r_59__20_, s_r_59__19_, s_r_59__18_, s_r_59__17_, s_r_59__16_, s_r_59__15_, s_r_59__14_, s_r_59__13_, s_r_59__12_, s_r_59__11_, s_r_59__10_, s_r_59__9_, s_r_59__8_, s_r_59__7_, s_r_59__6_, s_r_59__5_, s_r_59__4_, s_r_59__3_, s_r_59__2_, s_r_59__1_, s_r_59__0_ }),
    .c_i(c_r[59]),
    .prod_accum_i({ prod_accum_59__60_, prod_accum_59__59_, prod_accum_59__58_, prod_accum_59__57_, prod_accum_59__56_, prod_accum_59__55_, prod_accum_59__54_, prod_accum_59__53_, prod_accum_59__52_, prod_accum_59__51_, prod_accum_59__50_, prod_accum_59__49_, prod_accum_59__48_, prod_accum_59__47_, prod_accum_59__46_, prod_accum_59__45_, prod_accum_59__44_, prod_accum_59__43_, prod_accum_59__42_, prod_accum_59__41_, prod_accum_59__40_, prod_accum_59__39_, prod_accum_59__38_, prod_accum_59__37_, prod_accum_59__36_, prod_accum_59__35_, prod_accum_59__34_, prod_accum_59__33_, prod_accum_59__32_, prod_accum_59__31_, prod_accum_59__30_, prod_accum_59__29_, prod_accum_59__28_, prod_accum_59__27_, prod_accum_59__26_, prod_accum_59__25_, prod_accum_59__24_, prod_accum_59__23_, prod_accum_59__22_, prod_accum_59__21_, prod_accum_59__20_, prod_accum_59__19_, prod_accum_59__18_, prod_accum_59__17_, prod_accum_59__16_, prod_accum_59__15_, prod_accum_59__14_, prod_accum_59__13_, prod_accum_59__12_, prod_accum_59__11_, prod_accum_59__10_, prod_accum_59__9_, prod_accum_59__8_, prod_accum_59__7_, prod_accum_59__6_, prod_accum_59__5_, prod_accum_59__4_, prod_accum_59__3_, prod_accum_59__2_, prod_accum_59__1_, prod_accum_59__0_ }),
    .a_o(a_r[3903:3840]),
    .b_o(b_r[3903:3840]),
    .s_o({ s_r_60__63_, s_r_60__62_, s_r_60__61_, s_r_60__60_, s_r_60__59_, s_r_60__58_, s_r_60__57_, s_r_60__56_, s_r_60__55_, s_r_60__54_, s_r_60__53_, s_r_60__52_, s_r_60__51_, s_r_60__50_, s_r_60__49_, s_r_60__48_, s_r_60__47_, s_r_60__46_, s_r_60__45_, s_r_60__44_, s_r_60__43_, s_r_60__42_, s_r_60__41_, s_r_60__40_, s_r_60__39_, s_r_60__38_, s_r_60__37_, s_r_60__36_, s_r_60__35_, s_r_60__34_, s_r_60__33_, s_r_60__32_, s_r_60__31_, s_r_60__30_, s_r_60__29_, s_r_60__28_, s_r_60__27_, s_r_60__26_, s_r_60__25_, s_r_60__24_, s_r_60__23_, s_r_60__22_, s_r_60__21_, s_r_60__20_, s_r_60__19_, s_r_60__18_, s_r_60__17_, s_r_60__16_, s_r_60__15_, s_r_60__14_, s_r_60__13_, s_r_60__12_, s_r_60__11_, s_r_60__10_, s_r_60__9_, s_r_60__8_, s_r_60__7_, s_r_60__6_, s_r_60__5_, s_r_60__4_, s_r_60__3_, s_r_60__2_, s_r_60__1_, s_r_60__0_ }),
    .c_o(c_r[60]),
    .prod_accum_o({ prod_accum_60__61_, prod_accum_60__60_, prod_accum_60__59_, prod_accum_60__58_, prod_accum_60__57_, prod_accum_60__56_, prod_accum_60__55_, prod_accum_60__54_, prod_accum_60__53_, prod_accum_60__52_, prod_accum_60__51_, prod_accum_60__50_, prod_accum_60__49_, prod_accum_60__48_, prod_accum_60__47_, prod_accum_60__46_, prod_accum_60__45_, prod_accum_60__44_, prod_accum_60__43_, prod_accum_60__42_, prod_accum_60__41_, prod_accum_60__40_, prod_accum_60__39_, prod_accum_60__38_, prod_accum_60__37_, prod_accum_60__36_, prod_accum_60__35_, prod_accum_60__34_, prod_accum_60__33_, prod_accum_60__32_, prod_accum_60__31_, prod_accum_60__30_, prod_accum_60__29_, prod_accum_60__28_, prod_accum_60__27_, prod_accum_60__26_, prod_accum_60__25_, prod_accum_60__24_, prod_accum_60__23_, prod_accum_60__22_, prod_accum_60__21_, prod_accum_60__20_, prod_accum_60__19_, prod_accum_60__18_, prod_accum_60__17_, prod_accum_60__16_, prod_accum_60__15_, prod_accum_60__14_, prod_accum_60__13_, prod_accum_60__12_, prod_accum_60__11_, prod_accum_60__10_, prod_accum_60__9_, prod_accum_60__8_, prod_accum_60__7_, prod_accum_60__6_, prod_accum_60__5_, prod_accum_60__4_, prod_accum_60__3_, prod_accum_60__2_, prod_accum_60__1_, prod_accum_60__0_ })
  );


  bsg_mul_array_row_64_61_x
  genblk1_61__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3903:3840]),
    .b_i(b_r[3903:3840]),
    .s_i({ s_r_60__63_, s_r_60__62_, s_r_60__61_, s_r_60__60_, s_r_60__59_, s_r_60__58_, s_r_60__57_, s_r_60__56_, s_r_60__55_, s_r_60__54_, s_r_60__53_, s_r_60__52_, s_r_60__51_, s_r_60__50_, s_r_60__49_, s_r_60__48_, s_r_60__47_, s_r_60__46_, s_r_60__45_, s_r_60__44_, s_r_60__43_, s_r_60__42_, s_r_60__41_, s_r_60__40_, s_r_60__39_, s_r_60__38_, s_r_60__37_, s_r_60__36_, s_r_60__35_, s_r_60__34_, s_r_60__33_, s_r_60__32_, s_r_60__31_, s_r_60__30_, s_r_60__29_, s_r_60__28_, s_r_60__27_, s_r_60__26_, s_r_60__25_, s_r_60__24_, s_r_60__23_, s_r_60__22_, s_r_60__21_, s_r_60__20_, s_r_60__19_, s_r_60__18_, s_r_60__17_, s_r_60__16_, s_r_60__15_, s_r_60__14_, s_r_60__13_, s_r_60__12_, s_r_60__11_, s_r_60__10_, s_r_60__9_, s_r_60__8_, s_r_60__7_, s_r_60__6_, s_r_60__5_, s_r_60__4_, s_r_60__3_, s_r_60__2_, s_r_60__1_, s_r_60__0_ }),
    .c_i(c_r[60]),
    .prod_accum_i({ prod_accum_60__61_, prod_accum_60__60_, prod_accum_60__59_, prod_accum_60__58_, prod_accum_60__57_, prod_accum_60__56_, prod_accum_60__55_, prod_accum_60__54_, prod_accum_60__53_, prod_accum_60__52_, prod_accum_60__51_, prod_accum_60__50_, prod_accum_60__49_, prod_accum_60__48_, prod_accum_60__47_, prod_accum_60__46_, prod_accum_60__45_, prod_accum_60__44_, prod_accum_60__43_, prod_accum_60__42_, prod_accum_60__41_, prod_accum_60__40_, prod_accum_60__39_, prod_accum_60__38_, prod_accum_60__37_, prod_accum_60__36_, prod_accum_60__35_, prod_accum_60__34_, prod_accum_60__33_, prod_accum_60__32_, prod_accum_60__31_, prod_accum_60__30_, prod_accum_60__29_, prod_accum_60__28_, prod_accum_60__27_, prod_accum_60__26_, prod_accum_60__25_, prod_accum_60__24_, prod_accum_60__23_, prod_accum_60__22_, prod_accum_60__21_, prod_accum_60__20_, prod_accum_60__19_, prod_accum_60__18_, prod_accum_60__17_, prod_accum_60__16_, prod_accum_60__15_, prod_accum_60__14_, prod_accum_60__13_, prod_accum_60__12_, prod_accum_60__11_, prod_accum_60__10_, prod_accum_60__9_, prod_accum_60__8_, prod_accum_60__7_, prod_accum_60__6_, prod_accum_60__5_, prod_accum_60__4_, prod_accum_60__3_, prod_accum_60__2_, prod_accum_60__1_, prod_accum_60__0_ }),
    .a_o(a_r[3967:3904]),
    .b_o(b_r[3967:3904]),
    .s_o({ s_r_61__63_, s_r_61__62_, s_r_61__61_, s_r_61__60_, s_r_61__59_, s_r_61__58_, s_r_61__57_, s_r_61__56_, s_r_61__55_, s_r_61__54_, s_r_61__53_, s_r_61__52_, s_r_61__51_, s_r_61__50_, s_r_61__49_, s_r_61__48_, s_r_61__47_, s_r_61__46_, s_r_61__45_, s_r_61__44_, s_r_61__43_, s_r_61__42_, s_r_61__41_, s_r_61__40_, s_r_61__39_, s_r_61__38_, s_r_61__37_, s_r_61__36_, s_r_61__35_, s_r_61__34_, s_r_61__33_, s_r_61__32_, s_r_61__31_, s_r_61__30_, s_r_61__29_, s_r_61__28_, s_r_61__27_, s_r_61__26_, s_r_61__25_, s_r_61__24_, s_r_61__23_, s_r_61__22_, s_r_61__21_, s_r_61__20_, s_r_61__19_, s_r_61__18_, s_r_61__17_, s_r_61__16_, s_r_61__15_, s_r_61__14_, s_r_61__13_, s_r_61__12_, s_r_61__11_, s_r_61__10_, s_r_61__9_, s_r_61__8_, s_r_61__7_, s_r_61__6_, s_r_61__5_, s_r_61__4_, s_r_61__3_, s_r_61__2_, s_r_61__1_, s_r_61__0_ }),
    .c_o(c_r[61]),
    .prod_accum_o({ prod_accum_61__62_, prod_accum_61__61_, prod_accum_61__60_, prod_accum_61__59_, prod_accum_61__58_, prod_accum_61__57_, prod_accum_61__56_, prod_accum_61__55_, prod_accum_61__54_, prod_accum_61__53_, prod_accum_61__52_, prod_accum_61__51_, prod_accum_61__50_, prod_accum_61__49_, prod_accum_61__48_, prod_accum_61__47_, prod_accum_61__46_, prod_accum_61__45_, prod_accum_61__44_, prod_accum_61__43_, prod_accum_61__42_, prod_accum_61__41_, prod_accum_61__40_, prod_accum_61__39_, prod_accum_61__38_, prod_accum_61__37_, prod_accum_61__36_, prod_accum_61__35_, prod_accum_61__34_, prod_accum_61__33_, prod_accum_61__32_, prod_accum_61__31_, prod_accum_61__30_, prod_accum_61__29_, prod_accum_61__28_, prod_accum_61__27_, prod_accum_61__26_, prod_accum_61__25_, prod_accum_61__24_, prod_accum_61__23_, prod_accum_61__22_, prod_accum_61__21_, prod_accum_61__20_, prod_accum_61__19_, prod_accum_61__18_, prod_accum_61__17_, prod_accum_61__16_, prod_accum_61__15_, prod_accum_61__14_, prod_accum_61__13_, prod_accum_61__12_, prod_accum_61__11_, prod_accum_61__10_, prod_accum_61__9_, prod_accum_61__8_, prod_accum_61__7_, prod_accum_61__6_, prod_accum_61__5_, prod_accum_61__4_, prod_accum_61__3_, prod_accum_61__2_, prod_accum_61__1_, prod_accum_61__0_ })
  );


  bsg_mul_array_row_64_62_x
  genblk1_62__genblk1_last_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[3967:3904]),
    .b_i(b_r[3967:3904]),
    .s_i({ s_r_61__63_, s_r_61__62_, s_r_61__61_, s_r_61__60_, s_r_61__59_, s_r_61__58_, s_r_61__57_, s_r_61__56_, s_r_61__55_, s_r_61__54_, s_r_61__53_, s_r_61__52_, s_r_61__51_, s_r_61__50_, s_r_61__49_, s_r_61__48_, s_r_61__47_, s_r_61__46_, s_r_61__45_, s_r_61__44_, s_r_61__43_, s_r_61__42_, s_r_61__41_, s_r_61__40_, s_r_61__39_, s_r_61__38_, s_r_61__37_, s_r_61__36_, s_r_61__35_, s_r_61__34_, s_r_61__33_, s_r_61__32_, s_r_61__31_, s_r_61__30_, s_r_61__29_, s_r_61__28_, s_r_61__27_, s_r_61__26_, s_r_61__25_, s_r_61__24_, s_r_61__23_, s_r_61__22_, s_r_61__21_, s_r_61__20_, s_r_61__19_, s_r_61__18_, s_r_61__17_, s_r_61__16_, s_r_61__15_, s_r_61__14_, s_r_61__13_, s_r_61__12_, s_r_61__11_, s_r_61__10_, s_r_61__9_, s_r_61__8_, s_r_61__7_, s_r_61__6_, s_r_61__5_, s_r_61__4_, s_r_61__3_, s_r_61__2_, s_r_61__1_, s_r_61__0_ }),
    .c_i(c_r[61]),
    .prod_accum_i({ prod_accum_61__62_, prod_accum_61__61_, prod_accum_61__60_, prod_accum_61__59_, prod_accum_61__58_, prod_accum_61__57_, prod_accum_61__56_, prod_accum_61__55_, prod_accum_61__54_, prod_accum_61__53_, prod_accum_61__52_, prod_accum_61__51_, prod_accum_61__50_, prod_accum_61__49_, prod_accum_61__48_, prod_accum_61__47_, prod_accum_61__46_, prod_accum_61__45_, prod_accum_61__44_, prod_accum_61__43_, prod_accum_61__42_, prod_accum_61__41_, prod_accum_61__40_, prod_accum_61__39_, prod_accum_61__38_, prod_accum_61__37_, prod_accum_61__36_, prod_accum_61__35_, prod_accum_61__34_, prod_accum_61__33_, prod_accum_61__32_, prod_accum_61__31_, prod_accum_61__30_, prod_accum_61__29_, prod_accum_61__28_, prod_accum_61__27_, prod_accum_61__26_, prod_accum_61__25_, prod_accum_61__24_, prod_accum_61__23_, prod_accum_61__22_, prod_accum_61__21_, prod_accum_61__20_, prod_accum_61__19_, prod_accum_61__18_, prod_accum_61__17_, prod_accum_61__16_, prod_accum_61__15_, prod_accum_61__14_, prod_accum_61__13_, prod_accum_61__12_, prod_accum_61__11_, prod_accum_61__10_, prod_accum_61__9_, prod_accum_61__8_, prod_accum_61__7_, prod_accum_61__6_, prod_accum_61__5_, prod_accum_61__4_, prod_accum_61__3_, prod_accum_61__2_, prod_accum_61__1_, prod_accum_61__0_ }),
    .a_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52, SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54, SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56, SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58, SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60, SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62, SYNOPSYS_UNCONNECTED_63, SYNOPSYS_UNCONNECTED_64 }),
    .b_o({ SYNOPSYS_UNCONNECTED_65, SYNOPSYS_UNCONNECTED_66, SYNOPSYS_UNCONNECTED_67, SYNOPSYS_UNCONNECTED_68, SYNOPSYS_UNCONNECTED_69, SYNOPSYS_UNCONNECTED_70, SYNOPSYS_UNCONNECTED_71, SYNOPSYS_UNCONNECTED_72, SYNOPSYS_UNCONNECTED_73, SYNOPSYS_UNCONNECTED_74, SYNOPSYS_UNCONNECTED_75, SYNOPSYS_UNCONNECTED_76, SYNOPSYS_UNCONNECTED_77, SYNOPSYS_UNCONNECTED_78, SYNOPSYS_UNCONNECTED_79, SYNOPSYS_UNCONNECTED_80, SYNOPSYS_UNCONNECTED_81, SYNOPSYS_UNCONNECTED_82, SYNOPSYS_UNCONNECTED_83, SYNOPSYS_UNCONNECTED_84, SYNOPSYS_UNCONNECTED_85, SYNOPSYS_UNCONNECTED_86, SYNOPSYS_UNCONNECTED_87, SYNOPSYS_UNCONNECTED_88, SYNOPSYS_UNCONNECTED_89, SYNOPSYS_UNCONNECTED_90, SYNOPSYS_UNCONNECTED_91, SYNOPSYS_UNCONNECTED_92, SYNOPSYS_UNCONNECTED_93, SYNOPSYS_UNCONNECTED_94, SYNOPSYS_UNCONNECTED_95, SYNOPSYS_UNCONNECTED_96, SYNOPSYS_UNCONNECTED_97, SYNOPSYS_UNCONNECTED_98, SYNOPSYS_UNCONNECTED_99, SYNOPSYS_UNCONNECTED_100, SYNOPSYS_UNCONNECTED_101, SYNOPSYS_UNCONNECTED_102, SYNOPSYS_UNCONNECTED_103, SYNOPSYS_UNCONNECTED_104, SYNOPSYS_UNCONNECTED_105, SYNOPSYS_UNCONNECTED_106, SYNOPSYS_UNCONNECTED_107, SYNOPSYS_UNCONNECTED_108, SYNOPSYS_UNCONNECTED_109, SYNOPSYS_UNCONNECTED_110, SYNOPSYS_UNCONNECTED_111, SYNOPSYS_UNCONNECTED_112, SYNOPSYS_UNCONNECTED_113, SYNOPSYS_UNCONNECTED_114, SYNOPSYS_UNCONNECTED_115, SYNOPSYS_UNCONNECTED_116, SYNOPSYS_UNCONNECTED_117, SYNOPSYS_UNCONNECTED_118, SYNOPSYS_UNCONNECTED_119, SYNOPSYS_UNCONNECTED_120, SYNOPSYS_UNCONNECTED_121, SYNOPSYS_UNCONNECTED_122, SYNOPSYS_UNCONNECTED_123, SYNOPSYS_UNCONNECTED_124, SYNOPSYS_UNCONNECTED_125, SYNOPSYS_UNCONNECTED_126, SYNOPSYS_UNCONNECTED_127, SYNOPSYS_UNCONNECTED_128 }),
    .s_o(o[126:63]),
    .c_o(o[127]),
    .prod_accum_o({ prod_accum_62__63_, o[62:0] })
  );


endmodule

