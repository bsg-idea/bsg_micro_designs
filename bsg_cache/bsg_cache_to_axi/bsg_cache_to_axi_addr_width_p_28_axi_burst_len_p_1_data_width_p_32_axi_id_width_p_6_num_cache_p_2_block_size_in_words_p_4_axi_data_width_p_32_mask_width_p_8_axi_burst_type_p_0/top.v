

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
  axi_awid_o,
  axi_awaddr_addr_o,
  axi_awaddr_cache_id_o,
  axi_awlen_o,
  axi_awsize_o,
  axi_awburst_o,
  axi_awcache_o,
  axi_awprot_o,
  axi_awlock_o,
  axi_awvalid_o,
  axi_awready_i,
  axi_wdata_o,
  axi_wstrb_o,
  axi_wlast_o,
  axi_wvalid_o,
  axi_wready_i,
  axi_bid_i,
  axi_bresp_i,
  axi_bvalid_i,
  axi_bready_o,
  axi_arid_o,
  axi_araddr_addr_o,
  axi_araddr_cache_id_o,
  axi_arlen_o,
  axi_arsize_o,
  axi_arburst_o,
  axi_arcache_o,
  axi_arprot_o,
  axi_arlock_o,
  axi_arvalid_o,
  axi_arready_i,
  axi_rid_i,
  axi_rdata_i,
  axi_rresp_i,
  axi_rlast_i,
  axi_rvalid_i,
  axi_rready_o
);

  input [73:0] dma_pkt_i;
  input [1:0] dma_pkt_v_i;
  output [1:0] dma_pkt_yumi_o;
  output [63:0] dma_data_o;
  output [1:0] dma_data_v_o;
  input [1:0] dma_data_ready_i;
  input [63:0] dma_data_i;
  input [1:0] dma_data_v_i;
  output [1:0] dma_data_yumi_o;
  output [5:0] axi_awid_o;
  output [27:0] axi_awaddr_addr_o;
  output [0:0] axi_awaddr_cache_id_o;
  output [7:0] axi_awlen_o;
  output [2:0] axi_awsize_o;
  output [1:0] axi_awburst_o;
  output [3:0] axi_awcache_o;
  output [2:0] axi_awprot_o;
  output [31:0] axi_wdata_o;
  output [3:0] axi_wstrb_o;
  input [5:0] axi_bid_i;
  input [1:0] axi_bresp_i;
  output [5:0] axi_arid_o;
  output [27:0] axi_araddr_addr_o;
  output [0:0] axi_araddr_cache_id_o;
  output [7:0] axi_arlen_o;
  output [2:0] axi_arsize_o;
  output [1:0] axi_arburst_o;
  output [3:0] axi_arcache_o;
  output [2:0] axi_arprot_o;
  input [5:0] axi_rid_i;
  input [31:0] axi_rdata_i;
  input [1:0] axi_rresp_i;
  input clk_i;
  input reset_i;
  input axi_awready_i;
  input axi_wready_i;
  input axi_bvalid_i;
  input axi_arready_i;
  input axi_rlast_i;
  input axi_rvalid_i;
  output axi_awlock_o;
  output axi_awvalid_o;
  output axi_wlast_o;
  output axi_wvalid_o;
  output axi_bready_o;
  output axi_arlock_o;
  output axi_arvalid_o;
  output axi_rready_o;

  bsg_cache_to_axi
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
    .axi_awid_o(axi_awid_o),
    .axi_awaddr_addr_o(axi_awaddr_addr_o),
    .axi_awaddr_cache_id_o(axi_awaddr_cache_id_o),
    .axi_awlen_o(axi_awlen_o),
    .axi_awsize_o(axi_awsize_o),
    .axi_awburst_o(axi_awburst_o),
    .axi_awcache_o(axi_awcache_o),
    .axi_awprot_o(axi_awprot_o),
    .axi_wdata_o(axi_wdata_o),
    .axi_wstrb_o(axi_wstrb_o),
    .axi_bid_i(axi_bid_i),
    .axi_bresp_i(axi_bresp_i),
    .axi_arid_o(axi_arid_o),
    .axi_araddr_addr_o(axi_araddr_addr_o),
    .axi_araddr_cache_id_o(axi_araddr_cache_id_o),
    .axi_arlen_o(axi_arlen_o),
    .axi_arsize_o(axi_arsize_o),
    .axi_arburst_o(axi_arburst_o),
    .axi_arcache_o(axi_arcache_o),
    .axi_arprot_o(axi_arprot_o),
    .axi_rid_i(axi_rid_i),
    .axi_rdata_i(axi_rdata_i),
    .axi_rresp_i(axi_rresp_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .axi_awready_i(axi_awready_i),
    .axi_wready_i(axi_wready_i),
    .axi_bvalid_i(axi_bvalid_i),
    .axi_arready_i(axi_arready_i),
    .axi_rlast_i(axi_rlast_i),
    .axi_rvalid_i(axi_rvalid_i),
    .axi_awlock_o(axi_awlock_o),
    .axi_awvalid_o(axi_awvalid_o),
    .axi_wlast_o(axi_wlast_o),
    .axi_wvalid_o(axi_wvalid_o),
    .axi_bready_o(axi_bready_o),
    .axi_arlock_o(axi_arlock_o),
    .axi_arvalid_o(axi_arvalid_o),
    .axi_rready_o(axi_rready_o)
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



module bsg_mux_one_hot_width_p37_els_p2
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [73:0] data_i;
  input [1:0] sel_one_hot_i;
  output [36:0] data_o;
  wire [36:0] data_o;
  wire [73:0] data_masked;
  assign data_masked[36] = data_i[36] & sel_one_hot_i[0];
  assign data_masked[35] = data_i[35] & sel_one_hot_i[0];
  assign data_masked[34] = data_i[34] & sel_one_hot_i[0];
  assign data_masked[33] = data_i[33] & sel_one_hot_i[0];
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
  assign data_masked[73] = data_i[73] & sel_one_hot_i[1];
  assign data_masked[72] = data_i[72] & sel_one_hot_i[1];
  assign data_masked[71] = data_i[71] & sel_one_hot_i[1];
  assign data_masked[70] = data_i[70] & sel_one_hot_i[1];
  assign data_masked[69] = data_i[69] & sel_one_hot_i[1];
  assign data_masked[68] = data_i[68] & sel_one_hot_i[1];
  assign data_masked[67] = data_i[67] & sel_one_hot_i[1];
  assign data_masked[66] = data_i[66] & sel_one_hot_i[1];
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
  assign data_o[0] = data_masked[37] | data_masked[0];
  assign data_o[1] = data_masked[38] | data_masked[1];
  assign data_o[2] = data_masked[39] | data_masked[2];
  assign data_o[3] = data_masked[40] | data_masked[3];
  assign data_o[4] = data_masked[41] | data_masked[4];
  assign data_o[5] = data_masked[42] | data_masked[5];
  assign data_o[6] = data_masked[43] | data_masked[6];
  assign data_o[7] = data_masked[44] | data_masked[7];
  assign data_o[8] = data_masked[45] | data_masked[8];
  assign data_o[9] = data_masked[46] | data_masked[9];
  assign data_o[10] = data_masked[47] | data_masked[10];
  assign data_o[11] = data_masked[48] | data_masked[11];
  assign data_o[12] = data_masked[49] | data_masked[12];
  assign data_o[13] = data_masked[50] | data_masked[13];
  assign data_o[14] = data_masked[51] | data_masked[14];
  assign data_o[15] = data_masked[52] | data_masked[15];
  assign data_o[16] = data_masked[53] | data_masked[16];
  assign data_o[17] = data_masked[54] | data_masked[17];
  assign data_o[18] = data_masked[55] | data_masked[18];
  assign data_o[19] = data_masked[56] | data_masked[19];
  assign data_o[20] = data_masked[57] | data_masked[20];
  assign data_o[21] = data_masked[58] | data_masked[21];
  assign data_o[22] = data_masked[59] | data_masked[22];
  assign data_o[23] = data_masked[60] | data_masked[23];
  assign data_o[24] = data_masked[61] | data_masked[24];
  assign data_o[25] = data_masked[62] | data_masked[25];
  assign data_o[26] = data_masked[63] | data_masked[26];
  assign data_o[27] = data_masked[64] | data_masked[27];
  assign data_o[28] = data_masked[65] | data_masked[28];
  assign data_o[29] = data_masked[66] | data_masked[29];
  assign data_o[30] = data_masked[67] | data_masked[30];
  assign data_o[31] = data_masked[68] | data_masked[31];
  assign data_o[32] = data_masked[69] | data_masked[32];
  assign data_o[33] = data_masked[70] | data_masked[33];
  assign data_o[34] = data_masked[71] | data_masked[34];
  assign data_o[35] = data_masked[72] | data_masked[35];
  assign data_o[36] = data_masked[73] | data_masked[36];

endmodule



module bsg_crossbar_o_by_i_i_els_p2_o_els_p1_width_p37
(
  i,
  sel_oi_one_hot_i,
  o
);

  input [73:0] i;
  input [1:0] sel_oi_one_hot_i;
  output [36:0] o;
  wire [36:0] o;

  bsg_mux_one_hot_width_p37_els_p2
  \l_0_.mux_one_hot 
  (
    .data_i(i),
    .sel_one_hot_i(sel_oi_one_hot_i),
    .data_o(o)
  );


endmodule



module bsg_round_robin_n_to_1_width_p37_num_in_p2_strict_p0
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

  input [73:0] data_i;
  input [1:0] v_i;
  output [1:0] yumi_o;
  output [36:0] data_o;
  output [0:0] tag_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;
  wire [1:0] yumi_o,\greedy.grants_lo ;
  wire [36:0] data_o;
  wire [0:0] tag_o;
  wire v_o,_1_net_,sv2v_dc_1,sv2v_dc_2;

  bsg_round_robin_arb_inputs_p2
  \greedy.scan0.rr_arb_ctrl 
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


  bsg_crossbar_o_by_i_i_els_p2_o_els_p1_width_p37
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



module bsg_mem_1r1w_synth_width_p1_els_p2_read_write_same_addr_p0
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
  wire [1:0] \nz.mem ;
  reg \nz.mem_1_sv2v_reg ,\nz.mem_0_sv2v_reg ;
  assign \nz.mem [1] = \nz.mem_1_sv2v_reg ;
  assign \nz.mem [0] = \nz.mem_0_sv2v_reg ;
  assign r_data_o[0] = (N3)? \nz.mem [0] : 
                       (N0)? \nz.mem [1] : 1'b0;
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
      \nz.mem_1_sv2v_reg  <= w_data_i[0];
    end 
    if(N7) begin
      \nz.mem_0_sv2v_reg  <= w_data_i[0];
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

  bsg_mem_1r1w_synth_width_p1_els_p2_read_write_same_addr_p0
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



module bsg_two_fifo_width_p1_ready_THEN_valid_p0
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

  input [0:0] data_i;
  output [0:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [0:0] data_o;
  wire ready_o,v_o,enq_i,tail_r,_0_net_,head_r,empty_r,full_r,N0,N1,N2,N3,N4,N5,N6,N7,
  N8,N9,N10,N11,N12,N13,N14;
  reg full_r_sv2v_reg,tail_r_sv2v_reg,head_r_sv2v_reg,empty_r_sv2v_reg;
  assign full_r = full_r_sv2v_reg;
  assign tail_r = tail_r_sv2v_reg;
  assign head_r = head_r_sv2v_reg;
  assign empty_r = empty_r_sv2v_reg;

  bsg_mem_1r1w_width_p1_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i[0]),
    .r_v_i(_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o[0])
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

  bsg_two_fifo_width_p1_ready_THEN_valid_p0
  \unhardened.tf.twof 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_o),
    .data_i(data_i[0]),
    .v_i(v_i),
    .v_o(v_o),
    .data_o(data_o[0]),
    .yumi_i(yumi_i)
  );


