

module top
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
  input [31:0] dma_data_i;
  input [0:0] dma_data_v_i;
  output [0:0] dma_data_yumi_o;
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

  bsg_cache_to_axi_tx
  wrapper
  (
    .cache_id_i(cache_id_i),
    .addr_i(addr_i),
    .mask_i(mask_i),
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
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .axi_awready_i(axi_awready_i),
    .axi_wready_i(axi_wready_i),
    .axi_bvalid_i(axi_bvalid_i),
    .yumi_o(yumi_o),
    .axi_awlock_o(axi_awlock_o),
    .axi_awvalid_o(axi_awvalid_o),
    .axi_wlast_o(axi_wlast_o),
    .axi_wvalid_o(axi_wvalid_o),
    .axi_bready_o(axi_bready_o)
  );


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
  wire full_o,empty_o,N0,enq_r,deq_r,N1,equal_ptrs,sv2v_dc_1;
  reg deq_r_sv2v_reg,enq_r_sv2v_reg;
  assign deq_r = deq_r_sv2v_reg;
  assign enq_r = enq_r_sv2v_reg;

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
    .n_o(sv2v_dc_1)
  );

  assign N0 = rptr_r_o[0] ^ wptr_r_o[0];
  assign equal_ptrs = ~N0;
  assign N1 = enq_i | deq_i;
  assign empty_o = equal_ptrs & deq_r;
  assign full_o = equal_ptrs & enq_r;

  always @(posedge clk_i) begin
    if(reset_i) begin
      deq_r_sv2v_reg <= 1'b1;
      enq_r_sv2v_reg <= 1'b0;
    end else if(N1) begin
      deq_r_sv2v_reg <= deq_i;
      enq_r_sv2v_reg <= enq_i;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p9_els_p1_read_write_same_addr_p0
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
  wire N0,N1,N2,N3,N4,N5;
  reg r_data_o_8_sv2v_reg,r_data_o_7_sv2v_reg,r_data_o_6_sv2v_reg,r_data_o_5_sv2v_reg,
  r_data_o_4_sv2v_reg,r_data_o_3_sv2v_reg,r_data_o_2_sv2v_reg,r_data_o_1_sv2v_reg,
  r_data_o_0_sv2v_reg;
  assign r_data_o[8] = r_data_o_8_sv2v_reg;
  assign r_data_o[7] = r_data_o_7_sv2v_reg;
  assign r_data_o[6] = r_data_o_6_sv2v_reg;
  assign r_data_o[5] = r_data_o_5_sv2v_reg;
  assign r_data_o[4] = r_data_o_4_sv2v_reg;
  assign r_data_o[3] = r_data_o_3_sv2v_reg;
  assign r_data_o[2] = r_data_o_2_sv2v_reg;
  assign r_data_o[1] = r_data_o_1_sv2v_reg;
  assign r_data_o[0] = r_data_o_0_sv2v_reg;
  assign N5 = ~w_addr_i[0];
  assign N3 = 1'b1 & N5;
  assign N4 = (N0)? N3 : 
              (N1)? 1'b0 : 1'b0;
  assign N0 = w_v_i;
  assign N1 = N2;
  assign N2 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N4) begin
      r_data_o_8_sv2v_reg <= w_data_i[8];
      r_data_o_7_sv2v_reg <= w_data_i[7];
      r_data_o_6_sv2v_reg <= w_data_i[6];
      r_data_o_5_sv2v_reg <= w_data_i[5];
      r_data_o_4_sv2v_reg <= w_data_i[4];
      r_data_o_3_sv2v_reg <= w_data_i[3];
      r_data_o_2_sv2v_reg <= w_data_i[2];
      r_data_o_1_sv2v_reg <= w_data_i[1];
      r_data_o_0_sv2v_reg <= w_data_i[0];
    end 
  end


endmodule



module bsg_mem_1r1w_width_p9_els_p1_read_write_same_addr_p0
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

  bsg_mem_1r1w_synth_width_p9_els_p1_read_write_same_addr_p0
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



module bsg_fifo_1r1w_small_unhardened_width_p9_els_p1_ready_THEN_valid_p0
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
  wire ready_o,v_o,enque,full,empty,sv2v_dc_1;
  wire [0:0] wptr_r,rptr_r;

  bsg_fifo_tracker_els_p1
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


  bsg_mem_1r1w_width_p9_els_p1_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enque),
    .w_addr_i(wptr_r[0]),
    .w_data_i(data_i),
    .r_v_i(v_o),
    .r_addr_i(rptr_r[0]),
    .r_data_o(data_o)
  );

  assign enque = v_i & ready_o;
  assign ready_o = ~full;
  assign v_o = ~empty;

endmodule



module bsg_fifo_1r1w_small_width_p9_els_p1
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

  bsg_fifo_1r1w_small_unhardened_width_p9_els_p1_ready_THEN_valid_p0
  \unhardened.un.fifo 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_i(data_i),
    .v_o(v_o),
    .data_o(data_o),
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



