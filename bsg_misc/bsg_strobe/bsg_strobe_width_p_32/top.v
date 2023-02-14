

module top
(
  clk_i,
  reset_r_i,
  init_val_r_i,
  strobe_r_o
);

  input [31:0] init_val_r_i;
  input clk_i;
  input reset_r_i;
  output strobe_r_o;

  bsg_strobe
  wrapper
  (
    .init_val_r_i(init_val_r_i),
    .clk_i(clk_i),
    .reset_r_i(reset_r_i),
    .strobe_r_o(strobe_r_o)
  );


endmodule



module bsg_dff_width_p31_harden_p0_strength_p2
(
  clk_i,
  data_i,
  data_o
);

  input [30:0] data_i;
  output [30:0] data_o;
  input clk_i;
  wire [30:0] data_o;
  reg data_o_30_sv2v_reg,data_o_29_sv2v_reg,data_o_28_sv2v_reg,data_o_27_sv2v_reg,
  data_o_26_sv2v_reg,data_o_25_sv2v_reg,data_o_24_sv2v_reg,data_o_23_sv2v_reg,
  data_o_22_sv2v_reg,data_o_21_sv2v_reg,data_o_20_sv2v_reg,data_o_19_sv2v_reg,
  data_o_18_sv2v_reg,data_o_17_sv2v_reg,data_o_16_sv2v_reg,data_o_15_sv2v_reg,
  data_o_14_sv2v_reg,data_o_13_sv2v_reg,data_o_12_sv2v_reg,data_o_11_sv2v_reg,data_o_10_sv2v_reg,
  data_o_9_sv2v_reg,data_o_8_sv2v_reg,data_o_7_sv2v_reg,data_o_6_sv2v_reg,
  data_o_5_sv2v_reg,data_o_4_sv2v_reg,data_o_3_sv2v_reg,data_o_2_sv2v_reg,
  data_o_1_sv2v_reg,data_o_0_sv2v_reg;
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
    if(1'b1) begin
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



module bsg_xnor_width_p32_harden_p1
(
  a_i,
  b_i,
  o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] o;
  wire [31:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31;
  assign o[31] = ~N0;
  assign N0 = a_i[31] ^ b_i[31];
  assign o[30] = ~N1;
  assign N1 = a_i[30] ^ b_i[30];
  assign o[29] = ~N2;
  assign N2 = a_i[29] ^ b_i[29];
  assign o[28] = ~N3;
  assign N3 = a_i[28] ^ b_i[28];
  assign o[27] = ~N4;
  assign N4 = a_i[27] ^ b_i[27];
  assign o[26] = ~N5;
  assign N5 = a_i[26] ^ b_i[26];
  assign o[25] = ~N6;
  assign N6 = a_i[25] ^ b_i[25];
  assign o[24] = ~N7;
  assign N7 = a_i[24] ^ b_i[24];
  assign o[23] = ~N8;
  assign N8 = a_i[23] ^ b_i[23];
  assign o[22] = ~N9;
  assign N9 = a_i[22] ^ b_i[22];
  assign o[21] = ~N10;
  assign N10 = a_i[21] ^ b_i[21];
  assign o[20] = ~N11;
  assign N11 = a_i[20] ^ b_i[20];
  assign o[19] = ~N12;
  assign N12 = a_i[19] ^ b_i[19];
  assign o[18] = ~N13;
  assign N13 = a_i[18] ^ b_i[18];
  assign o[17] = ~N14;
  assign N14 = a_i[17] ^ b_i[17];
  assign o[16] = ~N15;
  assign N15 = a_i[16] ^ b_i[16];
  assign o[15] = ~N16;
  assign N16 = a_i[15] ^ b_i[15];
  assign o[14] = ~N17;
  assign N17 = a_i[14] ^ b_i[14];
  assign o[13] = ~N18;
  assign N18 = a_i[13] ^ b_i[13];
  assign o[12] = ~N19;
  assign N19 = a_i[12] ^ b_i[12];
  assign o[11] = ~N20;
  assign N20 = a_i[11] ^ b_i[11];
  assign o[10] = ~N21;
  assign N21 = a_i[10] ^ b_i[10];
  assign o[9] = ~N22;
  assign N22 = a_i[9] ^ b_i[9];
  assign o[8] = ~N23;
  assign N23 = a_i[8] ^ b_i[8];
  assign o[7] = ~N24;
  assign N24 = a_i[7] ^ b_i[7];
  assign o[6] = ~N25;
  assign N25 = a_i[6] ^ b_i[6];
  assign o[5] = ~N26;
  assign N26 = a_i[5] ^ b_i[5];
  assign o[4] = ~N27;
  assign N27 = a_i[4] ^ b_i[4];
  assign o[3] = ~N28;
  assign N28 = a_i[3] ^ b_i[3];
  assign o[2] = ~N29;
  assign N29 = a_i[2] ^ b_i[2];
  assign o[1] = ~N30;
  assign N30 = a_i[1] ^ b_i[1];
  assign o[0] = ~N31;
  assign N31 = a_i[0] ^ b_i[0];

endmodule



module bsg_muxi2_gatestack_width_p32_harden_p1
(
  i0,
  i1,
  i2,
  o
);

  input [31:0] i0;
  input [31:0] i1;
  input [31:0] i2;
  output [31:0] o;
  wire [31:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95;
  assign N33 = (N0)? i1[0] : 
               (N32)? i0[0] : 1'b0;
  assign N0 = i2[0];
  assign N35 = (N1)? i1[1] : 
               (N34)? i0[1] : 1'b0;
  assign N1 = i2[1];
  assign N37 = (N2)? i1[2] : 
               (N36)? i0[2] : 1'b0;
  assign N2 = i2[2];
  assign N39 = (N3)? i1[3] : 
               (N38)? i0[3] : 1'b0;
  assign N3 = i2[3];
  assign N41 = (N4)? i1[4] : 
               (N40)? i0[4] : 1'b0;
  assign N4 = i2[4];
  assign N43 = (N5)? i1[5] : 
               (N42)? i0[5] : 1'b0;
  assign N5 = i2[5];
  assign N45 = (N6)? i1[6] : 
               (N44)? i0[6] : 1'b0;
  assign N6 = i2[6];
  assign N47 = (N7)? i1[7] : 
               (N46)? i0[7] : 1'b0;
  assign N7 = i2[7];
  assign N49 = (N8)? i1[8] : 
               (N48)? i0[8] : 1'b0;
  assign N8 = i2[8];
  assign N51 = (N9)? i1[9] : 
               (N50)? i0[9] : 1'b0;
  assign N9 = i2[9];
  assign N53 = (N10)? i1[10] : 
               (N52)? i0[10] : 1'b0;
  assign N10 = i2[10];
  assign N55 = (N11)? i1[11] : 
               (N54)? i0[11] : 1'b0;
  assign N11 = i2[11];
  assign N57 = (N12)? i1[12] : 
               (N56)? i0[12] : 1'b0;
  assign N12 = i2[12];
  assign N59 = (N13)? i1[13] : 
               (N58)? i0[13] : 1'b0;
  assign N13 = i2[13];
  assign N61 = (N14)? i1[14] : 
               (N60)? i0[14] : 1'b0;
  assign N14 = i2[14];
  assign N63 = (N15)? i1[15] : 
               (N62)? i0[15] : 1'b0;
  assign N15 = i2[15];
  assign N65 = (N16)? i1[16] : 
               (N64)? i0[16] : 1'b0;
  assign N16 = i2[16];
  assign N67 = (N17)? i1[17] : 
               (N66)? i0[17] : 1'b0;
  assign N17 = i2[17];
  assign N69 = (N18)? i1[18] : 
               (N68)? i0[18] : 1'b0;
  assign N18 = i2[18];
  assign N71 = (N19)? i1[19] : 
               (N70)? i0[19] : 1'b0;
  assign N19 = i2[19];
  assign N73 = (N20)? i1[20] : 
               (N72)? i0[20] : 1'b0;
  assign N20 = i2[20];
  assign N75 = (N21)? i1[21] : 
               (N74)? i0[21] : 1'b0;
  assign N21 = i2[21];
  assign N77 = (N22)? i1[22] : 
               (N76)? i0[22] : 1'b0;
  assign N22 = i2[22];
  assign N79 = (N23)? i1[23] : 
               (N78)? i0[23] : 1'b0;
  assign N23 = i2[23];
  assign N81 = (N24)? i1[24] : 
               (N80)? i0[24] : 1'b0;
  assign N24 = i2[24];
  assign N83 = (N25)? i1[25] : 
               (N82)? i0[25] : 1'b0;
  assign N25 = i2[25];
  assign N85 = (N26)? i1[26] : 
               (N84)? i0[26] : 1'b0;
  assign N26 = i2[26];
  assign N87 = (N27)? i1[27] : 
               (N86)? i0[27] : 1'b0;
  assign N27 = i2[27];
  assign N89 = (N28)? i1[28] : 
               (N88)? i0[28] : 1'b0;
  assign N28 = i2[28];
  assign N91 = (N29)? i1[29] : 
               (N90)? i0[29] : 1'b0;
  assign N29 = i2[29];
  assign N93 = (N30)? i1[30] : 
               (N92)? i0[30] : 1'b0;
  assign N30 = i2[30];
  assign N95 = (N31)? i1[31] : 
               (N94)? i0[31] : 1'b0;
  assign N31 = i2[31];
  assign N32 = ~i2[0];
  assign o[0] = ~N33;
  assign N34 = ~i2[1];
  assign o[1] = ~N35;
  assign N36 = ~i2[2];
  assign o[2] = ~N37;
  assign N38 = ~i2[3];
  assign o[3] = ~N39;
  assign N40 = ~i2[4];
  assign o[4] = ~N41;
  assign N42 = ~i2[5];
  assign o[5] = ~N43;
  assign N44 = ~i2[6];
  assign o[6] = ~N45;
  assign N46 = ~i2[7];
  assign o[7] = ~N47;
  assign N48 = ~i2[8];
  assign o[8] = ~N49;
  assign N50 = ~i2[9];
  assign o[9] = ~N51;
  assign N52 = ~i2[10];
  assign o[10] = ~N53;
  assign N54 = ~i2[11];
  assign o[11] = ~N55;
  assign N56 = ~i2[12];
  assign o[12] = ~N57;
  assign N58 = ~i2[13];
  assign o[13] = ~N59;
  assign N60 = ~i2[14];
  assign o[14] = ~N61;
  assign N62 = ~i2[15];
  assign o[15] = ~N63;
  assign N64 = ~i2[16];
  assign o[16] = ~N65;
  assign N66 = ~i2[17];
  assign o[17] = ~N67;
  assign N68 = ~i2[18];
  assign o[18] = ~N69;
  assign N70 = ~i2[19];
  assign o[19] = ~N71;
  assign N72 = ~i2[20];
  assign o[20] = ~N73;
  assign N74 = ~i2[21];
  assign o[21] = ~N75;
  assign N76 = ~i2[22];
  assign o[22] = ~N77;
  assign N78 = ~i2[23];
  assign o[23] = ~N79;
  assign N80 = ~i2[24];
  assign o[24] = ~N81;
  assign N82 = ~i2[25];
  assign o[25] = ~N83;
  assign N84 = ~i2[26];
  assign o[26] = ~N85;
  assign N86 = ~i2[27];
  assign o[27] = ~N87;
  assign N88 = ~i2[28];
  assign o[28] = ~N89;
  assign N90 = ~i2[29];
  assign o[29] = ~N91;
  assign N92 = ~i2[30];
  assign o[30] = ~N93;
  assign N94 = ~i2[31];
  assign o[31] = ~N95;

endmodule



module bsg_dff_width_p32_harden_p0_strength_p4
(
  clk_i,
  data_i,
  data_o
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  wire [31:0] data_o;
  reg data_o_31_sv2v_reg,data_o_30_sv2v_reg,data_o_29_sv2v_reg,data_o_28_sv2v_reg,
  data_o_27_sv2v_reg,data_o_26_sv2v_reg,data_o_25_sv2v_reg,data_o_24_sv2v_reg,
  data_o_23_sv2v_reg,data_o_22_sv2v_reg,data_o_21_sv2v_reg,data_o_20_sv2v_reg,
  data_o_19_sv2v_reg,data_o_18_sv2v_reg,data_o_17_sv2v_reg,data_o_16_sv2v_reg,
  data_o_15_sv2v_reg,data_o_14_sv2v_reg,data_o_13_sv2v_reg,data_o_12_sv2v_reg,data_o_11_sv2v_reg,
  data_o_10_sv2v_reg,data_o_9_sv2v_reg,data_o_8_sv2v_reg,data_o_7_sv2v_reg,
  data_o_6_sv2v_reg,data_o_5_sv2v_reg,data_o_4_sv2v_reg,data_o_3_sv2v_reg,
  data_o_2_sv2v_reg,data_o_1_sv2v_reg,data_o_0_sv2v_reg;
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
    if(1'b1) begin
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



module bsg_nand_width_p32_harden_p1
(
  a_i,
  b_i,
  o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] o;
  wire [31:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31;
  assign o[31] = ~N0;
  assign N0 = a_i[31] & b_i[31];
  assign o[30] = ~N1;
  assign N1 = a_i[30] & b_i[30];
  assign o[29] = ~N2;
  assign N2 = a_i[29] & b_i[29];
  assign o[28] = ~N3;
  assign N3 = a_i[28] & b_i[28];
  assign o[27] = ~N4;
  assign N4 = a_i[27] & b_i[27];
  assign o[26] = ~N5;
  assign N5 = a_i[26] & b_i[26];
  assign o[25] = ~N6;
  assign N6 = a_i[25] & b_i[25];
  assign o[24] = ~N7;
  assign N7 = a_i[24] & b_i[24];
  assign o[23] = ~N8;
  assign N8 = a_i[23] & b_i[23];
  assign o[22] = ~N9;
  assign N9 = a_i[22] & b_i[22];
  assign o[21] = ~N10;
  assign N10 = a_i[21] & b_i[21];
  assign o[20] = ~N11;
  assign N11 = a_i[20] & b_i[20];
  assign o[19] = ~N12;
  assign N12 = a_i[19] & b_i[19];
  assign o[18] = ~N13;
  assign N13 = a_i[18] & b_i[18];
  assign o[17] = ~N14;
  assign N14 = a_i[17] & b_i[17];
  assign o[16] = ~N15;
  assign N15 = a_i[16] & b_i[16];
  assign o[15] = ~N16;
  assign N16 = a_i[15] & b_i[15];
  assign o[14] = ~N17;
  assign N17 = a_i[14] & b_i[14];
  assign o[13] = ~N18;
  assign N18 = a_i[13] & b_i[13];
  assign o[12] = ~N19;
  assign N19 = a_i[12] & b_i[12];
  assign o[11] = ~N20;
  assign N20 = a_i[11] & b_i[11];
  assign o[10] = ~N21;
  assign N21 = a_i[10] & b_i[10];
  assign o[9] = ~N22;
  assign N22 = a_i[9] & b_i[9];
  assign o[8] = ~N23;
  assign N23 = a_i[8] & b_i[8];
  assign o[7] = ~N24;
  assign N24 = a_i[7] & b_i[7];
  assign o[6] = ~N25;
  assign N25 = a_i[6] & b_i[6];
  assign o[5] = ~N26;
  assign N26 = a_i[5] & b_i[5];
  assign o[4] = ~N27;
  assign N27 = a_i[4] & b_i[4];
  assign o[3] = ~N28;
  assign N28 = a_i[3] & b_i[3];
  assign o[2] = ~N29;
  assign N29 = a_i[2] & b_i[2];
  assign o[1] = ~N30;
  assign N30 = a_i[1] & b_i[1];
  assign o[0] = ~N31;
  assign N31 = a_i[0] & b_i[0];

endmodule



module bsg_nor3_width_p31_harden_p1
(
  a_i,
  b_i,
  c_i,
  o
);

  input [30:0] a_i;
  input [30:0] b_i;
  input [30:0] c_i;
  output [30:0] o;
  wire [30:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61;
  assign o[30] = ~N1;
  assign N1 = N0 | c_i[30];
  assign N0 = a_i[30] | b_i[30];
  assign o[29] = ~N3;
  assign N3 = N2 | c_i[29];
  assign N2 = a_i[29] | b_i[29];
  assign o[28] = ~N5;
  assign N5 = N4 | c_i[28];
  assign N4 = a_i[28] | b_i[28];
  assign o[27] = ~N7;
  assign N7 = N6 | c_i[27];
  assign N6 = a_i[27] | b_i[27];
  assign o[26] = ~N9;
  assign N9 = N8 | c_i[26];
  assign N8 = a_i[26] | b_i[26];
  assign o[25] = ~N11;
  assign N11 = N10 | c_i[25];
  assign N10 = a_i[25] | b_i[25];
  assign o[24] = ~N13;
  assign N13 = N12 | c_i[24];
  assign N12 = a_i[24] | b_i[24];
  assign o[23] = ~N15;
  assign N15 = N14 | c_i[23];
  assign N14 = a_i[23] | b_i[23];
  assign o[22] = ~N17;
  assign N17 = N16 | c_i[22];
  assign N16 = a_i[22] | b_i[22];
  assign o[21] = ~N19;
  assign N19 = N18 | c_i[21];
  assign N18 = a_i[21] | b_i[21];
  assign o[20] = ~N21;
  assign N21 = N20 | c_i[20];
  assign N20 = a_i[20] | b_i[20];
  assign o[19] = ~N23;
  assign N23 = N22 | c_i[19];
  assign N22 = a_i[19] | b_i[19];
  assign o[18] = ~N25;
  assign N25 = N24 | c_i[18];
  assign N24 = a_i[18] | b_i[18];
  assign o[17] = ~N27;
  assign N27 = N26 | c_i[17];
  assign N26 = a_i[17] | b_i[17];
  assign o[16] = ~N29;
  assign N29 = N28 | c_i[16];
  assign N28 = a_i[16] | b_i[16];
  assign o[15] = ~N31;
  assign N31 = N30 | c_i[15];
  assign N30 = a_i[15] | b_i[15];
  assign o[14] = ~N33;
  assign N33 = N32 | c_i[14];
  assign N32 = a_i[14] | b_i[14];
  assign o[13] = ~N35;
  assign N35 = N34 | c_i[13];
  assign N34 = a_i[13] | b_i[13];
  assign o[12] = ~N37;
  assign N37 = N36 | c_i[12];
  assign N36 = a_i[12] | b_i[12];
  assign o[11] = ~N39;
  assign N39 = N38 | c_i[11];
  assign N38 = a_i[11] | b_i[11];
  assign o[10] = ~N41;
  assign N41 = N40 | c_i[10];
  assign N40 = a_i[10] | b_i[10];
  assign o[9] = ~N43;
  assign N43 = N42 | c_i[9];
  assign N42 = a_i[9] | b_i[9];
  assign o[8] = ~N45;
  assign N45 = N44 | c_i[8];
  assign N44 = a_i[8] | b_i[8];
  assign o[7] = ~N47;
  assign N47 = N46 | c_i[7];
  assign N46 = a_i[7] | b_i[7];
  assign o[6] = ~N49;
  assign N49 = N48 | c_i[6];
  assign N48 = a_i[6] | b_i[6];
  assign o[5] = ~N51;
  assign N51 = N50 | c_i[5];
  assign N50 = a_i[5] | b_i[5];
  assign o[4] = ~N53;
  assign N53 = N52 | c_i[4];
  assign N52 = a_i[4] | b_i[4];
  assign o[3] = ~N55;
  assign N55 = N54 | c_i[3];
  assign N54 = a_i[3] | b_i[3];
  assign o[2] = ~N57;
  assign N57 = N56 | c_i[2];
  assign N56 = a_i[2] | b_i[2];
  assign o[1] = ~N59;
  assign N59 = N58 | c_i[1];
  assign N58 = a_i[1] | b_i[1];
  assign o[0] = ~N61;
  assign N61 = N60 | c_i[0];
  assign N60 = a_i[0] | b_i[0];

endmodule



module bsg_reduce_width_p32_and_p1_harden_p1
(
  i,
  o
);

  input [31:0] i;
  output o;
  wire o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29;
  assign o = N29 & i[0];
  assign N29 = N28 & i[1];
  assign N28 = N27 & i[2];
  assign N27 = N26 & i[3];
  assign N26 = N25 & i[4];
  assign N25 = N24 & i[5];
  assign N24 = N23 & i[6];
  assign N23 = N22 & i[7];
  assign N22 = N21 & i[8];
  assign N21 = N20 & i[9];
  assign N20 = N19 & i[10];
  assign N19 = N18 & i[11];
  assign N18 = N17 & i[12];
  assign N17 = N16 & i[13];
  assign N16 = N15 & i[14];
  assign N15 = N14 & i[15];
  assign N14 = N13 & i[16];
  assign N13 = N12 & i[17];
  assign N12 = N11 & i[18];
  assign N11 = N10 & i[19];
  assign N10 = N9 & i[20];
  assign N9 = N8 & i[21];
  assign N8 = N7 & i[22];
  assign N7 = N6 & i[23];
  assign N6 = N5 & i[24];
  assign N5 = N4 & i[25];
  assign N4 = N3 & i[26];
  assign N3 = N2 & i[27];
  assign N2 = N1 & i[28];
  assign N1 = N0 & i[29];
  assign N0 = i[31] & i[30];

endmodule



module bsg_buf_width_p1
(
  i,
  o
);

  input [0:0] i;
  output [0:0] o;
  wire [0:0] o;
  assign o[0] = i[0];

endmodule



module bsg_strobe
(
  clk_i,
  reset_r_i,
  init_val_r_i,
  strobe_r_o
);

  input [31:0] init_val_r_i;
  input clk_i;
  input reset_r_i;
  output strobe_r_o;
  wire strobe_r_o,strobe_n,new_val,strobe_n_buf;
  wire [30:0] C_n,C_r;
  wire [31:0] S_r,S_n,S_n_n,C_n_prereset;
  reg strobe_r_o_sv2v_reg;
  assign strobe_r_o = strobe_r_o_sv2v_reg;

  bsg_dff_width_p31_harden_p0_strength_p2
  C_reg
  (
    .clk_i(clk_i),
    .data_i(C_n),
    .data_o(C_r)
  );


  bsg_xnor_width_p32_harden_p1
  xnor_S_n
  (
    .a_i(S_r),
    .b_i({ C_r, 1'b1 }),
    .o(S_n)
  );


  bsg_muxi2_gatestack_width_p32_harden_p1
  muxi2_S_n
  (
    .i0(S_n),
    .i1(init_val_r_i),
    .i2({ new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val }),
    .o(S_n_n)
  );


  bsg_dff_width_p32_harden_p0_strength_p4
  S_reg
  (
    .clk_i(clk_i),
    .data_i(S_n_n),
    .data_o(S_r)
  );


  bsg_nand_width_p32_harden_p1
  nand_C_n
  (
    .a_i(S_r),
    .b_i({ C_r, 1'b1 }),
    .o(C_n_prereset)
  );


  bsg_nor3_width_p31_harden_p1
  nor3_C_n
  (
    .a_i({ strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf }),
    .b_i(C_n_prereset[30:0]),
    .c_i({ reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i }),
    .o(C_n)
  );


  bsg_reduce_width_p32_and_p1_harden_p1
  andr
  (
    .i(S_r),
    .o(strobe_n)
  );


  bsg_buf_width_p1
  strobe_buf_gate
  (
    .i(strobe_n),
    .o(strobe_n_buf)
  );

  assign new_val = reset_r_i | strobe_n;

  always @(posedge clk_i) begin
    if(1'b1) begin
      strobe_r_o_sv2v_reg <= strobe_n_buf;
    end 
  end


endmodule

