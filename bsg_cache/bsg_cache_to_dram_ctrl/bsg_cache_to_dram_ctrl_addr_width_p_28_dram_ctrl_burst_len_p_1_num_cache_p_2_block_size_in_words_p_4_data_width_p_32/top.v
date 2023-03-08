

module top
(
  clk_i,
  reset_i,
  dram_size_i,
  dma_pkt_i,
  dma_pkt_v_i,
  dma_pkt_yumi_o,
  dma_data_o,
  dma_data_v_o,
  dma_data_ready_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  app_en_o,
  app_rdy_i,
  app_cmd_o,
  app_addr_o,
  app_wdf_wren_o,
  app_wdf_rdy_i,
  app_wdf_data_o,
  app_wdf_mask_o,
  app_wdf_end_o,
  app_rd_data_valid_i,
  app_rd_data_i,
  app_rd_data_end_i
);

  input [2:0] dram_size_i;
  input [57:0] dma_pkt_i;
  input [1:0] dma_pkt_v_i;
  output [1:0] dma_pkt_yumi_o;
  output [63:0] dma_data_o;
  output [1:0] dma_data_v_o;
  input [1:0] dma_data_ready_i;
  input [63:0] dma_data_i;
  input [1:0] dma_data_v_i;
  output [1:0] dma_data_yumi_o;
  output [2:0] app_cmd_o;
  output [28:0] app_addr_o;
  output [31:0] app_wdf_data_o;
  output [3:0] app_wdf_mask_o;
  input [31:0] app_rd_data_i;
  input clk_i;
  input reset_i;
  input app_rdy_i;
  input app_wdf_rdy_i;
  input app_rd_data_valid_i;
  input app_rd_data_end_i;
  output app_en_o;
  output app_wdf_wren_o;
  output app_wdf_end_o;

  bsg_cache_to_dram_ctrl
  wrapper
  (
    .dram_size_i(dram_size_i),
    .dma_pkt_i(dma_pkt_i),
    .dma_pkt_v_i(dma_pkt_v_i),
    .dma_pkt_yumi_o(dma_pkt_yumi_o),
    .dma_data_o(dma_data_o),
    .dma_data_v_o(dma_data_v_o),
    .dma_data_ready_i(dma_data_ready_i),
    .dma_data_i(dma_data_i),
    .dma_data_v_i(dma_data_v_i),
    .dma_data_yumi_o(dma_data_yumi_o),
    .app_cmd_o(app_cmd_o),
    .app_addr_o(app_addr_o),
    .app_wdf_data_o(app_wdf_data_o),
    .app_wdf_mask_o(app_wdf_mask_o),
    .app_rd_data_i(app_rd_data_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .app_rdy_i(app_rdy_i),
    .app_wdf_rdy_i(app_wdf_rdy_i),
    .app_rd_data_valid_i(app_rd_data_valid_i),
    .app_rd_data_end_i(app_rd_data_end_i),
    .app_en_o(app_en_o),
    .app_wdf_wren_o(app_wdf_wren_o),
    .app_wdf_end_o(app_wdf_end_o)
  );


endmodule



module bsg_round_robin_arb_inputs_p2
(
  clk_i,
  reset_i,
  grants_en_i,
  reqs_i,
  grants_o,
  sel_one_hot_o,
  v_o,
  tag_o,
  yumi_i
);

  input [1:0] reqs_i;
  output [1:0] grants_o;
  output [1:0] sel_one_hot_o;
  output [0:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [1:0] grants_o,sel_one_hot_o;
  wire [0:0] tag_o,last_r;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15;
  reg last_r_0_sv2v_reg;
  assign last_r[0] = last_r_0_sv2v_reg;
  assign N11 = N0 & N1;
  assign N0 = ~reqs_i[1];
  assign N1 = ~reqs_i[0];
  assign N12 = reqs_i[1] & N2;
  assign N2 = ~last_r[0];
  assign N13 = N3 & reqs_i[0] & N4;
  assign N3 = ~reqs_i[1];
  assign N4 = ~last_r[0];
  assign N14 = reqs_i[0] & last_r[0];
  assign N15 = reqs_i[1] & N5 & last_r[0];
  assign N5 = ~reqs_i[0];
  assign sel_one_hot_o = (N6)? { 1'b0, 1'b0 } : 
                         (N7)? { 1'b1, 1'b0 } : 
                         (N8)? { 1'b0, 1'b1 } : 
                         (N9)? { 1'b0, 1'b1 } : 
                         (N10)? { 1'b1, 1'b0 } : 1'b0;
  assign N6 = N11;
  assign N7 = N12;
  assign N8 = N13;
  assign N9 = N14;
  assign N10 = N15;
  assign tag_o[0] = (N6)? 1'b0 : 
                    (N7)? 1'b1 : 
                    (N8)? 1'b0 : 
                    (N9)? 1'b0 : 
                    (N10)? 1'b1 : 1'b0;
  assign grants_o[1] = sel_one_hot_o[1] & grants_en_i;
  assign grants_o[0] = sel_one_hot_o[0] & grants_en_i;
  assign v_o = reqs_i[1] | reqs_i[0];

  always @(posedge clk_i) begin
    if(reset_i) begin
      last_r_0_sv2v_reg <= 1'b0;
    end else if(yumi_i) begin
      last_r_0_sv2v_reg <= tag_o[0];
    end 
  end


endmodule



module bsg_mux_one_hot_width_p29_els_p2
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [57:0] data_i;
  input [1:0] sel_one_hot_i;
  output [28:0] data_o;
  wire [28:0] data_o;
  wire [57:0] data_masked;
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
  assign data_masked[32] = data_i[32] & sel_one_hot_i[1];
  assign data_masked[31] = data_i[31] & sel_one_hot_i[1];
  assign data_masked[30] = data_i[30] & sel_one_hot_i[1];
  assign data_masked[29] = data_i[29] & sel_one_hot_i[1];
  assign data_o[0] = data_masked[29] | data_masked[0];
  assign data_o[1] = data_masked[30] | data_masked[1];
  assign data_o[2] = data_masked[31] | data_masked[2];
  assign data_o[3] = data_masked[32] | data_masked[3];
  assign data_o[4] = data_masked[33] | data_masked[4];
  assign data_o[5] = data_masked[34] | data_masked[5];
  assign data_o[6] = data_masked[35] | data_masked[6];
  assign data_o[7] = data_masked[36] | data_masked[7];
  assign data_o[8] = data_masked[37] | data_masked[8];
  assign data_o[9] = data_masked[38] | data_masked[9];
  assign data_o[10] = data_masked[39] | data_masked[10];
  assign data_o[11] = data_masked[40] | data_masked[11];
  assign data_o[12] = data_masked[41] | data_masked[12];
  assign data_o[13] = data_masked[42] | data_masked[13];
  assign data_o[14] = data_masked[43] | data_masked[14];
  assign data_o[15] = data_masked[44] | data_masked[15];
  assign data_o[16] = data_masked[45] | data_masked[16];
  assign data_o[17] = data_masked[46] | data_masked[17];
  assign data_o[18] = data_masked[47] | data_masked[18];
  assign data_o[19] = data_masked[48] | data_masked[19];
  assign data_o[20] = data_masked[49] | data_masked[20];
  assign data_o[21] = data_masked[50] | data_masked[21];
  assign data_o[22] = data_masked[51] | data_masked[22];
  assign data_o[23] = data_masked[52] | data_masked[23];
  assign data_o[24] = data_masked[53] | data_masked[24];
  assign data_o[25] = data_masked[54] | data_masked[25];
  assign data_o[26] = data_masked[55] | data_masked[26];
  assign data_o[27] = data_masked[56] | data_masked[27];
  assign data_o[28] = data_masked[57] | data_masked[28];

endmodule



module bsg_crossbar_o_by_i_i_els_p2_o_els_p1_width_p29
(
  i,
  sel_oi_one_hot_i,
  o
);

  input [57:0] i;
  input [1:0] sel_oi_one_hot_i;
  output [28:0] o;
  wire [28:0] o;

  bsg_mux_one_hot_width_p29_els_p2
  \genblk1_0_.mux_one_hot 
  (
    .data_i(i),
    .sel_one_hot_i(sel_oi_one_hot_i),
    .data_o(o)
  );


endmodule



module bsg_round_robin_n_to_1_width_p29_num_in_p2_strict_p0
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  yumi_o,
  v_o,
  data_o,
  tag_o,
  yumi_i
);

  input [57:0] data_i;
  input [1:0] v_i;
  output [1:0] yumi_o;
  output [28:0] data_o;
  output [0:0] tag_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;
  wire [1:0] yumi_o,\greedy.grants_lo ;
  wire [28:0] data_o;
  wire [0:0] tag_o;
  wire v_o,_1_net_,sv2v_dc_1,sv2v_dc_2;

  bsg_round_robin_arb_inputs_p2
  \greedy.rr_arb_ctrl 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .grants_en_i(1'b1),
    .reqs_i(v_i),
    .grants_o(\greedy.grants_lo ),
    .sel_one_hot_o({ sv2v_dc_1, sv2v_dc_2 }),
    .v_o(v_o),
    .tag_o(tag_o[0]),
    .yumi_i(_1_net_)
  );


  bsg_crossbar_o_by_i_i_els_p2_o_els_p1_width_p29
  \greedy.xbar 
  (
    .i(data_i),
    .sel_oi_one_hot_i(\greedy.grants_lo ),
    .o(data_o)
  );

  assign _1_net_ = yumi_i & v_o;
  assign yumi_o[1] = \greedy.grants_lo [1] & yumi_i;
  assign yumi_o[0] = \greedy.grants_lo [0] & yumi_i;

endmodule



module bsg_serial_in_parallel_out_width_p32_els_p3_out_els_p2
(
  clk_i,
  reset_i,
  valid_i,
  data_i,
  ready_o,
  valid_o,
  data_o,
  yumi_cnt_i
);

  input [31:0] data_i;
  output [1:0] valid_o;
  output [63:0] data_o;
  input [1:0] yumi_cnt_i;
  input clk_i;
  input reset_i;
  input valid_i;
  output ready_o;
  wire [1:0] valid_o,num_els_r,num_els_n;
  wire [63:0] data_o;
  wire ready_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,data_n_3__31_,data_n_3__30_,data_n_3__29_,
  data_n_3__28_,data_n_3__27_,data_n_3__26_,data_n_3__25_,data_n_3__24_,data_n_3__23_,
  data_n_3__22_,data_n_3__21_,data_n_3__20_,data_n_3__19_,data_n_3__18_,
  data_n_3__17_,data_n_3__16_,data_n_3__15_,data_n_3__14_,data_n_3__13_,data_n_3__12_,
  data_n_3__11_,data_n_3__10_,data_n_3__9_,data_n_3__8_,data_n_3__7_,data_n_3__6_,
  data_n_3__5_,data_n_3__4_,data_n_3__3_,data_n_3__2_,data_n_3__1_,data_n_3__0_,
  data_n_2__31_,data_n_2__30_,data_n_2__29_,data_n_2__28_,data_n_2__27_,data_n_2__26_,
  data_n_2__25_,data_n_2__24_,data_n_2__23_,data_n_2__22_,data_n_2__21_,data_n_2__20_,
  data_n_2__19_,data_n_2__18_,data_n_2__17_,data_n_2__16_,data_n_2__15_,
  data_n_2__14_,data_n_2__13_,data_n_2__12_,data_n_2__11_,data_n_2__10_,data_n_2__9_,
  data_n_2__8_,data_n_2__7_,data_n_2__6_,data_n_2__5_,data_n_2__4_,data_n_2__3_,
  data_n_2__2_,data_n_2__1_,data_n_2__0_,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60;
  wire [2:0] valid_r,valid_nn;
  wire [95:0] data_r,data_nn;
  wire [3:2] valid_n;
  reg valid_r_2_sv2v_reg,valid_r_1_sv2v_reg,valid_r_0_sv2v_reg,num_els_r_1_sv2v_reg,
  num_els_r_0_sv2v_reg,data_r_95_sv2v_reg,data_r_94_sv2v_reg,data_r_93_sv2v_reg,
  data_r_92_sv2v_reg,data_r_91_sv2v_reg,data_r_90_sv2v_reg,data_r_89_sv2v_reg,
  data_r_88_sv2v_reg,data_r_87_sv2v_reg,data_r_86_sv2v_reg,data_r_85_sv2v_reg,
  data_r_84_sv2v_reg,data_r_83_sv2v_reg,data_r_82_sv2v_reg,data_r_81_sv2v_reg,
  data_r_80_sv2v_reg,data_r_79_sv2v_reg,data_r_78_sv2v_reg,data_r_77_sv2v_reg,data_r_76_sv2v_reg,
  data_r_75_sv2v_reg,data_r_74_sv2v_reg,data_r_73_sv2v_reg,data_r_72_sv2v_reg,
  data_r_71_sv2v_reg,data_r_70_sv2v_reg,data_r_69_sv2v_reg,data_r_68_sv2v_reg,
  data_r_67_sv2v_reg,data_r_66_sv2v_reg,data_r_65_sv2v_reg,data_r_64_sv2v_reg,
  data_r_63_sv2v_reg,data_r_62_sv2v_reg,data_r_61_sv2v_reg,data_r_60_sv2v_reg,
  data_r_59_sv2v_reg,data_r_58_sv2v_reg,data_r_57_sv2v_reg,data_r_56_sv2v_reg,data_r_55_sv2v_reg,
  data_r_54_sv2v_reg,data_r_53_sv2v_reg,data_r_52_sv2v_reg,data_r_51_sv2v_reg,
  data_r_50_sv2v_reg,data_r_49_sv2v_reg,data_r_48_sv2v_reg,data_r_47_sv2v_reg,
  data_r_46_sv2v_reg,data_r_45_sv2v_reg,data_r_44_sv2v_reg,data_r_43_sv2v_reg,
  data_r_42_sv2v_reg,data_r_41_sv2v_reg,data_r_40_sv2v_reg,data_r_39_sv2v_reg,
  data_r_38_sv2v_reg,data_r_37_sv2v_reg,data_r_36_sv2v_reg,data_r_35_sv2v_reg,data_r_34_sv2v_reg,
  data_r_33_sv2v_reg,data_r_32_sv2v_reg,data_r_31_sv2v_reg,data_r_30_sv2v_reg,
  data_r_29_sv2v_reg,data_r_28_sv2v_reg,data_r_27_sv2v_reg,data_r_26_sv2v_reg,
  data_r_25_sv2v_reg,data_r_24_sv2v_reg,data_r_23_sv2v_reg,data_r_22_sv2v_reg,
  data_r_21_sv2v_reg,data_r_20_sv2v_reg,data_r_19_sv2v_reg,data_r_18_sv2v_reg,data_r_17_sv2v_reg,
  data_r_16_sv2v_reg,data_r_15_sv2v_reg,data_r_14_sv2v_reg,data_r_13_sv2v_reg,
  data_r_12_sv2v_reg,data_r_11_sv2v_reg,data_r_10_sv2v_reg,data_r_9_sv2v_reg,
  data_r_8_sv2v_reg,data_r_7_sv2v_reg,data_r_6_sv2v_reg,data_r_5_sv2v_reg,
  data_r_4_sv2v_reg,data_r_3_sv2v_reg,data_r_2_sv2v_reg,data_r_1_sv2v_reg,data_r_0_sv2v_reg;
  assign valid_r[2] = valid_r_2_sv2v_reg;
  assign valid_r[1] = valid_r_1_sv2v_reg;
  assign valid_r[0] = valid_r_0_sv2v_reg;
  assign num_els_r[1] = num_els_r_1_sv2v_reg;
  assign num_els_r[0] = num_els_r_0_sv2v_reg;
  assign data_r[95] = data_r_95_sv2v_reg;
  assign data_r[94] = data_r_94_sv2v_reg;
  assign data_r[93] = data_r_93_sv2v_reg;
  assign data_r[92] = data_r_92_sv2v_reg;
  assign data_r[91] = data_r_91_sv2v_reg;
  assign data_r[90] = data_r_90_sv2v_reg;
  assign data_r[89] = data_r_89_sv2v_reg;
  assign data_r[88] = data_r_88_sv2v_reg;
  assign data_r[87] = data_r_87_sv2v_reg;
  assign data_r[86] = data_r_86_sv2v_reg;
  assign data_r[85] = data_r_85_sv2v_reg;
  assign data_r[84] = data_r_84_sv2v_reg;
  assign data_r[83] = data_r_83_sv2v_reg;
  assign data_r[82] = data_r_82_sv2v_reg;
  assign data_r[81] = data_r_81_sv2v_reg;
  assign data_r[80] = data_r_80_sv2v_reg;
  assign data_r[79] = data_r_79_sv2v_reg;
  assign data_r[78] = data_r_78_sv2v_reg;
  assign data_r[77] = data_r_77_sv2v_reg;
  assign data_r[76] = data_r_76_sv2v_reg;
  assign data_r[75] = data_r_75_sv2v_reg;
  assign data_r[74] = data_r_74_sv2v_reg;
  assign data_r[73] = data_r_73_sv2v_reg;
  assign data_r[72] = data_r_72_sv2v_reg;
  assign data_r[71] = data_r_71_sv2v_reg;
  assign data_r[70] = data_r_70_sv2v_reg;
  assign data_r[69] = data_r_69_sv2v_reg;
  assign data_r[68] = data_r_68_sv2v_reg;
  assign data_r[67] = data_r_67_sv2v_reg;
  assign data_r[66] = data_r_66_sv2v_reg;
  assign data_r[65] = data_r_65_sv2v_reg;
  assign data_r[64] = data_r_64_sv2v_reg;
  assign data_r[63] = data_r_63_sv2v_reg;
  assign data_r[62] = data_r_62_sv2v_reg;
  assign data_r[61] = data_r_61_sv2v_reg;
  assign data_r[60] = data_r_60_sv2v_reg;
  assign data_r[59] = data_r_59_sv2v_reg;
  assign data_r[58] = data_r_58_sv2v_reg;
  assign data_r[57] = data_r_57_sv2v_reg;
  assign data_r[56] = data_r_56_sv2v_reg;
  assign data_r[55] = data_r_55_sv2v_reg;
  assign data_r[54] = data_r_54_sv2v_reg;
  assign data_r[53] = data_r_53_sv2v_reg;
  assign data_r[52] = data_r_52_sv2v_reg;
  assign data_r[51] = data_r_51_sv2v_reg;
  assign data_r[50] = data_r_50_sv2v_reg;
  assign data_r[49] = data_r_49_sv2v_reg;
  assign data_r[48] = data_r_48_sv2v_reg;
  assign data_r[47] = data_r_47_sv2v_reg;
  assign data_r[46] = data_r_46_sv2v_reg;
  assign data_r[45] = data_r_45_sv2v_reg;
  assign data_r[44] = data_r_44_sv2v_reg;
  assign data_r[43] = data_r_43_sv2v_reg;
  assign data_r[42] = data_r_42_sv2v_reg;
  assign data_r[41] = data_r_41_sv2v_reg;
  assign data_r[40] = data_r_40_sv2v_reg;
  assign data_r[39] = data_r_39_sv2v_reg;
  assign data_r[38] = data_r_38_sv2v_reg;
  assign data_r[37] = data_r_37_sv2v_reg;
  assign data_r[36] = data_r_36_sv2v_reg;
  assign data_r[35] = data_r_35_sv2v_reg;
  assign data_r[34] = data_r_34_sv2v_reg;
  assign data_r[33] = data_r_33_sv2v_reg;
  assign data_r[32] = data_r_32_sv2v_reg;
  assign data_r[31] = data_r_31_sv2v_reg;
  assign data_r[30] = data_r_30_sv2v_reg;
  assign data_r[29] = data_r_29_sv2v_reg;
  assign data_r[28] = data_r_28_sv2v_reg;
  assign data_r[27] = data_r_27_sv2v_reg;
  assign data_r[26] = data_r_26_sv2v_reg;
  assign data_r[25] = data_r_25_sv2v_reg;
  assign data_r[24] = data_r_24_sv2v_reg;
  assign data_r[23] = data_r_23_sv2v_reg;
  assign data_r[22] = data_r_22_sv2v_reg;
  assign data_r[21] = data_r_21_sv2v_reg;
  assign data_r[20] = data_r_20_sv2v_reg;
  assign data_r[19] = data_r_19_sv2v_reg;
  assign data_r[18] = data_r_18_sv2v_reg;
  assign data_r[17] = data_r_17_sv2v_reg;
  assign data_r[16] = data_r_16_sv2v_reg;
  assign data_r[15] = data_r_15_sv2v_reg;
  assign data_r[14] = data_r_14_sv2v_reg;
  assign data_r[13] = data_r_13_sv2v_reg;
  assign data_r[12] = data_r_12_sv2v_reg;
  assign data_r[11] = data_r_11_sv2v_reg;
  assign data_r[10] = data_r_10_sv2v_reg;
  assign data_r[9] = data_r_9_sv2v_reg;
  assign data_r[8] = data_r_8_sv2v_reg;
  assign data_r[7] = data_r_7_sv2v_reg;
  assign data_r[6] = data_r_6_sv2v_reg;
  assign data_r[5] = data_r_5_sv2v_reg;
  assign data_r[4] = data_r_4_sv2v_reg;
  assign data_r[3] = data_r_3_sv2v_reg;
  assign data_r[2] = data_r_2_sv2v_reg;
  assign data_r[1] = data_r_1_sv2v_reg;
  assign data_r[0] = data_r_0_sv2v_reg;
  assign N60 = N52 | N55;
  assign { N28, N27 } = num_els_r + N26;
  assign num_els_n = { N28, N27 } - yumi_cnt_i;
  assign N32 = num_els_r[0] & num_els_r[1];
  assign N31 = N0 & num_els_r[1];
  assign N0 = ~num_els_r[0];
  assign N30 = num_els_r[0] & N1;
  assign N1 = ~num_els_r[1];
  assign N29 = N2 & N3;
  assign N2 = ~num_els_r[0];
  assign N3 = ~num_els_r[1];
  assign N40 = num_els_r[0] & num_els_r[1];
  assign N39 = N4 & num_els_r[1];
  assign N4 = ~num_els_r[0];
  assign N38 = num_els_r[0] & N5;
  assign N5 = ~num_els_r[1];
  assign N37 = N6 & N7;
  assign N6 = ~num_els_r[0];
  assign N7 = ~num_els_r[1];
  assign N52 = yumi_cnt_i[0] & yumi_cnt_i[1];
  assign N55 = N8 & yumi_cnt_i[1];
  assign N8 = ~yumi_cnt_i[0];
  assign N54 = yumi_cnt_i[0] & N9;
  assign N9 = ~yumi_cnt_i[1];
  assign N53 = N10 & N11;
  assign N10 = ~yumi_cnt_i[0];
  assign N11 = ~yumi_cnt_i[1];
  assign { data_o[0:0], data_o[1:1], data_o[2:2], data_o[3:3], data_o[4:4], data_o[5:5], data_o[6:6], data_o[7:7], data_o[8:8], data_o[9:9], data_o[10:10], data_o[11:11], data_o[12:12], data_o[13:13], data_o[14:14], data_o[15:15], data_o[16:16], data_o[17:17], data_o[18:18], data_o[19:19], data_o[20:20], data_o[21:21], data_o[22:22], data_o[23:23], data_o[24:24], data_o[25:25], data_o[26:26], data_o[27:27], data_o[28:28], data_o[29:29], data_o[30:30], data_o[31:31] } = (N12)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          (N33)? { data_r[0:0], data_r[1:1], data_r[2:2], data_r[3:3], data_r[4:4], data_r[5:5], data_r[6:6], data_r[7:7], data_r[8:8], data_r[9:9], data_r[10:10], data_r[11:11], data_r[12:12], data_r[13:13], data_r[14:14], data_r[15:15], data_r[16:16], data_r[17:17], data_r[18:18], data_r[19:19], data_r[20:20], data_r[21:21], data_r[22:22], data_r[23:23], data_r[24:24], data_r[25:25], data_r[26:26], data_r[27:27], data_r[28:28], data_r[29:29], data_r[30:30], data_r[31:31] } : 1'b0;
  assign N12 = N29;
  assign { data_o[32:32], data_o[33:33], data_o[34:34], data_o[35:35], data_o[36:36], data_o[37:37], data_o[38:38], data_o[39:39], data_o[40:40], data_o[41:41], data_o[42:42], data_o[43:43], data_o[44:44], data_o[45:45], data_o[46:46], data_o[47:47], data_o[48:48], data_o[49:49], data_o[50:50], data_o[51:51], data_o[52:52], data_o[53:53], data_o[54:54], data_o[55:55], data_o[56:56], data_o[57:57], data_o[58:58], data_o[59:59], data_o[60:60], data_o[61:61], data_o[62:62], data_o[63:63] } = (N13)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              (N34)? { data_r[32:32], data_r[33:33], data_r[34:34], data_r[35:35], data_r[36:36], data_r[37:37], data_r[38:38], data_r[39:39], data_r[40:40], data_r[41:41], data_r[42:42], data_r[43:43], data_r[44:44], data_r[45:45], data_r[46:46], data_r[47:47], data_r[48:48], data_r[49:49], data_r[50:50], data_r[51:51], data_r[52:52], data_r[53:53], data_r[54:54], data_r[55:55], data_r[56:56], data_r[57:57], data_r[58:58], data_r[59:59], data_r[60:60], data_r[61:61], data_r[62:62], data_r[63:63] } : 1'b0;
  assign N13 = N30;
  assign { data_n_2__0_, data_n_2__1_, data_n_2__2_, data_n_2__3_, data_n_2__4_, data_n_2__5_, data_n_2__6_, data_n_2__7_, data_n_2__8_, data_n_2__9_, data_n_2__10_, data_n_2__11_, data_n_2__12_, data_n_2__13_, data_n_2__14_, data_n_2__15_, data_n_2__16_, data_n_2__17_, data_n_2__18_, data_n_2__19_, data_n_2__20_, data_n_2__21_, data_n_2__22_, data_n_2__23_, data_n_2__24_, data_n_2__25_, data_n_2__26_, data_n_2__27_, data_n_2__28_, data_n_2__29_, data_n_2__30_, data_n_2__31_ } = (N14)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (N35)? { data_r[64:64], data_r[65:65], data_r[66:66], data_r[67:67], data_r[68:68], data_r[69:69], data_r[70:70], data_r[71:71], data_r[72:72], data_r[73:73], data_r[74:74], data_r[75:75], data_r[76:76], data_r[77:77], data_r[78:78], data_r[79:79], data_r[80:80], data_r[81:81], data_r[82:82], data_r[83:83], data_r[84:84], data_r[85:85], data_r[86:86], data_r[87:87], data_r[88:88], data_r[89:89], data_r[90:90], data_r[91:91], data_r[92:92], data_r[93:93], data_r[94:94], data_r[95:95] } : 1'b0;
  assign N14 = N31;
  assign { data_n_3__0_, data_n_3__1_, data_n_3__2_, data_n_3__3_, data_n_3__4_, data_n_3__5_, data_n_3__6_, data_n_3__7_, data_n_3__8_, data_n_3__9_, data_n_3__10_, data_n_3__11_, data_n_3__12_, data_n_3__13_, data_n_3__14_, data_n_3__15_, data_n_3__16_, data_n_3__17_, data_n_3__18_, data_n_3__19_, data_n_3__20_, data_n_3__21_, data_n_3__22_, data_n_3__23_, data_n_3__24_, data_n_3__25_, data_n_3__26_, data_n_3__27_, data_n_3__28_, data_n_3__29_, data_n_3__30_, data_n_3__31_ } = (N15)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (N36)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N15 = N32;
  assign valid_o[0] = (N16)? N41 : 
                      (N42)? valid_r[0] : 1'b0;
  assign N16 = N37;
  assign valid_o[1] = (N17)? N41 : 
                      (N43)? valid_r[1] : 1'b0;
  assign N17 = N38;
  assign valid_n[2] = (N18)? N41 : 
                      (N44)? valid_r[2] : 1'b0;
  assign N18 = N39;
  assign valid_n[3] = (N19)? N41 : 
                      (N45)? 1'b0 : 1'b0;
  assign N19 = N40;
  assign data_nn[63:32] = (N20)? { data_n_3__31_, data_n_3__30_, data_n_3__29_, data_n_3__28_, data_n_3__27_, data_n_3__26_, data_n_3__25_, data_n_3__24_, data_n_3__23_, data_n_3__22_, data_n_3__21_, data_n_3__20_, data_n_3__19_, data_n_3__18_, data_n_3__17_, data_n_3__16_, data_n_3__15_, data_n_3__14_, data_n_3__13_, data_n_3__12_, data_n_3__11_, data_n_3__10_, data_n_3__9_, data_n_3__8_, data_n_3__7_, data_n_3__6_, data_n_3__5_, data_n_3__4_, data_n_3__3_, data_n_3__2_, data_n_3__1_, data_n_3__0_ } : 
                          (N21)? { data_n_2__31_, data_n_2__30_, data_n_2__29_, data_n_2__28_, data_n_2__27_, data_n_2__26_, data_n_2__25_, data_n_2__24_, data_n_2__23_, data_n_2__22_, data_n_2__21_, data_n_2__20_, data_n_2__19_, data_n_2__18_, data_n_2__17_, data_n_2__16_, data_n_2__15_, data_n_2__14_, data_n_2__13_, data_n_2__12_, data_n_2__11_, data_n_2__10_, data_n_2__9_, data_n_2__8_, data_n_2__7_, data_n_2__6_, data_n_2__5_, data_n_2__4_, data_n_2__3_, data_n_2__2_, data_n_2__1_, data_n_2__0_ } : 
                          (N22)? data_o[63:32] : 1'b0;
  assign N20 = N55;
  assign N21 = N54;
  assign N22 = N53;
  assign data_nn[95:64] = (N21)? { data_n_3__31_, data_n_3__30_, data_n_3__29_, data_n_3__28_, data_n_3__27_, data_n_3__26_, data_n_3__25_, data_n_3__24_, data_n_3__23_, data_n_3__22_, data_n_3__21_, data_n_3__20_, data_n_3__19_, data_n_3__18_, data_n_3__17_, data_n_3__16_, data_n_3__15_, data_n_3__14_, data_n_3__13_, data_n_3__12_, data_n_3__11_, data_n_3__10_, data_n_3__9_, data_n_3__8_, data_n_3__7_, data_n_3__6_, data_n_3__5_, data_n_3__4_, data_n_3__3_, data_n_3__2_, data_n_3__1_, data_n_3__0_ } : 
                          (N22)? { data_n_2__31_, data_n_2__30_, data_n_2__29_, data_n_2__28_, data_n_2__27_, data_n_2__26_, data_n_2__25_, data_n_2__24_, data_n_2__23_, data_n_2__22_, data_n_2__21_, data_n_2__20_, data_n_2__19_, data_n_2__18_, data_n_2__17_, data_n_2__16_, data_n_2__15_, data_n_2__14_, data_n_2__13_, data_n_2__12_, data_n_2__11_, data_n_2__10_, data_n_2__9_, data_n_2__8_, data_n_2__7_, data_n_2__6_, data_n_2__5_, data_n_2__4_, data_n_2__3_, data_n_2__2_, data_n_2__1_, data_n_2__0_ } : 1'b0;
  assign { N59, N58, N57, N56 } = (N23)? { 1'b0, 1'b0, valid_n } : 
                                  (N47)? { valid_n, valid_o } : 1'b0;
  assign N23 = yumi_cnt_i[1];
  assign valid_nn = (N24)? { N59, N58, N57 } : 
                    (N46)? { N58, N57, N56 } : 1'b0;
  assign N24 = yumi_cnt_i[0];
  assign data_nn[31] = (N48)? data_o[31] : 
                       (N50)? data_o[63] : 
                       (N49)? data_n_2__31_ : 
                       (N51)? data_n_3__31_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign N25 = 1'b0;
  assign data_nn[30] = (N48)? data_o[30] : 
                       (N50)? data_o[62] : 
                       (N49)? data_n_2__30_ : 
                       (N51)? data_n_3__30_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[29] = (N48)? data_o[29] : 
                       (N50)? data_o[61] : 
                       (N49)? data_n_2__29_ : 
                       (N51)? data_n_3__29_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[28] = (N48)? data_o[28] : 
                       (N50)? data_o[60] : 
                       (N49)? data_n_2__28_ : 
                       (N51)? data_n_3__28_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[27] = (N48)? data_o[27] : 
                       (N50)? data_o[59] : 
                       (N49)? data_n_2__27_ : 
                       (N51)? data_n_3__27_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[26] = (N48)? data_o[26] : 
                       (N50)? data_o[58] : 
                       (N49)? data_n_2__26_ : 
                       (N51)? data_n_3__26_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[25] = (N48)? data_o[25] : 
                       (N50)? data_o[57] : 
                       (N49)? data_n_2__25_ : 
                       (N51)? data_n_3__25_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[24] = (N48)? data_o[24] : 
                       (N50)? data_o[56] : 
                       (N49)? data_n_2__24_ : 
                       (N51)? data_n_3__24_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[23] = (N48)? data_o[23] : 
                       (N50)? data_o[55] : 
                       (N49)? data_n_2__23_ : 
                       (N51)? data_n_3__23_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[22] = (N48)? data_o[22] : 
                       (N50)? data_o[54] : 
                       (N49)? data_n_2__22_ : 
                       (N51)? data_n_3__22_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[21] = (N48)? data_o[21] : 
                       (N50)? data_o[53] : 
                       (N49)? data_n_2__21_ : 
                       (N51)? data_n_3__21_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[20] = (N48)? data_o[20] : 
                       (N50)? data_o[52] : 
                       (N49)? data_n_2__20_ : 
                       (N51)? data_n_3__20_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[19] = (N48)? data_o[19] : 
                       (N50)? data_o[51] : 
                       (N49)? data_n_2__19_ : 
                       (N51)? data_n_3__19_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[18] = (N48)? data_o[18] : 
                       (N50)? data_o[50] : 
                       (N49)? data_n_2__18_ : 
                       (N51)? data_n_3__18_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[17] = (N48)? data_o[17] : 
                       (N50)? data_o[49] : 
                       (N49)? data_n_2__17_ : 
                       (N51)? data_n_3__17_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[16] = (N48)? data_o[16] : 
                       (N50)? data_o[48] : 
                       (N49)? data_n_2__16_ : 
                       (N51)? data_n_3__16_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[15] = (N48)? data_o[15] : 
                       (N50)? data_o[47] : 
                       (N49)? data_n_2__15_ : 
                       (N51)? data_n_3__15_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[14] = (N48)? data_o[14] : 
                       (N50)? data_o[46] : 
                       (N49)? data_n_2__14_ : 
                       (N51)? data_n_3__14_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[13] = (N48)? data_o[13] : 
                       (N50)? data_o[45] : 
                       (N49)? data_n_2__13_ : 
                       (N51)? data_n_3__13_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[12] = (N48)? data_o[12] : 
                       (N50)? data_o[44] : 
                       (N49)? data_n_2__12_ : 
                       (N51)? data_n_3__12_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[11] = (N48)? data_o[11] : 
                       (N50)? data_o[43] : 
                       (N49)? data_n_2__11_ : 
                       (N51)? data_n_3__11_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[10] = (N48)? data_o[10] : 
                       (N50)? data_o[42] : 
                       (N49)? data_n_2__10_ : 
                       (N51)? data_n_3__10_ : 
                       (N25)? 1'b0 : 
                       (N25)? 1'b0 : 1'b0;
  assign data_nn[9] = (N48)? data_o[9] : 
                      (N50)? data_o[41] : 
                      (N49)? data_n_2__9_ : 
                      (N51)? data_n_3__9_ : 
                      (N25)? 1'b0 : 
                      (N25)? 1'b0 : 1'b0;
  assign data_nn[8] = (N48)? data_o[8] : 
                      (N50)? data_o[40] : 
                      (N49)? data_n_2__8_ : 
                      (N51)? data_n_3__8_ : 
                      (N25)? 1'b0 : 
                      (N25)? 1'b0 : 1'b0;
  assign data_nn[7] = (N48)? data_o[7] : 
                      (N50)? data_o[39] : 
                      (N49)? data_n_2__7_ : 
                      (N51)? data_n_3__7_ : 
                      (N25)? 1'b0 : 
                      (N25)? 1'b0 : 1'b0;
  assign data_nn[6] = (N48)? data_o[6] : 
                      (N50)? data_o[38] : 
                      (N49)? data_n_2__6_ : 
                      (N51)? data_n_3__6_ : 
                      (N25)? 1'b0 : 
                      (N25)? 1'b0 : 1'b0;
  assign data_nn[5] = (N48)? data_o[5] : 
                      (N50)? data_o[37] : 
                      (N49)? data_n_2__5_ : 
                      (N51)? data_n_3__5_ : 
                      (N25)? 1'b0 : 
                      (N25)? 1'b0 : 1'b0;
  assign data_nn[4] = (N48)? data_o[4] : 
                      (N50)? data_o[36] : 
                      (N49)? data_n_2__4_ : 
                      (N51)? data_n_3__4_ : 
                      (N25)? 1'b0 : 
                      (N25)? 1'b0 : 1'b0;
  assign data_nn[3] = (N48)? data_o[3] : 
                      (N50)? data_o[35] : 
                      (N49)? data_n_2__3_ : 
                      (N51)? data_n_3__3_ : 
                      (N25)? 1'b0 : 
                      (N25)? 1'b0 : 1'b0;
  assign data_nn[2] = (N48)? data_o[2] : 
                      (N50)? data_o[34] : 
                      (N49)? data_n_2__2_ : 
                      (N51)? data_n_3__2_ : 
                      (N25)? 1'b0 : 
                      (N25)? 1'b0 : 1'b0;
  assign data_nn[1] = (N48)? data_o[1] : 
                      (N50)? data_o[33] : 
                      (N49)? data_n_2__1_ : 
                      (N51)? data_n_3__1_ : 
                      (N25)? 1'b0 : 
                      (N25)? 1'b0 : 1'b0;
  assign data_nn[0] = (N48)? data_o[0] : 
                      (N50)? data_o[32] : 
                      (N49)? data_n_2__0_ : 
                      (N51)? data_n_3__0_ : 
                      (N25)? 1'b0 : 
                      (N25)? 1'b0 : 1'b0;
  assign ready_o = ~valid_r[2];
  assign N26 = valid_i & ready_o;
  assign N33 = ~N29;
  assign N34 = ~N30;
  assign N35 = ~N31;
  assign N36 = ~N32;
  assign N41 = valid_i & ready_o;
  assign N42 = ~N37;
  assign N43 = ~N38;
  assign N44 = ~N39;
  assign N45 = ~N40;
  assign N46 = ~yumi_cnt_i[0];
  assign N47 = ~yumi_cnt_i[1];
  assign N48 = N46 & N47;
  assign N49 = N46 & yumi_cnt_i[1];
  assign N50 = yumi_cnt_i[0] & N47;
  assign N51 = yumi_cnt_i[0] & yumi_cnt_i[1];

  always @(posedge clk_i) begin
    if(reset_i) begin
      valid_r_2_sv2v_reg <= 1'b0;
      valid_r_1_sv2v_reg <= 1'b0;
      valid_r_0_sv2v_reg <= 1'b0;
      num_els_r_1_sv2v_reg <= 1'b0;
      num_els_r_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      valid_r_2_sv2v_reg <= valid_nn[2];
      valid_r_1_sv2v_reg <= valid_nn[1];
      valid_r_0_sv2v_reg <= valid_nn[0];
      num_els_r_1_sv2v_reg <= num_els_n[1];
      num_els_r_0_sv2v_reg <= num_els_n[0];
    end 
    if(N60) begin
      data_r_95_sv2v_reg <= 1'b0;
      data_r_94_sv2v_reg <= 1'b0;
      data_r_93_sv2v_reg <= 1'b0;
      data_r_92_sv2v_reg <= 1'b0;
      data_r_91_sv2v_reg <= 1'b0;
      data_r_90_sv2v_reg <= 1'b0;
      data_r_89_sv2v_reg <= 1'b0;
      data_r_88_sv2v_reg <= 1'b0;
      data_r_87_sv2v_reg <= 1'b0;
      data_r_86_sv2v_reg <= 1'b0;
      data_r_85_sv2v_reg <= 1'b0;
      data_r_84_sv2v_reg <= 1'b0;
      data_r_83_sv2v_reg <= 1'b0;
      data_r_82_sv2v_reg <= 1'b0;
      data_r_81_sv2v_reg <= 1'b0;
      data_r_80_sv2v_reg <= 1'b0;
      data_r_79_sv2v_reg <= 1'b0;
      data_r_78_sv2v_reg <= 1'b0;
      data_r_77_sv2v_reg <= 1'b0;
      data_r_76_sv2v_reg <= 1'b0;
      data_r_75_sv2v_reg <= 1'b0;
      data_r_74_sv2v_reg <= 1'b0;
      data_r_73_sv2v_reg <= 1'b0;
      data_r_72_sv2v_reg <= 1'b0;
      data_r_71_sv2v_reg <= 1'b0;
      data_r_70_sv2v_reg <= 1'b0;
      data_r_69_sv2v_reg <= 1'b0;
      data_r_68_sv2v_reg <= 1'b0;
      data_r_67_sv2v_reg <= 1'b0;
      data_r_66_sv2v_reg <= 1'b0;
      data_r_65_sv2v_reg <= 1'b0;
      data_r_64_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      data_r_95_sv2v_reg <= data_nn[95];
      data_r_94_sv2v_reg <= data_nn[94];
      data_r_93_sv2v_reg <= data_nn[93];
      data_r_92_sv2v_reg <= data_nn[92];
      data_r_91_sv2v_reg <= data_nn[91];
      data_r_90_sv2v_reg <= data_nn[90];
      data_r_89_sv2v_reg <= data_nn[89];
      data_r_88_sv2v_reg <= data_nn[88];
      data_r_87_sv2v_reg <= data_nn[87];
      data_r_86_sv2v_reg <= data_nn[86];
      data_r_85_sv2v_reg <= data_nn[85];
      data_r_84_sv2v_reg <= data_nn[84];
      data_r_83_sv2v_reg <= data_nn[83];
      data_r_82_sv2v_reg <= data_nn[82];
      data_r_81_sv2v_reg <= data_nn[81];
      data_r_80_sv2v_reg <= data_nn[80];
      data_r_79_sv2v_reg <= data_nn[79];
      data_r_78_sv2v_reg <= data_nn[78];
      data_r_77_sv2v_reg <= data_nn[77];
      data_r_76_sv2v_reg <= data_nn[76];
      data_r_75_sv2v_reg <= data_nn[75];
      data_r_74_sv2v_reg <= data_nn[74];
      data_r_73_sv2v_reg <= data_nn[73];
      data_r_72_sv2v_reg <= data_nn[72];
      data_r_71_sv2v_reg <= data_nn[71];
      data_r_70_sv2v_reg <= data_nn[70];
      data_r_69_sv2v_reg <= data_nn[69];
      data_r_68_sv2v_reg <= data_nn[68];
      data_r_67_sv2v_reg <= data_nn[67];
      data_r_66_sv2v_reg <= data_nn[66];
      data_r_65_sv2v_reg <= data_nn[65];
      data_r_64_sv2v_reg <= data_nn[64];
    end 
    if(N52) begin
      data_r_63_sv2v_reg <= 1'b0;
      data_r_62_sv2v_reg <= 1'b0;
      data_r_61_sv2v_reg <= 1'b0;
      data_r_60_sv2v_reg <= 1'b0;
      data_r_59_sv2v_reg <= 1'b0;
      data_r_58_sv2v_reg <= 1'b0;
      data_r_57_sv2v_reg <= 1'b0;
      data_r_56_sv2v_reg <= 1'b0;
      data_r_55_sv2v_reg <= 1'b0;
      data_r_54_sv2v_reg <= 1'b0;
      data_r_53_sv2v_reg <= 1'b0;
      data_r_52_sv2v_reg <= 1'b0;
      data_r_51_sv2v_reg <= 1'b0;
      data_r_50_sv2v_reg <= 1'b0;
      data_r_49_sv2v_reg <= 1'b0;
      data_r_48_sv2v_reg <= 1'b0;
      data_r_47_sv2v_reg <= 1'b0;
      data_r_46_sv2v_reg <= 1'b0;
      data_r_45_sv2v_reg <= 1'b0;
      data_r_44_sv2v_reg <= 1'b0;
      data_r_43_sv2v_reg <= 1'b0;
      data_r_42_sv2v_reg <= 1'b0;
      data_r_41_sv2v_reg <= 1'b0;
      data_r_40_sv2v_reg <= 1'b0;
      data_r_39_sv2v_reg <= 1'b0;
      data_r_38_sv2v_reg <= 1'b0;
      data_r_37_sv2v_reg <= 1'b0;
      data_r_36_sv2v_reg <= 1'b0;
      data_r_35_sv2v_reg <= 1'b0;
      data_r_34_sv2v_reg <= 1'b0;
      data_r_33_sv2v_reg <= 1'b0;
      data_r_32_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      data_r_63_sv2v_reg <= data_nn[63];
      data_r_62_sv2v_reg <= data_nn[62];
      data_r_61_sv2v_reg <= data_nn[61];
      data_r_60_sv2v_reg <= data_nn[60];
      data_r_59_sv2v_reg <= data_nn[59];
      data_r_58_sv2v_reg <= data_nn[58];
      data_r_57_sv2v_reg <= data_nn[57];
      data_r_56_sv2v_reg <= data_nn[56];
      data_r_55_sv2v_reg <= data_nn[55];
      data_r_54_sv2v_reg <= data_nn[54];
      data_r_53_sv2v_reg <= data_nn[53];
      data_r_52_sv2v_reg <= data_nn[52];
      data_r_51_sv2v_reg <= data_nn[51];
      data_r_50_sv2v_reg <= data_nn[50];
      data_r_49_sv2v_reg <= data_nn[49];
      data_r_48_sv2v_reg <= data_nn[48];
      data_r_47_sv2v_reg <= data_nn[47];
      data_r_46_sv2v_reg <= data_nn[46];
      data_r_45_sv2v_reg <= data_nn[45];
      data_r_44_sv2v_reg <= data_nn[44];
      data_r_43_sv2v_reg <= data_nn[43];
      data_r_42_sv2v_reg <= data_nn[42];
      data_r_41_sv2v_reg <= data_nn[41];
      data_r_40_sv2v_reg <= data_nn[40];
      data_r_39_sv2v_reg <= data_nn[39];
      data_r_38_sv2v_reg <= data_nn[38];
      data_r_37_sv2v_reg <= data_nn[37];
      data_r_36_sv2v_reg <= data_nn[36];
      data_r_35_sv2v_reg <= data_nn[35];
      data_r_34_sv2v_reg <= data_nn[34];
      data_r_33_sv2v_reg <= data_nn[33];
      data_r_32_sv2v_reg <= data_nn[32];
    end 
    if(1'b1) begin
      data_r_31_sv2v_reg <= data_nn[31];
      data_r_30_sv2v_reg <= data_nn[30];
      data_r_29_sv2v_reg <= data_nn[29];
      data_r_28_sv2v_reg <= data_nn[28];
      data_r_27_sv2v_reg <= data_nn[27];
      data_r_26_sv2v_reg <= data_nn[26];
      data_r_25_sv2v_reg <= data_nn[25];
      data_r_24_sv2v_reg <= data_nn[24];
      data_r_23_sv2v_reg <= data_nn[23];
      data_r_22_sv2v_reg <= data_nn[22];
      data_r_21_sv2v_reg <= data_nn[21];
      data_r_20_sv2v_reg <= data_nn[20];
      data_r_19_sv2v_reg <= data_nn[19];
      data_r_18_sv2v_reg <= data_nn[18];
      data_r_17_sv2v_reg <= data_nn[17];
      data_r_16_sv2v_reg <= data_nn[16];
      data_r_15_sv2v_reg <= data_nn[15];
      data_r_14_sv2v_reg <= data_nn[14];
      data_r_13_sv2v_reg <= data_nn[13];
      data_r_12_sv2v_reg <= data_nn[12];
      data_r_11_sv2v_reg <= data_nn[11];
      data_r_10_sv2v_reg <= data_nn[10];
      data_r_9_sv2v_reg <= data_nn[9];
      data_r_8_sv2v_reg <= data_nn[8];
      data_r_7_sv2v_reg <= data_nn[7];
      data_r_6_sv2v_reg <= data_nn[6];
      data_r_5_sv2v_reg <= data_nn[5];
      data_r_4_sv2v_reg <= data_nn[4];
      data_r_3_sv2v_reg <= data_nn[3];
      data_r_2_sv2v_reg <= data_nn[2];
      data_r_1_sv2v_reg <= data_nn[1];
      data_r_0_sv2v_reg <= data_nn[0];
    end 
  end


endmodule



module bsg_circular_ptr_slots_p1_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [0:0] o;
  output [0:0] n_o;
  input clk;
  input reset_i;
  wire [0:0] o,n_o;
  reg o_0_sv2v_reg;
  assign o[0] = o_0_sv2v_reg;
  assign n_o[0] = 1'b0;

  always @(posedge clk) begin
    if(reset_i) begin
      o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_0_sv2v_reg <= 1'b0;
    end 
  end


endmodule



module bsg_mem_1rw_sync_synth_width_p64_els_p1_latch_last_read_p0
(
  clk_i,
  v_i,
  reset_i,
  data_i,
  addr_i,
  w_i,
  data_o
);

  input [63:0] data_i;
  input [0:0] addr_i;
  output [63:0] data_o;
  input clk_i;
  input v_i;
  input reset_i;
  input w_i;
  wire [63:0] data_o;
  wire N0,N1,N2,N3,N4,N5;
  reg data_o_63_sv2v_reg,data_o_62_sv2v_reg,data_o_61_sv2v_reg,data_o_60_sv2v_reg,
  data_o_59_sv2v_reg,data_o_58_sv2v_reg,data_o_57_sv2v_reg,data_o_56_sv2v_reg,
  data_o_55_sv2v_reg,data_o_54_sv2v_reg,data_o_53_sv2v_reg,data_o_52_sv2v_reg,
  data_o_51_sv2v_reg,data_o_50_sv2v_reg,data_o_49_sv2v_reg,data_o_48_sv2v_reg,
  data_o_47_sv2v_reg,data_o_46_sv2v_reg,data_o_45_sv2v_reg,data_o_44_sv2v_reg,data_o_43_sv2v_reg,
  data_o_42_sv2v_reg,data_o_41_sv2v_reg,data_o_40_sv2v_reg,data_o_39_sv2v_reg,
  data_o_38_sv2v_reg,data_o_37_sv2v_reg,data_o_36_sv2v_reg,data_o_35_sv2v_reg,
  data_o_34_sv2v_reg,data_o_33_sv2v_reg,data_o_32_sv2v_reg,data_o_31_sv2v_reg,
  data_o_30_sv2v_reg,data_o_29_sv2v_reg,data_o_28_sv2v_reg,data_o_27_sv2v_reg,
  data_o_26_sv2v_reg,data_o_25_sv2v_reg,data_o_24_sv2v_reg,data_o_23_sv2v_reg,data_o_22_sv2v_reg,
  data_o_21_sv2v_reg,data_o_20_sv2v_reg,data_o_19_sv2v_reg,data_o_18_sv2v_reg,
  data_o_17_sv2v_reg,data_o_16_sv2v_reg,data_o_15_sv2v_reg,data_o_14_sv2v_reg,
  data_o_13_sv2v_reg,data_o_12_sv2v_reg,data_o_11_sv2v_reg,data_o_10_sv2v_reg,
  data_o_9_sv2v_reg,data_o_8_sv2v_reg,data_o_7_sv2v_reg,data_o_6_sv2v_reg,data_o_5_sv2v_reg,
  data_o_4_sv2v_reg,data_o_3_sv2v_reg,data_o_2_sv2v_reg,data_o_1_sv2v_reg,
  data_o_0_sv2v_reg;
  assign data_o[63] = data_o_63_sv2v_reg;
  assign data_o[62] = data_o_62_sv2v_reg;
  assign data_o[61] = data_o_61_sv2v_reg;
  assign data_o[60] = data_o_60_sv2v_reg;
  assign data_o[59] = data_o_59_sv2v_reg;
  assign data_o[58] = data_o_58_sv2v_reg;
  assign data_o[57] = data_o_57_sv2v_reg;
  assign data_o[56] = data_o_56_sv2v_reg;
  assign data_o[55] = data_o_55_sv2v_reg;
  assign data_o[54] = data_o_54_sv2v_reg;
  assign data_o[53] = data_o_53_sv2v_reg;
  assign data_o[52] = data_o_52_sv2v_reg;
  assign data_o[51] = data_o_51_sv2v_reg;
  assign data_o[50] = data_o_50_sv2v_reg;
  assign data_o[49] = data_o_49_sv2v_reg;
  assign data_o[48] = data_o_48_sv2v_reg;
  assign data_o[47] = data_o_47_sv2v_reg;
  assign data_o[46] = data_o_46_sv2v_reg;
  assign data_o[45] = data_o_45_sv2v_reg;
  assign data_o[44] = data_o_44_sv2v_reg;
  assign data_o[43] = data_o_43_sv2v_reg;
  assign data_o[42] = data_o_42_sv2v_reg;
  assign data_o[41] = data_o_41_sv2v_reg;
  assign data_o[40] = data_o_40_sv2v_reg;
  assign data_o[39] = data_o_39_sv2v_reg;
  assign data_o[38] = data_o_38_sv2v_reg;
  assign data_o[37] = data_o_37_sv2v_reg;
  assign data_o[36] = data_o_36_sv2v_reg;
  assign data_o[35] = data_o_35_sv2v_reg;
  assign data_o[34] = data_o_34_sv2v_reg;
  assign data_o[33] = data_o_33_sv2v_reg;
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
  assign N5 = ~addr_i[0];
  assign N3 = 1'b1 & N5;
  assign N4 = (N0)? N3 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = N1;
  assign N1 = v_i & w_i;
  assign N2 = ~N1;

  always @(posedge clk_i) begin
    if(N4) begin
      data_o_63_sv2v_reg <= data_i[63];
      data_o_62_sv2v_reg <= data_i[62];
      data_o_61_sv2v_reg <= data_i[61];
      data_o_60_sv2v_reg <= data_i[60];
      data_o_59_sv2v_reg <= data_i[59];
      data_o_58_sv2v_reg <= data_i[58];
      data_o_57_sv2v_reg <= data_i[57];
      data_o_56_sv2v_reg <= data_i[56];
      data_o_55_sv2v_reg <= data_i[55];
      data_o_54_sv2v_reg <= data_i[54];
      data_o_53_sv2v_reg <= data_i[53];
      data_o_52_sv2v_reg <= data_i[52];
      data_o_51_sv2v_reg <= data_i[51];
      data_o_50_sv2v_reg <= data_i[50];
      data_o_49_sv2v_reg <= data_i[49];
      data_o_48_sv2v_reg <= data_i[48];
      data_o_47_sv2v_reg <= data_i[47];
      data_o_46_sv2v_reg <= data_i[46];
      data_o_45_sv2v_reg <= data_i[45];
      data_o_44_sv2v_reg <= data_i[44];
      data_o_43_sv2v_reg <= data_i[43];
      data_o_42_sv2v_reg <= data_i[42];
      data_o_41_sv2v_reg <= data_i[41];
      data_o_40_sv2v_reg <= data_i[40];
      data_o_39_sv2v_reg <= data_i[39];
      data_o_38_sv2v_reg <= data_i[38];
      data_o_37_sv2v_reg <= data_i[37];
      data_o_36_sv2v_reg <= data_i[36];
      data_o_35_sv2v_reg <= data_i[35];
      data_o_34_sv2v_reg <= data_i[34];
      data_o_33_sv2v_reg <= data_i[33];
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



module bsg_mem_1rw_sync_width_p64_els_p1
(
  clk_i,
  reset_i,
  data_i,
  addr_i,
  v_i,
  w_i,
  data_o
);

  input [63:0] data_i;
  input [0:0] addr_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input w_i;
  wire [63:0] data_o;

  bsg_mem_1rw_sync_synth_width_p64_els_p1_latch_last_read_p0
  synth
  (
    .clk_i(clk_i),
    .v_i(v_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .addr_i(addr_i[0]),
    .w_i(w_i),
    .data_o(data_o)
  );


endmodule



module bsg_fifo_1rw_large_width_p64_els_p1
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  enq_not_deq_i,
  full_o,
  empty_o,
  data_o
);

  input [63:0] data_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input enq_not_deq_i;
  output full_o;
  output empty_o;
  wire [63:0] data_o;
  wire full_o,empty_o,N0,N1,N2,N3,N4,mem_we,mem_re,N5,N6,last_op_is_read_r,N7,N8,N9,
  _0_net__0_,N10,N11,N12,N13,sv2v_dc_1,sv2v_dc_2;
  wire [0:0] rd_ptr,wr_ptr;
  reg last_op_is_read_r_sv2v_reg;
  assign last_op_is_read_r = last_op_is_read_r_sv2v_reg;
  assign N0 = rd_ptr[0] ^ wr_ptr[0];
  assign N8 = ~N0;
  assign N1 = rd_ptr[0] ^ wr_ptr[0];
  assign N9 = ~N1;

  bsg_circular_ptr_slots_p1_max_add_p1
  rd_circ_ptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(mem_re),
    .o(rd_ptr[0]),
    .n_o(sv2v_dc_1)
  );


  bsg_circular_ptr_slots_p1_max_add_p1
  wr_circ_ptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(mem_we),
    .o(wr_ptr[0]),
    .n_o(sv2v_dc_2)
  );


  bsg_mem_1rw_sync_width_p64_els_p1
  mem_1srw
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .addr_i(_0_net__0_),
    .v_i(v_i),
    .w_i(mem_we),
    .data_o(data_o)
  );

  assign N7 = (N2)? 1'b1 : 
              (N6)? 1'b0 : 1'b0;
  assign N2 = N5;
  assign _0_net__0_ = (N3)? wr_ptr[0] : 
                      (N4)? rd_ptr[0] : 1'b0;
  assign N3 = N11;
  assign N4 = N10;
  assign mem_we = enq_not_deq_i & v_i;
  assign mem_re = N12 & v_i;
  assign N12 = ~enq_not_deq_i;
  assign N5 = v_i;
  assign N6 = ~N5;
  assign empty_o = N8 & last_op_is_read_r;
  assign full_o = N9 & N13;
  assign N13 = ~last_op_is_read_r;
  assign N10 = ~mem_we;
  assign N11 = mem_we;

  always @(posedge clk_i) begin
    if(reset_i) begin
      last_op_is_read_r_sv2v_reg <= 1'b1;
    end else if(N7) begin
      last_op_is_read_r_sv2v_reg <= mem_re;
    end 
  end