module bsg_expand_bitmask_in_width_p8_expand_p2
(
  i,
  o
);

  input [7:0] i;
  output [15:0] o;
  wire [15:0] o;
  wire o_15_,o_13_,o_11_,o_9_,o_7_,o_5_,o_3_,o_1_;
  assign o_15_ = i[7];
  assign o[14] = o_15_;
  assign o[15] = o_15_;
  assign o_13_ = i[6];
  assign o[12] = o_13_;
  assign o[13] = o_13_;
  assign o_11_ = i[5];
  assign o[10] = o_11_;
  assign o[11] = o_11_;
  assign o_9_ = i[4];
  assign o[8] = o_9_;
  assign o[9] = o_9_;
  assign o_7_ = i[3];
  assign o[6] = o_7_;
  assign o[7] = o_7_;
  assign o_5_ = i[2];
  assign o[4] = o_5_;
  assign o[5] = o_5_;
  assign o_3_ = i[1];
  assign o[2] = o_3_;
  assign o[3] = o_3_;
  assign o_1_ = i[0];
  assign o[0] = o_1_;
  assign o[1] = o_1_;

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



module bsg_cache_to_axi_tx
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
  input [31:0] dma_data_i;
  input [0:0] dma_data_v_i;
  output [0:0] dma_data_yumi_o;
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
  wire [0:0] dma_data_yumi_o,axi_awaddr_cache_id_o,tag_lo,cache_sel,burst_count_lo;
  wire [5:0] axi_awid_o;
  wire [27:0] axi_awaddr_addr_o;
  wire [7:0] axi_awlen_o,mask_lo;
  wire [2:0] axi_awsize_o,axi_awprot_o;
  wire [1:0] axi_awburst_o,word_count_lo;
  wire [3:0] axi_awcache_o,axi_wstrb_o,sipo_strb_li;
  wire [31:0] axi_wdata_o;
  wire yumi_o,axi_awlock_o,axi_awvalid_o,axi_wlast_o,axi_wvalid_o,axi_bready_o,N0,N1,
  N2,tag_fifo_v_li,tag_fifo_ready_lo,tag_fifo_v_lo,tag_fifo_yumi_li,sipo_ready_lo,
  sipo_v_li,sipo_yumi_li,word_clear_li,word_up_li,pop_word,N3,burst_clear_li,
  burst_up_li,N4,N5,N6,N7,N8,N9,N10;
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

  bsg_fifo_1r1w_small_width_p9_els_p1
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


  bsg_decode_with_v_num_out_p1
  demux
  (
    .i(tag_lo[0]),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel[0])
  );


  bsg_expand_bitmask_in_width_p8_expand_p2
  expand
  (
    .i(mask_lo),
    .o(byte_mask_lo)
  );


  bsg_serial_in_parallel_out_full
  sipo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(sipo_v_li),
    .data_i(dma_data_i),
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


  bsg_counter_clear_up_max_val_p0_init_val_p0
  burst_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(burst_clear_li),
    .up_i(burst_up_li),
    .count_o(burst_count_lo[0])
  );

  assign N6 = ~burst_count_lo[0];
  assign N7 = word_count_lo[0] & word_count_lo[1];
  assign word_clear_li = (N0)? pop_word : 
                         (N3)? 1'b0 : 1'b0;
  assign N0 = N7;
  assign word_up_li = (N0)? 1'b0 : 
                      (N3)? pop_word : 1'b0;
  assign tag_fifo_yumi_li = (N0)? pop_word : 
                            (N3)? 1'b0 : 1'b0;
  assign burst_clear_li = (N1)? N4 : 
                          (N2)? 1'b0 : 1'b0;
  assign N1 = N6;
  assign N2 = burst_count_lo[0];
  assign burst_up_li = (N1)? 1'b0 : 
                       (N2)? N5 : 1'b0;
  assign axi_wlast_o = (N1)? axi_wvalid_o : 
                       (N2)? 1'b0 : 1'b0;
  assign yumi_o = N8 & tag_fifo_ready_lo;
  assign N8 = v_i & axi_awready_i;
  assign tag_fifo_v_li = v_i & axi_awready_i;
  assign axi_awvalid_o = v_i & tag_fifo_ready_lo;
  assign dma_data_yumi_o[0] = N9 & sipo_ready_lo;
  assign N9 = cache_sel[0] & dma_data_v_i[0];
  assign sipo_v_li = tag_fifo_v_lo & dma_data_v_i[0];
  assign sipo_yumi_li = axi_wvalid_o & axi_wready_i;
  assign pop_word = N10 & tag_fifo_v_lo;
  assign N10 = dma_data_v_i[0] & dma_data_yumi_o[0];
  assign N3 = ~N7;
  assign N4 = axi_wvalid_o & axi_wready_i;
  assign N5 = axi_wvalid_o & axi_wready_i;

endmodule

