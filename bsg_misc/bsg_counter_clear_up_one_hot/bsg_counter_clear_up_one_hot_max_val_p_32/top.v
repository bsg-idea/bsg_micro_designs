

module top
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_r_o
);

  output [32:0] count_r_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;

  bsg_counter_clear_up_one_hot
  wrapper
  (
    .count_r_o(count_r_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_i),
    .up_i(up_i)
  );


endmodule



module bsg_counter_clear_up_one_hot
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_r_o
);

  output [32:0] count_r_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire [32:0] count_r_o,bits_n;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76;
  reg count_r_o_32_sv2v_reg,count_r_o_31_sv2v_reg,count_r_o_30_sv2v_reg,
  count_r_o_29_sv2v_reg,count_r_o_28_sv2v_reg,count_r_o_27_sv2v_reg,count_r_o_26_sv2v_reg,
  count_r_o_25_sv2v_reg,count_r_o_24_sv2v_reg,count_r_o_23_sv2v_reg,
  count_r_o_22_sv2v_reg,count_r_o_21_sv2v_reg,count_r_o_20_sv2v_reg,count_r_o_19_sv2v_reg,
  count_r_o_18_sv2v_reg,count_r_o_17_sv2v_reg,count_r_o_16_sv2v_reg,count_r_o_15_sv2v_reg,
  count_r_o_14_sv2v_reg,count_r_o_13_sv2v_reg,count_r_o_12_sv2v_reg,
  count_r_o_11_sv2v_reg,count_r_o_10_sv2v_reg,count_r_o_9_sv2v_reg,count_r_o_8_sv2v_reg,
  count_r_o_7_sv2v_reg,count_r_o_6_sv2v_reg,count_r_o_5_sv2v_reg,count_r_o_4_sv2v_reg,
  count_r_o_3_sv2v_reg,count_r_o_2_sv2v_reg,count_r_o_1_sv2v_reg,count_r_o_0_sv2v_reg;
  assign count_r_o[32] = count_r_o_32_sv2v_reg;
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
  assign { N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                                                                                                                                (N1)? count_r_o : 1'b0;
  assign N0 = clear_i;
  assign N1 = N6;
  assign { N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41 } = (N2)? { N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N39 } : 
                                                                                                                                                                                   (N3)? { N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7 } : 1'b0;
  assign N2 = up_i;
  assign N3 = N40;
  assign bits_n = (N4)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                  (N5)? { N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41 } : 1'b0;
  assign N4 = reset_i;
  assign N5 = N74;
  assign N6 = ~clear_i;
  assign N40 = ~up_i;
  assign N74 = ~reset_i;
  assign N75 = N76 | clear_i;
  assign N76 = reset_i | up_i;

  always @(posedge clk_i) begin
    if(N75) begin
      count_r_o_32_sv2v_reg <= bits_n[32];
      count_r_o_31_sv2v_reg <= bits_n[31];
      count_r_o_30_sv2v_reg <= bits_n[30];
      count_r_o_29_sv2v_reg <= bits_n[29];
      count_r_o_28_sv2v_reg <= bits_n[28];
      count_r_o_27_sv2v_reg <= bits_n[27];
      count_r_o_26_sv2v_reg <= bits_n[26];
      count_r_o_25_sv2v_reg <= bits_n[25];
      count_r_o_24_sv2v_reg <= bits_n[24];
      count_r_o_23_sv2v_reg <= bits_n[23];
      count_r_o_22_sv2v_reg <= bits_n[22];
      count_r_o_21_sv2v_reg <= bits_n[21];
      count_r_o_20_sv2v_reg <= bits_n[20];
      count_r_o_19_sv2v_reg <= bits_n[19];
      count_r_o_18_sv2v_reg <= bits_n[18];
      count_r_o_17_sv2v_reg <= bits_n[17];
      count_r_o_16_sv2v_reg <= bits_n[16];
      count_r_o_15_sv2v_reg <= bits_n[15];
      count_r_o_14_sv2v_reg <= bits_n[14];
      count_r_o_13_sv2v_reg <= bits_n[13];
      count_r_o_12_sv2v_reg <= bits_n[12];
      count_r_o_11_sv2v_reg <= bits_n[11];
      count_r_o_10_sv2v_reg <= bits_n[10];
      count_r_o_9_sv2v_reg <= bits_n[9];
      count_r_o_8_sv2v_reg <= bits_n[8];
      count_r_o_7_sv2v_reg <= bits_n[7];
      count_r_o_6_sv2v_reg <= bits_n[6];
      count_r_o_5_sv2v_reg <= bits_n[5];
      count_r_o_4_sv2v_reg <= bits_n[4];
      count_r_o_3_sv2v_reg <= bits_n[3];
      count_r_o_2_sv2v_reg <= bits_n[2];
      count_r_o_1_sv2v_reg <= bits_n[1];
      count_r_o_0_sv2v_reg <= bits_n[0];
    end 
  end


endmodule