endmodule



module bsg_thermometer_count_width_p2
(
  i,
  o
);

  input [1:0] i;
  output [1:0] o;
  wire [1:0] o;
  wire o_1_,N0;
  assign o_1_ = i[1];
  assign o[1] = o_1_;
  assign o[0] = i[0] & N0;
  assign N0 = ~o_1_;

endmodule



module bsg_round_robin_2_to_2_width_p32
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  data_o,
  v_o,
  ready_i
);

  input [63:0] data_i;
  input [1:0] v_i;
  output [1:0] ready_o;
  output [63:0] data_o;
  output [1:0] v_o;
  input [1:0] ready_i;
  input clk_i;
  input reset_i;
  wire [1:0] ready_o,v_o;
  wire [63:0] data_o;
  wire N0,N1,head_r,N2,N3,N4,N5,N6;
  reg head_r_sv2v_reg;
  assign head_r = head_r_sv2v_reg;
  assign data_o = (N0)? { data_i[31:0], data_i[63:32] } : 
                  (N1)? data_i : 1'b0;
  assign N0 = head_r;
  assign N1 = N3;
  assign v_o = (N0)? { v_i[0:0], v_i[1:1] } : 
               (N1)? v_i : 1'b0;
  assign ready_o = (N0)? { ready_i[0:0], ready_i[1:1] } : 
                   (N1)? ready_i : 1'b0;
  assign N2 = N5 ^ N6;
  assign N5 = head_r ^ N4;
  assign N4 = v_i[1] & ready_o[1];
  assign N6 = v_i[0] & ready_o[0];
  assign N3 = ~head_r;

  always @(posedge clk_i) begin
    if(reset_i) begin
      head_r_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      head_r_sv2v_reg <= N2;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p32_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [31:0] w_data_i;
  input [0:0] r_addr_i;
  output [31:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [31:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  wire [63:0] mem;
  reg mem_63_sv2v_reg,mem_62_sv2v_reg,mem_61_sv2v_reg,mem_60_sv2v_reg,mem_59_sv2v_reg,
  mem_58_sv2v_reg,mem_57_sv2v_reg,mem_56_sv2v_reg,mem_55_sv2v_reg,mem_54_sv2v_reg,
  mem_53_sv2v_reg,mem_52_sv2v_reg,mem_51_sv2v_reg,mem_50_sv2v_reg,mem_49_sv2v_reg,
  mem_48_sv2v_reg,mem_47_sv2v_reg,mem_46_sv2v_reg,mem_45_sv2v_reg,mem_44_sv2v_reg,
  mem_43_sv2v_reg,mem_42_sv2v_reg,mem_41_sv2v_reg,mem_40_sv2v_reg,mem_39_sv2v_reg,
  mem_38_sv2v_reg,mem_37_sv2v_reg,mem_36_sv2v_reg,mem_35_sv2v_reg,mem_34_sv2v_reg,
  mem_33_sv2v_reg,mem_32_sv2v_reg,mem_31_sv2v_reg,mem_30_sv2v_reg,mem_29_sv2v_reg,
  mem_28_sv2v_reg,mem_27_sv2v_reg,mem_26_sv2v_reg,mem_25_sv2v_reg,mem_24_sv2v_reg,
  mem_23_sv2v_reg,mem_22_sv2v_reg,mem_21_sv2v_reg,mem_20_sv2v_reg,mem_19_sv2v_reg,
  mem_18_sv2v_reg,mem_17_sv2v_reg,mem_16_sv2v_reg,mem_15_sv2v_reg,mem_14_sv2v_reg,
  mem_13_sv2v_reg,mem_12_sv2v_reg,mem_11_sv2v_reg,mem_10_sv2v_reg,mem_9_sv2v_reg,
  mem_8_sv2v_reg,mem_7_sv2v_reg,mem_6_sv2v_reg,mem_5_sv2v_reg,mem_4_sv2v_reg,
  mem_3_sv2v_reg,mem_2_sv2v_reg,mem_1_sv2v_reg,mem_0_sv2v_reg;
  assign mem[63] = mem_63_sv2v_reg;
  assign mem[62] = mem_62_sv2v_reg;
  assign mem[61] = mem_61_sv2v_reg;
  assign mem[60] = mem_60_sv2v_reg;
  assign mem[59] = mem_59_sv2v_reg;
  assign mem[58] = mem_58_sv2v_reg;
  assign mem[57] = mem_57_sv2v_reg;
  assign mem[56] = mem_56_sv2v_reg;
  assign mem[55] = mem_55_sv2v_reg;
  assign mem[54] = mem_54_sv2v_reg;
  assign mem[53] = mem_53_sv2v_reg;
  assign mem[52] = mem_52_sv2v_reg;
  assign mem[51] = mem_51_sv2v_reg;
  assign mem[50] = mem_50_sv2v_reg;
  assign mem[49] = mem_49_sv2v_reg;
  assign mem[48] = mem_48_sv2v_reg;
  assign mem[47] = mem_47_sv2v_reg;
  assign mem[46] = mem_46_sv2v_reg;
  assign mem[45] = mem_45_sv2v_reg;
  assign mem[44] = mem_44_sv2v_reg;
  assign mem[43] = mem_43_sv2v_reg;
  assign mem[42] = mem_42_sv2v_reg;
  assign mem[41] = mem_41_sv2v_reg;
  assign mem[40] = mem_40_sv2v_reg;
  assign mem[39] = mem_39_sv2v_reg;
  assign mem[38] = mem_38_sv2v_reg;
  assign mem[37] = mem_37_sv2v_reg;
  assign mem[36] = mem_36_sv2v_reg;
  assign mem[35] = mem_35_sv2v_reg;
  assign mem[34] = mem_34_sv2v_reg;
  assign mem[33] = mem_33_sv2v_reg;
  assign mem[32] = mem_32_sv2v_reg;
  assign mem[31] = mem_31_sv2v_reg;
  assign mem[30] = mem_30_sv2v_reg;
  assign mem[29] = mem_29_sv2v_reg;
  assign mem[28] = mem_28_sv2v_reg;
  assign mem[27] = mem_27_sv2v_reg;
  assign mem[26] = mem_26_sv2v_reg;
  assign mem[25] = mem_25_sv2v_reg;
  assign mem[24] = mem_24_sv2v_reg;
  assign mem[23] = mem_23_sv2v_reg;
  assign mem[22] = mem_22_sv2v_reg;
  assign mem[21] = mem_21_sv2v_reg;
  assign mem[20] = mem_20_sv2v_reg;
  assign mem[19] = mem_19_sv2v_reg;
  assign mem[18] = mem_18_sv2v_reg;
  assign mem[17] = mem_17_sv2v_reg;
  assign mem[16] = mem_16_sv2v_reg;
  assign mem[15] = mem_15_sv2v_reg;
  assign mem[14] = mem_14_sv2v_reg;
  assign mem[13] = mem_13_sv2v_reg;
  assign mem[12] = mem_12_sv2v_reg;
  assign mem[11] = mem_11_sv2v_reg;
  assign mem[10] = mem_10_sv2v_reg;
  assign mem[9] = mem_9_sv2v_reg;
  assign mem[8] = mem_8_sv2v_reg;
  assign mem[7] = mem_7_sv2v_reg;
  assign mem[6] = mem_6_sv2v_reg;
  assign mem[5] = mem_5_sv2v_reg;
  assign mem[4] = mem_4_sv2v_reg;
  assign mem[3] = mem_3_sv2v_reg;
  assign mem[2] = mem_2_sv2v_reg;
  assign mem[1] = mem_1_sv2v_reg;
  assign mem[0] = mem_0_sv2v_reg;
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[63] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[62] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[61] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[60] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[59] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[58] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[57] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[56] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[55] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[54] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[53] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[52] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[51] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[50] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[49] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[48] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[47] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[46] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[45] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[44] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[43] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[42] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[41] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[40] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[39] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[38] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[37] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[36] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[35] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[34] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[33] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[32] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_63_sv2v_reg <= w_data_i[31];
      mem_62_sv2v_reg <= w_data_i[30];
      mem_61_sv2v_reg <= w_data_i[29];
      mem_60_sv2v_reg <= w_data_i[28];
      mem_59_sv2v_reg <= w_data_i[27];
      mem_58_sv2v_reg <= w_data_i[26];
      mem_57_sv2v_reg <= w_data_i[25];
      mem_56_sv2v_reg <= w_data_i[24];
      mem_55_sv2v_reg <= w_data_i[23];
      mem_54_sv2v_reg <= w_data_i[22];
      mem_53_sv2v_reg <= w_data_i[21];
      mem_52_sv2v_reg <= w_data_i[20];
      mem_51_sv2v_reg <= w_data_i[19];
      mem_50_sv2v_reg <= w_data_i[18];
      mem_49_sv2v_reg <= w_data_i[17];
      mem_48_sv2v_reg <= w_data_i[16];
      mem_47_sv2v_reg <= w_data_i[15];
      mem_46_sv2v_reg <= w_data_i[14];
      mem_45_sv2v_reg <= w_data_i[13];
      mem_44_sv2v_reg <= w_data_i[12];
      mem_43_sv2v_reg <= w_data_i[11];
      mem_42_sv2v_reg <= w_data_i[10];
      mem_41_sv2v_reg <= w_data_i[9];
      mem_40_sv2v_reg <= w_data_i[8];
      mem_39_sv2v_reg <= w_data_i[7];
      mem_38_sv2v_reg <= w_data_i[6];
      mem_37_sv2v_reg <= w_data_i[5];
      mem_36_sv2v_reg <= w_data_i[4];
      mem_35_sv2v_reg <= w_data_i[3];
      mem_34_sv2v_reg <= w_data_i[2];
      mem_33_sv2v_reg <= w_data_i[1];
      mem_32_sv2v_reg <= w_data_i[0];
    end 
    if(N7) begin
      mem_31_sv2v_reg <= w_data_i[31];
      mem_30_sv2v_reg <= w_data_i[30];
      mem_29_sv2v_reg <= w_data_i[29];
      mem_28_sv2v_reg <= w_data_i[28];
      mem_27_sv2v_reg <= w_data_i[27];
      mem_26_sv2v_reg <= w_data_i[26];
      mem_25_sv2v_reg <= w_data_i[25];
      mem_24_sv2v_reg <= w_data_i[24];
      mem_23_sv2v_reg <= w_data_i[23];
      mem_22_sv2v_reg <= w_data_i[22];
      mem_21_sv2v_reg <= w_data_i[21];
      mem_20_sv2v_reg <= w_data_i[20];
      mem_19_sv2v_reg <= w_data_i[19];
      mem_18_sv2v_reg <= w_data_i[18];
      mem_17_sv2v_reg <= w_data_i[17];
      mem_16_sv2v_reg <= w_data_i[16];
      mem_15_sv2v_reg <= w_data_i[15];
      mem_14_sv2v_reg <= w_data_i[14];
      mem_13_sv2v_reg <= w_data_i[13];
      mem_12_sv2v_reg <= w_data_i[12];
      mem_11_sv2v_reg <= w_data_i[11];
      mem_10_sv2v_reg <= w_data_i[10];
      mem_9_sv2v_reg <= w_data_i[9];
      mem_8_sv2v_reg <= w_data_i[8];
      mem_7_sv2v_reg <= w_data_i[7];
      mem_6_sv2v_reg <= w_data_i[6];
      mem_5_sv2v_reg <= w_data_i[5];
      mem_4_sv2v_reg <= w_data_i[4];
      mem_3_sv2v_reg <= w_data_i[3];
      mem_2_sv2v_reg <= w_data_i[2];
      mem_1_sv2v_reg <= w_data_i[1];
      mem_0_sv2v_reg <= w_data_i[0];
    end 
  end


endmodule



module bsg_mem_1r1w_width_p32_els_p2_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [31:0] w_data_i;
  input [0:0] r_addr_i;
  output [31:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [31:0] r_data_o;

  bsg_mem_1r1w_synth_width_p32_els_p2_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i[0]),
    .w_data_i(w_data_i),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i[0]),
    .r_data_o(r_data_o)
  );


