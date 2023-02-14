

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
  axi_awaddr_o,
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
  axi_araddr_o,
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

  input [57:0] dma_pkt_i;
  input [1:0] dma_pkt_v_i;
  output [1:0] dma_pkt_yumi_o;
  output [63:0] dma_data_o;
  output [1:0] dma_data_v_o;
  input [1:0] dma_data_ready_i;
  input [63:0] dma_data_i;
  input [1:0] dma_data_v_i;
  output [1:0] dma_data_yumi_o;
  output [5:0] axi_awid_o;
  output [4:0] axi_awaddr_o;
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
  output [4:0] axi_araddr_o;
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
    .axi_awaddr_o(axi_awaddr_o),
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
    .axi_araddr_o(axi_araddr_o),
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
  wire [0:0] tag_o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22;
  reg [0:0] last_r;
  assign N13 = N0 & N1;
  assign N0 = ~reqs_i[1];
  assign N1 = ~reqs_i[0];
  assign N14 = reqs_i[1] & N2;
  assign N2 = ~last_r[0];
  assign N15 = N3 & reqs_i[0] & N4;
  assign N3 = ~reqs_i[1];
  assign N4 = ~last_r[0];
  assign N16 = reqs_i[0] & last_r[0];
  assign N17 = reqs_i[1] & N5 & last_r[0];
  assign N5 = ~reqs_i[0];
  assign sel_one_hot_o = (N6)? { 1'b0, 1'b0 } : 
                         (N7)? { 1'b1, 1'b0 } : 
                         (N8)? { 1'b0, 1'b1 } : 
                         (N9)? { 1'b0, 1'b1 } : 
                         (N10)? { 1'b1, 1'b0 } : 1'b0;
  assign N6 = N13;
  assign N7 = N14;
  assign N8 = N15;
  assign N9 = N16;
  assign N10 = N17;
  assign tag_o[0] = (N6)? 1'b0 : 
                    (N7)? 1'b1 : 
                    (N8)? 1'b0 : 
                    (N9)? 1'b0 : 
                    (N10)? 1'b1 : 1'b0;
  assign N20 = (N11)? 1'b0 : 
               (N12)? tag_o[0] : 1'b0;
  assign N11 = reset_i;
  assign N12 = N19;
  assign grants_o[1] = sel_one_hot_o[1] & grants_en_i;
  assign grants_o[0] = sel_one_hot_o[0] & grants_en_i;
  assign v_o = reqs_i[1] | reqs_i[0];
  assign N18 = ~yumi_i;
  assign N19 = ~reset_i;
  assign N21 = N18 & N19;
  assign N22 = ~N21;

  always @(posedge clk_i) begin
    if(N22) begin
      { last_r[0:0] } <= { N20 };
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
  genblk1_0__mux_one_hot
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
  wire [1:0] yumi_o,greedy_grants_lo;
  wire [28:0] data_o;
  wire [0:0] tag_o;
  wire v_o,n_1_net_,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2;

  bsg_round_robin_arb_inputs_p2
  greedy_rr_arb_ctrl
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .grants_en_i(1'b1),
    .reqs_i(v_i),
    .grants_o(greedy_grants_lo),
    .sel_one_hot_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2 }),
    .v_o(v_o),
    .tag_o(tag_o[0]),
    .yumi_i(n_1_net_)
  );


  bsg_crossbar_o_by_i_i_els_p2_o_els_p1_width_p29
  greedy_xbar
  (
    .i(data_i),
    .sel_oi_one_hot_i(greedy_grants_lo),
    .o(data_o)
  );

  assign n_1_net_ = yumi_i & v_o;
  assign yumi_o[1] = greedy_grants_lo[1] & yumi_i;
  assign yumi_o[0] = greedy_grants_lo[0] & yumi_i;

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
  wire full_o,empty_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,equal_ptrs,
  SYNOPSYS_UNCONNECTED_1;
  reg deq_r,enq_r;

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
  reg [1:0] mem;
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
      { mem[1:1] } <= { w_data_i[0:0] };
    end 
    if(N7) begin
      { mem[0:0] } <= { w_data_i[0:0] };
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
  wire ready_o,v_o,enque,full,empty,SYNOPSYS_UNCONNECTED_1;

  bsg_fifo_tracker_els_p2
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



