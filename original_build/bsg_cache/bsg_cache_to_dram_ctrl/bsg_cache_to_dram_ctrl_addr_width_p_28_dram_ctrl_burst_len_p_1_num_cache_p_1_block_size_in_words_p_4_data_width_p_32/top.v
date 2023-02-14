

module top
(
  clk_i,
  reset_i,
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

  input [28:0] dma_pkt_i;
  input [0:0] dma_pkt_v_i;
  output [0:0] dma_pkt_yumi_o;
  output [31:0] dma_data_o;
  output [0:0] dma_data_v_o;
  input [0:0] dma_data_ready_i;
  input [31:0] dma_data_i;
  input [0:0] dma_data_v_i;
  output [0:0] dma_data_yumi_o;
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



module bsg_round_robin_arb_inputs_p1
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

  input [0:0] reqs_i;
  output [0:0] grants_o;
  output [0:0] sel_one_hot_o;
  output [0:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [0:0] grants_o,sel_one_hot_o,tag_o;
  wire v_o,N0,N1,N2;
  assign tag_o[0] = 1'b0;
  assign v_o = reqs_i[0];
  assign N2 = ~reqs_i[0];
  assign sel_one_hot_o[0] = (N0)? 1'b0 : 
                            (N1)? 1'b1 : 1'b0;
  assign N0 = N2;
  assign N1 = reqs_i[0];
  assign grants_o[0] = sel_one_hot_o[0] & grants_en_i;

endmodule



module bsg_mux_one_hot_width_p29_els_p1
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [28:0] data_i;
  input [0:0] sel_one_hot_i;
  output [28:0] data_o;
  wire [28:0] data_o;
  assign data_o[28] = data_i[28] & sel_one_hot_i[0];
  assign data_o[27] = data_i[27] & sel_one_hot_i[0];
  assign data_o[26] = data_i[26] & sel_one_hot_i[0];
  assign data_o[25] = data_i[25] & sel_one_hot_i[0];
  assign data_o[24] = data_i[24] & sel_one_hot_i[0];
  assign data_o[23] = data_i[23] & sel_one_hot_i[0];
  assign data_o[22] = data_i[22] & sel_one_hot_i[0];
  assign data_o[21] = data_i[21] & sel_one_hot_i[0];
  assign data_o[20] = data_i[20] & sel_one_hot_i[0];
  assign data_o[19] = data_i[19] & sel_one_hot_i[0];
  assign data_o[18] = data_i[18] & sel_one_hot_i[0];
  assign data_o[17] = data_i[17] & sel_one_hot_i[0];
  assign data_o[16] = data_i[16] & sel_one_hot_i[0];
  assign data_o[15] = data_i[15] & sel_one_hot_i[0];
  assign data_o[14] = data_i[14] & sel_one_hot_i[0];
  assign data_o[13] = data_i[13] & sel_one_hot_i[0];
  assign data_o[12] = data_i[12] & sel_one_hot_i[0];
  assign data_o[11] = data_i[11] & sel_one_hot_i[0];
  assign data_o[10] = data_i[10] & sel_one_hot_i[0];
  assign data_o[9] = data_i[9] & sel_one_hot_i[0];
  assign data_o[8] = data_i[8] & sel_one_hot_i[0];
  assign data_o[7] = data_i[7] & sel_one_hot_i[0];
  assign data_o[6] = data_i[6] & sel_one_hot_i[0];
  assign data_o[5] = data_i[5] & sel_one_hot_i[0];
  assign data_o[4] = data_i[4] & sel_one_hot_i[0];
  assign data_o[3] = data_i[3] & sel_one_hot_i[0];
  assign data_o[2] = data_i[2] & sel_one_hot_i[0];
  assign data_o[1] = data_i[1] & sel_one_hot_i[0];
  assign data_o[0] = data_i[0] & sel_one_hot_i[0];

endmodule



module bsg_crossbar_o_by_i_i_els_p1_o_els_p1_width_p29
(
  i,
  sel_oi_one_hot_i,
  o
);

  input [28:0] i;
  input [0:0] sel_oi_one_hot_i;
  output [28:0] o;
  wire [28:0] o;

  bsg_mux_one_hot_width_p29_els_p1
  genblk1_0__mux_one_hot
  (
    .data_i(i),
    .sel_one_hot_i(sel_oi_one_hot_i[0]),
    .data_o(o)
  );


endmodule



module bsg_round_robin_n_to_1_width_p29_num_in_p1_strict_p0
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

  input [28:0] data_i;
  input [0:0] v_i;
  output [0:0] yumi_o;
  output [28:0] data_o;
  output [0:0] tag_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;
  wire [0:0] yumi_o,tag_o,greedy_grants_lo;
  wire [28:0] data_o;
  wire v_o,n_1_net_,SYNOPSYS_UNCONNECTED_1;

  bsg_round_robin_arb_inputs_p1
  greedy_rr_arb_ctrl
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .grants_en_i(1'b1),
    .reqs_i(v_i[0]),
    .grants_o(greedy_grants_lo[0]),
    .sel_one_hot_o(SYNOPSYS_UNCONNECTED_1),
    .v_o(v_o),
    .tag_o(tag_o[0]),
    .yumi_i(n_1_net_)
  );


  bsg_crossbar_o_by_i_i_els_p1_o_els_p1_width_p29
  greedy_xbar
  (
    .i(data_i),
    .sel_oi_one_hot_i(greedy_grants_lo[0]),
    .o(data_o)
  );

  assign n_1_net_ = yumi_i & v_o;
  assign yumi_o[0] = greedy_grants_lo[0] & yumi_i;

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
  wire [1:0] valid_o,num_els_n;
  wire [63:0] data_o;
  wire ready_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,
  data_n_3__31_,data_n_3__30_,data_n_3__29_,data_n_3__28_,data_n_3__27_,data_n_3__26_,
  data_n_3__25_,data_n_3__24_,data_n_3__23_,data_n_3__22_,data_n_3__21_,data_n_3__20_,
  data_n_3__19_,data_n_3__18_,data_n_3__17_,data_n_3__16_,data_n_3__15_,
  data_n_3__14_,data_n_3__13_,data_n_3__12_,data_n_3__11_,data_n_3__10_,data_n_3__9_,
  data_n_3__8_,data_n_3__7_,data_n_3__6_,data_n_3__5_,data_n_3__4_,data_n_3__3_,
  data_n_3__2_,data_n_3__1_,data_n_3__0_,data_n_2__31_,data_n_2__30_,data_n_2__29_,
  data_n_2__28_,data_n_2__27_,data_n_2__26_,data_n_2__25_,data_n_2__24_,data_n_2__23_,
  data_n_2__22_,data_n_2__21_,data_n_2__20_,data_n_2__19_,data_n_2__18_,data_n_2__17_,
  data_n_2__16_,data_n_2__15_,data_n_2__14_,data_n_2__13_,data_n_2__12_,
  data_n_2__11_,data_n_2__10_,data_n_2__9_,data_n_2__8_,data_n_2__7_,data_n_2__6_,
  data_n_2__5_,data_n_2__4_,data_n_2__3_,data_n_2__2_,data_n_2__1_,data_n_2__0_,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68;
  wire [2:0] valid_nn;
  wire [95:0] data_nn;
  wire [3:2] valid_n;
  reg [2:0] valid_r;
  reg [1:0] num_els_r;
  reg [95:0] data_r;
  assign { N37, N36 } = num_els_r + N35;
  assign num_els_n = { N37, N36 } - yumi_cnt_i;
  assign N41 = num_els_r[0] & num_els_r[1];
  assign N40 = N0 & num_els_r[1];
  assign N0 = ~num_els_r[0];
  assign N39 = num_els_r[0] & N1;
  assign N1 = ~num_els_r[1];
  assign N38 = N2 & N3;
  assign N2 = ~num_els_r[0];
  assign N3 = ~num_els_r[1];
  assign N49 = num_els_r[0] & num_els_r[1];
  assign N48 = N4 & num_els_r[1];
  assign N4 = ~num_els_r[0];
  assign N47 = num_els_r[0] & N5;
  assign N5 = ~num_els_r[1];
  assign N46 = N6 & N7;
  assign N6 = ~num_els_r[0];
  assign N7 = ~num_els_r[1];
  assign N64 = yumi_cnt_i[0] & yumi_cnt_i[1];
  assign N63 = N8 & yumi_cnt_i[1];
  assign N8 = ~yumi_cnt_i[0];
  assign N62 = yumi_cnt_i[0] & N9;
  assign N9 = ~yumi_cnt_i[1];
  assign N61 = N10 & N11;
  assign N10 = ~yumi_cnt_i[0];
  assign N11 = ~yumi_cnt_i[1];
  assign { N31, N30 } = (N12)? { 1'b0, 1'b0 } : 
                        (N13)? num_els_n : 1'b0;
  assign N12 = reset_i;
  assign N13 = N29;
  assign { N34, N33, N32 } = (N12)? { 1'b0, 1'b0, 1'b0 } : 
                             (N13)? valid_nn : 1'b0;
  assign { data_o[0:0], data_o[1:1], data_o[2:2], data_o[3:3], data_o[4:4], data_o[5:5], data_o[6:6], data_o[7:7], data_o[8:8], data_o[9:9], data_o[10:10], data_o[11:11], data_o[12:12], data_o[13:13], data_o[14:14], data_o[15:15], data_o[16:16], data_o[17:17], data_o[18:18], data_o[19:19], data_o[20:20], data_o[21:21], data_o[22:22], data_o[23:23], data_o[24:24], data_o[25:25], data_o[26:26], data_o[27:27], data_o[28:28], data_o[29:29], data_o[30:30], data_o[31:31] } = (N14)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          (N42)? { data_r[0:0], data_r[1:1], data_r[2:2], data_r[3:3], data_r[4:4], data_r[5:5], data_r[6:6], data_r[7:7], data_r[8:8], data_r[9:9], data_r[10:10], data_r[11:11], data_r[12:12], data_r[13:13], data_r[14:14], data_r[15:15], data_r[16:16], data_r[17:17], data_r[18:18], data_r[19:19], data_r[20:20], data_r[21:21], data_r[22:22], data_r[23:23], data_r[24:24], data_r[25:25], data_r[26:26], data_r[27:27], data_r[28:28], data_r[29:29], data_r[30:30], data_r[31:31] } : 1'b0;
  assign N14 = N38;
  assign { data_o[32:32], data_o[33:33], data_o[34:34], data_o[35:35], data_o[36:36], data_o[37:37], data_o[38:38], data_o[39:39], data_o[40:40], data_o[41:41], data_o[42:42], data_o[43:43], data_o[44:44], data_o[45:45], data_o[46:46], data_o[47:47], data_o[48:48], data_o[49:49], data_o[50:50], data_o[51:51], data_o[52:52], data_o[53:53], data_o[54:54], data_o[55:55], data_o[56:56], data_o[57:57], data_o[58:58], data_o[59:59], data_o[60:60], data_o[61:61], data_o[62:62], data_o[63:63] } = (N15)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              (N43)? { data_r[32:32], data_r[33:33], data_r[34:34], data_r[35:35], data_r[36:36], data_r[37:37], data_r[38:38], data_r[39:39], data_r[40:40], data_r[41:41], data_r[42:42], data_r[43:43], data_r[44:44], data_r[45:45], data_r[46:46], data_r[47:47], data_r[48:48], data_r[49:49], data_r[50:50], data_r[51:51], data_r[52:52], data_r[53:53], data_r[54:54], data_r[55:55], data_r[56:56], data_r[57:57], data_r[58:58], data_r[59:59], data_r[60:60], data_r[61:61], data_r[62:62], data_r[63:63] } : 1'b0;
  assign N15 = N39;
  assign { data_n_2__0_, data_n_2__1_, data_n_2__2_, data_n_2__3_, data_n_2__4_, data_n_2__5_, data_n_2__6_, data_n_2__7_, data_n_2__8_, data_n_2__9_, data_n_2__10_, data_n_2__11_, data_n_2__12_, data_n_2__13_, data_n_2__14_, data_n_2__15_, data_n_2__16_, data_n_2__17_, data_n_2__18_, data_n_2__19_, data_n_2__20_, data_n_2__21_, data_n_2__22_, data_n_2__23_, data_n_2__24_, data_n_2__25_, data_n_2__26_, data_n_2__27_, data_n_2__28_, data_n_2__29_, data_n_2__30_, data_n_2__31_ } = (N16)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (N44)? { data_r[64:64], data_r[65:65], data_r[66:66], data_r[67:67], data_r[68:68], data_r[69:69], data_r[70:70], data_r[71:71], data_r[72:72], data_r[73:73], data_r[74:74], data_r[75:75], data_r[76:76], data_r[77:77], data_r[78:78], data_r[79:79], data_r[80:80], data_r[81:81], data_r[82:82], data_r[83:83], data_r[84:84], data_r[85:85], data_r[86:86], data_r[87:87], data_r[88:88], data_r[89:89], data_r[90:90], data_r[91:91], data_r[92:92], data_r[93:93], data_r[94:94], data_r[95:95] } : 1'b0;
  assign N16 = N40;
  assign { data_n_3__0_, data_n_3__1_, data_n_3__2_, data_n_3__3_, data_n_3__4_, data_n_3__5_, data_n_3__6_, data_n_3__7_, data_n_3__8_, data_n_3__9_, data_n_3__10_, data_n_3__11_, data_n_3__12_, data_n_3__13_, data_n_3__14_, data_n_3__15_, data_n_3__16_, data_n_3__17_, data_n_3__18_, data_n_3__19_, data_n_3__20_, data_n_3__21_, data_n_3__22_, data_n_3__23_, data_n_3__24_, data_n_3__25_, data_n_3__26_, data_n_3__27_, data_n_3__28_, data_n_3__29_, data_n_3__30_, data_n_3__31_ } = (N17)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (N45)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N17 = N41;
  assign valid_o[0] = (N18)? N50 : 
                      (N51)? valid_r[0] : 1'b0;
  assign N18 = N46;
  assign valid_o[1] = (N19)? N50 : 
                      (N52)? valid_r[1] : 1'b0;
  assign N19 = N47;
  assign valid_n[2] = (N20)? N50 : 
                      (N53)? valid_r[2] : 1'b0;
  assign N20 = N48;
  assign valid_n[3] = (N21)? N50 : 
                      (N54)? 1'b0 : 1'b0;
  assign N21 = N49;
  assign data_nn[63:32] = (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N23)? { data_n_3__31_, data_n_3__30_, data_n_3__29_, data_n_3__28_, data_n_3__27_, data_n_3__26_, data_n_3__25_, data_n_3__24_, data_n_3__23_, data_n_3__22_, data_n_3__21_, data_n_3__20_, data_n_3__19_, data_n_3__18_, data_n_3__17_, data_n_3__16_, data_n_3__15_, data_n_3__14_, data_n_3__13_, data_n_3__12_, data_n_3__11_, data_n_3__10_, data_n_3__9_, data_n_3__8_, data_n_3__7_, data_n_3__6_, data_n_3__5_, data_n_3__4_, data_n_3__3_, data_n_3__2_, data_n_3__1_, data_n_3__0_ } : 
                          (N24)? { data_n_2__31_, data_n_2__30_, data_n_2__29_, data_n_2__28_, data_n_2__27_, data_n_2__26_, data_n_2__25_, data_n_2__24_, data_n_2__23_, data_n_2__22_, data_n_2__21_, data_n_2__20_, data_n_2__19_, data_n_2__18_, data_n_2__17_, data_n_2__16_, data_n_2__15_, data_n_2__14_, data_n_2__13_, data_n_2__12_, data_n_2__11_, data_n_2__10_, data_n_2__9_, data_n_2__8_, data_n_2__7_, data_n_2__6_, data_n_2__5_, data_n_2__4_, data_n_2__3_, data_n_2__2_, data_n_2__1_, data_n_2__0_ } : 
                          (N25)? data_o[63:32] : 1'b0;
  assign N22 = N64;
  assign N23 = N63;
  assign N24 = N62;
  assign N25 = N61;
  assign data_nn[95:64] = (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N23)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N24)? { data_n_3__31_, data_n_3__30_, data_n_3__29_, data_n_3__28_, data_n_3__27_, data_n_3__26_, data_n_3__25_, data_n_3__24_, data_n_3__23_, data_n_3__22_, data_n_3__21_, data_n_3__20_, data_n_3__19_, data_n_3__18_, data_n_3__17_, data_n_3__16_, data_n_3__15_, data_n_3__14_, data_n_3__13_, data_n_3__12_, data_n_3__11_, data_n_3__10_, data_n_3__9_, data_n_3__8_, data_n_3__7_, data_n_3__6_, data_n_3__5_, data_n_3__4_, data_n_3__3_, data_n_3__2_, data_n_3__1_, data_n_3__0_ } : 
                          (N25)? { data_n_2__31_, data_n_2__30_, data_n_2__29_, data_n_2__28_, data_n_2__27_, data_n_2__26_, data_n_2__25_, data_n_2__24_, data_n_2__23_, data_n_2__22_, data_n_2__21_, data_n_2__20_, data_n_2__19_, data_n_2__18_, data_n_2__17_, data_n_2__16_, data_n_2__15_, data_n_2__14_, data_n_2__13_, data_n_2__12_, data_n_2__11_, data_n_2__10_, data_n_2__9_, data_n_2__8_, data_n_2__7_, data_n_2__6_, data_n_2__5_, data_n_2__4_, data_n_2__3_, data_n_2__2_, data_n_2__1_, data_n_2__0_ } : 1'b0;
  assign { N68, N67, N66, N65 } = (N26)? { 1'b0, 1'b0, valid_n } : 
                                  (N56)? { valid_n, valid_o } : 1'b0;
  assign N26 = yumi_cnt_i[1];
  assign valid_nn = (N27)? { N68, N67, N66 } : 
                    (N55)? { N67, N66, N65 } : 1'b0;
  assign N27 = yumi_cnt_i[0];
  assign data_nn[31] = (N57)? data_o[31] : 
                       (N59)? data_o[63] : 
                       (N58)? data_n_2__31_ : 
                       (N60)? data_n_3__31_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign N28 = 1'b0;
  assign data_nn[30] = (N57)? data_o[30] : 
                       (N59)? data_o[62] : 
                       (N58)? data_n_2__30_ : 
                       (N60)? data_n_3__30_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[29] = (N57)? data_o[29] : 
                       (N59)? data_o[61] : 
                       (N58)? data_n_2__29_ : 
                       (N60)? data_n_3__29_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[28] = (N57)? data_o[28] : 
                       (N59)? data_o[60] : 
                       (N58)? data_n_2__28_ : 
                       (N60)? data_n_3__28_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[27] = (N57)? data_o[27] : 
                       (N59)? data_o[59] : 
                       (N58)? data_n_2__27_ : 
                       (N60)? data_n_3__27_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[26] = (N57)? data_o[26] : 
                       (N59)? data_o[58] : 
                       (N58)? data_n_2__26_ : 
                       (N60)? data_n_3__26_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[25] = (N57)? data_o[25] : 
                       (N59)? data_o[57] : 
                       (N58)? data_n_2__25_ : 
                       (N60)? data_n_3__25_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[24] = (N57)? data_o[24] : 
                       (N59)? data_o[56] : 
                       (N58)? data_n_2__24_ : 
                       (N60)? data_n_3__24_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[23] = (N57)? data_o[23] : 
                       (N59)? data_o[55] : 
                       (N58)? data_n_2__23_ : 
                       (N60)? data_n_3__23_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[22] = (N57)? data_o[22] : 
                       (N59)? data_o[54] : 
                       (N58)? data_n_2__22_ : 
                       (N60)? data_n_3__22_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[21] = (N57)? data_o[21] : 
                       (N59)? data_o[53] : 
                       (N58)? data_n_2__21_ : 
                       (N60)? data_n_3__21_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[20] = (N57)? data_o[20] : 
                       (N59)? data_o[52] : 
                       (N58)? data_n_2__20_ : 
                       (N60)? data_n_3__20_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[19] = (N57)? data_o[19] : 
                       (N59)? data_o[51] : 
                       (N58)? data_n_2__19_ : 
                       (N60)? data_n_3__19_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[18] = (N57)? data_o[18] : 
                       (N59)? data_o[50] : 
                       (N58)? data_n_2__18_ : 
                       (N60)? data_n_3__18_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[17] = (N57)? data_o[17] : 
                       (N59)? data_o[49] : 
                       (N58)? data_n_2__17_ : 
                       (N60)? data_n_3__17_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[16] = (N57)? data_o[16] : 
                       (N59)? data_o[48] : 
                       (N58)? data_n_2__16_ : 
                       (N60)? data_n_3__16_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[15] = (N57)? data_o[15] : 
                       (N59)? data_o[47] : 
                       (N58)? data_n_2__15_ : 
                       (N60)? data_n_3__15_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[14] = (N57)? data_o[14] : 
                       (N59)? data_o[46] : 
                       (N58)? data_n_2__14_ : 
                       (N60)? data_n_3__14_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[13] = (N57)? data_o[13] : 
                       (N59)? data_o[45] : 
                       (N58)? data_n_2__13_ : 
                       (N60)? data_n_3__13_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[12] = (N57)? data_o[12] : 
                       (N59)? data_o[44] : 
                       (N58)? data_n_2__12_ : 
                       (N60)? data_n_3__12_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[11] = (N57)? data_o[11] : 
                       (N59)? data_o[43] : 
                       (N58)? data_n_2__11_ : 
                       (N60)? data_n_3__11_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[10] = (N57)? data_o[10] : 
                       (N59)? data_o[42] : 
                       (N58)? data_n_2__10_ : 
                       (N60)? data_n_3__10_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[9] = (N57)? data_o[9] : 
                      (N59)? data_o[41] : 
                      (N58)? data_n_2__9_ : 
                      (N60)? data_n_3__9_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[8] = (N57)? data_o[8] : 
                      (N59)? data_o[40] : 
                      (N58)? data_n_2__8_ : 
                      (N60)? data_n_3__8_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[7] = (N57)? data_o[7] : 
                      (N59)? data_o[39] : 
                      (N58)? data_n_2__7_ : 
                      (N60)? data_n_3__7_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[6] = (N57)? data_o[6] : 
                      (N59)? data_o[38] : 
                      (N58)? data_n_2__6_ : 
                      (N60)? data_n_3__6_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[5] = (N57)? data_o[5] : 
                      (N59)? data_o[37] : 
                      (N58)? data_n_2__5_ : 
                      (N60)? data_n_3__5_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[4] = (N57)? data_o[4] : 
                      (N59)? data_o[36] : 
                      (N58)? data_n_2__4_ : 
                      (N60)? data_n_3__4_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[3] = (N57)? data_o[3] : 
                      (N59)? data_o[35] : 
                      (N58)? data_n_2__3_ : 
                      (N60)? data_n_3__3_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[2] = (N57)? data_o[2] : 
                      (N59)? data_o[34] : 
                      (N58)? data_n_2__2_ : 
                      (N60)? data_n_3__2_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[1] = (N57)? data_o[1] : 
                      (N59)? data_o[33] : 
                      (N58)? data_n_2__1_ : 
                      (N60)? data_n_3__1_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[0] = (N57)? data_o[0] : 
                      (N59)? data_o[32] : 
                      (N58)? data_n_2__0_ : 
                      (N60)? data_n_3__0_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign N29 = ~reset_i;
  assign ready_o = ~valid_r[2];
  assign N35 = valid_i & ready_o;
  assign N42 = ~N38;
  assign N43 = ~N39;
  assign N44 = ~N40;
  assign N45 = ~N41;
  assign N50 = valid_i & ready_o;
  assign N51 = ~N46;
  assign N52 = ~N47;
  assign N53 = ~N48;
  assign N54 = ~N49;
  assign N55 = ~yumi_cnt_i[0];
  assign N56 = ~yumi_cnt_i[1];
  assign N57 = N55 & N56;
  assign N58 = N55 & yumi_cnt_i[1];
  assign N59 = yumi_cnt_i[0] & N56;
  assign N60 = yumi_cnt_i[0] & yumi_cnt_i[1];

  always @(posedge clk_i) begin
    if(1'b1) begin
      { valid_r[2:0] } <= { N34, N33, N32 };
      { num_els_r[1:0] } <= { N31, N30 };
      { data_r[95:0] } <= { data_nn[95:0] };
    end 
  end


endmodule



module bsg_mem_1rw_sync_synth_width_p64_els_p0_latch_last_read_p0
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
  input [1:2] addr_i;
  output [63:0] data_o;
  input clk_i;
  input v_i;
  input reset_i;
  input w_i;
  wire [63:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
  reg addr_r_0_,mem_0__63_,mem_0__62_,mem_0__61_,mem_0__60_,mem_0__59_,mem_0__58_,
  mem_0__57_,mem_0__56_,mem_0__55_,mem_0__54_,mem_0__53_,mem_0__52_,mem_0__51_,
  mem_0__50_,mem_0__49_,mem_0__48_,mem_0__47_,mem_0__46_,mem_0__45_,mem_0__44_,
  mem_0__43_,mem_0__42_,mem_0__41_,mem_0__40_,mem_0__39_,mem_0__38_,mem_0__37_,mem_0__36_,
  mem_0__35_,mem_0__34_,mem_0__33_,mem_0__32_,mem_0__31_,mem_0__30_,mem_0__29_,
  mem_0__28_,mem_0__27_,mem_0__26_,mem_0__25_,mem_0__24_,mem_0__23_,mem_0__22_,
  mem_0__21_,mem_0__20_,mem_0__19_,mem_0__18_,mem_0__17_,mem_0__16_,mem_0__15_,mem_0__14_,
  mem_0__13_,mem_0__12_,mem_0__11_,mem_0__10_,mem_0__9_,mem_0__8_,mem_0__7_,
  mem_0__6_,mem_0__5_,mem_0__4_,mem_0__3_,mem_0__2_,mem_0__1_,mem_0__0_;
  assign data_o[63] = (N2)? mem_0__63_ : 
                      (N0)? 1'b0 : 1'b0;
  assign N0 = addr_r_0_;
  assign data_o[62] = (N2)? mem_0__62_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[61] = (N2)? mem_0__61_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[60] = (N2)? mem_0__60_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[59] = (N2)? mem_0__59_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[58] = (N2)? mem_0__58_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[57] = (N2)? mem_0__57_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[56] = (N2)? mem_0__56_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[55] = (N2)? mem_0__55_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[54] = (N2)? mem_0__54_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[53] = (N2)? mem_0__53_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[52] = (N2)? mem_0__52_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[51] = (N2)? mem_0__51_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[50] = (N2)? mem_0__50_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[49] = (N2)? mem_0__49_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[48] = (N2)? mem_0__48_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[47] = (N2)? mem_0__47_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[46] = (N2)? mem_0__46_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[45] = (N2)? mem_0__45_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[44] = (N2)? mem_0__44_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[43] = (N2)? mem_0__43_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[42] = (N2)? mem_0__42_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[41] = (N2)? mem_0__41_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[40] = (N2)? mem_0__40_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[39] = (N2)? mem_0__39_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[38] = (N2)? mem_0__38_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[37] = (N2)? mem_0__37_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[36] = (N2)? mem_0__36_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[35] = (N2)? mem_0__35_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[34] = (N2)? mem_0__34_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[33] = (N2)? mem_0__33_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[32] = (N2)? mem_0__32_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[31] = (N2)? mem_0__31_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[30] = (N2)? mem_0__30_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[29] = (N2)? mem_0__29_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[28] = (N2)? mem_0__28_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[27] = (N2)? mem_0__27_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[26] = (N2)? mem_0__26_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[25] = (N2)? mem_0__25_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[24] = (N2)? mem_0__24_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[23] = (N2)? mem_0__23_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[22] = (N2)? mem_0__22_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[21] = (N2)? mem_0__21_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[20] = (N2)? mem_0__20_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[19] = (N2)? mem_0__19_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[18] = (N2)? mem_0__18_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[17] = (N2)? mem_0__17_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[16] = (N2)? mem_0__16_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[15] = (N2)? mem_0__15_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[14] = (N2)? mem_0__14_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[13] = (N2)? mem_0__13_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[12] = (N2)? mem_0__12_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[11] = (N2)? mem_0__11_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[10] = (N2)? mem_0__10_ : 
                      (N0)? 1'b0 : 1'b0;
  assign data_o[9] = (N2)? mem_0__9_ : 
                     (N0)? 1'b0 : 1'b0;
  assign data_o[8] = (N2)? mem_0__8_ : 
                     (N0)? 1'b0 : 1'b0;
  assign data_o[7] = (N2)? mem_0__7_ : 
                     (N0)? 1'b0 : 1'b0;
  assign data_o[6] = (N2)? mem_0__6_ : 
                     (N0)? 1'b0 : 1'b0;
  assign data_o[5] = (N2)? mem_0__5_ : 
                     (N0)? 1'b0 : 1'b0;
  assign data_o[4] = (N2)? mem_0__4_ : 
                     (N0)? 1'b0 : 1'b0;
  assign data_o[3] = (N2)? mem_0__3_ : 
                     (N0)? 1'b0 : 1'b0;
  assign data_o[2] = (N2)? mem_0__2_ : 
                     (N0)? 1'b0 : 1'b0;
  assign data_o[1] = (N2)? mem_0__1_ : 
                     (N0)? 1'b0 : 1'b0;
  assign data_o[0] = (N2)? mem_0__0_ : 
                     (N0)? 1'b0 : 1'b0;
  assign N7 = ~addr_i[2];
  assign N8 = ~addr_i[1];
  assign N9 = N7 & N8;
  assign N5 = 1'b1 & N9;
  assign N6 = (N1)? N5 : 
              (N4)? 1'b0 : 1'b0;
  assign N1 = N3;
  assign N2 = ~addr_r_0_;
  assign N3 = v_i & w_i;
  assign N4 = ~N3;

  always @(posedge clk_i) begin
    if(1'b1) begin
      addr_r_0_ <= addr_i[2];
    end 
    if(N6) begin
      mem_0__63_ <= data_i[63];
      mem_0__62_ <= data_i[62];
      mem_0__61_ <= data_i[61];
      mem_0__60_ <= data_i[60];
      mem_0__59_ <= data_i[59];
      mem_0__58_ <= data_i[58];
      mem_0__57_ <= data_i[57];
      mem_0__56_ <= data_i[56];
      mem_0__55_ <= data_i[55];
      mem_0__54_ <= data_i[54];
      mem_0__53_ <= data_i[53];
      mem_0__52_ <= data_i[52];
      mem_0__51_ <= data_i[51];
      mem_0__50_ <= data_i[50];
      mem_0__49_ <= data_i[49];
      mem_0__48_ <= data_i[48];
      mem_0__47_ <= data_i[47];
      mem_0__46_ <= data_i[46];
      mem_0__45_ <= data_i[45];
      mem_0__44_ <= data_i[44];
      mem_0__43_ <= data_i[43];
      mem_0__42_ <= data_i[42];
      mem_0__41_ <= data_i[41];
      mem_0__40_ <= data_i[40];
      mem_0__39_ <= data_i[39];
      mem_0__38_ <= data_i[38];
      mem_0__37_ <= data_i[37];
      mem_0__36_ <= data_i[36];
      mem_0__35_ <= data_i[35];
      mem_0__34_ <= data_i[34];
      mem_0__33_ <= data_i[33];
      mem_0__32_ <= data_i[32];
      mem_0__31_ <= data_i[31];
      mem_0__30_ <= data_i[30];
      mem_0__29_ <= data_i[29];
      mem_0__28_ <= data_i[28];
      mem_0__27_ <= data_i[27];
      mem_0__26_ <= data_i[26];
      mem_0__25_ <= data_i[25];
      mem_0__24_ <= data_i[24];
      mem_0__23_ <= data_i[23];
      mem_0__22_ <= data_i[22];
      mem_0__21_ <= data_i[21];
      mem_0__20_ <= data_i[20];
      mem_0__19_ <= data_i[19];
      mem_0__18_ <= data_i[18];
      mem_0__17_ <= data_i[17];
      mem_0__16_ <= data_i[16];
      mem_0__15_ <= data_i[15];
      mem_0__14_ <= data_i[14];
      mem_0__13_ <= data_i[13];
      mem_0__12_ <= data_i[12];
      mem_0__11_ <= data_i[11];
      mem_0__10_ <= data_i[10];
      mem_0__9_ <= data_i[9];
      mem_0__8_ <= data_i[8];
      mem_0__7_ <= data_i[7];
      mem_0__6_ <= data_i[6];
      mem_0__5_ <= data_i[5];
      mem_0__4_ <= data_i[4];
      mem_0__3_ <= data_i[3];
      mem_0__2_ <= data_i[2];
      mem_0__1_ <= data_i[1];
      mem_0__0_ <= data_i[0];
    end 
  end


endmodule



module bsg_mem_1rw_sync_width_p64_els_p0
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
  input [1:2] addr_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input w_i;
  wire [63:0] data_o;

  bsg_mem_1rw_sync_synth_width_p64_els_p0_latch_last_read_p0
  synth
  (
    .clk_i(clk_i),
    .v_i(v_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .addr_i(addr_i),
    .w_i(w_i),
    .data_o(data_o)
  );


endmodule



module bsg_fifo_1rw_large_width_p64_els_p0
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
  wire full_o,empty_o,N0,N1,N2,mem_we,mem_re,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,
  n_0_net___1_,n_0_net__0_,N13,N14,N15,N16;
  wire [1:2] rd_ptr,wr_ptr;
  reg last_op_is_read_r;
  assign N11 = rd_ptr == wr_ptr;
  assign N12 = rd_ptr == wr_ptr;

  bsg_circular_ptr
  rd_circ_ptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(mem_re),
    .o(rd_ptr)
  );


  bsg_circular_ptr
  wr_circ_ptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(mem_we),
    .o(wr_ptr)
  );


  bsg_mem_1rw_sync_width_p64_els_p0
  mem_1srw
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .addr_i({ n_0_net___1_, n_0_net__0_ }),
    .v_i(v_i),
    .w_i(mem_we),
    .data_o(data_o)
  );

  assign N7 = (N0)? 1'b1 : 
              (N10)? 1'b1 : 
              (N6)? 1'b0 : 1'b0;
  assign N0 = N3;
  assign N8 = (N0)? 1'b1 : 
              (N10)? mem_re : 1'b0;
  assign { n_0_net___1_, n_0_net__0_ } = (N1)? wr_ptr : 
                                         (N2)? rd_ptr : 1'b0;
  assign N1 = N14;
  assign N2 = N13;
  assign mem_we = enq_not_deq_i & v_i;
  assign mem_re = N15 & v_i;
  assign N15 = ~enq_not_deq_i;
  assign N3 = reset_i;
  assign N4 = v_i;
  assign N5 = N4 | N3;
  assign N6 = ~N5;
  assign N9 = ~N3;
  assign N10 = N4 & N9;
  assign empty_o = N11 & last_op_is_read_r;
  assign full_o = N12 & N16;
  assign N16 = ~last_op_is_read_r;
  assign N13 = ~mem_we;
  assign N14 = mem_we;

  always @(posedge clk_i) begin
    if(N7) begin
      last_op_is_read_r <= N8;
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
  wire N0;
  assign o[1] = i[1];
  assign o[0] = i[0] & N0;
  assign N0 = ~i[1];

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
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10;
  reg head_r;
  assign N6 = (N0)? 1'b0 : 
              (N1)? N5 : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign data_o = (N2)? { data_i[31:0], data_i[63:32] } : 
                  (N3)? data_i : 1'b0;
  assign N2 = head_r;
  assign N3 = N7;
  assign v_o = (N2)? { v_i[0:0], v_i[1:1] } : 
               (N3)? v_i : 1'b0;
  assign ready_o = (N2)? { ready_i[0:0], ready_i[1:1] } : 
                   (N3)? ready_i : 1'b0;
  assign N4 = ~reset_i;
  assign N5 = N9 ^ N10;
  assign N9 = head_r ^ N8;
  assign N8 = v_i[1] & ready_o[1];
  assign N10 = v_i[0] & ready_o[0];
  assign N7 = ~head_r;

  always @(posedge clk_i) begin
    if(1'b1) begin
      head_r <= N6;
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
  reg [63:0] mem;
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
      { mem[63:32] } <= { w_data_i[31:0] };
    end 
    if(N7) begin
      { mem[31:0] } <= { w_data_i[31:0] };
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
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p32_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i),
    .r_v_i(n_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o)
  );

  assign N9 = (N0)? 1'b1 : 
              (N1)? N5 : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign N10 = (N0)? 1'b0 : 
               (N1)? N4 : 1'b0;
  assign N11 = (N0)? 1'b1 : 
               (N1)? yumi_i : 1'b0;
  assign N12 = (N0)? 1'b0 : 
               (N1)? N6 : 1'b0;
  assign N13 = (N0)? 1'b1 : 
               (N1)? N7 : 1'b0;
  assign N14 = (N0)? 1'b0 : 
               (N1)? N8 : 1'b0;
  assign n_0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N15;
  assign N15 = ~full_r;
  assign N2 = ~reset_i;
  assign N3 = reset_i;
  assign N5 = enq_i;
  assign N4 = ~tail_r;
  assign N6 = ~head_r;
  assign N7 = N17 | N19;
  assign N17 = empty_r & N16;
  assign N16 = ~enq_i;
  assign N19 = N18 & N16;
  assign N18 = N15 & yumi_i;
  assign N8 = N23 | N24;
  assign N23 = N21 & N22;
  assign N21 = N20 & enq_i;
  assign N20 = ~empty_r;
  assign N22 = ~yumi_i;
  assign N24 = full_r & N22;

  always @(posedge clk_i) begin
    if(1'b1) begin
      full_r <= N14;
      empty_r <= N13;
    end 
    if(N9) begin
      tail_r <= N10;
    end 
    if(N11) begin
      head_r <= N12;
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
  wire [0:0] n_o,genblk1_genblk1_ptr_r_p1;
  wire N0,N1,N2,N3,N4,N5,N6;
  reg [0:0] o;
  assign genblk1_genblk1_ptr_r_p1[0] = o[0] ^ 1'b1;
  assign N5 = (N0)? 1'b0 : 
              (N1)? n_o[0] : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign n_o[0] = (N2)? genblk1_genblk1_ptr_r_p1[0] : 
                  (N3)? o[0] : 1'b0;
  assign N2 = add_i[0];
  assign N3 = N6;
  assign N4 = ~reset_i;
  assign N6 = ~add_i[0];

  always @(posedge clk) begin
    if(1'b1) begin
      { o[0:0] } <= { N5 };
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
  wire v_o,N0,N1,SYNOPSYS_UNCONNECTED_1;

  bsg_circular_ptr_slots_p2_max_add_p1
  strict_circular_ptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(yumi_i),
    .o(tag_o[0]),
    .n_o(SYNOPSYS_UNCONNECTED_1)
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



module bsg_fifo_1r1w_large_width_p32_els_p1
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
  wire ready_o,v_o,N0,N1,N2,N3,big_deq,big_valid,big_full_lo,big_empty_lo,bypass_mode,
  can_spill,emergency,will_spill,N4,N5,N6,n_0_net__1_,n_0_net__0_,N7,N8,N9,N10,N11,
  N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,SYNOPSYS_UNCONNECTED_1;
  wire [1:0] valid_sipo,yumi_cnt_sipo,little_ready,little_ready_rot,valid_int,bypass_vector,
  little_valid,cnt,little_valid_rot,yumi_int;
  wire [63:0] data_sipo,big_data_lo,little_data,little_data_rot,data_int;
  reg big_deq_r;

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


  bsg_fifo_1rw_large_width_p64_els_p0
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
    .i({ n_0_net__1_, n_0_net__0_ }),
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
  twofer_0__little
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
  twofer_1__little
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
    .tag_o(SYNOPSYS_UNCONNECTED_1),
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
  assign n_0_net__1_ = little_ready[1] & bypass_vector[1];
  assign n_0_net__0_ = little_ready[0] & bypass_vector[0];
  assign N7 = ~will_spill;
  assign N8 = will_spill;

  always @(posedge clk_i) begin
    if(1'b1) begin
      big_deq_r <= big_deq;
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
  wire [0:0] n_o;
  reg [0:0] o;
  assign n_o[0] = 1'b0;

  always @(posedge clk) begin
    if(1'b1) begin
      { o[0:0] } <= { 1'b0 };
    end 
  end


endmodule



module bsg_fifo_tracker_els_p1
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
  wire full_o,empty_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,equal_ptrs,
  SYNOPSYS_UNCONNECTED_1;
  reg deq_r,enq_r;

  bsg_circular_ptr_slots_p1_max_add_p1
  rptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(deq_i),
    .o(rptr_r_o[0]),
    .n_o(rptr_n_o[0])
  );


  bsg_circular_ptr_slots_p1_max_add_p1
  wptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(enq_i),
    .o(wptr_r_o[0]),
    .n_o(SYNOPSYS_UNCONNECTED_1)
  );

  assign N0 = rptr_r_o[0] ^ wptr_r_o[0];
  assign equal_ptrs = ~N0;
  assign N6 = (N1)? 1'b1 : 
              (N10)? 1'b1 : 
              (N5)? 1'b0 : 1'b0;
  assign N1 = N3;
  assign N7 = (N1)? 1'b0 : 
              (N10)? enq_i : 1'b0;
  assign N8 = (N1)? 1'b1 : 
              (N10)? deq_i : 1'b0;
  assign N2 = enq_i | deq_i;
  assign N3 = reset_i;
  assign N4 = N2 | N3;
  assign N5 = ~N4;
  assign N9 = ~N3;
  assign N10 = N2 & N9;
  assign empty_o = equal_ptrs & deq_r;
  assign full_o = equal_ptrs & enq_r;

  always @(posedge clk_i) begin
    if(N6) begin
      deq_r <= N8;
      enq_r <= N7;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p1_els_p1_read_write_same_addr_p0_harden_p0
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
  wire N0,N1,N2,N3,N4,N5;
  reg [0:0] r_data_o;
  assign N5 = ~w_addr_i[0];
  assign N3 = 1'b1 & N5;
  assign N4 = (N0)? N3 : 
              (N1)? 1'b0 : 1'b0;
  assign N0 = w_v_i;
  assign N1 = N2;
  assign N2 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N4) begin
      { r_data_o[0:0] } <= { w_data_i[0:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p1_els_p1_read_write_same_addr_p0
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

  bsg_mem_1r1w_synth_width_p1_els_p1_read_write_same_addr_p0_harden_p0
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



module bsg_fifo_1r1w_small_unhardened_width_p1_els_p1_ready_THEN_valid_p0
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
  wire ready_o,v_o,enque,full,empty,SYNOPSYS_UNCONNECTED_1;

  bsg_fifo_tracker_els_p1
  ft
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .enq_i(enque),
    .deq_i(yumi_i),
    .wptr_r_o(wptr_r[0]),
    .rptr_r_o(rptr_r[0]),
    .rptr_n_o(SYNOPSYS_UNCONNECTED_1),
    .full_o(full),
    .empty_o(empty)
  );


  bsg_mem_1r1w_width_p1_els_p1_read_write_same_addr_p0
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



module bsg_fifo_1r1w_small_width_p1_els_p1
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

  bsg_fifo_1r1w_small_unhardened_width_p1_els_p1_ready_THEN_valid_p0
  unhardened_fifo
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



module bsg_decode_num_out_p1
(
  i,
  o
);

  input [0:0] i;
  output [0:0] o;
  wire [0:0] o;
  assign o[0] = 1'b1;

endmodule



module bsg_decode_with_v_num_out_p1
(
  i,
  v_i,
  o
);

  input [0:0] i;
  output [0:0] o;
  input v_i;
  wire [0:0] o,lo;

  bsg_decode_num_out_p1
  bd
  (
    .i(i[0]),
    .o(lo[0])
  );

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
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8;
  reg [0:0] count_o;
  assign N6 = count_o[0] ^ up_i;
  assign N7 = (N0)? up_i : 
              (N1)? N6 : 1'b0;
  assign N0 = clear_i;
  assign N1 = N5;
  assign N8 = (N2)? 1'b0 : 
              (N3)? N7 : 1'b0;
  assign N2 = reset_i;
  assign N3 = N4;
  assign N4 = ~reset_i;
  assign N5 = ~clear_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_o[0:0] } <= { N8 };
    end 
  end


endmodule



module bsg_cache_to_dram_ctrl_rx_num_cache_p1_data_width_p32_block_size_in_words_p4_dram_ctrl_burst_len_p1
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
  output [31:0] dma_data_o;
  output [0:0] dma_data_v_o;
  input [0:0] dma_data_ready_i;
  input [31:0] app_rd_data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input app_rd_data_valid_i;
  input app_rd_data_end_i;
  output ready_o;
  wire [31:0] dma_data_o;
  wire [0:0] dma_data_v_o,tag_fifo_data_lo,cache_sel,count_lo;
  wire ready_o,N0,N1,fifo_v_lo,fifo_yumi_li,tag_fifo_v_lo,tag_fifo_yumi_li,
  counter_clear_li,counter_up_li,N2,N3;

  bsg_fifo_1r1w_large_width_p32_els_p1
  fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(app_rd_data_i),
    .v_i(app_rd_data_valid_i),
    .v_o(fifo_v_lo),
    .data_o(dma_data_o),
    .yumi_i(fifo_yumi_li)
  );


  bsg_fifo_1r1w_small_width_p1_els_p1
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


  bsg_decode_with_v_num_out_p1
  demux
  (
    .i(tag_fifo_data_lo[0]),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel[0])
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

  assign N2 = ~count_lo[0];
  assign counter_clear_li = (N0)? fifo_yumi_li : 
                            (N1)? 1'b0 : 1'b0;
  assign N0 = N2;
  assign N1 = count_lo[0];
  assign counter_up_li = (N0)? 1'b0 : 
                         (N1)? fifo_yumi_li : 1'b0;
  assign tag_fifo_yumi_li = (N0)? fifo_yumi_li : 
                            (N1)? 1'b0 : 1'b0;
  assign fifo_yumi_li = N3 & dma_data_ready_i[0];
  assign N3 = fifo_v_lo & tag_fifo_v_lo;
  assign dma_data_v_o[0] = cache_sel[0] & fifo_v_lo;

endmodule



module bsg_circular_ptr_slots_p4_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [1:0] o;
  output [1:0] n_o;
  input clk;
  input reset_i;
  wire [1:0] n_o,genblk1_genblk1_ptr_r_p1;
  wire N0,N1,N2,N3,N4,N5,N6,N7;
  reg [1:0] o;
  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign { N6, N5 } = (N0)? { 1'b0, 1'b0 } : 
                      (N1)? n_o : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign n_o = (N2)? genblk1_genblk1_ptr_r_p1 : 
               (N3)? o : 1'b0;
  assign N2 = add_i[0];
  assign N3 = N7;
  assign N4 = ~reset_i;
  assign N7 = ~add_i[0];

  always @(posedge clk) begin
    if(1'b1) begin
      { o[1:0] } <= { N6, N5 };
    end 
  end


endmodule



module bsg_fifo_tracker_els_p4
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

  output [1:0] wptr_r_o;
  output [1:0] rptr_r_o;
  output [1:0] rptr_n_o;
  input clk_i;
  input reset_i;
  input enq_i;
  input deq_i;
  output full_o;
  output empty_o;
  wire [1:0] wptr_r_o,rptr_r_o,rptr_n_o;
  wire full_o,empty_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,equal_ptrs,SYNOPSYS_UNCONNECTED_1,
  SYNOPSYS_UNCONNECTED_2;
  reg deq_r,enq_r;

  bsg_circular_ptr_slots_p4_max_add_p1
  rptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(deq_i),
    .o(rptr_r_o),
    .n_o(rptr_n_o)
  );


  bsg_circular_ptr_slots_p4_max_add_p1
  wptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(enq_i),
    .o(wptr_r_o),
    .n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2 })
  );

  assign equal_ptrs = rptr_r_o == wptr_r_o;
  assign N5 = (N0)? 1'b1 : 
              (N9)? 1'b1 : 
              (N4)? 1'b0 : 1'b0;
  assign N0 = N2;
  assign N6 = (N0)? 1'b0 : 
              (N9)? enq_i : 1'b0;
  assign N7 = (N0)? 1'b1 : 
              (N9)? deq_i : 1'b0;
  assign N1 = enq_i | deq_i;
  assign N2 = reset_i;
  assign N3 = N1 | N2;
  assign N4 = ~N3;
  assign N8 = ~N2;
  assign N9 = N1 & N8;
  assign empty_o = equal_ptrs & deq_r;
  assign full_o = equal_ptrs & enq_r;

  always @(posedge clk_i) begin
    if(N5) begin
      deq_r <= N7;
      enq_r <= N6;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p1_els_p4_read_write_same_addr_p0_harden_p0
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

  input [1:0] w_addr_i;
  input [0:0] w_data_i;
  input [1:0] r_addr_i;
  output [0:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [0:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20;
  reg [3:0] mem;
  assign r_data_o[0] = (N8)? mem[0] : 
                       (N10)? mem[1] : 
                       (N9)? mem[2] : 
                       (N11)? mem[3] : 1'b0;
  assign N16 = w_addr_i[0] & w_addr_i[1];
  assign N15 = N0 & w_addr_i[1];
  assign N0 = ~w_addr_i[0];
  assign N14 = w_addr_i[0] & N1;
  assign N1 = ~w_addr_i[1];
  assign N13 = N2 & N3;
  assign N2 = ~w_addr_i[0];
  assign N3 = ~w_addr_i[1];
  assign { N20, N19, N18, N17 } = (N4)? { N16, N15, N14, N13 } : 
                                  (N5)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N4 = w_v_i;
  assign N5 = N12;
  assign N6 = ~r_addr_i[0];
  assign N7 = ~r_addr_i[1];
  assign N8 = N6 & N7;
  assign N9 = N6 & r_addr_i[1];
  assign N10 = r_addr_i[0] & N7;
  assign N11 = r_addr_i[0] & r_addr_i[1];
  assign N12 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N20) begin
      { mem[3:3] } <= { w_data_i[0:0] };
    end 
    if(N19) begin
      { mem[2:2] } <= { w_data_i[0:0] };
    end 
    if(N18) begin
      { mem[1:1] } <= { w_data_i[0:0] };
    end 
    if(N17) begin
      { mem[0:0] } <= { w_data_i[0:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p1_els_p4_read_write_same_addr_p0
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

  input [1:0] w_addr_i;
  input [0:0] w_data_i;
  input [1:0] r_addr_i;
  output [0:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [0:0] r_data_o;

  bsg_mem_1r1w_synth_width_p1_els_p4_read_write_same_addr_p0_harden_p0
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



module bsg_fifo_1r1w_small_unhardened_width_p1_els_p4_ready_THEN_valid_p0
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
  wire ready_o,v_o,enque,full,empty,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2;
  wire [1:0] wptr_r,rptr_r;

  bsg_fifo_tracker_els_p4
  ft
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .enq_i(enque),
    .deq_i(yumi_i),
    .wptr_r_o(wptr_r),
    .rptr_r_o(rptr_r),
    .rptr_n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2 }),
    .full_o(full),
    .empty_o(empty)
  );


  bsg_mem_1r1w_width_p1_els_p4_read_write_same_addr_p0
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



module bsg_fifo_1r1w_small_width_p1_els_p4
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

  bsg_fifo_1r1w_small_unhardened_width_p1_els_p4_ready_THEN_valid_p0
  unhardened_fifo
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



module bsg_cache_to_dram_ctrl_tx_num_cache_p1_data_width_p32_block_size_in_words_p4_dram_ctrl_burst_len_p1
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
  input [31:0] dma_data_i;
  input [0:0] dma_data_v_i;
  output [0:0] dma_data_yumi_o;
  output [31:0] app_wdf_data_o;
  output [3:0] app_wdf_mask_o;
  input clk_i;
  input reset_i;
  input v_i;
  input app_wdf_rdy_i;
  output ready_o;
  output app_wdf_wren_o;
  output app_wdf_end_o;
  wire [0:0] dma_data_yumi_o,tag_fifo_data_lo,cache_sel,count_lo;
  wire [31:0] app_wdf_data_o;
  wire [3:0] app_wdf_mask_o;
  wire ready_o,app_wdf_wren_o,app_wdf_end_o,N0,N1,tag_fifo_v_lo,tag_fifo_yumi_li,
  clear_li,up_li,take_word,N2,N3;
  assign app_wdf_mask_o[0] = 1'b0;
  assign app_wdf_mask_o[1] = 1'b0;
  assign app_wdf_mask_o[2] = 1'b0;
  assign app_wdf_mask_o[3] = 1'b0;
  assign app_wdf_data_o[31] = dma_data_i[31];
  assign app_wdf_data_o[30] = dma_data_i[30];
  assign app_wdf_data_o[29] = dma_data_i[29];
  assign app_wdf_data_o[28] = dma_data_i[28];
  assign app_wdf_data_o[27] = dma_data_i[27];
  assign app_wdf_data_o[26] = dma_data_i[26];
  assign app_wdf_data_o[25] = dma_data_i[25];
  assign app_wdf_data_o[24] = dma_data_i[24];
  assign app_wdf_data_o[23] = dma_data_i[23];
  assign app_wdf_data_o[22] = dma_data_i[22];
  assign app_wdf_data_o[21] = dma_data_i[21];
  assign app_wdf_data_o[20] = dma_data_i[20];
  assign app_wdf_data_o[19] = dma_data_i[19];
  assign app_wdf_data_o[18] = dma_data_i[18];
  assign app_wdf_data_o[17] = dma_data_i[17];
  assign app_wdf_data_o[16] = dma_data_i[16];
  assign app_wdf_data_o[15] = dma_data_i[15];
  assign app_wdf_data_o[14] = dma_data_i[14];
  assign app_wdf_data_o[13] = dma_data_i[13];
  assign app_wdf_data_o[12] = dma_data_i[12];
  assign app_wdf_data_o[11] = dma_data_i[11];
  assign app_wdf_data_o[10] = dma_data_i[10];
  assign app_wdf_data_o[9] = dma_data_i[9];
  assign app_wdf_data_o[8] = dma_data_i[8];
  assign app_wdf_data_o[7] = dma_data_i[7];
  assign app_wdf_data_o[6] = dma_data_i[6];
  assign app_wdf_data_o[5] = dma_data_i[5];
  assign app_wdf_data_o[4] = dma_data_i[4];
  assign app_wdf_data_o[3] = dma_data_i[3];
  assign app_wdf_data_o[2] = dma_data_i[2];
  assign app_wdf_data_o[1] = dma_data_i[1];
  assign app_wdf_data_o[0] = dma_data_i[0];

  bsg_fifo_1r1w_small_width_p1_els_p4
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


  bsg_decode_with_v_num_out_p1
  demux
  (
    .i(tag_fifo_data_lo[0]),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel[0])
  );


  bsg_counter_clear_up_max_val_p0_init_val_p0
  word_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_li),
    .up_i(up_li),
    .count_o(count_lo[0])
  );

  assign N2 = ~count_lo[0];
  assign clear_li = (N0)? take_word : 
                    (N1)? 1'b0 : 1'b0;
  assign N0 = N2;
  assign N1 = count_lo[0];
  assign up_li = (N0)? 1'b0 : 
                 (N1)? take_word : 1'b0;
  assign app_wdf_end_o = (N0)? take_word : 
                         (N1)? 1'b0 : 1'b0;
  assign tag_fifo_yumi_li = (N0)? take_word : 
                            (N1)? 1'b0 : 1'b0;
  assign dma_data_yumi_o[0] = N3 & app_wdf_rdy_i;
  assign N3 = cache_sel[0] & dma_data_v_i[0];
  assign app_wdf_wren_o = tag_fifo_v_lo & dma_data_v_i[0];
  assign take_word = app_wdf_wren_o & app_wdf_rdy_i;

