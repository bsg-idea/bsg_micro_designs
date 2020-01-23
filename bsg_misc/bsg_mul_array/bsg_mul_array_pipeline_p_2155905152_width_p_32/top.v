

module top
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [63:0] o;
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



module bsg_and_width_p32
(
  a_i,
  b_i,
  o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] o;
  wire [31:0] o;
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



module bsg_adder_ripple_carry_width_p32
(
  a_i,
  b_i,
  s_o,
  c_o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] s_o;
  output c_o;
  wire [31:0] s_o;
  wire c_o;
  assign { c_o, s_o } = a_i + b_i;

endmodule



module bsg_mul_array_row_32_0_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [0:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [1:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [1:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_1_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [1:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [2:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [2:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2], b_i[2:2] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_2_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [2:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [3:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [3:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3], b_i[3:3] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_3_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [3:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [4:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [4:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4], b_i[4:4] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_4_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [4:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [5:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [5:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5], b_i[5:5] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_5_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [5:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [6:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [6:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6], b_i[6:6] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_6_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [6:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [7:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [7:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7], b_i[7:7] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_7_1
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [7:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [8:0] prod_accum_o;
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
  N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113;
  wire [31:0] pp,ps;
  reg [8:0] prod_accum_o;
  reg [31:0] a_o,b_o,s_o;
  reg c_o;

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8], b_i[8:8] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(ps),
    .c_o(pc)
  );

  assign { N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                       (N1)? a_i : 1'b0;
  assign N0 = rst_i;
  assign N1 = N2;
  assign { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N1)? b_i : 1'b0;
  assign { N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N1)? ps : 1'b0;
  assign N99 = (N0)? 1'b0 : 
               (N1)? pc : 1'b0;
  assign { N108, N107, N106, N105, N104, N103, N102, N101, N100 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                    (N1)? { ps[0:0], prod_accum_i } : 1'b0;
  assign N2 = ~rst_i;
  assign N109 = ~v_i;
  assign N110 = N109 & N2;
  assign N111 = ~N110;
  assign N112 = N109 & N2;
  assign N113 = ~N112;

  always @(posedge clk_i) begin
    if(N111) begin
      { prod_accum_o[8:8], prod_accum_o[1:0] } <= { N108, N101, N100 };
      { a_o[31:0] } <= { N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 };
      { b_o[31:0] } <= { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35 };
      { s_o[31:0] } <= { N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 };
      c_o <= N99;
    end 
    if(N113) begin
      { prod_accum_o[7:2] } <= { N107, N106, N105, N104, N103, N102 };
    end 
  end


endmodule



module bsg_mul_array_row_32_8_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [8:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [9:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [9:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9], b_i[9:9] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_9_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [9:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [10:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [10:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10], b_i[10:10] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_10_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [10:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [11:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [11:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11], b_i[11:11] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_11_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [11:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [12:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [12:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12], b_i[12:12] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_12_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [12:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [13:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [13:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13], b_i[13:13] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_13_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [13:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [14:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [14:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14], b_i[14:14] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_14_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [14:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [15:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [15:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15], b_i[15:15] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_15_1
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [15:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
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
  N117,N118,N119,N120,N121;
  wire [31:0] pp,ps;
  reg [16:0] prod_accum_o;
  reg [31:0] a_o,b_o,s_o;
  reg c_o;

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16], b_i[16:16] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(ps),
    .c_o(pc)
  );

  assign { N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                       (N1)? a_i : 1'b0;
  assign N0 = rst_i;
  assign N1 = N2;
  assign { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N1)? b_i : 1'b0;
  assign { N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N1)? ps : 1'b0;
  assign N99 = (N0)? 1'b0 : 
               (N1)? pc : 1'b0;
  assign { N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                    (N1)? { ps[0:0], prod_accum_i } : 1'b0;
  assign N2 = ~rst_i;
  assign N117 = ~v_i;
  assign N118 = N117 & N2;
  assign N119 = ~N118;
  assign N120 = N117 & N2;
  assign N121 = ~N120;

  always @(posedge clk_i) begin
    if(N119) begin
      { prod_accum_o[16:16], prod_accum_o[1:0] } <= { N116, N101, N100 };
      { a_o[31:0] } <= { N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 };
      { b_o[31:0] } <= { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35 };
      { s_o[31:0] } <= { N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 };
      c_o <= N99;
    end 
    if(N121) begin
      { prod_accum_o[15:2] } <= { N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102 };
    end 
  end


endmodule



module bsg_mul_array_row_32_16_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [16:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [17:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [17:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17], b_i[17:17] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_17_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [17:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [18:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [18:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18], b_i[18:18] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_18_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [18:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [19:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [19:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19], b_i[19:19] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_19_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [19:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [20:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [20:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20], b_i[20:20] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_20_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [20:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [21:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [21:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21], b_i[21:21] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_21_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [21:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [22:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [22:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22], b_i[22:22] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_22_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [22:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [23:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [23:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23], b_i[23:23] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_23_1
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [23:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [24:0] prod_accum_o;
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
  N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129;
  wire [31:0] pp,ps;
  reg [24:0] prod_accum_o;
  reg [31:0] a_o,b_o,s_o;
  reg c_o;

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24], b_i[24:24] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(ps),
    .c_o(pc)
  );

  assign { N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                       (N1)? a_i : 1'b0;
  assign N0 = rst_i;
  assign N1 = N2;
  assign { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N1)? b_i : 1'b0;
  assign { N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N1)? ps : 1'b0;
  assign N99 = (N0)? 1'b0 : 
               (N1)? pc : 1'b0;
  assign { N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                    (N1)? { ps[0:0], prod_accum_i } : 1'b0;
  assign N2 = ~rst_i;
  assign N125 = ~v_i;
  assign N126 = N125 & N2;
  assign N127 = ~N126;
  assign N128 = N125 & N2;
  assign N129 = ~N128;

  always @(posedge clk_i) begin
    if(N127) begin
      { prod_accum_o[24:24], prod_accum_o[1:0] } <= { N124, N101, N100 };
      { a_o[31:0] } <= { N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 };
      { b_o[31:0] } <= { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35 };
      { s_o[31:0] } <= { N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 };
      c_o <= N99;
    end 
    if(N129) begin
      { prod_accum_o[23:2] } <= { N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102 };
    end 
  end


endmodule



module bsg_mul_array_row_32_24_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [24:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [25:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [25:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25], b_i[25:25] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_25_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [25:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [26:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [26:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26], b_i[26:26] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_26_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [26:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [27:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [27:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27], b_i[27:27] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_27_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [27:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [28:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [28:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28], b_i[28:28] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_28_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [28:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [29:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [29:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29], b_i[29:29] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_29_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [29:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [30:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,pp;
  wire [30:0] prod_accum_o;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30], b_i[30:30] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(s_o),
    .c_o(c_o)
  );


endmodule



module bsg_mul_array_row_32_30_0
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

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [30:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [31:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire [31:0] a_o,b_o,s_o,prod_accum_o,pp;
  wire c_o;
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

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31], b_i[31:31] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
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

  input [31:0] a_i;
  input [31:0] b_i;
  output [63:0] o;
  input clk_i;
  input rst_i;
  input v_i;
  wire [63:0] o;
  wire s_r_29__31_,s_r_29__30_,s_r_29__29_,s_r_29__28_,s_r_29__27_,s_r_29__26_,
  s_r_29__25_,s_r_29__24_,s_r_29__23_,s_r_29__22_,s_r_29__21_,s_r_29__20_,s_r_29__19_,
  s_r_29__18_,s_r_29__17_,s_r_29__16_,s_r_29__15_,s_r_29__14_,s_r_29__13_,s_r_29__12_,
  s_r_29__11_,s_r_29__10_,s_r_29__9_,s_r_29__8_,s_r_29__7_,s_r_29__6_,s_r_29__5_,
  s_r_29__4_,s_r_29__3_,s_r_29__2_,s_r_29__1_,s_r_29__0_,s_r_28__31_,s_r_28__30_,
  s_r_28__29_,s_r_28__28_,s_r_28__27_,s_r_28__26_,s_r_28__25_,s_r_28__24_,
  s_r_28__23_,s_r_28__22_,s_r_28__21_,s_r_28__20_,s_r_28__19_,s_r_28__18_,s_r_28__17_,
  s_r_28__16_,s_r_28__15_,s_r_28__14_,s_r_28__13_,s_r_28__12_,s_r_28__11_,s_r_28__10_,
  s_r_28__9_,s_r_28__8_,s_r_28__7_,s_r_28__6_,s_r_28__5_,s_r_28__4_,s_r_28__3_,
  s_r_28__2_,s_r_28__1_,s_r_28__0_,s_r_27__31_,s_r_27__30_,s_r_27__29_,s_r_27__28_,
  s_r_27__27_,s_r_27__26_,s_r_27__25_,s_r_27__24_,s_r_27__23_,s_r_27__22_,s_r_27__21_,
  s_r_27__20_,s_r_27__19_,s_r_27__18_,s_r_27__17_,s_r_27__16_,s_r_27__15_,
  s_r_27__14_,s_r_27__13_,s_r_27__12_,s_r_27__11_,s_r_27__10_,s_r_27__9_,s_r_27__8_,
  s_r_27__7_,s_r_27__6_,s_r_27__5_,s_r_27__4_,s_r_27__3_,s_r_27__2_,s_r_27__1_,
  s_r_27__0_,s_r_26__31_,s_r_26__30_,s_r_26__29_,s_r_26__28_,s_r_26__27_,s_r_26__26_,
  s_r_26__25_,s_r_26__24_,s_r_26__23_,s_r_26__22_,s_r_26__21_,s_r_26__20_,s_r_26__19_,
  s_r_26__18_,s_r_26__17_,s_r_26__16_,s_r_26__15_,s_r_26__14_,s_r_26__13_,
  s_r_26__12_,s_r_26__11_,s_r_26__10_,s_r_26__9_,s_r_26__8_,s_r_26__7_,s_r_26__6_,
  s_r_26__5_,s_r_26__4_,s_r_26__3_,s_r_26__2_,s_r_26__1_,s_r_26__0_,s_r_25__31_,s_r_25__30_,
  s_r_25__29_,s_r_25__28_,s_r_25__27_,s_r_25__26_,s_r_25__25_,s_r_25__24_,
  s_r_25__23_,s_r_25__22_,s_r_25__21_,s_r_25__20_,s_r_25__19_,s_r_25__18_,s_r_25__17_,
  s_r_25__16_,s_r_25__15_,s_r_25__14_,s_r_25__13_,s_r_25__12_,s_r_25__11_,s_r_25__10_,
  s_r_25__9_,s_r_25__8_,s_r_25__7_,s_r_25__6_,s_r_25__5_,s_r_25__4_,s_r_25__3_,
  s_r_25__2_,s_r_25__1_,s_r_25__0_,s_r_24__31_,s_r_24__30_,s_r_24__29_,s_r_24__28_,
  s_r_24__27_,s_r_24__26_,s_r_24__25_,s_r_24__24_,s_r_24__23_,s_r_24__22_,
  s_r_24__21_,s_r_24__20_,s_r_24__19_,s_r_24__18_,s_r_24__17_,s_r_24__16_,s_r_24__15_,
  s_r_24__14_,s_r_24__13_,s_r_24__12_,s_r_24__11_,s_r_24__10_,s_r_24__9_,s_r_24__8_,
  s_r_24__7_,s_r_24__6_,s_r_24__5_,s_r_24__4_,s_r_24__3_,s_r_24__2_,s_r_24__1_,
  s_r_24__0_,s_r_23__31_,s_r_23__30_,s_r_23__29_,s_r_23__28_,s_r_23__27_,s_r_23__26_,
  s_r_23__25_,s_r_23__24_,s_r_23__23_,s_r_23__22_,s_r_23__21_,s_r_23__20_,s_r_23__19_,
  s_r_23__18_,s_r_23__17_,s_r_23__16_,s_r_23__15_,s_r_23__14_,s_r_23__13_,
  s_r_23__12_,s_r_23__11_,s_r_23__10_,s_r_23__9_,s_r_23__8_,s_r_23__7_,s_r_23__6_,
  s_r_23__5_,s_r_23__4_,s_r_23__3_,s_r_23__2_,s_r_23__1_,s_r_23__0_,s_r_22__31_,
  s_r_22__30_,s_r_22__29_,s_r_22__28_,s_r_22__27_,s_r_22__26_,s_r_22__25_,s_r_22__24_,
  s_r_22__23_,s_r_22__22_,s_r_22__21_,s_r_22__20_,s_r_22__19_,s_r_22__18_,s_r_22__17_,
  s_r_22__16_,s_r_22__15_,s_r_22__14_,s_r_22__13_,s_r_22__12_,s_r_22__11_,
  s_r_22__10_,s_r_22__9_,s_r_22__8_,s_r_22__7_,s_r_22__6_,s_r_22__5_,s_r_22__4_,s_r_22__3_,
  s_r_22__2_,s_r_22__1_,s_r_22__0_,s_r_21__31_,s_r_21__30_,s_r_21__29_,s_r_21__28_,
  s_r_21__27_,s_r_21__26_,s_r_21__25_,s_r_21__24_,s_r_21__23_,s_r_21__22_,
  s_r_21__21_,s_r_21__20_,s_r_21__19_,s_r_21__18_,s_r_21__17_,s_r_21__16_,s_r_21__15_,
  s_r_21__14_,s_r_21__13_,s_r_21__12_,s_r_21__11_,s_r_21__10_,s_r_21__9_,s_r_21__8_,
  s_r_21__7_,s_r_21__6_,s_r_21__5_,s_r_21__4_,s_r_21__3_,s_r_21__2_,s_r_21__1_,
  s_r_21__0_,s_r_20__31_,s_r_20__30_,s_r_20__29_,s_r_20__28_,s_r_20__27_,s_r_20__26_,
  s_r_20__25_,s_r_20__24_,s_r_20__23_,s_r_20__22_,s_r_20__21_,s_r_20__20_,
  s_r_20__19_,s_r_20__18_,s_r_20__17_,s_r_20__16_,s_r_20__15_,s_r_20__14_,s_r_20__13_,
  s_r_20__12_,s_r_20__11_,s_r_20__10_,s_r_20__9_,s_r_20__8_,s_r_20__7_,s_r_20__6_,
  s_r_20__5_,s_r_20__4_,s_r_20__3_,s_r_20__2_,s_r_20__1_,s_r_20__0_,s_r_19__31_,
  s_r_19__30_,s_r_19__29_,s_r_19__28_,s_r_19__27_,s_r_19__26_,s_r_19__25_,s_r_19__24_,
  s_r_19__23_,s_r_19__22_,s_r_19__21_,s_r_19__20_,s_r_19__19_,s_r_19__18_,s_r_19__17_,
  s_r_19__16_,s_r_19__15_,s_r_19__14_,s_r_19__13_,s_r_19__12_,s_r_19__11_,
  s_r_19__10_,s_r_19__9_,s_r_19__8_,s_r_19__7_,s_r_19__6_,s_r_19__5_,s_r_19__4_,
  s_r_19__3_,s_r_19__2_,s_r_19__1_,s_r_19__0_,s_r_18__31_,s_r_18__30_,s_r_18__29_,
  s_r_18__28_,s_r_18__27_,s_r_18__26_,s_r_18__25_,s_r_18__24_,s_r_18__23_,s_r_18__22_,
  s_r_18__21_,s_r_18__20_,s_r_18__19_,s_r_18__18_,s_r_18__17_,s_r_18__16_,s_r_18__15_,
  s_r_18__14_,s_r_18__13_,s_r_18__12_,s_r_18__11_,s_r_18__10_,s_r_18__9_,s_r_18__8_,
  s_r_18__7_,s_r_18__6_,s_r_18__5_,s_r_18__4_,s_r_18__3_,s_r_18__2_,s_r_18__1_,
  s_r_18__0_,s_r_17__31_,s_r_17__30_,s_r_17__29_,s_r_17__28_,s_r_17__27_,s_r_17__26_,
  s_r_17__25_,s_r_17__24_,s_r_17__23_,s_r_17__22_,s_r_17__21_,s_r_17__20_,
  s_r_17__19_,s_r_17__18_,s_r_17__17_,s_r_17__16_,s_r_17__15_,s_r_17__14_,s_r_17__13_,
  s_r_17__12_,s_r_17__11_,s_r_17__10_,s_r_17__9_,s_r_17__8_,s_r_17__7_,s_r_17__6_,
  s_r_17__5_,s_r_17__4_,s_r_17__3_,s_r_17__2_,s_r_17__1_,s_r_17__0_,s_r_16__31_,
  s_r_16__30_,s_r_16__29_,s_r_16__28_,s_r_16__27_,s_r_16__26_,s_r_16__25_,s_r_16__24_,
  s_r_16__23_,s_r_16__22_,s_r_16__21_,s_r_16__20_,s_r_16__19_,s_r_16__18_,
  s_r_16__17_,s_r_16__16_,s_r_16__15_,s_r_16__14_,s_r_16__13_,s_r_16__12_,s_r_16__11_,
  s_r_16__10_,s_r_16__9_,s_r_16__8_,s_r_16__7_,s_r_16__6_,s_r_16__5_,s_r_16__4_,
  s_r_16__3_,s_r_16__2_,s_r_16__1_,s_r_16__0_,s_r_15__31_,s_r_15__30_,s_r_15__29_,
  s_r_15__28_,s_r_15__27_,s_r_15__26_,s_r_15__25_,s_r_15__24_,s_r_15__23_,s_r_15__22_,
  s_r_15__21_,s_r_15__20_,s_r_15__19_,s_r_15__18_,s_r_15__17_,s_r_15__16_,s_r_15__15_,
  s_r_15__14_,s_r_15__13_,s_r_15__12_,s_r_15__11_,s_r_15__10_,s_r_15__9_,
  s_r_15__8_,s_r_15__7_,s_r_15__6_,s_r_15__5_,s_r_15__4_,s_r_15__3_,s_r_15__2_,s_r_15__1_,
  s_r_15__0_,s_r_14__31_,s_r_14__30_,s_r_14__29_,s_r_14__28_,s_r_14__27_,
  s_r_14__26_,s_r_14__25_,s_r_14__24_,s_r_14__23_,s_r_14__22_,s_r_14__21_,s_r_14__20_,
  s_r_14__19_,s_r_14__18_,s_r_14__17_,s_r_14__16_,s_r_14__15_,s_r_14__14_,s_r_14__13_,
  s_r_14__12_,s_r_14__11_,s_r_14__10_,s_r_14__9_,s_r_14__8_,s_r_14__7_,s_r_14__6_,
  s_r_14__5_,s_r_14__4_,s_r_14__3_,s_r_14__2_,s_r_14__1_,s_r_14__0_,s_r_13__31_,
  s_r_13__30_,s_r_13__29_,s_r_13__28_,s_r_13__27_,s_r_13__26_,s_r_13__25_,s_r_13__24_,
  s_r_13__23_,s_r_13__22_,s_r_13__21_,s_r_13__20_,s_r_13__19_,s_r_13__18_,
  s_r_13__17_,s_r_13__16_,s_r_13__15_,s_r_13__14_,s_r_13__13_,s_r_13__12_,s_r_13__11_,
  s_r_13__10_,s_r_13__9_,s_r_13__8_,s_r_13__7_,s_r_13__6_,s_r_13__5_,s_r_13__4_,
  s_r_13__3_,s_r_13__2_,s_r_13__1_,s_r_13__0_,s_r_12__31_,s_r_12__30_,s_r_12__29_,
  s_r_12__28_,s_r_12__27_,s_r_12__26_,s_r_12__25_,s_r_12__24_,s_r_12__23_,s_r_12__22_,
  s_r_12__21_,s_r_12__20_,s_r_12__19_,s_r_12__18_,s_r_12__17_,s_r_12__16_,
  s_r_12__15_,s_r_12__14_,s_r_12__13_,s_r_12__12_,s_r_12__11_,s_r_12__10_,s_r_12__9_,
  s_r_12__8_,s_r_12__7_,s_r_12__6_,s_r_12__5_,s_r_12__4_,s_r_12__3_,s_r_12__2_,
  s_r_12__1_,s_r_12__0_,s_r_11__31_,s_r_11__30_,s_r_11__29_,s_r_11__28_,s_r_11__27_,
  s_r_11__26_,s_r_11__25_,s_r_11__24_,s_r_11__23_,s_r_11__22_,s_r_11__21_,s_r_11__20_,
  s_r_11__19_,s_r_11__18_,s_r_11__17_,s_r_11__16_,s_r_11__15_,s_r_11__14_,s_r_11__13_,
  s_r_11__12_,s_r_11__11_,s_r_11__10_,s_r_11__9_,s_r_11__8_,s_r_11__7_,s_r_11__6_,
  s_r_11__5_,s_r_11__4_,s_r_11__3_,s_r_11__2_,s_r_11__1_,s_r_11__0_,s_r_10__31_,
  s_r_10__30_,s_r_10__29_,s_r_10__28_,s_r_10__27_,s_r_10__26_,s_r_10__25_,
  s_r_10__24_,s_r_10__23_,s_r_10__22_,s_r_10__21_,s_r_10__20_,s_r_10__19_,s_r_10__18_,
  s_r_10__17_,s_r_10__16_,s_r_10__15_,s_r_10__14_,s_r_10__13_,s_r_10__12_,s_r_10__11_,
  s_r_10__10_,s_r_10__9_,s_r_10__8_,s_r_10__7_,s_r_10__6_,s_r_10__5_,s_r_10__4_,
  s_r_10__3_,s_r_10__2_,s_r_10__1_,s_r_10__0_,s_r_9__31_,s_r_9__30_,s_r_9__29_,
  s_r_9__28_,s_r_9__27_,s_r_9__26_,s_r_9__25_,s_r_9__24_,s_r_9__23_,s_r_9__22_,
  s_r_9__21_,s_r_9__20_,s_r_9__19_,s_r_9__18_,s_r_9__17_,s_r_9__16_,s_r_9__15_,s_r_9__14_,
  s_r_9__13_,s_r_9__12_,s_r_9__11_,s_r_9__10_,s_r_9__9_,s_r_9__8_,s_r_9__7_,
  s_r_9__6_,s_r_9__5_,s_r_9__4_,s_r_9__3_,s_r_9__2_,s_r_9__1_,s_r_9__0_,s_r_8__31_,
  s_r_8__30_,s_r_8__29_,s_r_8__28_,s_r_8__27_,s_r_8__26_,s_r_8__25_,s_r_8__24_,
  s_r_8__23_,s_r_8__22_,s_r_8__21_,s_r_8__20_,s_r_8__19_,s_r_8__18_,s_r_8__17_,s_r_8__16_,
  s_r_8__15_,s_r_8__14_,s_r_8__13_,s_r_8__12_,s_r_8__11_,s_r_8__10_,s_r_8__9_,
  s_r_8__8_,s_r_8__7_,s_r_8__6_,s_r_8__5_,s_r_8__4_,s_r_8__3_,s_r_8__2_,s_r_8__1_,
  s_r_8__0_,s_r_7__31_,s_r_7__30_,s_r_7__29_,s_r_7__28_,s_r_7__27_,s_r_7__26_,
  s_r_7__25_,s_r_7__24_,s_r_7__23_,s_r_7__22_,s_r_7__21_,s_r_7__20_,s_r_7__19_,s_r_7__18_,
  s_r_7__17_,s_r_7__16_,s_r_7__15_,s_r_7__14_,s_r_7__13_,s_r_7__12_,s_r_7__11_,
  s_r_7__10_,s_r_7__9_,s_r_7__8_,s_r_7__7_,s_r_7__6_,s_r_7__5_,s_r_7__4_,s_r_7__3_,
  s_r_7__2_,s_r_7__1_,s_r_7__0_,s_r_6__31_,s_r_6__30_,s_r_6__29_,s_r_6__28_,
  s_r_6__27_,s_r_6__26_,s_r_6__25_,s_r_6__24_,s_r_6__23_,s_r_6__22_,s_r_6__21_,s_r_6__20_,
  s_r_6__19_,s_r_6__18_,s_r_6__17_,s_r_6__16_,s_r_6__15_,s_r_6__14_,s_r_6__13_,
  s_r_6__12_,s_r_6__11_,s_r_6__10_,s_r_6__9_,s_r_6__8_,s_r_6__7_,s_r_6__6_,s_r_6__5_,
  s_r_6__4_,s_r_6__3_,s_r_6__2_,s_r_6__1_,s_r_6__0_,s_r_5__31_,s_r_5__30_,
  s_r_5__29_,s_r_5__28_,s_r_5__27_,s_r_5__26_,s_r_5__25_,s_r_5__24_,s_r_5__23_,s_r_5__22_,
  s_r_5__21_,s_r_5__20_,s_r_5__19_,s_r_5__18_,s_r_5__17_,s_r_5__16_,s_r_5__15_,
  s_r_5__14_,s_r_5__13_,s_r_5__12_,s_r_5__11_,s_r_5__10_,s_r_5__9_,s_r_5__8_,s_r_5__7_,
  s_r_5__6_,s_r_5__5_,s_r_5__4_,s_r_5__3_,s_r_5__2_,s_r_5__1_,s_r_5__0_,
  s_r_4__31_,s_r_4__30_,s_r_4__29_,s_r_4__28_,s_r_4__27_,s_r_4__26_,s_r_4__25_,s_r_4__24_,
  s_r_4__23_,s_r_4__22_,s_r_4__21_,s_r_4__20_,s_r_4__19_,s_r_4__18_,s_r_4__17_,
  s_r_4__16_,s_r_4__15_,s_r_4__14_,s_r_4__13_,s_r_4__12_,s_r_4__11_,s_r_4__10_,
  s_r_4__9_,s_r_4__8_,s_r_4__7_,s_r_4__6_,s_r_4__5_,s_r_4__4_,s_r_4__3_,s_r_4__2_,
  s_r_4__1_,s_r_4__0_,s_r_3__31_,s_r_3__30_,s_r_3__29_,s_r_3__28_,s_r_3__27_,s_r_3__26_,
  s_r_3__25_,s_r_3__24_,s_r_3__23_,s_r_3__22_,s_r_3__21_,s_r_3__20_,s_r_3__19_,
  s_r_3__18_,s_r_3__17_,s_r_3__16_,s_r_3__15_,s_r_3__14_,s_r_3__13_,s_r_3__12_,
  s_r_3__11_,s_r_3__10_,s_r_3__9_,s_r_3__8_,s_r_3__7_,s_r_3__6_,s_r_3__5_,s_r_3__4_,
  s_r_3__3_,s_r_3__2_,s_r_3__1_,s_r_3__0_,s_r_2__31_,s_r_2__30_,s_r_2__29_,s_r_2__28_,
  s_r_2__27_,s_r_2__26_,s_r_2__25_,s_r_2__24_,s_r_2__23_,s_r_2__22_,s_r_2__21_,
  s_r_2__20_,s_r_2__19_,s_r_2__18_,s_r_2__17_,s_r_2__16_,s_r_2__15_,s_r_2__14_,
  s_r_2__13_,s_r_2__12_,s_r_2__11_,s_r_2__10_,s_r_2__9_,s_r_2__8_,s_r_2__7_,s_r_2__6_,
  s_r_2__5_,s_r_2__4_,s_r_2__3_,s_r_2__2_,s_r_2__1_,s_r_2__0_,s_r_1__31_,s_r_1__30_,
  s_r_1__29_,s_r_1__28_,s_r_1__27_,s_r_1__26_,s_r_1__25_,s_r_1__24_,s_r_1__23_,
  s_r_1__22_,s_r_1__21_,s_r_1__20_,s_r_1__19_,s_r_1__18_,s_r_1__17_,s_r_1__16_,
  s_r_1__15_,s_r_1__14_,s_r_1__13_,s_r_1__12_,s_r_1__11_,s_r_1__10_,s_r_1__9_,s_r_1__8_,
  s_r_1__7_,s_r_1__6_,s_r_1__5_,s_r_1__4_,s_r_1__3_,s_r_1__2_,s_r_1__1_,s_r_1__0_,
  s_r_0__31_,s_r_0__30_,s_r_0__29_,s_r_0__28_,s_r_0__27_,s_r_0__26_,s_r_0__25_,
  s_r_0__24_,s_r_0__23_,s_r_0__22_,s_r_0__21_,s_r_0__20_,s_r_0__19_,s_r_0__18_,
  s_r_0__17_,s_r_0__16_,s_r_0__15_,s_r_0__14_,s_r_0__13_,s_r_0__12_,s_r_0__11_,s_r_0__10_,
  s_r_0__9_,s_r_0__8_,s_r_0__7_,s_r_0__6_,s_r_0__5_,s_r_0__4_,s_r_0__3_,s_r_0__2_,
  s_r_0__1_,s_r_0__0_,prod_accum_30__31_,prod_accum_29__30_,prod_accum_29__29_,
  prod_accum_29__28_,prod_accum_29__27_,prod_accum_29__26_,prod_accum_29__25_,
  prod_accum_29__24_,prod_accum_29__23_,prod_accum_29__22_,prod_accum_29__21_,
  prod_accum_29__20_,prod_accum_29__19_,prod_accum_29__18_,prod_accum_29__17_,
  prod_accum_29__16_,prod_accum_29__15_,prod_accum_29__14_,prod_accum_29__13_,prod_accum_29__12_,
  prod_accum_29__11_,prod_accum_29__10_,prod_accum_29__9_,prod_accum_29__8_,
  prod_accum_29__7_,prod_accum_29__6_,prod_accum_29__5_,prod_accum_29__4_,
  prod_accum_29__3_,prod_accum_29__2_,prod_accum_29__1_,prod_accum_29__0_,prod_accum_28__29_,
  prod_accum_28__28_,prod_accum_28__27_,prod_accum_28__26_,prod_accum_28__25_,
  prod_accum_28__24_,prod_accum_28__23_,prod_accum_28__22_,prod_accum_28__21_,
  prod_accum_28__20_,prod_accum_28__19_,prod_accum_28__18_,prod_accum_28__17_,
  prod_accum_28__16_,prod_accum_28__15_,prod_accum_28__14_,prod_accum_28__13_,prod_accum_28__12_,
  prod_accum_28__11_,prod_accum_28__10_,prod_accum_28__9_,prod_accum_28__8_,
  prod_accum_28__7_,prod_accum_28__6_,prod_accum_28__5_,prod_accum_28__4_,
  prod_accum_28__3_,prod_accum_28__2_,prod_accum_28__1_,prod_accum_28__0_,prod_accum_27__28_,
  prod_accum_27__27_,prod_accum_27__26_,prod_accum_27__25_,prod_accum_27__24_,
  prod_accum_27__23_,prod_accum_27__22_,prod_accum_27__21_,prod_accum_27__20_,
  prod_accum_27__19_,prod_accum_27__18_,prod_accum_27__17_,prod_accum_27__16_,
  prod_accum_27__15_,prod_accum_27__14_,prod_accum_27__13_,prod_accum_27__12_,prod_accum_27__11_,
  prod_accum_27__10_,prod_accum_27__9_,prod_accum_27__8_,prod_accum_27__7_,
  prod_accum_27__6_,prod_accum_27__5_,prod_accum_27__4_,prod_accum_27__3_,
  prod_accum_27__2_,prod_accum_27__1_,prod_accum_27__0_,prod_accum_26__27_,prod_accum_26__26_,
  prod_accum_26__25_,prod_accum_26__24_,prod_accum_26__23_,prod_accum_26__22_,
  prod_accum_26__21_,prod_accum_26__20_,prod_accum_26__19_,prod_accum_26__18_,
  prod_accum_26__17_,prod_accum_26__16_,prod_accum_26__15_,prod_accum_26__14_,
  prod_accum_26__13_,prod_accum_26__12_,prod_accum_26__11_,prod_accum_26__10_,prod_accum_26__9_,
  prod_accum_26__8_,prod_accum_26__7_,prod_accum_26__6_,prod_accum_26__5_,
  prod_accum_26__4_,prod_accum_26__3_,prod_accum_26__2_,prod_accum_26__1_,
  prod_accum_26__0_,prod_accum_25__26_,prod_accum_25__25_,prod_accum_25__24_,prod_accum_25__23_,
  prod_accum_25__22_,prod_accum_25__21_,prod_accum_25__20_,prod_accum_25__19_,
  prod_accum_25__18_,prod_accum_25__17_,prod_accum_25__16_,prod_accum_25__15_,
  prod_accum_25__14_,prod_accum_25__13_,prod_accum_25__12_,prod_accum_25__11_,
  prod_accum_25__10_,prod_accum_25__9_,prod_accum_25__8_,prod_accum_25__7_,prod_accum_25__6_,
  prod_accum_25__5_,prod_accum_25__4_,prod_accum_25__3_,prod_accum_25__2_,
  prod_accum_25__1_,prod_accum_25__0_,prod_accum_24__25_,prod_accum_24__24_,
  prod_accum_24__23_,prod_accum_24__22_,prod_accum_24__21_,prod_accum_24__20_,prod_accum_24__19_,
  prod_accum_24__18_,prod_accum_24__17_,prod_accum_24__16_,prod_accum_24__15_,
  prod_accum_24__14_,prod_accum_24__13_,prod_accum_24__12_,prod_accum_24__11_,
  prod_accum_24__10_,prod_accum_24__9_,prod_accum_24__8_,prod_accum_24__7_,prod_accum_24__6_,
  prod_accum_24__5_,prod_accum_24__4_,prod_accum_24__3_,prod_accum_24__2_,
  prod_accum_24__1_,prod_accum_24__0_,prod_accum_23__24_,prod_accum_23__23_,
  prod_accum_23__22_,prod_accum_23__21_,prod_accum_23__20_,prod_accum_23__19_,
  prod_accum_23__18_,prod_accum_23__17_,prod_accum_23__16_,prod_accum_23__15_,prod_accum_23__14_,
  prod_accum_23__13_,prod_accum_23__12_,prod_accum_23__11_,prod_accum_23__10_,
  prod_accum_23__9_,prod_accum_23__8_,prod_accum_23__7_,prod_accum_23__6_,
  prod_accum_23__5_,prod_accum_23__4_,prod_accum_23__3_,prod_accum_23__2_,prod_accum_23__1_,
  prod_accum_23__0_,prod_accum_22__23_,prod_accum_22__22_,prod_accum_22__21_,
  prod_accum_22__20_,prod_accum_22__19_,prod_accum_22__18_,prod_accum_22__17_,
  prod_accum_22__16_,prod_accum_22__15_,prod_accum_22__14_,prod_accum_22__13_,
  prod_accum_22__12_,prod_accum_22__11_,prod_accum_22__10_,prod_accum_22__9_,prod_accum_22__8_,
  prod_accum_22__7_,prod_accum_22__6_,prod_accum_22__5_,prod_accum_22__4_,
  prod_accum_22__3_,prod_accum_22__2_,prod_accum_22__1_,prod_accum_22__0_,prod_accum_21__22_,
  prod_accum_21__21_,prod_accum_21__20_,prod_accum_21__19_,prod_accum_21__18_,
  prod_accum_21__17_,prod_accum_21__16_,prod_accum_21__15_,prod_accum_21__14_,
  prod_accum_21__13_,prod_accum_21__12_,prod_accum_21__11_,prod_accum_21__10_,
  prod_accum_21__9_,prod_accum_21__8_,prod_accum_21__7_,prod_accum_21__6_,prod_accum_21__5_,
  prod_accum_21__4_,prod_accum_21__3_,prod_accum_21__2_,prod_accum_21__1_,
  prod_accum_21__0_,prod_accum_20__21_,prod_accum_20__20_,prod_accum_20__19_,
  prod_accum_20__18_,prod_accum_20__17_,prod_accum_20__16_,prod_accum_20__15_,prod_accum_20__14_,
  prod_accum_20__13_,prod_accum_20__12_,prod_accum_20__11_,prod_accum_20__10_,
  prod_accum_20__9_,prod_accum_20__8_,prod_accum_20__7_,prod_accum_20__6_,
  prod_accum_20__5_,prod_accum_20__4_,prod_accum_20__3_,prod_accum_20__2_,prod_accum_20__1_,
  prod_accum_20__0_,prod_accum_19__20_,prod_accum_19__19_,prod_accum_19__18_,
  prod_accum_19__17_,prod_accum_19__16_,prod_accum_19__15_,prod_accum_19__14_,
  prod_accum_19__13_,prod_accum_19__12_,prod_accum_19__11_,prod_accum_19__10_,
  prod_accum_19__9_,prod_accum_19__8_,prod_accum_19__7_,prod_accum_19__6_,prod_accum_19__5_,
  prod_accum_19__4_,prod_accum_19__3_,prod_accum_19__2_,prod_accum_19__1_,
  prod_accum_19__0_,prod_accum_18__19_,prod_accum_18__18_,prod_accum_18__17_,prod_accum_18__16_,
  prod_accum_18__15_,prod_accum_18__14_,prod_accum_18__13_,prod_accum_18__12_,
  prod_accum_18__11_,prod_accum_18__10_,prod_accum_18__9_,prod_accum_18__8_,
  prod_accum_18__7_,prod_accum_18__6_,prod_accum_18__5_,prod_accum_18__4_,prod_accum_18__3_,
  prod_accum_18__2_,prod_accum_18__1_,prod_accum_18__0_,prod_accum_17__18_,
  prod_accum_17__17_,prod_accum_17__16_,prod_accum_17__15_,prod_accum_17__14_,
  prod_accum_17__13_,prod_accum_17__12_,prod_accum_17__11_,prod_accum_17__10_,
  prod_accum_17__9_,prod_accum_17__8_,prod_accum_17__7_,prod_accum_17__6_,prod_accum_17__5_,
  prod_accum_17__4_,prod_accum_17__3_,prod_accum_17__2_,prod_accum_17__1_,
  prod_accum_17__0_,prod_accum_16__17_,prod_accum_16__16_,prod_accum_16__15_,prod_accum_16__14_,
  prod_accum_16__13_,prod_accum_16__12_,prod_accum_16__11_,prod_accum_16__10_,
  prod_accum_16__9_,prod_accum_16__8_,prod_accum_16__7_,prod_accum_16__6_,
  prod_accum_16__5_,prod_accum_16__4_,prod_accum_16__3_,prod_accum_16__2_,prod_accum_16__1_,
  prod_accum_16__0_,prod_accum_15__16_,prod_accum_15__15_,prod_accum_15__14_,
  prod_accum_15__13_,prod_accum_15__12_,prod_accum_15__11_,prod_accum_15__10_,
  prod_accum_15__9_,prod_accum_15__8_,prod_accum_15__7_,prod_accum_15__6_,prod_accum_15__5_,
  prod_accum_15__4_,prod_accum_15__3_,prod_accum_15__2_,prod_accum_15__1_,
  prod_accum_15__0_,prod_accum_14__15_,prod_accum_14__14_,prod_accum_14__13_,
  prod_accum_14__12_,prod_accum_14__11_,prod_accum_14__10_,prod_accum_14__9_,prod_accum_14__8_,
  prod_accum_14__7_,prod_accum_14__6_,prod_accum_14__5_,prod_accum_14__4_,
  prod_accum_14__3_,prod_accum_14__2_,prod_accum_14__1_,prod_accum_14__0_,
  prod_accum_13__14_,prod_accum_13__13_,prod_accum_13__12_,prod_accum_13__11_,prod_accum_13__10_,
  prod_accum_13__9_,prod_accum_13__8_,prod_accum_13__7_,prod_accum_13__6_,
  prod_accum_13__5_,prod_accum_13__4_,prod_accum_13__3_,prod_accum_13__2_,prod_accum_13__1_,
  prod_accum_13__0_,prod_accum_12__13_,prod_accum_12__12_,prod_accum_12__11_,
  prod_accum_12__10_,prod_accum_12__9_,prod_accum_12__8_,prod_accum_12__7_,
  prod_accum_12__6_,prod_accum_12__5_,prod_accum_12__4_,prod_accum_12__3_,prod_accum_12__2_,
  prod_accum_12__1_,prod_accum_12__0_,prod_accum_11__12_,prod_accum_11__11_,
  prod_accum_11__10_,prod_accum_11__9_,prod_accum_11__8_,prod_accum_11__7_,
  prod_accum_11__6_,prod_accum_11__5_,prod_accum_11__4_,prod_accum_11__3_,prod_accum_11__2_,
  prod_accum_11__1_,prod_accum_11__0_,prod_accum_10__11_,prod_accum_10__10_,
  prod_accum_10__9_,prod_accum_10__8_,prod_accum_10__7_,prod_accum_10__6_,prod_accum_10__5_,
  prod_accum_10__4_,prod_accum_10__3_,prod_accum_10__2_,prod_accum_10__1_,
  prod_accum_10__0_,prod_accum_9__10_,prod_accum_9__9_,prod_accum_9__8_,prod_accum_9__7_,
  prod_accum_9__6_,prod_accum_9__5_,prod_accum_9__4_,prod_accum_9__3_,
  prod_accum_9__2_,prod_accum_9__1_,prod_accum_9__0_,prod_accum_8__9_,prod_accum_8__8_,
  prod_accum_8__7_,prod_accum_8__6_,prod_accum_8__5_,prod_accum_8__4_,prod_accum_8__3_,
  prod_accum_8__2_,prod_accum_8__1_,prod_accum_8__0_,prod_accum_7__8_,
  prod_accum_7__7_,prod_accum_7__6_,prod_accum_7__5_,prod_accum_7__4_,prod_accum_7__3_,
  prod_accum_7__2_,prod_accum_7__1_,prod_accum_7__0_,prod_accum_6__7_,prod_accum_6__6_,
  prod_accum_6__5_,prod_accum_6__4_,prod_accum_6__3_,prod_accum_6__2_,prod_accum_6__1_,
  prod_accum_6__0_,prod_accum_5__6_,prod_accum_5__5_,prod_accum_5__4_,
  prod_accum_5__3_,prod_accum_5__2_,prod_accum_5__1_,prod_accum_5__0_,prod_accum_4__5_,
  prod_accum_4__4_,prod_accum_4__3_,prod_accum_4__2_,prod_accum_4__1_,prod_accum_4__0_,
  prod_accum_3__4_,prod_accum_3__3_,prod_accum_3__2_,prod_accum_3__1_,
  prod_accum_3__0_,prod_accum_2__3_,prod_accum_2__2_,prod_accum_2__1_,prod_accum_2__0_,
  prod_accum_1__2_,prod_accum_1__1_,prod_accum_1__0_,prod_accum_0__1_,prod_accum_0__0_,
  SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,
  SYNOPSYS_UNCONNECTED_4,SYNOPSYS_UNCONNECTED_5,SYNOPSYS_UNCONNECTED_6,SYNOPSYS_UNCONNECTED_7,
  SYNOPSYS_UNCONNECTED_8,SYNOPSYS_UNCONNECTED_9,SYNOPSYS_UNCONNECTED_10,
  SYNOPSYS_UNCONNECTED_11,SYNOPSYS_UNCONNECTED_12,SYNOPSYS_UNCONNECTED_13,
  SYNOPSYS_UNCONNECTED_14,SYNOPSYS_UNCONNECTED_15,SYNOPSYS_UNCONNECTED_16,SYNOPSYS_UNCONNECTED_17,
  SYNOPSYS_UNCONNECTED_18,SYNOPSYS_UNCONNECTED_19,SYNOPSYS_UNCONNECTED_20,
  SYNOPSYS_UNCONNECTED_21,SYNOPSYS_UNCONNECTED_22,SYNOPSYS_UNCONNECTED_23,
  SYNOPSYS_UNCONNECTED_24,SYNOPSYS_UNCONNECTED_25,SYNOPSYS_UNCONNECTED_26,SYNOPSYS_UNCONNECTED_27,
  SYNOPSYS_UNCONNECTED_28,SYNOPSYS_UNCONNECTED_29,SYNOPSYS_UNCONNECTED_30,
  SYNOPSYS_UNCONNECTED_31,SYNOPSYS_UNCONNECTED_32,SYNOPSYS_UNCONNECTED_33,
  SYNOPSYS_UNCONNECTED_34,SYNOPSYS_UNCONNECTED_35,SYNOPSYS_UNCONNECTED_36,SYNOPSYS_UNCONNECTED_37,
  SYNOPSYS_UNCONNECTED_38,SYNOPSYS_UNCONNECTED_39,SYNOPSYS_UNCONNECTED_40,
  SYNOPSYS_UNCONNECTED_41,SYNOPSYS_UNCONNECTED_42,SYNOPSYS_UNCONNECTED_43,
  SYNOPSYS_UNCONNECTED_44,SYNOPSYS_UNCONNECTED_45,SYNOPSYS_UNCONNECTED_46,SYNOPSYS_UNCONNECTED_47,
  SYNOPSYS_UNCONNECTED_48,SYNOPSYS_UNCONNECTED_49,SYNOPSYS_UNCONNECTED_50,
  SYNOPSYS_UNCONNECTED_51,SYNOPSYS_UNCONNECTED_52,SYNOPSYS_UNCONNECTED_53,
  SYNOPSYS_UNCONNECTED_54,SYNOPSYS_UNCONNECTED_55,SYNOPSYS_UNCONNECTED_56,SYNOPSYS_UNCONNECTED_57,
  SYNOPSYS_UNCONNECTED_58,SYNOPSYS_UNCONNECTED_59,SYNOPSYS_UNCONNECTED_60,
  SYNOPSYS_UNCONNECTED_61,SYNOPSYS_UNCONNECTED_62,SYNOPSYS_UNCONNECTED_63,
  SYNOPSYS_UNCONNECTED_64;
  wire [31:0] pp0;
  wire [959:0] a_r,b_r;
  wire [29:0] c_r;

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0], b_i[0:0] }),
    .o(pp0)
  );


  bsg_mul_array_row_32_0_0
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
    .a_o(a_r[31:0]),
    .b_o(b_r[31:0]),
    .s_o({ s_r_0__31_, s_r_0__30_, s_r_0__29_, s_r_0__28_, s_r_0__27_, s_r_0__26_, s_r_0__25_, s_r_0__24_, s_r_0__23_, s_r_0__22_, s_r_0__21_, s_r_0__20_, s_r_0__19_, s_r_0__18_, s_r_0__17_, s_r_0__16_, s_r_0__15_, s_r_0__14_, s_r_0__13_, s_r_0__12_, s_r_0__11_, s_r_0__10_, s_r_0__9_, s_r_0__8_, s_r_0__7_, s_r_0__6_, s_r_0__5_, s_r_0__4_, s_r_0__3_, s_r_0__2_, s_r_0__1_, s_r_0__0_ }),
    .c_o(c_r[0]),
    .prod_accum_o({ prod_accum_0__1_, prod_accum_0__0_ })
  );


  bsg_mul_array_row_32_1_0
  genblk1_1__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[31:0]),
    .b_i(b_r[31:0]),
    .s_i({ s_r_0__31_, s_r_0__30_, s_r_0__29_, s_r_0__28_, s_r_0__27_, s_r_0__26_, s_r_0__25_, s_r_0__24_, s_r_0__23_, s_r_0__22_, s_r_0__21_, s_r_0__20_, s_r_0__19_, s_r_0__18_, s_r_0__17_, s_r_0__16_, s_r_0__15_, s_r_0__14_, s_r_0__13_, s_r_0__12_, s_r_0__11_, s_r_0__10_, s_r_0__9_, s_r_0__8_, s_r_0__7_, s_r_0__6_, s_r_0__5_, s_r_0__4_, s_r_0__3_, s_r_0__2_, s_r_0__1_, s_r_0__0_ }),
    .c_i(c_r[0]),
    .prod_accum_i({ prod_accum_0__1_, prod_accum_0__0_ }),
    .a_o(a_r[63:32]),
    .b_o(b_r[63:32]),
    .s_o({ s_r_1__31_, s_r_1__30_, s_r_1__29_, s_r_1__28_, s_r_1__27_, s_r_1__26_, s_r_1__25_, s_r_1__24_, s_r_1__23_, s_r_1__22_, s_r_1__21_, s_r_1__20_, s_r_1__19_, s_r_1__18_, s_r_1__17_, s_r_1__16_, s_r_1__15_, s_r_1__14_, s_r_1__13_, s_r_1__12_, s_r_1__11_, s_r_1__10_, s_r_1__9_, s_r_1__8_, s_r_1__7_, s_r_1__6_, s_r_1__5_, s_r_1__4_, s_r_1__3_, s_r_1__2_, s_r_1__1_, s_r_1__0_ }),
    .c_o(c_r[1]),
    .prod_accum_o({ prod_accum_1__2_, prod_accum_1__1_, prod_accum_1__0_ })
  );


  bsg_mul_array_row_32_2_0
  genblk1_2__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[63:32]),
    .b_i(b_r[63:32]),
    .s_i({ s_r_1__31_, s_r_1__30_, s_r_1__29_, s_r_1__28_, s_r_1__27_, s_r_1__26_, s_r_1__25_, s_r_1__24_, s_r_1__23_, s_r_1__22_, s_r_1__21_, s_r_1__20_, s_r_1__19_, s_r_1__18_, s_r_1__17_, s_r_1__16_, s_r_1__15_, s_r_1__14_, s_r_1__13_, s_r_1__12_, s_r_1__11_, s_r_1__10_, s_r_1__9_, s_r_1__8_, s_r_1__7_, s_r_1__6_, s_r_1__5_, s_r_1__4_, s_r_1__3_, s_r_1__2_, s_r_1__1_, s_r_1__0_ }),
    .c_i(c_r[1]),
    .prod_accum_i({ prod_accum_1__2_, prod_accum_1__1_, prod_accum_1__0_ }),
    .a_o(a_r[95:64]),
    .b_o(b_r[95:64]),
    .s_o({ s_r_2__31_, s_r_2__30_, s_r_2__29_, s_r_2__28_, s_r_2__27_, s_r_2__26_, s_r_2__25_, s_r_2__24_, s_r_2__23_, s_r_2__22_, s_r_2__21_, s_r_2__20_, s_r_2__19_, s_r_2__18_, s_r_2__17_, s_r_2__16_, s_r_2__15_, s_r_2__14_, s_r_2__13_, s_r_2__12_, s_r_2__11_, s_r_2__10_, s_r_2__9_, s_r_2__8_, s_r_2__7_, s_r_2__6_, s_r_2__5_, s_r_2__4_, s_r_2__3_, s_r_2__2_, s_r_2__1_, s_r_2__0_ }),
    .c_o(c_r[2]),
    .prod_accum_o({ prod_accum_2__3_, prod_accum_2__2_, prod_accum_2__1_, prod_accum_2__0_ })
  );


  bsg_mul_array_row_32_3_0
  genblk1_3__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[95:64]),
    .b_i(b_r[95:64]),
    .s_i({ s_r_2__31_, s_r_2__30_, s_r_2__29_, s_r_2__28_, s_r_2__27_, s_r_2__26_, s_r_2__25_, s_r_2__24_, s_r_2__23_, s_r_2__22_, s_r_2__21_, s_r_2__20_, s_r_2__19_, s_r_2__18_, s_r_2__17_, s_r_2__16_, s_r_2__15_, s_r_2__14_, s_r_2__13_, s_r_2__12_, s_r_2__11_, s_r_2__10_, s_r_2__9_, s_r_2__8_, s_r_2__7_, s_r_2__6_, s_r_2__5_, s_r_2__4_, s_r_2__3_, s_r_2__2_, s_r_2__1_, s_r_2__0_ }),
    .c_i(c_r[2]),
    .prod_accum_i({ prod_accum_2__3_, prod_accum_2__2_, prod_accum_2__1_, prod_accum_2__0_ }),
    .a_o(a_r[127:96]),
    .b_o(b_r[127:96]),
    .s_o({ s_r_3__31_, s_r_3__30_, s_r_3__29_, s_r_3__28_, s_r_3__27_, s_r_3__26_, s_r_3__25_, s_r_3__24_, s_r_3__23_, s_r_3__22_, s_r_3__21_, s_r_3__20_, s_r_3__19_, s_r_3__18_, s_r_3__17_, s_r_3__16_, s_r_3__15_, s_r_3__14_, s_r_3__13_, s_r_3__12_, s_r_3__11_, s_r_3__10_, s_r_3__9_, s_r_3__8_, s_r_3__7_, s_r_3__6_, s_r_3__5_, s_r_3__4_, s_r_3__3_, s_r_3__2_, s_r_3__1_, s_r_3__0_ }),
    .c_o(c_r[3]),
    .prod_accum_o({ prod_accum_3__4_, prod_accum_3__3_, prod_accum_3__2_, prod_accum_3__1_, prod_accum_3__0_ })
  );


  bsg_mul_array_row_32_4_0
  genblk1_4__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[127:96]),
    .b_i(b_r[127:96]),
    .s_i({ s_r_3__31_, s_r_3__30_, s_r_3__29_, s_r_3__28_, s_r_3__27_, s_r_3__26_, s_r_3__25_, s_r_3__24_, s_r_3__23_, s_r_3__22_, s_r_3__21_, s_r_3__20_, s_r_3__19_, s_r_3__18_, s_r_3__17_, s_r_3__16_, s_r_3__15_, s_r_3__14_, s_r_3__13_, s_r_3__12_, s_r_3__11_, s_r_3__10_, s_r_3__9_, s_r_3__8_, s_r_3__7_, s_r_3__6_, s_r_3__5_, s_r_3__4_, s_r_3__3_, s_r_3__2_, s_r_3__1_, s_r_3__0_ }),
    .c_i(c_r[3]),
    .prod_accum_i({ prod_accum_3__4_, prod_accum_3__3_, prod_accum_3__2_, prod_accum_3__1_, prod_accum_3__0_ }),
    .a_o(a_r[159:128]),
    .b_o(b_r[159:128]),
    .s_o({ s_r_4__31_, s_r_4__30_, s_r_4__29_, s_r_4__28_, s_r_4__27_, s_r_4__26_, s_r_4__25_, s_r_4__24_, s_r_4__23_, s_r_4__22_, s_r_4__21_, s_r_4__20_, s_r_4__19_, s_r_4__18_, s_r_4__17_, s_r_4__16_, s_r_4__15_, s_r_4__14_, s_r_4__13_, s_r_4__12_, s_r_4__11_, s_r_4__10_, s_r_4__9_, s_r_4__8_, s_r_4__7_, s_r_4__6_, s_r_4__5_, s_r_4__4_, s_r_4__3_, s_r_4__2_, s_r_4__1_, s_r_4__0_ }),
    .c_o(c_r[4]),
    .prod_accum_o({ prod_accum_4__5_, prod_accum_4__4_, prod_accum_4__3_, prod_accum_4__2_, prod_accum_4__1_, prod_accum_4__0_ })
  );


  bsg_mul_array_row_32_5_0
  genblk1_5__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[159:128]),
    .b_i(b_r[159:128]),
    .s_i({ s_r_4__31_, s_r_4__30_, s_r_4__29_, s_r_4__28_, s_r_4__27_, s_r_4__26_, s_r_4__25_, s_r_4__24_, s_r_4__23_, s_r_4__22_, s_r_4__21_, s_r_4__20_, s_r_4__19_, s_r_4__18_, s_r_4__17_, s_r_4__16_, s_r_4__15_, s_r_4__14_, s_r_4__13_, s_r_4__12_, s_r_4__11_, s_r_4__10_, s_r_4__9_, s_r_4__8_, s_r_4__7_, s_r_4__6_, s_r_4__5_, s_r_4__4_, s_r_4__3_, s_r_4__2_, s_r_4__1_, s_r_4__0_ }),
    .c_i(c_r[4]),
    .prod_accum_i({ prod_accum_4__5_, prod_accum_4__4_, prod_accum_4__3_, prod_accum_4__2_, prod_accum_4__1_, prod_accum_4__0_ }),
    .a_o(a_r[191:160]),
    .b_o(b_r[191:160]),
    .s_o({ s_r_5__31_, s_r_5__30_, s_r_5__29_, s_r_5__28_, s_r_5__27_, s_r_5__26_, s_r_5__25_, s_r_5__24_, s_r_5__23_, s_r_5__22_, s_r_5__21_, s_r_5__20_, s_r_5__19_, s_r_5__18_, s_r_5__17_, s_r_5__16_, s_r_5__15_, s_r_5__14_, s_r_5__13_, s_r_5__12_, s_r_5__11_, s_r_5__10_, s_r_5__9_, s_r_5__8_, s_r_5__7_, s_r_5__6_, s_r_5__5_, s_r_5__4_, s_r_5__3_, s_r_5__2_, s_r_5__1_, s_r_5__0_ }),
    .c_o(c_r[5]),
    .prod_accum_o({ prod_accum_5__6_, prod_accum_5__5_, prod_accum_5__4_, prod_accum_5__3_, prod_accum_5__2_, prod_accum_5__1_, prod_accum_5__0_ })
  );


  bsg_mul_array_row_32_6_0
  genblk1_6__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[191:160]),
    .b_i(b_r[191:160]),
    .s_i({ s_r_5__31_, s_r_5__30_, s_r_5__29_, s_r_5__28_, s_r_5__27_, s_r_5__26_, s_r_5__25_, s_r_5__24_, s_r_5__23_, s_r_5__22_, s_r_5__21_, s_r_5__20_, s_r_5__19_, s_r_5__18_, s_r_5__17_, s_r_5__16_, s_r_5__15_, s_r_5__14_, s_r_5__13_, s_r_5__12_, s_r_5__11_, s_r_5__10_, s_r_5__9_, s_r_5__8_, s_r_5__7_, s_r_5__6_, s_r_5__5_, s_r_5__4_, s_r_5__3_, s_r_5__2_, s_r_5__1_, s_r_5__0_ }),
    .c_i(c_r[5]),
    .prod_accum_i({ prod_accum_5__6_, prod_accum_5__5_, prod_accum_5__4_, prod_accum_5__3_, prod_accum_5__2_, prod_accum_5__1_, prod_accum_5__0_ }),
    .a_o(a_r[223:192]),
    .b_o(b_r[223:192]),
    .s_o({ s_r_6__31_, s_r_6__30_, s_r_6__29_, s_r_6__28_, s_r_6__27_, s_r_6__26_, s_r_6__25_, s_r_6__24_, s_r_6__23_, s_r_6__22_, s_r_6__21_, s_r_6__20_, s_r_6__19_, s_r_6__18_, s_r_6__17_, s_r_6__16_, s_r_6__15_, s_r_6__14_, s_r_6__13_, s_r_6__12_, s_r_6__11_, s_r_6__10_, s_r_6__9_, s_r_6__8_, s_r_6__7_, s_r_6__6_, s_r_6__5_, s_r_6__4_, s_r_6__3_, s_r_6__2_, s_r_6__1_, s_r_6__0_ }),
    .c_o(c_r[6]),
    .prod_accum_o({ prod_accum_6__7_, prod_accum_6__6_, prod_accum_6__5_, prod_accum_6__4_, prod_accum_6__3_, prod_accum_6__2_, prod_accum_6__1_, prod_accum_6__0_ })
  );


  bsg_mul_array_row_32_7_1
  genblk1_7__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[223:192]),
    .b_i(b_r[223:192]),
    .s_i({ s_r_6__31_, s_r_6__30_, s_r_6__29_, s_r_6__28_, s_r_6__27_, s_r_6__26_, s_r_6__25_, s_r_6__24_, s_r_6__23_, s_r_6__22_, s_r_6__21_, s_r_6__20_, s_r_6__19_, s_r_6__18_, s_r_6__17_, s_r_6__16_, s_r_6__15_, s_r_6__14_, s_r_6__13_, s_r_6__12_, s_r_6__11_, s_r_6__10_, s_r_6__9_, s_r_6__8_, s_r_6__7_, s_r_6__6_, s_r_6__5_, s_r_6__4_, s_r_6__3_, s_r_6__2_, s_r_6__1_, s_r_6__0_ }),
    .c_i(c_r[6]),
    .prod_accum_i({ prod_accum_6__7_, prod_accum_6__6_, prod_accum_6__5_, prod_accum_6__4_, prod_accum_6__3_, prod_accum_6__2_, prod_accum_6__1_, prod_accum_6__0_ }),
    .a_o(a_r[255:224]),
    .b_o(b_r[255:224]),
    .s_o({ s_r_7__31_, s_r_7__30_, s_r_7__29_, s_r_7__28_, s_r_7__27_, s_r_7__26_, s_r_7__25_, s_r_7__24_, s_r_7__23_, s_r_7__22_, s_r_7__21_, s_r_7__20_, s_r_7__19_, s_r_7__18_, s_r_7__17_, s_r_7__16_, s_r_7__15_, s_r_7__14_, s_r_7__13_, s_r_7__12_, s_r_7__11_, s_r_7__10_, s_r_7__9_, s_r_7__8_, s_r_7__7_, s_r_7__6_, s_r_7__5_, s_r_7__4_, s_r_7__3_, s_r_7__2_, s_r_7__1_, s_r_7__0_ }),
    .c_o(c_r[7]),
    .prod_accum_o({ prod_accum_7__8_, prod_accum_7__7_, prod_accum_7__6_, prod_accum_7__5_, prod_accum_7__4_, prod_accum_7__3_, prod_accum_7__2_, prod_accum_7__1_, prod_accum_7__0_ })
  );


  bsg_mul_array_row_32_8_0
  genblk1_8__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[255:224]),
    .b_i(b_r[255:224]),
    .s_i({ s_r_7__31_, s_r_7__30_, s_r_7__29_, s_r_7__28_, s_r_7__27_, s_r_7__26_, s_r_7__25_, s_r_7__24_, s_r_7__23_, s_r_7__22_, s_r_7__21_, s_r_7__20_, s_r_7__19_, s_r_7__18_, s_r_7__17_, s_r_7__16_, s_r_7__15_, s_r_7__14_, s_r_7__13_, s_r_7__12_, s_r_7__11_, s_r_7__10_, s_r_7__9_, s_r_7__8_, s_r_7__7_, s_r_7__6_, s_r_7__5_, s_r_7__4_, s_r_7__3_, s_r_7__2_, s_r_7__1_, s_r_7__0_ }),
    .c_i(c_r[7]),
    .prod_accum_i({ prod_accum_7__8_, prod_accum_7__7_, prod_accum_7__6_, prod_accum_7__5_, prod_accum_7__4_, prod_accum_7__3_, prod_accum_7__2_, prod_accum_7__1_, prod_accum_7__0_ }),
    .a_o(a_r[287:256]),
    .b_o(b_r[287:256]),
    .s_o({ s_r_8__31_, s_r_8__30_, s_r_8__29_, s_r_8__28_, s_r_8__27_, s_r_8__26_, s_r_8__25_, s_r_8__24_, s_r_8__23_, s_r_8__22_, s_r_8__21_, s_r_8__20_, s_r_8__19_, s_r_8__18_, s_r_8__17_, s_r_8__16_, s_r_8__15_, s_r_8__14_, s_r_8__13_, s_r_8__12_, s_r_8__11_, s_r_8__10_, s_r_8__9_, s_r_8__8_, s_r_8__7_, s_r_8__6_, s_r_8__5_, s_r_8__4_, s_r_8__3_, s_r_8__2_, s_r_8__1_, s_r_8__0_ }),
    .c_o(c_r[8]),
    .prod_accum_o({ prod_accum_8__9_, prod_accum_8__8_, prod_accum_8__7_, prod_accum_8__6_, prod_accum_8__5_, prod_accum_8__4_, prod_accum_8__3_, prod_accum_8__2_, prod_accum_8__1_, prod_accum_8__0_ })
  );


  bsg_mul_array_row_32_9_0
  genblk1_9__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[287:256]),
    .b_i(b_r[287:256]),
    .s_i({ s_r_8__31_, s_r_8__30_, s_r_8__29_, s_r_8__28_, s_r_8__27_, s_r_8__26_, s_r_8__25_, s_r_8__24_, s_r_8__23_, s_r_8__22_, s_r_8__21_, s_r_8__20_, s_r_8__19_, s_r_8__18_, s_r_8__17_, s_r_8__16_, s_r_8__15_, s_r_8__14_, s_r_8__13_, s_r_8__12_, s_r_8__11_, s_r_8__10_, s_r_8__9_, s_r_8__8_, s_r_8__7_, s_r_8__6_, s_r_8__5_, s_r_8__4_, s_r_8__3_, s_r_8__2_, s_r_8__1_, s_r_8__0_ }),
    .c_i(c_r[8]),
    .prod_accum_i({ prod_accum_8__9_, prod_accum_8__8_, prod_accum_8__7_, prod_accum_8__6_, prod_accum_8__5_, prod_accum_8__4_, prod_accum_8__3_, prod_accum_8__2_, prod_accum_8__1_, prod_accum_8__0_ }),
    .a_o(a_r[319:288]),
    .b_o(b_r[319:288]),
    .s_o({ s_r_9__31_, s_r_9__30_, s_r_9__29_, s_r_9__28_, s_r_9__27_, s_r_9__26_, s_r_9__25_, s_r_9__24_, s_r_9__23_, s_r_9__22_, s_r_9__21_, s_r_9__20_, s_r_9__19_, s_r_9__18_, s_r_9__17_, s_r_9__16_, s_r_9__15_, s_r_9__14_, s_r_9__13_, s_r_9__12_, s_r_9__11_, s_r_9__10_, s_r_9__9_, s_r_9__8_, s_r_9__7_, s_r_9__6_, s_r_9__5_, s_r_9__4_, s_r_9__3_, s_r_9__2_, s_r_9__1_, s_r_9__0_ }),
    .c_o(c_r[9]),
    .prod_accum_o({ prod_accum_9__10_, prod_accum_9__9_, prod_accum_9__8_, prod_accum_9__7_, prod_accum_9__6_, prod_accum_9__5_, prod_accum_9__4_, prod_accum_9__3_, prod_accum_9__2_, prod_accum_9__1_, prod_accum_9__0_ })
  );


  bsg_mul_array_row_32_10_0
  genblk1_10__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[319:288]),
    .b_i(b_r[319:288]),
    .s_i({ s_r_9__31_, s_r_9__30_, s_r_9__29_, s_r_9__28_, s_r_9__27_, s_r_9__26_, s_r_9__25_, s_r_9__24_, s_r_9__23_, s_r_9__22_, s_r_9__21_, s_r_9__20_, s_r_9__19_, s_r_9__18_, s_r_9__17_, s_r_9__16_, s_r_9__15_, s_r_9__14_, s_r_9__13_, s_r_9__12_, s_r_9__11_, s_r_9__10_, s_r_9__9_, s_r_9__8_, s_r_9__7_, s_r_9__6_, s_r_9__5_, s_r_9__4_, s_r_9__3_, s_r_9__2_, s_r_9__1_, s_r_9__0_ }),
    .c_i(c_r[9]),
    .prod_accum_i({ prod_accum_9__10_, prod_accum_9__9_, prod_accum_9__8_, prod_accum_9__7_, prod_accum_9__6_, prod_accum_9__5_, prod_accum_9__4_, prod_accum_9__3_, prod_accum_9__2_, prod_accum_9__1_, prod_accum_9__0_ }),
    .a_o(a_r[351:320]),
    .b_o(b_r[351:320]),
    .s_o({ s_r_10__31_, s_r_10__30_, s_r_10__29_, s_r_10__28_, s_r_10__27_, s_r_10__26_, s_r_10__25_, s_r_10__24_, s_r_10__23_, s_r_10__22_, s_r_10__21_, s_r_10__20_, s_r_10__19_, s_r_10__18_, s_r_10__17_, s_r_10__16_, s_r_10__15_, s_r_10__14_, s_r_10__13_, s_r_10__12_, s_r_10__11_, s_r_10__10_, s_r_10__9_, s_r_10__8_, s_r_10__7_, s_r_10__6_, s_r_10__5_, s_r_10__4_, s_r_10__3_, s_r_10__2_, s_r_10__1_, s_r_10__0_ }),
    .c_o(c_r[10]),
    .prod_accum_o({ prod_accum_10__11_, prod_accum_10__10_, prod_accum_10__9_, prod_accum_10__8_, prod_accum_10__7_, prod_accum_10__6_, prod_accum_10__5_, prod_accum_10__4_, prod_accum_10__3_, prod_accum_10__2_, prod_accum_10__1_, prod_accum_10__0_ })
  );


  bsg_mul_array_row_32_11_0
  genblk1_11__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[351:320]),
    .b_i(b_r[351:320]),
    .s_i({ s_r_10__31_, s_r_10__30_, s_r_10__29_, s_r_10__28_, s_r_10__27_, s_r_10__26_, s_r_10__25_, s_r_10__24_, s_r_10__23_, s_r_10__22_, s_r_10__21_, s_r_10__20_, s_r_10__19_, s_r_10__18_, s_r_10__17_, s_r_10__16_, s_r_10__15_, s_r_10__14_, s_r_10__13_, s_r_10__12_, s_r_10__11_, s_r_10__10_, s_r_10__9_, s_r_10__8_, s_r_10__7_, s_r_10__6_, s_r_10__5_, s_r_10__4_, s_r_10__3_, s_r_10__2_, s_r_10__1_, s_r_10__0_ }),
    .c_i(c_r[10]),
    .prod_accum_i({ prod_accum_10__11_, prod_accum_10__10_, prod_accum_10__9_, prod_accum_10__8_, prod_accum_10__7_, prod_accum_10__6_, prod_accum_10__5_, prod_accum_10__4_, prod_accum_10__3_, prod_accum_10__2_, prod_accum_10__1_, prod_accum_10__0_ }),
    .a_o(a_r[383:352]),
    .b_o(b_r[383:352]),
    .s_o({ s_r_11__31_, s_r_11__30_, s_r_11__29_, s_r_11__28_, s_r_11__27_, s_r_11__26_, s_r_11__25_, s_r_11__24_, s_r_11__23_, s_r_11__22_, s_r_11__21_, s_r_11__20_, s_r_11__19_, s_r_11__18_, s_r_11__17_, s_r_11__16_, s_r_11__15_, s_r_11__14_, s_r_11__13_, s_r_11__12_, s_r_11__11_, s_r_11__10_, s_r_11__9_, s_r_11__8_, s_r_11__7_, s_r_11__6_, s_r_11__5_, s_r_11__4_, s_r_11__3_, s_r_11__2_, s_r_11__1_, s_r_11__0_ }),
    .c_o(c_r[11]),
    .prod_accum_o({ prod_accum_11__12_, prod_accum_11__11_, prod_accum_11__10_, prod_accum_11__9_, prod_accum_11__8_, prod_accum_11__7_, prod_accum_11__6_, prod_accum_11__5_, prod_accum_11__4_, prod_accum_11__3_, prod_accum_11__2_, prod_accum_11__1_, prod_accum_11__0_ })
  );


  bsg_mul_array_row_32_12_0
  genblk1_12__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[383:352]),
    .b_i(b_r[383:352]),
    .s_i({ s_r_11__31_, s_r_11__30_, s_r_11__29_, s_r_11__28_, s_r_11__27_, s_r_11__26_, s_r_11__25_, s_r_11__24_, s_r_11__23_, s_r_11__22_, s_r_11__21_, s_r_11__20_, s_r_11__19_, s_r_11__18_, s_r_11__17_, s_r_11__16_, s_r_11__15_, s_r_11__14_, s_r_11__13_, s_r_11__12_, s_r_11__11_, s_r_11__10_, s_r_11__9_, s_r_11__8_, s_r_11__7_, s_r_11__6_, s_r_11__5_, s_r_11__4_, s_r_11__3_, s_r_11__2_, s_r_11__1_, s_r_11__0_ }),
    .c_i(c_r[11]),
    .prod_accum_i({ prod_accum_11__12_, prod_accum_11__11_, prod_accum_11__10_, prod_accum_11__9_, prod_accum_11__8_, prod_accum_11__7_, prod_accum_11__6_, prod_accum_11__5_, prod_accum_11__4_, prod_accum_11__3_, prod_accum_11__2_, prod_accum_11__1_, prod_accum_11__0_ }),
    .a_o(a_r[415:384]),
    .b_o(b_r[415:384]),
    .s_o({ s_r_12__31_, s_r_12__30_, s_r_12__29_, s_r_12__28_, s_r_12__27_, s_r_12__26_, s_r_12__25_, s_r_12__24_, s_r_12__23_, s_r_12__22_, s_r_12__21_, s_r_12__20_, s_r_12__19_, s_r_12__18_, s_r_12__17_, s_r_12__16_, s_r_12__15_, s_r_12__14_, s_r_12__13_, s_r_12__12_, s_r_12__11_, s_r_12__10_, s_r_12__9_, s_r_12__8_, s_r_12__7_, s_r_12__6_, s_r_12__5_, s_r_12__4_, s_r_12__3_, s_r_12__2_, s_r_12__1_, s_r_12__0_ }),
    .c_o(c_r[12]),
    .prod_accum_o({ prod_accum_12__13_, prod_accum_12__12_, prod_accum_12__11_, prod_accum_12__10_, prod_accum_12__9_, prod_accum_12__8_, prod_accum_12__7_, prod_accum_12__6_, prod_accum_12__5_, prod_accum_12__4_, prod_accum_12__3_, prod_accum_12__2_, prod_accum_12__1_, prod_accum_12__0_ })
  );


  bsg_mul_array_row_32_13_0
  genblk1_13__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[415:384]),
    .b_i(b_r[415:384]),
    .s_i({ s_r_12__31_, s_r_12__30_, s_r_12__29_, s_r_12__28_, s_r_12__27_, s_r_12__26_, s_r_12__25_, s_r_12__24_, s_r_12__23_, s_r_12__22_, s_r_12__21_, s_r_12__20_, s_r_12__19_, s_r_12__18_, s_r_12__17_, s_r_12__16_, s_r_12__15_, s_r_12__14_, s_r_12__13_, s_r_12__12_, s_r_12__11_, s_r_12__10_, s_r_12__9_, s_r_12__8_, s_r_12__7_, s_r_12__6_, s_r_12__5_, s_r_12__4_, s_r_12__3_, s_r_12__2_, s_r_12__1_, s_r_12__0_ }),
    .c_i(c_r[12]),
    .prod_accum_i({ prod_accum_12__13_, prod_accum_12__12_, prod_accum_12__11_, prod_accum_12__10_, prod_accum_12__9_, prod_accum_12__8_, prod_accum_12__7_, prod_accum_12__6_, prod_accum_12__5_, prod_accum_12__4_, prod_accum_12__3_, prod_accum_12__2_, prod_accum_12__1_, prod_accum_12__0_ }),
    .a_o(a_r[447:416]),
    .b_o(b_r[447:416]),
    .s_o({ s_r_13__31_, s_r_13__30_, s_r_13__29_, s_r_13__28_, s_r_13__27_, s_r_13__26_, s_r_13__25_, s_r_13__24_, s_r_13__23_, s_r_13__22_, s_r_13__21_, s_r_13__20_, s_r_13__19_, s_r_13__18_, s_r_13__17_, s_r_13__16_, s_r_13__15_, s_r_13__14_, s_r_13__13_, s_r_13__12_, s_r_13__11_, s_r_13__10_, s_r_13__9_, s_r_13__8_, s_r_13__7_, s_r_13__6_, s_r_13__5_, s_r_13__4_, s_r_13__3_, s_r_13__2_, s_r_13__1_, s_r_13__0_ }),
    .c_o(c_r[13]),
    .prod_accum_o({ prod_accum_13__14_, prod_accum_13__13_, prod_accum_13__12_, prod_accum_13__11_, prod_accum_13__10_, prod_accum_13__9_, prod_accum_13__8_, prod_accum_13__7_, prod_accum_13__6_, prod_accum_13__5_, prod_accum_13__4_, prod_accum_13__3_, prod_accum_13__2_, prod_accum_13__1_, prod_accum_13__0_ })
  );


  bsg_mul_array_row_32_14_0
  genblk1_14__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[447:416]),
    .b_i(b_r[447:416]),
    .s_i({ s_r_13__31_, s_r_13__30_, s_r_13__29_, s_r_13__28_, s_r_13__27_, s_r_13__26_, s_r_13__25_, s_r_13__24_, s_r_13__23_, s_r_13__22_, s_r_13__21_, s_r_13__20_, s_r_13__19_, s_r_13__18_, s_r_13__17_, s_r_13__16_, s_r_13__15_, s_r_13__14_, s_r_13__13_, s_r_13__12_, s_r_13__11_, s_r_13__10_, s_r_13__9_, s_r_13__8_, s_r_13__7_, s_r_13__6_, s_r_13__5_, s_r_13__4_, s_r_13__3_, s_r_13__2_, s_r_13__1_, s_r_13__0_ }),
    .c_i(c_r[13]),
    .prod_accum_i({ prod_accum_13__14_, prod_accum_13__13_, prod_accum_13__12_, prod_accum_13__11_, prod_accum_13__10_, prod_accum_13__9_, prod_accum_13__8_, prod_accum_13__7_, prod_accum_13__6_, prod_accum_13__5_, prod_accum_13__4_, prod_accum_13__3_, prod_accum_13__2_, prod_accum_13__1_, prod_accum_13__0_ }),
    .a_o(a_r[479:448]),
    .b_o(b_r[479:448]),
    .s_o({ s_r_14__31_, s_r_14__30_, s_r_14__29_, s_r_14__28_, s_r_14__27_, s_r_14__26_, s_r_14__25_, s_r_14__24_, s_r_14__23_, s_r_14__22_, s_r_14__21_, s_r_14__20_, s_r_14__19_, s_r_14__18_, s_r_14__17_, s_r_14__16_, s_r_14__15_, s_r_14__14_, s_r_14__13_, s_r_14__12_, s_r_14__11_, s_r_14__10_, s_r_14__9_, s_r_14__8_, s_r_14__7_, s_r_14__6_, s_r_14__5_, s_r_14__4_, s_r_14__3_, s_r_14__2_, s_r_14__1_, s_r_14__0_ }),
    .c_o(c_r[14]),
    .prod_accum_o({ prod_accum_14__15_, prod_accum_14__14_, prod_accum_14__13_, prod_accum_14__12_, prod_accum_14__11_, prod_accum_14__10_, prod_accum_14__9_, prod_accum_14__8_, prod_accum_14__7_, prod_accum_14__6_, prod_accum_14__5_, prod_accum_14__4_, prod_accum_14__3_, prod_accum_14__2_, prod_accum_14__1_, prod_accum_14__0_ })
  );


  bsg_mul_array_row_32_15_1
  genblk1_15__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[479:448]),
    .b_i(b_r[479:448]),
    .s_i({ s_r_14__31_, s_r_14__30_, s_r_14__29_, s_r_14__28_, s_r_14__27_, s_r_14__26_, s_r_14__25_, s_r_14__24_, s_r_14__23_, s_r_14__22_, s_r_14__21_, s_r_14__20_, s_r_14__19_, s_r_14__18_, s_r_14__17_, s_r_14__16_, s_r_14__15_, s_r_14__14_, s_r_14__13_, s_r_14__12_, s_r_14__11_, s_r_14__10_, s_r_14__9_, s_r_14__8_, s_r_14__7_, s_r_14__6_, s_r_14__5_, s_r_14__4_, s_r_14__3_, s_r_14__2_, s_r_14__1_, s_r_14__0_ }),
    .c_i(c_r[14]),
    .prod_accum_i({ prod_accum_14__15_, prod_accum_14__14_, prod_accum_14__13_, prod_accum_14__12_, prod_accum_14__11_, prod_accum_14__10_, prod_accum_14__9_, prod_accum_14__8_, prod_accum_14__7_, prod_accum_14__6_, prod_accum_14__5_, prod_accum_14__4_, prod_accum_14__3_, prod_accum_14__2_, prod_accum_14__1_, prod_accum_14__0_ }),
    .a_o(a_r[511:480]),
    .b_o(b_r[511:480]),
    .s_o({ s_r_15__31_, s_r_15__30_, s_r_15__29_, s_r_15__28_, s_r_15__27_, s_r_15__26_, s_r_15__25_, s_r_15__24_, s_r_15__23_, s_r_15__22_, s_r_15__21_, s_r_15__20_, s_r_15__19_, s_r_15__18_, s_r_15__17_, s_r_15__16_, s_r_15__15_, s_r_15__14_, s_r_15__13_, s_r_15__12_, s_r_15__11_, s_r_15__10_, s_r_15__9_, s_r_15__8_, s_r_15__7_, s_r_15__6_, s_r_15__5_, s_r_15__4_, s_r_15__3_, s_r_15__2_, s_r_15__1_, s_r_15__0_ }),
    .c_o(c_r[15]),
    .prod_accum_o({ prod_accum_15__16_, prod_accum_15__15_, prod_accum_15__14_, prod_accum_15__13_, prod_accum_15__12_, prod_accum_15__11_, prod_accum_15__10_, prod_accum_15__9_, prod_accum_15__8_, prod_accum_15__7_, prod_accum_15__6_, prod_accum_15__5_, prod_accum_15__4_, prod_accum_15__3_, prod_accum_15__2_, prod_accum_15__1_, prod_accum_15__0_ })
  );


  bsg_mul_array_row_32_16_0
  genblk1_16__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[511:480]),
    .b_i(b_r[511:480]),
    .s_i({ s_r_15__31_, s_r_15__30_, s_r_15__29_, s_r_15__28_, s_r_15__27_, s_r_15__26_, s_r_15__25_, s_r_15__24_, s_r_15__23_, s_r_15__22_, s_r_15__21_, s_r_15__20_, s_r_15__19_, s_r_15__18_, s_r_15__17_, s_r_15__16_, s_r_15__15_, s_r_15__14_, s_r_15__13_, s_r_15__12_, s_r_15__11_, s_r_15__10_, s_r_15__9_, s_r_15__8_, s_r_15__7_, s_r_15__6_, s_r_15__5_, s_r_15__4_, s_r_15__3_, s_r_15__2_, s_r_15__1_, s_r_15__0_ }),
    .c_i(c_r[15]),
    .prod_accum_i({ prod_accum_15__16_, prod_accum_15__15_, prod_accum_15__14_, prod_accum_15__13_, prod_accum_15__12_, prod_accum_15__11_, prod_accum_15__10_, prod_accum_15__9_, prod_accum_15__8_, prod_accum_15__7_, prod_accum_15__6_, prod_accum_15__5_, prod_accum_15__4_, prod_accum_15__3_, prod_accum_15__2_, prod_accum_15__1_, prod_accum_15__0_ }),
    .a_o(a_r[543:512]),
    .b_o(b_r[543:512]),
    .s_o({ s_r_16__31_, s_r_16__30_, s_r_16__29_, s_r_16__28_, s_r_16__27_, s_r_16__26_, s_r_16__25_, s_r_16__24_, s_r_16__23_, s_r_16__22_, s_r_16__21_, s_r_16__20_, s_r_16__19_, s_r_16__18_, s_r_16__17_, s_r_16__16_, s_r_16__15_, s_r_16__14_, s_r_16__13_, s_r_16__12_, s_r_16__11_, s_r_16__10_, s_r_16__9_, s_r_16__8_, s_r_16__7_, s_r_16__6_, s_r_16__5_, s_r_16__4_, s_r_16__3_, s_r_16__2_, s_r_16__1_, s_r_16__0_ }),
    .c_o(c_r[16]),
    .prod_accum_o({ prod_accum_16__17_, prod_accum_16__16_, prod_accum_16__15_, prod_accum_16__14_, prod_accum_16__13_, prod_accum_16__12_, prod_accum_16__11_, prod_accum_16__10_, prod_accum_16__9_, prod_accum_16__8_, prod_accum_16__7_, prod_accum_16__6_, prod_accum_16__5_, prod_accum_16__4_, prod_accum_16__3_, prod_accum_16__2_, prod_accum_16__1_, prod_accum_16__0_ })
  );


  bsg_mul_array_row_32_17_0
  genblk1_17__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[543:512]),
    .b_i(b_r[543:512]),
    .s_i({ s_r_16__31_, s_r_16__30_, s_r_16__29_, s_r_16__28_, s_r_16__27_, s_r_16__26_, s_r_16__25_, s_r_16__24_, s_r_16__23_, s_r_16__22_, s_r_16__21_, s_r_16__20_, s_r_16__19_, s_r_16__18_, s_r_16__17_, s_r_16__16_, s_r_16__15_, s_r_16__14_, s_r_16__13_, s_r_16__12_, s_r_16__11_, s_r_16__10_, s_r_16__9_, s_r_16__8_, s_r_16__7_, s_r_16__6_, s_r_16__5_, s_r_16__4_, s_r_16__3_, s_r_16__2_, s_r_16__1_, s_r_16__0_ }),
    .c_i(c_r[16]),
    .prod_accum_i({ prod_accum_16__17_, prod_accum_16__16_, prod_accum_16__15_, prod_accum_16__14_, prod_accum_16__13_, prod_accum_16__12_, prod_accum_16__11_, prod_accum_16__10_, prod_accum_16__9_, prod_accum_16__8_, prod_accum_16__7_, prod_accum_16__6_, prod_accum_16__5_, prod_accum_16__4_, prod_accum_16__3_, prod_accum_16__2_, prod_accum_16__1_, prod_accum_16__0_ }),
    .a_o(a_r[575:544]),
    .b_o(b_r[575:544]),
    .s_o({ s_r_17__31_, s_r_17__30_, s_r_17__29_, s_r_17__28_, s_r_17__27_, s_r_17__26_, s_r_17__25_, s_r_17__24_, s_r_17__23_, s_r_17__22_, s_r_17__21_, s_r_17__20_, s_r_17__19_, s_r_17__18_, s_r_17__17_, s_r_17__16_, s_r_17__15_, s_r_17__14_, s_r_17__13_, s_r_17__12_, s_r_17__11_, s_r_17__10_, s_r_17__9_, s_r_17__8_, s_r_17__7_, s_r_17__6_, s_r_17__5_, s_r_17__4_, s_r_17__3_, s_r_17__2_, s_r_17__1_, s_r_17__0_ }),
    .c_o(c_r[17]),
    .prod_accum_o({ prod_accum_17__18_, prod_accum_17__17_, prod_accum_17__16_, prod_accum_17__15_, prod_accum_17__14_, prod_accum_17__13_, prod_accum_17__12_, prod_accum_17__11_, prod_accum_17__10_, prod_accum_17__9_, prod_accum_17__8_, prod_accum_17__7_, prod_accum_17__6_, prod_accum_17__5_, prod_accum_17__4_, prod_accum_17__3_, prod_accum_17__2_, prod_accum_17__1_, prod_accum_17__0_ })
  );


  bsg_mul_array_row_32_18_0
  genblk1_18__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[575:544]),
    .b_i(b_r[575:544]),
    .s_i({ s_r_17__31_, s_r_17__30_, s_r_17__29_, s_r_17__28_, s_r_17__27_, s_r_17__26_, s_r_17__25_, s_r_17__24_, s_r_17__23_, s_r_17__22_, s_r_17__21_, s_r_17__20_, s_r_17__19_, s_r_17__18_, s_r_17__17_, s_r_17__16_, s_r_17__15_, s_r_17__14_, s_r_17__13_, s_r_17__12_, s_r_17__11_, s_r_17__10_, s_r_17__9_, s_r_17__8_, s_r_17__7_, s_r_17__6_, s_r_17__5_, s_r_17__4_, s_r_17__3_, s_r_17__2_, s_r_17__1_, s_r_17__0_ }),
    .c_i(c_r[17]),
    .prod_accum_i({ prod_accum_17__18_, prod_accum_17__17_, prod_accum_17__16_, prod_accum_17__15_, prod_accum_17__14_, prod_accum_17__13_, prod_accum_17__12_, prod_accum_17__11_, prod_accum_17__10_, prod_accum_17__9_, prod_accum_17__8_, prod_accum_17__7_, prod_accum_17__6_, prod_accum_17__5_, prod_accum_17__4_, prod_accum_17__3_, prod_accum_17__2_, prod_accum_17__1_, prod_accum_17__0_ }),
    .a_o(a_r[607:576]),
    .b_o(b_r[607:576]),
    .s_o({ s_r_18__31_, s_r_18__30_, s_r_18__29_, s_r_18__28_, s_r_18__27_, s_r_18__26_, s_r_18__25_, s_r_18__24_, s_r_18__23_, s_r_18__22_, s_r_18__21_, s_r_18__20_, s_r_18__19_, s_r_18__18_, s_r_18__17_, s_r_18__16_, s_r_18__15_, s_r_18__14_, s_r_18__13_, s_r_18__12_, s_r_18__11_, s_r_18__10_, s_r_18__9_, s_r_18__8_, s_r_18__7_, s_r_18__6_, s_r_18__5_, s_r_18__4_, s_r_18__3_, s_r_18__2_, s_r_18__1_, s_r_18__0_ }),
    .c_o(c_r[18]),
    .prod_accum_o({ prod_accum_18__19_, prod_accum_18__18_, prod_accum_18__17_, prod_accum_18__16_, prod_accum_18__15_, prod_accum_18__14_, prod_accum_18__13_, prod_accum_18__12_, prod_accum_18__11_, prod_accum_18__10_, prod_accum_18__9_, prod_accum_18__8_, prod_accum_18__7_, prod_accum_18__6_, prod_accum_18__5_, prod_accum_18__4_, prod_accum_18__3_, prod_accum_18__2_, prod_accum_18__1_, prod_accum_18__0_ })
  );


  bsg_mul_array_row_32_19_0
  genblk1_19__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[607:576]),
    .b_i(b_r[607:576]),
    .s_i({ s_r_18__31_, s_r_18__30_, s_r_18__29_, s_r_18__28_, s_r_18__27_, s_r_18__26_, s_r_18__25_, s_r_18__24_, s_r_18__23_, s_r_18__22_, s_r_18__21_, s_r_18__20_, s_r_18__19_, s_r_18__18_, s_r_18__17_, s_r_18__16_, s_r_18__15_, s_r_18__14_, s_r_18__13_, s_r_18__12_, s_r_18__11_, s_r_18__10_, s_r_18__9_, s_r_18__8_, s_r_18__7_, s_r_18__6_, s_r_18__5_, s_r_18__4_, s_r_18__3_, s_r_18__2_, s_r_18__1_, s_r_18__0_ }),
    .c_i(c_r[18]),
    .prod_accum_i({ prod_accum_18__19_, prod_accum_18__18_, prod_accum_18__17_, prod_accum_18__16_, prod_accum_18__15_, prod_accum_18__14_, prod_accum_18__13_, prod_accum_18__12_, prod_accum_18__11_, prod_accum_18__10_, prod_accum_18__9_, prod_accum_18__8_, prod_accum_18__7_, prod_accum_18__6_, prod_accum_18__5_, prod_accum_18__4_, prod_accum_18__3_, prod_accum_18__2_, prod_accum_18__1_, prod_accum_18__0_ }),
    .a_o(a_r[639:608]),
    .b_o(b_r[639:608]),
    .s_o({ s_r_19__31_, s_r_19__30_, s_r_19__29_, s_r_19__28_, s_r_19__27_, s_r_19__26_, s_r_19__25_, s_r_19__24_, s_r_19__23_, s_r_19__22_, s_r_19__21_, s_r_19__20_, s_r_19__19_, s_r_19__18_, s_r_19__17_, s_r_19__16_, s_r_19__15_, s_r_19__14_, s_r_19__13_, s_r_19__12_, s_r_19__11_, s_r_19__10_, s_r_19__9_, s_r_19__8_, s_r_19__7_, s_r_19__6_, s_r_19__5_, s_r_19__4_, s_r_19__3_, s_r_19__2_, s_r_19__1_, s_r_19__0_ }),
    .c_o(c_r[19]),
    .prod_accum_o({ prod_accum_19__20_, prod_accum_19__19_, prod_accum_19__18_, prod_accum_19__17_, prod_accum_19__16_, prod_accum_19__15_, prod_accum_19__14_, prod_accum_19__13_, prod_accum_19__12_, prod_accum_19__11_, prod_accum_19__10_, prod_accum_19__9_, prod_accum_19__8_, prod_accum_19__7_, prod_accum_19__6_, prod_accum_19__5_, prod_accum_19__4_, prod_accum_19__3_, prod_accum_19__2_, prod_accum_19__1_, prod_accum_19__0_ })
  );


  bsg_mul_array_row_32_20_0
  genblk1_20__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[639:608]),
    .b_i(b_r[639:608]),
    .s_i({ s_r_19__31_, s_r_19__30_, s_r_19__29_, s_r_19__28_, s_r_19__27_, s_r_19__26_, s_r_19__25_, s_r_19__24_, s_r_19__23_, s_r_19__22_, s_r_19__21_, s_r_19__20_, s_r_19__19_, s_r_19__18_, s_r_19__17_, s_r_19__16_, s_r_19__15_, s_r_19__14_, s_r_19__13_, s_r_19__12_, s_r_19__11_, s_r_19__10_, s_r_19__9_, s_r_19__8_, s_r_19__7_, s_r_19__6_, s_r_19__5_, s_r_19__4_, s_r_19__3_, s_r_19__2_, s_r_19__1_, s_r_19__0_ }),
    .c_i(c_r[19]),
    .prod_accum_i({ prod_accum_19__20_, prod_accum_19__19_, prod_accum_19__18_, prod_accum_19__17_, prod_accum_19__16_, prod_accum_19__15_, prod_accum_19__14_, prod_accum_19__13_, prod_accum_19__12_, prod_accum_19__11_, prod_accum_19__10_, prod_accum_19__9_, prod_accum_19__8_, prod_accum_19__7_, prod_accum_19__6_, prod_accum_19__5_, prod_accum_19__4_, prod_accum_19__3_, prod_accum_19__2_, prod_accum_19__1_, prod_accum_19__0_ }),
    .a_o(a_r[671:640]),
    .b_o(b_r[671:640]),
    .s_o({ s_r_20__31_, s_r_20__30_, s_r_20__29_, s_r_20__28_, s_r_20__27_, s_r_20__26_, s_r_20__25_, s_r_20__24_, s_r_20__23_, s_r_20__22_, s_r_20__21_, s_r_20__20_, s_r_20__19_, s_r_20__18_, s_r_20__17_, s_r_20__16_, s_r_20__15_, s_r_20__14_, s_r_20__13_, s_r_20__12_, s_r_20__11_, s_r_20__10_, s_r_20__9_, s_r_20__8_, s_r_20__7_, s_r_20__6_, s_r_20__5_, s_r_20__4_, s_r_20__3_, s_r_20__2_, s_r_20__1_, s_r_20__0_ }),
    .c_o(c_r[20]),
    .prod_accum_o({ prod_accum_20__21_, prod_accum_20__20_, prod_accum_20__19_, prod_accum_20__18_, prod_accum_20__17_, prod_accum_20__16_, prod_accum_20__15_, prod_accum_20__14_, prod_accum_20__13_, prod_accum_20__12_, prod_accum_20__11_, prod_accum_20__10_, prod_accum_20__9_, prod_accum_20__8_, prod_accum_20__7_, prod_accum_20__6_, prod_accum_20__5_, prod_accum_20__4_, prod_accum_20__3_, prod_accum_20__2_, prod_accum_20__1_, prod_accum_20__0_ })
  );


  bsg_mul_array_row_32_21_0
  genblk1_21__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[671:640]),
    .b_i(b_r[671:640]),
    .s_i({ s_r_20__31_, s_r_20__30_, s_r_20__29_, s_r_20__28_, s_r_20__27_, s_r_20__26_, s_r_20__25_, s_r_20__24_, s_r_20__23_, s_r_20__22_, s_r_20__21_, s_r_20__20_, s_r_20__19_, s_r_20__18_, s_r_20__17_, s_r_20__16_, s_r_20__15_, s_r_20__14_, s_r_20__13_, s_r_20__12_, s_r_20__11_, s_r_20__10_, s_r_20__9_, s_r_20__8_, s_r_20__7_, s_r_20__6_, s_r_20__5_, s_r_20__4_, s_r_20__3_, s_r_20__2_, s_r_20__1_, s_r_20__0_ }),
    .c_i(c_r[20]),
    .prod_accum_i({ prod_accum_20__21_, prod_accum_20__20_, prod_accum_20__19_, prod_accum_20__18_, prod_accum_20__17_, prod_accum_20__16_, prod_accum_20__15_, prod_accum_20__14_, prod_accum_20__13_, prod_accum_20__12_, prod_accum_20__11_, prod_accum_20__10_, prod_accum_20__9_, prod_accum_20__8_, prod_accum_20__7_, prod_accum_20__6_, prod_accum_20__5_, prod_accum_20__4_, prod_accum_20__3_, prod_accum_20__2_, prod_accum_20__1_, prod_accum_20__0_ }),
    .a_o(a_r[703:672]),
    .b_o(b_r[703:672]),
    .s_o({ s_r_21__31_, s_r_21__30_, s_r_21__29_, s_r_21__28_, s_r_21__27_, s_r_21__26_, s_r_21__25_, s_r_21__24_, s_r_21__23_, s_r_21__22_, s_r_21__21_, s_r_21__20_, s_r_21__19_, s_r_21__18_, s_r_21__17_, s_r_21__16_, s_r_21__15_, s_r_21__14_, s_r_21__13_, s_r_21__12_, s_r_21__11_, s_r_21__10_, s_r_21__9_, s_r_21__8_, s_r_21__7_, s_r_21__6_, s_r_21__5_, s_r_21__4_, s_r_21__3_, s_r_21__2_, s_r_21__1_, s_r_21__0_ }),
    .c_o(c_r[21]),
    .prod_accum_o({ prod_accum_21__22_, prod_accum_21__21_, prod_accum_21__20_, prod_accum_21__19_, prod_accum_21__18_, prod_accum_21__17_, prod_accum_21__16_, prod_accum_21__15_, prod_accum_21__14_, prod_accum_21__13_, prod_accum_21__12_, prod_accum_21__11_, prod_accum_21__10_, prod_accum_21__9_, prod_accum_21__8_, prod_accum_21__7_, prod_accum_21__6_, prod_accum_21__5_, prod_accum_21__4_, prod_accum_21__3_, prod_accum_21__2_, prod_accum_21__1_, prod_accum_21__0_ })
  );


  bsg_mul_array_row_32_22_0
  genblk1_22__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[703:672]),
    .b_i(b_r[703:672]),
    .s_i({ s_r_21__31_, s_r_21__30_, s_r_21__29_, s_r_21__28_, s_r_21__27_, s_r_21__26_, s_r_21__25_, s_r_21__24_, s_r_21__23_, s_r_21__22_, s_r_21__21_, s_r_21__20_, s_r_21__19_, s_r_21__18_, s_r_21__17_, s_r_21__16_, s_r_21__15_, s_r_21__14_, s_r_21__13_, s_r_21__12_, s_r_21__11_, s_r_21__10_, s_r_21__9_, s_r_21__8_, s_r_21__7_, s_r_21__6_, s_r_21__5_, s_r_21__4_, s_r_21__3_, s_r_21__2_, s_r_21__1_, s_r_21__0_ }),
    .c_i(c_r[21]),
    .prod_accum_i({ prod_accum_21__22_, prod_accum_21__21_, prod_accum_21__20_, prod_accum_21__19_, prod_accum_21__18_, prod_accum_21__17_, prod_accum_21__16_, prod_accum_21__15_, prod_accum_21__14_, prod_accum_21__13_, prod_accum_21__12_, prod_accum_21__11_, prod_accum_21__10_, prod_accum_21__9_, prod_accum_21__8_, prod_accum_21__7_, prod_accum_21__6_, prod_accum_21__5_, prod_accum_21__4_, prod_accum_21__3_, prod_accum_21__2_, prod_accum_21__1_, prod_accum_21__0_ }),
    .a_o(a_r[735:704]),
    .b_o(b_r[735:704]),
    .s_o({ s_r_22__31_, s_r_22__30_, s_r_22__29_, s_r_22__28_, s_r_22__27_, s_r_22__26_, s_r_22__25_, s_r_22__24_, s_r_22__23_, s_r_22__22_, s_r_22__21_, s_r_22__20_, s_r_22__19_, s_r_22__18_, s_r_22__17_, s_r_22__16_, s_r_22__15_, s_r_22__14_, s_r_22__13_, s_r_22__12_, s_r_22__11_, s_r_22__10_, s_r_22__9_, s_r_22__8_, s_r_22__7_, s_r_22__6_, s_r_22__5_, s_r_22__4_, s_r_22__3_, s_r_22__2_, s_r_22__1_, s_r_22__0_ }),
    .c_o(c_r[22]),
    .prod_accum_o({ prod_accum_22__23_, prod_accum_22__22_, prod_accum_22__21_, prod_accum_22__20_, prod_accum_22__19_, prod_accum_22__18_, prod_accum_22__17_, prod_accum_22__16_, prod_accum_22__15_, prod_accum_22__14_, prod_accum_22__13_, prod_accum_22__12_, prod_accum_22__11_, prod_accum_22__10_, prod_accum_22__9_, prod_accum_22__8_, prod_accum_22__7_, prod_accum_22__6_, prod_accum_22__5_, prod_accum_22__4_, prod_accum_22__3_, prod_accum_22__2_, prod_accum_22__1_, prod_accum_22__0_ })
  );


  bsg_mul_array_row_32_23_1
  genblk1_23__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[735:704]),
    .b_i(b_r[735:704]),
    .s_i({ s_r_22__31_, s_r_22__30_, s_r_22__29_, s_r_22__28_, s_r_22__27_, s_r_22__26_, s_r_22__25_, s_r_22__24_, s_r_22__23_, s_r_22__22_, s_r_22__21_, s_r_22__20_, s_r_22__19_, s_r_22__18_, s_r_22__17_, s_r_22__16_, s_r_22__15_, s_r_22__14_, s_r_22__13_, s_r_22__12_, s_r_22__11_, s_r_22__10_, s_r_22__9_, s_r_22__8_, s_r_22__7_, s_r_22__6_, s_r_22__5_, s_r_22__4_, s_r_22__3_, s_r_22__2_, s_r_22__1_, s_r_22__0_ }),
    .c_i(c_r[22]),
    .prod_accum_i({ prod_accum_22__23_, prod_accum_22__22_, prod_accum_22__21_, prod_accum_22__20_, prod_accum_22__19_, prod_accum_22__18_, prod_accum_22__17_, prod_accum_22__16_, prod_accum_22__15_, prod_accum_22__14_, prod_accum_22__13_, prod_accum_22__12_, prod_accum_22__11_, prod_accum_22__10_, prod_accum_22__9_, prod_accum_22__8_, prod_accum_22__7_, prod_accum_22__6_, prod_accum_22__5_, prod_accum_22__4_, prod_accum_22__3_, prod_accum_22__2_, prod_accum_22__1_, prod_accum_22__0_ }),
    .a_o(a_r[767:736]),
    .b_o(b_r[767:736]),
    .s_o({ s_r_23__31_, s_r_23__30_, s_r_23__29_, s_r_23__28_, s_r_23__27_, s_r_23__26_, s_r_23__25_, s_r_23__24_, s_r_23__23_, s_r_23__22_, s_r_23__21_, s_r_23__20_, s_r_23__19_, s_r_23__18_, s_r_23__17_, s_r_23__16_, s_r_23__15_, s_r_23__14_, s_r_23__13_, s_r_23__12_, s_r_23__11_, s_r_23__10_, s_r_23__9_, s_r_23__8_, s_r_23__7_, s_r_23__6_, s_r_23__5_, s_r_23__4_, s_r_23__3_, s_r_23__2_, s_r_23__1_, s_r_23__0_ }),
    .c_o(c_r[23]),
    .prod_accum_o({ prod_accum_23__24_, prod_accum_23__23_, prod_accum_23__22_, prod_accum_23__21_, prod_accum_23__20_, prod_accum_23__19_, prod_accum_23__18_, prod_accum_23__17_, prod_accum_23__16_, prod_accum_23__15_, prod_accum_23__14_, prod_accum_23__13_, prod_accum_23__12_, prod_accum_23__11_, prod_accum_23__10_, prod_accum_23__9_, prod_accum_23__8_, prod_accum_23__7_, prod_accum_23__6_, prod_accum_23__5_, prod_accum_23__4_, prod_accum_23__3_, prod_accum_23__2_, prod_accum_23__1_, prod_accum_23__0_ })
  );


  bsg_mul_array_row_32_24_0
  genblk1_24__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[767:736]),
    .b_i(b_r[767:736]),
    .s_i({ s_r_23__31_, s_r_23__30_, s_r_23__29_, s_r_23__28_, s_r_23__27_, s_r_23__26_, s_r_23__25_, s_r_23__24_, s_r_23__23_, s_r_23__22_, s_r_23__21_, s_r_23__20_, s_r_23__19_, s_r_23__18_, s_r_23__17_, s_r_23__16_, s_r_23__15_, s_r_23__14_, s_r_23__13_, s_r_23__12_, s_r_23__11_, s_r_23__10_, s_r_23__9_, s_r_23__8_, s_r_23__7_, s_r_23__6_, s_r_23__5_, s_r_23__4_, s_r_23__3_, s_r_23__2_, s_r_23__1_, s_r_23__0_ }),
    .c_i(c_r[23]),
    .prod_accum_i({ prod_accum_23__24_, prod_accum_23__23_, prod_accum_23__22_, prod_accum_23__21_, prod_accum_23__20_, prod_accum_23__19_, prod_accum_23__18_, prod_accum_23__17_, prod_accum_23__16_, prod_accum_23__15_, prod_accum_23__14_, prod_accum_23__13_, prod_accum_23__12_, prod_accum_23__11_, prod_accum_23__10_, prod_accum_23__9_, prod_accum_23__8_, prod_accum_23__7_, prod_accum_23__6_, prod_accum_23__5_, prod_accum_23__4_, prod_accum_23__3_, prod_accum_23__2_, prod_accum_23__1_, prod_accum_23__0_ }),
    .a_o(a_r[799:768]),
    .b_o(b_r[799:768]),
    .s_o({ s_r_24__31_, s_r_24__30_, s_r_24__29_, s_r_24__28_, s_r_24__27_, s_r_24__26_, s_r_24__25_, s_r_24__24_, s_r_24__23_, s_r_24__22_, s_r_24__21_, s_r_24__20_, s_r_24__19_, s_r_24__18_, s_r_24__17_, s_r_24__16_, s_r_24__15_, s_r_24__14_, s_r_24__13_, s_r_24__12_, s_r_24__11_, s_r_24__10_, s_r_24__9_, s_r_24__8_, s_r_24__7_, s_r_24__6_, s_r_24__5_, s_r_24__4_, s_r_24__3_, s_r_24__2_, s_r_24__1_, s_r_24__0_ }),
    .c_o(c_r[24]),
    .prod_accum_o({ prod_accum_24__25_, prod_accum_24__24_, prod_accum_24__23_, prod_accum_24__22_, prod_accum_24__21_, prod_accum_24__20_, prod_accum_24__19_, prod_accum_24__18_, prod_accum_24__17_, prod_accum_24__16_, prod_accum_24__15_, prod_accum_24__14_, prod_accum_24__13_, prod_accum_24__12_, prod_accum_24__11_, prod_accum_24__10_, prod_accum_24__9_, prod_accum_24__8_, prod_accum_24__7_, prod_accum_24__6_, prod_accum_24__5_, prod_accum_24__4_, prod_accum_24__3_, prod_accum_24__2_, prod_accum_24__1_, prod_accum_24__0_ })
  );


  bsg_mul_array_row_32_25_0
  genblk1_25__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[799:768]),
    .b_i(b_r[799:768]),
    .s_i({ s_r_24__31_, s_r_24__30_, s_r_24__29_, s_r_24__28_, s_r_24__27_, s_r_24__26_, s_r_24__25_, s_r_24__24_, s_r_24__23_, s_r_24__22_, s_r_24__21_, s_r_24__20_, s_r_24__19_, s_r_24__18_, s_r_24__17_, s_r_24__16_, s_r_24__15_, s_r_24__14_, s_r_24__13_, s_r_24__12_, s_r_24__11_, s_r_24__10_, s_r_24__9_, s_r_24__8_, s_r_24__7_, s_r_24__6_, s_r_24__5_, s_r_24__4_, s_r_24__3_, s_r_24__2_, s_r_24__1_, s_r_24__0_ }),
    .c_i(c_r[24]),
    .prod_accum_i({ prod_accum_24__25_, prod_accum_24__24_, prod_accum_24__23_, prod_accum_24__22_, prod_accum_24__21_, prod_accum_24__20_, prod_accum_24__19_, prod_accum_24__18_, prod_accum_24__17_, prod_accum_24__16_, prod_accum_24__15_, prod_accum_24__14_, prod_accum_24__13_, prod_accum_24__12_, prod_accum_24__11_, prod_accum_24__10_, prod_accum_24__9_, prod_accum_24__8_, prod_accum_24__7_, prod_accum_24__6_, prod_accum_24__5_, prod_accum_24__4_, prod_accum_24__3_, prod_accum_24__2_, prod_accum_24__1_, prod_accum_24__0_ }),
    .a_o(a_r[831:800]),
    .b_o(b_r[831:800]),
    .s_o({ s_r_25__31_, s_r_25__30_, s_r_25__29_, s_r_25__28_, s_r_25__27_, s_r_25__26_, s_r_25__25_, s_r_25__24_, s_r_25__23_, s_r_25__22_, s_r_25__21_, s_r_25__20_, s_r_25__19_, s_r_25__18_, s_r_25__17_, s_r_25__16_, s_r_25__15_, s_r_25__14_, s_r_25__13_, s_r_25__12_, s_r_25__11_, s_r_25__10_, s_r_25__9_, s_r_25__8_, s_r_25__7_, s_r_25__6_, s_r_25__5_, s_r_25__4_, s_r_25__3_, s_r_25__2_, s_r_25__1_, s_r_25__0_ }),
    .c_o(c_r[25]),
    .prod_accum_o({ prod_accum_25__26_, prod_accum_25__25_, prod_accum_25__24_, prod_accum_25__23_, prod_accum_25__22_, prod_accum_25__21_, prod_accum_25__20_, prod_accum_25__19_, prod_accum_25__18_, prod_accum_25__17_, prod_accum_25__16_, prod_accum_25__15_, prod_accum_25__14_, prod_accum_25__13_, prod_accum_25__12_, prod_accum_25__11_, prod_accum_25__10_, prod_accum_25__9_, prod_accum_25__8_, prod_accum_25__7_, prod_accum_25__6_, prod_accum_25__5_, prod_accum_25__4_, prod_accum_25__3_, prod_accum_25__2_, prod_accum_25__1_, prod_accum_25__0_ })
  );


  bsg_mul_array_row_32_26_0
  genblk1_26__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[831:800]),
    .b_i(b_r[831:800]),
    .s_i({ s_r_25__31_, s_r_25__30_, s_r_25__29_, s_r_25__28_, s_r_25__27_, s_r_25__26_, s_r_25__25_, s_r_25__24_, s_r_25__23_, s_r_25__22_, s_r_25__21_, s_r_25__20_, s_r_25__19_, s_r_25__18_, s_r_25__17_, s_r_25__16_, s_r_25__15_, s_r_25__14_, s_r_25__13_, s_r_25__12_, s_r_25__11_, s_r_25__10_, s_r_25__9_, s_r_25__8_, s_r_25__7_, s_r_25__6_, s_r_25__5_, s_r_25__4_, s_r_25__3_, s_r_25__2_, s_r_25__1_, s_r_25__0_ }),
    .c_i(c_r[25]),
    .prod_accum_i({ prod_accum_25__26_, prod_accum_25__25_, prod_accum_25__24_, prod_accum_25__23_, prod_accum_25__22_, prod_accum_25__21_, prod_accum_25__20_, prod_accum_25__19_, prod_accum_25__18_, prod_accum_25__17_, prod_accum_25__16_, prod_accum_25__15_, prod_accum_25__14_, prod_accum_25__13_, prod_accum_25__12_, prod_accum_25__11_, prod_accum_25__10_, prod_accum_25__9_, prod_accum_25__8_, prod_accum_25__7_, prod_accum_25__6_, prod_accum_25__5_, prod_accum_25__4_, prod_accum_25__3_, prod_accum_25__2_, prod_accum_25__1_, prod_accum_25__0_ }),
    .a_o(a_r[863:832]),
    .b_o(b_r[863:832]),
    .s_o({ s_r_26__31_, s_r_26__30_, s_r_26__29_, s_r_26__28_, s_r_26__27_, s_r_26__26_, s_r_26__25_, s_r_26__24_, s_r_26__23_, s_r_26__22_, s_r_26__21_, s_r_26__20_, s_r_26__19_, s_r_26__18_, s_r_26__17_, s_r_26__16_, s_r_26__15_, s_r_26__14_, s_r_26__13_, s_r_26__12_, s_r_26__11_, s_r_26__10_, s_r_26__9_, s_r_26__8_, s_r_26__7_, s_r_26__6_, s_r_26__5_, s_r_26__4_, s_r_26__3_, s_r_26__2_, s_r_26__1_, s_r_26__0_ }),
    .c_o(c_r[26]),
    .prod_accum_o({ prod_accum_26__27_, prod_accum_26__26_, prod_accum_26__25_, prod_accum_26__24_, prod_accum_26__23_, prod_accum_26__22_, prod_accum_26__21_, prod_accum_26__20_, prod_accum_26__19_, prod_accum_26__18_, prod_accum_26__17_, prod_accum_26__16_, prod_accum_26__15_, prod_accum_26__14_, prod_accum_26__13_, prod_accum_26__12_, prod_accum_26__11_, prod_accum_26__10_, prod_accum_26__9_, prod_accum_26__8_, prod_accum_26__7_, prod_accum_26__6_, prod_accum_26__5_, prod_accum_26__4_, prod_accum_26__3_, prod_accum_26__2_, prod_accum_26__1_, prod_accum_26__0_ })
  );


  bsg_mul_array_row_32_27_0
  genblk1_27__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[863:832]),
    .b_i(b_r[863:832]),
    .s_i({ s_r_26__31_, s_r_26__30_, s_r_26__29_, s_r_26__28_, s_r_26__27_, s_r_26__26_, s_r_26__25_, s_r_26__24_, s_r_26__23_, s_r_26__22_, s_r_26__21_, s_r_26__20_, s_r_26__19_, s_r_26__18_, s_r_26__17_, s_r_26__16_, s_r_26__15_, s_r_26__14_, s_r_26__13_, s_r_26__12_, s_r_26__11_, s_r_26__10_, s_r_26__9_, s_r_26__8_, s_r_26__7_, s_r_26__6_, s_r_26__5_, s_r_26__4_, s_r_26__3_, s_r_26__2_, s_r_26__1_, s_r_26__0_ }),
    .c_i(c_r[26]),
    .prod_accum_i({ prod_accum_26__27_, prod_accum_26__26_, prod_accum_26__25_, prod_accum_26__24_, prod_accum_26__23_, prod_accum_26__22_, prod_accum_26__21_, prod_accum_26__20_, prod_accum_26__19_, prod_accum_26__18_, prod_accum_26__17_, prod_accum_26__16_, prod_accum_26__15_, prod_accum_26__14_, prod_accum_26__13_, prod_accum_26__12_, prod_accum_26__11_, prod_accum_26__10_, prod_accum_26__9_, prod_accum_26__8_, prod_accum_26__7_, prod_accum_26__6_, prod_accum_26__5_, prod_accum_26__4_, prod_accum_26__3_, prod_accum_26__2_, prod_accum_26__1_, prod_accum_26__0_ }),
    .a_o(a_r[895:864]),
    .b_o(b_r[895:864]),
    .s_o({ s_r_27__31_, s_r_27__30_, s_r_27__29_, s_r_27__28_, s_r_27__27_, s_r_27__26_, s_r_27__25_, s_r_27__24_, s_r_27__23_, s_r_27__22_, s_r_27__21_, s_r_27__20_, s_r_27__19_, s_r_27__18_, s_r_27__17_, s_r_27__16_, s_r_27__15_, s_r_27__14_, s_r_27__13_, s_r_27__12_, s_r_27__11_, s_r_27__10_, s_r_27__9_, s_r_27__8_, s_r_27__7_, s_r_27__6_, s_r_27__5_, s_r_27__4_, s_r_27__3_, s_r_27__2_, s_r_27__1_, s_r_27__0_ }),
    .c_o(c_r[27]),
    .prod_accum_o({ prod_accum_27__28_, prod_accum_27__27_, prod_accum_27__26_, prod_accum_27__25_, prod_accum_27__24_, prod_accum_27__23_, prod_accum_27__22_, prod_accum_27__21_, prod_accum_27__20_, prod_accum_27__19_, prod_accum_27__18_, prod_accum_27__17_, prod_accum_27__16_, prod_accum_27__15_, prod_accum_27__14_, prod_accum_27__13_, prod_accum_27__12_, prod_accum_27__11_, prod_accum_27__10_, prod_accum_27__9_, prod_accum_27__8_, prod_accum_27__7_, prod_accum_27__6_, prod_accum_27__5_, prod_accum_27__4_, prod_accum_27__3_, prod_accum_27__2_, prod_accum_27__1_, prod_accum_27__0_ })
  );


  bsg_mul_array_row_32_28_0
  genblk1_28__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[895:864]),
    .b_i(b_r[895:864]),
    .s_i({ s_r_27__31_, s_r_27__30_, s_r_27__29_, s_r_27__28_, s_r_27__27_, s_r_27__26_, s_r_27__25_, s_r_27__24_, s_r_27__23_, s_r_27__22_, s_r_27__21_, s_r_27__20_, s_r_27__19_, s_r_27__18_, s_r_27__17_, s_r_27__16_, s_r_27__15_, s_r_27__14_, s_r_27__13_, s_r_27__12_, s_r_27__11_, s_r_27__10_, s_r_27__9_, s_r_27__8_, s_r_27__7_, s_r_27__6_, s_r_27__5_, s_r_27__4_, s_r_27__3_, s_r_27__2_, s_r_27__1_, s_r_27__0_ }),
    .c_i(c_r[27]),
    .prod_accum_i({ prod_accum_27__28_, prod_accum_27__27_, prod_accum_27__26_, prod_accum_27__25_, prod_accum_27__24_, prod_accum_27__23_, prod_accum_27__22_, prod_accum_27__21_, prod_accum_27__20_, prod_accum_27__19_, prod_accum_27__18_, prod_accum_27__17_, prod_accum_27__16_, prod_accum_27__15_, prod_accum_27__14_, prod_accum_27__13_, prod_accum_27__12_, prod_accum_27__11_, prod_accum_27__10_, prod_accum_27__9_, prod_accum_27__8_, prod_accum_27__7_, prod_accum_27__6_, prod_accum_27__5_, prod_accum_27__4_, prod_accum_27__3_, prod_accum_27__2_, prod_accum_27__1_, prod_accum_27__0_ }),
    .a_o(a_r[927:896]),
    .b_o(b_r[927:896]),
    .s_o({ s_r_28__31_, s_r_28__30_, s_r_28__29_, s_r_28__28_, s_r_28__27_, s_r_28__26_, s_r_28__25_, s_r_28__24_, s_r_28__23_, s_r_28__22_, s_r_28__21_, s_r_28__20_, s_r_28__19_, s_r_28__18_, s_r_28__17_, s_r_28__16_, s_r_28__15_, s_r_28__14_, s_r_28__13_, s_r_28__12_, s_r_28__11_, s_r_28__10_, s_r_28__9_, s_r_28__8_, s_r_28__7_, s_r_28__6_, s_r_28__5_, s_r_28__4_, s_r_28__3_, s_r_28__2_, s_r_28__1_, s_r_28__0_ }),
    .c_o(c_r[28]),
    .prod_accum_o({ prod_accum_28__29_, prod_accum_28__28_, prod_accum_28__27_, prod_accum_28__26_, prod_accum_28__25_, prod_accum_28__24_, prod_accum_28__23_, prod_accum_28__22_, prod_accum_28__21_, prod_accum_28__20_, prod_accum_28__19_, prod_accum_28__18_, prod_accum_28__17_, prod_accum_28__16_, prod_accum_28__15_, prod_accum_28__14_, prod_accum_28__13_, prod_accum_28__12_, prod_accum_28__11_, prod_accum_28__10_, prod_accum_28__9_, prod_accum_28__8_, prod_accum_28__7_, prod_accum_28__6_, prod_accum_28__5_, prod_accum_28__4_, prod_accum_28__3_, prod_accum_28__2_, prod_accum_28__1_, prod_accum_28__0_ })
  );


  bsg_mul_array_row_32_29_0
  genblk1_29__genblk1_mid_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[927:896]),
    .b_i(b_r[927:896]),
    .s_i({ s_r_28__31_, s_r_28__30_, s_r_28__29_, s_r_28__28_, s_r_28__27_, s_r_28__26_, s_r_28__25_, s_r_28__24_, s_r_28__23_, s_r_28__22_, s_r_28__21_, s_r_28__20_, s_r_28__19_, s_r_28__18_, s_r_28__17_, s_r_28__16_, s_r_28__15_, s_r_28__14_, s_r_28__13_, s_r_28__12_, s_r_28__11_, s_r_28__10_, s_r_28__9_, s_r_28__8_, s_r_28__7_, s_r_28__6_, s_r_28__5_, s_r_28__4_, s_r_28__3_, s_r_28__2_, s_r_28__1_, s_r_28__0_ }),
    .c_i(c_r[28]),
    .prod_accum_i({ prod_accum_28__29_, prod_accum_28__28_, prod_accum_28__27_, prod_accum_28__26_, prod_accum_28__25_, prod_accum_28__24_, prod_accum_28__23_, prod_accum_28__22_, prod_accum_28__21_, prod_accum_28__20_, prod_accum_28__19_, prod_accum_28__18_, prod_accum_28__17_, prod_accum_28__16_, prod_accum_28__15_, prod_accum_28__14_, prod_accum_28__13_, prod_accum_28__12_, prod_accum_28__11_, prod_accum_28__10_, prod_accum_28__9_, prod_accum_28__8_, prod_accum_28__7_, prod_accum_28__6_, prod_accum_28__5_, prod_accum_28__4_, prod_accum_28__3_, prod_accum_28__2_, prod_accum_28__1_, prod_accum_28__0_ }),
    .a_o(a_r[959:928]),
    .b_o(b_r[959:928]),
    .s_o({ s_r_29__31_, s_r_29__30_, s_r_29__29_, s_r_29__28_, s_r_29__27_, s_r_29__26_, s_r_29__25_, s_r_29__24_, s_r_29__23_, s_r_29__22_, s_r_29__21_, s_r_29__20_, s_r_29__19_, s_r_29__18_, s_r_29__17_, s_r_29__16_, s_r_29__15_, s_r_29__14_, s_r_29__13_, s_r_29__12_, s_r_29__11_, s_r_29__10_, s_r_29__9_, s_r_29__8_, s_r_29__7_, s_r_29__6_, s_r_29__5_, s_r_29__4_, s_r_29__3_, s_r_29__2_, s_r_29__1_, s_r_29__0_ }),
    .c_o(c_r[29]),
    .prod_accum_o({ prod_accum_29__30_, prod_accum_29__29_, prod_accum_29__28_, prod_accum_29__27_, prod_accum_29__26_, prod_accum_29__25_, prod_accum_29__24_, prod_accum_29__23_, prod_accum_29__22_, prod_accum_29__21_, prod_accum_29__20_, prod_accum_29__19_, prod_accum_29__18_, prod_accum_29__17_, prod_accum_29__16_, prod_accum_29__15_, prod_accum_29__14_, prod_accum_29__13_, prod_accum_29__12_, prod_accum_29__11_, prod_accum_29__10_, prod_accum_29__9_, prod_accum_29__8_, prod_accum_29__7_, prod_accum_29__6_, prod_accum_29__5_, prod_accum_29__4_, prod_accum_29__3_, prod_accum_29__2_, prod_accum_29__1_, prod_accum_29__0_ })
  );


  bsg_mul_array_row_32_30_0
  genblk1_30__genblk1_last_row
  (
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .a_i(a_r[959:928]),
    .b_i(b_r[959:928]),
    .s_i({ s_r_29__31_, s_r_29__30_, s_r_29__29_, s_r_29__28_, s_r_29__27_, s_r_29__26_, s_r_29__25_, s_r_29__24_, s_r_29__23_, s_r_29__22_, s_r_29__21_, s_r_29__20_, s_r_29__19_, s_r_29__18_, s_r_29__17_, s_r_29__16_, s_r_29__15_, s_r_29__14_, s_r_29__13_, s_r_29__12_, s_r_29__11_, s_r_29__10_, s_r_29__9_, s_r_29__8_, s_r_29__7_, s_r_29__6_, s_r_29__5_, s_r_29__4_, s_r_29__3_, s_r_29__2_, s_r_29__1_, s_r_29__0_ }),
    .c_i(c_r[29]),
    .prod_accum_i({ prod_accum_29__30_, prod_accum_29__29_, prod_accum_29__28_, prod_accum_29__27_, prod_accum_29__26_, prod_accum_29__25_, prod_accum_29__24_, prod_accum_29__23_, prod_accum_29__22_, prod_accum_29__21_, prod_accum_29__20_, prod_accum_29__19_, prod_accum_29__18_, prod_accum_29__17_, prod_accum_29__16_, prod_accum_29__15_, prod_accum_29__14_, prod_accum_29__13_, prod_accum_29__12_, prod_accum_29__11_, prod_accum_29__10_, prod_accum_29__9_, prod_accum_29__8_, prod_accum_29__7_, prod_accum_29__6_, prod_accum_29__5_, prod_accum_29__4_, prod_accum_29__3_, prod_accum_29__2_, prod_accum_29__1_, prod_accum_29__0_ }),
    .a_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32 }),
    .b_o({ SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52, SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54, SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56, SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58, SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60, SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62, SYNOPSYS_UNCONNECTED_63, SYNOPSYS_UNCONNECTED_64 }),
    .s_o(o[62:31]),
    .c_o(o[63]),
    .prod_accum_o({ prod_accum_30__31_, o[30:0] })
  );


endmodule

