

module top
(
  clk_i,
  reset_i,
  set_i,
  val_i,
  down_i,
  count_r_o
);

  input [31:0] val_i;
  output [31:0] count_r_o;
  input clk_i;
  input reset_i;
  input set_i;
  input down_i;

  bsg_counter_set_down
  wrapper
  (
    .val_i(val_i),
    .count_r_o(count_r_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .set_i(set_i),
    .down_i(down_i)
  );


endmodule



module bsg_counter_set_down
(
  clk_i,
  reset_i,
  set_i,
  val_i,
  down_i,
  count_r_o
);

  input [31:0] val_i;
  output [31:0] count_r_o;
  input clk_i;
  input reset_i;
  input set_i;
  input down_i;
  wire [31:0] count_r_o,ctr_n;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36;
  reg count_r_o_31_sv2v_reg,count_r_o_30_sv2v_reg,count_r_o_29_sv2v_reg,
  count_r_o_28_sv2v_reg,count_r_o_27_sv2v_reg,count_r_o_26_sv2v_reg,count_r_o_25_sv2v_reg,
  count_r_o_24_sv2v_reg,count_r_o_23_sv2v_reg,count_r_o_22_sv2v_reg,
  count_r_o_21_sv2v_reg,count_r_o_20_sv2v_reg,count_r_o_19_sv2v_reg,count_r_o_18_sv2v_reg,
  count_r_o_17_sv2v_reg,count_r_o_16_sv2v_reg,count_r_o_15_sv2v_reg,count_r_o_14_sv2v_reg,
  count_r_o_13_sv2v_reg,count_r_o_12_sv2v_reg,count_r_o_11_sv2v_reg,
  count_r_o_10_sv2v_reg,count_r_o_9_sv2v_reg,count_r_o_8_sv2v_reg,count_r_o_7_sv2v_reg,
  count_r_o_6_sv2v_reg,count_r_o_5_sv2v_reg,count_r_o_4_sv2v_reg,count_r_o_3_sv2v_reg,
  count_r_o_2_sv2v_reg,count_r_o_1_sv2v_reg,count_r_o_0_sv2v_reg;
  assign count_r_o[31] = count_r_o_31_sv2v_reg;
  assign count_r_o[30] = count_r_o_30_sv2v_reg;
  assign count_r_o[29] = count_r_o_29_sv2v_reg;
  assign count_r_o[28] = count_r_o_28_sv2v_reg;
  assign count_r_o[27] = count_r_o_27_sv2v_reg;
  assign count_r_o[26] = count_r_o_26_sv2v_reg;
  assign count_r_o[25] = count_r_o_25_sv2v_reg;
  assign count_r_o[24] = count_r_o_24_sv2v_reg;
  assign count_r_o[23] = count_r_o_23_sv2v_reg;
  assign count_r_o[22] = count_r_o_22_sv2v_reg;
  assign count_r_o[21] = count_r_o_21_sv2v_reg;
  assign count_r_o[20] = count_r_o_20_sv2v_reg;
  assign count_r_o[19] = count_r_o_19_sv2v_reg;
  assign count_r_o[18] = count_r_o_18_sv2v_reg;
  assign count_r_o[17] = count_r_o_17_sv2v_reg;
  assign count_r_o[16] = count_r_o_16_sv2v_reg;
  assign count_r_o[15] = count_r_o_15_sv2v_reg;
  assign count_r_o[14] = count_r_o_14_sv2v_reg;
  assign count_r_o[13] = count_r_o_13_sv2v_reg;
  assign count_r_o[12] = count_r_o_12_sv2v_reg;
  assign count_r_o[11] = count_r_o_11_sv2v_reg;
  assign count_r_o[10] = count_r_o_10_sv2v_reg;
  assign count_r_o[9] = count_r_o_9_sv2v_reg;
  assign count_r_o[8] = count_r_o_8_sv2v_reg;
  assign count_r_o[7] = count_r_o_7_sv2v_reg;
  assign count_r_o[6] = count_r_o_6_sv2v_reg;
  assign count_r_o[5] = count_r_o_5_sv2v_reg;
  assign count_r_o[4] = count_r_o_4_sv2v_reg;
  assign count_r_o[3] = count_r_o_3_sv2v_reg;
  assign count_r_o[2] = count_r_o_2_sv2v_reg;
  assign count_r_o[1] = count_r_o_1_sv2v_reg;
  assign count_r_o[0] = count_r_o_0_sv2v_reg;
  assign ctr_n = { N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } - down_i;
  assign { N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? val_i : 
                                                                                                                                                                       (N1)? count_r_o : 1'b0;
  assign N0 = set_i;
  assign N1 = N2;
  assign N2 = ~set_i;
  assign N35 = ~down_i;
  assign N36 = down_i;

  always @(posedge clk_i) begin
    if(reset_i) begin
      count_r_o_31_sv2v_reg <= 1'b0;
      count_r_o_30_sv2v_reg <= 1'b0;
      count_r_o_29_sv2v_reg <= 1'b0;
      count_r_o_28_sv2v_reg <= 1'b0;
      count_r_o_27_sv2v_reg <= 1'b0;
      count_r_o_26_sv2v_reg <= 1'b0;
      count_r_o_25_sv2v_reg <= 1'b0;
      count_r_o_24_sv2v_reg <= 1'b0;
      count_r_o_23_sv2v_reg <= 1'b0;
      count_r_o_22_sv2v_reg <= 1'b0;
      count_r_o_21_sv2v_reg <= 1'b0;
      count_r_o_20_sv2v_reg <= 1'b0;
      count_r_o_19_sv2v_reg <= 1'b0;
      count_r_o_18_sv2v_reg <= 1'b0;
      count_r_o_17_sv2v_reg <= 1'b0;
      count_r_o_16_sv2v_reg <= 1'b0;
      count_r_o_15_sv2v_reg <= 1'b0;
      count_r_o_14_sv2v_reg <= 1'b0;
      count_r_o_13_sv2v_reg <= 1'b0;
      count_r_o_12_sv2v_reg <= 1'b0;
      count_r_o_11_sv2v_reg <= 1'b0;
      count_r_o_10_sv2v_reg <= 1'b0;
      count_r_o_9_sv2v_reg <= 1'b0;
      count_r_o_8_sv2v_reg <= 1'b0;
      count_r_o_7_sv2v_reg <= 1'b0;
      count_r_o_6_sv2v_reg <= 1'b0;
      count_r_o_5_sv2v_reg <= 1'b0;
      count_r_o_4_sv2v_reg <= 1'b0;
      count_r_o_3_sv2v_reg <= 1'b0;
      count_r_o_2_sv2v_reg <= 1'b0;
      count_r_o_1_sv2v_reg <= 1'b0;
      count_r_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      count_r_o_31_sv2v_reg <= ctr_n[31];
      count_r_o_30_sv2v_reg <= ctr_n[30];
      count_r_o_29_sv2v_reg <= ctr_n[29];
      count_r_o_28_sv2v_reg <= ctr_n[28];
      count_r_o_27_sv2v_reg <= ctr_n[27];
      count_r_o_26_sv2v_reg <= ctr_n[26];
      count_r_o_25_sv2v_reg <= ctr_n[25];
      count_r_o_24_sv2v_reg <= ctr_n[24];
      count_r_o_23_sv2v_reg <= ctr_n[23];
      count_r_o_22_sv2v_reg <= ctr_n[22];
      count_r_o_21_sv2v_reg <= ctr_n[21];
      count_r_o_20_sv2v_reg <= ctr_n[20];
      count_r_o_19_sv2v_reg <= ctr_n[19];
      count_r_o_18_sv2v_reg <= ctr_n[18];
      count_r_o_17_sv2v_reg <= ctr_n[17];
      count_r_o_16_sv2v_reg <= ctr_n[16];
      count_r_o_15_sv2v_reg <= ctr_n[15];
      count_r_o_14_sv2v_reg <= ctr_n[14];
      count_r_o_13_sv2v_reg <= ctr_n[13];
      count_r_o_12_sv2v_reg <= ctr_n[12];
      count_r_o_11_sv2v_reg <= ctr_n[11];
      count_r_o_10_sv2v_reg <= ctr_n[10];
      count_r_o_9_sv2v_reg <= ctr_n[9];
      count_r_o_8_sv2v_reg <= ctr_n[8];
      count_r_o_7_sv2v_reg <= ctr_n[7];
      count_r_o_6_sv2v_reg <= ctr_n[6];
      count_r_o_5_sv2v_reg <= ctr_n[5];
      count_r_o_4_sv2v_reg <= ctr_n[4];
      count_r_o_3_sv2v_reg <= ctr_n[3];
      count_r_o_2_sv2v_reg <= ctr_n[2];
      count_r_o_1_sv2v_reg <= ctr_n[1];
      count_r_o_0_sv2v_reg <= ctr_n[0];
    end 
  end


endmodule

