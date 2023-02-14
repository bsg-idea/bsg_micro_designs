

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

  input [1:0] tag_i;
  input [4:0] axi_addr_i;
  input [255:0] dma_data_i;
  input [3:0] dma_data_v_i;
  output [3:0] dma_data_yumi_o;
  output [5:0] axi_awid_o;
  output [4:0] axi_awaddr_o;
  output [7:0] axi_awlen_o;
  output [2:0] axi_awsize_o;
  output [1:0] axi_awburst_o;
  output [3:0] axi_awcache_o;
  output [2:0] axi_awprot_o;
  output [63:0] axi_wdata_o;
  output [7:0] axi_wstrb_o;
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



module bsg_mem_1r1w_synth_width_p2_els_p4_read_write_same_addr_p0_harden_p0
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
  input [1:0] w_data_i;
  input [1:0] r_addr_i;
  output [1:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [1:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20;
  reg [7:0] mem;
  assign r_data_o[1] = (N8)? mem[1] : 
                       (N10)? mem[3] : 
                       (N9)? mem[5] : 
                       (N11)? mem[7] : 1'b0;
  assign r_data_o[0] = (N8)? mem[0] : 
                       (N10)? mem[2] : 
                       (N9)? mem[4] : 
                       (N11)? mem[6] : 1'b0;
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
      { mem[7:6] } <= { w_data_i[1:0] };
    end 
    if(N19) begin
      { mem[5:4] } <= { w_data_i[1:0] };
    end 
    if(N18) begin
      { mem[3:2] } <= { w_data_i[1:0] };
    end 
    if(N17) begin
      { mem[1:0] } <= { w_data_i[1:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p2_els_p4_read_write_same_addr_p0
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
  input [1:0] w_data_i;
  input [1:0] r_addr_i;
  output [1:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [1:0] r_data_o;

  bsg_mem_1r1w_synth_width_p2_els_p4_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i),
    .w_data_i(w_data_i),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i),
    .r_data_o(r_data_o)
  );


endmodule



module bsg_fifo_1r1w_small_unhardened_width_p2_els_p4_ready_THEN_valid_p0
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

  input [1:0] data_i;
  output [1:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [1:0] data_o,wptr_r,rptr_r;
  wire ready_o,v_o,enque,full,empty,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2;

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


  bsg_mem_1r1w_width_p2_els_p4_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enque),
    .w_addr_i(wptr_r),
    .w_data_i(data_i),
    .r_v_i(v_o),
    .r_addr_i(rptr_r),
    .r_data_o(data_o)
  );

  assign enque = v_i & ready_o;
  assign ready_o = ~full;
  assign v_o = ~empty;

endmodule



module bsg_fifo_1r1w_small_width_p2_els_p4
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

  input [1:0] data_i;
  output [1:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [1:0] data_o;
  wire ready_o,v_o;

  bsg_fifo_1r1w_small_unhardened_width_p2_els_p4_ready_THEN_valid_p0
  unhardened_fifo
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



module bsg_decode_num_out_p4
(
  i,
  o
);

  input [1:0] i;
  output [3:0] o;
  wire [3:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule



module bsg_decode_with_v_num_out_p4
(
  i,
  v_i,
  o
);

  input [1:0] i;
  output [3:0] o;
  input v_i;
  wire [3:0] o,lo;

  bsg_decode_num_out_p4
  bd
  (
    .i(i),
    .o(lo)
  );

  assign o[3] = v_i & lo[3];
  assign o[2] = v_i & lo[2];
  assign o[1] = v_i & lo[1];
  assign o[0] = v_i & lo[0];

endmodule



module bsg_serial_in_parallel_out_width_p64_els_p1
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

  input [63:0] data_i;
  output [0:0] valid_o;
  output [63:0] data_o;
  input [0:0] yumi_cnt_i;
  input clk_i;
  input reset_i;
  input valid_i;
  output ready_o;
  wire [0:0] valid_o,num_els_n,valid_nn;
  wire [63:0] data_o,data_nn;
  wire ready_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,data_n_1__63_,data_n_1__62_,data_n_1__61_,
  data_n_1__60_,data_n_1__59_,data_n_1__58_,data_n_1__57_,data_n_1__56_,
  data_n_1__55_,data_n_1__54_,data_n_1__53_,data_n_1__52_,data_n_1__51_,data_n_1__50_,
  data_n_1__49_,data_n_1__48_,data_n_1__47_,data_n_1__46_,data_n_1__45_,data_n_1__44_,
  data_n_1__43_,data_n_1__42_,data_n_1__41_,data_n_1__40_,data_n_1__39_,
  data_n_1__38_,data_n_1__37_,data_n_1__36_,data_n_1__35_,data_n_1__34_,data_n_1__33_,
  data_n_1__32_,data_n_1__31_,data_n_1__30_,data_n_1__29_,data_n_1__28_,data_n_1__27_,
  data_n_1__26_,data_n_1__25_,data_n_1__24_,data_n_1__23_,data_n_1__22_,data_n_1__21_,
  data_n_1__20_,data_n_1__19_,data_n_1__18_,data_n_1__17_,data_n_1__16_,
  data_n_1__15_,data_n_1__14_,data_n_1__13_,data_n_1__12_,data_n_1__11_,data_n_1__10_,
  data_n_1__9_,data_n_1__8_,data_n_1__7_,data_n_1__6_,data_n_1__5_,data_n_1__4_,
  data_n_1__3_,data_n_1__2_,data_n_1__1_,data_n_1__0_,N10,N11,N13,N14;
  wire [1:1] valid_n;
  reg [0:0] valid_r;
  reg N12;
  reg [63:0] data_r;
  assign data_nn[63] = (N14)? data_o[63] : 
                       (N0)? data_n_1__63_ : 1'b0;
  assign N0 = yumi_cnt_i[0];
  assign data_nn[62] = (N14)? data_o[62] : 
                       (N0)? data_n_1__62_ : 1'b0;
  assign data_nn[61] = (N14)? data_o[61] : 
                       (N0)? data_n_1__61_ : 1'b0;
  assign data_nn[60] = (N14)? data_o[60] : 
                       (N0)? data_n_1__60_ : 1'b0;
  assign data_nn[59] = (N14)? data_o[59] : 
                       (N0)? data_n_1__59_ : 1'b0;
  assign data_nn[58] = (N14)? data_o[58] : 
                       (N0)? data_n_1__58_ : 1'b0;
  assign data_nn[57] = (N14)? data_o[57] : 
                       (N0)? data_n_1__57_ : 1'b0;
  assign data_nn[56] = (N14)? data_o[56] : 
                       (N0)? data_n_1__56_ : 1'b0;
  assign data_nn[55] = (N14)? data_o[55] : 
                       (N0)? data_n_1__55_ : 1'b0;
  assign data_nn[54] = (N14)? data_o[54] : 
                       (N0)? data_n_1__54_ : 1'b0;
  assign data_nn[53] = (N14)? data_o[53] : 
                       (N0)? data_n_1__53_ : 1'b0;
  assign data_nn[52] = (N14)? data_o[52] : 
                       (N0)? data_n_1__52_ : 1'b0;
  assign data_nn[51] = (N14)? data_o[51] : 
                       (N0)? data_n_1__51_ : 1'b0;
  assign data_nn[50] = (N14)? data_o[50] : 
                       (N0)? data_n_1__50_ : 1'b0;
  assign data_nn[49] = (N14)? data_o[49] : 
                       (N0)? data_n_1__49_ : 1'b0;
  assign data_nn[48] = (N14)? data_o[48] : 
                       (N0)? data_n_1__48_ : 1'b0;
  assign data_nn[47] = (N14)? data_o[47] : 
                       (N0)? data_n_1__47_ : 1'b0;
  assign data_nn[46] = (N14)? data_o[46] : 
                       (N0)? data_n_1__46_ : 1'b0;
  assign data_nn[45] = (N14)? data_o[45] : 
                       (N0)? data_n_1__45_ : 1'b0;
  assign data_nn[44] = (N14)? data_o[44] : 
                       (N0)? data_n_1__44_ : 1'b0;
  assign data_nn[43] = (N14)? data_o[43] : 
                       (N0)? data_n_1__43_ : 1'b0;
  assign data_nn[42] = (N14)? data_o[42] : 
                       (N0)? data_n_1__42_ : 1'b0;
  assign data_nn[41] = (N14)? data_o[41] : 
                       (N0)? data_n_1__41_ : 1'b0;
  assign data_nn[40] = (N14)? data_o[40] : 
                       (N0)? data_n_1__40_ : 1'b0;
  assign data_nn[39] = (N14)? data_o[39] : 
                       (N0)? data_n_1__39_ : 1'b0;
  assign data_nn[38] = (N14)? data_o[38] : 
                       (N0)? data_n_1__38_ : 1'b0;
  assign data_nn[37] = (N14)? data_o[37] : 
                       (N0)? data_n_1__37_ : 1'b0;
  assign data_nn[36] = (N14)? data_o[36] : 
                       (N0)? data_n_1__36_ : 1'b0;
  assign data_nn[35] = (N14)? data_o[35] : 
                       (N0)? data_n_1__35_ : 1'b0;
  assign data_nn[34] = (N14)? data_o[34] : 
                       (N0)? data_n_1__34_ : 1'b0;
  assign data_nn[33] = (N14)? data_o[33] : 
                       (N0)? data_n_1__33_ : 1'b0;
  assign data_nn[32] = (N14)? data_o[32] : 
                       (N0)? data_n_1__32_ : 1'b0;
  assign data_nn[31] = (N14)? data_o[31] : 
                       (N0)? data_n_1__31_ : 1'b0;
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
  assign { data_o[0:0], data_o[1:1], data_o[2:2], data_o[3:3], data_o[4:4], data_o[5:5], data_o[6:6], data_o[7:7], data_o[8:8], data_o[9:9], data_o[10:10], data_o[11:11], data_o[12:12], data_o[13:13], data_o[14:14], data_o[15:15], data_o[16:16], data_o[17:17], data_o[18:18], data_o[19:19], data_o[20:20], data_o[21:21], data_o[22:22], data_o[23:23], data_o[24:24], data_o[25:25], data_o[26:26], data_o[27:27], data_o[28:28], data_o[29:29], data_o[30:30], data_o[31:31], data_o[32:32], data_o[33:33], data_o[34:34], data_o[35:35], data_o[36:36], data_o[37:37], data_o[38:38], data_o[39:39], data_o[40:40], data_o[41:41], data_o[42:42], data_o[43:43], data_o[44:44], data_o[45:45], data_o[46:46], data_o[47:47], data_o[48:48], data_o[49:49], data_o[50:50], data_o[51:51], data_o[52:52], data_o[53:53], data_o[54:54], data_o[55:55], data_o[56:56], data_o[57:57], data_o[58:58], data_o[59:59], data_o[60:60], data_o[61:61], data_o[62:62], data_o[63:63] } = (N3)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31], data_i[32:32], data_i[33:33], data_i[34:34], data_i[35:35], data_i[36:36], data_i[37:37], data_i[38:38], data_i[39:39], data_i[40:40], data_i[41:41], data_i[42:42], data_i[43:43], data_i[44:44], data_i[45:45], data_i[46:46], data_i[47:47], data_i[48:48], data_i[49:49], data_i[50:50], data_i[51:51], data_i[52:52], data_i[53:53], data_i[54:54], data_i[55:55], data_i[56:56], data_i[57:57], data_i[58:58], data_i[59:59], data_i[60:60], data_i[61:61], data_i[62:62], data_i[63:63] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          (N4)? { data_r[0:0], data_r[1:1], data_r[2:2], data_r[3:3], data_r[4:4], data_r[5:5], data_r[6:6], data_r[7:7], data_r[8:8], data_r[9:9], data_r[10:10], data_r[11:11], data_r[12:12], data_r[13:13], data_r[14:14], data_r[15:15], data_r[16:16], data_r[17:17], data_r[18:18], data_r[19:19], data_r[20:20], data_r[21:21], data_r[22:22], data_r[23:23], data_r[24:24], data_r[25:25], data_r[26:26], data_r[27:27], data_r[28:28], data_r[29:29], data_r[30:30], data_r[31:31], data_r[32:32], data_r[33:33], data_r[34:34], data_r[35:35], data_r[36:36], data_r[37:37], data_r[38:38], data_r[39:39], data_r[40:40], data_r[41:41], data_r[42:42], data_r[43:43], data_r[44:44], data_r[45:45], data_r[46:46], data_r[47:47], data_r[48:48], data_r[49:49], data_r[50:50], data_r[51:51], data_r[52:52], data_r[53:53], data_r[54:54], data_r[55:55], data_r[56:56], data_r[57:57], data_r[58:58], data_r[59:59], data_r[60:60], data_r[61:61], data_r[62:62], data_r[63:63] } : 1'b0;
  assign N3 = N10;
  assign N4 = N12;
  assign { data_n_1__0_, data_n_1__1_, data_n_1__2_, data_n_1__3_, data_n_1__4_, data_n_1__5_, data_n_1__6_, data_n_1__7_, data_n_1__8_, data_n_1__9_, data_n_1__10_, data_n_1__11_, data_n_1__12_, data_n_1__13_, data_n_1__14_, data_n_1__15_, data_n_1__16_, data_n_1__17_, data_n_1__18_, data_n_1__19_, data_n_1__20_, data_n_1__21_, data_n_1__22_, data_n_1__23_, data_n_1__24_, data_n_1__25_, data_n_1__26_, data_n_1__27_, data_n_1__28_, data_n_1__29_, data_n_1__30_, data_n_1__31_, data_n_1__32_, data_n_1__33_, data_n_1__34_, data_n_1__35_, data_n_1__36_, data_n_1__37_, data_n_1__38_, data_n_1__39_, data_n_1__40_, data_n_1__41_, data_n_1__42_, data_n_1__43_, data_n_1__44_, data_n_1__45_, data_n_1__46_, data_n_1__47_, data_n_1__48_, data_n_1__49_, data_n_1__50_, data_n_1__51_, data_n_1__52_, data_n_1__53_, data_n_1__54_, data_n_1__55_, data_n_1__56_, data_n_1__57_, data_n_1__58_, data_n_1__59_, data_n_1__60_, data_n_1__61_, data_n_1__62_, data_n_1__63_ } = (N4)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31], data_i[32:32], data_i[33:33], data_i[34:34], data_i[35:35], data_i[36:36], data_i[37:37], data_i[38:38], data_i[39:39], data_i[40:40], data_i[41:41], data_i[42:42], data_i[43:43], data_i[44:44], data_i[45:45], data_i[46:46], data_i[47:47], data_i[48:48], data_i[49:49], data_i[50:50], data_i[51:51], data_i[52:52], data_i[53:53], data_i[54:54], data_i[55:55], data_i[56:56], data_i[57:57], data_i[58:58], data_i[59:59], data_i[60:60], data_i[61:61], data_i[62:62], data_i[63:63] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
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
      { data_r[63:0] } <= { data_nn[63:0] };
    end 
  end


endmodule



module bsg_counter_clear_up_max_val_p7_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [2:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14;
  reg [2:0] count_o;
  assign { N8, N7, N6 } = { N14, N13, N12 } + up_i;
  assign { N11, N10, N9 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                            (N1)? { N8, N7, N6 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign { N14, N13, N12 } = count_o * N4;
  assign N2 = ~reset_i;
  assign N3 = N2;
  assign N4 = ~clear_i;
  assign N5 = N3 & N4;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_o[2:0] } <= { N11, N10, N9 };
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

  input [1:0] tag_i;
  input [4:0] axi_addr_i;
  input [255:0] dma_data_i;
  input [3:0] dma_data_v_i;
  output [3:0] dma_data_yumi_o;
  output [5:0] axi_awid_o;
  output [4:0] axi_awaddr_o;
  output [7:0] axi_awlen_o;
  output [2:0] axi_awsize_o;
  output [1:0] axi_awburst_o;
  output [3:0] axi_awcache_o;
  output [2:0] axi_awprot_o;
  output [63:0] axi_wdata_o;
  output [7:0] axi_wstrb_o;
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
  wire [3:0] dma_data_yumi_o,axi_awcache_o,cache_sel;
  wire [5:0] axi_awid_o;
  wire [4:0] axi_awaddr_o;
  wire [7:0] axi_awlen_o,axi_wstrb_o;
  wire [2:0] axi_awsize_o,axi_awprot_o,word_count_lo;
  wire [1:0] axi_awburst_o,tag_lo;
  wire [63:0] axi_wdata_o,sipo_data_li;
  wire yumi_o,axi_awlock_o,axi_awvalid_o,axi_wlast_o,axi_wvalid_o,axi_bready_o,N0,N1,
  N2,v_i,tag_fifo_v_lo,tag_fifo_yumi_li,N3,N4,N5,N6,N7,N8,sipo_ready_lo,sipo_v_li,
  N9,N10,N11,N12,N13,N14,N15,N16,word_clear_li,word_up_li,N17,N18,N19,N20,N21,N22,
  N23,N24,N25,N26,N27,N28,N29,N30,pop_word,N31,burst_clear_li,burst_up_li,N32,N33,
  N34,N35,N36,N37,N38,N39,N40,N41;
  wire [0:0] sipo_yumi_cnt_li,burst_count_lo;
  assign axi_bready_o = 1'b1;
  assign axi_wstrb_o[0] = 1'b1;
  assign axi_wstrb_o[1] = 1'b1;
  assign axi_wstrb_o[2] = 1'b1;
  assign axi_wstrb_o[3] = 1'b1;
  assign axi_wstrb_o[4] = 1'b1;
  assign axi_wstrb_o[5] = 1'b1;
  assign axi_wstrb_o[6] = 1'b1;
  assign axi_wstrb_o[7] = 1'b1;
  assign axi_awburst_o[0] = 1'b1;
  assign axi_awsize_o[0] = 1'b1;
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

  bsg_fifo_1r1w_small_width_p2_els_p4
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(yumi_o),
    .data_i(tag_i),
    .v_o(tag_fifo_v_lo),
    .data_o(tag_lo),
    .yumi_i(tag_fifo_yumi_li)
  );


  bsg_decode_with_v_num_out_p4
  demux
  (
    .i(tag_lo),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel)
  );

  assign sipo_data_li[63] = (N5)? dma_data_i[63] : 
                            (N7)? dma_data_i[127] : 
                            (N6)? dma_data_i[191] : 
                            (N8)? dma_data_i[255] : 1'b0;
  assign sipo_data_li[62] = (N5)? dma_data_i[62] : 
                            (N7)? dma_data_i[126] : 
                            (N6)? dma_data_i[190] : 
                            (N8)? dma_data_i[254] : 1'b0;
  assign sipo_data_li[61] = (N5)? dma_data_i[61] : 
                            (N7)? dma_data_i[125] : 
                            (N6)? dma_data_i[189] : 
                            (N8)? dma_data_i[253] : 1'b0;
  assign sipo_data_li[60] = (N5)? dma_data_i[60] : 
                            (N7)? dma_data_i[124] : 
                            (N6)? dma_data_i[188] : 
                            (N8)? dma_data_i[252] : 1'b0;
  assign sipo_data_li[59] = (N5)? dma_data_i[59] : 
                            (N7)? dma_data_i[123] : 
                            (N6)? dma_data_i[187] : 
                            (N8)? dma_data_i[251] : 1'b0;
  assign sipo_data_li[58] = (N5)? dma_data_i[58] : 
                            (N7)? dma_data_i[122] : 
                            (N6)? dma_data_i[186] : 
                            (N8)? dma_data_i[250] : 1'b0;
  assign sipo_data_li[57] = (N5)? dma_data_i[57] : 
                            (N7)? dma_data_i[121] : 
                            (N6)? dma_data_i[185] : 
                            (N8)? dma_data_i[249] : 1'b0;
  assign sipo_data_li[56] = (N5)? dma_data_i[56] : 
                            (N7)? dma_data_i[120] : 
                            (N6)? dma_data_i[184] : 
                            (N8)? dma_data_i[248] : 1'b0;
  assign sipo_data_li[55] = (N5)? dma_data_i[55] : 
                            (N7)? dma_data_i[119] : 
                            (N6)? dma_data_i[183] : 
                            (N8)? dma_data_i[247] : 1'b0;
  assign sipo_data_li[54] = (N5)? dma_data_i[54] : 
                            (N7)? dma_data_i[118] : 
                            (N6)? dma_data_i[182] : 
                            (N8)? dma_data_i[246] : 1'b0;
  assign sipo_data_li[53] = (N5)? dma_data_i[53] : 
                            (N7)? dma_data_i[117] : 
                            (N6)? dma_data_i[181] : 
                            (N8)? dma_data_i[245] : 1'b0;
  assign sipo_data_li[52] = (N5)? dma_data_i[52] : 
                            (N7)? dma_data_i[116] : 
                            (N6)? dma_data_i[180] : 
                            (N8)? dma_data_i[244] : 1'b0;
  assign sipo_data_li[51] = (N5)? dma_data_i[51] : 
                            (N7)? dma_data_i[115] : 
                            (N6)? dma_data_i[179] : 
                            (N8)? dma_data_i[243] : 1'b0;
  assign sipo_data_li[50] = (N5)? dma_data_i[50] : 
                            (N7)? dma_data_i[114] : 
                            (N6)? dma_data_i[178] : 
                            (N8)? dma_data_i[242] : 1'b0;
  assign sipo_data_li[49] = (N5)? dma_data_i[49] : 
                            (N7)? dma_data_i[113] : 
                            (N6)? dma_data_i[177] : 
                            (N8)? dma_data_i[241] : 1'b0;
  assign sipo_data_li[48] = (N5)? dma_data_i[48] : 
                            (N7)? dma_data_i[112] : 
                            (N6)? dma_data_i[176] : 
                            (N8)? dma_data_i[240] : 1'b0;
  assign sipo_data_li[47] = (N5)? dma_data_i[47] : 
                            (N7)? dma_data_i[111] : 
                            (N6)? dma_data_i[175] : 
                            (N8)? dma_data_i[239] : 1'b0;
  assign sipo_data_li[46] = (N5)? dma_data_i[46] : 
                            (N7)? dma_data_i[110] : 
                            (N6)? dma_data_i[174] : 
                            (N8)? dma_data_i[238] : 1'b0;
  assign sipo_data_li[45] = (N5)? dma_data_i[45] : 
                            (N7)? dma_data_i[109] : 
                            (N6)? dma_data_i[173] : 
                            (N8)? dma_data_i[237] : 1'b0;
  assign sipo_data_li[44] = (N5)? dma_data_i[44] : 
                            (N7)? dma_data_i[108] : 
                            (N6)? dma_data_i[172] : 
                            (N8)? dma_data_i[236] : 1'b0;
  assign sipo_data_li[43] = (N5)? dma_data_i[43] : 
                            (N7)? dma_data_i[107] : 
                            (N6)? dma_data_i[171] : 
                            (N8)? dma_data_i[235] : 1'b0;
  assign sipo_data_li[42] = (N5)? dma_data_i[42] : 
                            (N7)? dma_data_i[106] : 
                            (N6)? dma_data_i[170] : 
                            (N8)? dma_data_i[234] : 1'b0;
  assign sipo_data_li[41] = (N5)? dma_data_i[41] : 
                            (N7)? dma_data_i[105] : 
                            (N6)? dma_data_i[169] : 
                            (N8)? dma_data_i[233] : 1'b0;
  assign sipo_data_li[40] = (N5)? dma_data_i[40] : 
                            (N7)? dma_data_i[104] : 
                            (N6)? dma_data_i[168] : 
                            (N8)? dma_data_i[232] : 1'b0;
  assign sipo_data_li[39] = (N5)? dma_data_i[39] : 
                            (N7)? dma_data_i[103] : 
                            (N6)? dma_data_i[167] : 
                            (N8)? dma_data_i[231] : 1'b0;
  assign sipo_data_li[38] = (N5)? dma_data_i[38] : 
                            (N7)? dma_data_i[102] : 
                            (N6)? dma_data_i[166] : 
                            (N8)? dma_data_i[230] : 1'b0;
  assign sipo_data_li[37] = (N5)? dma_data_i[37] : 
                            (N7)? dma_data_i[101] : 
                            (N6)? dma_data_i[165] : 
                            (N8)? dma_data_i[229] : 1'b0;
  assign sipo_data_li[36] = (N5)? dma_data_i[36] : 
                            (N7)? dma_data_i[100] : 
                            (N6)? dma_data_i[164] : 
                            (N8)? dma_data_i[228] : 1'b0;
  assign sipo_data_li[35] = (N5)? dma_data_i[35] : 
                            (N7)? dma_data_i[99] : 
                            (N6)? dma_data_i[163] : 
                            (N8)? dma_data_i[227] : 1'b0;
  assign sipo_data_li[34] = (N5)? dma_data_i[34] : 
                            (N7)? dma_data_i[98] : 
                            (N6)? dma_data_i[162] : 
                            (N8)? dma_data_i[226] : 1'b0;
  assign sipo_data_li[33] = (N5)? dma_data_i[33] : 
                            (N7)? dma_data_i[97] : 
                            (N6)? dma_data_i[161] : 
                            (N8)? dma_data_i[225] : 1'b0;
  assign sipo_data_li[32] = (N5)? dma_data_i[32] : 
                            (N7)? dma_data_i[96] : 
                            (N6)? dma_data_i[160] : 
                            (N8)? dma_data_i[224] : 1'b0;
  assign sipo_data_li[31] = (N5)? dma_data_i[31] : 
                            (N7)? dma_data_i[95] : 
                            (N6)? dma_data_i[159] : 
                            (N8)? dma_data_i[223] : 1'b0;
  assign sipo_data_li[30] = (N5)? dma_data_i[30] : 
                            (N7)? dma_data_i[94] : 
                            (N6)? dma_data_i[158] : 
                            (N8)? dma_data_i[222] : 1'b0;
  assign sipo_data_li[29] = (N5)? dma_data_i[29] : 
                            (N7)? dma_data_i[93] : 
                            (N6)? dma_data_i[157] : 
                            (N8)? dma_data_i[221] : 1'b0;
  assign sipo_data_li[28] = (N5)? dma_data_i[28] : 
                            (N7)? dma_data_i[92] : 
                            (N6)? dma_data_i[156] : 
                            (N8)? dma_data_i[220] : 1'b0;
  assign sipo_data_li[27] = (N5)? dma_data_i[27] : 
                            (N7)? dma_data_i[91] : 
                            (N6)? dma_data_i[155] : 
                            (N8)? dma_data_i[219] : 1'b0;
  assign sipo_data_li[26] = (N5)? dma_data_i[26] : 
                            (N7)? dma_data_i[90] : 
                            (N6)? dma_data_i[154] : 
                            (N8)? dma_data_i[218] : 1'b0;
  assign sipo_data_li[25] = (N5)? dma_data_i[25] : 
                            (N7)? dma_data_i[89] : 
                            (N6)? dma_data_i[153] : 
                            (N8)? dma_data_i[217] : 1'b0;
  assign sipo_data_li[24] = (N5)? dma_data_i[24] : 
                            (N7)? dma_data_i[88] : 
                            (N6)? dma_data_i[152] : 
                            (N8)? dma_data_i[216] : 1'b0;
  assign sipo_data_li[23] = (N5)? dma_data_i[23] : 
                            (N7)? dma_data_i[87] : 
                            (N6)? dma_data_i[151] : 
                            (N8)? dma_data_i[215] : 1'b0;
  assign sipo_data_li[22] = (N5)? dma_data_i[22] : 
                            (N7)? dma_data_i[86] : 
                            (N6)? dma_data_i[150] : 
                            (N8)? dma_data_i[214] : 1'b0;
  assign sipo_data_li[21] = (N5)? dma_data_i[21] : 
                            (N7)? dma_data_i[85] : 
                            (N6)? dma_data_i[149] : 
                            (N8)? dma_data_i[213] : 1'b0;
  assign sipo_data_li[20] = (N5)? dma_data_i[20] : 
                            (N7)? dma_data_i[84] : 
                            (N6)? dma_data_i[148] : 
                            (N8)? dma_data_i[212] : 1'b0;
  assign sipo_data_li[19] = (N5)? dma_data_i[19] : 
                            (N7)? dma_data_i[83] : 
                            (N6)? dma_data_i[147] : 
                            (N8)? dma_data_i[211] : 1'b0;
  assign sipo_data_li[18] = (N5)? dma_data_i[18] : 
                            (N7)? dma_data_i[82] : 
                            (N6)? dma_data_i[146] : 
                            (N8)? dma_data_i[210] : 1'b0;
  assign sipo_data_li[17] = (N5)? dma_data_i[17] : 
                            (N7)? dma_data_i[81] : 
                            (N6)? dma_data_i[145] : 
                            (N8)? dma_data_i[209] : 1'b0;
  assign sipo_data_li[16] = (N5)? dma_data_i[16] : 
                            (N7)? dma_data_i[80] : 
                            (N6)? dma_data_i[144] : 
                            (N8)? dma_data_i[208] : 1'b0;
  assign sipo_data_li[15] = (N5)? dma_data_i[15] : 
                            (N7)? dma_data_i[79] : 
                            (N6)? dma_data_i[143] : 
                            (N8)? dma_data_i[207] : 1'b0;
  assign sipo_data_li[14] = (N5)? dma_data_i[14] : 
                            (N7)? dma_data_i[78] : 
                            (N6)? dma_data_i[142] : 
                            (N8)? dma_data_i[206] : 1'b0;
  assign sipo_data_li[13] = (N5)? dma_data_i[13] : 
                            (N7)? dma_data_i[77] : 
                            (N6)? dma_data_i[141] : 
                            (N8)? dma_data_i[205] : 1'b0;
  assign sipo_data_li[12] = (N5)? dma_data_i[12] : 
                            (N7)? dma_data_i[76] : 
                            (N6)? dma_data_i[140] : 
                            (N8)? dma_data_i[204] : 1'b0;
  assign sipo_data_li[11] = (N5)? dma_data_i[11] : 
                            (N7)? dma_data_i[75] : 
                            (N6)? dma_data_i[139] : 
                            (N8)? dma_data_i[203] : 1'b0;
  assign sipo_data_li[10] = (N5)? dma_data_i[10] : 
                            (N7)? dma_data_i[74] : 
                            (N6)? dma_data_i[138] : 
                            (N8)? dma_data_i[202] : 1'b0;
  assign sipo_data_li[9] = (N5)? dma_data_i[9] : 
                           (N7)? dma_data_i[73] : 
                           (N6)? dma_data_i[137] : 
                           (N8)? dma_data_i[201] : 1'b0;
  assign sipo_data_li[8] = (N5)? dma_data_i[8] : 
                           (N7)? dma_data_i[72] : 
                           (N6)? dma_data_i[136] : 
                           (N8)? dma_data_i[200] : 1'b0;
  assign sipo_data_li[7] = (N5)? dma_data_i[7] : 
                           (N7)? dma_data_i[71] : 
                           (N6)? dma_data_i[135] : 
                           (N8)? dma_data_i[199] : 1'b0;
  assign sipo_data_li[6] = (N5)? dma_data_i[6] : 
                           (N7)? dma_data_i[70] : 
                           (N6)? dma_data_i[134] : 
                           (N8)? dma_data_i[198] : 1'b0;
  assign sipo_data_li[5] = (N5)? dma_data_i[5] : 
                           (N7)? dma_data_i[69] : 
                           (N6)? dma_data_i[133] : 
                           (N8)? dma_data_i[197] : 1'b0;
  assign sipo_data_li[4] = (N5)? dma_data_i[4] : 
                           (N7)? dma_data_i[68] : 
                           (N6)? dma_data_i[132] : 
                           (N8)? dma_data_i[196] : 1'b0;
  assign sipo_data_li[3] = (N5)? dma_data_i[3] : 
                           (N7)? dma_data_i[67] : 
                           (N6)? dma_data_i[131] : 
                           (N8)? dma_data_i[195] : 1'b0;
  assign sipo_data_li[2] = (N5)? dma_data_i[2] : 
                           (N7)? dma_data_i[66] : 
                           (N6)? dma_data_i[130] : 
                           (N8)? dma_data_i[194] : 1'b0;
  assign sipo_data_li[1] = (N5)? dma_data_i[1] : 
                           (N7)? dma_data_i[65] : 
                           (N6)? dma_data_i[129] : 
                           (N8)? dma_data_i[193] : 1'b0;
  assign sipo_data_li[0] = (N5)? dma_data_i[0] : 
                           (N7)? dma_data_i[64] : 
                           (N6)? dma_data_i[128] : 
                           (N8)? dma_data_i[192] : 1'b0;

  bsg_serial_in_parallel_out_width_p64_els_p1
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

  assign N15 = (N11)? dma_data_v_i[0] : 
               (N13)? dma_data_v_i[1] : 
               (N12)? dma_data_v_i[2] : 
               (N14)? dma_data_v_i[3] : 1'b0;

  bsg_counter_clear_up_max_val_p7_init_val_p0
  word_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(word_clear_li),
    .up_i(word_up_li),
    .count_o(word_count_lo)
  );

  assign N23 = (N19)? dma_data_v_i[0] : 
               (N21)? dma_data_v_i[1] : 
               (N20)? dma_data_v_i[2] : 
               (N22)? dma_data_v_i[3] : 1'b0;
  assign N30 = (N26)? dma_data_yumi_o[0] : 
               (N28)? dma_data_yumi_o[1] : 
               (N27)? dma_data_yumi_o[2] : 
               (N29)? dma_data_yumi_o[3] : 1'b0;

  bsg_counter_clear_up_max_val_p0_init_val_p0
  burst_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(burst_clear_li),
    .up_i(burst_up_li),
    .count_o(burst_count_lo[0])
  );

  assign N34 = ~burst_count_lo[0];
  assign N35 = word_count_lo[1] & word_count_lo[2];
  assign N36 = word_count_lo[0] & N35;
  assign word_clear_li = (N0)? pop_word : 
                         (N31)? 1'b0 : 1'b0;
  assign N0 = N36;
  assign word_up_li = (N0)? 1'b0 : 
                      (N31)? pop_word : 1'b0;
  assign tag_fifo_yumi_li = (N0)? pop_word : 
                            (N31)? 1'b0 : 1'b0;
  assign burst_clear_li = (N1)? N32 : 
                          (N2)? 1'b0 : 1'b0;
  assign N1 = N34;
  assign N2 = burst_count_lo[0];
  assign burst_up_li = (N1)? 1'b0 : 
                       (N2)? N33 : 1'b0;
  assign axi_wlast_o = (N1)? axi_wvalid_o : 
                       (N2)? 1'b0 : 1'b0;
  assign yumi_o = v_i & axi_awready_i;
  assign N3 = ~tag_lo[0];
  assign N4 = ~tag_lo[1];
  assign N5 = N3 & N4;
  assign N6 = N3 & tag_lo[1];
  assign N7 = tag_lo[0] & N4;
  assign N8 = tag_lo[0] & tag_lo[1];
  assign dma_data_yumi_o[3] = N37 & sipo_ready_lo;
  assign N37 = cache_sel[3] & dma_data_v_i[3];
  assign dma_data_yumi_o[2] = N38 & sipo_ready_lo;
  assign N38 = cache_sel[2] & dma_data_v_i[2];
  assign dma_data_yumi_o[1] = N39 & sipo_ready_lo;
  assign N39 = cache_sel[1] & dma_data_v_i[1];
  assign dma_data_yumi_o[0] = N40 & sipo_ready_lo;
  assign N40 = cache_sel[0] & dma_data_v_i[0];
  assign N9 = ~tag_lo[0];
  assign N10 = ~tag_lo[1];
  assign N11 = N9 & N10;
  assign N12 = N9 & tag_lo[1];
  assign N13 = tag_lo[0] & N10;
  assign N14 = tag_lo[0] & tag_lo[1];
  assign sipo_v_li = tag_fifo_v_lo & N15;
  assign N16 = axi_wvalid_o & axi_wready_i;
  assign sipo_yumi_cnt_li[0] = N16;
  assign N17 = ~tag_lo[0];
  assign N18 = ~tag_lo[1];
  assign N19 = N17 & N18;
  assign N20 = N17 & tag_lo[1];
  assign N21 = tag_lo[0] & N18;
  assign N22 = tag_lo[0] & tag_lo[1];
  assign N24 = ~tag_lo[0];
  assign N25 = ~tag_lo[1];
  assign N26 = N24 & N25;
  assign N27 = N24 & tag_lo[1];
  assign N28 = tag_lo[0] & N25;
  assign N29 = tag_lo[0] & tag_lo[1];
  assign pop_word = N41 & tag_fifo_v_lo;
  assign N41 = N23 & N30;
  assign N31 = ~N36;
  assign N32 = axi_wvalid_o & axi_wready_i;
  assign N33 = axi_wvalid_o & axi_wready_i;

endmodule