endmodule



module bsg_mem_1r1w_synth_width_p32_els_p2_read_write_same_addr_p0
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
  wire [63:0] \nz.mem ;
  reg \nz.mem_63_sv2v_reg ,\nz.mem_62_sv2v_reg ,\nz.mem_61_sv2v_reg ,
  \nz.mem_60_sv2v_reg ,\nz.mem_59_sv2v_reg ,\nz.mem_58_sv2v_reg ,\nz.mem_57_sv2v_reg ,
  \nz.mem_56_sv2v_reg ,\nz.mem_55_sv2v_reg ,\nz.mem_54_sv2v_reg ,\nz.mem_53_sv2v_reg ,
  \nz.mem_52_sv2v_reg ,\nz.mem_51_sv2v_reg ,\nz.mem_50_sv2v_reg ,\nz.mem_49_sv2v_reg ,
  \nz.mem_48_sv2v_reg ,\nz.mem_47_sv2v_reg ,\nz.mem_46_sv2v_reg ,\nz.mem_45_sv2v_reg ,
  \nz.mem_44_sv2v_reg ,\nz.mem_43_sv2v_reg ,\nz.mem_42_sv2v_reg ,
  \nz.mem_41_sv2v_reg ,\nz.mem_40_sv2v_reg ,\nz.mem_39_sv2v_reg ,\nz.mem_38_sv2v_reg ,
  \nz.mem_37_sv2v_reg ,\nz.mem_36_sv2v_reg ,\nz.mem_35_sv2v_reg ,\nz.mem_34_sv2v_reg ,
  \nz.mem_33_sv2v_reg ,\nz.mem_32_sv2v_reg ,\nz.mem_31_sv2v_reg ,\nz.mem_30_sv2v_reg ,
  \nz.mem_29_sv2v_reg ,\nz.mem_28_sv2v_reg ,\nz.mem_27_sv2v_reg ,\nz.mem_26_sv2v_reg ,
  \nz.mem_25_sv2v_reg ,\nz.mem_24_sv2v_reg ,\nz.mem_23_sv2v_reg ,
  \nz.mem_22_sv2v_reg ,\nz.mem_21_sv2v_reg ,\nz.mem_20_sv2v_reg ,\nz.mem_19_sv2v_reg ,
  \nz.mem_18_sv2v_reg ,\nz.mem_17_sv2v_reg ,\nz.mem_16_sv2v_reg ,\nz.mem_15_sv2v_reg ,
  \nz.mem_14_sv2v_reg ,\nz.mem_13_sv2v_reg ,\nz.mem_12_sv2v_reg ,\nz.mem_11_sv2v_reg ,
  \nz.mem_10_sv2v_reg ,\nz.mem_9_sv2v_reg ,\nz.mem_8_sv2v_reg ,\nz.mem_7_sv2v_reg ,
  \nz.mem_6_sv2v_reg ,\nz.mem_5_sv2v_reg ,\nz.mem_4_sv2v_reg ,\nz.mem_3_sv2v_reg ,
  \nz.mem_2_sv2v_reg ,\nz.mem_1_sv2v_reg ,\nz.mem_0_sv2v_reg ;
  assign \nz.mem [63] = \nz.mem_63_sv2v_reg ;
  assign \nz.mem [62] = \nz.mem_62_sv2v_reg ;
  assign \nz.mem [61] = \nz.mem_61_sv2v_reg ;
  assign \nz.mem [60] = \nz.mem_60_sv2v_reg ;
  assign \nz.mem [59] = \nz.mem_59_sv2v_reg ;
  assign \nz.mem [58] = \nz.mem_58_sv2v_reg ;
  assign \nz.mem [57] = \nz.mem_57_sv2v_reg ;
  assign \nz.mem [56] = \nz.mem_56_sv2v_reg ;
  assign \nz.mem [55] = \nz.mem_55_sv2v_reg ;
  assign \nz.mem [54] = \nz.mem_54_sv2v_reg ;
  assign \nz.mem [53] = \nz.mem_53_sv2v_reg ;
  assign \nz.mem [52] = \nz.mem_52_sv2v_reg ;
  assign \nz.mem [51] = \nz.mem_51_sv2v_reg ;
  assign \nz.mem [50] = \nz.mem_50_sv2v_reg ;
  assign \nz.mem [49] = \nz.mem_49_sv2v_reg ;
  assign \nz.mem [48] = \nz.mem_48_sv2v_reg ;
  assign \nz.mem [47] = \nz.mem_47_sv2v_reg ;
  assign \nz.mem [46] = \nz.mem_46_sv2v_reg ;
  assign \nz.mem [45] = \nz.mem_45_sv2v_reg ;
  assign \nz.mem [44] = \nz.mem_44_sv2v_reg ;
  assign \nz.mem [43] = \nz.mem_43_sv2v_reg ;
  assign \nz.mem [42] = \nz.mem_42_sv2v_reg ;
  assign \nz.mem [41] = \nz.mem_41_sv2v_reg ;
  assign \nz.mem [40] = \nz.mem_40_sv2v_reg ;
  assign \nz.mem [39] = \nz.mem_39_sv2v_reg ;
  assign \nz.mem [38] = \nz.mem_38_sv2v_reg ;
  assign \nz.mem [37] = \nz.mem_37_sv2v_reg ;
  assign \nz.mem [36] = \nz.mem_36_sv2v_reg ;
  assign \nz.mem [35] = \nz.mem_35_sv2v_reg ;
  assign \nz.mem [34] = \nz.mem_34_sv2v_reg ;
  assign \nz.mem [33] = \nz.mem_33_sv2v_reg ;
  assign \nz.mem [32] = \nz.mem_32_sv2v_reg ;
  assign \nz.mem [31] = \nz.mem_31_sv2v_reg ;
  assign \nz.mem [30] = \nz.mem_30_sv2v_reg ;
  assign \nz.mem [29] = \nz.mem_29_sv2v_reg ;
  assign \nz.mem [28] = \nz.mem_28_sv2v_reg ;
  assign \nz.mem [27] = \nz.mem_27_sv2v_reg ;
  assign \nz.mem [26] = \nz.mem_26_sv2v_reg ;
  assign \nz.mem [25] = \nz.mem_25_sv2v_reg ;
  assign \nz.mem [24] = \nz.mem_24_sv2v_reg ;
  assign \nz.mem [23] = \nz.mem_23_sv2v_reg ;
  assign \nz.mem [22] = \nz.mem_22_sv2v_reg ;
  assign \nz.mem [21] = \nz.mem_21_sv2v_reg ;
  assign \nz.mem [20] = \nz.mem_20_sv2v_reg ;
  assign \nz.mem [19] = \nz.mem_19_sv2v_reg ;
  assign \nz.mem [18] = \nz.mem_18_sv2v_reg ;
  assign \nz.mem [17] = \nz.mem_17_sv2v_reg ;
  assign \nz.mem [16] = \nz.mem_16_sv2v_reg ;
  assign \nz.mem [15] = \nz.mem_15_sv2v_reg ;
  assign \nz.mem [14] = \nz.mem_14_sv2v_reg ;
  assign \nz.mem [13] = \nz.mem_13_sv2v_reg ;
  assign \nz.mem [12] = \nz.mem_12_sv2v_reg ;
  assign \nz.mem [11] = \nz.mem_11_sv2v_reg ;
  assign \nz.mem [10] = \nz.mem_10_sv2v_reg ;
  assign \nz.mem [9] = \nz.mem_9_sv2v_reg ;
  assign \nz.mem [8] = \nz.mem_8_sv2v_reg ;
  assign \nz.mem [7] = \nz.mem_7_sv2v_reg ;
  assign \nz.mem [6] = \nz.mem_6_sv2v_reg ;
  assign \nz.mem [5] = \nz.mem_5_sv2v_reg ;
  assign \nz.mem [4] = \nz.mem_4_sv2v_reg ;
  assign \nz.mem [3] = \nz.mem_3_sv2v_reg ;
  assign \nz.mem [2] = \nz.mem_2_sv2v_reg ;
  assign \nz.mem [1] = \nz.mem_1_sv2v_reg ;
  assign \nz.mem [0] = \nz.mem_0_sv2v_reg ;
  assign r_data_o[31] = (N3)? \nz.mem [31] : 
                        (N0)? \nz.mem [63] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[30] = (N3)? \nz.mem [30] : 
                        (N0)? \nz.mem [62] : 1'b0;
  assign r_data_o[29] = (N3)? \nz.mem [29] : 
                        (N0)? \nz.mem [61] : 1'b0;
  assign r_data_o[28] = (N3)? \nz.mem [28] : 
                        (N0)? \nz.mem [60] : 1'b0;
  assign r_data_o[27] = (N3)? \nz.mem [27] : 
                        (N0)? \nz.mem [59] : 1'b0;
  assign r_data_o[26] = (N3)? \nz.mem [26] : 
                        (N0)? \nz.mem [58] : 1'b0;
  assign r_data_o[25] = (N3)? \nz.mem [25] : 
                        (N0)? \nz.mem [57] : 1'b0;
  assign r_data_o[24] = (N3)? \nz.mem [24] : 
                        (N0)? \nz.mem [56] : 1'b0;
  assign r_data_o[23] = (N3)? \nz.mem [23] : 
                        (N0)? \nz.mem [55] : 1'b0;
  assign r_data_o[22] = (N3)? \nz.mem [22] : 
                        (N0)? \nz.mem [54] : 1'b0;
  assign r_data_o[21] = (N3)? \nz.mem [21] : 
                        (N0)? \nz.mem [53] : 1'b0;
  assign r_data_o[20] = (N3)? \nz.mem [20] : 
                        (N0)? \nz.mem [52] : 1'b0;
  assign r_data_o[19] = (N3)? \nz.mem [19] : 
                        (N0)? \nz.mem [51] : 1'b0;
  assign r_data_o[18] = (N3)? \nz.mem [18] : 
                        (N0)? \nz.mem [50] : 1'b0;
  assign r_data_o[17] = (N3)? \nz.mem [17] : 
                        (N0)? \nz.mem [49] : 1'b0;
  assign r_data_o[16] = (N3)? \nz.mem [16] : 
                        (N0)? \nz.mem [48] : 1'b0;
  assign r_data_o[15] = (N3)? \nz.mem [15] : 
                        (N0)? \nz.mem [47] : 1'b0;
  assign r_data_o[14] = (N3)? \nz.mem [14] : 
                        (N0)? \nz.mem [46] : 1'b0;
  assign r_data_o[13] = (N3)? \nz.mem [13] : 
                        (N0)? \nz.mem [45] : 1'b0;
  assign r_data_o[12] = (N3)? \nz.mem [12] : 
                        (N0)? \nz.mem [44] : 1'b0;
  assign r_data_o[11] = (N3)? \nz.mem [11] : 
                        (N0)? \nz.mem [43] : 1'b0;
  assign r_data_o[10] = (N3)? \nz.mem [10] : 
                        (N0)? \nz.mem [42] : 1'b0;
  assign r_data_o[9] = (N3)? \nz.mem [9] : 
                       (N0)? \nz.mem [41] : 1'b0;
  assign r_data_o[8] = (N3)? \nz.mem [8] : 
                       (N0)? \nz.mem [40] : 1'b0;
  assign r_data_o[7] = (N3)? \nz.mem [7] : 
                       (N0)? \nz.mem [39] : 1'b0;
  assign r_data_o[6] = (N3)? \nz.mem [6] : 
                       (N0)? \nz.mem [38] : 1'b0;
  assign r_data_o[5] = (N3)? \nz.mem [5] : 
                       (N0)? \nz.mem [37] : 1'b0;
  assign r_data_o[4] = (N3)? \nz.mem [4] : 
                       (N0)? \nz.mem [36] : 1'b0;
  assign r_data_o[3] = (N3)? \nz.mem [3] : 
                       (N0)? \nz.mem [35] : 1'b0;
  assign r_data_o[2] = (N3)? \nz.mem [2] : 
                       (N0)? \nz.mem [34] : 1'b0;
  assign r_data_o[1] = (N3)? \nz.mem [1] : 
                       (N0)? \nz.mem [33] : 1'b0;
  assign r_data_o[0] = (N3)? \nz.mem [0] : 
                       (N0)? \nz.mem [32] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      \nz.mem_63_sv2v_reg  <= w_data_i[31];
      \nz.mem_62_sv2v_reg  <= w_data_i[30];
      \nz.mem_61_sv2v_reg  <= w_data_i[29];
      \nz.mem_60_sv2v_reg  <= w_data_i[28];
      \nz.mem_59_sv2v_reg  <= w_data_i[27];
      \nz.mem_58_sv2v_reg  <= w_data_i[26];
      \nz.mem_57_sv2v_reg  <= w_data_i[25];
      \nz.mem_56_sv2v_reg  <= w_data_i[24];
      \nz.mem_55_sv2v_reg  <= w_data_i[23];
      \nz.mem_54_sv2v_reg  <= w_data_i[22];
      \nz.mem_53_sv2v_reg  <= w_data_i[21];
      \nz.mem_52_sv2v_reg  <= w_data_i[20];
      \nz.mem_51_sv2v_reg  <= w_data_i[19];
      \nz.mem_50_sv2v_reg  <= w_data_i[18];
      \nz.mem_49_sv2v_reg  <= w_data_i[17];
      \nz.mem_48_sv2v_reg  <= w_data_i[16];
      \nz.mem_47_sv2v_reg  <= w_data_i[15];
      \nz.mem_46_sv2v_reg  <= w_data_i[14];
      \nz.mem_45_sv2v_reg  <= w_data_i[13];
      \nz.mem_44_sv2v_reg  <= w_data_i[12];
      \nz.mem_43_sv2v_reg  <= w_data_i[11];
      \nz.mem_42_sv2v_reg  <= w_data_i[10];
      \nz.mem_41_sv2v_reg  <= w_data_i[9];
      \nz.mem_40_sv2v_reg  <= w_data_i[8];
      \nz.mem_39_sv2v_reg  <= w_data_i[7];
      \nz.mem_38_sv2v_reg  <= w_data_i[6];
      \nz.mem_37_sv2v_reg  <= w_data_i[5];
      \nz.mem_36_sv2v_reg  <= w_data_i[4];
      \nz.mem_35_sv2v_reg  <= w_data_i[3];
      \nz.mem_34_sv2v_reg  <= w_data_i[2];
      \nz.mem_33_sv2v_reg  <= w_data_i[1];
      \nz.mem_32_sv2v_reg  <= w_data_i[0];
    end 
    if(N7) begin
      \nz.mem_31_sv2v_reg  <= w_data_i[31];
      \nz.mem_30_sv2v_reg  <= w_data_i[30];
      \nz.mem_29_sv2v_reg  <= w_data_i[29];
      \nz.mem_28_sv2v_reg  <= w_data_i[28];
      \nz.mem_27_sv2v_reg  <= w_data_i[27];
      \nz.mem_26_sv2v_reg  <= w_data_i[26];
      \nz.mem_25_sv2v_reg  <= w_data_i[25];
      \nz.mem_24_sv2v_reg  <= w_data_i[24];
      \nz.mem_23_sv2v_reg  <= w_data_i[23];
      \nz.mem_22_sv2v_reg  <= w_data_i[22];
      \nz.mem_21_sv2v_reg  <= w_data_i[21];
      \nz.mem_20_sv2v_reg  <= w_data_i[20];
      \nz.mem_19_sv2v_reg  <= w_data_i[19];
      \nz.mem_18_sv2v_reg  <= w_data_i[18];
      \nz.mem_17_sv2v_reg  <= w_data_i[17];
      \nz.mem_16_sv2v_reg  <= w_data_i[16];
      \nz.mem_15_sv2v_reg  <= w_data_i[15];
      \nz.mem_14_sv2v_reg  <= w_data_i[14];
      \nz.mem_13_sv2v_reg  <= w_data_i[13];
      \nz.mem_12_sv2v_reg  <= w_data_i[12];
      \nz.mem_11_sv2v_reg  <= w_data_i[11];
      \nz.mem_10_sv2v_reg  <= w_data_i[10];
      \nz.mem_9_sv2v_reg  <= w_data_i[9];
      \nz.mem_8_sv2v_reg  <= w_data_i[8];
      \nz.mem_7_sv2v_reg  <= w_data_i[7];
      \nz.mem_6_sv2v_reg  <= w_data_i[6];
      \nz.mem_5_sv2v_reg  <= w_data_i[5];
      \nz.mem_4_sv2v_reg  <= w_data_i[4];
      \nz.mem_3_sv2v_reg  <= w_data_i[3];
      \nz.mem_2_sv2v_reg  <= w_data_i[2];
      \nz.mem_1_sv2v_reg  <= w_data_i[1];
      \nz.mem_0_sv2v_reg  <= w_data_i[0];
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

  bsg_mem_1r1w_synth_width_p32_els_p2_read_write_same_addr_p0
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



