

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

