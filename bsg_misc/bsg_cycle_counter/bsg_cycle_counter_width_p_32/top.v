

module top
(
  clk_i,
  reset_i,
  ctr_r_o
);

  output [31:0] ctr_r_o;
  input clk_i;
  input reset_i;

  bsg_cycle_counter
  wrapper
  (
    .ctr_r_o(ctr_r_o),
    .clk_i(clk_i),
    .reset_i(reset_i)
  );


endmodule



module bsg_cycle_counter
(
  clk_i,
  reset_i,
  ctr_r_o
);

  output [31:0] ctr_r_o;
  input clk_i;
  input reset_i;
  wire [31:0] ctr_r_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32;
  reg ctr_r_o_31_sv2v_reg,ctr_r_o_30_sv2v_reg,ctr_r_o_29_sv2v_reg,ctr_r_o_28_sv2v_reg,
  ctr_r_o_27_sv2v_reg,ctr_r_o_26_sv2v_reg,ctr_r_o_25_sv2v_reg,ctr_r_o_24_sv2v_reg,
  ctr_r_o_23_sv2v_reg,ctr_r_o_22_sv2v_reg,ctr_r_o_21_sv2v_reg,ctr_r_o_20_sv2v_reg,
  ctr_r_o_19_sv2v_reg,ctr_r_o_18_sv2v_reg,ctr_r_o_17_sv2v_reg,ctr_r_o_16_sv2v_reg,
  ctr_r_o_15_sv2v_reg,ctr_r_o_14_sv2v_reg,ctr_r_o_13_sv2v_reg,ctr_r_o_12_sv2v_reg,
  ctr_r_o_11_sv2v_reg,ctr_r_o_10_sv2v_reg,ctr_r_o_9_sv2v_reg,ctr_r_o_8_sv2v_reg,
  ctr_r_o_7_sv2v_reg,ctr_r_o_6_sv2v_reg,ctr_r_o_5_sv2v_reg,ctr_r_o_4_sv2v_reg,
  ctr_r_o_3_sv2v_reg,ctr_r_o_2_sv2v_reg,ctr_r_o_1_sv2v_reg,ctr_r_o_0_sv2v_reg;
  assign ctr_r_o[31] = ctr_r_o_31_sv2v_reg;
  assign ctr_r_o[30] = ctr_r_o_30_sv2v_reg;
  assign ctr_r_o[29] = ctr_r_o_29_sv2v_reg;
  assign ctr_r_o[28] = ctr_r_o_28_sv2v_reg;
  assign ctr_r_o[27] = ctr_r_o_27_sv2v_reg;
  assign ctr_r_o[26] = ctr_r_o_26_sv2v_reg;
  assign ctr_r_o[25] = ctr_r_o_25_sv2v_reg;
  assign ctr_r_o[24] = ctr_r_o_24_sv2v_reg;
  assign ctr_r_o[23] = ctr_r_o_23_sv2v_reg;
  assign ctr_r_o[22] = ctr_r_o_22_sv2v_reg;
  assign ctr_r_o[21] = ctr_r_o_21_sv2v_reg;
  assign ctr_r_o[20] = ctr_r_o_20_sv2v_reg;
  assign ctr_r_o[19] = ctr_r_o_19_sv2v_reg;
  assign ctr_r_o[18] = ctr_r_o_18_sv2v_reg;
  assign ctr_r_o[17] = ctr_r_o_17_sv2v_reg;
  assign ctr_r_o[16] = ctr_r_o_16_sv2v_reg;
  assign ctr_r_o[15] = ctr_r_o_15_sv2v_reg;
  assign ctr_r_o[14] = ctr_r_o_14_sv2v_reg;
  assign ctr_r_o[13] = ctr_r_o_13_sv2v_reg;
  assign ctr_r_o[12] = ctr_r_o_12_sv2v_reg;
  assign ctr_r_o[11] = ctr_r_o_11_sv2v_reg;
  assign ctr_r_o[10] = ctr_r_o_10_sv2v_reg;
  assign ctr_r_o[9] = ctr_r_o_9_sv2v_reg;
  assign ctr_r_o[8] = ctr_r_o_8_sv2v_reg;
  assign ctr_r_o[7] = ctr_r_o_7_sv2v_reg;
  assign ctr_r_o[6] = ctr_r_o_6_sv2v_reg;
  assign ctr_r_o[5] = ctr_r_o_5_sv2v_reg;
  assign ctr_r_o[4] = ctr_r_o_4_sv2v_reg;
  assign ctr_r_o[3] = ctr_r_o_3_sv2v_reg;
  assign ctr_r_o[2] = ctr_r_o_2_sv2v_reg;
  assign ctr_r_o[1] = ctr_r_o_1_sv2v_reg;
  assign ctr_r_o[0] = ctr_r_o_0_sv2v_reg;
  assign { N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1 } = ctr_r_o + 1'b1;
  assign N0 = ~reset_i;

  always @(posedge clk_i) begin
    if(reset_i) begin
      ctr_r_o_31_sv2v_reg <= 1'b0;
      ctr_r_o_30_sv2v_reg <= 1'b0;
      ctr_r_o_29_sv2v_reg <= 1'b0;
      ctr_r_o_28_sv2v_reg <= 1'b0;
      ctr_r_o_27_sv2v_reg <= 1'b0;
      ctr_r_o_26_sv2v_reg <= 1'b0;
      ctr_r_o_25_sv2v_reg <= 1'b0;
      ctr_r_o_24_sv2v_reg <= 1'b0;
      ctr_r_o_23_sv2v_reg <= 1'b0;
      ctr_r_o_22_sv2v_reg <= 1'b0;
      ctr_r_o_21_sv2v_reg <= 1'b0;
      ctr_r_o_20_sv2v_reg <= 1'b0;
      ctr_r_o_19_sv2v_reg <= 1'b0;
      ctr_r_o_18_sv2v_reg <= 1'b0;
      ctr_r_o_17_sv2v_reg <= 1'b0;
      ctr_r_o_16_sv2v_reg <= 1'b0;
      ctr_r_o_15_sv2v_reg <= 1'b0;
      ctr_r_o_14_sv2v_reg <= 1'b0;
      ctr_r_o_13_sv2v_reg <= 1'b0;
      ctr_r_o_12_sv2v_reg <= 1'b0;
      ctr_r_o_11_sv2v_reg <= 1'b0;
      ctr_r_o_10_sv2v_reg <= 1'b0;
      ctr_r_o_9_sv2v_reg <= 1'b0;
      ctr_r_o_8_sv2v_reg <= 1'b0;
      ctr_r_o_7_sv2v_reg <= 1'b0;
      ctr_r_o_6_sv2v_reg <= 1'b0;
      ctr_r_o_5_sv2v_reg <= 1'b0;
      ctr_r_o_4_sv2v_reg <= 1'b0;
      ctr_r_o_3_sv2v_reg <= 1'b0;
      ctr_r_o_2_sv2v_reg <= 1'b0;
      ctr_r_o_1_sv2v_reg <= 1'b0;
      ctr_r_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      ctr_r_o_31_sv2v_reg <= N32;
      ctr_r_o_30_sv2v_reg <= N31;
      ctr_r_o_29_sv2v_reg <= N30;
      ctr_r_o_28_sv2v_reg <= N29;
      ctr_r_o_27_sv2v_reg <= N28;
      ctr_r_o_26_sv2v_reg <= N27;
      ctr_r_o_25_sv2v_reg <= N26;
      ctr_r_o_24_sv2v_reg <= N25;
      ctr_r_o_23_sv2v_reg <= N24;
      ctr_r_o_22_sv2v_reg <= N23;
      ctr_r_o_21_sv2v_reg <= N22;
      ctr_r_o_20_sv2v_reg <= N21;
      ctr_r_o_19_sv2v_reg <= N20;
      ctr_r_o_18_sv2v_reg <= N19;
      ctr_r_o_17_sv2v_reg <= N18;
      ctr_r_o_16_sv2v_reg <= N17;
      ctr_r_o_15_sv2v_reg <= N16;
      ctr_r_o_14_sv2v_reg <= N15;
      ctr_r_o_13_sv2v_reg <= N14;
      ctr_r_o_12_sv2v_reg <= N13;
      ctr_r_o_11_sv2v_reg <= N12;
      ctr_r_o_10_sv2v_reg <= N11;
      ctr_r_o_9_sv2v_reg <= N10;
      ctr_r_o_8_sv2v_reg <= N9;
      ctr_r_o_7_sv2v_reg <= N8;
      ctr_r_o_6_sv2v_reg <= N7;
      ctr_r_o_5_sv2v_reg <= N6;
      ctr_r_o_4_sv2v_reg <= N5;
      ctr_r_o_3_sv2v_reg <= N4;
      ctr_r_o_2_sv2v_reg <= N3;
      ctr_r_o_1_sv2v_reg <= N2;
      ctr_r_o_0_sv2v_reg <= N1;
    end 
  end


endmodule