endmodule



module bsg_two_fifo_width_p32
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  yumi_i
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [31:0] data_o;
  wire ready_o,v_o,enq_i,tail_r,_0_net_,head_r,empty_r,full_r,N0,N1,N2,N3,N4,N5,N6,N7,
  N8,N9,N10,N11,N12,N13,N14;
  reg full_r_sv2v_reg,tail_r_sv2v_reg,head_r_sv2v_reg,empty_r_sv2v_reg;
  assign full_r = full_r_sv2v_reg;
  assign tail_r = tail_r_sv2v_reg;
  assign head_r = head_r_sv2v_reg;
  assign empty_r = empty_r_sv2v_reg;

  bsg_mem_1r1w_width_p32_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i),
    .r_v_i(_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o)
  );

  assign _0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N5;
  assign N5 = ~full_r;
  assign N1 = enq_i;
  assign N0 = ~tail_r;
  assign N2 = ~head_r;
  assign N3 = N7 | N9;
  assign N7 = empty_r & N6;
  assign N6 = ~enq_i;
  assign N9 = N8 & N6;
  assign N8 = N5 & yumi_i;
  assign N4 = N13 | N14;
  assign N13 = N11 & N12;
  assign N11 = N10 & enq_i;
  assign N10 = ~empty_r;
  assign N12 = ~yumi_i;
  assign N14 = full_r & N12;

  always @(posedge clk_i) begin
    if(reset_i) begin
      full_r_sv2v_reg <= 1'b0;
      empty_r_sv2v_reg <= 1'b1;
    end else if(1'b1) begin
      full_r_sv2v_reg <= N4;
      empty_r_sv2v_reg <= N3;
    end 
    if(reset_i) begin
      tail_r_sv2v_reg <= 1'b0;
    end else if(N1) begin
      tail_r_sv2v_reg <= N0;
    end 
    if(reset_i) begin
      head_r_sv2v_reg <= 1'b0;
    end else if(yumi_i) begin
      head_r_sv2v_reg <= N2;
    end 
  end


endmodule



module bsg_circular_ptr_slots_p2_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [0:0] o;
  output [0:0] n_o;
  input clk;
  input reset_i;
  wire [0:0] o,n_o,\genblk1.genblk1.ptr_r_p1 ;
  wire N0,N1,N2;
  reg o_0_sv2v_reg;
  assign o[0] = o_0_sv2v_reg;
  assign \genblk1.genblk1.ptr_r_p1 [0] = o[0] ^ 1'b1;
  assign n_o[0] = (N0)? \genblk1.genblk1.ptr_r_p1 [0] : 
                  (N1)? o[0] : 1'b0;
  assign N0 = add_i[0];
  assign N1 = N2;
  assign N2 = ~add_i[0];

  always @(posedge clk) begin
    if(reset_i) begin
      o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_0_sv2v_reg <= n_o[0];
    end 
  end


endmodule



module bsg_round_robin_n_to_1_width_p32_num_in_p2_strict_p1
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  yumi_o,
  v_o,
  data_o,
  tag_o,
  yumi_i
);

  input [63:0] data_i;
  input [1:0] v_i;
  output [1:0] yumi_o;
  output [31:0] data_o;
  output [0:0] tag_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;
  wire [1:0] yumi_o;
  wire [31:0] data_o;
  wire [0:0] tag_o;
  wire v_o,N0,N1,sv2v_dc_1;

  bsg_circular_ptr_slots_p2_max_add_p1
  \strict.circular_ptr 
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(yumi_i),
    .o(tag_o[0]),
    .n_o(sv2v_dc_1)
  );

  assign v_o = (N1)? v_i[0] : 
               (N0)? v_i[1] : 1'b0;
  assign N0 = tag_o[0];
  assign data_o[31] = (N1)? data_i[31] : 
                      (N0)? data_i[63] : 1'b0;
  assign data_o[30] = (N1)? data_i[30] : 
                      (N0)? data_i[62] : 1'b0;
  assign data_o[29] = (N1)? data_i[29] : 
                      (N0)? data_i[61] : 1'b0;
  assign data_o[28] = (N1)? data_i[28] : 
                      (N0)? data_i[60] : 1'b0;
  assign data_o[27] = (N1)? data_i[27] : 
                      (N0)? data_i[59] : 1'b0;
  assign data_o[26] = (N1)? data_i[26] : 
                      (N0)? data_i[58] : 1'b0;
  assign data_o[25] = (N1)? data_i[25] : 
                      (N0)? data_i[57] : 1'b0;
  assign data_o[24] = (N1)? data_i[24] : 
                      (N0)? data_i[56] : 1'b0;
  assign data_o[23] = (N1)? data_i[23] : 
                      (N0)? data_i[55] : 1'b0;
  assign data_o[22] = (N1)? data_i[22] : 
                      (N0)? data_i[54] : 1'b0;
  assign data_o[21] = (N1)? data_i[21] : 
                      (N0)? data_i[53] : 1'b0;
  assign data_o[20] = (N1)? data_i[20] : 
                      (N0)? data_i[52] : 1'b0;
  assign data_o[19] = (N1)? data_i[19] : 
                      (N0)? data_i[51] : 1'b0;
  assign data_o[18] = (N1)? data_i[18] : 
                      (N0)? data_i[50] : 1'b0;
  assign data_o[17] = (N1)? data_i[17] : 
                      (N0)? data_i[49] : 1'b0;
  assign data_o[16] = (N1)? data_i[16] : 
                      (N0)? data_i[48] : 1'b0;
  assign data_o[15] = (N1)? data_i[15] : 
                      (N0)? data_i[47] : 1'b0;
  assign data_o[14] = (N1)? data_i[14] : 
                      (N0)? data_i[46] : 1'b0;
  assign data_o[13] = (N1)? data_i[13] : 
                      (N0)? data_i[45] : 1'b0;
  assign data_o[12] = (N1)? data_i[12] : 
                      (N0)? data_i[44] : 1'b0;
  assign data_o[11] = (N1)? data_i[11] : 
                      (N0)? data_i[43] : 1'b0;
  assign data_o[10] = (N1)? data_i[10] : 
                      (N0)? data_i[42] : 1'b0;
  assign data_o[9] = (N1)? data_i[9] : 
                     (N0)? data_i[41] : 1'b0;
  assign data_o[8] = (N1)? data_i[8] : 
                     (N0)? data_i[40] : 1'b0;
  assign data_o[7] = (N1)? data_i[7] : 
                     (N0)? data_i[39] : 1'b0;
  assign data_o[6] = (N1)? data_i[6] : 
                     (N0)? data_i[38] : 1'b0;
  assign data_o[5] = (N1)? data_i[5] : 
                     (N0)? data_i[37] : 1'b0;
  assign data_o[4] = (N1)? data_i[4] : 
                     (N0)? data_i[36] : 1'b0;
  assign data_o[3] = (N1)? data_i[3] : 
                     (N0)? data_i[35] : 1'b0;
  assign data_o[2] = (N1)? data_i[2] : 
                     (N0)? data_i[34] : 1'b0;
  assign data_o[1] = (N1)? data_i[1] : 
                     (N0)? data_i[33] : 1'b0;
  assign data_o[0] = (N1)? data_i[0] : 
                     (N0)? data_i[32] : 1'b0;
  assign yumi_o = { 1'b0, yumi_i } << tag_o[0];
  assign N1 = ~tag_o[0];

endmodule



module bsg_fifo_1r1w_large_width_p32_els_p2
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  v_o,
  data_o,
  yumi_i
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [31:0] data_o;
  wire ready_o,v_o,N0,N1,N2,N3,big_deq_r,big_deq,big_valid,big_full_lo,big_empty_lo,
  bypass_mode,can_spill,emergency,will_spill,N4,N5,N6,_0_net__1_,_0_net__0_,N7,N8,N9,
  N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,sv2v_dc_1;
  wire [1:0] valid_sipo,yumi_cnt_sipo,little_ready,little_ready_rot,valid_int,bypass_vector,
  little_valid,cnt,little_valid_rot,yumi_int;
  wire [63:0] data_sipo,big_data_lo,little_data,little_data_rot,data_int;
  reg big_deq_r_sv2v_reg;
  assign big_deq_r = big_deq_r_sv2v_reg;

  bsg_serial_in_parallel_out_width_p32_els_p3_out_els_p2
  sipo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .valid_i(v_i),
    .data_i(data_i),
    .ready_o(ready_o),
    .valid_o(valid_sipo),
    .data_o(data_sipo),
    .yumi_cnt_i(yumi_cnt_sipo)
  );


  bsg_fifo_1rw_large_width_p64_els_p1
  big1p
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_sipo),
    .v_i(big_valid),
    .enq_not_deq_i(will_spill),
    .full_o(big_full_lo),
    .empty_o(big_empty_lo),
    .data_o(big_data_lo)
  );


  bsg_thermometer_count_width_p2
  thermo
  (
    .i({ _0_net__1_, _0_net__0_ }),
    .o(cnt)
  );


  bsg_round_robin_2_to_2_width_p32
  rr222
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(little_data),
    .v_i(little_valid),
    .ready_o(little_ready),
    .data_o(little_data_rot),
    .v_o(little_valid_rot),
    .ready_i(little_ready_rot)
  );


  bsg_two_fifo_width_p32
  \twofer_0_.little 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(little_ready_rot[0]),
    .data_i(little_data_rot[31:0]),
    .v_i(little_valid_rot[0]),
    .v_o(valid_int[0]),
    .data_o(data_int[31:0]),
    .yumi_i(yumi_int[0])
  );


  bsg_two_fifo_width_p32
  \twofer_1_.little 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(little_ready_rot[1]),
    .data_i(little_data_rot[63:32]),
    .v_i(little_valid_rot[1]),
    .v_o(valid_int[1]),
    .data_o(data_int[63:32]),
    .yumi_i(yumi_int[1])
  );


  bsg_round_robin_n_to_1_width_p32_num_in_p2_strict_p1
  round_robin_n_to_1
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_int),
    .v_i(valid_int),
    .yumi_o(yumi_int),
    .v_o(v_o),
    .data_o(data_o),
    .tag_o(sv2v_dc_1),
    .yumi_i(yumi_i)
  );

  assign N6 = (N0)? N4 : 
              (N1)? N5 : 1'b0;
  assign N0 = big_deq_r;
  assign N1 = N9;
  assign little_data = (N0)? big_data_lo : 
                       (N1)? data_sipo : 1'b0;
  assign little_valid = (N0)? { 1'b1, 1'b1 } : 
                        (N1)? bypass_vector : 1'b0;
  assign yumi_cnt_sipo = (N2)? { 1'b1, 1'b0 } : 
                         (N3)? cnt : 1'b0;
  assign N2 = N8;
  assign N3 = N7;
  assign bypass_mode = N10 & big_empty_lo;
  assign N10 = N9 & little_ready[0];
  assign N9 = ~big_deq_r;
  assign can_spill = N11 & N12;
  assign N11 = ~big_full_lo;
  assign N12 = ~bypass_mode;
  assign emergency = N15 & N9;
  assign N15 = N13 & N14;
  assign N13 = little_ready_rot[1] & little_ready_rot[0];
  assign N14 = ~big_empty_lo;
  assign will_spill = N17 & N18;
  assign N17 = can_spill & N16;
  assign N16 = valid_sipo[1] & valid_sipo[0];
  assign N18 = ~emergency;
  assign N4 = ~N19;
  assign N19 = valid_int[1] | valid_int[0];
  assign N5 = little_ready_rot[1] & little_ready_rot[0];
  assign big_deq = N21 & N6;
  assign N21 = N20 & N14;
  assign N20 = ~will_spill;
  assign big_valid = will_spill | big_deq;
  assign bypass_vector[1] = valid_sipo[1] & bypass_mode;
  assign bypass_vector[0] = valid_sipo[0] & bypass_mode;
  assign _0_net__1_ = little_ready[1] & bypass_vector[1];
  assign _0_net__0_ = little_ready[0] & bypass_vector[0];
  assign N7 = ~will_spill;
  assign N8 = will_spill;

  always @(posedge clk_i) begin
    if(1'b1) begin
      big_deq_r_sv2v_reg <= big_deq;
    end 
  end


endmodule



module bsg_fifo_tracker_els_p2
(
  clk_i,
  reset_i,
  enq_i,
  deq_i,
  wptr_r_o,
  rptr_r_o,
  rptr_n_o,
  full_o,
  empty_o
);

  output [0:0] wptr_r_o;
  output [0:0] rptr_r_o;
  output [0:0] rptr_n_o;
  input clk_i;
  input reset_i;
  input enq_i;
  input deq_i;
  output full_o;
  output empty_o;
  wire [0:0] wptr_r_o,rptr_r_o,rptr_n_o;
  wire full_o,empty_o,N0,N1,N2,N3,enq_r,deq_r,N4,equal_ptrs,sv2v_dc_1;
  reg deq_r_sv2v_reg,enq_r_sv2v_reg;
  assign deq_r = deq_r_sv2v_reg;
  assign enq_r = enq_r_sv2v_reg;

  bsg_circular_ptr_slots_p2_max_add_p1
  rptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(deq_i),
    .o(rptr_r_o[0]),
    .n_o(rptr_n_o[0])
  );


  bsg_circular_ptr_slots_p2_max_add_p1
  wptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(enq_i),
    .o(wptr_r_o[0]),
    .n_o(sv2v_dc_1)
  );

  assign N0 = rptr_r_o[0] ^ wptr_r_o[0];
  assign equal_ptrs = ~N0;
  assign N4 = (N1)? 1'b1 : 
              (N3)? 1'b0 : 1'b0;
  assign N1 = N2;
  assign N2 = enq_i | deq_i;
  assign N3 = ~N2;
  assign empty_o = equal_ptrs & deq_r;
  assign full_o = equal_ptrs & enq_r;

  always @(posedge clk_i) begin
    if(reset_i) begin
      deq_r_sv2v_reg <= 1'b1;
      enq_r_sv2v_reg <= 1'b0;
    end else if(N4) begin
      deq_r_sv2v_reg <= deq_i;
      enq_r_sv2v_reg <= enq_i;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p1_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [0:0] w_data_i;
  input [0:0] r_addr_i;
  output [0:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [0:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  wire [1:0] mem;
  reg mem_1_sv2v_reg,mem_0_sv2v_reg;
  assign mem[1] = mem_1_sv2v_reg;
  assign mem[0] = mem_0_sv2v_reg;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[1] : 1'b0;
  assign N0 = r_addr_i[0];
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_1_sv2v_reg <= w_data_i[0];
    end 
    if(N7) begin
      mem_0_sv2v_reg <= w_data_i[0];
    end 
  end


endmodule



module bsg_mem_1r1w_width_p1_els_p2_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [0:0] w_data_i;
  input [0:0] r_addr_i;
  output [0:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [0:0] r_data_o;

  bsg_mem_1r1w_synth_width_p1_els_p2_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i[0]),
    .w_data_i(w_data_i[0]),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i[0]),
    .r_data_o(r_data_o[0])
  );


