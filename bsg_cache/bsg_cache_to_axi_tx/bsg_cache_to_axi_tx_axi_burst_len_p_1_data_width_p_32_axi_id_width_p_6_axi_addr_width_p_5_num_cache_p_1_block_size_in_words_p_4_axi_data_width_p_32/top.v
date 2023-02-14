

module top
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
  input [31:0] dma_data_i;
  input [0:0] dma_data_v_i;
  output [0:0] dma_data_yumi_o;
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

  bsg_cache_to_axi_tx
  wrapper
  (
    .tag_i(tag_i),
    .axi_addr_i(axi_addr_i),
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
  wire full_o,empty_o,N0,N1,N2,N3,enq_r,deq_r,N4,equal_ptrs,sv2v_dc_1;
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
  wire [0:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5;
  reg r_data_o_0_sv2v_reg;
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
      r_data_o_0_sv2v_reg <= w_data_i[0];
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
  wire ready_o,v_o,enque,full,empty,sv2v_dc_1;

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
  wire [0:0] valid_o,valid_r,num_els_n,valid_nn;
  wire [31:0] data_o,data_r,data_nn;
  wire ready_o,N0,N1,N2,N3,N4,data_n_1__31_,data_n_1__30_,data_n_1__29_,data_n_1__28_,
  data_n_1__27_,data_n_1__26_,data_n_1__25_,data_n_1__24_,data_n_1__23_,
  data_n_1__22_,data_n_1__21_,data_n_1__20_,data_n_1__19_,data_n_1__18_,data_n_1__17_,
  data_n_1__16_,data_n_1__15_,data_n_1__14_,data_n_1__13_,data_n_1__12_,data_n_1__11_,
  data_n_1__10_,data_n_1__9_,data_n_1__8_,data_n_1__7_,data_n_1__6_,data_n_1__5_,
  data_n_1__4_,data_n_1__3_,data_n_1__2_,data_n_1__1_,data_n_1__0_,N5,N6,N7,N8,N9;
  wire [1:1] valid_n;
  reg valid_r_0_sv2v_reg,N6_sv2v_reg,data_r_31_sv2v_reg,data_r_30_sv2v_reg,
  data_r_29_sv2v_reg,data_r_28_sv2v_reg,data_r_27_sv2v_reg,data_r_26_sv2v_reg,
  data_r_25_sv2v_reg,data_r_24_sv2v_reg,data_r_23_sv2v_reg,data_r_22_sv2v_reg,data_r_21_sv2v_reg,
  data_r_20_sv2v_reg,data_r_19_sv2v_reg,data_r_18_sv2v_reg,data_r_17_sv2v_reg,
  data_r_16_sv2v_reg,data_r_15_sv2v_reg,data_r_14_sv2v_reg,data_r_13_sv2v_reg,
  data_r_12_sv2v_reg,data_r_11_sv2v_reg,data_r_10_sv2v_reg,data_r_9_sv2v_reg,
  data_r_8_sv2v_reg,data_r_7_sv2v_reg,data_r_6_sv2v_reg,data_r_5_sv2v_reg,data_r_4_sv2v_reg,
  data_r_3_sv2v_reg,data_r_2_sv2v_reg,data_r_1_sv2v_reg,data_r_0_sv2v_reg;
  assign valid_r[0] = valid_r_0_sv2v_reg;
  assign N6 = N6_sv2v_reg;
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
  assign data_nn[31] = (N9)? data_o[31] : 
                       (N0)? data_n_1__31_ : 1'b0;
  assign N0 = yumi_cnt_i[0];
  assign data_nn[30] = (N9)? data_o[30] : 
                       (N0)? data_n_1__30_ : 1'b0;
  assign data_nn[29] = (N9)? data_o[29] : 
                       (N0)? data_n_1__29_ : 1'b0;
  assign data_nn[28] = (N9)? data_o[28] : 
                       (N0)? data_n_1__28_ : 1'b0;
  assign data_nn[27] = (N9)? data_o[27] : 
                       (N0)? data_n_1__27_ : 1'b0;
  assign data_nn[26] = (N9)? data_o[26] : 
                       (N0)? data_n_1__26_ : 1'b0;
  assign data_nn[25] = (N9)? data_o[25] : 
                       (N0)? data_n_1__25_ : 1'b0;
  assign data_nn[24] = (N9)? data_o[24] : 
                       (N0)? data_n_1__24_ : 1'b0;
  assign data_nn[23] = (N9)? data_o[23] : 
                       (N0)? data_n_1__23_ : 1'b0;
  assign data_nn[22] = (N9)? data_o[22] : 
                       (N0)? data_n_1__22_ : 1'b0;
  assign data_nn[21] = (N9)? data_o[21] : 
                       (N0)? data_n_1__21_ : 1'b0;
  assign data_nn[20] = (N9)? data_o[20] : 
                       (N0)? data_n_1__20_ : 1'b0;
  assign data_nn[19] = (N9)? data_o[19] : 
                       (N0)? data_n_1__19_ : 1'b0;
  assign data_nn[18] = (N9)? data_o[18] : 
                       (N0)? data_n_1__18_ : 1'b0;
  assign data_nn[17] = (N9)? data_o[17] : 
                       (N0)? data_n_1__17_ : 1'b0;
  assign data_nn[16] = (N9)? data_o[16] : 
                       (N0)? data_n_1__16_ : 1'b0;
  assign data_nn[15] = (N9)? data_o[15] : 
                       (N0)? data_n_1__15_ : 1'b0;
  assign data_nn[14] = (N9)? data_o[14] : 
                       (N0)? data_n_1__14_ : 1'b0;
  assign data_nn[13] = (N9)? data_o[13] : 
                       (N0)? data_n_1__13_ : 1'b0;
  assign data_nn[12] = (N9)? data_o[12] : 
                       (N0)? data_n_1__12_ : 1'b0;
  assign data_nn[11] = (N9)? data_o[11] : 
                       (N0)? data_n_1__11_ : 1'b0;
  assign data_nn[10] = (N9)? data_o[10] : 
                       (N0)? data_n_1__10_ : 1'b0;
  assign data_nn[9] = (N9)? data_o[9] : 
                      (N0)? data_n_1__9_ : 1'b0;
  assign data_nn[8] = (N9)? data_o[8] : 
                      (N0)? data_n_1__8_ : 1'b0;
  assign data_nn[7] = (N9)? data_o[7] : 
                      (N0)? data_n_1__7_ : 1'b0;
  assign data_nn[6] = (N9)? data_o[6] : 
                      (N0)? data_n_1__6_ : 1'b0;
  assign data_nn[5] = (N9)? data_o[5] : 
                      (N0)? data_n_1__5_ : 1'b0;
  assign data_nn[4] = (N9)? data_o[4] : 
                      (N0)? data_n_1__4_ : 1'b0;
  assign data_nn[3] = (N9)? data_o[3] : 
                      (N0)? data_n_1__3_ : 1'b0;
  assign data_nn[2] = (N9)? data_o[2] : 
                      (N0)? data_n_1__2_ : 1'b0;
  assign data_nn[1] = (N9)? data_o[1] : 
                      (N0)? data_n_1__1_ : 1'b0;
  assign data_nn[0] = (N9)? data_o[0] : 
                      (N0)? data_n_1__0_ : 1'b0;
  assign N4 = N6 ^ N3;
  assign num_els_n[0] = N4 ^ yumi_cnt_i[0];
  assign N5 = ~N6;
  assign { data_o[0:0], data_o[1:1], data_o[2:2], data_o[3:3], data_o[4:4], data_o[5:5], data_o[6:6], data_o[7:7], data_o[8:8], data_o[9:9], data_o[10:10], data_o[11:11], data_o[12:12], data_o[13:13], data_o[14:14], data_o[15:15], data_o[16:16], data_o[17:17], data_o[18:18], data_o[19:19], data_o[20:20], data_o[21:21], data_o[22:22], data_o[23:23], data_o[24:24], data_o[25:25], data_o[26:26], data_o[27:27], data_o[28:28], data_o[29:29], data_o[30:30], data_o[31:31] } = (N1)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          (N2)? { data_r[0:0], data_r[1:1], data_r[2:2], data_r[3:3], data_r[4:4], data_r[5:5], data_r[6:6], data_r[7:7], data_r[8:8], data_r[9:9], data_r[10:10], data_r[11:11], data_r[12:12], data_r[13:13], data_r[14:14], data_r[15:15], data_r[16:16], data_r[17:17], data_r[18:18], data_r[19:19], data_r[20:20], data_r[21:21], data_r[22:22], data_r[23:23], data_r[24:24], data_r[25:25], data_r[26:26], data_r[27:27], data_r[28:28], data_r[29:29], data_r[30:30], data_r[31:31] } : 1'b0;
  assign N1 = N5;
  assign N2 = N6;
  assign { data_n_1__0_, data_n_1__1_, data_n_1__2_, data_n_1__3_, data_n_1__4_, data_n_1__5_, data_n_1__6_, data_n_1__7_, data_n_1__8_, data_n_1__9_, data_n_1__10_, data_n_1__11_, data_n_1__12_, data_n_1__13_, data_n_1__14_, data_n_1__15_, data_n_1__16_, data_n_1__17_, data_n_1__18_, data_n_1__19_, data_n_1__20_, data_n_1__21_, data_n_1__22_, data_n_1__23_, data_n_1__24_, data_n_1__25_, data_n_1__26_, data_n_1__27_, data_n_1__28_, data_n_1__29_, data_n_1__30_, data_n_1__31_ } = (N2)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (N8)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign valid_o[0] = (N1)? N7 : 
                      (N2)? valid_r[0] : 1'b0;
  assign valid_n[1] = (N2)? N7 : 
                      (N8)? 1'b0 : 1'b0;
  assign valid_nn[0] = (N0)? valid_n[1] : 
                       (N9)? valid_o[0] : 1'b0;
  assign ready_o = ~valid_r[0];
  assign N3 = valid_i & ready_o;
  assign N7 = valid_i & ready_o;
  assign N8 = ~N6;
  assign N9 = ~yumi_cnt_i[0];

  always @(posedge clk_i) begin
    if(reset_i) begin
      valid_r_0_sv2v_reg <= 1'b0;
      N6_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      valid_r_0_sv2v_reg <= valid_nn[0];
      N6_sv2v_reg <= num_els_n[0];
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
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8;
  reg count_o_1_sv2v_reg,count_o_0_sv2v_reg;
  assign count_o[1] = count_o_1_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;
  assign N8 = reset_i | clear_i;
  assign { N6, N5 } = count_o + up_i;
  assign N7 = (N0)? up_i : 
              (N1)? N5 : 1'b0;
  assign N0 = clear_i;
  assign N1 = N4;
  assign N2 = ~reset_i;
  assign N3 = N2;
  assign N4 = ~clear_i;

  always @(posedge clk_i) begin
    if(N8) begin
      count_o_1_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      count_o_1_sv2v_reg <= N6;
    end 
    if(reset_i) begin
      count_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      count_o_0_sv2v_reg <= N7;
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



module bsg_cache_to_axi_tx
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
  input [31:0] dma_data_i;
  input [0:0] dma_data_v_i;
  output [0:0] dma_data_yumi_o;
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
  wire [0:0] dma_data_yumi_o,tag_lo,cache_sel,sipo_yumi_cnt_li,burst_count_lo;
  wire [5:0] axi_awid_o;
  wire [4:0] axi_awaddr_o;
  wire [7:0] axi_awlen_o;
  wire [2:0] axi_awsize_o,axi_awprot_o;
  wire [1:0] axi_awburst_o,word_count_lo;
  wire [3:0] axi_awcache_o,axi_wstrb_o;
  wire [31:0] axi_wdata_o;
  wire yumi_o,axi_awlock_o,axi_awvalid_o,axi_wlast_o,axi_wvalid_o,axi_bready_o,N0,N1,
  N2,tag_fifo_v_li,tag_fifo_ready_lo,tag_fifo_v_lo,tag_fifo_yumi_li,sipo_ready_lo,
  sipo_v_li,N3,word_clear_li,word_up_li,pop_word,N4,burst_clear_li,burst_up_li,N5,
  N6,N7,N8,N9,N10,N11;
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

  bsg_fifo_1r1w_small_width_p1_els_p1
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(tag_fifo_v_li),
    .ready_o(tag_fifo_ready_lo),
    .data_i(tag_i[0]),
    .v_o(tag_fifo_v_lo),
    .data_o(tag_lo[0]),
    .yumi_i(tag_fifo_yumi_li)
  );


  bsg_decode_with_v_num_out_p1
  demux
  (
    .i(tag_lo[0]),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel[0])
  );


  bsg_serial_in_parallel_out_width_p32_els_p1
  sipo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .valid_i(sipo_v_li),
    .data_i(dma_data_i),
    .ready_o(sipo_ready_lo),
    .valid_o(axi_wvalid_o),
    .data_o(axi_wdata_o),
    .yumi_cnt_i(sipo_yumi_cnt_li[0])
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


  bsg_counter_clear_up_max_val_p0_init_val_p0
  burst_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(burst_clear_li),
    .up_i(burst_up_li),
    .count_o(burst_count_lo[0])
  );

  assign N7 = ~burst_count_lo[0];
  assign N8 = word_count_lo[0] & word_count_lo[1];
  assign word_clear_li = (N0)? pop_word : 
                         (N4)? 1'b0 : 1'b0;
  assign N0 = N8;
  assign word_up_li = (N0)? 1'b0 : 
                      (N4)? pop_word : 1'b0;
  assign tag_fifo_yumi_li = (N0)? pop_word : 
                            (N4)? 1'b0 : 1'b0;
  assign burst_clear_li = (N1)? N5 : 
                          (N2)? 1'b0 : 1'b0;
  assign N1 = N7;
  assign N2 = burst_count_lo[0];
  assign burst_up_li = (N1)? 1'b0 : 
                       (N2)? N6 : 1'b0;
  assign axi_wlast_o = (N1)? axi_wvalid_o : 
                       (N2)? 1'b0 : 1'b0;
  assign yumi_o = N9 & tag_fifo_ready_lo;
  assign N9 = v_i & axi_awready_i;
  assign tag_fifo_v_li = v_i & axi_awready_i;
  assign axi_awvalid_o = v_i & tag_fifo_ready_lo;
  assign dma_data_yumi_o[0] = N10 & sipo_ready_lo;
  assign N10 = cache_sel[0] & dma_data_v_i[0];
  assign sipo_v_li = tag_fifo_v_lo & dma_data_v_i[0];
  assign N3 = axi_wvalid_o & axi_wready_i;
  assign sipo_yumi_cnt_li[0] = N3;
  assign pop_word = N11 & tag_fifo_v_lo;
  assign N11 = dma_data_v_i[0] & dma_data_yumi_o[0];
  assign N4 = ~N8;
  assign N5 = axi_wvalid_o & axi_wready_i;
  assign N6 = axi_wvalid_o & axi_wready_i;

endmodule

