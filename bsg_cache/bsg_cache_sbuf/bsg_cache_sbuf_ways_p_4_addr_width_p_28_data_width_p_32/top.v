

module top
(
  clk_i,
  reset_i,
  sbuf_entry_i,
  v_i,
  sbuf_entry_o,
  v_o,
  yumi_i,
  empty_o,
  full_o,
  bypass_addr_i,
  bypass_v_i,
  bypass_data_o,
  bypass_mask_o
);

  input [65:0] sbuf_entry_i;
  output [65:0] sbuf_entry_o;
  input [27:0] bypass_addr_i;
  output [31:0] bypass_data_o;
  output [3:0] bypass_mask_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  input bypass_v_i;
  output v_o;
  output empty_o;
  output full_o;

  bsg_cache_sbuf
  wrapper
  (
    .sbuf_entry_i(sbuf_entry_i),
    .sbuf_entry_o(sbuf_entry_o),
    .bypass_addr_i(bypass_addr_i),
    .bypass_data_o(bypass_data_o),
    .bypass_mask_o(bypass_mask_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .yumi_i(yumi_i),
    .bypass_v_i(bypass_v_i),
    .v_o(v_o),
    .empty_o(empty_o),
    .full_o(full_o)
  );


endmodule



module bsg_cache_sbuf_queue_width_p66
(
  clk_i,
  data_i,
  el0_en_i,
  el1_en_i,
  mux0_sel_i,
  mux1_sel_i,
  el0_snoop_o,
  el1_snoop_o,
  data_o
);

  input [65:0] data_i;
  output [65:0] el0_snoop_o;
  output [65:0] el1_snoop_o;
  output [65:0] data_o;
  input clk_i;
  input el0_en_i;
  input el1_en_i;
  input mux0_sel_i;
  input mux1_sel_i;
  wire [65:0] el0_snoop_o,el1_snoop_o,data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71;
  reg el0_snoop_o_65_sv2v_reg,el0_snoop_o_64_sv2v_reg,el0_snoop_o_63_sv2v_reg,
  el0_snoop_o_62_sv2v_reg,el0_snoop_o_61_sv2v_reg,el0_snoop_o_60_sv2v_reg,
  el0_snoop_o_59_sv2v_reg,el0_snoop_o_58_sv2v_reg,el0_snoop_o_57_sv2v_reg,el0_snoop_o_56_sv2v_reg,
  el0_snoop_o_55_sv2v_reg,el0_snoop_o_54_sv2v_reg,el0_snoop_o_53_sv2v_reg,
  el0_snoop_o_52_sv2v_reg,el0_snoop_o_51_sv2v_reg,el0_snoop_o_50_sv2v_reg,
  el0_snoop_o_49_sv2v_reg,el0_snoop_o_48_sv2v_reg,el0_snoop_o_47_sv2v_reg,el0_snoop_o_46_sv2v_reg,
  el0_snoop_o_45_sv2v_reg,el0_snoop_o_44_sv2v_reg,el0_snoop_o_43_sv2v_reg,
  el0_snoop_o_42_sv2v_reg,el0_snoop_o_41_sv2v_reg,el0_snoop_o_40_sv2v_reg,
  el0_snoop_o_39_sv2v_reg,el0_snoop_o_38_sv2v_reg,el0_snoop_o_37_sv2v_reg,el0_snoop_o_36_sv2v_reg,
  el0_snoop_o_35_sv2v_reg,el0_snoop_o_34_sv2v_reg,el0_snoop_o_33_sv2v_reg,
  el0_snoop_o_32_sv2v_reg,el0_snoop_o_31_sv2v_reg,el0_snoop_o_30_sv2v_reg,
  el0_snoop_o_29_sv2v_reg,el0_snoop_o_28_sv2v_reg,el0_snoop_o_27_sv2v_reg,el0_snoop_o_26_sv2v_reg,
  el0_snoop_o_25_sv2v_reg,el0_snoop_o_24_sv2v_reg,el0_snoop_o_23_sv2v_reg,
  el0_snoop_o_22_sv2v_reg,el0_snoop_o_21_sv2v_reg,el0_snoop_o_20_sv2v_reg,
  el0_snoop_o_19_sv2v_reg,el0_snoop_o_18_sv2v_reg,el0_snoop_o_17_sv2v_reg,el0_snoop_o_16_sv2v_reg,
  el0_snoop_o_15_sv2v_reg,el0_snoop_o_14_sv2v_reg,el0_snoop_o_13_sv2v_reg,
  el0_snoop_o_12_sv2v_reg,el0_snoop_o_11_sv2v_reg,el0_snoop_o_10_sv2v_reg,
  el0_snoop_o_9_sv2v_reg,el0_snoop_o_8_sv2v_reg,el0_snoop_o_7_sv2v_reg,el0_snoop_o_6_sv2v_reg,
  el0_snoop_o_5_sv2v_reg,el0_snoop_o_4_sv2v_reg,el0_snoop_o_3_sv2v_reg,
  el0_snoop_o_2_sv2v_reg,el0_snoop_o_1_sv2v_reg,el0_snoop_o_0_sv2v_reg,el1_snoop_o_65_sv2v_reg,
  el1_snoop_o_64_sv2v_reg,el1_snoop_o_63_sv2v_reg,el1_snoop_o_62_sv2v_reg,
  el1_snoop_o_61_sv2v_reg,el1_snoop_o_60_sv2v_reg,el1_snoop_o_59_sv2v_reg,
  el1_snoop_o_58_sv2v_reg,el1_snoop_o_57_sv2v_reg,el1_snoop_o_56_sv2v_reg,el1_snoop_o_55_sv2v_reg,
  el1_snoop_o_54_sv2v_reg,el1_snoop_o_53_sv2v_reg,el1_snoop_o_52_sv2v_reg,
  el1_snoop_o_51_sv2v_reg,el1_snoop_o_50_sv2v_reg,el1_snoop_o_49_sv2v_reg,
  el1_snoop_o_48_sv2v_reg,el1_snoop_o_47_sv2v_reg,el1_snoop_o_46_sv2v_reg,el1_snoop_o_45_sv2v_reg,
  el1_snoop_o_44_sv2v_reg,el1_snoop_o_43_sv2v_reg,el1_snoop_o_42_sv2v_reg,
  el1_snoop_o_41_sv2v_reg,el1_snoop_o_40_sv2v_reg,el1_snoop_o_39_sv2v_reg,
  el1_snoop_o_38_sv2v_reg,el1_snoop_o_37_sv2v_reg,el1_snoop_o_36_sv2v_reg,el1_snoop_o_35_sv2v_reg,
  el1_snoop_o_34_sv2v_reg,el1_snoop_o_33_sv2v_reg,el1_snoop_o_32_sv2v_reg,
  el1_snoop_o_31_sv2v_reg,el1_snoop_o_30_sv2v_reg,el1_snoop_o_29_sv2v_reg,
  el1_snoop_o_28_sv2v_reg,el1_snoop_o_27_sv2v_reg,el1_snoop_o_26_sv2v_reg,el1_snoop_o_25_sv2v_reg,
  el1_snoop_o_24_sv2v_reg,el1_snoop_o_23_sv2v_reg,el1_snoop_o_22_sv2v_reg,
  el1_snoop_o_21_sv2v_reg,el1_snoop_o_20_sv2v_reg,el1_snoop_o_19_sv2v_reg,
  el1_snoop_o_18_sv2v_reg,el1_snoop_o_17_sv2v_reg,el1_snoop_o_16_sv2v_reg,el1_snoop_o_15_sv2v_reg,
  el1_snoop_o_14_sv2v_reg,el1_snoop_o_13_sv2v_reg,el1_snoop_o_12_sv2v_reg,
  el1_snoop_o_11_sv2v_reg,el1_snoop_o_10_sv2v_reg,el1_snoop_o_9_sv2v_reg,
  el1_snoop_o_8_sv2v_reg,el1_snoop_o_7_sv2v_reg,el1_snoop_o_6_sv2v_reg,el1_snoop_o_5_sv2v_reg,
  el1_snoop_o_4_sv2v_reg,el1_snoop_o_3_sv2v_reg,el1_snoop_o_2_sv2v_reg,
  el1_snoop_o_1_sv2v_reg,el1_snoop_o_0_sv2v_reg;
  assign el0_snoop_o[65] = el0_snoop_o_65_sv2v_reg;
  assign el0_snoop_o[64] = el0_snoop_o_64_sv2v_reg;
  assign el0_snoop_o[63] = el0_snoop_o_63_sv2v_reg;
  assign el0_snoop_o[62] = el0_snoop_o_62_sv2v_reg;
  assign el0_snoop_o[61] = el0_snoop_o_61_sv2v_reg;
  assign el0_snoop_o[60] = el0_snoop_o_60_sv2v_reg;
  assign el0_snoop_o[59] = el0_snoop_o_59_sv2v_reg;
  assign el0_snoop_o[58] = el0_snoop_o_58_sv2v_reg;
  assign el0_snoop_o[57] = el0_snoop_o_57_sv2v_reg;
  assign el0_snoop_o[56] = el0_snoop_o_56_sv2v_reg;
  assign el0_snoop_o[55] = el0_snoop_o_55_sv2v_reg;
  assign el0_snoop_o[54] = el0_snoop_o_54_sv2v_reg;
  assign el0_snoop_o[53] = el0_snoop_o_53_sv2v_reg;
  assign el0_snoop_o[52] = el0_snoop_o_52_sv2v_reg;
  assign el0_snoop_o[51] = el0_snoop_o_51_sv2v_reg;
  assign el0_snoop_o[50] = el0_snoop_o_50_sv2v_reg;
  assign el0_snoop_o[49] = el0_snoop_o_49_sv2v_reg;
  assign el0_snoop_o[48] = el0_snoop_o_48_sv2v_reg;
  assign el0_snoop_o[47] = el0_snoop_o_47_sv2v_reg;
  assign el0_snoop_o[46] = el0_snoop_o_46_sv2v_reg;
  assign el0_snoop_o[45] = el0_snoop_o_45_sv2v_reg;
  assign el0_snoop_o[44] = el0_snoop_o_44_sv2v_reg;
  assign el0_snoop_o[43] = el0_snoop_o_43_sv2v_reg;
  assign el0_snoop_o[42] = el0_snoop_o_42_sv2v_reg;
  assign el0_snoop_o[41] = el0_snoop_o_41_sv2v_reg;
  assign el0_snoop_o[40] = el0_snoop_o_40_sv2v_reg;
  assign el0_snoop_o[39] = el0_snoop_o_39_sv2v_reg;
  assign el0_snoop_o[38] = el0_snoop_o_38_sv2v_reg;
  assign el0_snoop_o[37] = el0_snoop_o_37_sv2v_reg;
  assign el0_snoop_o[36] = el0_snoop_o_36_sv2v_reg;
  assign el0_snoop_o[35] = el0_snoop_o_35_sv2v_reg;
  assign el0_snoop_o[34] = el0_snoop_o_34_sv2v_reg;
  assign el0_snoop_o[33] = el0_snoop_o_33_sv2v_reg;
  assign el0_snoop_o[32] = el0_snoop_o_32_sv2v_reg;
  assign el0_snoop_o[31] = el0_snoop_o_31_sv2v_reg;
  assign el0_snoop_o[30] = el0_snoop_o_30_sv2v_reg;
  assign el0_snoop_o[29] = el0_snoop_o_29_sv2v_reg;
  assign el0_snoop_o[28] = el0_snoop_o_28_sv2v_reg;
  assign el0_snoop_o[27] = el0_snoop_o_27_sv2v_reg;
  assign el0_snoop_o[26] = el0_snoop_o_26_sv2v_reg;
  assign el0_snoop_o[25] = el0_snoop_o_25_sv2v_reg;
  assign el0_snoop_o[24] = el0_snoop_o_24_sv2v_reg;
  assign el0_snoop_o[23] = el0_snoop_o_23_sv2v_reg;
  assign el0_snoop_o[22] = el0_snoop_o_22_sv2v_reg;
  assign el0_snoop_o[21] = el0_snoop_o_21_sv2v_reg;
  assign el0_snoop_o[20] = el0_snoop_o_20_sv2v_reg;
  assign el0_snoop_o[19] = el0_snoop_o_19_sv2v_reg;
  assign el0_snoop_o[18] = el0_snoop_o_18_sv2v_reg;
  assign el0_snoop_o[17] = el0_snoop_o_17_sv2v_reg;
  assign el0_snoop_o[16] = el0_snoop_o_16_sv2v_reg;
  assign el0_snoop_o[15] = el0_snoop_o_15_sv2v_reg;
  assign el0_snoop_o[14] = el0_snoop_o_14_sv2v_reg;
  assign el0_snoop_o[13] = el0_snoop_o_13_sv2v_reg;
  assign el0_snoop_o[12] = el0_snoop_o_12_sv2v_reg;
  assign el0_snoop_o[11] = el0_snoop_o_11_sv2v_reg;
  assign el0_snoop_o[10] = el0_snoop_o_10_sv2v_reg;
  assign el0_snoop_o[9] = el0_snoop_o_9_sv2v_reg;
  assign el0_snoop_o[8] = el0_snoop_o_8_sv2v_reg;
  assign el0_snoop_o[7] = el0_snoop_o_7_sv2v_reg;
  assign el0_snoop_o[6] = el0_snoop_o_6_sv2v_reg;
  assign el0_snoop_o[5] = el0_snoop_o_5_sv2v_reg;
  assign el0_snoop_o[4] = el0_snoop_o_4_sv2v_reg;
  assign el0_snoop_o[3] = el0_snoop_o_3_sv2v_reg;
  assign el0_snoop_o[2] = el0_snoop_o_2_sv2v_reg;
  assign el0_snoop_o[1] = el0_snoop_o_1_sv2v_reg;
  assign el0_snoop_o[0] = el0_snoop_o_0_sv2v_reg;
  assign el1_snoop_o[65] = el1_snoop_o_65_sv2v_reg;
  assign el1_snoop_o[64] = el1_snoop_o_64_sv2v_reg;
  assign el1_snoop_o[63] = el1_snoop_o_63_sv2v_reg;
  assign el1_snoop_o[62] = el1_snoop_o_62_sv2v_reg;
  assign el1_snoop_o[61] = el1_snoop_o_61_sv2v_reg;
  assign el1_snoop_o[60] = el1_snoop_o_60_sv2v_reg;
  assign el1_snoop_o[59] = el1_snoop_o_59_sv2v_reg;
  assign el1_snoop_o[58] = el1_snoop_o_58_sv2v_reg;
  assign el1_snoop_o[57] = el1_snoop_o_57_sv2v_reg;
  assign el1_snoop_o[56] = el1_snoop_o_56_sv2v_reg;
  assign el1_snoop_o[55] = el1_snoop_o_55_sv2v_reg;
  assign el1_snoop_o[54] = el1_snoop_o_54_sv2v_reg;
  assign el1_snoop_o[53] = el1_snoop_o_53_sv2v_reg;
  assign el1_snoop_o[52] = el1_snoop_o_52_sv2v_reg;
  assign el1_snoop_o[51] = el1_snoop_o_51_sv2v_reg;
  assign el1_snoop_o[50] = el1_snoop_o_50_sv2v_reg;
  assign el1_snoop_o[49] = el1_snoop_o_49_sv2v_reg;
  assign el1_snoop_o[48] = el1_snoop_o_48_sv2v_reg;
  assign el1_snoop_o[47] = el1_snoop_o_47_sv2v_reg;
  assign el1_snoop_o[46] = el1_snoop_o_46_sv2v_reg;
  assign el1_snoop_o[45] = el1_snoop_o_45_sv2v_reg;
  assign el1_snoop_o[44] = el1_snoop_o_44_sv2v_reg;
  assign el1_snoop_o[43] = el1_snoop_o_43_sv2v_reg;
  assign el1_snoop_o[42] = el1_snoop_o_42_sv2v_reg;
  assign el1_snoop_o[41] = el1_snoop_o_41_sv2v_reg;
  assign el1_snoop_o[40] = el1_snoop_o_40_sv2v_reg;
  assign el1_snoop_o[39] = el1_snoop_o_39_sv2v_reg;
  assign el1_snoop_o[38] = el1_snoop_o_38_sv2v_reg;
  assign el1_snoop_o[37] = el1_snoop_o_37_sv2v_reg;
  assign el1_snoop_o[36] = el1_snoop_o_36_sv2v_reg;
  assign el1_snoop_o[35] = el1_snoop_o_35_sv2v_reg;
  assign el1_snoop_o[34] = el1_snoop_o_34_sv2v_reg;
  assign el1_snoop_o[33] = el1_snoop_o_33_sv2v_reg;
  assign el1_snoop_o[32] = el1_snoop_o_32_sv2v_reg;
  assign el1_snoop_o[31] = el1_snoop_o_31_sv2v_reg;
  assign el1_snoop_o[30] = el1_snoop_o_30_sv2v_reg;
  assign el1_snoop_o[29] = el1_snoop_o_29_sv2v_reg;
  assign el1_snoop_o[28] = el1_snoop_o_28_sv2v_reg;
  assign el1_snoop_o[27] = el1_snoop_o_27_sv2v_reg;
  assign el1_snoop_o[26] = el1_snoop_o_26_sv2v_reg;
  assign el1_snoop_o[25] = el1_snoop_o_25_sv2v_reg;
  assign el1_snoop_o[24] = el1_snoop_o_24_sv2v_reg;
  assign el1_snoop_o[23] = el1_snoop_o_23_sv2v_reg;
  assign el1_snoop_o[22] = el1_snoop_o_22_sv2v_reg;
  assign el1_snoop_o[21] = el1_snoop_o_21_sv2v_reg;
  assign el1_snoop_o[20] = el1_snoop_o_20_sv2v_reg;
  assign el1_snoop_o[19] = el1_snoop_o_19_sv2v_reg;
  assign el1_snoop_o[18] = el1_snoop_o_18_sv2v_reg;
  assign el1_snoop_o[17] = el1_snoop_o_17_sv2v_reg;
  assign el1_snoop_o[16] = el1_snoop_o_16_sv2v_reg;
  assign el1_snoop_o[15] = el1_snoop_o_15_sv2v_reg;
  assign el1_snoop_o[14] = el1_snoop_o_14_sv2v_reg;
  assign el1_snoop_o[13] = el1_snoop_o_13_sv2v_reg;
  assign el1_snoop_o[12] = el1_snoop_o_12_sv2v_reg;
  assign el1_snoop_o[11] = el1_snoop_o_11_sv2v_reg;
  assign el1_snoop_o[10] = el1_snoop_o_10_sv2v_reg;
  assign el1_snoop_o[9] = el1_snoop_o_9_sv2v_reg;
  assign el1_snoop_o[8] = el1_snoop_o_8_sv2v_reg;
  assign el1_snoop_o[7] = el1_snoop_o_7_sv2v_reg;
  assign el1_snoop_o[6] = el1_snoop_o_6_sv2v_reg;
  assign el1_snoop_o[5] = el1_snoop_o_5_sv2v_reg;
  assign el1_snoop_o[4] = el1_snoop_o_4_sv2v_reg;
  assign el1_snoop_o[3] = el1_snoop_o_3_sv2v_reg;
  assign el1_snoop_o[2] = el1_snoop_o_2_sv2v_reg;
  assign el1_snoop_o[1] = el1_snoop_o_1_sv2v_reg;
  assign el1_snoop_o[0] = el1_snoop_o_0_sv2v_reg;
  assign { N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } = (N0)? el0_snoop_o : 
                                                                                                                                                                                                                                                                                                                                                   (N1)? data_i : 1'b0;
  assign N0 = mux0_sel_i;
  assign N1 = N4;
  assign data_o = (N2)? el1_snoop_o : 
                  (N3)? data_i : 1'b0;
  assign N2 = mux1_sel_i;
  assign N3 = N71;
  assign N4 = ~mux0_sel_i;
  assign N71 = ~mux1_sel_i;

  always @(posedge clk_i) begin
    if(el0_en_i) begin
      el0_snoop_o_65_sv2v_reg <= data_i[65];
      el0_snoop_o_64_sv2v_reg <= data_i[64];
      el0_snoop_o_63_sv2v_reg <= data_i[63];
      el0_snoop_o_62_sv2v_reg <= data_i[62];
      el0_snoop_o_61_sv2v_reg <= data_i[61];
      el0_snoop_o_60_sv2v_reg <= data_i[60];
      el0_snoop_o_59_sv2v_reg <= data_i[59];
      el0_snoop_o_58_sv2v_reg <= data_i[58];
      el0_snoop_o_57_sv2v_reg <= data_i[57];
      el0_snoop_o_56_sv2v_reg <= data_i[56];
      el0_snoop_o_55_sv2v_reg <= data_i[55];
      el0_snoop_o_54_sv2v_reg <= data_i[54];
      el0_snoop_o_53_sv2v_reg <= data_i[53];
      el0_snoop_o_52_sv2v_reg <= data_i[52];
      el0_snoop_o_51_sv2v_reg <= data_i[51];
      el0_snoop_o_50_sv2v_reg <= data_i[50];
      el0_snoop_o_49_sv2v_reg <= data_i[49];
      el0_snoop_o_48_sv2v_reg <= data_i[48];
      el0_snoop_o_47_sv2v_reg <= data_i[47];
      el0_snoop_o_46_sv2v_reg <= data_i[46];
      el0_snoop_o_45_sv2v_reg <= data_i[45];
      el0_snoop_o_44_sv2v_reg <= data_i[44];
      el0_snoop_o_43_sv2v_reg <= data_i[43];
      el0_snoop_o_42_sv2v_reg <= data_i[42];
      el0_snoop_o_41_sv2v_reg <= data_i[41];
      el0_snoop_o_40_sv2v_reg <= data_i[40];
      el0_snoop_o_39_sv2v_reg <= data_i[39];
      el0_snoop_o_38_sv2v_reg <= data_i[38];
      el0_snoop_o_37_sv2v_reg <= data_i[37];
      el0_snoop_o_36_sv2v_reg <= data_i[36];
      el0_snoop_o_35_sv2v_reg <= data_i[35];
      el0_snoop_o_34_sv2v_reg <= data_i[34];
      el0_snoop_o_33_sv2v_reg <= data_i[33];
      el0_snoop_o_32_sv2v_reg <= data_i[32];
      el0_snoop_o_31_sv2v_reg <= data_i[31];
      el0_snoop_o_30_sv2v_reg <= data_i[30];
      el0_snoop_o_29_sv2v_reg <= data_i[29];
      el0_snoop_o_28_sv2v_reg <= data_i[28];
      el0_snoop_o_27_sv2v_reg <= data_i[27];
      el0_snoop_o_26_sv2v_reg <= data_i[26];
      el0_snoop_o_25_sv2v_reg <= data_i[25];
      el0_snoop_o_24_sv2v_reg <= data_i[24];
      el0_snoop_o_23_sv2v_reg <= data_i[23];
      el0_snoop_o_22_sv2v_reg <= data_i[22];
      el0_snoop_o_21_sv2v_reg <= data_i[21];
      el0_snoop_o_20_sv2v_reg <= data_i[20];
      el0_snoop_o_19_sv2v_reg <= data_i[19];
      el0_snoop_o_18_sv2v_reg <= data_i[18];
      el0_snoop_o_17_sv2v_reg <= data_i[17];
      el0_snoop_o_16_sv2v_reg <= data_i[16];
      el0_snoop_o_15_sv2v_reg <= data_i[15];
      el0_snoop_o_14_sv2v_reg <= data_i[14];
      el0_snoop_o_13_sv2v_reg <= data_i[13];
      el0_snoop_o_12_sv2v_reg <= data_i[12];
      el0_snoop_o_11_sv2v_reg <= data_i[11];
      el0_snoop_o_10_sv2v_reg <= data_i[10];
      el0_snoop_o_9_sv2v_reg <= data_i[9];
      el0_snoop_o_8_sv2v_reg <= data_i[8];
      el0_snoop_o_7_sv2v_reg <= data_i[7];
      el0_snoop_o_6_sv2v_reg <= data_i[6];
      el0_snoop_o_5_sv2v_reg <= data_i[5];
      el0_snoop_o_4_sv2v_reg <= data_i[4];
      el0_snoop_o_3_sv2v_reg <= data_i[3];
      el0_snoop_o_2_sv2v_reg <= data_i[2];
      el0_snoop_o_1_sv2v_reg <= data_i[1];
      el0_snoop_o_0_sv2v_reg <= data_i[0];
    end 
    if(el1_en_i) begin
      el1_snoop_o_65_sv2v_reg <= N70;
      el1_snoop_o_64_sv2v_reg <= N69;
      el1_snoop_o_63_sv2v_reg <= N68;
      el1_snoop_o_62_sv2v_reg <= N67;
      el1_snoop_o_61_sv2v_reg <= N66;
      el1_snoop_o_60_sv2v_reg <= N65;
      el1_snoop_o_59_sv2v_reg <= N64;
      el1_snoop_o_58_sv2v_reg <= N63;
      el1_snoop_o_57_sv2v_reg <= N62;
      el1_snoop_o_56_sv2v_reg <= N61;
      el1_snoop_o_55_sv2v_reg <= N60;
      el1_snoop_o_54_sv2v_reg <= N59;
      el1_snoop_o_53_sv2v_reg <= N58;
      el1_snoop_o_52_sv2v_reg <= N57;
      el1_snoop_o_51_sv2v_reg <= N56;
      el1_snoop_o_50_sv2v_reg <= N55;
      el1_snoop_o_49_sv2v_reg <= N54;
      el1_snoop_o_48_sv2v_reg <= N53;
      el1_snoop_o_47_sv2v_reg <= N52;
      el1_snoop_o_46_sv2v_reg <= N51;
      el1_snoop_o_45_sv2v_reg <= N50;
      el1_snoop_o_44_sv2v_reg <= N49;
      el1_snoop_o_43_sv2v_reg <= N48;
      el1_snoop_o_42_sv2v_reg <= N47;
      el1_snoop_o_41_sv2v_reg <= N46;
      el1_snoop_o_40_sv2v_reg <= N45;
      el1_snoop_o_39_sv2v_reg <= N44;
      el1_snoop_o_38_sv2v_reg <= N43;
      el1_snoop_o_37_sv2v_reg <= N42;
      el1_snoop_o_36_sv2v_reg <= N41;
      el1_snoop_o_35_sv2v_reg <= N40;
      el1_snoop_o_34_sv2v_reg <= N39;
      el1_snoop_o_33_sv2v_reg <= N38;
      el1_snoop_o_32_sv2v_reg <= N37;
      el1_snoop_o_31_sv2v_reg <= N36;
      el1_snoop_o_30_sv2v_reg <= N35;
      el1_snoop_o_29_sv2v_reg <= N34;
      el1_snoop_o_28_sv2v_reg <= N33;
      el1_snoop_o_27_sv2v_reg <= N32;
      el1_snoop_o_26_sv2v_reg <= N31;
      el1_snoop_o_25_sv2v_reg <= N30;
      el1_snoop_o_24_sv2v_reg <= N29;
      el1_snoop_o_23_sv2v_reg <= N28;
      el1_snoop_o_22_sv2v_reg <= N27;
      el1_snoop_o_21_sv2v_reg <= N26;
      el1_snoop_o_20_sv2v_reg <= N25;
      el1_snoop_o_19_sv2v_reg <= N24;
      el1_snoop_o_18_sv2v_reg <= N23;
      el1_snoop_o_17_sv2v_reg <= N22;
      el1_snoop_o_16_sv2v_reg <= N21;
      el1_snoop_o_15_sv2v_reg <= N20;
      el1_snoop_o_14_sv2v_reg <= N19;
      el1_snoop_o_13_sv2v_reg <= N18;
      el1_snoop_o_12_sv2v_reg <= N17;
      el1_snoop_o_11_sv2v_reg <= N16;
      el1_snoop_o_10_sv2v_reg <= N15;
      el1_snoop_o_9_sv2v_reg <= N14;
      el1_snoop_o_8_sv2v_reg <= N13;
      el1_snoop_o_7_sv2v_reg <= N12;
      el1_snoop_o_6_sv2v_reg <= N11;
      el1_snoop_o_5_sv2v_reg <= N10;
      el1_snoop_o_4_sv2v_reg <= N9;
      el1_snoop_o_3_sv2v_reg <= N8;
      el1_snoop_o_2_sv2v_reg <= N7;
      el1_snoop_o_1_sv2v_reg <= N6;
      el1_snoop_o_0_sv2v_reg <= N5;
    end 
  end


endmodule



module bsg_mux_segmented_segments_p4_segment_width_p8
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [31:0] data0_i;
  input [31:0] data1_i;
  input [3:0] sel_i;
  output [31:0] data_o;
  wire [31:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7;
  assign data_o[7:0] = (N0)? data1_i[7:0] : 
                       (N4)? data0_i[7:0] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[15:8] = (N1)? data1_i[15:8] : 
                        (N5)? data0_i[15:8] : 1'b0;
  assign N1 = sel_i[1];
  assign data_o[23:16] = (N2)? data1_i[23:16] : 
                         (N6)? data0_i[23:16] : 1'b0;
  assign N2 = sel_i[2];
  assign data_o[31:24] = (N3)? data1_i[31:24] : 
                         (N7)? data0_i[31:24] : 1'b0;
  assign N3 = sel_i[3];
  assign N4 = ~sel_i[0];
  assign N5 = ~sel_i[1];
  assign N6 = ~sel_i[2];
  assign N7 = ~sel_i[3];

endmodule



module bsg_cache_sbuf
(
  clk_i,
  reset_i,
  sbuf_entry_i,
  v_i,
  sbuf_entry_o,
  v_o,
  yumi_i,
  empty_o,
  full_o,
  bypass_addr_i,
  bypass_v_i,
  bypass_data_o,
  bypass_mask_o
);

  input [65:0] sbuf_entry_i;
  output [65:0] sbuf_entry_o;
  input [27:0] bypass_addr_i;
  output [31:0] bypass_data_o;
  output [3:0] bypass_mask_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  input bypass_v_i;
  output v_o;
  output empty_o;
  output full_o;
  wire [65:0] sbuf_entry_o,el0,el1;
  wire [31:0] bypass_data_o,el0or1_data,bypass_data_n;
  wire [3:0] bypass_mask_o,bypass_mask_n;
  wire v_o,empty_o,full_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,el0_valid,
  el1_valid,el0_enable,N13,el1_enable,mux0_sel,mux1_sel,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,tag_hit0_n,tag_hit1_n,tag_hit2_n,_2_net__3_,_2_net__2_,_2_net__1_,_2_net__0_,
  _4_net__3_,_4_net__2_,_4_net__1_,_4_net__0_,N23,N24,N25,N26,N27,N28,N29,N30,N31,
  N32,N33,N34,N35,N36,N37,N38,N39,N40,N41;
  wire [1:0] num_els_r;
  wire [3:3] tag_hit0x4,tag_hit1x4,tag_hit2x4;
  reg num_els_r_1_sv2v_reg,num_els_r_0_sv2v_reg,bypass_data_o_31_sv2v_reg,
  bypass_data_o_30_sv2v_reg,bypass_data_o_29_sv2v_reg,bypass_data_o_28_sv2v_reg,
  bypass_data_o_27_sv2v_reg,bypass_data_o_26_sv2v_reg,bypass_data_o_25_sv2v_reg,
  bypass_data_o_24_sv2v_reg,bypass_data_o_23_sv2v_reg,bypass_data_o_22_sv2v_reg,
  bypass_data_o_21_sv2v_reg,bypass_data_o_20_sv2v_reg,bypass_data_o_19_sv2v_reg,
  bypass_data_o_18_sv2v_reg,bypass_data_o_17_sv2v_reg,bypass_data_o_16_sv2v_reg,
  bypass_data_o_15_sv2v_reg,bypass_data_o_14_sv2v_reg,bypass_data_o_13_sv2v_reg,
  bypass_data_o_12_sv2v_reg,bypass_data_o_11_sv2v_reg,bypass_data_o_10_sv2v_reg,bypass_data_o_9_sv2v_reg,
  bypass_data_o_8_sv2v_reg,bypass_data_o_7_sv2v_reg,bypass_data_o_6_sv2v_reg,
  bypass_data_o_5_sv2v_reg,bypass_data_o_4_sv2v_reg,bypass_data_o_3_sv2v_reg,
  bypass_data_o_2_sv2v_reg,bypass_data_o_1_sv2v_reg,bypass_data_o_0_sv2v_reg,
  bypass_mask_o_3_sv2v_reg,bypass_mask_o_2_sv2v_reg,bypass_mask_o_1_sv2v_reg,
  bypass_mask_o_0_sv2v_reg;
  assign num_els_r[1] = num_els_r_1_sv2v_reg;
  assign num_els_r[0] = num_els_r_0_sv2v_reg;
  assign bypass_data_o[31] = bypass_data_o_31_sv2v_reg;
  assign bypass_data_o[30] = bypass_data_o_30_sv2v_reg;
  assign bypass_data_o[29] = bypass_data_o_29_sv2v_reg;
  assign bypass_data_o[28] = bypass_data_o_28_sv2v_reg;
  assign bypass_data_o[27] = bypass_data_o_27_sv2v_reg;
  assign bypass_data_o[26] = bypass_data_o_26_sv2v_reg;
  assign bypass_data_o[25] = bypass_data_o_25_sv2v_reg;
  assign bypass_data_o[24] = bypass_data_o_24_sv2v_reg;
  assign bypass_data_o[23] = bypass_data_o_23_sv2v_reg;
  assign bypass_data_o[22] = bypass_data_o_22_sv2v_reg;
  assign bypass_data_o[21] = bypass_data_o_21_sv2v_reg;
  assign bypass_data_o[20] = bypass_data_o_20_sv2v_reg;
  assign bypass_data_o[19] = bypass_data_o_19_sv2v_reg;
  assign bypass_data_o[18] = bypass_data_o_18_sv2v_reg;
  assign bypass_data_o[17] = bypass_data_o_17_sv2v_reg;
  assign bypass_data_o[16] = bypass_data_o_16_sv2v_reg;
  assign bypass_data_o[15] = bypass_data_o_15_sv2v_reg;
  assign bypass_data_o[14] = bypass_data_o_14_sv2v_reg;
  assign bypass_data_o[13] = bypass_data_o_13_sv2v_reg;
  assign bypass_data_o[12] = bypass_data_o_12_sv2v_reg;
  assign bypass_data_o[11] = bypass_data_o_11_sv2v_reg;
  assign bypass_data_o[10] = bypass_data_o_10_sv2v_reg;
  assign bypass_data_o[9] = bypass_data_o_9_sv2v_reg;
  assign bypass_data_o[8] = bypass_data_o_8_sv2v_reg;
  assign bypass_data_o[7] = bypass_data_o_7_sv2v_reg;
  assign bypass_data_o[6] = bypass_data_o_6_sv2v_reg;
  assign bypass_data_o[5] = bypass_data_o_5_sv2v_reg;
  assign bypass_data_o[4] = bypass_data_o_4_sv2v_reg;
  assign bypass_data_o[3] = bypass_data_o_3_sv2v_reg;
  assign bypass_data_o[2] = bypass_data_o_2_sv2v_reg;
  assign bypass_data_o[1] = bypass_data_o_1_sv2v_reg;
  assign bypass_data_o[0] = bypass_data_o_0_sv2v_reg;
  assign bypass_mask_o[3] = bypass_mask_o_3_sv2v_reg;
  assign bypass_mask_o[2] = bypass_mask_o_2_sv2v_reg;
  assign bypass_mask_o[1] = bypass_mask_o_1_sv2v_reg;
  assign bypass_mask_o[0] = bypass_mask_o_0_sv2v_reg;
  assign N7 = N5 & N6;
  assign N8 = num_els_r[1] | N6;
  assign N10 = N5 | num_els_r[0];
  assign N12 = num_els_r[1] & num_els_r[0];

  bsg_cache_sbuf_queue_width_p66
  sbq
  (
    .clk_i(clk_i),
    .data_i(sbuf_entry_i),
    .el0_en_i(el0_enable),
    .el1_en_i(el1_enable),
    .mux0_sel_i(mux0_sel),
    .mux1_sel_i(mux1_sel),
    .el0_snoop_o(el0),
    .el1_snoop_o(el1),
    .data_o(sbuf_entry_o)
  );

  assign tag_hit0_n = bypass_addr_i[27:2] == el0[65:40];
  assign tag_hit1_n = bypass_addr_i[27:2] == el1[65:40];
  assign tag_hit2_n = bypass_addr_i[27:2] == sbuf_entry_i[65:40];

  bsg_mux_segmented_segments_p4_segment_width_p8
  mux_segmented_merge0
  (
    .data0_i(el1[37:6]),
    .data1_i(el0[37:6]),
    .sel_i({ _2_net__3_, _2_net__2_, _2_net__1_, _2_net__0_ }),
    .data_o(el0or1_data)
  );


  bsg_mux_segmented_segments_p4_segment_width_p8
  mux_segmented_merge1
  (
    .data0_i(el0or1_data),
    .data1_i(sbuf_entry_i[37:6]),
    .sel_i({ _4_net__3_, _4_net__2_, _4_net__1_, _4_net__0_ }),
    .data_o(bypass_data_n)
  );

  assign { N19, N18 } = num_els_r + v_i;
  assign { N22, N21 } = { N19, N18 } - N20;
  assign v_o = (N0)? v_i : 
               (N1)? 1'b1 : 
               (N2)? 1'b1 : 
               (N3)? 1'b0 : 1'b0;
  assign N0 = N7;
  assign N1 = N9;
  assign N2 = N11;
  assign N3 = N12;
  assign empty_o = (N0)? 1'b1 : 
                   (N1)? 1'b0 : 
                   (N2)? 1'b0 : 
                   (N3)? 1'b0 : 1'b0;
  assign full_o = (N0)? 1'b0 : 
                  (N1)? 1'b0 : 
                  (N2)? 1'b1 : 
                  (N3)? 1'b0 : 1'b0;
  assign el0_valid = (N0)? 1'b0 : 
                     (N1)? 1'b0 : 
                     (N2)? 1'b1 : 
                     (N3)? 1'b0 : 1'b0;
  assign el1_valid = (N0)? 1'b0 : 
                     (N1)? 1'b1 : 
                     (N2)? 1'b1 : 
                     (N3)? 1'b0 : 1'b0;
  assign el0_enable = (N0)? 1'b0 : 
                      (N1)? N14 : 
                      (N2)? N16 : 
                      (N3)? 1'b0 : 1'b0;
  assign el1_enable = (N0)? N13 : 
                      (N1)? N15 : 
                      (N2)? yumi_i : 
                      (N3)? 1'b0 : 1'b0;
  assign mux0_sel = (N0)? 1'b0 : 
                    (N1)? 1'b0 : 
                    (N2)? 1'b1 : 
                    (N3)? 1'b0 : 1'b0;
  assign mux1_sel = (N0)? 1'b0 : 
                    (N1)? 1'b1 : 
                    (N2)? 1'b1 : 
                    (N3)? 1'b0 : 1'b0;
  assign N24 = (N4)? 1'b1 : 
               (N23)? 1'b0 : 1'b0;
  assign N4 = bypass_v_i;
  assign N5 = ~num_els_r[1];
  assign N6 = ~num_els_r[0];
  assign N9 = ~N8;
  assign N11 = ~N10;
  assign N13 = v_i & N25;
  assign N25 = ~yumi_i;
  assign N14 = v_i & N25;
  assign N15 = v_i & yumi_i;
  assign N16 = v_i & yumi_i;
  assign N17 = ~reset_i;
  assign N20 = v_o & yumi_i;
  assign tag_hit0x4[3] = tag_hit0_n & el0_valid;
  assign tag_hit1x4[3] = tag_hit1_n & el1_valid;
  assign tag_hit2x4[3] = tag_hit2_n & v_i;
  assign bypass_mask_n[3] = N28 | N29;
  assign N28 = N26 | N27;
  assign N26 = tag_hit0x4[3] & el0[5];
  assign N27 = tag_hit1x4[3] & el1[5];
  assign N29 = tag_hit2x4[3] & sbuf_entry_i[5];
  assign bypass_mask_n[2] = N32 | N33;
  assign N32 = N30 | N31;
  assign N30 = tag_hit0x4[3] & el0[4];
  assign N31 = tag_hit1x4[3] & el1[4];
  assign N33 = tag_hit2x4[3] & sbuf_entry_i[4];
  assign bypass_mask_n[1] = N36 | N37;
  assign N36 = N34 | N35;
  assign N34 = tag_hit0x4[3] & el0[3];
  assign N35 = tag_hit1x4[3] & el1[3];
  assign N37 = tag_hit2x4[3] & sbuf_entry_i[3];
  assign bypass_mask_n[0] = N40 | N41;
  assign N40 = N38 | N39;
  assign N38 = tag_hit0x4[3] & el0[2];
  assign N39 = tag_hit1x4[3] & el1[2];
  assign N41 = tag_hit2x4[3] & sbuf_entry_i[2];
  assign _2_net__3_ = tag_hit0x4[3] & el0[5];
  assign _2_net__2_ = tag_hit0x4[3] & el0[4];
  assign _2_net__1_ = tag_hit0x4[3] & el0[3];
  assign _2_net__0_ = tag_hit0x4[3] & el0[2];
  assign _4_net__3_ = tag_hit2x4[3] & sbuf_entry_i[5];
  assign _4_net__2_ = tag_hit2x4[3] & sbuf_entry_i[4];
  assign _4_net__1_ = tag_hit2x4[3] & sbuf_entry_i[3];
  assign _4_net__0_ = tag_hit2x4[3] & sbuf_entry_i[2];
  assign N23 = ~bypass_v_i;

  always @(posedge clk_i) begin
    if(reset_i) begin
      num_els_r_1_sv2v_reg <= 1'b0;
      num_els_r_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      num_els_r_1_sv2v_reg <= N22;
      num_els_r_0_sv2v_reg <= N21;
    end 
    if(reset_i) begin
      bypass_data_o_31_sv2v_reg <= 1'b0;
      bypass_data_o_30_sv2v_reg <= 1'b0;
      bypass_data_o_29_sv2v_reg <= 1'b0;
      bypass_data_o_28_sv2v_reg <= 1'b0;
      bypass_data_o_27_sv2v_reg <= 1'b0;
      bypass_data_o_26_sv2v_reg <= 1'b0;
      bypass_data_o_25_sv2v_reg <= 1'b0;
      bypass_data_o_24_sv2v_reg <= 1'b0;
      bypass_data_o_23_sv2v_reg <= 1'b0;
      bypass_data_o_22_sv2v_reg <= 1'b0;
      bypass_data_o_21_sv2v_reg <= 1'b0;
      bypass_data_o_20_sv2v_reg <= 1'b0;
      bypass_data_o_19_sv2v_reg <= 1'b0;
      bypass_data_o_18_sv2v_reg <= 1'b0;
      bypass_data_o_17_sv2v_reg <= 1'b0;
      bypass_data_o_16_sv2v_reg <= 1'b0;
      bypass_data_o_15_sv2v_reg <= 1'b0;
      bypass_data_o_14_sv2v_reg <= 1'b0;
      bypass_data_o_13_sv2v_reg <= 1'b0;
      bypass_data_o_12_sv2v_reg <= 1'b0;
      bypass_data_o_11_sv2v_reg <= 1'b0;
      bypass_data_o_10_sv2v_reg <= 1'b0;
      bypass_data_o_9_sv2v_reg <= 1'b0;
      bypass_data_o_8_sv2v_reg <= 1'b0;
      bypass_data_o_7_sv2v_reg <= 1'b0;
      bypass_data_o_6_sv2v_reg <= 1'b0;
      bypass_data_o_5_sv2v_reg <= 1'b0;
      bypass_data_o_4_sv2v_reg <= 1'b0;
      bypass_data_o_3_sv2v_reg <= 1'b0;
      bypass_data_o_2_sv2v_reg <= 1'b0;
      bypass_data_o_1_sv2v_reg <= 1'b0;
      bypass_data_o_0_sv2v_reg <= 1'b0;
      bypass_mask_o_3_sv2v_reg <= 1'b0;
      bypass_mask_o_2_sv2v_reg <= 1'b0;
      bypass_mask_o_1_sv2v_reg <= 1'b0;
      bypass_mask_o_0_sv2v_reg <= 1'b0;
    end else if(N24) begin
      bypass_data_o_31_sv2v_reg <= bypass_data_n[31];
      bypass_data_o_30_sv2v_reg <= bypass_data_n[30];
      bypass_data_o_29_sv2v_reg <= bypass_data_n[29];
      bypass_data_o_28_sv2v_reg <= bypass_data_n[28];
      bypass_data_o_27_sv2v_reg <= bypass_data_n[27];
      bypass_data_o_26_sv2v_reg <= bypass_data_n[26];
      bypass_data_o_25_sv2v_reg <= bypass_data_n[25];
      bypass_data_o_24_sv2v_reg <= bypass_data_n[24];
      bypass_data_o_23_sv2v_reg <= bypass_data_n[23];
      bypass_data_o_22_sv2v_reg <= bypass_data_n[22];
      bypass_data_o_21_sv2v_reg <= bypass_data_n[21];
      bypass_data_o_20_sv2v_reg <= bypass_data_n[20];
      bypass_data_o_19_sv2v_reg <= bypass_data_n[19];
      bypass_data_o_18_sv2v_reg <= bypass_data_n[18];
      bypass_data_o_17_sv2v_reg <= bypass_data_n[17];
      bypass_data_o_16_sv2v_reg <= bypass_data_n[16];
      bypass_data_o_15_sv2v_reg <= bypass_data_n[15];
      bypass_data_o_14_sv2v_reg <= bypass_data_n[14];
      bypass_data_o_13_sv2v_reg <= bypass_data_n[13];
      bypass_data_o_12_sv2v_reg <= bypass_data_n[12];
      bypass_data_o_11_sv2v_reg <= bypass_data_n[11];
      bypass_data_o_10_sv2v_reg <= bypass_data_n[10];
      bypass_data_o_9_sv2v_reg <= bypass_data_n[9];
      bypass_data_o_8_sv2v_reg <= bypass_data_n[8];
      bypass_data_o_7_sv2v_reg <= bypass_data_n[7];
      bypass_data_o_6_sv2v_reg <= bypass_data_n[6];
      bypass_data_o_5_sv2v_reg <= bypass_data_n[5];
      bypass_data_o_4_sv2v_reg <= bypass_data_n[4];
      bypass_data_o_3_sv2v_reg <= bypass_data_n[3];
      bypass_data_o_2_sv2v_reg <= bypass_data_n[2];
      bypass_data_o_1_sv2v_reg <= bypass_data_n[1];
      bypass_data_o_0_sv2v_reg <= bypass_data_n[0];
      bypass_mask_o_3_sv2v_reg <= bypass_mask_n[3];
      bypass_mask_o_2_sv2v_reg <= bypass_mask_n[2];
      bypass_mask_o_1_sv2v_reg <= bypass_mask_n[1];
      bypass_mask_o_0_sv2v_reg <= bypass_mask_n[0];
    end 
  end


endmodule