endmodule



module bsg_fifo_1r1w_small_unhardened_width_p1_els_p2_ready_THEN_valid_p0
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  data_i,
  v_o,
  data_o,
  yumi_i
);

  input [0:0] data_i;
  output [0:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [0:0] data_o,wptr_r,rptr_r;
  wire ready_o,v_o,enque,full,empty,sv2v_dc_1;

  bsg_fifo_tracker_els_p2
  ft
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .enq_i(enque),
    .deq_i(yumi_i),
    .wptr_r_o(wptr_r[0]),
    .rptr_r_o(rptr_r[0]),
    .rptr_n_o(sv2v_dc_1),
    .full_o(full),
    .empty_o(empty)
  );


  bsg_mem_1r1w_width_p1_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enque),
    .w_addr_i(wptr_r[0]),
    .w_data_i(data_i[0]),
    .r_v_i(v_o),
    .r_addr_i(rptr_r[0]),
    .r_data_o(data_o[0])
  );

  assign enque = v_i & ready_o;
  assign ready_o = ~full;
  assign v_o = ~empty;

endmodule



module bsg_fifo_1r1w_small_width_p1_els_p2
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  data_i,
  v_o,
  data_o,
  yumi_i
);

  input [0:0] data_i;
  output [0:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [0:0] data_o;
  wire ready_o,v_o;

  bsg_fifo_1r1w_small_unhardened_width_p1_els_p2_ready_THEN_valid_p0
  \unhardened.fifo 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_i(data_i[0]),
    .v_o(v_o),
    .data_o(data_o[0]),
    .yumi_i(yumi_i)
  );


