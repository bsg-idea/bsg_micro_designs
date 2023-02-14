

module top
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

  bsg_cache_to_axi_rx
  wrapper
  (
    .tag_i(tag_i),
    .axi_addr_i(axi_addr_i),
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
    .axi_rid_i(axi_rid_i),
    .axi_rdata_i(axi_rdata_i),
    .axi_rresp_i(axi_rresp_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .axi_arready_i(axi_arready_i),
    .axi_rlast_i(axi_rlast_i),
    .axi_rvalid_i(axi_rvalid_i),
    .yumi_o(yumi_o),
    .axi_arlock_o(axi_arlock_o),
    .axi_arvalid_o(axi_arvalid_o),
    .axi_rready_o(axi_rready_o)
  );


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



module bsg_cache_to_axi_rx
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