module bsg_parallel_in_serial_out_width_p32_els_p1
(
  clk_i,
  reset_i,
  valid_i,
  data_i,
  ready_and_o,
  valid_o,
  data_o,
  yumi_i
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input valid_i;
  input yumi_i;
  output ready_and_o;
  output valid_o;
  wire [31:0] data_o;
  wire ready_and_o,valid_o;

  bsg_two_fifo_width_p32
  \two_fifo.fifo0 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_and_o),
    .data_i(data_i),
    .v_i(valid_i),
    .v_o(valid_o),
    .data_o(data_o),
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



module bsg_counter_clear_up_max_val_p3_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [1:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire [1:0] count_o;
  wire N0,N1,N4,N5,N6,N8,N9,N10,N11,N12,N13,N14,N2,N3,N7,N30,N15;
  reg count_o_1_sv2v_reg,count_o_0_sv2v_reg;
  assign count_o[1] = count_o_1_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;
  assign N15 = reset_i | clear_i;
  assign { N6, N5 } = count_o + 1'b1;
  assign N8 = (N0)? 1'b1 : 
              (N7)? 1'b1 : 
              (N3)? 1'b0 : 1'b0;
  assign N0 = clear_i;
  assign N10 = (N1)? 1'b1 : 
               (N30)? 1'b0 : 1'b0;
  assign N1 = up_i;
  assign N9 = (N0)? up_i : 
              (N7)? N5 : 1'b0;
  assign N4 = N14;
  assign N11 = ~reset_i;
  assign N12 = ~clear_i;
  assign N13 = N11 & N12;
  assign N14 = up_i & N13;
  assign N2 = up_i | clear_i;
  assign N3 = ~N2;
  assign N7 = up_i & N12;
  assign N30 = ~up_i;

  always @(posedge clk_i) begin
    if(N15) begin
      count_o_1_sv2v_reg <= 1'b0;
    end else if(N10) begin
      count_o_1_sv2v_reg <= N6;
    end 
    if(reset_i) begin
      count_o_0_sv2v_reg <= 1'b0;
    end else if(N8) begin
      count_o_0_sv2v_reg <= N9;
    end 
  end


endmodule



module bsg_cache_to_axi_rx_num_cache_p2_addr_width_p28_data_width_p32_block_size_in_words_p4_tag_fifo_els_p2_axi_id_width_p6_axi_data_width_p32_axi_burst_len_p1_axi_burst_type_p0
(
  clk_i,
  reset_i,
  v_i,
  yumi_o,
  cache_id_i,
  addr_i,
  dma_data_o,
  dma_data_v_o,
  dma_data_ready_i,
  axi_arid_o,
  axi_araddr_addr_o,
  axi_araddr_cache_id_o,
  axi_arlen_o,
  axi_arsize_o,
  axi_arburst_o,
  axi_arcache_o,
  axi_arprot_o,
  axi_arlock_o,
  axi_arvalid_o,
  axi_arready_i,
  axi_rid_i,
  axi_rdata_i,
  axi_rresp_i,
  axi_rlast_i,
  axi_rvalid_i,
  axi_rready_o
);

  input [0:0] cache_id_i;
  input [27:0] addr_i;
  output [63:0] dma_data_o;
  output [1:0] dma_data_v_o;
  input [1:0] dma_data_ready_i;
  output [5:0] axi_arid_o;
  output [27:0] axi_araddr_addr_o;
  output [0:0] axi_araddr_cache_id_o;
  output [7:0] axi_arlen_o;
  output [2:0] axi_arsize_o;
  output [1:0] axi_arburst_o;
  output [3:0] axi_arcache_o;
  output [2:0] axi_arprot_o;
  input [5:0] axi_rid_i;
  input [31:0] axi_rdata_i;
  input [1:0] axi_rresp_i;
  input clk_i;
  input reset_i;
  input v_i;
  input axi_arready_i;
  input axi_rlast_i;
  input axi_rvalid_i;
  output yumi_o;
  output axi_arlock_o;
  output axi_arvalid_o;
  output axi_rready_o;
  wire [63:0] dma_data_o;
  wire [1:0] dma_data_v_o,axi_arburst_o,cache_sel,count_lo;
  wire [5:0] axi_arid_o;
  wire [27:0] axi_araddr_addr_o;
  wire [0:0] axi_araddr_cache_id_o,tag_lo;
  wire [7:0] axi_arlen_o;
  wire [2:0] axi_arsize_o,axi_arprot_o;
  wire [3:0] axi_arcache_o;
  wire yumi_o,axi_arlock_o,axi_arvalid_o,axi_rready_o,N0,N1,dma_data_o_0__31_,
  dma_data_o_0__30_,dma_data_o_0__29_,dma_data_o_0__28_,dma_data_o_0__27_,
  dma_data_o_0__26_,dma_data_o_0__25_,dma_data_o_0__24_,dma_data_o_0__23_,dma_data_o_0__22_,
  dma_data_o_0__21_,dma_data_o_0__20_,dma_data_o_0__19_,dma_data_o_0__18_,
  dma_data_o_0__17_,dma_data_o_0__16_,dma_data_o_0__15_,dma_data_o_0__14_,dma_data_o_0__13_,
  dma_data_o_0__12_,dma_data_o_0__11_,dma_data_o_0__10_,dma_data_o_0__9_,
  dma_data_o_0__8_,dma_data_o_0__7_,dma_data_o_0__6_,dma_data_o_0__5_,dma_data_o_0__4_,
  dma_data_o_0__3_,dma_data_o_0__2_,dma_data_o_0__1_,dma_data_o_0__0_,tag_fifo_v_li,
  tag_fifo_ready_lo,tag_fifo_v_lo,tag_fifo_yumi_li,piso_v_lo,piso_yumi_li,
  counter_clear_li,counter_up_li,N2,N3,N4,N5,N6,N7;
  assign axi_arsize_o[1] = 1'b1;
  assign axi_arlock_o = 1'b0;
  assign axi_arprot_o[0] = 1'b0;
  assign axi_arprot_o[1] = 1'b0;
  assign axi_arprot_o[2] = 1'b0;
  assign axi_arcache_o[0] = 1'b0;
  assign axi_arcache_o[1] = 1'b0;
  assign axi_arcache_o[2] = 1'b0;
  assign axi_arcache_o[3] = 1'b0;
  assign axi_arburst_o[0] = 1'b0;
  assign axi_arburst_o[1] = 1'b0;
  assign axi_arsize_o[0] = 1'b0;
  assign axi_arsize_o[2] = 1'b0;
  assign axi_arlen_o[0] = 1'b0;
  assign axi_arlen_o[1] = 1'b0;
  assign axi_arlen_o[2] = 1'b0;
  assign axi_arlen_o[3] = 1'b0;
  assign axi_arlen_o[4] = 1'b0;
  assign axi_arlen_o[5] = 1'b0;
  assign axi_arlen_o[6] = 1'b0;
  assign axi_arlen_o[7] = 1'b0;
  assign axi_arid_o[0] = 1'b0;
  assign axi_arid_o[1] = 1'b0;
  assign axi_arid_o[2] = 1'b0;
  assign axi_arid_o[3] = 1'b0;
  assign axi_arid_o[4] = 1'b0;
  assign axi_arid_o[5] = 1'b0;
  assign axi_araddr_cache_id_o[0] = cache_id_i[0];
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
  assign axi_araddr_addr_o[27] = addr_i[27];
  assign axi_araddr_addr_o[26] = addr_i[26];
  assign axi_araddr_addr_o[25] = addr_i[25];
  assign axi_araddr_addr_o[24] = addr_i[24];
  assign axi_araddr_addr_o[23] = addr_i[23];
  assign axi_araddr_addr_o[22] = addr_i[22];
  assign axi_araddr_addr_o[21] = addr_i[21];
  assign axi_araddr_addr_o[20] = addr_i[20];
  assign axi_araddr_addr_o[19] = addr_i[19];
  assign axi_araddr_addr_o[18] = addr_i[18];
  assign axi_araddr_addr_o[17] = addr_i[17];
  assign axi_araddr_addr_o[16] = addr_i[16];
  assign axi_araddr_addr_o[15] = addr_i[15];
  assign axi_araddr_addr_o[14] = addr_i[14];
  assign axi_araddr_addr_o[13] = addr_i[13];
  assign axi_araddr_addr_o[12] = addr_i[12];
  assign axi_araddr_addr_o[11] = addr_i[11];
  assign axi_araddr_addr_o[10] = addr_i[10];
  assign axi_araddr_addr_o[9] = addr_i[9];
  assign axi_araddr_addr_o[8] = addr_i[8];
  assign axi_araddr_addr_o[7] = addr_i[7];
  assign axi_araddr_addr_o[6] = addr_i[6];
  assign axi_araddr_addr_o[5] = addr_i[5];
  assign axi_araddr_addr_o[4] = addr_i[4];
  assign axi_araddr_addr_o[3] = addr_i[3];
  assign axi_araddr_addr_o[2] = addr_i[2];
  assign axi_araddr_addr_o[1] = addr_i[1];
  assign axi_araddr_addr_o[0] = addr_i[0];

  bsg_fifo_1r1w_small_width_p1_els_p2
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(tag_fifo_v_li),
    .ready_o(tag_fifo_ready_lo),
    .data_i(cache_id_i[0]),
    .v_o(tag_fifo_v_lo),
    .data_o(tag_lo[0]),
    .yumi_i(tag_fifo_yumi_li)
  );


  bsg_parallel_in_serial_out_width_p32_els_p1
  piso
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .valid_i(axi_rvalid_i),
    .data_i(axi_rdata_i),
    .ready_and_o(axi_rready_o),
    .valid_o(piso_v_lo),
    .data_o({ dma_data_o_0__31_, dma_data_o_0__30_, dma_data_o_0__29_, dma_data_o_0__28_, dma_data_o_0__27_, dma_data_o_0__26_, dma_data_o_0__25_, dma_data_o_0__24_, dma_data_o_0__23_, dma_data_o_0__22_, dma_data_o_0__21_, dma_data_o_0__20_, dma_data_o_0__19_, dma_data_o_0__18_, dma_data_o_0__17_, dma_data_o_0__16_, dma_data_o_0__15_, dma_data_o_0__14_, dma_data_o_0__13_, dma_data_o_0__12_, dma_data_o_0__11_, dma_data_o_0__10_, dma_data_o_0__9_, dma_data_o_0__8_, dma_data_o_0__7_, dma_data_o_0__6_, dma_data_o_0__5_, dma_data_o_0__4_, dma_data_o_0__3_, dma_data_o_0__2_, dma_data_o_0__1_, dma_data_o_0__0_ }),
    .yumi_i(piso_yumi_li)
  );


  bsg_decode_with_v_num_out_p2
  demux
  (
    .i(tag_lo[0]),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel)
  );


  bsg_counter_clear_up_max_val_p3_init_val_p0
  counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(counter_clear_li),
    .up_i(counter_up_li),
    .count_o(count_lo)
  );

  assign N3 = (N2)? dma_data_ready_i[0] : 
              (N0)? dma_data_ready_i[1] : 1'b0;
  assign N0 = tag_lo[0];
  assign N5 = count_lo[0] & count_lo[1];
  assign counter_clear_li = (N1)? piso_yumi_li : 
                            (N4)? 1'b0 : 1'b0;
  assign N1 = N5;
  assign counter_up_li = (N1)? 1'b0 : 
                         (N4)? piso_yumi_li : 1'b0;
  assign tag_fifo_yumi_li = (N1)? piso_yumi_li : 
                            (N4)? 1'b0 : 1'b0;
  assign yumi_o = N6 & tag_fifo_ready_lo;
  assign N6 = v_i & axi_arready_i;
  assign tag_fifo_v_li = v_i & axi_arready_i;
  assign axi_arvalid_o = v_i & tag_fifo_ready_lo;
  assign dma_data_v_o[1] = cache_sel[1] & piso_v_lo;
  assign dma_data_v_o[0] = cache_sel[0] & piso_v_lo;
  assign N2 = ~tag_lo[0];
  assign piso_yumi_li = N7 & tag_fifo_v_lo;
  assign N7 = N3 & piso_v_lo;
  assign N4 = ~N5;