endmodule



module bsg_decode_num_out_p2
(
  i,
  o
);

  input [0:0] i;
  output [1:0] o;
  wire [1:0] o;
  assign o = { 1'b0, 1'b1 } << i[0];

endmodule



module bsg_decode_with_v_num_out_p2
(
  i,
  v_i,
  o
);

  input [0:0] i;
  output [1:0] o;
  input v_i;
  wire [1:0] o,lo;

  bsg_decode_num_out_p2
  bd
  (
    .i(i[0]),
    .o(lo)
  );

  assign o[1] = v_i & lo[1];
  assign o[0] = v_i & lo[0];

endmodule



module bsg_counter_clear_up_max_val_p0_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [0:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire [0:0] count_o;
  wire N0,N1,N2,N3,N4;
  reg count_o_0_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;
  assign N3 = count_o[0] ^ up_i;
  assign N4 = (N0)? up_i : 
              (N1)? N3 : 1'b0;
  assign N0 = clear_i;
  assign N1 = N2;
  assign N2 = ~clear_i;

  always @(posedge clk_i) begin
    if(reset_i) begin
      count_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      count_o_0_sv2v_reg <= N4;
    end 
  end


endmodule



module bsg_cache_to_dram_ctrl_rx_num_cache_p2_data_width_p32_block_size_in_words_p4_dram_ctrl_burst_len_p1
(
  clk_i,
  reset_i,
  v_i,
  tag_i,
  ready_o,
  dma_data_o,
  dma_data_v_o,
  dma_data_ready_i,
  app_rd_data_valid_i,
  app_rd_data_end_i,
  app_rd_data_i
);

  input [0:0] tag_i;
  output [63:0] dma_data_o;
  output [1:0] dma_data_v_o;
  input [1:0] dma_data_ready_i;
  input [31:0] app_rd_data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input app_rd_data_valid_i;
  input app_rd_data_end_i;
  output ready_o;
  wire [63:0] dma_data_o;
  wire [1:0] dma_data_v_o,cache_sel;
  wire ready_o,N0,N1,N2,dma_data_o_0__31_,dma_data_o_0__30_,dma_data_o_0__29_,
  dma_data_o_0__28_,dma_data_o_0__27_,dma_data_o_0__26_,dma_data_o_0__25_,
  dma_data_o_0__24_,dma_data_o_0__23_,dma_data_o_0__22_,dma_data_o_0__21_,dma_data_o_0__20_,
  dma_data_o_0__19_,dma_data_o_0__18_,dma_data_o_0__17_,dma_data_o_0__16_,
  dma_data_o_0__15_,dma_data_o_0__14_,dma_data_o_0__13_,dma_data_o_0__12_,dma_data_o_0__11_,
  dma_data_o_0__10_,dma_data_o_0__9_,dma_data_o_0__8_,dma_data_o_0__7_,
  dma_data_o_0__6_,dma_data_o_0__5_,dma_data_o_0__4_,dma_data_o_0__3_,dma_data_o_0__2_,
  dma_data_o_0__1_,dma_data_o_0__0_,fifo_v_lo,fifo_yumi_li,tag_fifo_v_lo,tag_fifo_yumi_li,N3,
  N4,counter_clear_li,counter_up_li,N5,N6;
  wire [0:0] tag_fifo_data_lo,count_lo;
  assign dma_data_o[63] = dma_data_o_0__31_;
  assign dma_data_o[31] = dma_data_o_0__31_;
  assign dma_data_o[62] = dma_data_o_0__30_;
  assign dma_data_o[30] = dma_data_o_0__30_;
  assign dma_data_o[61] = dma_data_o_0__29_;
  assign dma_data_o[29] = dma_data_o_0__29_;
  assign dma_data_o[60] = dma_data_o_0__28_;
  assign dma_data_o[28] = dma_data_o_0__28_;
  assign dma_data_o[59] = dma_data_o_0__27_;
  assign dma_data_o[27] = dma_data_o_0__27_;
  assign dma_data_o[58] = dma_data_o_0__26_;
  assign dma_data_o[26] = dma_data_o_0__26_;
  assign dma_data_o[57] = dma_data_o_0__25_;
  assign dma_data_o[25] = dma_data_o_0__25_;
  assign dma_data_o[56] = dma_data_o_0__24_;
  assign dma_data_o[24] = dma_data_o_0__24_;
  assign dma_data_o[55] = dma_data_o_0__23_;
  assign dma_data_o[23] = dma_data_o_0__23_;
  assign dma_data_o[54] = dma_data_o_0__22_;
  assign dma_data_o[22] = dma_data_o_0__22_;
  assign dma_data_o[53] = dma_data_o_0__21_;
  assign dma_data_o[21] = dma_data_o_0__21_;
  assign dma_data_o[52] = dma_data_o_0__20_;
  assign dma_data_o[20] = dma_data_o_0__20_;
  assign dma_data_o[51] = dma_data_o_0__19_;
  assign dma_data_o[19] = dma_data_o_0__19_;
  assign dma_data_o[50] = dma_data_o_0__18_;
  assign dma_data_o[18] = dma_data_o_0__18_;
  assign dma_data_o[49] = dma_data_o_0__17_;
  assign dma_data_o[17] = dma_data_o_0__17_;
  assign dma_data_o[48] = dma_data_o_0__16_;
  assign dma_data_o[16] = dma_data_o_0__16_;
  assign dma_data_o[47] = dma_data_o_0__15_;
  assign dma_data_o[15] = dma_data_o_0__15_;
  assign dma_data_o[46] = dma_data_o_0__14_;
  assign dma_data_o[14] = dma_data_o_0__14_;
  assign dma_data_o[45] = dma_data_o_0__13_;
  assign dma_data_o[13] = dma_data_o_0__13_;
  assign dma_data_o[44] = dma_data_o_0__12_;
  assign dma_data_o[12] = dma_data_o_0__12_;
  assign dma_data_o[43] = dma_data_o_0__11_;
  assign dma_data_o[11] = dma_data_o_0__11_;
  assign dma_data_o[42] = dma_data_o_0__10_;
  assign dma_data_o[10] = dma_data_o_0__10_;
  assign dma_data_o[41] = dma_data_o_0__9_;
  assign dma_data_o[9] = dma_data_o_0__9_;
  assign dma_data_o[40] = dma_data_o_0__8_;
  assign dma_data_o[8] = dma_data_o_0__8_;
  assign dma_data_o[39] = dma_data_o_0__7_;
  assign dma_data_o[7] = dma_data_o_0__7_;
  assign dma_data_o[38] = dma_data_o_0__6_;
  assign dma_data_o[6] = dma_data_o_0__6_;
  assign dma_data_o[37] = dma_data_o_0__5_;
  assign dma_data_o[5] = dma_data_o_0__5_;
  assign dma_data_o[36] = dma_data_o_0__4_;
  assign dma_data_o[4] = dma_data_o_0__4_;
  assign dma_data_o[35] = dma_data_o_0__3_;
  assign dma_data_o[3] = dma_data_o_0__3_;
  assign dma_data_o[34] = dma_data_o_0__2_;
  assign dma_data_o[2] = dma_data_o_0__2_;
  assign dma_data_o[33] = dma_data_o_0__1_;
  assign dma_data_o[1] = dma_data_o_0__1_;
  assign dma_data_o[32] = dma_data_o_0__0_;
  assign dma_data_o[0] = dma_data_o_0__0_;

  bsg_fifo_1r1w_large_width_p32_els_p2
  fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(app_rd_data_i),
    .v_i(app_rd_data_valid_i),
    .v_o(fifo_v_lo),
    .data_o({ dma_data_o_0__31_, dma_data_o_0__30_, dma_data_o_0__29_, dma_data_o_0__28_, dma_data_o_0__27_, dma_data_o_0__26_, dma_data_o_0__25_, dma_data_o_0__24_, dma_data_o_0__23_, dma_data_o_0__22_, dma_data_o_0__21_, dma_data_o_0__20_, dma_data_o_0__19_, dma_data_o_0__18_, dma_data_o_0__17_, dma_data_o_0__16_, dma_data_o_0__15_, dma_data_o_0__14_, dma_data_o_0__13_, dma_data_o_0__12_, dma_data_o_0__11_, dma_data_o_0__10_, dma_data_o_0__9_, dma_data_o_0__8_, dma_data_o_0__7_, dma_data_o_0__6_, dma_data_o_0__5_, dma_data_o_0__4_, dma_data_o_0__3_, dma_data_o_0__2_, dma_data_o_0__1_, dma_data_o_0__0_ }),
    .yumi_i(fifo_yumi_li)
  );


  bsg_fifo_1r1w_small_width_p1_els_p2
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_i(tag_i[0]),
    .v_o(tag_fifo_v_lo),
    .data_o(tag_fifo_data_lo[0]),
    .yumi_i(tag_fifo_yumi_li)
  );

  assign N4 = (N3)? dma_data_ready_i[0] : 
              (N0)? dma_data_ready_i[1] : 1'b0;
  assign N0 = tag_fifo_data_lo[0];

  bsg_decode_with_v_num_out_p2
  demux
  (
    .i(tag_fifo_data_lo[0]),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel)
  );


  bsg_counter_clear_up_max_val_p0_init_val_p0
  counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(counter_clear_li),
    .up_i(counter_up_li),
    .count_o(count_lo[0])
  );

  assign N5 = ~count_lo[0];
  assign counter_clear_li = (N1)? fifo_yumi_li : 
                            (N2)? 1'b0 : 1'b0;
  assign N1 = N5;
  assign N2 = count_lo[0];
  assign counter_up_li = (N1)? 1'b0 : 
                         (N2)? fifo_yumi_li : 1'b0;
  assign tag_fifo_yumi_li = (N1)? fifo_yumi_li : 
                            (N2)? 1'b0 : 1'b0;
  assign N3 = ~tag_fifo_data_lo[0];
  assign fifo_yumi_li = N6 & N4;
  assign N6 = fifo_v_lo & tag_fifo_v_lo;
  assign dma_data_v_o[0] = cache_sel[0] & fifo_v_lo;
  assign dma_data_v_o[1] = cache_sel[1] & fifo_v_lo;

