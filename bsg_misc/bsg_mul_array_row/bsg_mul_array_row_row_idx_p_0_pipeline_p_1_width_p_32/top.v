

module top
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

  bsg_mul_array_row
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .s_i(s_i),
    .prod_accum_i(prod_accum_i),
    .a_o(a_o),
    .b_o(b_o),
    .s_o(s_o),
    .prod_accum_o(prod_accum_o),
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .c_i(c_i),
    .c_o(c_o)
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



module bsg_mul_array_row
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
  wire [31:0] a_o,b_o,s_o,pp,ps;
  wire [1:0] prod_accum_o;
  wire c_o,pc;
  reg prod_accum_o_1_sv2v_reg,prod_accum_o_0_sv2v_reg,a_o_31_sv2v_reg,a_o_30_sv2v_reg,
  a_o_29_sv2v_reg,a_o_28_sv2v_reg,a_o_27_sv2v_reg,a_o_26_sv2v_reg,a_o_25_sv2v_reg,
  a_o_24_sv2v_reg,a_o_23_sv2v_reg,a_o_22_sv2v_reg,a_o_21_sv2v_reg,a_o_20_sv2v_reg,
  a_o_19_sv2v_reg,a_o_18_sv2v_reg,a_o_17_sv2v_reg,a_o_16_sv2v_reg,a_o_15_sv2v_reg,
  a_o_14_sv2v_reg,a_o_13_sv2v_reg,a_o_12_sv2v_reg,a_o_11_sv2v_reg,a_o_10_sv2v_reg,
  a_o_9_sv2v_reg,a_o_8_sv2v_reg,a_o_7_sv2v_reg,a_o_6_sv2v_reg,a_o_5_sv2v_reg,
  a_o_4_sv2v_reg,a_o_3_sv2v_reg,a_o_2_sv2v_reg,a_o_1_sv2v_reg,a_o_0_sv2v_reg,
  b_o_31_sv2v_reg,b_o_30_sv2v_reg,b_o_29_sv2v_reg,b_o_28_sv2v_reg,b_o_27_sv2v_reg,
  b_o_26_sv2v_reg,b_o_25_sv2v_reg,b_o_24_sv2v_reg,b_o_23_sv2v_reg,b_o_22_sv2v_reg,
  b_o_21_sv2v_reg,b_o_20_sv2v_reg,b_o_19_sv2v_reg,b_o_18_sv2v_reg,b_o_17_sv2v_reg,
  b_o_16_sv2v_reg,b_o_15_sv2v_reg,b_o_14_sv2v_reg,b_o_13_sv2v_reg,b_o_12_sv2v_reg,
  b_o_11_sv2v_reg,b_o_10_sv2v_reg,b_o_9_sv2v_reg,b_o_8_sv2v_reg,b_o_7_sv2v_reg,
  b_o_6_sv2v_reg,b_o_5_sv2v_reg,b_o_4_sv2v_reg,b_o_3_sv2v_reg,b_o_2_sv2v_reg,b_o_1_sv2v_reg,
  b_o_0_sv2v_reg,s_o_31_sv2v_reg,s_o_30_sv2v_reg,s_o_29_sv2v_reg,s_o_28_sv2v_reg,
  s_o_27_sv2v_reg,s_o_26_sv2v_reg,s_o_25_sv2v_reg,s_o_24_sv2v_reg,s_o_23_sv2v_reg,
  s_o_22_sv2v_reg,s_o_21_sv2v_reg,s_o_20_sv2v_reg,s_o_19_sv2v_reg,s_o_18_sv2v_reg,
  s_o_17_sv2v_reg,s_o_16_sv2v_reg,s_o_15_sv2v_reg,s_o_14_sv2v_reg,s_o_13_sv2v_reg,
  s_o_12_sv2v_reg,s_o_11_sv2v_reg,s_o_10_sv2v_reg,s_o_9_sv2v_reg,s_o_8_sv2v_reg,
  s_o_7_sv2v_reg,s_o_6_sv2v_reg,s_o_5_sv2v_reg,s_o_4_sv2v_reg,s_o_3_sv2v_reg,
  s_o_2_sv2v_reg,s_o_1_sv2v_reg,s_o_0_sv2v_reg,c_o_sv2v_reg;
  assign prod_accum_o[1] = prod_accum_o_1_sv2v_reg;
  assign prod_accum_o[0] = prod_accum_o_0_sv2v_reg;
  assign a_o[31] = a_o_31_sv2v_reg;
  assign a_o[30] = a_o_30_sv2v_reg;
  assign a_o[29] = a_o_29_sv2v_reg;
  assign a_o[28] = a_o_28_sv2v_reg;
  assign a_o[27] = a_o_27_sv2v_reg;
  assign a_o[26] = a_o_26_sv2v_reg;
  assign a_o[25] = a_o_25_sv2v_reg;
  assign a_o[24] = a_o_24_sv2v_reg;
  assign a_o[23] = a_o_23_sv2v_reg;
  assign a_o[22] = a_o_22_sv2v_reg;
  assign a_o[21] = a_o_21_sv2v_reg;
  assign a_o[20] = a_o_20_sv2v_reg;
  assign a_o[19] = a_o_19_sv2v_reg;
  assign a_o[18] = a_o_18_sv2v_reg;
  assign a_o[17] = a_o_17_sv2v_reg;
  assign a_o[16] = a_o_16_sv2v_reg;
  assign a_o[15] = a_o_15_sv2v_reg;
  assign a_o[14] = a_o_14_sv2v_reg;
  assign a_o[13] = a_o_13_sv2v_reg;
  assign a_o[12] = a_o_12_sv2v_reg;
  assign a_o[11] = a_o_11_sv2v_reg;
  assign a_o[10] = a_o_10_sv2v_reg;
  assign a_o[9] = a_o_9_sv2v_reg;
  assign a_o[8] = a_o_8_sv2v_reg;
  assign a_o[7] = a_o_7_sv2v_reg;
  assign a_o[6] = a_o_6_sv2v_reg;
  assign a_o[5] = a_o_5_sv2v_reg;
  assign a_o[4] = a_o_4_sv2v_reg;
  assign a_o[3] = a_o_3_sv2v_reg;
  assign a_o[2] = a_o_2_sv2v_reg;
  assign a_o[1] = a_o_1_sv2v_reg;
  assign a_o[0] = a_o_0_sv2v_reg;
  assign b_o[31] = b_o_31_sv2v_reg;
  assign b_o[30] = b_o_30_sv2v_reg;
  assign b_o[29] = b_o_29_sv2v_reg;
  assign b_o[28] = b_o_28_sv2v_reg;
  assign b_o[27] = b_o_27_sv2v_reg;
  assign b_o[26] = b_o_26_sv2v_reg;
  assign b_o[25] = b_o_25_sv2v_reg;
  assign b_o[24] = b_o_24_sv2v_reg;
  assign b_o[23] = b_o_23_sv2v_reg;
  assign b_o[22] = b_o_22_sv2v_reg;
  assign b_o[21] = b_o_21_sv2v_reg;
  assign b_o[20] = b_o_20_sv2v_reg;
  assign b_o[19] = b_o_19_sv2v_reg;
  assign b_o[18] = b_o_18_sv2v_reg;
  assign b_o[17] = b_o_17_sv2v_reg;
  assign b_o[16] = b_o_16_sv2v_reg;
  assign b_o[15] = b_o_15_sv2v_reg;
  assign b_o[14] = b_o_14_sv2v_reg;
  assign b_o[13] = b_o_13_sv2v_reg;
  assign b_o[12] = b_o_12_sv2v_reg;
  assign b_o[11] = b_o_11_sv2v_reg;
  assign b_o[10] = b_o_10_sv2v_reg;
  assign b_o[9] = b_o_9_sv2v_reg;
  assign b_o[8] = b_o_8_sv2v_reg;
  assign b_o[7] = b_o_7_sv2v_reg;
  assign b_o[6] = b_o_6_sv2v_reg;
  assign b_o[5] = b_o_5_sv2v_reg;
  assign b_o[4] = b_o_4_sv2v_reg;
  assign b_o[3] = b_o_3_sv2v_reg;
  assign b_o[2] = b_o_2_sv2v_reg;
  assign b_o[1] = b_o_1_sv2v_reg;
  assign b_o[0] = b_o_0_sv2v_reg;
  assign s_o[31] = s_o_31_sv2v_reg;
  assign s_o[30] = s_o_30_sv2v_reg;
  assign s_o[29] = s_o_29_sv2v_reg;
  assign s_o[28] = s_o_28_sv2v_reg;
  assign s_o[27] = s_o_27_sv2v_reg;
  assign s_o[26] = s_o_26_sv2v_reg;
  assign s_o[25] = s_o_25_sv2v_reg;
  assign s_o[24] = s_o_24_sv2v_reg;
  assign s_o[23] = s_o_23_sv2v_reg;
  assign s_o[22] = s_o_22_sv2v_reg;
  assign s_o[21] = s_o_21_sv2v_reg;
  assign s_o[20] = s_o_20_sv2v_reg;
  assign s_o[19] = s_o_19_sv2v_reg;
  assign s_o[18] = s_o_18_sv2v_reg;
  assign s_o[17] = s_o_17_sv2v_reg;
  assign s_o[16] = s_o_16_sv2v_reg;
  assign s_o[15] = s_o_15_sv2v_reg;
  assign s_o[14] = s_o_14_sv2v_reg;
  assign s_o[13] = s_o_13_sv2v_reg;
  assign s_o[12] = s_o_12_sv2v_reg;
  assign s_o[11] = s_o_11_sv2v_reg;
  assign s_o[10] = s_o_10_sv2v_reg;
  assign s_o[9] = s_o_9_sv2v_reg;
  assign s_o[8] = s_o_8_sv2v_reg;
  assign s_o[7] = s_o_7_sv2v_reg;
  assign s_o[6] = s_o_6_sv2v_reg;
  assign s_o[5] = s_o_5_sv2v_reg;
  assign s_o[4] = s_o_4_sv2v_reg;
  assign s_o[3] = s_o_3_sv2v_reg;
  assign s_o[2] = s_o_2_sv2v_reg;
  assign s_o[1] = s_o_1_sv2v_reg;
  assign s_o[0] = s_o_0_sv2v_reg;
  assign c_o = c_o_sv2v_reg;

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
    .s_o(ps),
    .c_o(pc)
  );


  always @(posedge clk_i) begin
    if(rst_i) begin
      prod_accum_o_1_sv2v_reg <= 1'b0;
      prod_accum_o_0_sv2v_reg <= 1'b0;
      a_o_31_sv2v_reg <= 1'b0;
      a_o_30_sv2v_reg <= 1'b0;
      a_o_29_sv2v_reg <= 1'b0;
      a_o_28_sv2v_reg <= 1'b0;
      a_o_27_sv2v_reg <= 1'b0;
      a_o_26_sv2v_reg <= 1'b0;
      a_o_25_sv2v_reg <= 1'b0;
      a_o_24_sv2v_reg <= 1'b0;
      a_o_23_sv2v_reg <= 1'b0;
      a_o_22_sv2v_reg <= 1'b0;
      a_o_21_sv2v_reg <= 1'b0;
      a_o_20_sv2v_reg <= 1'b0;
      a_o_19_sv2v_reg <= 1'b0;
      a_o_18_sv2v_reg <= 1'b0;
      a_o_17_sv2v_reg <= 1'b0;
      a_o_16_sv2v_reg <= 1'b0;
      a_o_15_sv2v_reg <= 1'b0;
      a_o_14_sv2v_reg <= 1'b0;
      a_o_13_sv2v_reg <= 1'b0;
      a_o_12_sv2v_reg <= 1'b0;
      a_o_11_sv2v_reg <= 1'b0;
      a_o_10_sv2v_reg <= 1'b0;
      a_o_9_sv2v_reg <= 1'b0;
      a_o_8_sv2v_reg <= 1'b0;
      a_o_7_sv2v_reg <= 1'b0;
      a_o_6_sv2v_reg <= 1'b0;
      a_o_5_sv2v_reg <= 1'b0;
      a_o_4_sv2v_reg <= 1'b0;
      a_o_3_sv2v_reg <= 1'b0;
      a_o_2_sv2v_reg <= 1'b0;
      a_o_1_sv2v_reg <= 1'b0;
      a_o_0_sv2v_reg <= 1'b0;
      b_o_31_sv2v_reg <= 1'b0;
      b_o_30_sv2v_reg <= 1'b0;
      b_o_29_sv2v_reg <= 1'b0;
      b_o_28_sv2v_reg <= 1'b0;
      b_o_27_sv2v_reg <= 1'b0;
      b_o_26_sv2v_reg <= 1'b0;
      b_o_25_sv2v_reg <= 1'b0;
      b_o_24_sv2v_reg <= 1'b0;
      b_o_23_sv2v_reg <= 1'b0;
      b_o_22_sv2v_reg <= 1'b0;
      b_o_21_sv2v_reg <= 1'b0;
      b_o_20_sv2v_reg <= 1'b0;
      b_o_19_sv2v_reg <= 1'b0;
      b_o_18_sv2v_reg <= 1'b0;
      b_o_17_sv2v_reg <= 1'b0;
      b_o_16_sv2v_reg <= 1'b0;
      b_o_15_sv2v_reg <= 1'b0;
      b_o_14_sv2v_reg <= 1'b0;
      b_o_13_sv2v_reg <= 1'b0;
      b_o_12_sv2v_reg <= 1'b0;
      b_o_11_sv2v_reg <= 1'b0;
      b_o_10_sv2v_reg <= 1'b0;
      b_o_9_sv2v_reg <= 1'b0;
      b_o_8_sv2v_reg <= 1'b0;
      b_o_7_sv2v_reg <= 1'b0;
      b_o_6_sv2v_reg <= 1'b0;
      b_o_5_sv2v_reg <= 1'b0;
      b_o_4_sv2v_reg <= 1'b0;
      b_o_3_sv2v_reg <= 1'b0;
      b_o_2_sv2v_reg <= 1'b0;
      b_o_1_sv2v_reg <= 1'b0;
      b_o_0_sv2v_reg <= 1'b0;
      s_o_31_sv2v_reg <= 1'b0;
      s_o_30_sv2v_reg <= 1'b0;
      s_o_29_sv2v_reg <= 1'b0;
      s_o_28_sv2v_reg <= 1'b0;
      s_o_27_sv2v_reg <= 1'b0;
      s_o_26_sv2v_reg <= 1'b0;
      s_o_25_sv2v_reg <= 1'b0;
      s_o_24_sv2v_reg <= 1'b0;
      s_o_23_sv2v_reg <= 1'b0;
      s_o_22_sv2v_reg <= 1'b0;
      s_o_21_sv2v_reg <= 1'b0;
      s_o_20_sv2v_reg <= 1'b0;
      s_o_19_sv2v_reg <= 1'b0;
      s_o_18_sv2v_reg <= 1'b0;
      s_o_17_sv2v_reg <= 1'b0;
      s_o_16_sv2v_reg <= 1'b0;
      s_o_15_sv2v_reg <= 1'b0;
      s_o_14_sv2v_reg <= 1'b0;
      s_o_13_sv2v_reg <= 1'b0;
      s_o_12_sv2v_reg <= 1'b0;
      s_o_11_sv2v_reg <= 1'b0;
      s_o_10_sv2v_reg <= 1'b0;
      s_o_9_sv2v_reg <= 1'b0;
      s_o_8_sv2v_reg <= 1'b0;
      s_o_7_sv2v_reg <= 1'b0;
      s_o_6_sv2v_reg <= 1'b0;
      s_o_5_sv2v_reg <= 1'b0;
      s_o_4_sv2v_reg <= 1'b0;
      s_o_3_sv2v_reg <= 1'b0;
      s_o_2_sv2v_reg <= 1'b0;
      s_o_1_sv2v_reg <= 1'b0;
      s_o_0_sv2v_reg <= 1'b0;
      c_o_sv2v_reg <= 1'b0;
    end else if(v_i) begin
      prod_accum_o_1_sv2v_reg <= ps[0];
      prod_accum_o_0_sv2v_reg <= prod_accum_i[0];
      a_o_31_sv2v_reg <= a_i[31];
      a_o_30_sv2v_reg <= a_i[30];
      a_o_29_sv2v_reg <= a_i[29];
      a_o_28_sv2v_reg <= a_i[28];
      a_o_27_sv2v_reg <= a_i[27];
      a_o_26_sv2v_reg <= a_i[26];
      a_o_25_sv2v_reg <= a_i[25];
      a_o_24_sv2v_reg <= a_i[24];
      a_o_23_sv2v_reg <= a_i[23];
      a_o_22_sv2v_reg <= a_i[22];
      a_o_21_sv2v_reg <= a_i[21];
      a_o_20_sv2v_reg <= a_i[20];
      a_o_19_sv2v_reg <= a_i[19];
      a_o_18_sv2v_reg <= a_i[18];
      a_o_17_sv2v_reg <= a_i[17];
      a_o_16_sv2v_reg <= a_i[16];
      a_o_15_sv2v_reg <= a_i[15];
      a_o_14_sv2v_reg <= a_i[14];
      a_o_13_sv2v_reg <= a_i[13];
      a_o_12_sv2v_reg <= a_i[12];
      a_o_11_sv2v_reg <= a_i[11];
      a_o_10_sv2v_reg <= a_i[10];
      a_o_9_sv2v_reg <= a_i[9];
      a_o_8_sv2v_reg <= a_i[8];
      a_o_7_sv2v_reg <= a_i[7];
      a_o_6_sv2v_reg <= a_i[6];
      a_o_5_sv2v_reg <= a_i[5];
      a_o_4_sv2v_reg <= a_i[4];
      a_o_3_sv2v_reg <= a_i[3];
      a_o_2_sv2v_reg <= a_i[2];
      a_o_1_sv2v_reg <= a_i[1];
      a_o_0_sv2v_reg <= a_i[0];
      b_o_31_sv2v_reg <= b_i[31];
      b_o_30_sv2v_reg <= b_i[30];
      b_o_29_sv2v_reg <= b_i[29];
      b_o_28_sv2v_reg <= b_i[28];
      b_o_27_sv2v_reg <= b_i[27];
      b_o_26_sv2v_reg <= b_i[26];
      b_o_25_sv2v_reg <= b_i[25];
      b_o_24_sv2v_reg <= b_i[24];
      b_o_23_sv2v_reg <= b_i[23];
      b_o_22_sv2v_reg <= b_i[22];
      b_o_21_sv2v_reg <= b_i[21];
      b_o_20_sv2v_reg <= b_i[20];
      b_o_19_sv2v_reg <= b_i[19];
      b_o_18_sv2v_reg <= b_i[18];
      b_o_17_sv2v_reg <= b_i[17];
      b_o_16_sv2v_reg <= b_i[16];
      b_o_15_sv2v_reg <= b_i[15];
      b_o_14_sv2v_reg <= b_i[14];
      b_o_13_sv2v_reg <= b_i[13];
      b_o_12_sv2v_reg <= b_i[12];
      b_o_11_sv2v_reg <= b_i[11];
      b_o_10_sv2v_reg <= b_i[10];
      b_o_9_sv2v_reg <= b_i[9];
      b_o_8_sv2v_reg <= b_i[8];
      b_o_7_sv2v_reg <= b_i[7];
      b_o_6_sv2v_reg <= b_i[6];
      b_o_5_sv2v_reg <= b_i[5];
      b_o_4_sv2v_reg <= b_i[4];
      b_o_3_sv2v_reg <= b_i[3];
      b_o_2_sv2v_reg <= b_i[2];
      b_o_1_sv2v_reg <= b_i[1];
      b_o_0_sv2v_reg <= b_i[0];
      s_o_31_sv2v_reg <= ps[31];
      s_o_30_sv2v_reg <= ps[30];
      s_o_29_sv2v_reg <= ps[29];
      s_o_28_sv2v_reg <= ps[28];
      s_o_27_sv2v_reg <= ps[27];
      s_o_26_sv2v_reg <= ps[26];
      s_o_25_sv2v_reg <= ps[25];
      s_o_24_sv2v_reg <= ps[24];
      s_o_23_sv2v_reg <= ps[23];
      s_o_22_sv2v_reg <= ps[22];
      s_o_21_sv2v_reg <= ps[21];
      s_o_20_sv2v_reg <= ps[20];
      s_o_19_sv2v_reg <= ps[19];
      s_o_18_sv2v_reg <= ps[18];
      s_o_17_sv2v_reg <= ps[17];
      s_o_16_sv2v_reg <= ps[16];
      s_o_15_sv2v_reg <= ps[15];
      s_o_14_sv2v_reg <= ps[14];
      s_o_13_sv2v_reg <= ps[13];
      s_o_12_sv2v_reg <= ps[12];
      s_o_11_sv2v_reg <= ps[11];
      s_o_10_sv2v_reg <= ps[10];
      s_o_9_sv2v_reg <= ps[9];
      s_o_8_sv2v_reg <= ps[8];
      s_o_7_sv2v_reg <= ps[7];
      s_o_6_sv2v_reg <= ps[6];
      s_o_5_sv2v_reg <= ps[5];
      s_o_4_sv2v_reg <= ps[4];
      s_o_3_sv2v_reg <= ps[3];
      s_o_2_sv2v_reg <= ps[2];
      s_o_1_sv2v_reg <= ps[1];
      s_o_0_sv2v_reg <= ps[0];
      c_o_sv2v_reg <= pc;
    end 
  end


endmodule