endmodule



module bsg_mem_1r1w_synth_width_p9_els_p2_read_write_same_addr_p0
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
  input [8:0] w_data_i;
  input [0:0] r_addr_i;
  output [8:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [8:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  wire [17:0] \nz.mem ;
  reg \nz.mem_17_sv2v_reg ,\nz.mem_16_sv2v_reg ,\nz.mem_15_sv2v_reg ,
  \nz.mem_14_sv2v_reg ,\nz.mem_13_sv2v_reg ,\nz.mem_12_sv2v_reg ,\nz.mem_11_sv2v_reg ,
  \nz.mem_10_sv2v_reg ,\nz.mem_9_sv2v_reg ,\nz.mem_8_sv2v_reg ,\nz.mem_7_sv2v_reg ,
  \nz.mem_6_sv2v_reg ,\nz.mem_5_sv2v_reg ,\nz.mem_4_sv2v_reg ,\nz.mem_3_sv2v_reg ,
  \nz.mem_2_sv2v_reg ,\nz.mem_1_sv2v_reg ,\nz.mem_0_sv2v_reg ;
  assign \nz.mem [17] = \nz.mem_17_sv2v_reg ;
  assign \nz.mem [16] = \nz.mem_16_sv2v_reg ;
  assign \nz.mem [15] = \nz.mem_15_sv2v_reg ;
  assign \nz.mem [14] = \nz.mem_14_sv2v_reg ;
  assign \nz.mem [13] = \nz.mem_13_sv2v_reg ;
  assign \nz.mem [12] = \nz.mem_12_sv2v_reg ;
  assign \nz.mem [11] = \nz.mem_11_sv2v_reg ;
  assign \nz.mem [10] = \nz.mem_10_sv2v_reg ;
  assign \nz.mem [9] = \nz.mem_9_sv2v_reg ;
  assign \nz.mem [8] = \nz.mem_8_sv2v_reg ;
  assign \nz.mem [7] = \nz.mem_7_sv2v_reg ;
  assign \nz.mem [6] = \nz.mem_6_sv2v_reg ;
  assign \nz.mem [5] = \nz.mem_5_sv2v_reg ;
  assign \nz.mem [4] = \nz.mem_4_sv2v_reg ;
  assign \nz.mem [3] = \nz.mem_3_sv2v_reg ;
  assign \nz.mem [2] = \nz.mem_2_sv2v_reg ;
  assign \nz.mem [1] = \nz.mem_1_sv2v_reg ;
  assign \nz.mem [0] = \nz.mem_0_sv2v_reg ;
  assign r_data_o[8] = (N3)? \nz.mem [8] : 
                       (N0)? \nz.mem [17] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[7] = (N3)? \nz.mem [7] : 
                       (N0)? \nz.mem [16] : 1'b0;
  assign r_data_o[6] = (N3)? \nz.mem [6] : 
                       (N0)? \nz.mem [15] : 1'b0;
  assign r_data_o[5] = (N3)? \nz.mem [5] : 
                       (N0)? \nz.mem [14] : 1'b0;
  assign r_data_o[4] = (N3)? \nz.mem [4] : 
                       (N0)? \nz.mem [13] : 1'b0;
  assign r_data_o[3] = (N3)? \nz.mem [3] : 
                       (N0)? \nz.mem [12] : 1'b0;
  assign r_data_o[2] = (N3)? \nz.mem [2] : 
                       (N0)? \nz.mem [11] : 1'b0;
  assign r_data_o[1] = (N3)? \nz.mem [1] : 
                       (N0)? \nz.mem [10] : 1'b0;
  assign r_data_o[0] = (N3)? \nz.mem [0] : 
                       (N0)? \nz.mem [9] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      \nz.mem_17_sv2v_reg  <= w_data_i[8];
      \nz.mem_16_sv2v_reg  <= w_data_i[7];
      \nz.mem_15_sv2v_reg  <= w_data_i[6];
      \nz.mem_14_sv2v_reg  <= w_data_i[5];
      \nz.mem_13_sv2v_reg  <= w_data_i[4];
      \nz.mem_12_sv2v_reg  <= w_data_i[3];
      \nz.mem_11_sv2v_reg  <= w_data_i[2];
      \nz.mem_10_sv2v_reg  <= w_data_i[1];
      \nz.mem_9_sv2v_reg  <= w_data_i[0];
    end 
    if(N7) begin
      \nz.mem_8_sv2v_reg  <= w_data_i[8];
      \nz.mem_7_sv2v_reg  <= w_data_i[7];
      \nz.mem_6_sv2v_reg  <= w_data_i[6];
      \nz.mem_5_sv2v_reg  <= w_data_i[5];
      \nz.mem_4_sv2v_reg  <= w_data_i[4];
      \nz.mem_3_sv2v_reg  <= w_data_i[3];
      \nz.mem_2_sv2v_reg  <= w_data_i[2];
      \nz.mem_1_sv2v_reg  <= w_data_i[1];
      \nz.mem_0_sv2v_reg  <= w_data_i[0];
    end 
  end


endmodule



module bsg_mem_1r1w_width_p9_els_p2_read_write_same_addr_p0
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
  input [8:0] w_data_i;
  input [0:0] r_addr_i;
  output [8:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [8:0] r_data_o;

  bsg_mem_1r1w_synth_width_p9_els_p2_read_write_same_addr_p0
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



module bsg_two_fifo_width_p9_ready_THEN_valid_p0
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

  input [8:0] data_i;
  output [8:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [8:0] data_o;
  wire ready_o,v_o,enq_i,tail_r,_0_net_,head_r,empty_r,full_r,N0,N1,N2,N3,N4,N5,N6,N7,
  N8,N9,N10,N11,N12,N13,N14;
  reg full_r_sv2v_reg,tail_r_sv2v_reg,head_r_sv2v_reg,empty_r_sv2v_reg;
  assign full_r = full_r_sv2v_reg;
  assign tail_r = tail_r_sv2v_reg;
  assign head_r = head_r_sv2v_reg;
  assign empty_r = empty_r_sv2v_reg;

  bsg_mem_1r1w_width_p9_els_p2_read_write_same_addr_p0
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



module bsg_fifo_1r1w_small_width_p9_els_p2
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

  input [8:0] data_i;
  output [8:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [8:0] data_o;
  wire ready_o,v_o;

  bsg_two_fifo_width_p9_ready_THEN_valid_p0
  \unhardened.tf.twof 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_o),
    .data_i(data_i),
    .v_i(v_i),
    .v_o(v_o),
    .data_o(data_o),
    .yumi_i(yumi_i)
  );


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
  wire N0,N1,N4,N5,N6,N2,N3,N7;
  reg count_o_0_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;
  assign N1 = count_o[0] ^ 1'b1;
  assign N4 = (N0)? 1'b1 : 
              (N7)? 1'b1 : 
              (N3)? 1'b0 : 1'b0;
  assign N0 = clear_i;
  assign N5 = (N0)? up_i : 
              (N7)? N1 : 1'b0;
  assign N6 = ~clear_i;
  assign N2 = up_i | clear_i;
  assign N3 = ~N2;
  assign N7 = up_i & N6;

  always @(posedge clk_i) begin
    if(reset_i) begin
      count_o_0_sv2v_reg <= 1'b0;
    end else if(N4) begin
      count_o_0_sv2v_reg <= N5;
    end 
  end


endmodule



module bsg_cache_to_axi_tx_num_cache_p2_addr_width_p28_data_width_p32_mask_width_p8_block_size_in_words_p4_tag_fifo_els_p2_axi_id_width_p6_axi_data_width_p32_axi_burst_len_p1_axi_burst_type_p0
(
  clk_i,
  reset_i,
  v_i,
  yumi_o,
  cache_id_i,
  addr_i,
  mask_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  axi_awid_o,
  axi_awaddr_addr_o,
  axi_awaddr_cache_id_o,
  axi_awlen_o,
  axi_awsize_o,
  axi_awburst_o,
  axi_awcache_o,
  axi_awprot_o,
  axi_awlock_o,
  axi_awvalid_o,
  axi_awready_i,
  axi_wdata_o,
  axi_wstrb_o,
  axi_wlast_o,
  axi_wvalid_o,
  axi_wready_i,
  axi_bid_i,
  axi_bresp_i,
  axi_bvalid_i,
  axi_bready_o
);

  input [0:0] cache_id_i;
  input [27:0] addr_i;
  input [7:0] mask_i;
  input [63:0] dma_data_i;
  input [1:0] dma_data_v_i;
  output [1:0] dma_data_yumi_o;
  output [5:0] axi_awid_o;
  output [27:0] axi_awaddr_addr_o;
  output [0:0] axi_awaddr_cache_id_o;
  output [7:0] axi_awlen_o;
  output [2:0] axi_awsize_o;
  output [1:0] axi_awburst_o;
  output [3:0] axi_awcache_o;
  output [2:0] axi_awprot_o;
  output [31:0] axi_wdata_o;
  output [3:0] axi_wstrb_o;
  input [5:0] axi_bid_i;
  input [1:0] axi_bresp_i;
  input clk_i;
  input reset_i;
  input v_i;
  input axi_awready_i;
  input axi_wready_i;
  input axi_bvalid_i;
  output yumi_o;
  output axi_awlock_o;
  output axi_awvalid_o;
  output axi_wlast_o;
  output axi_wvalid_o;
  output axi_bready_o;
  wire [1:0] dma_data_yumi_o,axi_awburst_o,cache_sel,word_count_lo;
  wire [5:0] axi_awid_o;
  wire [27:0] axi_awaddr_addr_o;
  wire [0:0] axi_awaddr_cache_id_o,tag_lo,burst_count_lo;
  wire [7:0] axi_awlen_o,mask_lo;
  wire [2:0] axi_awsize_o,axi_awprot_o;
  wire [3:0] axi_awcache_o,axi_wstrb_o,sipo_strb_li;
  wire [31:0] axi_wdata_o,sipo_data_li;
  wire yumi_o,axi_awlock_o,axi_awvalid_o,axi_wlast_o,axi_wvalid_o,axi_bready_o,N0,N1,
  N2,N3,tag_fifo_v_li,tag_fifo_ready_lo,tag_fifo_v_lo,tag_fifo_yumi_li,N4,
  sipo_ready_lo,sipo_v_li,sipo_yumi_li,N5,N6,word_clear_li,word_up_li,N7,N8,N9,N10,pop_word,
  N11,burst_clear_li,burst_up_li,N12,N13,N14,N15,N16,N17,N18,N19;
  wire [15:0] byte_mask_lo;
  assign axi_bready_o = 1'b1;
  assign axi_awsize_o[1] = 1'b1;
  assign axi_awlock_o = 1'b0;
  assign axi_awprot_o[0] = 1'b0;
  assign axi_awprot_o[1] = 1'b0;
  assign axi_awprot_o[2] = 1'b0;
  assign axi_awcache_o[0] = 1'b0;
  assign axi_awcache_o[1] = 1'b0;
  assign axi_awcache_o[2] = 1'b0;
  assign axi_awcache_o[3] = 1'b0;
  assign axi_awburst_o[0] = 1'b0;
  assign axi_awburst_o[1] = 1'b0;
  assign axi_awsize_o[0] = 1'b0;
  assign axi_awsize_o[2] = 1'b0;
  assign axi_awlen_o[0] = 1'b0;
  assign axi_awlen_o[1] = 1'b0;
  assign axi_awlen_o[2] = 1'b0;
  assign axi_awlen_o[3] = 1'b0;
  assign axi_awlen_o[4] = 1'b0;
  assign axi_awlen_o[5] = 1'b0;
  assign axi_awlen_o[6] = 1'b0;
  assign axi_awlen_o[7] = 1'b0;
  assign axi_awid_o[0] = 1'b0;
  assign axi_awid_o[1] = 1'b0;
  assign axi_awid_o[2] = 1'b0;
  assign axi_awid_o[3] = 1'b0;
  assign axi_awid_o[4] = 1'b0;
  assign axi_awid_o[5] = 1'b0;
  assign axi_awaddr_addr_o[27] = addr_i[27];
  assign axi_awaddr_addr_o[26] = addr_i[26];
  assign axi_awaddr_addr_o[25] = addr_i[25];
  assign axi_awaddr_addr_o[24] = addr_i[24];
  assign axi_awaddr_addr_o[23] = addr_i[23];
  assign axi_awaddr_addr_o[22] = addr_i[22];
  assign axi_awaddr_addr_o[21] = addr_i[21];
  assign axi_awaddr_addr_o[20] = addr_i[20];
  assign axi_awaddr_addr_o[19] = addr_i[19];
  assign axi_awaddr_addr_o[18] = addr_i[18];
  assign axi_awaddr_addr_o[17] = addr_i[17];
  assign axi_awaddr_addr_o[16] = addr_i[16];
  assign axi_awaddr_addr_o[15] = addr_i[15];
  assign axi_awaddr_addr_o[14] = addr_i[14];
  assign axi_awaddr_addr_o[13] = addr_i[13];
  assign axi_awaddr_addr_o[12] = addr_i[12];
  assign axi_awaddr_addr_o[11] = addr_i[11];
  assign axi_awaddr_addr_o[10] = addr_i[10];
  assign axi_awaddr_addr_o[9] = addr_i[9];
  assign axi_awaddr_addr_o[8] = addr_i[8];
  assign axi_awaddr_addr_o[7] = addr_i[7];
  assign axi_awaddr_addr_o[6] = addr_i[6];
  assign axi_awaddr_addr_o[5] = addr_i[5];
  assign axi_awaddr_addr_o[4] = addr_i[4];
  assign axi_awaddr_addr_o[3] = addr_i[3];
  assign axi_awaddr_addr_o[2] = addr_i[2];
  assign axi_awaddr_addr_o[1] = addr_i[1];
  assign axi_awaddr_addr_o[0] = addr_i[0];
  assign axi_awaddr_cache_id_o[0] = cache_id_i[0];

  bsg_fifo_1r1w_small_width_p9_els_p2
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(tag_fifo_v_li),
    .ready_o(tag_fifo_ready_lo),
    .data_i({ mask_i, axi_awaddr_cache_id_o[0:0] }),
    .v_o(tag_fifo_v_lo),
    .data_o({ mask_lo, tag_lo[0:0] }),
    .yumi_i(tag_fifo_yumi_li)
  );


  bsg_decode_with_v_num_out_p2
  demux
  (
    .i(tag_lo[0]),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel)
  );


  bsg_expand_bitmask
  expand
  (
    .i(mask_lo),
    .o(byte_mask_lo)
  );

  assign sipo_data_li[31] = (N4)? dma_data_i[31] : 
                            (N0)? dma_data_i[63] : 1'b0;
  assign N0 = tag_lo[0];
  assign sipo_data_li[30] = (N4)? dma_data_i[30] : 
                            (N0)? dma_data_i[62] : 1'b0;
  assign sipo_data_li[29] = (N4)? dma_data_i[29] : 
                            (N0)? dma_data_i[61] : 1'b0;
  assign sipo_data_li[28] = (N4)? dma_data_i[28] : 
                            (N0)? dma_data_i[60] : 1'b0;
  assign sipo_data_li[27] = (N4)? dma_data_i[27] : 
                            (N0)? dma_data_i[59] : 1'b0;
  assign sipo_data_li[26] = (N4)? dma_data_i[26] : 
                            (N0)? dma_data_i[58] : 1'b0;
  assign sipo_data_li[25] = (N4)? dma_data_i[25] : 
                            (N0)? dma_data_i[57] : 1'b0;
  assign sipo_data_li[24] = (N4)? dma_data_i[24] : 
                            (N0)? dma_data_i[56] : 1'b0;
  assign sipo_data_li[23] = (N4)? dma_data_i[23] : 
                            (N0)? dma_data_i[55] : 1'b0;
  assign sipo_data_li[22] = (N4)? dma_data_i[22] : 
                            (N0)? dma_data_i[54] : 1'b0;
  assign sipo_data_li[21] = (N4)? dma_data_i[21] : 
                            (N0)? dma_data_i[53] : 1'b0;
  assign sipo_data_li[20] = (N4)? dma_data_i[20] : 
                            (N0)? dma_data_i[52] : 1'b0;
  assign sipo_data_li[19] = (N4)? dma_data_i[19] : 
                            (N0)? dma_data_i[51] : 1'b0;
  assign sipo_data_li[18] = (N4)? dma_data_i[18] : 
                            (N0)? dma_data_i[50] : 1'b0;
  assign sipo_data_li[17] = (N4)? dma_data_i[17] : 
                            (N0)? dma_data_i[49] : 1'b0;
  assign sipo_data_li[16] = (N4)? dma_data_i[16] : 
                            (N0)? dma_data_i[48] : 1'b0;
  assign sipo_data_li[15] = (N4)? dma_data_i[15] : 
                            (N0)? dma_data_i[47] : 1'b0;
  assign sipo_data_li[14] = (N4)? dma_data_i[14] : 
                            (N0)? dma_data_i[46] : 1'b0;
  assign sipo_data_li[13] = (N4)? dma_data_i[13] : 
                            (N0)? dma_data_i[45] : 1'b0;
  assign sipo_data_li[12] = (N4)? dma_data_i[12] : 
                            (N0)? dma_data_i[44] : 1'b0;
  assign sipo_data_li[11] = (N4)? dma_data_i[11] : 
                            (N0)? dma_data_i[43] : 1'b0;
  assign sipo_data_li[10] = (N4)? dma_data_i[10] : 
                            (N0)? dma_data_i[42] : 1'b0;
  assign sipo_data_li[9] = (N4)? dma_data_i[9] : 
                           (N0)? dma_data_i[41] : 1'b0;
  assign sipo_data_li[8] = (N4)? dma_data_i[8] : 
                           (N0)? dma_data_i[40] : 1'b0;
  assign sipo_data_li[7] = (N4)? dma_data_i[7] : 
                           (N0)? dma_data_i[39] : 1'b0;
  assign sipo_data_li[6] = (N4)? dma_data_i[6] : 
                           (N0)? dma_data_i[38] : 1'b0;
  assign sipo_data_li[5] = (N4)? dma_data_i[5] : 
                           (N0)? dma_data_i[37] : 1'b0;
  assign sipo_data_li[4] = (N4)? dma_data_i[4] : 
                           (N0)? dma_data_i[36] : 1'b0;
  assign sipo_data_li[3] = (N4)? dma_data_i[3] : 
                           (N0)? dma_data_i[35] : 1'b0;
  assign sipo_data_li[2] = (N4)? dma_data_i[2] : 
                           (N0)? dma_data_i[34] : 1'b0;
  assign sipo_data_li[1] = (N4)? dma_data_i[1] : 
                           (N0)? dma_data_i[33] : 1'b0;
  assign sipo_data_li[0] = (N4)? dma_data_i[0] : 
                           (N0)? dma_data_i[32] : 1'b0;

  bsg_serial_in_parallel_out_full
  sipo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(sipo_v_li),
    .data_i(sipo_data_li),
    .ready_o(sipo_ready_lo),
    .v_o(axi_wvalid_o),
    .data_o(axi_wdata_o),
    .yumi_i(sipo_yumi_li)
  );


  bsg_serial_in_parallel_out_full
  strb_sipo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(sipo_v_li),
    .data_i(sipo_strb_li),
    .data_o(axi_wstrb_o),
    .yumi_i(sipo_yumi_li)
  );

  assign N6 = (N5)? dma_data_v_i[0] : 
              (N0)? dma_data_v_i[1] : 1'b0;

  bsg_counter_clear_up_max_val_p3_init_val_p0
  word_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(word_clear_li),
    .up_i(word_up_li),
    .count_o(word_count_lo)
  );


  bsg_mux
  wstrb_mux
  (
    .data_i(byte_mask_lo),
    .sel_i(word_count_lo),
    .data_o(sipo_strb_li)
  );

  assign N8 = (N7)? dma_data_v_i[0] : 
              (N0)? dma_data_v_i[1] : 1'b0;
  assign N10 = (N9)? dma_data_yumi_o[0] : 
               (N0)? dma_data_yumi_o[1] : 1'b0;

  bsg_counter_clear_up_max_val_p0_init_val_p0
  burst_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(burst_clear_li),
    .up_i(burst_up_li),
    .count_o(burst_count_lo[0])
  );

  assign N14 = ~burst_count_lo[0];
  assign N15 = word_count_lo[0] & word_count_lo[1];
  assign word_clear_li = (N1)? pop_word : 
                         (N11)? 1'b0 : 1'b0;
  assign N1 = N15;
  assign word_up_li = (N1)? 1'b0 : 
                      (N11)? pop_word : 1'b0;
  assign tag_fifo_yumi_li = (N1)? pop_word : 
                            (N11)? 1'b0 : 1'b0;
  assign burst_clear_li = (N2)? N12 : 
                          (N3)? 1'b0 : 1'b0;
  assign N2 = N14;
  assign N3 = burst_count_lo[0];
  assign burst_up_li = (N2)? 1'b0 : 
                       (N3)? N13 : 1'b0;
  assign axi_wlast_o = (N2)? axi_wvalid_o : 
                       (N3)? 1'b0 : 1'b0;
  assign yumi_o = N16 & tag_fifo_ready_lo;
  assign N16 = v_i & axi_awready_i;
  assign tag_fifo_v_li = v_i & axi_awready_i;
  assign axi_awvalid_o = v_i & tag_fifo_ready_lo;
  assign N4 = ~tag_lo[0];
  assign dma_data_yumi_o[1] = N17 & sipo_ready_lo;
  assign N17 = cache_sel[1] & dma_data_v_i[1];
  assign dma_data_yumi_o[0] = N18 & sipo_ready_lo;
  assign N18 = cache_sel[0] & dma_data_v_i[0];
  assign N5 = ~tag_lo[0];
  assign sipo_v_li = tag_fifo_v_lo & N6;
  assign sipo_yumi_li = axi_wvalid_o & axi_wready_i;
  assign N7 = ~tag_lo[0];
  assign N9 = ~tag_lo[0];
  assign pop_word = N19 & tag_fifo_v_lo;
  assign N19 = N8 & N10;
  assign N11 = ~N15;
  assign N12 = axi_wvalid_o & axi_wready_i;
  assign N13 = axi_wvalid_o & axi_wready_i;