endmodule



module bsg_circular_ptr_slots_p8_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [2:0] o;
  output [2:0] n_o;
  input clk;
  input reset_i;
  wire [2:0] o,n_o,\genblk1.genblk1.ptr_r_p1 ;
  wire N0,N1,N2;
  reg o_2_sv2v_reg,o_1_sv2v_reg,o_0_sv2v_reg;
  assign o[2] = o_2_sv2v_reg;
  assign o[1] = o_1_sv2v_reg;
  assign o[0] = o_0_sv2v_reg;
  assign \genblk1.genblk1.ptr_r_p1  = o + 1'b1;
  assign n_o = (N0)? \genblk1.genblk1.ptr_r_p1  : 
               (N1)? o : 1'b0;
  assign N0 = add_i[0];
  assign N1 = N2;
  assign N2 = ~add_i[0];

  always @(posedge clk) begin
    if(reset_i) begin
      o_2_sv2v_reg <= 1'b0;
      o_1_sv2v_reg <= 1'b0;
      o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_2_sv2v_reg <= n_o[2];
      o_1_sv2v_reg <= n_o[1];
      o_0_sv2v_reg <= n_o[0];
    end 
  end


endmodule



module bsg_fifo_tracker_els_p8
(
  clk_i,
  reset_i,
  enq_i,
  deq_i,
  wptr_r_o,
  rptr_r_o,
  rptr_n_o,
  full_o,
  empty_o
);

  output [2:0] wptr_r_o;
  output [2:0] rptr_r_o;
  output [2:0] rptr_n_o;
  input clk_i;
  input reset_i;
  input enq_i;
  input deq_i;
  output full_o;
  output empty_o;
  wire [2:0] wptr_r_o,rptr_r_o,rptr_n_o;
  wire full_o,empty_o,N0,N1,N2,enq_r,deq_r,N3,equal_ptrs,sv2v_dc_1,sv2v_dc_2,sv2v_dc_3;
  reg deq_r_sv2v_reg,enq_r_sv2v_reg;
  assign deq_r = deq_r_sv2v_reg;
  assign enq_r = enq_r_sv2v_reg;

  bsg_circular_ptr_slots_p8_max_add_p1
  rptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(deq_i),
    .o(rptr_r_o),
    .n_o(rptr_n_o)
  );


  bsg_circular_ptr_slots_p8_max_add_p1
  wptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(enq_i),
    .o(wptr_r_o),
    .n_o({ sv2v_dc_1, sv2v_dc_2, sv2v_dc_3 })
  );

  assign equal_ptrs = rptr_r_o == wptr_r_o;
  assign N3 = (N0)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = N1;
  assign N1 = enq_i | deq_i;
  assign N2 = ~N1;
  assign empty_o = equal_ptrs & deq_r;
  assign full_o = equal_ptrs & enq_r;

  always @(posedge clk_i) begin
    if(reset_i) begin
      deq_r_sv2v_reg <= 1'b1;
      enq_r_sv2v_reg <= 1'b0;
    end else if(N3) begin
      deq_r_sv2v_reg <= deq_i;
      enq_r_sv2v_reg <= enq_i;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p1_els_p8_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [2:0] w_addr_i;
  input [0:0] w_data_i;
  input [2:0] r_addr_i;
  output [0:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [0:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45;
  wire [7:0] mem;
  reg mem_7_sv2v_reg,mem_6_sv2v_reg,mem_5_sv2v_reg,mem_4_sv2v_reg,mem_3_sv2v_reg,
  mem_2_sv2v_reg,mem_1_sv2v_reg,mem_0_sv2v_reg;
  assign mem[7] = mem_7_sv2v_reg;
  assign mem[6] = mem_6_sv2v_reg;
  assign mem[5] = mem_5_sv2v_reg;
  assign mem[4] = mem_4_sv2v_reg;
  assign mem[3] = mem_3_sv2v_reg;
  assign mem[2] = mem_2_sv2v_reg;
  assign mem[1] = mem_1_sv2v_reg;
  assign mem[0] = mem_0_sv2v_reg;
  assign r_data_o[0] = (N17)? mem[0] : 
                       (N19)? mem[1] : 
                       (N21)? mem[2] : 
                       (N23)? mem[3] : 
                       (N18)? mem[4] : 
                       (N20)? mem[5] : 
                       (N22)? mem[6] : 
                       (N24)? mem[7] : 1'b0;
  assign N42 = w_addr_i[0] & w_addr_i[1];
  assign N33 = N42 & w_addr_i[2];
  assign N43 = N0 & w_addr_i[1];
  assign N0 = ~w_addr_i[0];
  assign N32 = N43 & w_addr_i[2];
  assign N44 = w_addr_i[0] & N1;
  assign N1 = ~w_addr_i[1];
  assign N31 = N44 & w_addr_i[2];
  assign N45 = N2 & N3;
  assign N2 = ~w_addr_i[0];
  assign N3 = ~w_addr_i[1];
  assign N30 = N45 & w_addr_i[2];
  assign N29 = N42 & N4;
  assign N4 = ~w_addr_i[2];
  assign N28 = N43 & N5;
  assign N5 = ~w_addr_i[2];
  assign N27 = N44 & N6;
  assign N6 = ~w_addr_i[2];
  assign N26 = N45 & N7;
  assign N7 = ~w_addr_i[2];
  assign { N41, N40, N39, N38, N37, N36, N35, N34 } = (N8)? { N33, N32, N31, N30, N29, N28, N27, N26 } : 
                                                      (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N8 = w_v_i;
  assign N9 = N25;
  assign N10 = ~r_addr_i[0];
  assign N11 = ~r_addr_i[1];
  assign N12 = N10 & N11;
  assign N13 = N10 & r_addr_i[1];
  assign N14 = r_addr_i[0] & N11;
  assign N15 = r_addr_i[0] & r_addr_i[1];
  assign N16 = ~r_addr_i[2];
  assign N17 = N12 & N16;
  assign N18 = N12 & r_addr_i[2];
  assign N19 = N14 & N16;
  assign N20 = N14 & r_addr_i[2];
  assign N21 = N13 & N16;
  assign N22 = N13 & r_addr_i[2];
  assign N23 = N15 & N16;
  assign N24 = N15 & r_addr_i[2];
  assign N25 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_7_sv2v_reg <= w_data_i[0];
    end 
    if(N40) begin
      mem_6_sv2v_reg <= w_data_i[0];
    end 
    if(N39) begin
      mem_5_sv2v_reg <= w_data_i[0];
    end 
    if(N38) begin
      mem_4_sv2v_reg <= w_data_i[0];
    end 
    if(N37) begin
      mem_3_sv2v_reg <= w_data_i[0];
    end 
    if(N36) begin
      mem_2_sv2v_reg <= w_data_i[0];
    end 
    if(N35) begin
      mem_1_sv2v_reg <= w_data_i[0];
    end 
    if(N34) begin
      mem_0_sv2v_reg <= w_data_i[0];
    end 
  end


endmodule



module bsg_mem_1r1w_width_p1_els_p8_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [2:0] w_addr_i;
  input [0:0] w_data_i;
  input [2:0] r_addr_i;
  output [0:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [0:0] r_data_o;

  bsg_mem_1r1w_synth_width_p1_els_p8_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i),
    .w_data_i(w_data_i[0]),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i),
    .r_data_o(r_data_o[0])
  );


endmodule



module bsg_fifo_1r1w_small_unhardened_width_p1_els_p8_ready_THEN_valid_p0
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  data_i,
  v_o,
  data_o,
  yumi_i
);

  input [0:0] data_i;
  output [0:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [0:0] data_o;
  wire ready_o,v_o,enque,full,empty,sv2v_dc_1,sv2v_dc_2,sv2v_dc_3;
  wire [2:0] wptr_r,rptr_r;

  bsg_fifo_tracker_els_p8
  ft
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .enq_i(enque),
    .deq_i(yumi_i),
    .wptr_r_o(wptr_r),
    .rptr_r_o(rptr_r),
    .rptr_n_o({ sv2v_dc_1, sv2v_dc_2, sv2v_dc_3 }),
    .full_o(full),
    .empty_o(empty)
  );


  bsg_mem_1r1w_width_p1_els_p8_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enque),
    .w_addr_i(wptr_r),
    .w_data_i(data_i[0]),
    .r_v_i(v_o),
    .r_addr_i(rptr_r),
    .r_data_o(data_o[0])
  );

  assign enque = v_i & ready_o;
  assign ready_o = ~full;
  assign v_o = ~empty;