module bsg_parallel_in_serial_out_width_p32_els_p1
(
  clk_i,
  reset_i,
  valid_i,
  data_i,
  ready_o,
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
  output ready_o;
  output valid_o;
  wire [31:0] data_o;
  wire ready_o,valid_o;

  bsg_two_fifo_width_p32
  fifo_two_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_o),
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
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11;
  reg [1:0] count_o;
  assign { N7, N6 } = { N11, N10 } + up_i;
  assign { N9, N8 } = (N0)? { 1'b0, 1'b0 } : 
                      (N1)? { N7, N6 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign { N11, N10 } = count_o * N4;
  assign N2 = ~reset_i;
  assign N3 = N2;
  assign N4 = ~clear_i;
  assign N5 = N3 & N4;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_o[1:0] } <= { N9, N8 };
    end 
  end


endmodule



module bsg_cache_to_axi_rx_num_cache_p2_data_width_p32_block_size_in_words_p4_axi_id_width_p6_axi_addr_width_p5_axi_data_width_p32_axi_burst_len_p1
(
  clk_i,
  reset_i,
  v_i,
  yumi_o,
  tag_i,
  axi_addr_i,
  dma_data_o,
  dma_data_v_o,
  dma_data_ready_i,
  axi_arid_o,
  axi_araddr_o,
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

  input [0:0] tag_i;
  input [4:0] axi_addr_i;
  output [63:0] dma_data_o;
  output [1:0] dma_data_v_o;
  input [1:0] dma_data_ready_i;
  output [5:0] axi_arid_o;
  output [4:0] axi_araddr_o;
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
  wire [4:0] axi_araddr_o;
  wire [7:0] axi_arlen_o;
  wire [2:0] axi_arsize_o,axi_arprot_o;
  wire [3:0] axi_arcache_o;
  wire yumi_o,axi_arlock_o,axi_arvalid_o,axi_rready_o,N0,N1,v_i,tag_fifo_v_lo,
  tag_fifo_yumi_li,piso_v_lo,piso_yumi_li,counter_clear_li,counter_up_li,N2,N3,N4,N5,N6;
  wire [0:0] tag_lo;
  assign axi_arburst_o[0] = 1'b1;
  assign axi_arsize_o[1] = 1'b1;
  assign axi_arlock_o = 1'b0;
  assign axi_arprot_o[0] = 1'b0;
  assign axi_arprot_o[1] = 1'b0;
  assign axi_arprot_o[2] = 1'b0;
  assign axi_arcache_o[0] = 1'b0;
  assign axi_arcache_o[1] = 1'b0;
  assign axi_arcache_o[2] = 1'b0;
  assign axi_arcache_o[3] = 1'b0;
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
  assign dma_data_o[63] = dma_data_o[31];
  assign dma_data_o[62] = dma_data_o[30];
  assign dma_data_o[61] = dma_data_o[29];
  assign dma_data_o[60] = dma_data_o[28];
  assign dma_data_o[59] = dma_data_o[27];
  assign dma_data_o[58] = dma_data_o[26];
  assign dma_data_o[57] = dma_data_o[25];
  assign dma_data_o[56] = dma_data_o[24];
  assign dma_data_o[55] = dma_data_o[23];
  assign dma_data_o[54] = dma_data_o[22];
  assign dma_data_o[53] = dma_data_o[21];
  assign dma_data_o[52] = dma_data_o[20];
  assign dma_data_o[51] = dma_data_o[19];
  assign dma_data_o[50] = dma_data_o[18];
  assign dma_data_o[49] = dma_data_o[17];
  assign dma_data_o[48] = dma_data_o[16];
  assign dma_data_o[47] = dma_data_o[15];
  assign dma_data_o[46] = dma_data_o[14];
  assign dma_data_o[45] = dma_data_o[13];
  assign dma_data_o[44] = dma_data_o[12];
  assign dma_data_o[43] = dma_data_o[11];
  assign dma_data_o[42] = dma_data_o[10];
  assign dma_data_o[41] = dma_data_o[9];
  assign dma_data_o[40] = dma_data_o[8];
  assign dma_data_o[39] = dma_data_o[7];
  assign dma_data_o[38] = dma_data_o[6];
  assign dma_data_o[37] = dma_data_o[5];
  assign dma_data_o[36] = dma_data_o[4];
  assign dma_data_o[35] = dma_data_o[3];
  assign dma_data_o[34] = dma_data_o[2];
  assign dma_data_o[33] = dma_data_o[1];
  assign dma_data_o[32] = dma_data_o[0];
  assign axi_araddr_o[4] = axi_addr_i[4];
  assign axi_araddr_o[3] = axi_addr_i[3];
  assign axi_araddr_o[2] = axi_addr_i[2];
  assign axi_araddr_o[1] = axi_addr_i[1];
  assign axi_araddr_o[0] = axi_addr_i[0];
  assign axi_arvalid_o = v_i;

  bsg_fifo_1r1w_small_width_p1_els_p2
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(yumi_o),
    .data_i(tag_i[0]),
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
    .ready_o(axi_rready_o),
    .valid_o(piso_v_lo),
    .data_o(dma_data_o[31:0]),
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
  assign yumi_o = v_i & axi_arready_i;
  assign dma_data_v_o[1] = cache_sel[1] & piso_v_lo;
  assign dma_data_v_o[0] = cache_sel[0] & piso_v_lo;
  assign N2 = ~tag_lo[0];
  assign piso_yumi_li = N6 & tag_fifo_v_lo;
  assign N6 = N3 & piso_v_lo;
  assign N4 = ~N5;

endmodule



module bsg_serial_in_parallel_out_width_p32_els_p1
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
  output [0:0] valid_o;
  output [31:0] data_o;
  input [0:0] yumi_cnt_i;
  input clk_i;
  input reset_i;
  input valid_i;
  output ready_o;
  wire [0:0] valid_o,num_els_n,valid_nn;
  wire [31:0] data_o,data_nn;
  wire ready_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,data_n_1__31_,data_n_1__30_,data_n_1__29_,
  data_n_1__28_,data_n_1__27_,data_n_1__26_,data_n_1__25_,data_n_1__24_,
  data_n_1__23_,data_n_1__22_,data_n_1__21_,data_n_1__20_,data_n_1__19_,data_n_1__18_,
  data_n_1__17_,data_n_1__16_,data_n_1__15_,data_n_1__14_,data_n_1__13_,data_n_1__12_,
  data_n_1__11_,data_n_1__10_,data_n_1__9_,data_n_1__8_,data_n_1__7_,data_n_1__6_,
  data_n_1__5_,data_n_1__4_,data_n_1__3_,data_n_1__2_,data_n_1__1_,data_n_1__0_,N10,
  N11,N13,N14;
  wire [1:1] valid_n;
  reg [0:0] valid_r;
  reg N12;
  reg [31:0] data_r;
  assign data_nn[31] = (N14)? data_o[31] : 
                       (N0)? data_n_1__31_ : 1'b0;
  assign N0 = yumi_cnt_i[0];
  assign data_nn[30] = (N14)? data_o[30] : 
                       (N0)? data_n_1__30_ : 1'b0;
  assign data_nn[29] = (N14)? data_o[29] : 
                       (N0)? data_n_1__29_ : 1'b0;
  assign data_nn[28] = (N14)? data_o[28] : 
                       (N0)? data_n_1__28_ : 1'b0;
  assign data_nn[27] = (N14)? data_o[27] : 
                       (N0)? data_n_1__27_ : 1'b0;
  assign data_nn[26] = (N14)? data_o[26] : 
                       (N0)? data_n_1__26_ : 1'b0;
  assign data_nn[25] = (N14)? data_o[25] : 
                       (N0)? data_n_1__25_ : 1'b0;
  assign data_nn[24] = (N14)? data_o[24] : 
                       (N0)? data_n_1__24_ : 1'b0;
  assign data_nn[23] = (N14)? data_o[23] : 
                       (N0)? data_n_1__23_ : 1'b0;
  assign data_nn[22] = (N14)? data_o[22] : 
                       (N0)? data_n_1__22_ : 1'b0;
  assign data_nn[21] = (N14)? data_o[21] : 
                       (N0)? data_n_1__21_ : 1'b0;
  assign data_nn[20] = (N14)? data_o[20] : 
                       (N0)? data_n_1__20_ : 1'b0;
  assign data_nn[19] = (N14)? data_o[19] : 
                       (N0)? data_n_1__19_ : 1'b0;
  assign data_nn[18] = (N14)? data_o[18] : 
                       (N0)? data_n_1__18_ : 1'b0;
  assign data_nn[17] = (N14)? data_o[17] : 
                       (N0)? data_n_1__17_ : 1'b0;
  assign data_nn[16] = (N14)? data_o[16] : 
                       (N0)? data_n_1__16_ : 1'b0;
  assign data_nn[15] = (N14)? data_o[15] : 
                       (N0)? data_n_1__15_ : 1'b0;
  assign data_nn[14] = (N14)? data_o[14] : 
                       (N0)? data_n_1__14_ : 1'b0;
  assign data_nn[13] = (N14)? data_o[13] : 
                       (N0)? data_n_1__13_ : 1'b0;
  assign data_nn[12] = (N14)? data_o[12] : 
                       (N0)? data_n_1__12_ : 1'b0;
  assign data_nn[11] = (N14)? data_o[11] : 
                       (N0)? data_n_1__11_ : 1'b0;
  assign data_nn[10] = (N14)? data_o[10] : 
                       (N0)? data_n_1__10_ : 1'b0;
  assign data_nn[9] = (N14)? data_o[9] : 
                      (N0)? data_n_1__9_ : 1'b0;
  assign data_nn[8] = (N14)? data_o[8] : 
                      (N0)? data_n_1__8_ : 1'b0;
  assign data_nn[7] = (N14)? data_o[7] : 
                      (N0)? data_n_1__7_ : 1'b0;
  assign data_nn[6] = (N14)? data_o[6] : 
                      (N0)? data_n_1__6_ : 1'b0;
  assign data_nn[5] = (N14)? data_o[5] : 
                      (N0)? data_n_1__5_ : 1'b0;
  assign data_nn[4] = (N14)? data_o[4] : 
                      (N0)? data_n_1__4_ : 1'b0;
  assign data_nn[3] = (N14)? data_o[3] : 
                      (N0)? data_n_1__3_ : 1'b0;
  assign data_nn[2] = (N14)? data_o[2] : 
                      (N0)? data_n_1__2_ : 1'b0;
  assign data_nn[1] = (N14)? data_o[1] : 
                      (N0)? data_n_1__1_ : 1'b0;
  assign data_nn[0] = (N14)? data_o[0] : 
                      (N0)? data_n_1__0_ : 1'b0;
  assign N9 = N12 ^ N8;
  assign num_els_n[0] = N9 ^ yumi_cnt_i[0];
  assign N10 = ~N12;
  assign N6 = (N1)? 1'b0 : 
              (N2)? num_els_n[0] : 1'b0;
  assign N1 = reset_i;
  assign N2 = N5;
  assign N7 = (N1)? 1'b0 : 
              (N2)? valid_nn[0] : 1'b0;
  assign { data_o[0:0], data_o[1:1], data_o[2:2], data_o[3:3], data_o[4:4], data_o[5:5], data_o[6:6], data_o[7:7], data_o[8:8], data_o[9:9], data_o[10:10], data_o[11:11], data_o[12:12], data_o[13:13], data_o[14:14], data_o[15:15], data_o[16:16], data_o[17:17], data_o[18:18], data_o[19:19], data_o[20:20], data_o[21:21], data_o[22:22], data_o[23:23], data_o[24:24], data_o[25:25], data_o[26:26], data_o[27:27], data_o[28:28], data_o[29:29], data_o[30:30], data_o[31:31] } = (N3)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          (N4)? { data_r[0:0], data_r[1:1], data_r[2:2], data_r[3:3], data_r[4:4], data_r[5:5], data_r[6:6], data_r[7:7], data_r[8:8], data_r[9:9], data_r[10:10], data_r[11:11], data_r[12:12], data_r[13:13], data_r[14:14], data_r[15:15], data_r[16:16], data_r[17:17], data_r[18:18], data_r[19:19], data_r[20:20], data_r[21:21], data_r[22:22], data_r[23:23], data_r[24:24], data_r[25:25], data_r[26:26], data_r[27:27], data_r[28:28], data_r[29:29], data_r[30:30], data_r[31:31] } : 1'b0;
  assign N3 = N10;
  assign N4 = N12;
  assign { data_n_1__0_, data_n_1__1_, data_n_1__2_, data_n_1__3_, data_n_1__4_, data_n_1__5_, data_n_1__6_, data_n_1__7_, data_n_1__8_, data_n_1__9_, data_n_1__10_, data_n_1__11_, data_n_1__12_, data_n_1__13_, data_n_1__14_, data_n_1__15_, data_n_1__16_, data_n_1__17_, data_n_1__18_, data_n_1__19_, data_n_1__20_, data_n_1__21_, data_n_1__22_, data_n_1__23_, data_n_1__24_, data_n_1__25_, data_n_1__26_, data_n_1__27_, data_n_1__28_, data_n_1__29_, data_n_1__30_, data_n_1__31_ } = (N4)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign valid_o[0] = (N3)? N13 : 
                      (N4)? valid_r[0] : 1'b0;
  assign valid_n[1] = (N4)? N13 : 
                      (N11)? 1'b0 : 1'b0;
  assign valid_nn[0] = (N0)? valid_n[1] : 
                       (N14)? valid_o[0] : 1'b0;
  assign N5 = ~reset_i;
  assign ready_o = ~valid_r[0];
  assign N8 = valid_i & ready_o;
  assign N11 = ~N12;
  assign N13 = valid_i & ready_o;
  assign N14 = ~yumi_cnt_i[0];

  always @(posedge clk_i) begin
    if(1'b1) begin
      { valid_r[0:0] } <= { N7 };
      N12 <= N6;
      { data_r[31:0] } <= { data_nn[31:0] };
    end 
  end


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



module bsg_cache_to_axi_tx_num_cache_p2_data_width_p32_block_size_in_words_p4_axi_id_width_p6_axi_addr_width_p5_axi_data_width_p32_axi_burst_len_p1
(
  clk_i,
  reset_i,
  v_i,
  yumi_o,
  tag_i,
  axi_addr_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  axi_awid_o,
  axi_awaddr_o,
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

  input [0:0] tag_i;
  input [4:0] axi_addr_i;
  input [63:0] dma_data_i;
  input [1:0] dma_data_v_i;
  output [1:0] dma_data_yumi_o;
  output [5:0] axi_awid_o;
  output [4:0] axi_awaddr_o;
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
  wire [4:0] axi_awaddr_o;
  wire [7:0] axi_awlen_o;
  wire [2:0] axi_awsize_o,axi_awprot_o;
  wire [3:0] axi_awcache_o,axi_wstrb_o;
  wire [31:0] axi_wdata_o,sipo_data_li;
  wire yumi_o,axi_awlock_o,axi_awvalid_o,axi_wlast_o,axi_wvalid_o,axi_bready_o,N0,N1,
  N2,N3,v_i,tag_fifo_v_lo,tag_fifo_yumi_li,N4,sipo_ready_lo,sipo_v_li,N5,N6,N7,
  word_clear_li,word_up_li,N8,N9,N10,N11,pop_word,N12,burst_clear_li,burst_up_li,N13,
  N14,N15,N16,N17,N18,N19;
  wire [0:0] tag_lo,sipo_yumi_cnt_li,burst_count_lo;
  assign axi_bready_o = 1'b1;
  assign axi_wstrb_o[0] = 1'b1;
  assign axi_wstrb_o[1] = 1'b1;
  assign axi_wstrb_o[2] = 1'b1;
  assign axi_wstrb_o[3] = 1'b1;
  assign axi_awburst_o[0] = 1'b1;
  assign axi_awsize_o[1] = 1'b1;
  assign axi_awlock_o = 1'b0;
  assign axi_awprot_o[0] = 1'b0;
  assign axi_awprot_o[1] = 1'b0;
  assign axi_awprot_o[2] = 1'b0;
  assign axi_awcache_o[0] = 1'b0;
  assign axi_awcache_o[1] = 1'b0;
  assign axi_awcache_o[2] = 1'b0;
  assign axi_awcache_o[3] = 1'b0;
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
  assign axi_awaddr_o[4] = axi_addr_i[4];
  assign axi_awaddr_o[3] = axi_addr_i[3];
  assign axi_awaddr_o[2] = axi_addr_i[2];
  assign axi_awaddr_o[1] = axi_addr_i[1];
  assign axi_awaddr_o[0] = axi_addr_i[0];
  assign axi_awvalid_o = v_i;

  bsg_fifo_1r1w_small_width_p1_els_p2
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(yumi_o),
    .data_i(tag_i[0]),
    .v_o(tag_fifo_v_lo),
    .data_o(tag_lo[0]),
    .yumi_i(tag_fifo_yumi_li)
  );


  bsg_decode_with_v_num_out_p2
  demux
  (
    .i(tag_lo[0]),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel)
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

  bsg_serial_in_parallel_out_width_p32_els_p1
  sipo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .valid_i(sipo_v_li),
    .data_i(sipo_data_li),
    .ready_o(sipo_ready_lo),
    .valid_o(axi_wvalid_o),
    .data_o(axi_wdata_o),
    .yumi_cnt_i(sipo_yumi_cnt_li[0])
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

  assign N9 = (N8)? dma_data_v_i[0] : 
              (N0)? dma_data_v_i[1] : 1'b0;
  assign N11 = (N10)? dma_data_yumi_o[0] : 
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

  assign N15 = ~burst_count_lo[0];
  assign N16 = word_count_lo[0] & word_count_lo[1];
  assign word_clear_li = (N1)? pop_word : 
                         (N12)? 1'b0 : 1'b0;
  assign N1 = N16;
  assign word_up_li = (N1)? 1'b0 : 
                      (N12)? pop_word : 1'b0;
  assign tag_fifo_yumi_li = (N1)? pop_word : 
                            (N12)? 1'b0 : 1'b0;
  assign burst_clear_li = (N2)? N13 : 
                          (N3)? 1'b0 : 1'b0;
  assign N2 = N15;
  assign N3 = burst_count_lo[0];
  assign burst_up_li = (N2)? 1'b0 : 
                       (N3)? N14 : 1'b0;
  assign axi_wlast_o = (N2)? axi_wvalid_o : 
                       (N3)? 1'b0 : 1'b0;
  assign yumi_o = v_i & axi_awready_i;
  assign N4 = ~tag_lo[0];
  assign dma_data_yumi_o[1] = N17 & sipo_ready_lo;
  assign N17 = cache_sel[1] & dma_data_v_i[1];
  assign dma_data_yumi_o[0] = N18 & sipo_ready_lo;
  assign N18 = cache_sel[0] & dma_data_v_i[0];
  assign N5 = ~tag_lo[0];
  assign sipo_v_li = tag_fifo_v_lo & N6;
  assign N7 = axi_wvalid_o & axi_wready_i;
  assign sipo_yumi_cnt_li[0] = N7;
  assign N8 = ~tag_lo[0];
  assign N10 = ~tag_lo[0];
  assign pop_word = N19 & tag_fifo_v_lo;
  assign N19 = N9 & N11;
  assign N12 = ~N16;
  assign N13 = axi_wvalid_o & axi_wready_i;
  assign N14 = axi_wvalid_o & axi_wready_i;

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
  axi_awaddr_o,
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
  axi_araddr_o,
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

  input [57:0] dma_pkt_i;
  input [1:0] dma_pkt_v_i;
  output [1:0] dma_pkt_yumi_o;
  output [63:0] dma_data_o;
  output [1:0] dma_data_v_o;
  input [1:0] dma_data_ready_i;
  input [63:0] dma_data_i;
  input [1:0] dma_data_v_i;
  output [1:0] dma_data_yumi_o;
  output [5:0] axi_awid_o;
  output [4:0] axi_awaddr_o;
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
  output [4:0] axi_araddr_o;
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
  wire [4:0] axi_awaddr_o,axi_araddr_o;
  wire [7:0] axi_awlen_o,axi_arlen_o;
  wire [2:0] axi_awsize_o,axi_awprot_o,axi_arsize_o,axi_arprot_o;
  wire [3:0] axi_awcache_o,axi_wstrb_o,axi_arcache_o;
  wire [31:0] axi_wdata_o;
  wire axi_awlock_o,axi_awvalid_o,axi_wlast_o,axi_wvalid_o,axi_bready_o,axi_arlock_o,
  axi_arvalid_o,axi_rready_o,N0,N1,read_rr_v_lo,read_rr_yumi_li,write_rr_v_lo,
  write_rr_yumi_li,N2,N3,N4,N5,N6,N7;
  wire [28:0] read_rr_dma_pkt,write_rr_dma_pkt;
  wire [0:0] read_rr_tag_lo,write_rr_tag_lo;

  bsg_round_robin_n_to_1_width_p29_num_in_p2_strict_p0
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


  bsg_round_robin_n_to_1_width_p29_num_in_p2_strict_p0
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


  bsg_cache_to_axi_rx_num_cache_p2_data_width_p32_block_size_in_words_p4_axi_id_width_p6_axi_addr_width_p5_axi_data_width_p32_axi_burst_len_p1
  axi_rx
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(read_rr_v_lo),
    .yumi_o(read_rr_yumi_li),
    .tag_i(read_rr_tag_lo[0]),
    .axi_addr_i(read_rr_dma_pkt[4:0]),
    .dma_data_o(dma_data_o),
    .dma_data_v_o(dma_data_v_o),
    .dma_data_ready_i(dma_data_ready_i),
    .axi_arid_o(axi_arid_o),
    .axi_araddr_o(axi_araddr_o),
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


  bsg_cache_to_axi_tx_num_cache_p2_data_width_p32_block_size_in_words_p4_axi_id_width_p6_axi_addr_width_p5_axi_data_width_p32_axi_burst_len_p1
  axi_tx
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(write_rr_v_lo),
    .yumi_o(write_rr_yumi_li),
    .tag_i(write_rr_tag_lo[0]),
    .axi_addr_i(write_rr_dma_pkt[4:0]),
    .dma_data_i(dma_data_i),
    .dma_data_v_i(dma_data_v_i),
    .dma_data_yumi_o(dma_data_yumi_o),
    .axi_awid_o(axi_awid_o),
    .axi_awaddr_o(axi_awaddr_o),
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
  assign N6 = ~dma_pkt_i[28];
  assign read_rr_v_li[1] = dma_pkt_v_i[1] & N7;
  assign N7 = ~dma_pkt_i[57];
  assign write_rr_v_li[0] = dma_pkt_v_i[0] & dma_pkt_i[28];
  assign write_rr_v_li[1] = dma_pkt_v_i[1] & dma_pkt_i[57];
  assign N2 = dma_pkt_i[28];
  assign N3 = ~N2;
  assign N4 = dma_pkt_i[57];
  assign N5 = ~N4;

endmodule

