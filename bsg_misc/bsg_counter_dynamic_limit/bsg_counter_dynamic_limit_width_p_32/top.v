

module top
(
  clk_i,
  reset_i,
  limit_i,
  counter_o
);

  input [31:0] limit_i;
  output [31:0] counter_o;
  input clk_i;
  input reset_i;

  bsg_counter_dynamic_limit
  wrapper
  (
    .limit_i(limit_i),
    .counter_o(counter_o),
    .clk_i(clk_i),
    .reset_i(reset_i)
  );


endmodule



module bsg_counter_dynamic_limit
(
  clk_i,
  reset_i,
  limit_i,
  counter_o
);

  input [31:0] limit_i;
  output [31:0] counter_o;
  input clk_i;
  input reset_i;
  wire [31:0] counter_o;
  wire N0,N1,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,
  N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,
  N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,
  N63,N64,N65,N66,N67,N68,N2;
  reg counter_o_31_sv2v_reg,counter_o_30_sv2v_reg,counter_o_29_sv2v_reg,
  counter_o_28_sv2v_reg,counter_o_27_sv2v_reg,counter_o_26_sv2v_reg,counter_o_25_sv2v_reg,
  counter_o_24_sv2v_reg,counter_o_23_sv2v_reg,counter_o_22_sv2v_reg,
  counter_o_21_sv2v_reg,counter_o_20_sv2v_reg,counter_o_19_sv2v_reg,counter_o_18_sv2v_reg,
  counter_o_17_sv2v_reg,counter_o_16_sv2v_reg,counter_o_15_sv2v_reg,counter_o_14_sv2v_reg,
  counter_o_13_sv2v_reg,counter_o_12_sv2v_reg,counter_o_11_sv2v_reg,
  counter_o_10_sv2v_reg,counter_o_9_sv2v_reg,counter_o_8_sv2v_reg,counter_o_7_sv2v_reg,
  counter_o_6_sv2v_reg,counter_o_5_sv2v_reg,counter_o_4_sv2v_reg,counter_o_3_sv2v_reg,
  counter_o_2_sv2v_reg,counter_o_1_sv2v_reg,counter_o_0_sv2v_reg;
  assign counter_o[31] = counter_o_31_sv2v_reg;
  assign counter_o[30] = counter_o_30_sv2v_reg;
  assign counter_o[29] = counter_o_29_sv2v_reg;
  assign counter_o[28] = counter_o_28_sv2v_reg;
  assign counter_o[27] = counter_o_27_sv2v_reg;
  assign counter_o[26] = counter_o_26_sv2v_reg;
  assign counter_o[25] = counter_o_25_sv2v_reg;
  assign counter_o[24] = counter_o_24_sv2v_reg;
  assign counter_o[23] = counter_o_23_sv2v_reg;
  assign counter_o[22] = counter_o_22_sv2v_reg;
  assign counter_o[21] = counter_o_21_sv2v_reg;
  assign counter_o[20] = counter_o_20_sv2v_reg;
  assign counter_o[19] = counter_o_19_sv2v_reg;
  assign counter_o[18] = counter_o_18_sv2v_reg;
  assign counter_o[17] = counter_o_17_sv2v_reg;
  assign counter_o[16] = counter_o_16_sv2v_reg;
  assign counter_o[15] = counter_o_15_sv2v_reg;
  assign counter_o[14] = counter_o_14_sv2v_reg;
  assign counter_o[13] = counter_o_13_sv2v_reg;
  assign counter_o[12] = counter_o_12_sv2v_reg;
  assign counter_o[11] = counter_o_11_sv2v_reg;
  assign counter_o[10] = counter_o_10_sv2v_reg;
  assign counter_o[9] = counter_o_9_sv2v_reg;
  assign counter_o[8] = counter_o_8_sv2v_reg;
  assign counter_o[7] = counter_o_7_sv2v_reg;
  assign counter_o[6] = counter_o_6_sv2v_reg;
  assign counter_o[5] = counter_o_5_sv2v_reg;
  assign counter_o[4] = counter_o_4_sv2v_reg;
  assign counter_o[3] = counter_o_3_sv2v_reg;
  assign counter_o[2] = counter_o_2_sv2v_reg;
  assign counter_o[1] = counter_o_1_sv2v_reg;
  assign counter_o[0] = counter_o_0_sv2v_reg;
  assign N1 = counter_o == limit_i;
  assign { N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } = counter_o + 1'b1;
  assign { N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N2)? { N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } : 1'b0;
  assign N0 = N1;
  assign N3 = N1 | reset_i;
  assign N4 = ~N3;
  assign N2 = ~N1;

  always @(posedge clk_i) begin
    if(reset_i) begin
      counter_o_31_sv2v_reg <= 1'b0;
      counter_o_30_sv2v_reg <= 1'b0;
      counter_o_29_sv2v_reg <= 1'b0;
      counter_o_28_sv2v_reg <= 1'b0;
      counter_o_27_sv2v_reg <= 1'b0;
      counter_o_26_sv2v_reg <= 1'b0;
      counter_o_25_sv2v_reg <= 1'b0;
      counter_o_24_sv2v_reg <= 1'b0;
      counter_o_23_sv2v_reg <= 1'b0;
      counter_o_22_sv2v_reg <= 1'b0;
      counter_o_21_sv2v_reg <= 1'b0;
      counter_o_20_sv2v_reg <= 1'b0;
      counter_o_19_sv2v_reg <= 1'b0;
      counter_o_18_sv2v_reg <= 1'b0;
      counter_o_17_sv2v_reg <= 1'b0;
      counter_o_16_sv2v_reg <= 1'b0;
      counter_o_15_sv2v_reg <= 1'b0;
      counter_o_14_sv2v_reg <= 1'b0;
      counter_o_13_sv2v_reg <= 1'b0;
      counter_o_12_sv2v_reg <= 1'b0;
      counter_o_11_sv2v_reg <= 1'b0;
      counter_o_10_sv2v_reg <= 1'b0;
      counter_o_9_sv2v_reg <= 1'b0;
      counter_o_8_sv2v_reg <= 1'b0;
      counter_o_7_sv2v_reg <= 1'b0;
      counter_o_6_sv2v_reg <= 1'b0;
      counter_o_5_sv2v_reg <= 1'b0;
      counter_o_4_sv2v_reg <= 1'b0;
      counter_o_3_sv2v_reg <= 1'b0;
      counter_o_2_sv2v_reg <= 1'b0;
      counter_o_1_sv2v_reg <= 1'b0;
      counter_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      counter_o_31_sv2v_reg <= N68;
      counter_o_30_sv2v_reg <= N67;
      counter_o_29_sv2v_reg <= N66;
      counter_o_28_sv2v_reg <= N65;
      counter_o_27_sv2v_reg <= N64;
      counter_o_26_sv2v_reg <= N63;
      counter_o_25_sv2v_reg <= N62;
      counter_o_24_sv2v_reg <= N61;
      counter_o_23_sv2v_reg <= N60;
      counter_o_22_sv2v_reg <= N59;
      counter_o_21_sv2v_reg <= N58;
      counter_o_20_sv2v_reg <= N57;
      counter_o_19_sv2v_reg <= N56;
      counter_o_18_sv2v_reg <= N55;
      counter_o_17_sv2v_reg <= N54;
      counter_o_16_sv2v_reg <= N53;
      counter_o_15_sv2v_reg <= N52;
      counter_o_14_sv2v_reg <= N51;
      counter_o_13_sv2v_reg <= N50;
      counter_o_12_sv2v_reg <= N49;
      counter_o_11_sv2v_reg <= N48;
      counter_o_10_sv2v_reg <= N47;
      counter_o_9_sv2v_reg <= N46;
      counter_o_8_sv2v_reg <= N45;
      counter_o_7_sv2v_reg <= N44;
      counter_o_6_sv2v_reg <= N43;
      counter_o_5_sv2v_reg <= N42;
      counter_o_4_sv2v_reg <= N41;
      counter_o_3_sv2v_reg <= N40;
      counter_o_2_sv2v_reg <= N39;
      counter_o_1_sv2v_reg <= N38;
      counter_o_0_sv2v_reg <= N37;
    end 
  end


endmodule