endmodule



module bsg_cache_to_axi
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
  axi_awid_o,
  axi_awaddr_addr_o,
  axi_awaddr_cache_id_o,
  axi_awlen_o,
  axi_awsize_o,
  axi_awburst_o,
  axi_awcache_o,
  axi_awprot_o,
  axi_awlock_o,
  axi_awvalid_o,
  axi_awready_i,
  axi_wdata_o,
  axi_wstrb_o,
  axi_wlast_o,
  axi_wvalid_o,
  axi_wready_i,
  axi_bid_i,
  axi_bresp_i,
  axi_bvalid_i,
  axi_bready_o,
  axi_arid_o,
  axi_araddr_addr_o,
  axi_araddr_cache_id_o,
  axi_arlen_o,
  axi_arsize_o,
  axi_arburst_o,
  axi_arcache_o,
  axi_arprot_o,
  axi_arlock_o,
  axi_arvalid_o,
  axi_arready_i,
  axi_rid_i,
  axi_rdata_i,
  axi_rresp_i,
  axi_rlast_i,
  axi_rvalid_i,
  axi_rready_o
);

  input [73:0] dma_pkt_i;
  input [1:0] dma_pkt_v_i;
  output [1:0] dma_pkt_yumi_o;
  output [63:0] dma_data_o;
  output [1:0] dma_data_v_o;
  input [1:0] dma_data_ready_i;
  input [63:0] dma_data_i;
  input [1:0] dma_data_v_i;
  output [1:0] dma_data_yumi_o;
  output [5:0] axi_awid_o;
  output [27:0] axi_awaddr_addr_o;
  output [0:0] axi_awaddr_cache_id_o;
  output [7:0] axi_awlen_o;
  output [2:0] axi_awsize_o;
  output [1:0] axi_awburst_o;
  output [3:0] axi_awcache_o;
  output [2:0] axi_awprot_o;
  output [31:0] axi_wdata_o;
  output [3:0] axi_wstrb_o;
  input [5:0] axi_bid_i;
  input [1:0] axi_bresp_i;
  output [5:0] axi_arid_o;
  output [27:0] axi_araddr_addr_o;
  output [0:0] axi_araddr_cache_id_o;
  output [7:0] axi_arlen_o;
  output [2:0] axi_arsize_o;
  output [1:0] axi_arburst_o;
  output [3:0] axi_arcache_o;
  output [2:0] axi_arprot_o;
  input [5:0] axi_rid_i;
  input [31:0] axi_rdata_i;
  input [1:0] axi_rresp_i;
  input clk_i;
  input reset_i;
  input axi_awready_i;
  input axi_wready_i;
  input axi_bvalid_i;
  input axi_arready_i;
  input axi_rlast_i;
  input axi_rvalid_i;
  output axi_awlock_o;
  output axi_awvalid_o;
  output axi_wlast_o;
  output axi_wvalid_o;
  output axi_bready_o;
  output axi_arlock_o;
  output axi_arvalid_o;
  output axi_rready_o;
  wire [1:0] dma_pkt_yumi_o,dma_data_v_o,dma_data_yumi_o,axi_awburst_o,axi_arburst_o,
  read_rr_v_li,read_rr_yumi_lo,write_rr_v_li,write_rr_yumi_lo;
  wire [63:0] dma_data_o;
  wire [5:0] axi_awid_o,axi_arid_o;
  wire [27:0] axi_awaddr_addr_o,axi_araddr_addr_o;
  wire [0:0] axi_awaddr_cache_id_o,axi_araddr_cache_id_o,read_rr_tag_lo,write_rr_tag_lo;
  wire [7:0] axi_awlen_o,axi_arlen_o;
  wire [2:0] axi_awsize_o,axi_awprot_o,axi_arsize_o,axi_arprot_o;
  wire [3:0] axi_awcache_o,axi_wstrb_o,axi_arcache_o;
  wire [31:0] axi_wdata_o;
  wire axi_awlock_o,axi_awvalid_o,axi_wlast_o,axi_wvalid_o,axi_bready_o,axi_arlock_o,
  axi_arvalid_o,axi_rready_o,N0,N1,read_rr_v_lo,read_rr_yumi_li,write_rr_v_lo,
  write_rr_yumi_li,N2,N3,N4,N5,N6,N7;
  wire [36:0] read_rr_dma_pkt,write_rr_dma_pkt;

  bsg_round_robin_n_to_1_width_p37_num_in_p2_strict_p0
  read_rr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(dma_pkt_i),
    .v_i(read_rr_v_li),
    .yumi_o(read_rr_yumi_lo),
    .v_o(read_rr_v_lo),
    .data_o(read_rr_dma_pkt),
    .tag_o(read_rr_tag_lo[0]),
    .yumi_i(read_rr_yumi_li)
  );


  bsg_round_robin_n_to_1_width_p37_num_in_p2_strict_p0
  write_rr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(dma_pkt_i),
    .v_i(write_rr_v_li),
    .yumi_o(write_rr_yumi_lo),
    .v_o(write_rr_v_lo),
    .data_o(write_rr_dma_pkt),
    .tag_o(write_rr_tag_lo[0]),
    .yumi_i(write_rr_yumi_li)
  );


  bsg_cache_to_axi_rx_num_cache_p2_addr_width_p28_data_width_p32_block_size_in_words_p4_tag_fifo_els_p2_axi_id_width_p6_axi_data_width_p32_axi_burst_len_p1_axi_burst_type_p0
  axi_rx
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(read_rr_v_lo),
    .yumi_o(read_rr_yumi_li),
    .cache_id_i(read_rr_tag_lo[0]),
    .addr_i(read_rr_dma_pkt[35:8]),
    .dma_data_o(dma_data_o),
    .dma_data_v_o(dma_data_v_o),
    .dma_data_ready_i(dma_data_ready_i),
    .axi_arid_o(axi_arid_o),
    .axi_araddr_addr_o(axi_araddr_addr_o),
    .axi_araddr_cache_id_o(axi_araddr_cache_id_o[0]),
    .axi_arlen_o(axi_arlen_o),
    .axi_arsize_o(axi_arsize_o),
    .axi_arburst_o(axi_arburst_o),
    .axi_arcache_o(axi_arcache_o),
    .axi_arprot_o(axi_arprot_o),
    .axi_arlock_o(axi_arlock_o),
    .axi_arvalid_o(axi_arvalid_o),
    .axi_arready_i(axi_arready_i),
    .axi_rid_i(axi_rid_i),
    .axi_rdata_i(axi_rdata_i),
    .axi_rresp_i(axi_rresp_i),
    .axi_rlast_i(axi_rlast_i),
    .axi_rvalid_i(axi_rvalid_i),
    .axi_rready_o(axi_rready_o)
  );


  bsg_cache_to_axi_tx_num_cache_p2_addr_width_p28_data_width_p32_mask_width_p8_block_size_in_words_p4_tag_fifo_els_p2_axi_id_width_p6_axi_data_width_p32_axi_burst_len_p1_axi_burst_type_p0
  axi_tx
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(write_rr_v_lo),
    .yumi_o(write_rr_yumi_li),
    .cache_id_i(write_rr_tag_lo[0]),
    .addr_i(write_rr_dma_pkt[35:8]),
    .mask_i(write_rr_dma_pkt[7:0]),
    .dma_data_i(dma_data_i),
    .dma_data_v_i(dma_data_v_i),
    .dma_data_yumi_o(dma_data_yumi_o),
    .axi_awid_o(axi_awid_o),
    .axi_awaddr_addr_o(axi_awaddr_addr_o),
    .axi_awaddr_cache_id_o(axi_awaddr_cache_id_o[0]),
    .axi_awlen_o(axi_awlen_o),
    .axi_awsize_o(axi_awsize_o),
    .axi_awburst_o(axi_awburst_o),
    .axi_awcache_o(axi_awcache_o),
    .axi_awprot_o(axi_awprot_o),
    .axi_awlock_o(axi_awlock_o),
    .axi_awvalid_o(axi_awvalid_o),
    .axi_awready_i(axi_awready_i),
    .axi_wdata_o(axi_wdata_o),
    .axi_wstrb_o(axi_wstrb_o),
    .axi_wlast_o(axi_wlast_o),
    .axi_wvalid_o(axi_wvalid_o),
    .axi_wready_i(axi_wready_i),
    .axi_bid_i(axi_bid_i),
    .axi_bresp_i(axi_bresp_i),
    .axi_bvalid_i(axi_bvalid_i),
    .axi_bready_o(axi_bready_o)
  );

  assign dma_pkt_yumi_o[0] = (N0)? write_rr_yumi_lo[0] : 
                             (N3)? read_rr_yumi_lo[0] : 1'b0;
  assign N0 = N2;
  assign dma_pkt_yumi_o[1] = (N1)? write_rr_yumi_lo[1] : 
                             (N5)? read_rr_yumi_lo[1] : 1'b0;
  assign N1 = N4;
  assign read_rr_v_li[0] = dma_pkt_v_i[0] & N6;
  assign N6 = ~dma_pkt_i[36];
  assign read_rr_v_li[1] = dma_pkt_v_i[1] & N7;
  assign N7 = ~dma_pkt_i[73];
  assign write_rr_v_li[0] = dma_pkt_v_i[0] & dma_pkt_i[36];
  assign write_rr_v_li[1] = dma_pkt_v_i[1] & dma_pkt_i[73];
  assign N2 = dma_pkt_i[36];
  assign N3 = ~N2;
  assign N4 = dma_pkt_i[73];
  assign N5 = ~N4;

endmodule

