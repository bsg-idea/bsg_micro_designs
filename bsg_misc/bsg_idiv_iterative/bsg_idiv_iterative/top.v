

module top
(
  clk_i,
  reset_i,
  v_i,
  ready_and_o,
  dividend_i,
  divisor_i,
  signed_div_i,
  v_o,
  quotient_o,
  remainder_o,
  yumi_i
);

  input [31:0] dividend_i;
  input [31:0] divisor_i;
  output [31:0] quotient_o;
  output [31:0] remainder_o;
  input clk_i;
  input reset_i;
  input v_i;
  input signed_div_i;
  input yumi_i;
  output ready_and_o;
  output v_o;

  bsg_idiv_iterative
  wrapper
  (
    .dividend_i(dividend_i),
    .divisor_i(divisor_i),
    .quotient_o(quotient_o),
    .remainder_o(remainder_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .signed_div_i(signed_div_i),
    .yumi_i(yumi_i),
    .ready_and_o(ready_and_o),
    .v_o(v_o)
  );


endmodule



module bsg_dff_en_width_p1
(
  clk_i,
  data_i,
  en_i,
  data_o
);

  input [0:0] data_i;
  output [0:0] data_o;
  input clk_i;
  input en_i;
  wire [0:0] data_o;
  reg data_o_0_sv2v_reg;
  assign data_o[0] = data_o_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(en_i) begin
      data_o_0_sv2v_reg <= data_i[0];
    end 
  end


endmodule



module bsg_mux_one_hot_width_p33_els_p2
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [65:0] data_i;
  input [1:0] sel_one_hot_i;
  output [32:0] data_o;
  wire [32:0] data_o;
  wire [65:0] data_masked;
  assign data_masked[32] = data_i[32] & sel_one_hot_i[0];
  assign data_masked[31] = data_i[31] & sel_one_hot_i[0];
  assign data_masked[30] = data_i[30] & sel_one_hot_i[0];
  assign data_masked[29] = data_i[29] & sel_one_hot_i[0];
  assign data_masked[28] = data_i[28] & sel_one_hot_i[0];
  assign data_masked[27] = data_i[27] & sel_one_hot_i[0];
  assign data_masked[26] = data_i[26] & sel_one_hot_i[0];
  assign data_masked[25] = data_i[25] & sel_one_hot_i[0];
  assign data_masked[24] = data_i[24] & sel_one_hot_i[0];
  assign data_masked[23] = data_i[23] & sel_one_hot_i[0];
  assign data_masked[22] = data_i[22] & sel_one_hot_i[0];
  assign data_masked[21] = data_i[21] & sel_one_hot_i[0];
  assign data_masked[20] = data_i[20] & sel_one_hot_i[0];
  assign data_masked[19] = data_i[19] & sel_one_hot_i[0];
  assign data_masked[18] = data_i[18] & sel_one_hot_i[0];
  assign data_masked[17] = data_i[17] & sel_one_hot_i[0];
  assign data_masked[16] = data_i[16] & sel_one_hot_i[0];
  assign data_masked[15] = data_i[15] & sel_one_hot_i[0];
  assign data_masked[14] = data_i[14] & sel_one_hot_i[0];
  assign data_masked[13] = data_i[13] & sel_one_hot_i[0];
  assign data_masked[12] = data_i[12] & sel_one_hot_i[0];
  assign data_masked[11] = data_i[11] & sel_one_hot_i[0];
  assign data_masked[10] = data_i[10] & sel_one_hot_i[0];
  assign data_masked[9] = data_i[9] & sel_one_hot_i[0];
  assign data_masked[8] = data_i[8] & sel_one_hot_i[0];
  assign data_masked[7] = data_i[7] & sel_one_hot_i[0];
  assign data_masked[6] = data_i[6] & sel_one_hot_i[0];
  assign data_masked[5] = data_i[5] & sel_one_hot_i[0];
  assign data_masked[4] = data_i[4] & sel_one_hot_i[0];
  assign data_masked[3] = data_i[3] & sel_one_hot_i[0];
  assign data_masked[2] = data_i[2] & sel_one_hot_i[0];
  assign data_masked[1] = data_i[1] & sel_one_hot_i[0];
  assign data_masked[0] = data_i[0] & sel_one_hot_i[0];
  assign data_masked[65] = data_i[65] & sel_one_hot_i[1];
  assign data_masked[64] = data_i[64] & sel_one_hot_i[1];
  assign data_masked[63] = data_i[63] & sel_one_hot_i[1];
  assign data_masked[62] = data_i[62] & sel_one_hot_i[1];
  assign data_masked[61] = data_i[61] & sel_one_hot_i[1];
  assign data_masked[60] = data_i[60] & sel_one_hot_i[1];
  assign data_masked[59] = data_i[59] & sel_one_hot_i[1];
  assign data_masked[58] = data_i[58] & sel_one_hot_i[1];
  assign data_masked[57] = data_i[57] & sel_one_hot_i[1];
  assign data_masked[56] = data_i[56] & sel_one_hot_i[1];
  assign data_masked[55] = data_i[55] & sel_one_hot_i[1];
  assign data_masked[54] = data_i[54] & sel_one_hot_i[1];
  assign data_masked[53] = data_i[53] & sel_one_hot_i[1];
  assign data_masked[52] = data_i[52] & sel_one_hot_i[1];
  assign data_masked[51] = data_i[51] & sel_one_hot_i[1];
  assign data_masked[50] = data_i[50] & sel_one_hot_i[1];
  assign data_masked[49] = data_i[49] & sel_one_hot_i[1];
  assign data_masked[48] = data_i[48] & sel_one_hot_i[1];
  assign data_masked[47] = data_i[47] & sel_one_hot_i[1];
  assign data_masked[46] = data_i[46] & sel_one_hot_i[1];
  assign data_masked[45] = data_i[45] & sel_one_hot_i[1];
  assign data_masked[44] = data_i[44] & sel_one_hot_i[1];
  assign data_masked[43] = data_i[43] & sel_one_hot_i[1];
  assign data_masked[42] = data_i[42] & sel_one_hot_i[1];
  assign data_masked[41] = data_i[41] & sel_one_hot_i[1];
  assign data_masked[40] = data_i[40] & sel_one_hot_i[1];
  assign data_masked[39] = data_i[39] & sel_one_hot_i[1];
  assign data_masked[38] = data_i[38] & sel_one_hot_i[1];
  assign data_masked[37] = data_i[37] & sel_one_hot_i[1];
  assign data_masked[36] = data_i[36] & sel_one_hot_i[1];
  assign data_masked[35] = data_i[35] & sel_one_hot_i[1];
  assign data_masked[34] = data_i[34] & sel_one_hot_i[1];
  assign data_masked[33] = data_i[33] & sel_one_hot_i[1];
  assign data_o[0] = data_masked[33] | data_masked[0];
  assign data_o[1] = data_masked[34] | data_masked[1];
  assign data_o[2] = data_masked[35] | data_masked[2];
  assign data_o[3] = data_masked[36] | data_masked[3];
  assign data_o[4] = data_masked[37] | data_masked[4];
  assign data_o[5] = data_masked[38] | data_masked[5];
  assign data_o[6] = data_masked[39] | data_masked[6];
  assign data_o[7] = data_masked[40] | data_masked[7];
  assign data_o[8] = data_masked[41] | data_masked[8];
  assign data_o[9] = data_masked[42] | data_masked[9];
  assign data_o[10] = data_masked[43] | data_masked[10];
  assign data_o[11] = data_masked[44] | data_masked[11];
  assign data_o[12] = data_masked[45] | data_masked[12];
  assign data_o[13] = data_masked[46] | data_masked[13];
  assign data_o[14] = data_masked[47] | data_masked[14];
  assign data_o[15] = data_masked[48] | data_masked[15];
  assign data_o[16] = data_masked[49] | data_masked[16];
  assign data_o[17] = data_masked[50] | data_masked[17];
  assign data_o[18] = data_masked[51] | data_masked[18];
  assign data_o[19] = data_masked[52] | data_masked[19];
  assign data_o[20] = data_masked[53] | data_masked[20];
  assign data_o[21] = data_masked[54] | data_masked[21];
  assign data_o[22] = data_masked[55] | data_masked[22];
  assign data_o[23] = data_masked[56] | data_masked[23];
  assign data_o[24] = data_masked[57] | data_masked[24];
  assign data_o[25] = data_masked[58] | data_masked[25];
  assign data_o[26] = data_masked[59] | data_masked[26];
  assign data_o[27] = data_masked[60] | data_masked[27];
  assign data_o[28] = data_masked[61] | data_masked[28];
  assign data_o[29] = data_masked[62] | data_masked[29];
  assign data_o[30] = data_masked[63] | data_masked[30];
  assign data_o[31] = data_masked[64] | data_masked[31];
  assign data_o[32] = data_masked[65] | data_masked[32];

endmodule



module bsg_mux_one_hot_width_p33_els_p3
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [98:0] data_i;
  input [2:0] sel_one_hot_i;
  output [32:0] data_o;
  wire [32:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32;
  wire [98:0] data_masked;
  assign data_masked[32] = data_i[32] & sel_one_hot_i[0];
  assign data_masked[31] = data_i[31] & sel_one_hot_i[0];
  assign data_masked[30] = data_i[30] & sel_one_hot_i[0];
  assign data_masked[29] = data_i[29] & sel_one_hot_i[0];
  assign data_masked[28] = data_i[28] & sel_one_hot_i[0];
  assign data_masked[27] = data_i[27] & sel_one_hot_i[0];
  assign data_masked[26] = data_i[26] & sel_one_hot_i[0];
  assign data_masked[25] = data_i[25] & sel_one_hot_i[0];
  assign data_masked[24] = data_i[24] & sel_one_hot_i[0];
  assign data_masked[23] = data_i[23] & sel_one_hot_i[0];
  assign data_masked[22] = data_i[22] & sel_one_hot_i[0];
  assign data_masked[21] = data_i[21] & sel_one_hot_i[0];
  assign data_masked[20] = data_i[20] & sel_one_hot_i[0];
  assign data_masked[19] = data_i[19] & sel_one_hot_i[0];
  assign data_masked[18] = data_i[18] & sel_one_hot_i[0];
  assign data_masked[17] = data_i[17] & sel_one_hot_i[0];
  assign data_masked[16] = data_i[16] & sel_one_hot_i[0];
  assign data_masked[15] = data_i[15] & sel_one_hot_i[0];
  assign data_masked[14] = data_i[14] & sel_one_hot_i[0];
  assign data_masked[13] = data_i[13] & sel_one_hot_i[0];
  assign data_masked[12] = data_i[12] & sel_one_hot_i[0];
  assign data_masked[11] = data_i[11] & sel_one_hot_i[0];
  assign data_masked[10] = data_i[10] & sel_one_hot_i[0];
  assign data_masked[9] = data_i[9] & sel_one_hot_i[0];
  assign data_masked[8] = data_i[8] & sel_one_hot_i[0];
  assign data_masked[7] = data_i[7] & sel_one_hot_i[0];
  assign data_masked[6] = data_i[6] & sel_one_hot_i[0];
  assign data_masked[5] = data_i[5] & sel_one_hot_i[0];
  assign data_masked[4] = data_i[4] & sel_one_hot_i[0];
  assign data_masked[3] = data_i[3] & sel_one_hot_i[0];
  assign data_masked[2] = data_i[2] & sel_one_hot_i[0];
  assign data_masked[1] = data_i[1] & sel_one_hot_i[0];
  assign data_masked[0] = data_i[0] & sel_one_hot_i[0];
  assign data_masked[65] = data_i[65] & sel_one_hot_i[1];
  assign data_masked[64] = data_i[64] & sel_one_hot_i[1];
  assign data_masked[63] = data_i[63] & sel_one_hot_i[1];
  assign data_masked[62] = data_i[62] & sel_one_hot_i[1];
  assign data_masked[61] = data_i[61] & sel_one_hot_i[1];
  assign data_masked[60] = data_i[60] & sel_one_hot_i[1];
  assign data_masked[59] = data_i[59] & sel_one_hot_i[1];
  assign data_masked[58] = data_i[58] & sel_one_hot_i[1];
  assign data_masked[57] = data_i[57] & sel_one_hot_i[1];
  assign data_masked[56] = data_i[56] & sel_one_hot_i[1];
  assign data_masked[55] = data_i[55] & sel_one_hot_i[1];
  assign data_masked[54] = data_i[54] & sel_one_hot_i[1];
  assign data_masked[53] = data_i[53] & sel_one_hot_i[1];
  assign data_masked[52] = data_i[52] & sel_one_hot_i[1];
  assign data_masked[51] = data_i[51] & sel_one_hot_i[1];
  assign data_masked[50] = data_i[50] & sel_one_hot_i[1];
  assign data_masked[49] = data_i[49] & sel_one_hot_i[1];
  assign data_masked[48] = data_i[48] & sel_one_hot_i[1];
  assign data_masked[47] = data_i[47] & sel_one_hot_i[1];
  assign data_masked[46] = data_i[46] & sel_one_hot_i[1];
  assign data_masked[45] = data_i[45] & sel_one_hot_i[1];
  assign data_masked[44] = data_i[44] & sel_one_hot_i[1];
  assign data_masked[43] = data_i[43] & sel_one_hot_i[1];
  assign data_masked[42] = data_i[42] & sel_one_hot_i[1];
  assign data_masked[41] = data_i[41] & sel_one_hot_i[1];
  assign data_masked[40] = data_i[40] & sel_one_hot_i[1];
  assign data_masked[39] = data_i[39] & sel_one_hot_i[1];
  assign data_masked[38] = data_i[38] & sel_one_hot_i[1];
  assign data_masked[37] = data_i[37] & sel_one_hot_i[1];
  assign data_masked[36] = data_i[36] & sel_one_hot_i[1];
  assign data_masked[35] = data_i[35] & sel_one_hot_i[1];
  assign data_masked[34] = data_i[34] & sel_one_hot_i[1];
  assign data_masked[33] = data_i[33] & sel_one_hot_i[1];
  assign data_masked[98] = data_i[98] & sel_one_hot_i[2];
  assign data_masked[97] = data_i[97] & sel_one_hot_i[2];
  assign data_masked[96] = data_i[96] & sel_one_hot_i[2];
  assign data_masked[95] = data_i[95] & sel_one_hot_i[2];
  assign data_masked[94] = data_i[94] & sel_one_hot_i[2];
  assign data_masked[93] = data_i[93] & sel_one_hot_i[2];
  assign data_masked[92] = data_i[92] & sel_one_hot_i[2];
  assign data_masked[91] = data_i[91] & sel_one_hot_i[2];
  assign data_masked[90] = data_i[90] & sel_one_hot_i[2];
  assign data_masked[89] = data_i[89] & sel_one_hot_i[2];
  assign data_masked[88] = data_i[88] & sel_one_hot_i[2];
  assign data_masked[87] = data_i[87] & sel_one_hot_i[2];
  assign data_masked[86] = data_i[86] & sel_one_hot_i[2];
  assign data_masked[85] = data_i[85] & sel_one_hot_i[2];
  assign data_masked[84] = data_i[84] & sel_one_hot_i[2];
  assign data_masked[83] = data_i[83] & sel_one_hot_i[2];
  assign data_masked[82] = data_i[82] & sel_one_hot_i[2];
  assign data_masked[81] = data_i[81] & sel_one_hot_i[2];
  assign data_masked[80] = data_i[80] & sel_one_hot_i[2];
  assign data_masked[79] = data_i[79] & sel_one_hot_i[2];
  assign data_masked[78] = data_i[78] & sel_one_hot_i[2];
  assign data_masked[77] = data_i[77] & sel_one_hot_i[2];
  assign data_masked[76] = data_i[76] & sel_one_hot_i[2];
  assign data_masked[75] = data_i[75] & sel_one_hot_i[2];
  assign data_masked[74] = data_i[74] & sel_one_hot_i[2];
  assign data_masked[73] = data_i[73] & sel_one_hot_i[2];
  assign data_masked[72] = data_i[72] & sel_one_hot_i[2];
  assign data_masked[71] = data_i[71] & sel_one_hot_i[2];
  assign data_masked[70] = data_i[70] & sel_one_hot_i[2];
  assign data_masked[69] = data_i[69] & sel_one_hot_i[2];
  assign data_masked[68] = data_i[68] & sel_one_hot_i[2];
  assign data_masked[67] = data_i[67] & sel_one_hot_i[2];
  assign data_masked[66] = data_i[66] & sel_one_hot_i[2];
  assign data_o[0] = N0 | data_masked[0];
  assign N0 = data_masked[66] | data_masked[33];
  assign data_o[1] = N1 | data_masked[1];
  assign N1 = data_masked[67] | data_masked[34];
  assign data_o[2] = N2 | data_masked[2];
  assign N2 = data_masked[68] | data_masked[35];
  assign data_o[3] = N3 | data_masked[3];
  assign N3 = data_masked[69] | data_masked[36];
  assign data_o[4] = N4 | data_masked[4];
  assign N4 = data_masked[70] | data_masked[37];
  assign data_o[5] = N5 | data_masked[5];
  assign N5 = data_masked[71] | data_masked[38];
  assign data_o[6] = N6 | data_masked[6];
  assign N6 = data_masked[72] | data_masked[39];
  assign data_o[7] = N7 | data_masked[7];
  assign N7 = data_masked[73] | data_masked[40];
  assign data_o[8] = N8 | data_masked[8];
  assign N8 = data_masked[74] | data_masked[41];
  assign data_o[9] = N9 | data_masked[9];
  assign N9 = data_masked[75] | data_masked[42];
  assign data_o[10] = N10 | data_masked[10];
  assign N10 = data_masked[76] | data_masked[43];
  assign data_o[11] = N11 | data_masked[11];
  assign N11 = data_masked[77] | data_masked[44];
  assign data_o[12] = N12 | data_masked[12];
  assign N12 = data_masked[78] | data_masked[45];
  assign data_o[13] = N13 | data_masked[13];
  assign N13 = data_masked[79] | data_masked[46];
  assign data_o[14] = N14 | data_masked[14];
  assign N14 = data_masked[80] | data_masked[47];
  assign data_o[15] = N15 | data_masked[15];
  assign N15 = data_masked[81] | data_masked[48];
  assign data_o[16] = N16 | data_masked[16];
  assign N16 = data_masked[82] | data_masked[49];
  assign data_o[17] = N17 | data_masked[17];
  assign N17 = data_masked[83] | data_masked[50];
  assign data_o[18] = N18 | data_masked[18];
  assign N18 = data_masked[84] | data_masked[51];
  assign data_o[19] = N19 | data_masked[19];
  assign N19 = data_masked[85] | data_masked[52];
  assign data_o[20] = N20 | data_masked[20];
  assign N20 = data_masked[86] | data_masked[53];
  assign data_o[21] = N21 | data_masked[21];
  assign N21 = data_masked[87] | data_masked[54];
  assign data_o[22] = N22 | data_masked[22];
  assign N22 = data_masked[88] | data_masked[55];
  assign data_o[23] = N23 | data_masked[23];
  assign N23 = data_masked[89] | data_masked[56];
  assign data_o[24] = N24 | data_masked[24];
  assign N24 = data_masked[90] | data_masked[57];
  assign data_o[25] = N25 | data_masked[25];
  assign N25 = data_masked[91] | data_masked[58];
  assign data_o[26] = N26 | data_masked[26];
  assign N26 = data_masked[92] | data_masked[59];
  assign data_o[27] = N27 | data_masked[27];
  assign N27 = data_masked[93] | data_masked[60];
  assign data_o[28] = N28 | data_masked[28];
  assign N28 = data_masked[94] | data_masked[61];
  assign data_o[29] = N29 | data_masked[29];
  assign N29 = data_masked[95] | data_masked[62];
  assign data_o[30] = N30 | data_masked[30];
  assign N30 = data_masked[96] | data_masked[63];
  assign data_o[31] = N31 | data_masked[31];
  assign N31 = data_masked[97] | data_masked[64];
  assign data_o[32] = N32 | data_masked[32];
  assign N32 = data_masked[98] | data_masked[65];

endmodule



module bsg_dff_en_width_p33
(
  clk_i,
  data_i,
  en_i,
  data_o
);

  input [32:0] data_i;
  output [32:0] data_o;
  input clk_i;
  input en_i;
  wire [32:0] data_o;
  reg data_o_32_sv2v_reg,data_o_31_sv2v_reg,data_o_30_sv2v_reg,data_o_29_sv2v_reg,
  data_o_28_sv2v_reg,data_o_27_sv2v_reg,data_o_26_sv2v_reg,data_o_25_sv2v_reg,
  data_o_24_sv2v_reg,data_o_23_sv2v_reg,data_o_22_sv2v_reg,data_o_21_sv2v_reg,
  data_o_20_sv2v_reg,data_o_19_sv2v_reg,data_o_18_sv2v_reg,data_o_17_sv2v_reg,
  data_o_16_sv2v_reg,data_o_15_sv2v_reg,data_o_14_sv2v_reg,data_o_13_sv2v_reg,data_o_12_sv2v_reg,
  data_o_11_sv2v_reg,data_o_10_sv2v_reg,data_o_9_sv2v_reg,data_o_8_sv2v_reg,
  data_o_7_sv2v_reg,data_o_6_sv2v_reg,data_o_5_sv2v_reg,data_o_4_sv2v_reg,
  data_o_3_sv2v_reg,data_o_2_sv2v_reg,data_o_1_sv2v_reg,data_o_0_sv2v_reg;
  assign data_o[32] = data_o_32_sv2v_reg;
  assign data_o[31] = data_o_31_sv2v_reg;
  assign data_o[30] = data_o_30_sv2v_reg;
  assign data_o[29] = data_o_29_sv2v_reg;
  assign data_o[28] = data_o_28_sv2v_reg;
  assign data_o[27] = data_o_27_sv2v_reg;
  assign data_o[26] = data_o_26_sv2v_reg;
  assign data_o[25] = data_o_25_sv2v_reg;
  assign data_o[24] = data_o_24_sv2v_reg;
  assign data_o[23] = data_o_23_sv2v_reg;
  assign data_o[22] = data_o_22_sv2v_reg;
  assign data_o[21] = data_o_21_sv2v_reg;
  assign data_o[20] = data_o_20_sv2v_reg;
  assign data_o[19] = data_o_19_sv2v_reg;
  assign data_o[18] = data_o_18_sv2v_reg;
  assign data_o[17] = data_o_17_sv2v_reg;
  assign data_o[16] = data_o_16_sv2v_reg;
  assign data_o[15] = data_o_15_sv2v_reg;
  assign data_o[14] = data_o_14_sv2v_reg;
  assign data_o[13] = data_o_13_sv2v_reg;
  assign data_o[12] = data_o_12_sv2v_reg;
  assign data_o[11] = data_o_11_sv2v_reg;
  assign data_o[10] = data_o_10_sv2v_reg;
  assign data_o[9] = data_o_9_sv2v_reg;
  assign data_o[8] = data_o_8_sv2v_reg;
  assign data_o[7] = data_o_7_sv2v_reg;
  assign data_o[6] = data_o_6_sv2v_reg;
  assign data_o[5] = data_o_5_sv2v_reg;
  assign data_o[4] = data_o_4_sv2v_reg;
  assign data_o[3] = data_o_3_sv2v_reg;
  assign data_o[2] = data_o_2_sv2v_reg;
  assign data_o[1] = data_o_1_sv2v_reg;
  assign data_o[0] = data_o_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(en_i) begin
      data_o_32_sv2v_reg <= data_i[32];
      data_o_31_sv2v_reg <= data_i[31];
      data_o_30_sv2v_reg <= data_i[30];
      data_o_29_sv2v_reg <= data_i[29];
      data_o_28_sv2v_reg <= data_i[28];
      data_o_27_sv2v_reg <= data_i[27];
      data_o_26_sv2v_reg <= data_i[26];
      data_o_25_sv2v_reg <= data_i[25];
      data_o_24_sv2v_reg <= data_i[24];
      data_o_23_sv2v_reg <= data_i[23];
      data_o_22_sv2v_reg <= data_i[22];
      data_o_21_sv2v_reg <= data_i[21];
      data_o_20_sv2v_reg <= data_i[20];
      data_o_19_sv2v_reg <= data_i[19];
      data_o_18_sv2v_reg <= data_i[18];
      data_o_17_sv2v_reg <= data_i[17];
      data_o_16_sv2v_reg <= data_i[16];
      data_o_15_sv2v_reg <= data_i[15];
      data_o_14_sv2v_reg <= data_i[14];
      data_o_13_sv2v_reg <= data_i[13];
      data_o_12_sv2v_reg <= data_i[12];
      data_o_11_sv2v_reg <= data_i[11];
      data_o_10_sv2v_reg <= data_i[10];
      data_o_9_sv2v_reg <= data_i[9];
      data_o_8_sv2v_reg <= data_i[8];
      data_o_7_sv2v_reg <= data_i[7];
      data_o_6_sv2v_reg <= data_i[6];
      data_o_5_sv2v_reg <= data_i[5];
      data_o_4_sv2v_reg <= data_i[4];
      data_o_3_sv2v_reg <= data_i[3];
      data_o_2_sv2v_reg <= data_i[2];
      data_o_1_sv2v_reg <= data_i[1];
      data_o_0_sv2v_reg <= data_i[0];
    end 
  end


endmodule



module bsg_adder_cin_width_p33
(
  a_i,
  b_i,
  cin_i,
  o
);

  input [32:0] a_i;
  input [32:0] b_i;
  output [32:0] o;
  input cin_i;
  wire [32:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32;
  assign { N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0 } = a_i + b_i;
  assign o = { N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0 } + cin_i;

endmodule



module bsg_idiv_iterative_controller_width_p32_bits_per_iter_p1
(
  clk_i,
  reset_i,
  v_i,
  ready_and_o,
  zero_divisor_i,
  signed_div_r_i,
  adder1_result_is_neg_i,
  adder2_result_is_neg_i,
  opA_is_neg_i,
  opC_is_neg_i,
  opA_sel_o,
  opA_ld_o,
  opA_inv_o,
  opA_clr_l_o,
  opB_sel_o,
  opB_ld_o,
  opB_inv_o,
  opB_clr_l_o,
  opC_sel_o,
  opC_ld_o,
  latch_signed_div_o,
  adder1_cin_o,
  v_o,
  yumi_i
);

  output [1:0] opA_sel_o;
  output [2:0] opB_sel_o;
  output [2:0] opC_sel_o;
  input clk_i;
  input reset_i;
  input v_i;
  input zero_divisor_i;
  input signed_div_r_i;
  input adder1_result_is_neg_i;
  input adder2_result_is_neg_i;
  input opA_is_neg_i;
  input opC_is_neg_i;
  input yumi_i;
  output ready_and_o;
  output opA_ld_o;
  output opA_inv_o;
  output opA_clr_l_o;
  output opB_ld_o;
  output opB_inv_o;
  output opB_clr_l_o;
  output opC_ld_o;
  output latch_signed_div_o;
  output adder1_cin_o;
  output v_o;
  wire [1:0] opA_sel_o;
  wire [2:0] opB_sel_o,opC_sel_o;
  wire ready_and_o,opA_ld_o,opA_inv_o,opA_clr_l_o,opB_ld_o,opB_inv_o,opB_clr_l_o,
  opC_ld_o,latch_signed_div_o,adder1_cin_o,v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,
  add1_neg_last_r,neg_ld,N12,q_neg_r,N13,r_neg_r,calc_up_li,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,
  N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,
  N100,N101,N102,N104,N105,N106,N107,N108,N109,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126;
  wire [5:0] state,calc_cnt;
  wire [3:0] next_state;
  reg add1_neg_last_r_sv2v_reg,r_neg_r_sv2v_reg,q_neg_r_sv2v_reg,state_5_sv2v_reg,
  state_4_sv2v_reg,state_3_sv2v_reg,state_2_sv2v_reg,state_1_sv2v_reg,
  state_0_sv2v_reg;
  assign add1_neg_last_r = add1_neg_last_r_sv2v_reg;
  assign r_neg_r = r_neg_r_sv2v_reg;
  assign q_neg_r = q_neg_r_sv2v_reg;
  assign state[5] = state_5_sv2v_reg;
  assign state[4] = state_4_sv2v_reg;
  assign state[3] = state_3_sv2v_reg;
  assign state[2] = state_2_sv2v_reg;
  assign state[1] = state_1_sv2v_reg;
  assign state[0] = state_0_sv2v_reg;

  bsg_counter_clear_up
  calc_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(N124),
    .up_i(calc_up_li),
    .count_o(calc_cnt)
  );

  assign N17 = N15 & N16;
  assign N20 = N104 & N111;
  assign N21 = N18 & N19;
  assign N22 = N20 & N21;
  assign N23 = state[3] | state[2];
  assign N24 = state[1] | N19;
  assign N25 = N23 | N24;
  assign N27 = state[3] | state[2];
  assign N28 = N18 | state[0];
  assign N29 = N27 | N28;
  assign N31 = state[3] | state[2];
  assign N32 = N18 | N19;
  assign N33 = N31 | N32;
  assign N35 = state[3] | N111;
  assign N36 = state[1] | state[0];
  assign N37 = N35 | N36;
  assign N39 = state[3] | N111;
  assign N40 = state[1] | N19;
  assign N41 = N39 | N40;
  assign N43 = state[3] | N111;
  assign N44 = N18 | state[0];
  assign N45 = N43 | N44;
  assign N47 = state[3] | N111;
  assign N48 = N18 | N19;
  assign N49 = N47 | N48;
  assign N51 = N104 | state[2];
  assign N52 = state[1] | state[0];
  assign N53 = N51 | N52;
  assign N98 = state[4] | state[5];
  assign N99 = state[3] | N98;
  assign N100 = state[2] | N99;
  assign N101 = state[1] | N100;
  assign N102 = state[0] | N101;
  assign ready_and_o = ~N102;
  assign N104 = ~state[3];
  assign N105 = state[4] | state[5];
  assign N106 = N104 | N105;
  assign N107 = state[2] | N106;
  assign N108 = state[1] | N107;
  assign N109 = state[0] | N108;
  assign v_o = ~N109;
  assign N111 = ~state[2];
  assign N112 = state[4] | state[5];
  assign N113 = state[3] | N112;
  assign N114 = N111 | N113;
  assign N115 = state[1] | N114;
  assign N116 = state[0] | N115;
  assign N117 = ~N116;
  assign N118 = ~calc_cnt[5];
  assign N119 = calc_cnt[4] | N118;
  assign N120 = calc_cnt[3] | N119;
  assign N121 = calc_cnt[2] | N120;
  assign N122 = calc_cnt[1] | N121;
  assign N123 = calc_cnt[0] | N122;
  assign N124 = ~N123;
  assign N56 = ~N13;
  assign { N62, N61 } = (N0)? { N60, adder1_result_is_neg_i } : 
                        (N1)? { 1'b0, 1'b0 } : 1'b0;
  assign N0 = N59;
  assign N1 = N58;
  assign N64 = ~N63;
  assign { N76, N75 } = (N2)? { 1'b0, N55 } : 
                        (N3)? { 1'b0, 1'b1 } : 
                        (N4)? { 1'b1, 1'b0 } : 
                        (N5)? { 1'b0, 1'b1 } : 
                        (N6)? { 1'b0, 1'b1 } : 
                        (N7)? { 1'b0, 1'b1 } : 
                        (N8)? { 1'b0, 1'b1 } : 
                        (N9)? { 1'b1, 1'b0 } : 
                        (N10)? { 1'b0, 1'b1 } : 
                        (N74)? { 1'b0, 1'b1 } : 1'b0;
  assign N2 = N22;
  assign N3 = N26;
  assign N4 = N30;
  assign N5 = N34;
  assign N6 = N38;
  assign N7 = N42;
  assign N8 = N46;
  assign N9 = N50;
  assign N10 = N54;
  assign N79 = (N2)? v_i : 
               (N78)? 1'b0 : 1'b0;
  assign N80 = (N2)? v_i : 
               (N3)? N57 : 
               (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N6)? 1'b0 : 
               (N7)? 1'b0 : 
               (N8)? 1'b1 : 
               (N9)? 1'b0 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign N81 = (N2)? v_i : 
               (N3)? 1'b0 : 
               (N4)? 1'b1 : 
               (N5)? 1'b1 : 
               (N6)? 1'b1 : 
               (N7)? 1'b0 : 
               (N8)? 1'b0 : 
               (N9)? 1'b1 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign N82 = (N2)? v_i : 
               (N3)? 1'b0 : 
               (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N6)? 1'b0 : 
               (N7)? 1'b0 : 
               (N8)? 1'b0 : 
               (N9)? 1'b0 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign { N86, N85, N84, N83 } = (N2)? { 1'b0, 1'b0, 1'b0, v_i } : 
                                  (N3)? { 1'b0, 1'b0, 1'b1, N56 } : 
                                  (N4)? { 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                  (N5)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                                  (N6)? { 1'b0, 1'b1, N62, N61 } : 
                                  (N7)? { 1'b0, 1'b1, 1'b1, 1'b0 } : 
                                  (N8)? { N63, N64, N64, N64 } : 
                                  (N9)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                                  (N10)? { N65, 1'b0, 1'b0, 1'b0 } : 
                                  (N74)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N87 = (N2)? 1'b0 : 
               (N3)? 1'b1 : 
               (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N6)? 1'b0 : 
               (N7)? 1'b0 : 
               (N8)? 1'b1 : 
               (N9)? 1'b0 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign N88 = (N2)? N14 : 
               (N3)? 1'b1 : 
               (N4)? N14 : 
               (N5)? N14 : 
               (N6)? N14 : 
               (N7)? 1'b0 : 
               (N8)? N14 : 
               (N9)? N14 : 
               (N10)? N14 : 
               (N74)? N14 : 1'b0;
  assign N89 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N4)? 1'b1 : 
               (N5)? 1'b0 : 
               (N6)? 1'b1 : 
               (N7)? 1'b1 : 
               (N8)? 1'b1 : 
               (N9)? 1'b1 : 
               (N10)? 1'b1 : 
               (N74)? 1'b1 : 1'b0;
  assign N90 = (N2)? 1'b0 : 
               (N3)? 1'b1 : 
               (N4)? 1'b0 : 
               (N5)? 1'b1 : 
               (N6)? 1'b1 : 
               (N7)? 1'b1 : 
               (N8)? 1'b1 : 
               (N9)? 1'b0 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign N91 = (N2)? 1'b0 : 
               (N3)? 1'b1 : 
               (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N6)? 1'b0 : 
               (N7)? 1'b0 : 
               (N8)? 1'b0 : 
               (N9)? 1'b0 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign N92 = (N2)? N14 : 
               (N3)? 1'b1 : 
               (N4)? 1'b1 : 
               (N5)? 1'b0 : 
               (N6)? N14 : 
               (N7)? 1'b0 : 
               (N8)? r_neg_r : 
               (N9)? 1'b1 : 
               (N10)? N14 : 
               (N74)? N14 : 1'b0;
  assign { N94, N93 } = (N2)? { 1'b0, 1'b1 } : 
                        (N3)? { 1'b0, 1'b0 } : 
                        (N4)? { 1'b0, 1'b1 } : 
                        (N5)? { 1'b0, 1'b1 } : 
                        (N6)? { N59, N58 } : 
                        (N7)? { 1'b1, 1'b0 } : 
                        (N8)? { 1'b0, 1'b0 } : 
                        (N9)? { 1'b0, 1'b1 } : 
                        (N10)? { 1'b0, 1'b1 } : 
                        (N74)? { 1'b0, 1'b1 } : 1'b0;
  assign N95 = (N2)? 1'b1 : 
               (N3)? 1'b1 : 
               (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N6)? 1'b1 : 
               (N7)? 1'b1 : 
               (N8)? 1'b0 : 
               (N9)? 1'b0 : 
               (N10)? 1'b1 : 
               (N74)? 1'b1 : 1'b0;
  assign N96 = (N2)? 1'b0 : 
               (N3)? 1'b0 : 
               (N4)? 1'b1 : 
               (N5)? 1'b0 : 
               (N6)? 1'b0 : 
               (N7)? 1'b0 : 
               (N8)? r_neg_r : 
               (N9)? 1'b1 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign opA_clr_l_o = (N11)? N95 : 
                       (N97)? 1'b1 : 1'b0;
  assign N11 = N17;
  assign opB_inv_o = (N11)? N96 : 
                     (N97)? 1'b0 : 1'b0;
  assign opC_sel_o = (N11)? { N79, N76, N75 } : 
                     (N97)? { 1'b0, 1'b0, 1'b1 } : 1'b0;
  assign opA_ld_o = (N11)? N80 : 
                    (N97)? 1'b0 : 1'b0;
  assign opC_ld_o = (N11)? N81 : 
                    (N97)? 1'b0 : 1'b0;
  assign latch_signed_div_o = (N11)? N82 : 
                              (N97)? 1'b0 : 1'b0;
  assign next_state = (N11)? { N86, N85, N84, N83 } : 
                      (N97)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign opA_sel_o = (N11)? { N79, N87 } : 
                     (N97)? { 1'b0, 1'b0 } : 1'b0;
  assign opA_inv_o = (N11)? N88 : 
                     (N97)? N14 : 1'b0;
  assign opB_clr_l_o = (N11)? N89 : 
                       (N97)? 1'b1 : 1'b0;
  assign opB_ld_o = (N11)? N90 : 
                    (N97)? 1'b0 : 1'b0;
  assign neg_ld = (N11)? N91 : 
                  (N97)? 1'b0 : 1'b0;
  assign adder1_cin_o = (N11)? N92 : 
                        (N97)? N14 : 1'b0;
  assign opB_sel_o = (N11)? { N87, N94, N93 } : 
                     (N97)? { 1'b0, 1'b0, 1'b1 } : 1'b0;
  assign N12 = N125 & signed_div_r_i;
  assign N125 = opA_is_neg_i ^ opC_is_neg_i;
  assign N13 = opC_is_neg_i & signed_div_r_i;
  assign calc_up_li = N117 & N118;
  assign N14 = ~add1_neg_last_r;
  assign N15 = ~state[5];
  assign N16 = ~state[4];
  assign N18 = ~state[1];
  assign N19 = ~state[0];
  assign N26 = ~N25;
  assign N30 = ~N29;
  assign N34 = ~N33;
  assign N38 = ~N37;
  assign N42 = ~N41;
  assign N46 = ~N45;
  assign N50 = ~N49;
  assign N54 = ~N53;
  assign N55 = ~v_i;
  assign N57 = opA_is_neg_i & signed_div_r_i;
  assign N58 = ~N124;
  assign N59 = N124;
  assign N60 = ~adder1_result_is_neg_i;
  assign N63 = zero_divisor_i | N126;
  assign N126 = ~q_neg_r;
  assign N65 = ~yumi_i;
  assign N66 = N26 | N22;
  assign N67 = N30 | N66;
  assign N68 = N34 | N67;
  assign N69 = N38 | N68;
  assign N70 = N42 | N69;
  assign N71 = N46 | N70;
  assign N72 = N50 | N71;
  assign N73 = N54 | N72;
  assign N74 = ~N73;
  assign N77 = ~N22;
  assign N78 = N77;
  assign N97 = ~N17;

  always @(posedge clk_i) begin
    if(1'b1) begin
      add1_neg_last_r_sv2v_reg <= adder1_result_is_neg_i;
    end 
    if(neg_ld) begin
      r_neg_r_sv2v_reg <= N13;
      q_neg_r_sv2v_reg <= N12;
    end 
    if(reset_i) begin
      state_5_sv2v_reg <= 1'b0;
      state_4_sv2v_reg <= 1'b0;
      state_3_sv2v_reg <= 1'b0;
      state_2_sv2v_reg <= 1'b0;
      state_1_sv2v_reg <= 1'b0;
      state_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      state_5_sv2v_reg <= 1'b0;
      state_4_sv2v_reg <= 1'b0;
      state_3_sv2v_reg <= next_state[3];
      state_2_sv2v_reg <= next_state[2];
      state_1_sv2v_reg <= next_state[1];
      state_0_sv2v_reg <= next_state[0];
    end 
  end


endmodule



module bsg_idiv_iterative
(
  clk_i,
  reset_i,
  v_i,
  ready_and_o,
  dividend_i,
  divisor_i,
  signed_div_i,
  v_o,
  quotient_o,
  remainder_o,
  yumi_i
);

  input [31:0] dividend_i;
  input [31:0] divisor_i;
  output [31:0] quotient_o;
  output [31:0] remainder_o;
  input clk_i;
  input reset_i;
  input v_i;
  input signed_div_i;
  input yumi_i;
  output ready_and_o;
  output v_o;
  wire [31:0] quotient_o,remainder_o;
  wire ready_and_o,v_o,divisor_msb,dividend_msb,signed_div_r,latch_signed_div_lo,
  zero_divisor_li,_2_net__0_,opA_ld_lo,opB_ld_lo,opC_ld_lo,opA_inv_lo,opA_clr_lo,
  opB_inv_lo,opB_clr_lo,adder1_cin_lo,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,
  N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,
  N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,
  N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,
  N95,N96,N97;
  wire [32:32] opA_r,opC_r;
  wire [32:0] opA_mux,add1_out,opB_mux,opC_mux,opB_r,add1_in0,add1_in1;
  wire [1:0] opA_sel_lo;
  wire [2:0] opB_sel_lo,opC_sel_lo;

  bsg_dff_en_width_p1
  req_reg
  (
    .clk_i(clk_i),
    .data_i(signed_div_i),
    .en_i(latch_signed_div_lo),
    .data_o(signed_div_r)
  );


  bsg_mux_one_hot_width_p33_els_p2
  muxA
  (
    .data_i({ divisor_msb, divisor_i, add1_out }),
    .sel_one_hot_i(opA_sel_lo),
    .data_o(opA_mux)
  );


  bsg_mux_one_hot_width_p33_els_p3
  \genblk1.muxB 
  (
    .data_i({ opC_r[32:32], quotient_o, add1_out, add1_out[31:0], opC_r[32:32] }),
    .sel_one_hot_i(opB_sel_lo),
    .data_o(opB_mux)
  );


  bsg_mux_one_hot_width_p33_els_p3
  \genblk1.muxC 
  (
    .data_i({ dividend_msb, dividend_i, add1_out, quotient_o, _2_net__0_ }),
    .sel_one_hot_i(opC_sel_lo),
    .data_o(opC_mux)
  );


  bsg_dff_en_width_p33
  opA_reg
  (
    .clk_i(clk_i),
    .data_i(opA_mux),
    .en_i(opA_ld_lo),
    .data_o({ opA_r[32:32], remainder_o })
  );


  bsg_dff_en_width_p33
  opB_reg
  (
    .clk_i(clk_i),
    .data_i(opB_mux),
    .en_i(opB_ld_lo),
    .data_o(opB_r)
  );


  bsg_dff_en_width_p33
  opC_reg
  (
    .clk_i(clk_i),
    .data_i(opC_mux),
    .en_i(opC_ld_lo),
    .data_o({ opC_r[32:32], quotient_o })
  );


  bsg_adder_cin_width_p33
  adder1
  (
    .a_i(add1_in0),
    .b_i(add1_in1),
    .cin_i(adder1_cin_lo),
    .o(add1_out)
  );


  bsg_idiv_iterative_controller_width_p32_bits_per_iter_p1
  control
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_and_o(ready_and_o),
    .zero_divisor_i(zero_divisor_li),
    .signed_div_r_i(signed_div_r),
    .adder1_result_is_neg_i(add1_out[32]),
    .adder2_result_is_neg_i(1'b0),
    .opA_is_neg_i(opA_r[32]),
    .opC_is_neg_i(opC_r[32]),
    .opA_sel_o(opA_sel_lo),
    .opA_ld_o(opA_ld_lo),
    .opA_inv_o(opA_inv_lo),
    .opA_clr_l_o(opA_clr_lo),
    .opB_sel_o(opB_sel_lo),
    .opB_ld_o(opB_ld_lo),
    .opB_inv_o(opB_inv_lo),
    .opB_clr_l_o(opB_clr_lo),
    .opC_sel_o(opC_sel_lo),
    .opC_ld_o(opC_ld_lo),
    .latch_signed_div_o(latch_signed_div_lo),
    .adder1_cin_o(adder1_cin_lo),
    .v_o(v_o),
    .yumi_i(yumi_i)
  );

  assign divisor_msb = signed_div_i & divisor_i[31];
  assign dividend_msb = signed_div_i & dividend_i[31];
  assign zero_divisor_li = ~N31;
  assign N31 = N30 | remainder_o[0];
  assign N30 = N29 | remainder_o[1];
  assign N29 = N28 | remainder_o[2];
  assign N28 = N27 | remainder_o[3];
  assign N27 = N26 | remainder_o[4];
  assign N26 = N25 | remainder_o[5];
  assign N25 = N24 | remainder_o[6];
  assign N24 = N23 | remainder_o[7];
  assign N23 = N22 | remainder_o[8];
  assign N22 = N21 | remainder_o[9];
  assign N21 = N20 | remainder_o[10];
  assign N20 = N19 | remainder_o[11];
  assign N19 = N18 | remainder_o[12];
  assign N18 = N17 | remainder_o[13];
  assign N17 = N16 | remainder_o[14];
  assign N16 = N15 | remainder_o[15];
  assign N15 = N14 | remainder_o[16];
  assign N14 = N13 | remainder_o[17];
  assign N13 = N12 | remainder_o[18];
  assign N12 = N11 | remainder_o[19];
  assign N11 = N10 | remainder_o[20];
  assign N10 = N9 | remainder_o[21];
  assign N9 = N8 | remainder_o[22];
  assign N8 = N7 | remainder_o[23];
  assign N7 = N6 | remainder_o[24];
  assign N6 = N5 | remainder_o[25];
  assign N5 = N4 | remainder_o[26];
  assign N4 = N3 | remainder_o[27];
  assign N3 = N2 | remainder_o[28];
  assign N2 = N1 | remainder_o[29];
  assign N1 = N0 | remainder_o[30];
  assign N0 = opA_r[32] | remainder_o[31];
  assign _2_net__0_ = ~add1_out[32];
  assign add1_in0[32] = N32 & opA_clr_lo;
  assign N32 = opA_r[32] ^ opA_inv_lo;
  assign add1_in0[31] = N33 & opA_clr_lo;
  assign N33 = remainder_o[31] ^ opA_inv_lo;
  assign add1_in0[30] = N34 & opA_clr_lo;
  assign N34 = remainder_o[30] ^ opA_inv_lo;
  assign add1_in0[29] = N35 & opA_clr_lo;
  assign N35 = remainder_o[29] ^ opA_inv_lo;
  assign add1_in0[28] = N36 & opA_clr_lo;
  assign N36 = remainder_o[28] ^ opA_inv_lo;
  assign add1_in0[27] = N37 & opA_clr_lo;
  assign N37 = remainder_o[27] ^ opA_inv_lo;
  assign add1_in0[26] = N38 & opA_clr_lo;
  assign N38 = remainder_o[26] ^ opA_inv_lo;
  assign add1_in0[25] = N39 & opA_clr_lo;
  assign N39 = remainder_o[25] ^ opA_inv_lo;
  assign add1_in0[24] = N40 & opA_clr_lo;
  assign N40 = remainder_o[24] ^ opA_inv_lo;
  assign add1_in0[23] = N41 & opA_clr_lo;
  assign N41 = remainder_o[23] ^ opA_inv_lo;
  assign add1_in0[22] = N42 & opA_clr_lo;
  assign N42 = remainder_o[22] ^ opA_inv_lo;
  assign add1_in0[21] = N43 & opA_clr_lo;
  assign N43 = remainder_o[21] ^ opA_inv_lo;
  assign add1_in0[20] = N44 & opA_clr_lo;
  assign N44 = remainder_o[20] ^ opA_inv_lo;
  assign add1_in0[19] = N45 & opA_clr_lo;
  assign N45 = remainder_o[19] ^ opA_inv_lo;
  assign add1_in0[18] = N46 & opA_clr_lo;
  assign N46 = remainder_o[18] ^ opA_inv_lo;
  assign add1_in0[17] = N47 & opA_clr_lo;
  assign N47 = remainder_o[17] ^ opA_inv_lo;
  assign add1_in0[16] = N48 & opA_clr_lo;
  assign N48 = remainder_o[16] ^ opA_inv_lo;
  assign add1_in0[15] = N49 & opA_clr_lo;
  assign N49 = remainder_o[15] ^ opA_inv_lo;
  assign add1_in0[14] = N50 & opA_clr_lo;
  assign N50 = remainder_o[14] ^ opA_inv_lo;
  assign add1_in0[13] = N51 & opA_clr_lo;
  assign N51 = remainder_o[13] ^ opA_inv_lo;
  assign add1_in0[12] = N52 & opA_clr_lo;
  assign N52 = remainder_o[12] ^ opA_inv_lo;
  assign add1_in0[11] = N53 & opA_clr_lo;
  assign N53 = remainder_o[11] ^ opA_inv_lo;
  assign add1_in0[10] = N54 & opA_clr_lo;
  assign N54 = remainder_o[10] ^ opA_inv_lo;
  assign add1_in0[9] = N55 & opA_clr_lo;
  assign N55 = remainder_o[9] ^ opA_inv_lo;
  assign add1_in0[8] = N56 & opA_clr_lo;
  assign N56 = remainder_o[8] ^ opA_inv_lo;
  assign add1_in0[7] = N57 & opA_clr_lo;
  assign N57 = remainder_o[7] ^ opA_inv_lo;
  assign add1_in0[6] = N58 & opA_clr_lo;
  assign N58 = remainder_o[6] ^ opA_inv_lo;
  assign add1_in0[5] = N59 & opA_clr_lo;
  assign N59 = remainder_o[5] ^ opA_inv_lo;
  assign add1_in0[4] = N60 & opA_clr_lo;
  assign N60 = remainder_o[4] ^ opA_inv_lo;
  assign add1_in0[3] = N61 & opA_clr_lo;
  assign N61 = remainder_o[3] ^ opA_inv_lo;
  assign add1_in0[2] = N62 & opA_clr_lo;
  assign N62 = remainder_o[2] ^ opA_inv_lo;
  assign add1_in0[1] = N63 & opA_clr_lo;
  assign N63 = remainder_o[1] ^ opA_inv_lo;
  assign add1_in0[0] = N64 & opA_clr_lo;
  assign N64 = remainder_o[0] ^ opA_inv_lo;
  assign add1_in1[32] = N65 & opB_clr_lo;
  assign N65 = opB_r[32] ^ opB_inv_lo;
  assign add1_in1[31] = N66 & opB_clr_lo;
  assign N66 = opB_r[31] ^ opB_inv_lo;
  assign add1_in1[30] = N67 & opB_clr_lo;
  assign N67 = opB_r[30] ^ opB_inv_lo;
  assign add1_in1[29] = N68 & opB_clr_lo;
  assign N68 = opB_r[29] ^ opB_inv_lo;
  assign add1_in1[28] = N69 & opB_clr_lo;
  assign N69 = opB_r[28] ^ opB_inv_lo;
  assign add1_in1[27] = N70 & opB_clr_lo;
  assign N70 = opB_r[27] ^ opB_inv_lo;
  assign add1_in1[26] = N71 & opB_clr_lo;
  assign N71 = opB_r[26] ^ opB_inv_lo;
  assign add1_in1[25] = N72 & opB_clr_lo;
  assign N72 = opB_r[25] ^ opB_inv_lo;
  assign add1_in1[24] = N73 & opB_clr_lo;
  assign N73 = opB_r[24] ^ opB_inv_lo;
  assign add1_in1[23] = N74 & opB_clr_lo;
  assign N74 = opB_r[23] ^ opB_inv_lo;
  assign add1_in1[22] = N75 & opB_clr_lo;
  assign N75 = opB_r[22] ^ opB_inv_lo;
  assign add1_in1[21] = N76 & opB_clr_lo;
  assign N76 = opB_r[21] ^ opB_inv_lo;
  assign add1_in1[20] = N77 & opB_clr_lo;
  assign N77 = opB_r[20] ^ opB_inv_lo;
  assign add1_in1[19] = N78 & opB_clr_lo;
  assign N78 = opB_r[19] ^ opB_inv_lo;
  assign add1_in1[18] = N79 & opB_clr_lo;
  assign N79 = opB_r[18] ^ opB_inv_lo;
  assign add1_in1[17] = N80 & opB_clr_lo;
  assign N80 = opB_r[17] ^ opB_inv_lo;
  assign add1_in1[16] = N81 & opB_clr_lo;
  assign N81 = opB_r[16] ^ opB_inv_lo;
  assign add1_in1[15] = N82 & opB_clr_lo;
  assign N82 = opB_r[15] ^ opB_inv_lo;
  assign add1_in1[14] = N83 & opB_clr_lo;
  assign N83 = opB_r[14] ^ opB_inv_lo;
  assign add1_in1[13] = N84 & opB_clr_lo;
  assign N84 = opB_r[13] ^ opB_inv_lo;
  assign add1_in1[12] = N85 & opB_clr_lo;
  assign N85 = opB_r[12] ^ opB_inv_lo;
  assign add1_in1[11] = N86 & opB_clr_lo;
  assign N86 = opB_r[11] ^ opB_inv_lo;
  assign add1_in1[10] = N87 & opB_clr_lo;
  assign N87 = opB_r[10] ^ opB_inv_lo;
  assign add1_in1[9] = N88 & opB_clr_lo;
  assign N88 = opB_r[9] ^ opB_inv_lo;
  assign add1_in1[8] = N89 & opB_clr_lo;
  assign N89 = opB_r[8] ^ opB_inv_lo;
  assign add1_in1[7] = N90 & opB_clr_lo;
  assign N90 = opB_r[7] ^ opB_inv_lo;
  assign add1_in1[6] = N91 & opB_clr_lo;
  assign N91 = opB_r[6] ^ opB_inv_lo;
  assign add1_in1[5] = N92 & opB_clr_lo;
  assign N92 = opB_r[5] ^ opB_inv_lo;
  assign add1_in1[4] = N93 & opB_clr_lo;
  assign N93 = opB_r[4] ^ opB_inv_lo;
  assign add1_in1[3] = N94 & opB_clr_lo;
  assign N94 = opB_r[3] ^ opB_inv_lo;
  assign add1_in1[2] = N95 & opB_clr_lo;
  assign N95 = opB_r[2] ^ opB_inv_lo;
  assign add1_in1[1] = N96 & opB_clr_lo;
  assign N96 = opB_r[1] ^ opB_inv_lo;
  assign add1_in1[0] = N97 & opB_clr_lo;
  assign N97 = opB_r[0] ^ opB_inv_lo;

endmodule