endmodule



module bsg_fifo_1r1w_small_width_p1_els_p8
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  data_i,
  v_o,
  data_o,
  yumi_i
);

  input [0:0] data_i;
  output [0:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [0:0] data_o;
  wire ready_o,v_o;

  bsg_fifo_1r1w_small_unhardened_width_p1_els_p8_ready_THEN_valid_p0
  \unhardened.fifo 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_i(data_i[0]),
    .v_o(v_o),
    .data_o(data_o[0]),
    .yumi_i(yumi_i)
  );


endmodule



module bsg_cache_to_dram_ctrl_tx_num_cache_p2_data_width_p32_block_size_in_words_p4_dram_ctrl_burst_len_p1
(
  clk_i,
  reset_i,
  v_i,
  tag_i,
  ready_o,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  app_wdf_wren_o,
  app_wdf_data_o,
  app_wdf_mask_o,
  app_wdf_end_o,
  app_wdf_rdy_i
);

  input [0:0] tag_i;
  input [63:0] dma_data_i;
  input [1:0] dma_data_v_i;
  output [1:0] dma_data_yumi_o;
  output [31:0] app_wdf_data_o;
  output [3:0] app_wdf_mask_o;
  input clk_i;
  input reset_i;
  input v_i;
  input app_wdf_rdy_i;
  output ready_o;
  output app_wdf_wren_o;
  output app_wdf_end_o;
  wire [1:0] dma_data_yumi_o,cache_sel;
  wire [31:0] app_wdf_data_o;
  wire [3:0] app_wdf_mask_o;
  wire ready_o,app_wdf_wren_o,app_wdf_end_o,N0,N1,N2,tag_fifo_v_lo,tag_fifo_yumi_li,N3,
  N4,clear_li,up_li,take_word,N5,N6,N7,N8;
  wire [0:0] tag_fifo_data_lo,count_lo;
  assign app_wdf_mask_o[0] = 1'b0;
  assign app_wdf_mask_o[1] = 1'b0;
  assign app_wdf_mask_o[2] = 1'b0;
  assign app_wdf_mask_o[3] = 1'b0;

  bsg_fifo_1r1w_small_width_p1_els_p8
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_i(tag_i[0]),
    .v_o(tag_fifo_v_lo),
    .data_o(tag_fifo_data_lo[0]),
    .yumi_i(tag_fifo_yumi_li)
  );


  bsg_decode_with_v_num_out_p2
  demux
  (
    .i(tag_fifo_data_lo[0]),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel)
  );

  assign N4 = (N3)? dma_data_v_i[0] : 
              (N0)? dma_data_v_i[1] : 1'b0;
  assign N0 = tag_fifo_data_lo[0];

  bsg_counter_clear_up_max_val_p0_init_val_p0
  word_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_li),
    .up_i(up_li),
    .count_o(count_lo[0])
  );

  assign app_wdf_data_o[31] = (N5)? dma_data_i[31] : 
                              (N0)? dma_data_i[63] : 1'b0;
  assign app_wdf_data_o[30] = (N5)? dma_data_i[30] : 
                              (N0)? dma_data_i[62] : 1'b0;
  assign app_wdf_data_o[29] = (N5)? dma_data_i[29] : 
                              (N0)? dma_data_i[61] : 1'b0;
  assign app_wdf_data_o[28] = (N5)? dma_data_i[28] : 
                              (N0)? dma_data_i[60] : 1'b0;
  assign app_wdf_data_o[27] = (N5)? dma_data_i[27] : 
                              (N0)? dma_data_i[59] : 1'b0;
  assign app_wdf_data_o[26] = (N5)? dma_data_i[26] : 
                              (N0)? dma_data_i[58] : 1'b0;
  assign app_wdf_data_o[25] = (N5)? dma_data_i[25] : 
                              (N0)? dma_data_i[57] : 1'b0;
  assign app_wdf_data_o[24] = (N5)? dma_data_i[24] : 
                              (N0)? dma_data_i[56] : 1'b0;
  assign app_wdf_data_o[23] = (N5)? dma_data_i[23] : 
                              (N0)? dma_data_i[55] : 1'b0;
  assign app_wdf_data_o[22] = (N5)? dma_data_i[22] : 
                              (N0)? dma_data_i[54] : 1'b0;
  assign app_wdf_data_o[21] = (N5)? dma_data_i[21] : 
                              (N0)? dma_data_i[53] : 1'b0;
  assign app_wdf_data_o[20] = (N5)? dma_data_i[20] : 
                              (N0)? dma_data_i[52] : 1'b0;
  assign app_wdf_data_o[19] = (N5)? dma_data_i[19] : 
                              (N0)? dma_data_i[51] : 1'b0;
  assign app_wdf_data_o[18] = (N5)? dma_data_i[18] : 
                              (N0)? dma_data_i[50] : 1'b0;
  assign app_wdf_data_o[17] = (N5)? dma_data_i[17] : 
                              (N0)? dma_data_i[49] : 1'b0;
  assign app_wdf_data_o[16] = (N5)? dma_data_i[16] : 
                              (N0)? dma_data_i[48] : 1'b0;
  assign app_wdf_data_o[15] = (N5)? dma_data_i[15] : 
                              (N0)? dma_data_i[47] : 1'b0;
  assign app_wdf_data_o[14] = (N5)? dma_data_i[14] : 
                              (N0)? dma_data_i[46] : 1'b0;
  assign app_wdf_data_o[13] = (N5)? dma_data_i[13] : 
                              (N0)? dma_data_i[45] : 1'b0;
  assign app_wdf_data_o[12] = (N5)? dma_data_i[12] : 
                              (N0)? dma_data_i[44] : 1'b0;
  assign app_wdf_data_o[11] = (N5)? dma_data_i[11] : 
                              (N0)? dma_data_i[43] : 1'b0;
  assign app_wdf_data_o[10] = (N5)? dma_data_i[10] : 
                              (N0)? dma_data_i[42] : 1'b0;
  assign app_wdf_data_o[9] = (N5)? dma_data_i[9] : 
                             (N0)? dma_data_i[41] : 1'b0;
  assign app_wdf_data_o[8] = (N5)? dma_data_i[8] : 
                             (N0)? dma_data_i[40] : 1'b0;
  assign app_wdf_data_o[7] = (N5)? dma_data_i[7] : 
                             (N0)? dma_data_i[39] : 1'b0;
  assign app_wdf_data_o[6] = (N5)? dma_data_i[6] : 
                             (N0)? dma_data_i[38] : 1'b0;
  assign app_wdf_data_o[5] = (N5)? dma_data_i[5] : 
                             (N0)? dma_data_i[37] : 1'b0;
  assign app_wdf_data_o[4] = (N5)? dma_data_i[4] : 
                             (N0)? dma_data_i[36] : 1'b0;
  assign app_wdf_data_o[3] = (N5)? dma_data_i[3] : 
                             (N0)? dma_data_i[35] : 1'b0;
  assign app_wdf_data_o[2] = (N5)? dma_data_i[2] : 
                             (N0)? dma_data_i[34] : 1'b0;
  assign app_wdf_data_o[1] = (N5)? dma_data_i[1] : 
                             (N0)? dma_data_i[33] : 1'b0;
  assign app_wdf_data_o[0] = (N5)? dma_data_i[0] : 
                             (N0)? dma_data_i[32] : 1'b0;
  assign N6 = ~count_lo[0];
  assign clear_li = (N1)? take_word : 
                    (N2)? 1'b0 : 1'b0;
  assign N1 = N6;
  assign N2 = count_lo[0];
  assign up_li = (N1)? 1'b0 : 
                 (N2)? take_word : 1'b0;
  assign app_wdf_end_o = (N1)? take_word : 
                         (N2)? 1'b0 : 1'b0;
  assign tag_fifo_yumi_li = (N1)? take_word : 
                            (N2)? 1'b0 : 1'b0;
  assign dma_data_yumi_o[1] = N7 & app_wdf_rdy_i;
  assign N7 = cache_sel[1] & dma_data_v_i[1];
  assign dma_data_yumi_o[0] = N8 & app_wdf_rdy_i;
  assign N8 = cache_sel[0] & dma_data_v_i[0];
  assign N3 = ~tag_fifo_data_lo[0];
  assign app_wdf_wren_o = tag_fifo_v_lo & N4;
  assign take_word = app_wdf_wren_o & app_wdf_rdy_i;
  assign N5 = ~tag_fifo_data_lo[0];

endmodule



