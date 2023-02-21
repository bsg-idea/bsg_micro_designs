

module top
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [30:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;

  bsg_counter_clear_up
  wrapper
  (
    .count_o(count_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_i),
    .up_i(up_i)
  );


endmodule



module bsg_counter_clear_up
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [30:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire [30:0] count_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37;
  reg count_o_30_sv2v_reg,count_o_29_sv2v_reg,count_o_28_sv2v_reg,count_o_27_sv2v_reg,
  count_o_26_sv2v_reg,count_o_25_sv2v_reg,count_o_24_sv2v_reg,count_o_23_sv2v_reg,
  count_o_22_sv2v_reg,count_o_21_sv2v_reg,count_o_20_sv2v_reg,count_o_19_sv2v_reg,
  count_o_18_sv2v_reg,count_o_17_sv2v_reg,count_o_16_sv2v_reg,count_o_15_sv2v_reg,
  count_o_14_sv2v_reg,count_o_13_sv2v_reg,count_o_12_sv2v_reg,count_o_11_sv2v_reg,
  count_o_10_sv2v_reg,count_o_9_sv2v_reg,count_o_8_sv2v_reg,count_o_7_sv2v_reg,
  count_o_6_sv2v_reg,count_o_5_sv2v_reg,count_o_4_sv2v_reg,count_o_3_sv2v_reg,
  count_o_2_sv2v_reg,count_o_1_sv2v_reg,count_o_0_sv2v_reg;
  assign count_o[30] = count_o_30_sv2v_reg;
  assign count_o[29] = count_o_29_sv2v_reg;
  assign count_o[28] = count_o_28_sv2v_reg;
  assign count_o[27] = count_o_27_sv2v_reg;
  assign count_o[26] = count_o_26_sv2v_reg;
  assign count_o[25] = count_o_25_sv2v_reg;
  assign count_o[24] = count_o_24_sv2v_reg;
  assign count_o[23] = count_o_23_sv2v_reg;
  assign count_o[22] = count_o_22_sv2v_reg;
  assign count_o[21] = count_o_21_sv2v_reg;
  assign count_o[20] = count_o_20_sv2v_reg;
  assign count_o[19] = count_o_19_sv2v_reg;
  assign count_o[18] = count_o_18_sv2v_reg;
  assign count_o[17] = count_o_17_sv2v_reg;
  assign count_o[16] = count_o_16_sv2v_reg;
  assign count_o[15] = count_o_15_sv2v_reg;
  assign count_o[14] = count_o_14_sv2v_reg;
  assign count_o[13] = count_o_13_sv2v_reg;
  assign count_o[12] = count_o_12_sv2v_reg;
  assign count_o[11] = count_o_11_sv2v_reg;
  assign count_o[10] = count_o_10_sv2v_reg;
  assign count_o[9] = count_o_9_sv2v_reg;
  assign count_o[8] = count_o_8_sv2v_reg;
  assign count_o[7] = count_o_7_sv2v_reg;
  assign count_o[6] = count_o_6_sv2v_reg;
  assign count_o[5] = count_o_5_sv2v_reg;
  assign count_o[4] = count_o_4_sv2v_reg;
  assign count_o[3] = count_o_3_sv2v_reg;
  assign count_o[2] = count_o_2_sv2v_reg;
  assign count_o[1] = count_o_1_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;
  assign N37 = reset_i | clear_i;
  assign { N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } = count_o + up_i;
  assign N36 = (N0)? up_i : 
               (N1)? N5 : 1'b0;
  assign N0 = clear_i;
  assign N1 = N4;
  assign N2 = ~reset_i;
  assign N3 = N2;
  assign N4 = ~clear_i;

  always @(posedge clk_i) begin
    if(N37) begin
      count_o_30_sv2v_reg <= 1'b0;
      count_o_29_sv2v_reg <= 1'b0;
      count_o_28_sv2v_reg <= 1'b0;
      count_o_27_sv2v_reg <= 1'b0;
      count_o_26_sv2v_reg <= 1'b0;
      count_o_25_sv2v_reg <= 1'b0;
      count_o_24_sv2v_reg <= 1'b0;
      count_o_23_sv2v_reg <= 1'b0;
      count_o_22_sv2v_reg <= 1'b0;
      count_o_21_sv2v_reg <= 1'b0;
      count_o_20_sv2v_reg <= 1'b0;
      count_o_19_sv2v_reg <= 1'b0;
      count_o_18_sv2v_reg <= 1'b0;
      count_o_17_sv2v_reg <= 1'b0;
      count_o_16_sv2v_reg <= 1'b0;
      count_o_15_sv2v_reg <= 1'b0;
      count_o_14_sv2v_reg <= 1'b0;
      count_o_13_sv2v_reg <= 1'b0;
      count_o_12_sv2v_reg <= 1'b0;
      count_o_11_sv2v_reg <= 1'b0;
      count_o_10_sv2v_reg <= 1'b0;
      count_o_9_sv2v_reg <= 1'b0;
      count_o_8_sv2v_reg <= 1'b0;
      count_o_7_sv2v_reg <= 1'b0;
      count_o_6_sv2v_reg <= 1'b0;
      count_o_5_sv2v_reg <= 1'b0;
      count_o_4_sv2v_reg <= 1'b0;
      count_o_3_sv2v_reg <= 1'b0;
      count_o_2_sv2v_reg <= 1'b0;
      count_o_1_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      count_o_30_sv2v_reg <= N35;
      count_o_29_sv2v_reg <= N34;
      count_o_28_sv2v_reg <= N33;
      count_o_27_sv2v_reg <= N32;
      count_o_26_sv2v_reg <= N31;
      count_o_25_sv2v_reg <= N30;
      count_o_24_sv2v_reg <= N29;
      count_o_23_sv2v_reg <= N28;
      count_o_22_sv2v_reg <= N27;
      count_o_21_sv2v_reg <= N26;
      count_o_20_sv2v_reg <= N25;
      count_o_19_sv2v_reg <= N24;
      count_o_18_sv2v_reg <= N23;
      count_o_17_sv2v_reg <= N22;
      count_o_16_sv2v_reg <= N21;
      count_o_15_sv2v_reg <= N20;
      count_o_14_sv2v_reg <= N19;
      count_o_13_sv2v_reg <= N18;
      count_o_12_sv2v_reg <= N17;
      count_o_11_sv2v_reg <= N16;
      count_o_10_sv2v_reg <= N15;
      count_o_9_sv2v_reg <= N14;
      count_o_8_sv2v_reg <= N13;
      count_o_7_sv2v_reg <= N12;
      count_o_6_sv2v_reg <= N11;
      count_o_5_sv2v_reg <= N10;
      count_o_4_sv2v_reg <= N9;
      count_o_3_sv2v_reg <= N8;
      count_o_2_sv2v_reg <= N7;
      count_o_1_sv2v_reg <= N6;
    end 
    if(reset_i) begin
      count_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      count_o_0_sv2v_reg <= N36;
    end 
  end


endmodule