endmodule



module bsg_cache_to_dram_ctrl
(
  clk_i,
  reset_i,
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

  input [28:0] dma_pkt_i;
  input [0:0] dma_pkt_v_i;
  output [0:0] dma_pkt_yumi_o;
  output [31:0] dma_data_o;
  output [0:0] dma_data_v_o;
  input [0:0] dma_data_ready_i;
  input [31:0] dma_data_i;
  input [0:0] dma_data_v_i;
  output [0:0] dma_data_yumi_o;
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
  wire [0:0] dma_pkt_yumi_o,dma_data_v_o,dma_data_yumi_o,rr_tag_lo;
  wire [31:0] dma_data_o,app_wdf_data_o;
  wire [2:0] app_cmd_o;
  wire [3:0] app_wdf_mask_o;
  wire app_en_o,app_wdf_wren_o,app_wdf_end_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,rr_v_lo,
  rr_yumi_li,rx_v_li,rx_ready_lo,tx_v_li,tx_ready_lo,req_state_n,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,
  N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,
  N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,
  N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,
  N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,
  N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127;
  wire [28:0] dma_pkt;
  wire [1:0] req_cnt_n;
  reg [27:0] addr_n;
  reg write_not_read_r,req_state_r;
  reg [28:0] app_addr_o;
  reg [1:0] req_cnt_r;
  assign app_cmd_o[1] = 1'b0;
  assign app_cmd_o[2] = 1'b0;

  bsg_round_robin_n_to_1_width_p29_num_in_p1_strict_p0
  cache_rr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(dma_pkt_i),
    .v_i(dma_pkt_v_i[0]),
    .yumi_o(dma_pkt_yumi_o[0]),
    .v_o(rr_v_lo),
    .data_o(dma_pkt),
    .tag_o(rr_tag_lo[0]),
    .yumi_i(rr_yumi_li)
  );


  bsg_cache_to_dram_ctrl_rx_num_cache_p1_data_width_p32_block_size_in_words_p4_dram_ctrl_burst_len_p1
  rx
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(rx_v_li),
    .tag_i(app_addr_o[28]),
    .ready_o(rx_ready_lo),
    .dma_data_o(dma_data_o),
    .dma_data_v_o(dma_data_v_o[0]),
    .dma_data_ready_i(dma_data_ready_i[0]),
    .app_rd_data_valid_i(app_rd_data_valid_i),
    .app_rd_data_end_i(app_rd_data_end_i),
    .app_rd_data_i(app_rd_data_i)
  );


  bsg_cache_to_dram_ctrl_tx_num_cache_p1_data_width_p32_block_size_in_words_p4_dram_ctrl_burst_len_p1
  tx
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(tx_v_li),
    .tag_i(app_addr_o[28]),
    .ready_o(tx_ready_lo),
    .dma_data_i(dma_data_i),
    .dma_data_v_i(dma_data_v_i[0]),
    .dma_data_yumi_o(dma_data_yumi_o[0]),
    .app_wdf_wren_o(app_wdf_wren_o),
    .app_wdf_data_o(app_wdf_data_o),
    .app_wdf_mask_o(app_wdf_mask_o),
    .app_wdf_end_o(app_wdf_end_o),
    .app_wdf_rdy_i(app_wdf_rdy_i)
  );

  assign N124 = req_cnt_r[0] & req_cnt_r[1];
  assign { N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24 } = app_addr_o[27:0] + { N21, 1'b0, 1'b0 };
  assign { N53, N52 } = req_cnt_r + 1'b1;
  assign N11 = (N0)? rr_tag_lo[0] : 
               (N1)? app_addr_o[28] : 1'b0;
  assign N0 = rr_v_lo;
  assign N1 = N10;
  assign N12 = (N0)? dma_pkt[28] : 
               (N1)? write_not_read_r : 1'b0;
  assign { N14, N13 } = (N0)? { 1'b0, 1'b0 } : 
                        (N1)? req_cnt_r : 1'b0;
  assign N15 = (N0)? 1'b1 : 
               (N1)? req_state_r : 1'b0;
  assign N18 = (N2)? tx_ready_lo : 
               (N3)? rx_ready_lo : 1'b0;
  assign N2 = write_not_read_r;
  assign N3 = N17;
  assign { N55, N54 } = (N4)? { N53, N52 } : 
                        (N22)? req_cnt_r : 1'b0;
  assign N4 = N21;
  assign N57 = ~N56;
  assign req_state_n = (N5)? N15 : 
                       (N6)? N57 : 1'b0;
  assign N5 = N9;
  assign N6 = req_state_r;
  assign rr_yumi_li = (N5)? rr_v_lo : 
                      (N6)? 1'b0 : 1'b0;
  assign N58 = (N5)? rr_v_lo : 
               (N6)? 1'b1 : 1'b0;
  assign { N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59 } = (N5)? dma_pkt[27:0] : 
                                                                                                                                                          (N6)? { N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24 } : 1'b0;
  assign req_cnt_n = (N5)? { N14, N13 } : 
                     (N6)? { N55, N54 } : 1'b0;
  assign app_en_o = (N5)? 1'b0 : 
                    (N6)? N18 : 1'b0;
  assign app_cmd_o[0] = (N5)? 1'b0 : 
                        (N6)? N17 : 1'b0;
  assign rx_v_li = (N5)? 1'b0 : 
                   (N6)? N19 : 1'b0;
  assign tx_v_li = (N5)? 1'b0 : 
                   (N6)? N20 : 1'b0;
  assign N89 = (N7)? 1'b0 : 
               (N8)? req_state_n : 1'b0;
  assign N7 = N88;
  assign N8 = N87;
  assign N90 = (N7)? 1'b0 : 
               (N8)? N11 : 1'b0;
  assign { N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91 } = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                             (N8)? addr_n : 1'b0;
  assign { N120, N119 } = (N7)? { 1'b0, 1'b0 } : 
                          (N8)? req_cnt_n : 1'b0;
  assign N121 = (N7)? 1'b0 : 
                (N8)? N12 : 1'b0;
  assign N9 = ~req_state_r;
  assign N10 = ~rr_v_lo;
  assign N16 = req_state_r;
  assign N17 = ~write_not_read_r;
  assign N19 = N125 & app_rdy_i;
  assign N125 = N17 & rx_ready_lo;
  assign N20 = N126 & app_rdy_i;
  assign N126 = write_not_read_r & tx_ready_lo;
  assign N21 = app_rdy_i & N18;
  assign N22 = ~N21;
  assign N23 = N16 & N21;
  assign N56 = N127 & N124;
  assign N127 = app_rdy_i & N18;
  assign N87 = ~reset_i;
  assign N88 = reset_i;
  assign N122 = req_state_r & N87;
  assign N123 = ~N122;

  always @(N86 or N58) begin
    if(N58) begin
      { addr_n[27:27] } <= { N86 };
    end 
  end


  always @(N85 or N58) begin
    if(N58) begin
      { addr_n[26:26] } <= { N85 };
    end 
  end


  always @(N84 or N58) begin
    if(N58) begin
      { addr_n[25:25] } <= { N84 };
    end 
  end


  always @(N83 or N58) begin
    if(N58) begin
      { addr_n[24:24] } <= { N83 };
    end 
  end


  always @(N82 or N58) begin
    if(N58) begin
      { addr_n[23:23] } <= { N82 };
    end 
  end


  always @(N81 or N58) begin
    if(N58) begin
      { addr_n[22:22] } <= { N81 };
    end 
  end


  always @(N80 or N58) begin
    if(N58) begin
      { addr_n[21:21] } <= { N80 };
    end 
  end


  always @(N79 or N58) begin
    if(N58) begin
      { addr_n[20:20] } <= { N79 };
    end 
  end


  always @(N78 or N58) begin
    if(N58) begin
      { addr_n[19:19] } <= { N78 };
    end 
  end


  always @(N77 or N58) begin
    if(N58) begin
      { addr_n[18:18] } <= { N77 };
    end 
  end


  always @(N76 or N58) begin
    if(N58) begin
      { addr_n[17:17] } <= { N76 };
    end 
  end


  always @(N75 or N58) begin
    if(N58) begin
      { addr_n[16:16] } <= { N75 };
    end 
  end


  always @(N74 or N58) begin
    if(N58) begin
      { addr_n[15:15] } <= { N74 };
    end 
  end


  always @(N73 or N58) begin
    if(N58) begin
      { addr_n[14:14] } <= { N73 };
    end 
  end


  always @(N72 or N58) begin
    if(N58) begin
      { addr_n[13:13] } <= { N72 };
    end 
  end


  always @(N71 or N58) begin
    if(N58) begin
      { addr_n[12:12] } <= { N71 };
    end 
  end


  always @(N70 or N58) begin
    if(N58) begin
      { addr_n[11:11] } <= { N70 };
    end 
  end


  always @(N69 or N58) begin
    if(N58) begin
      { addr_n[10:10] } <= { N69 };
    end 
  end


  always @(N68 or N58) begin
    if(N58) begin
      { addr_n[9:9] } <= { N68 };
    end 
  end


  always @(N67 or N58) begin
    if(N58) begin
      { addr_n[8:8] } <= { N67 };
    end 
  end


  always @(N66 or N58) begin
    if(N58) begin
      { addr_n[7:7] } <= { N66 };
    end 
  end


  always @(N65 or N58) begin
    if(N58) begin
      { addr_n[6:6] } <= { N65 };
    end 
  end


  always @(N64 or N58) begin
    if(N58) begin
      { addr_n[5:5] } <= { N64 };
    end 
  end


  always @(N63 or N58) begin
    if(N58) begin
      { addr_n[4:4] } <= { N63 };
    end 
  end


  always @(N62 or N58) begin
    if(N58) begin
      { addr_n[3:3] } <= { N62 };
    end 
  end


  always @(N61 or N58) begin
    if(N58) begin
      { addr_n[2:2] } <= { N61 };
    end 
  end


  always @(N60 or N58) begin
    if(N58) begin
      { addr_n[1:1] } <= { N60 };
    end 
  end


  always @(N59 or N58) begin
    if(N58) begin
      { addr_n[0:0] } <= { N59 };
    end 
  end


  always @(posedge clk_i) begin
    if(N123) begin
      write_not_read_r <= N121;
      { app_addr_o[28:28] } <= { N90 };
    end 
    if(1'b1) begin
      req_state_r <= N89;
      { app_addr_o[27:0] } <= { N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91 };
      { req_cnt_r[1:0] } <= { N120, N119 };
    end 
  end


endmodule