module bsg_cache_to_dram_ctrl
(
  clk_i,
  reset_i,
  dram_size_i,
  dma_pkt_i,
  dma_pkt_v_i,
  dma_pkt_yumi_o,
  dma_data_o,
  dma_data_v_o,
  dma_data_ready_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  app_en_o,
  app_rdy_i,
  app_cmd_o,
  app_addr_o,
  app_wdf_wren_o,
  app_wdf_rdy_i,
  app_wdf_data_o,
  app_wdf_mask_o,
  app_wdf_end_o,
  app_rd_data_valid_i,
  app_rd_data_i,
  app_rd_data_end_i
);

  input [2:0] dram_size_i;
  input [57:0] dma_pkt_i;
  input [1:0] dma_pkt_v_i;
  output [1:0] dma_pkt_yumi_o;
  output [63:0] dma_data_o;
  output [1:0] dma_data_v_o;
  input [1:0] dma_data_ready_i;
  input [63:0] dma_data_i;
  input [1:0] dma_data_v_i;
  output [1:0] dma_data_yumi_o;
  output [2:0] app_cmd_o;
  output [28:0] app_addr_o;
  output [31:0] app_wdf_data_o;
  output [3:0] app_wdf_mask_o;
  input [31:0] app_rd_data_i;
  input clk_i;
  input reset_i;
  input app_rdy_i;
  input app_wdf_rdy_i;
  input app_rd_data_valid_i;
  input app_rd_data_end_i;
  output app_en_o;
  output app_wdf_wren_o;
  output app_wdf_end_o;
  wire [1:0] dma_pkt_yumi_o,dma_data_v_o,dma_data_yumi_o,req_cnt_n,req_cnt_r;
  wire [63:0] dma_data_o;
  wire [2:0] app_cmd_o;
  wire [28:0] app_addr_o,dma_pkt;
  wire [31:0] app_wdf_data_o;
  wire [3:0] app_wdf_mask_o;
  wire app_en_o,app_wdf_wren_o,app_wdf_end_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,
  rr_v_lo,rr_yumi_li,rx_v_li,rx_ready_lo,tx_v_li,tx_ready_lo,write_not_read_r,
  req_state_n,req_state_r,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,
  N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,
  N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,
  N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,
  N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,
  N106,N107,N108,N109,N110,N111,N112,N113,N114;
  wire [0:0] rr_tag_lo,tag_r;
  wire [27:0] addr_n;
  wire [27:24] addr_r;
  reg addr_n_27_sv2v_reg,addr_n_26_sv2v_reg,addr_n_25_sv2v_reg,addr_n_24_sv2v_reg,
  addr_n_23_sv2v_reg,addr_n_22_sv2v_reg,addr_n_21_sv2v_reg,addr_n_20_sv2v_reg,
  addr_n_19_sv2v_reg,addr_n_18_sv2v_reg,addr_n_17_sv2v_reg,addr_n_16_sv2v_reg,
  addr_n_15_sv2v_reg,addr_n_14_sv2v_reg,addr_n_13_sv2v_reg,addr_n_12_sv2v_reg,
  addr_n_11_sv2v_reg,addr_n_10_sv2v_reg,addr_n_9_sv2v_reg,addr_n_8_sv2v_reg,addr_n_7_sv2v_reg,
  addr_n_6_sv2v_reg,addr_n_5_sv2v_reg,addr_n_4_sv2v_reg,addr_n_3_sv2v_reg,
  addr_n_2_sv2v_reg,addr_n_1_sv2v_reg,addr_n_0_sv2v_reg,write_not_read_r_sv2v_reg,
  req_state_r_sv2v_reg,tag_r_0_sv2v_reg,addr_r_27_sv2v_reg,addr_r_26_sv2v_reg,
  addr_r_25_sv2v_reg,addr_r_24_sv2v_reg,app_addr_o_23_sv2v_reg,app_addr_o_22_sv2v_reg,
  app_addr_o_21_sv2v_reg,app_addr_o_20_sv2v_reg,app_addr_o_19_sv2v_reg,app_addr_o_18_sv2v_reg,
  app_addr_o_17_sv2v_reg,app_addr_o_16_sv2v_reg,app_addr_o_15_sv2v_reg,
  app_addr_o_14_sv2v_reg,app_addr_o_13_sv2v_reg,app_addr_o_12_sv2v_reg,
  app_addr_o_11_sv2v_reg,app_addr_o_10_sv2v_reg,app_addr_o_9_sv2v_reg,app_addr_o_8_sv2v_reg,
  app_addr_o_7_sv2v_reg,app_addr_o_6_sv2v_reg,app_addr_o_5_sv2v_reg,app_addr_o_4_sv2v_reg,
  app_addr_o_3_sv2v_reg,app_addr_o_2_sv2v_reg,app_addr_o_1_sv2v_reg,
  app_addr_o_0_sv2v_reg,req_cnt_r_1_sv2v_reg,req_cnt_r_0_sv2v_reg;
  assign addr_n[27] = addr_n_27_sv2v_reg;
  assign addr_n[26] = addr_n_26_sv2v_reg;
  assign addr_n[25] = addr_n_25_sv2v_reg;
  assign addr_n[24] = addr_n_24_sv2v_reg;
  assign addr_n[23] = addr_n_23_sv2v_reg;
  assign addr_n[22] = addr_n_22_sv2v_reg;
  assign addr_n[21] = addr_n_21_sv2v_reg;
  assign addr_n[20] = addr_n_20_sv2v_reg;
  assign addr_n[19] = addr_n_19_sv2v_reg;
  assign addr_n[18] = addr_n_18_sv2v_reg;
  assign addr_n[17] = addr_n_17_sv2v_reg;
  assign addr_n[16] = addr_n_16_sv2v_reg;
  assign addr_n[15] = addr_n_15_sv2v_reg;
  assign addr_n[14] = addr_n_14_sv2v_reg;
  assign addr_n[13] = addr_n_13_sv2v_reg;
  assign addr_n[12] = addr_n_12_sv2v_reg;
  assign addr_n[11] = addr_n_11_sv2v_reg;
  assign addr_n[10] = addr_n_10_sv2v_reg;
  assign addr_n[9] = addr_n_9_sv2v_reg;
  assign addr_n[8] = addr_n_8_sv2v_reg;
  assign addr_n[7] = addr_n_7_sv2v_reg;
  assign addr_n[6] = addr_n_6_sv2v_reg;
  assign addr_n[5] = addr_n_5_sv2v_reg;
  assign addr_n[4] = addr_n_4_sv2v_reg;
  assign addr_n[3] = addr_n_3_sv2v_reg;
  assign addr_n[2] = addr_n_2_sv2v_reg;
  assign addr_n[1] = addr_n_1_sv2v_reg;
  assign addr_n[0] = addr_n_0_sv2v_reg;
  assign write_not_read_r = write_not_read_r_sv2v_reg;
  assign req_state_r = req_state_r_sv2v_reg;
  assign tag_r[0] = tag_r_0_sv2v_reg;
  assign addr_r[27] = addr_r_27_sv2v_reg;
  assign addr_r[26] = addr_r_26_sv2v_reg;
  assign addr_r[25] = addr_r_25_sv2v_reg;
  assign addr_r[24] = addr_r_24_sv2v_reg;
  assign app_addr_o[23] = app_addr_o_23_sv2v_reg;
  assign app_addr_o[22] = app_addr_o_22_sv2v_reg;
  assign app_addr_o[21] = app_addr_o_21_sv2v_reg;
  assign app_addr_o[20] = app_addr_o_20_sv2v_reg;
  assign app_addr_o[19] = app_addr_o_19_sv2v_reg;
  assign app_addr_o[18] = app_addr_o_18_sv2v_reg;
  assign app_addr_o[17] = app_addr_o_17_sv2v_reg;
  assign app_addr_o[16] = app_addr_o_16_sv2v_reg;
  assign app_addr_o[15] = app_addr_o_15_sv2v_reg;
  assign app_addr_o[14] = app_addr_o_14_sv2v_reg;
  assign app_addr_o[13] = app_addr_o_13_sv2v_reg;
  assign app_addr_o[12] = app_addr_o_12_sv2v_reg;
  assign app_addr_o[11] = app_addr_o_11_sv2v_reg;
  assign app_addr_o[10] = app_addr_o_10_sv2v_reg;
  assign app_addr_o[9] = app_addr_o_9_sv2v_reg;
  assign app_addr_o[8] = app_addr_o_8_sv2v_reg;
  assign app_addr_o[7] = app_addr_o_7_sv2v_reg;
  assign app_addr_o[6] = app_addr_o_6_sv2v_reg;
  assign app_addr_o[5] = app_addr_o_5_sv2v_reg;
  assign app_addr_o[4] = app_addr_o_4_sv2v_reg;
  assign app_addr_o[3] = app_addr_o_3_sv2v_reg;
  assign app_addr_o[2] = app_addr_o_2_sv2v_reg;
  assign app_addr_o[1] = app_addr_o_1_sv2v_reg;
  assign app_addr_o[0] = app_addr_o_0_sv2v_reg;
  assign req_cnt_r[1] = req_cnt_r_1_sv2v_reg;
  assign req_cnt_r[0] = req_cnt_r_0_sv2v_reg;
  assign app_cmd_o[1] = 1'b0;
  assign app_cmd_o[2] = 1'b0;

  bsg_round_robin_n_to_1_width_p29_num_in_p2_strict_p0
  cache_rr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(dma_pkt_i),
    .v_i(dma_pkt_v_i),
    .yumi_o(dma_pkt_yumi_o),
    .v_o(rr_v_lo),
    .data_o(dma_pkt),
    .tag_o(rr_tag_lo[0]),
    .yumi_i(rr_yumi_li)
  );


  bsg_cache_to_dram_ctrl_rx_num_cache_p2_data_width_p32_block_size_in_words_p4_dram_ctrl_burst_len_p1
  rx
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(rx_v_li),
    .tag_i(tag_r[0]),
    .ready_o(rx_ready_lo),
    .dma_data_o(dma_data_o),
    .dma_data_v_o(dma_data_v_o),
    .dma_data_ready_i(dma_data_ready_i),
    .app_rd_data_valid_i(app_rd_data_valid_i),
    .app_rd_data_end_i(app_rd_data_end_i),
    .app_rd_data_i(app_rd_data_i)
  );


  bsg_cache_to_dram_ctrl_tx_num_cache_p2_data_width_p32_block_size_in_words_p4_dram_ctrl_burst_len_p1
  tx
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(tx_v_li),
    .tag_i(tag_r[0]),
    .ready_o(tx_ready_lo),
    .dma_data_i(dma_data_i),
    .dma_data_v_i(dma_data_v_i),
    .dma_data_yumi_o(dma_data_yumi_o),
    .app_wdf_wren_o(app_wdf_wren_o),
    .app_wdf_data_o(app_wdf_data_o),
    .app_wdf_mask_o(app_wdf_mask_o),
    .app_wdf_end_o(app_wdf_end_o),
    .app_wdf_rdy_i(app_wdf_rdy_i)
  );

  assign N94 = N91 & N92;
  assign N95 = N94 & N93;
  assign N96 = dram_size_i[2] | dram_size_i[1];
  assign N97 = N96 | N93;
  assign N99 = dram_size_i[2] | N92;
  assign N100 = N99 | dram_size_i[0];
  assign N102 = N99 | N93;
  assign N104 = N91 | dram_size_i[1];
  assign N105 = N104 | dram_size_i[0];
  assign N107 = dram_size_i[2] & dram_size_i[0];
  assign N108 = dram_size_i[2] & dram_size_i[1];
  assign N111 = req_cnt_r[0] & req_cnt_r[1];
  assign { N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28 } = { addr_r, app_addr_o[23:0] } + { N25, 1'b0, 1'b0 };
  assign { N57, N56 } = req_cnt_r + 1'b1;
  assign N15 = (N0)? rr_tag_lo[0] : 
               (N1)? tag_r[0] : 1'b0;
  assign N0 = rr_v_lo;
  assign N1 = N14;
  assign N16 = (N0)? dma_pkt[28] : 
               (N1)? write_not_read_r : 1'b0;
  assign { N18, N17 } = (N0)? { 1'b0, 1'b0 } : 
                        (N1)? req_cnt_r : 1'b0;
  assign N19 = (N0)? 1'b1 : 
               (N1)? req_state_r : 1'b0;
  assign N22 = (N2)? tx_ready_lo : 
               (N3)? rx_ready_lo : 1'b0;
  assign N2 = write_not_read_r;
  assign N3 = N21;
  assign { N59, N58 } = (N4)? { N57, N56 } : 
                        (N26)? req_cnt_r : 1'b0;
  assign N4 = N25;
  assign N61 = ~N60;
  assign req_state_n = (N5)? N19 : 
                       (N6)? N61 : 1'b0;
  assign N5 = N13;
  assign N6 = req_state_r;
  assign rr_yumi_li = (N5)? rr_v_lo : 
                      (N6)? 1'b0 : 1'b0;
  assign N62 = (N5)? rr_v_lo : 
               (N6)? 1'b1 : 1'b0;
  assign { N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63 } = (N5)? dma_pkt[27:0] : 
                                                                                                                                                          (N6)? { N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28 } : 1'b0;
  assign req_cnt_n = (N5)? { N18, N17 } : 
                     (N6)? { N59, N58 } : 1'b0;
  assign app_en_o = (N5)? 1'b0 : 
                    (N6)? N22 : 1'b0;
  assign app_cmd_o[0] = (N5)? 1'b0 : 
                        (N6)? N21 : 1'b0;
  assign rx_v_li = (N5)? 1'b0 : 
                   (N6)? N23 : 1'b0;
  assign tx_v_li = (N5)? 1'b0 : 
                   (N6)? N24 : 1'b0;
  assign app_addr_o[28:24] = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, tag_r[0:0] } : 
                             (N8)? { 1'b0, 1'b0, 1'b0, tag_r[0:0], addr_r[24:24] } : 
                             (N9)? { 1'b0, 1'b0, tag_r[0:0], addr_r[25:24] } : 
                             (N10)? { 1'b0, tag_r[0:0], addr_r[26:24] } : 
                             (N11)? { tag_r[0:0], addr_r } : 
                             (N12)? { tag_r[0:0], addr_r } : 1'b0;
  assign N7 = N95;
  assign N8 = N98;
  assign N9 = N101;
  assign N10 = N103;
  assign N11 = N106;
  assign N12 = N109;
  assign N13 = ~req_state_r;
  assign N14 = ~rr_v_lo;
  assign N20 = req_state_r;
  assign N21 = ~write_not_read_r;
  assign N23 = N112 & app_rdy_i;
  assign N112 = N21 & rx_ready_lo;
  assign N24 = N113 & app_rdy_i;
  assign N113 = write_not_read_r & tx_ready_lo;
  assign N25 = app_rdy_i & N22;
  assign N26 = ~N25;
  assign N27 = N20 & N25;
  assign N60 = N114 & N111;
  assign N114 = app_rdy_i & N22;
  assign N91 = ~dram_size_i[2];
  assign N92 = ~dram_size_i[1];
  assign N93 = ~dram_size_i[0];
  assign N98 = ~N97;
  assign N101 = ~N100;
  assign N103 = ~N102;
  assign N106 = ~N105;
  assign N109 = N107 | N108;
  assign N110 = ~req_state_r;

  always @(N90 or N62) begin
    if(N62) begin
      addr_n_27_sv2v_reg <= N90;
    end 
  end


  always @(N89 or N62) begin
    if(N62) begin
      addr_n_26_sv2v_reg <= N89;
    end 
  end


  always @(N88 or N62) begin
    if(N62) begin
      addr_n_25_sv2v_reg <= N88;
    end 
  end


  always @(N87 or N62) begin
    if(N62) begin
      addr_n_24_sv2v_reg <= N87;
    end 
  end


  always @(N86 or N62) begin
    if(N62) begin
      addr_n_23_sv2v_reg <= N86;
    end 
  end


  always @(N85 or N62) begin
    if(N62) begin
      addr_n_22_sv2v_reg <= N85;
    end 
  end


  always @(N84 or N62) begin
    if(N62) begin
      addr_n_21_sv2v_reg <= N84;
    end 
  end


  always @(N83 or N62) begin
    if(N62) begin
      addr_n_20_sv2v_reg <= N83;
    end 
  end


  always @(N82 or N62) begin
    if(N62) begin
      addr_n_19_sv2v_reg <= N82;
    end 
  end


  always @(N81 or N62) begin
    if(N62) begin
      addr_n_18_sv2v_reg <= N81;
    end 
  end


  always @(N80 or N62) begin
    if(N62) begin
      addr_n_17_sv2v_reg <= N80;
    end 
  end


  always @(N79 or N62) begin
    if(N62) begin
      addr_n_16_sv2v_reg <= N79;
    end 
  end


  always @(N78 or N62) begin
    if(N62) begin
      addr_n_15_sv2v_reg <= N78;
    end 
  end


  always @(N77 or N62) begin
    if(N62) begin
      addr_n_14_sv2v_reg <= N77;
    end 
  end


  always @(N76 or N62) begin
    if(N62) begin
      addr_n_13_sv2v_reg <= N76;
    end 
  end


  always @(N75 or N62) begin
    if(N62) begin
      addr_n_12_sv2v_reg <= N75;
    end 
  end


  always @(N74 or N62) begin
    if(N62) begin
      addr_n_11_sv2v_reg <= N74;
    end 
  end


  always @(N73 or N62) begin
    if(N62) begin
      addr_n_10_sv2v_reg <= N73;
    end 
  end


  always @(N72 or N62) begin
    if(N62) begin
      addr_n_9_sv2v_reg <= N72;
    end 
  end


  always @(N71 or N62) begin
    if(N62) begin
      addr_n_8_sv2v_reg <= N71;
    end 
  end


  always @(N70 or N62) begin
    if(N62) begin
      addr_n_7_sv2v_reg <= N70;
    end 
  end


  always @(N69 or N62) begin
    if(N62) begin
      addr_n_6_sv2v_reg <= N69;
    end 
  end


  always @(N68 or N62) begin
    if(N62) begin
      addr_n_5_sv2v_reg <= N68;
    end 
  end


  always @(N67 or N62) begin
    if(N62) begin
      addr_n_4_sv2v_reg <= N67;
    end 
  end


  always @(N66 or N62) begin
    if(N62) begin
      addr_n_3_sv2v_reg <= N66;
    end 
  end


  always @(N65 or N62) begin
    if(N62) begin
      addr_n_2_sv2v_reg <= N65;
    end 
  end


  always @(N64 or N62) begin
    if(N62) begin
      addr_n_1_sv2v_reg <= N64;
    end 
  end


  always @(N63 or N62) begin
    if(N62) begin
      addr_n_0_sv2v_reg <= N63;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      write_not_read_r_sv2v_reg <= 1'b0;
      tag_r_0_sv2v_reg <= 1'b0;
    end else if(N110) begin
      write_not_read_r_sv2v_reg <= N16;
      tag_r_0_sv2v_reg <= N15;
    end 
    if(reset_i) begin
      req_state_r_sv2v_reg <= 1'b0;
      addr_r_27_sv2v_reg <= 1'b0;
      addr_r_26_sv2v_reg <= 1'b0;
      addr_r_25_sv2v_reg <= 1'b0;
      addr_r_24_sv2v_reg <= 1'b0;
      app_addr_o_23_sv2v_reg <= 1'b0;
      app_addr_o_22_sv2v_reg <= 1'b0;
      app_addr_o_21_sv2v_reg <= 1'b0;
      app_addr_o_20_sv2v_reg <= 1'b0;
      app_addr_o_19_sv2v_reg <= 1'b0;
      app_addr_o_18_sv2v_reg <= 1'b0;
      app_addr_o_17_sv2v_reg <= 1'b0;
      app_addr_o_16_sv2v_reg <= 1'b0;
      app_addr_o_15_sv2v_reg <= 1'b0;
      app_addr_o_14_sv2v_reg <= 1'b0;
      app_addr_o_13_sv2v_reg <= 1'b0;
      app_addr_o_12_sv2v_reg <= 1'b0;
      app_addr_o_11_sv2v_reg <= 1'b0;
      app_addr_o_10_sv2v_reg <= 1'b0;
      app_addr_o_9_sv2v_reg <= 1'b0;
      app_addr_o_8_sv2v_reg <= 1'b0;
      app_addr_o_7_sv2v_reg <= 1'b0;
      app_addr_o_6_sv2v_reg <= 1'b0;
      app_addr_o_5_sv2v_reg <= 1'b0;
      app_addr_o_4_sv2v_reg <= 1'b0;
      app_addr_o_3_sv2v_reg <= 1'b0;
      app_addr_o_2_sv2v_reg <= 1'b0;
      app_addr_o_1_sv2v_reg <= 1'b0;
      app_addr_o_0_sv2v_reg <= 1'b0;
      req_cnt_r_1_sv2v_reg <= 1'b0;
      req_cnt_r_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      req_state_r_sv2v_reg <= req_state_n;
      addr_r_27_sv2v_reg <= addr_n[27];
      addr_r_26_sv2v_reg <= addr_n[26];
      addr_r_25_sv2v_reg <= addr_n[25];
      addr_r_24_sv2v_reg <= addr_n[24];
      app_addr_o_23_sv2v_reg <= addr_n[23];
      app_addr_o_22_sv2v_reg <= addr_n[22];
      app_addr_o_21_sv2v_reg <= addr_n[21];
      app_addr_o_20_sv2v_reg <= addr_n[20];
      app_addr_o_19_sv2v_reg <= addr_n[19];
      app_addr_o_18_sv2v_reg <= addr_n[18];
      app_addr_o_17_sv2v_reg <= addr_n[17];
      app_addr_o_16_sv2v_reg <= addr_n[16];
      app_addr_o_15_sv2v_reg <= addr_n[15];
      app_addr_o_14_sv2v_reg <= addr_n[14];
      app_addr_o_13_sv2v_reg <= addr_n[13];
      app_addr_o_12_sv2v_reg <= addr_n[12];
      app_addr_o_11_sv2v_reg <= addr_n[11];
      app_addr_o_10_sv2v_reg <= addr_n[10];
      app_addr_o_9_sv2v_reg <= addr_n[9];
      app_addr_o_8_sv2v_reg <= addr_n[8];
      app_addr_o_7_sv2v_reg <= addr_n[7];
      app_addr_o_6_sv2v_reg <= addr_n[6];
      app_addr_o_5_sv2v_reg <= addr_n[5];
      app_addr_o_4_sv2v_reg <= addr_n[4];
      app_addr_o_3_sv2v_reg <= addr_n[3];
      app_addr_o_2_sv2v_reg <= addr_n[2];
      app_addr_o_1_sv2v_reg <= addr_n[1];
      app_addr_o_0_sv2v_reg <= addr_n[0];
      req_cnt_r_1_sv2v_reg <= req_cnt_n[1];
      req_cnt_r_0_sv2v_reg <= req_cnt_n[0];
    end 
  end


endmodule

