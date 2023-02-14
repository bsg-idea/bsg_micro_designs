

module top
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

  bsg_cache_to_dram_ctrl_tx
  wrapper
  (
    .tag_i(tag_i),
    .dma_data_i(dma_data_i),
    .dma_data_v_i(dma_data_v_i),
    .dma_data_yumi_o(dma_data_yumi_o),
    .app_wdf_data_o(app_wdf_data_o),
    .app_wdf_mask_o(app_wdf_mask_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .app_wdf_rdy_i(app_wdf_rdy_i),
    .ready_o(ready_o),
    .app_wdf_wren_o(app_wdf_wren_o),
    .app_wdf_end_o(app_wdf_end_o)
  );


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
  wire [2:0] n_o,genblk1_genblk1_ptr_r_p1;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8;
  reg [2:0] o;
  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign { N7, N6, N5 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                          (N1)? n_o : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign n_o = (N2)? genblk1_genblk1_ptr_r_p1 : 
               (N3)? o : 1'b0;
  assign N2 = add_i[0];
  assign N3 = N8;
  assign N4 = ~reset_i;
  assign N8 = ~add_i[0];

  always @(posedge clk) begin
    if(1'b1) begin
      { o[2:0] } <= { N7, N6, N5 };
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
  wire full_o,empty_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,equal_ptrs,SYNOPSYS_UNCONNECTED_1,
  SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3;
  reg deq_r,enq_r;

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
    .n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3 })
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
  reg [7:0] mem;
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
      { mem[7:7] } <= { w_data_i[0:0] };
    end 
    if(N40) begin
      { mem[6:6] } <= { w_data_i[0:0] };
    end 
    if(N39) begin
      { mem[5:5] } <= { w_data_i[0:0] };
    end 
    if(N38) begin
      { mem[4:4] } <= { w_data_i[0:0] };
    end 
    if(N37) begin
      { mem[3:3] } <= { w_data_i[0:0] };
    end 
    if(N36) begin
      { mem[2:2] } <= { w_data_i[0:0] };
    end 
    if(N35) begin
      { mem[1:1] } <= { w_data_i[0:0] };
    end 
    if(N34) begin
      { mem[0:0] } <= { w_data_i[0:0] };
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
  wire ready_o,v_o,enque,full,empty,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,
  SYNOPSYS_UNCONNECTED_3;
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
    .rptr_n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3 }),
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



module bsg_cache_to_dram_ctrl_tx
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

