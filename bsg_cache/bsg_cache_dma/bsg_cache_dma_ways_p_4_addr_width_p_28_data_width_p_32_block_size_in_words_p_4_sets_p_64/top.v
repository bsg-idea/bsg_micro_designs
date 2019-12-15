

module top
(
  clk_i,
  reset_i,
  dma_cmd_i,
  dma_way_i,
  dma_addr_i,
  done_o,
  snoop_word_o,
  dma_pkt_o,
  dma_pkt_v_o,
  dma_pkt_yumi_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_ready_o,
  dma_data_o,
  dma_data_v_o,
  dma_data_yumi_i,
  data_mem_v_o,
  data_mem_w_o,
  data_mem_addr_o,
  data_mem_w_mask_o,
  data_mem_data_o,
  data_mem_data_i,
  dma_evict_o
);

  input [3:0] dma_cmd_i;
  input [1:0] dma_way_i;
  input [27:0] dma_addr_i;
  output [31:0] snoop_word_o;
  output [28:0] dma_pkt_o;
  input [31:0] dma_data_i;
  output [31:0] dma_data_o;
  output [7:0] data_mem_addr_o;
  output [15:0] data_mem_w_mask_o;
  output [127:0] data_mem_data_o;
  input [127:0] data_mem_data_i;
  input clk_i;
  input reset_i;
  input dma_pkt_yumi_i;
  input dma_data_v_i;
  input dma_data_yumi_i;
  output done_o;
  output dma_pkt_v_o;
  output dma_data_ready_o;
  output dma_data_v_o;
  output data_mem_v_o;
  output data_mem_w_o;
  output dma_evict_o;

  bsg_cache_dma
  wrapper
  (
    .dma_cmd_i(dma_cmd_i),
    .dma_way_i(dma_way_i),
    .dma_addr_i(dma_addr_i),
    .snoop_word_o(snoop_word_o),
    .dma_pkt_o(dma_pkt_o),
    .dma_data_i(dma_data_i),
    .dma_data_o(dma_data_o),
    .data_mem_addr_o(data_mem_addr_o),
    .data_mem_w_mask_o(data_mem_w_mask_o),
    .data_mem_data_o(data_mem_data_o),
    .data_mem_data_i(data_mem_data_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .dma_pkt_yumi_i(dma_pkt_yumi_i),
    .dma_data_v_i(dma_data_v_i),
    .dma_data_yumi_i(dma_data_yumi_i),
    .done_o(done_o),
    .dma_pkt_v_o(dma_pkt_v_o),
    .dma_data_ready_o(dma_data_ready_o),
    .dma_data_v_o(dma_data_v_o),
    .data_mem_v_o(data_mem_v_o),
    .data_mem_w_o(data_mem_w_o),
    .dma_evict_o(dma_evict_o)
  );


endmodule



module bsg_counter_clear_up_max_val_p4
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



module bsg_mem_1r1w_synth_width_p32_els_p4_read_write_same_addr_p0_harden_p0
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
  input [31:0] w_data_i;
  input [1:0] r_addr_i;
  output [31:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [31:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20;
  reg [127:0] mem;
  assign r_data_o[31] = (N8)? mem[31] : 
                        (N10)? mem[63] : 
                        (N9)? mem[95] : 
                        (N11)? mem[127] : 1'b0;
  assign r_data_o[30] = (N8)? mem[30] : 
                        (N10)? mem[62] : 
                        (N9)? mem[94] : 
                        (N11)? mem[126] : 1'b0;
  assign r_data_o[29] = (N8)? mem[29] : 
                        (N10)? mem[61] : 
                        (N9)? mem[93] : 
                        (N11)? mem[125] : 1'b0;
  assign r_data_o[28] = (N8)? mem[28] : 
                        (N10)? mem[60] : 
                        (N9)? mem[92] : 
                        (N11)? mem[124] : 1'b0;
  assign r_data_o[27] = (N8)? mem[27] : 
                        (N10)? mem[59] : 
                        (N9)? mem[91] : 
                        (N11)? mem[123] : 1'b0;
  assign r_data_o[26] = (N8)? mem[26] : 
                        (N10)? mem[58] : 
                        (N9)? mem[90] : 
                        (N11)? mem[122] : 1'b0;
  assign r_data_o[25] = (N8)? mem[25] : 
                        (N10)? mem[57] : 
                        (N9)? mem[89] : 
                        (N11)? mem[121] : 1'b0;
  assign r_data_o[24] = (N8)? mem[24] : 
                        (N10)? mem[56] : 
                        (N9)? mem[88] : 
                        (N11)? mem[120] : 1'b0;
  assign r_data_o[23] = (N8)? mem[23] : 
                        (N10)? mem[55] : 
                        (N9)? mem[87] : 
                        (N11)? mem[119] : 1'b0;
  assign r_data_o[22] = (N8)? mem[22] : 
                        (N10)? mem[54] : 
                        (N9)? mem[86] : 
                        (N11)? mem[118] : 1'b0;
  assign r_data_o[21] = (N8)? mem[21] : 
                        (N10)? mem[53] : 
                        (N9)? mem[85] : 
                        (N11)? mem[117] : 1'b0;
  assign r_data_o[20] = (N8)? mem[20] : 
                        (N10)? mem[52] : 
                        (N9)? mem[84] : 
                        (N11)? mem[116] : 1'b0;
  assign r_data_o[19] = (N8)? mem[19] : 
                        (N10)? mem[51] : 
                        (N9)? mem[83] : 
                        (N11)? mem[115] : 1'b0;
  assign r_data_o[18] = (N8)? mem[18] : 
                        (N10)? mem[50] : 
                        (N9)? mem[82] : 
                        (N11)? mem[114] : 1'b0;
  assign r_data_o[17] = (N8)? mem[17] : 
                        (N10)? mem[49] : 
                        (N9)? mem[81] : 
                        (N11)? mem[113] : 1'b0;
  assign r_data_o[16] = (N8)? mem[16] : 
                        (N10)? mem[48] : 
                        (N9)? mem[80] : 
                        (N11)? mem[112] : 1'b0;
  assign r_data_o[15] = (N8)? mem[15] : 
                        (N10)? mem[47] : 
                        (N9)? mem[79] : 
                        (N11)? mem[111] : 1'b0;
  assign r_data_o[14] = (N8)? mem[14] : 
                        (N10)? mem[46] : 
                        (N9)? mem[78] : 
                        (N11)? mem[110] : 1'b0;
  assign r_data_o[13] = (N8)? mem[13] : 
                        (N10)? mem[45] : 
                        (N9)? mem[77] : 
                        (N11)? mem[109] : 1'b0;
  assign r_data_o[12] = (N8)? mem[12] : 
                        (N10)? mem[44] : 
                        (N9)? mem[76] : 
                        (N11)? mem[108] : 1'b0;
  assign r_data_o[11] = (N8)? mem[11] : 
                        (N10)? mem[43] : 
                        (N9)? mem[75] : 
                        (N11)? mem[107] : 1'b0;
  assign r_data_o[10] = (N8)? mem[10] : 
                        (N10)? mem[42] : 
                        (N9)? mem[74] : 
                        (N11)? mem[106] : 1'b0;
  assign r_data_o[9] = (N8)? mem[9] : 
                       (N10)? mem[41] : 
                       (N9)? mem[73] : 
                       (N11)? mem[105] : 1'b0;
  assign r_data_o[8] = (N8)? mem[8] : 
                       (N10)? mem[40] : 
                       (N9)? mem[72] : 
                       (N11)? mem[104] : 1'b0;
  assign r_data_o[7] = (N8)? mem[7] : 
                       (N10)? mem[39] : 
                       (N9)? mem[71] : 
                       (N11)? mem[103] : 1'b0;
  assign r_data_o[6] = (N8)? mem[6] : 
                       (N10)? mem[38] : 
                       (N9)? mem[70] : 
                       (N11)? mem[102] : 1'b0;
  assign r_data_o[5] = (N8)? mem[5] : 
                       (N10)? mem[37] : 
                       (N9)? mem[69] : 
                       (N11)? mem[101] : 1'b0;
  assign r_data_o[4] = (N8)? mem[4] : 
                       (N10)? mem[36] : 
                       (N9)? mem[68] : 
                       (N11)? mem[100] : 1'b0;
  assign r_data_o[3] = (N8)? mem[3] : 
                       (N10)? mem[35] : 
                       (N9)? mem[67] : 
                       (N11)? mem[99] : 1'b0;
  assign r_data_o[2] = (N8)? mem[2] : 
                       (N10)? mem[34] : 
                       (N9)? mem[66] : 
                       (N11)? mem[98] : 1'b0;
  assign r_data_o[1] = (N8)? mem[1] : 
                       (N10)? mem[33] : 
                       (N9)? mem[65] : 
                       (N11)? mem[97] : 1'b0;
  assign r_data_o[0] = (N8)? mem[0] : 
                       (N10)? mem[32] : 
                       (N9)? mem[64] : 
                       (N11)? mem[96] : 1'b0;
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
      { mem[127:96] } <= { w_data_i[31:0] };
    end 
    if(N19) begin
      { mem[95:64] } <= { w_data_i[31:0] };
    end 
    if(N18) begin
      { mem[63:32] } <= { w_data_i[31:0] };
    end 
    if(N17) begin
      { mem[31:0] } <= { w_data_i[31:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p32_els_p4_read_write_same_addr_p0
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
  input [31:0] w_data_i;
  input [1:0] r_addr_i;
  output [31:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [31:0] r_data_o;

  bsg_mem_1r1w_synth_width_p32_els_p4_read_write_same_addr_p0_harden_p0
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



module bsg_fifo_1r1w_small_unhardened_width_p32_els_p4_ready_THEN_valid_p0
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

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [31:0] data_o;
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


  bsg_mem_1r1w_width_p32_els_p4_read_write_same_addr_p0
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



module bsg_fifo_1r1w_small_width_p32_els_p4
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

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [31:0] data_o;
  wire ready_o,v_o;

  bsg_fifo_1r1w_small_unhardened_width_p32_els_p4_ready_THEN_valid_p0
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



module bsg_mux_width_p32_els_p4
(
  data_i,
  sel_i,
  data_o
);

  input [127:0] data_i;
  input [1:0] sel_i;
  output [31:0] data_o;
  wire [31:0] data_o;
  wire N0,N1,N2,N3,N4,N5;
  assign data_o[31] = (N2)? data_i[31] : 
                      (N4)? data_i[63] : 
                      (N3)? data_i[95] : 
                      (N5)? data_i[127] : 1'b0;
  assign data_o[30] = (N2)? data_i[30] : 
                      (N4)? data_i[62] : 
                      (N3)? data_i[94] : 
                      (N5)? data_i[126] : 1'b0;
  assign data_o[29] = (N2)? data_i[29] : 
                      (N4)? data_i[61] : 
                      (N3)? data_i[93] : 
                      (N5)? data_i[125] : 1'b0;
  assign data_o[28] = (N2)? data_i[28] : 
                      (N4)? data_i[60] : 
                      (N3)? data_i[92] : 
                      (N5)? data_i[124] : 1'b0;
  assign data_o[27] = (N2)? data_i[27] : 
                      (N4)? data_i[59] : 
                      (N3)? data_i[91] : 
                      (N5)? data_i[123] : 1'b0;
  assign data_o[26] = (N2)? data_i[26] : 
                      (N4)? data_i[58] : 
                      (N3)? data_i[90] : 
                      (N5)? data_i[122] : 1'b0;
  assign data_o[25] = (N2)? data_i[25] : 
                      (N4)? data_i[57] : 
                      (N3)? data_i[89] : 
                      (N5)? data_i[121] : 1'b0;
  assign data_o[24] = (N2)? data_i[24] : 
                      (N4)? data_i[56] : 
                      (N3)? data_i[88] : 
                      (N5)? data_i[120] : 1'b0;
  assign data_o[23] = (N2)? data_i[23] : 
                      (N4)? data_i[55] : 
                      (N3)? data_i[87] : 
                      (N5)? data_i[119] : 1'b0;
  assign data_o[22] = (N2)? data_i[22] : 
                      (N4)? data_i[54] : 
                      (N3)? data_i[86] : 
                      (N5)? data_i[118] : 1'b0;
  assign data_o[21] = (N2)? data_i[21] : 
                      (N4)? data_i[53] : 
                      (N3)? data_i[85] : 
                      (N5)? data_i[117] : 1'b0;
  assign data_o[20] = (N2)? data_i[20] : 
                      (N4)? data_i[52] : 
                      (N3)? data_i[84] : 
                      (N5)? data_i[116] : 1'b0;
  assign data_o[19] = (N2)? data_i[19] : 
                      (N4)? data_i[51] : 
                      (N3)? data_i[83] : 
                      (N5)? data_i[115] : 1'b0;
  assign data_o[18] = (N2)? data_i[18] : 
                      (N4)? data_i[50] : 
                      (N3)? data_i[82] : 
                      (N5)? data_i[114] : 1'b0;
  assign data_o[17] = (N2)? data_i[17] : 
                      (N4)? data_i[49] : 
                      (N3)? data_i[81] : 
                      (N5)? data_i[113] : 1'b0;
  assign data_o[16] = (N2)? data_i[16] : 
                      (N4)? data_i[48] : 
                      (N3)? data_i[80] : 
                      (N5)? data_i[112] : 1'b0;
  assign data_o[15] = (N2)? data_i[15] : 
                      (N4)? data_i[47] : 
                      (N3)? data_i[79] : 
                      (N5)? data_i[111] : 1'b0;
  assign data_o[14] = (N2)? data_i[14] : 
                      (N4)? data_i[46] : 
                      (N3)? data_i[78] : 
                      (N5)? data_i[110] : 1'b0;
  assign data_o[13] = (N2)? data_i[13] : 
                      (N4)? data_i[45] : 
                      (N3)? data_i[77] : 
                      (N5)? data_i[109] : 1'b0;
  assign data_o[12] = (N2)? data_i[12] : 
                      (N4)? data_i[44] : 
                      (N3)? data_i[76] : 
                      (N5)? data_i[108] : 1'b0;
  assign data_o[11] = (N2)? data_i[11] : 
                      (N4)? data_i[43] : 
                      (N3)? data_i[75] : 
                      (N5)? data_i[107] : 1'b0;
  assign data_o[10] = (N2)? data_i[10] : 
                      (N4)? data_i[42] : 
                      (N3)? data_i[74] : 
                      (N5)? data_i[106] : 1'b0;
  assign data_o[9] = (N2)? data_i[9] : 
                     (N4)? data_i[41] : 
                     (N3)? data_i[73] : 
                     (N5)? data_i[105] : 1'b0;
  assign data_o[8] = (N2)? data_i[8] : 
                     (N4)? data_i[40] : 
                     (N3)? data_i[72] : 
                     (N5)? data_i[104] : 1'b0;
  assign data_o[7] = (N2)? data_i[7] : 
                     (N4)? data_i[39] : 
                     (N3)? data_i[71] : 
                     (N5)? data_i[103] : 1'b0;
  assign data_o[6] = (N2)? data_i[6] : 
                     (N4)? data_i[38] : 
                     (N3)? data_i[70] : 
                     (N5)? data_i[102] : 1'b0;
  assign data_o[5] = (N2)? data_i[5] : 
                     (N4)? data_i[37] : 
                     (N3)? data_i[69] : 
                     (N5)? data_i[101] : 1'b0;
  assign data_o[4] = (N2)? data_i[4] : 
                     (N4)? data_i[36] : 
                     (N3)? data_i[68] : 
                     (N5)? data_i[100] : 1'b0;
  assign data_o[3] = (N2)? data_i[3] : 
                     (N4)? data_i[35] : 
                     (N3)? data_i[67] : 
                     (N5)? data_i[99] : 1'b0;
  assign data_o[2] = (N2)? data_i[2] : 
                     (N4)? data_i[34] : 
                     (N3)? data_i[66] : 
                     (N5)? data_i[98] : 1'b0;
  assign data_o[1] = (N2)? data_i[1] : 
                     (N4)? data_i[33] : 
                     (N3)? data_i[65] : 
                     (N5)? data_i[97] : 1'b0;
  assign data_o[0] = (N2)? data_i[0] : 
                     (N4)? data_i[32] : 
                     (N3)? data_i[64] : 
                     (N5)? data_i[96] : 1'b0;
  assign N0 = ~sel_i[0];
  assign N1 = ~sel_i[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & sel_i[1];
  assign N4 = sel_i[0] & N1;
  assign N5 = sel_i[0] & sel_i[1];

endmodule



module bsg_cache_dma
(
  clk_i,
  reset_i,
  dma_cmd_i,
  dma_way_i,
  dma_addr_i,
  done_o,
  snoop_word_o,
  dma_pkt_o,
  dma_pkt_v_o,
  dma_pkt_yumi_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_ready_o,
  dma_data_o,
  dma_data_v_o,
  dma_data_yumi_i,
  data_mem_v_o,
  data_mem_w_o,
  data_mem_addr_o,
  data_mem_w_mask_o,
  data_mem_data_o,
  data_mem_data_i,
  dma_evict_o
);

  input [3:0] dma_cmd_i;
  input [1:0] dma_way_i;
  input [27:0] dma_addr_i;
  output [31:0] snoop_word_o;
  output [28:0] dma_pkt_o;
  input [31:0] dma_data_i;
  output [31:0] dma_data_o;
  output [7:0] data_mem_addr_o;
  output [15:0] data_mem_w_mask_o;
  output [127:0] data_mem_data_o;
  input [127:0] data_mem_data_i;
  input clk_i;
  input reset_i;
  input dma_pkt_yumi_i;
  input dma_data_v_i;
  input dma_data_yumi_i;
  output done_o;
  output dma_pkt_v_o;
  output dma_data_ready_o;
  output dma_data_v_o;
  output data_mem_v_o;
  output data_mem_w_o;
  output dma_evict_o;
  wire [28:0] dma_pkt_o;
  wire [31:0] dma_data_o,out_fifo_data_li;
  wire [7:0] data_mem_addr_o;
  wire [15:0] data_mem_w_mask_o;
  wire [127:0] data_mem_data_o;
  wire done_o,dma_pkt_v_o,dma_data_ready_o,dma_data_v_o,data_mem_v_o,data_mem_w_o,
  dma_evict_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,counter_clear,counter_up,in_fifo_v_lo,
  in_fifo_yumi_li,out_fifo_v_li,out_fifo_ready_lo,N11,N12,N13,N14,N15,N16,N17,N18,
  N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,
  N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,
  N59,N60,snoop_word_we,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,
  N75,N76;
  wire [2:2] counter_r;
  wire [1:0] dma_state_n;
  reg [31:0] snoop_word_o;
  reg [1:0] dma_state_r;
  assign dma_pkt_o[0] = 1'b0;
  assign dma_pkt_o[1] = 1'b0;
  assign dma_pkt_o[2] = 1'b0;
  assign dma_pkt_o[3] = 1'b0;
  assign dma_pkt_o[27] = dma_addr_i[27];
  assign dma_pkt_o[26] = dma_addr_i[26];
  assign dma_pkt_o[25] = dma_addr_i[25];
  assign dma_pkt_o[24] = dma_addr_i[24];
  assign dma_pkt_o[23] = dma_addr_i[23];
  assign dma_pkt_o[22] = dma_addr_i[22];
  assign dma_pkt_o[21] = dma_addr_i[21];
  assign dma_pkt_o[20] = dma_addr_i[20];
  assign dma_pkt_o[19] = dma_addr_i[19];
  assign dma_pkt_o[18] = dma_addr_i[18];
  assign dma_pkt_o[17] = dma_addr_i[17];
  assign dma_pkt_o[16] = dma_addr_i[16];
  assign dma_pkt_o[15] = dma_addr_i[15];
  assign dma_pkt_o[14] = dma_addr_i[14];
  assign dma_pkt_o[13] = dma_addr_i[13];
  assign dma_pkt_o[12] = dma_addr_i[12];
  assign dma_pkt_o[11] = dma_addr_i[11];
  assign dma_pkt_o[10] = dma_addr_i[10];
  assign data_mem_addr_o[7] = dma_addr_i[9];
  assign dma_pkt_o[9] = dma_addr_i[9];
  assign data_mem_addr_o[6] = dma_addr_i[8];
  assign dma_pkt_o[8] = dma_addr_i[8];
  assign data_mem_addr_o[5] = dma_addr_i[7];
  assign dma_pkt_o[7] = dma_addr_i[7];
  assign data_mem_addr_o[4] = dma_addr_i[6];
  assign dma_pkt_o[6] = dma_addr_i[6];
  assign data_mem_addr_o[3] = dma_addr_i[5];
  assign dma_pkt_o[5] = dma_addr_i[5];
  assign data_mem_addr_o[2] = dma_addr_i[4];
  assign dma_pkt_o[4] = dma_addr_i[4];
  assign data_mem_w_mask_o[12] = data_mem_w_mask_o[15];
  assign data_mem_w_mask_o[13] = data_mem_w_mask_o[15];
  assign data_mem_w_mask_o[14] = data_mem_w_mask_o[15];
  assign data_mem_w_mask_o[8] = data_mem_w_mask_o[11];
  assign data_mem_w_mask_o[9] = data_mem_w_mask_o[11];
  assign data_mem_w_mask_o[10] = data_mem_w_mask_o[11];
  assign data_mem_w_mask_o[4] = data_mem_w_mask_o[7];
  assign data_mem_w_mask_o[5] = data_mem_w_mask_o[7];
  assign data_mem_w_mask_o[6] = data_mem_w_mask_o[7];
  assign data_mem_w_mask_o[0] = data_mem_w_mask_o[3];
  assign data_mem_w_mask_o[1] = data_mem_w_mask_o[3];
  assign data_mem_w_mask_o[2] = data_mem_w_mask_o[3];
  assign data_mem_data_o[31] = data_mem_data_o[127];
  assign data_mem_data_o[63] = data_mem_data_o[127];
  assign data_mem_data_o[95] = data_mem_data_o[127];
  assign data_mem_data_o[30] = data_mem_data_o[126];
  assign data_mem_data_o[62] = data_mem_data_o[126];
  assign data_mem_data_o[94] = data_mem_data_o[126];
  assign data_mem_data_o[29] = data_mem_data_o[125];
  assign data_mem_data_o[61] = data_mem_data_o[125];
  assign data_mem_data_o[93] = data_mem_data_o[125];
  assign data_mem_data_o[28] = data_mem_data_o[124];
  assign data_mem_data_o[60] = data_mem_data_o[124];
  assign data_mem_data_o[92] = data_mem_data_o[124];
  assign data_mem_data_o[27] = data_mem_data_o[123];
  assign data_mem_data_o[59] = data_mem_data_o[123];
  assign data_mem_data_o[91] = data_mem_data_o[123];
  assign data_mem_data_o[26] = data_mem_data_o[122];
  assign data_mem_data_o[58] = data_mem_data_o[122];
  assign data_mem_data_o[90] = data_mem_data_o[122];
  assign data_mem_data_o[25] = data_mem_data_o[121];
  assign data_mem_data_o[57] = data_mem_data_o[121];
  assign data_mem_data_o[89] = data_mem_data_o[121];
  assign data_mem_data_o[24] = data_mem_data_o[120];
  assign data_mem_data_o[56] = data_mem_data_o[120];
  assign data_mem_data_o[88] = data_mem_data_o[120];
  assign data_mem_data_o[23] = data_mem_data_o[119];
  assign data_mem_data_o[55] = data_mem_data_o[119];
  assign data_mem_data_o[87] = data_mem_data_o[119];
  assign data_mem_data_o[22] = data_mem_data_o[118];
  assign data_mem_data_o[54] = data_mem_data_o[118];
  assign data_mem_data_o[86] = data_mem_data_o[118];
  assign data_mem_data_o[21] = data_mem_data_o[117];
  assign data_mem_data_o[53] = data_mem_data_o[117];
  assign data_mem_data_o[85] = data_mem_data_o[117];
  assign data_mem_data_o[20] = data_mem_data_o[116];
  assign data_mem_data_o[52] = data_mem_data_o[116];
  assign data_mem_data_o[84] = data_mem_data_o[116];
  assign data_mem_data_o[19] = data_mem_data_o[115];
  assign data_mem_data_o[51] = data_mem_data_o[115];
  assign data_mem_data_o[83] = data_mem_data_o[115];
  assign data_mem_data_o[18] = data_mem_data_o[114];
  assign data_mem_data_o[50] = data_mem_data_o[114];
  assign data_mem_data_o[82] = data_mem_data_o[114];
  assign data_mem_data_o[17] = data_mem_data_o[113];
  assign data_mem_data_o[49] = data_mem_data_o[113];
  assign data_mem_data_o[81] = data_mem_data_o[113];
  assign data_mem_data_o[16] = data_mem_data_o[112];
  assign data_mem_data_o[48] = data_mem_data_o[112];
  assign data_mem_data_o[80] = data_mem_data_o[112];
  assign data_mem_data_o[15] = data_mem_data_o[111];
  assign data_mem_data_o[47] = data_mem_data_o[111];
  assign data_mem_data_o[79] = data_mem_data_o[111];
  assign data_mem_data_o[14] = data_mem_data_o[110];
  assign data_mem_data_o[46] = data_mem_data_o[110];
  assign data_mem_data_o[78] = data_mem_data_o[110];
  assign data_mem_data_o[13] = data_mem_data_o[109];
  assign data_mem_data_o[45] = data_mem_data_o[109];
  assign data_mem_data_o[77] = data_mem_data_o[109];
  assign data_mem_data_o[12] = data_mem_data_o[108];
  assign data_mem_data_o[44] = data_mem_data_o[108];
  assign data_mem_data_o[76] = data_mem_data_o[108];
  assign data_mem_data_o[11] = data_mem_data_o[107];
  assign data_mem_data_o[43] = data_mem_data_o[107];
  assign data_mem_data_o[75] = data_mem_data_o[107];
  assign data_mem_data_o[10] = data_mem_data_o[106];
  assign data_mem_data_o[42] = data_mem_data_o[106];
  assign data_mem_data_o[74] = data_mem_data_o[106];
  assign data_mem_data_o[9] = data_mem_data_o[105];
  assign data_mem_data_o[41] = data_mem_data_o[105];
  assign data_mem_data_o[73] = data_mem_data_o[105];
  assign data_mem_data_o[8] = data_mem_data_o[104];
  assign data_mem_data_o[40] = data_mem_data_o[104];
  assign data_mem_data_o[72] = data_mem_data_o[104];
  assign data_mem_data_o[7] = data_mem_data_o[103];
  assign data_mem_data_o[39] = data_mem_data_o[103];
  assign data_mem_data_o[71] = data_mem_data_o[103];
  assign data_mem_data_o[6] = data_mem_data_o[102];
  assign data_mem_data_o[38] = data_mem_data_o[102];
  assign data_mem_data_o[70] = data_mem_data_o[102];
  assign data_mem_data_o[5] = data_mem_data_o[101];
  assign data_mem_data_o[37] = data_mem_data_o[101];
  assign data_mem_data_o[69] = data_mem_data_o[101];
  assign data_mem_data_o[4] = data_mem_data_o[100];
  assign data_mem_data_o[36] = data_mem_data_o[100];
  assign data_mem_data_o[68] = data_mem_data_o[100];
  assign data_mem_data_o[3] = data_mem_data_o[99];
  assign data_mem_data_o[35] = data_mem_data_o[99];
  assign data_mem_data_o[67] = data_mem_data_o[99];
  assign data_mem_data_o[2] = data_mem_data_o[98];
  assign data_mem_data_o[34] = data_mem_data_o[98];
  assign data_mem_data_o[66] = data_mem_data_o[98];
  assign data_mem_data_o[1] = data_mem_data_o[97];
  assign data_mem_data_o[33] = data_mem_data_o[97];
  assign data_mem_data_o[65] = data_mem_data_o[97];
  assign data_mem_data_o[0] = data_mem_data_o[96];
  assign data_mem_data_o[32] = data_mem_data_o[96];
  assign data_mem_data_o[64] = data_mem_data_o[96];

  bsg_counter_clear_up_max_val_p4
  dma_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(counter_clear),
    .up_i(counter_up),
    .count_o({ counter_r[2:2], data_mem_addr_o[1:0] })
  );


  bsg_fifo_1r1w_small_width_p32_els_p4
  in_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(dma_data_v_i),
    .ready_o(dma_data_ready_o),
    .data_i(dma_data_i),
    .v_o(in_fifo_v_lo),
    .data_o(data_mem_data_o[127:96]),
    .yumi_i(in_fifo_yumi_li)
  );


  bsg_two_fifo_width_p32
  out_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(out_fifo_ready_lo),
    .data_i(out_fifo_data_li),
    .v_i(out_fifo_v_li),
    .v_o(dma_data_v_o),
    .data_o(dma_data_o),
    .yumi_i(dma_data_yumi_i)
  );


  bsg_decode_num_out_p4
  dma_way_demux
  (
    .i(dma_way_i),
    .o({ data_mem_w_mask_o[15:15], data_mem_w_mask_o[11:11], data_mem_w_mask_o[7:7], data_mem_w_mask_o[3:3] })
  );


  bsg_mux_width_p32_els_p4
  write_data_mux
  (
    .data_i(data_mem_data_i),
    .sel_i(dma_way_i),
    .data_o(out_fifo_data_li)
  );

  assign N12 = N11 & N64;
  assign N13 = dma_state_r[1] | N64;
  assign N15 = N11 | dma_state_r[0];
  assign N17 = dma_state_r[1] & dma_state_r[0];
  assign N18 = dma_cmd_i[1] | N35;
  assign N19 = N21 | N18;
  assign N21 = dma_cmd_i[3] | dma_cmd_i[2];
  assign N22 = N34 | dma_cmd_i[0];
  assign N23 = N21 | N22;
  assign N25 = dma_cmd_i[3] | N33;
  assign N26 = N25 | N29;
  assign N28 = N32 | dma_cmd_i[2];
  assign N29 = dma_cmd_i[1] | dma_cmd_i[0];
  assign N30 = N28 | N29;
  assign N36 = N32 & N33;
  assign N37 = N34 & N35;
  assign N38 = N36 & N37;
  assign N60 = dma_addr_i[3:2] == data_mem_addr_o[1:0];
  assign N64 = ~dma_state_r[0];
  assign N65 = N64 | dma_state_r[1];
  assign N66 = ~N65;
  assign N67 = ~counter_r[2];
  assign N68 = data_mem_addr_o[1] | N67;
  assign N69 = data_mem_addr_o[0] | N68;
  assign N70 = ~N69;
  assign N71 = ~data_mem_addr_o[1];
  assign N72 = ~data_mem_addr_o[0];
  assign N73 = N71 | counter_r[2];
  assign N74 = N72 | N73;
  assign N75 = ~N74;
  assign N44 = (N0)? 1'b1 : 
               (N1)? 1'b1 : 
               (N2)? 1'b0 : 
               (N3)? 1'b0 : 
               (N4)? 1'b0 : 
               (N43)? 1'b0 : 1'b0;
  assign N0 = N20;
  assign N1 = N24;
  assign N2 = N27;
  assign N3 = N31;
  assign N4 = N38;
  assign N45 = (N0)? 1'b0 : 
               (N1)? 1'b1 : 
               (N2)? 1'b0 : 
               (N3)? 1'b0 : 
               (N4)? 1'b0 : 
               (N43)? 1'b0 : 1'b0;
  assign N46 = (N0)? dma_pkt_yumi_i : 
               (N1)? dma_pkt_yumi_i : 
               (N2)? 1'b0 : 
               (N3)? 1'b0 : 
               (N4)? 1'b0 : 
               (N43)? 1'b0 : 1'b0;
  assign N47 = (N0)? 1'b0 : 
               (N1)? 1'b0 : 
               (N2)? 1'b1 : 
               (N3)? 1'b1 : 
               (N4)? 1'b0 : 
               (N43)? 1'b0 : 1'b0;
  assign N48 = (N0)? 1'b0 : 
               (N1)? 1'b0 : 
               (N2)? 1'b0 : 
               (N3)? 1'b1 : 
               (N4)? 1'b0 : 
               (N43)? 1'b0 : 1'b0;
  assign N50 = ~N49;
  assign N55 = ~N54;
  assign counter_clear = (N5)? N47 : 
                         (N6)? N52 : 
                         (N7)? N57 : 
                         (N8)? 1'b0 : 1'b0;
  assign N5 = N12;
  assign N6 = N14;
  assign N7 = N16;
  assign N8 = N17;
  assign counter_up = (N5)? N48 : 
                      (N6)? N51 : 
                      (N7)? N56 : 
                      (N8)? 1'b0 : 1'b0;
  assign data_mem_v_o = (N5)? N48 : 
                        (N6)? in_fifo_v_lo : 
                        (N7)? N58 : 
                        (N8)? 1'b0 : 1'b0;
  assign dma_pkt_v_o = (N5)? N44 : 
                       (N6)? 1'b0 : 
                       (N7)? 1'b0 : 
                       (N8)? 1'b0 : 1'b0;
  assign dma_pkt_o[28] = (N5)? N45 : 
                         (N6)? 1'b0 : 
                         (N7)? 1'b0 : 
                         (N8)? 1'b0 : 1'b0;
  assign done_o = (N5)? N46 : 
                  (N6)? N53 : 
                  (N7)? N59 : 
                  (N8)? 1'b0 : 1'b0;
  assign dma_state_n = (N5)? { N31, N27 } : 
                       (N6)? { 1'b0, N50 } : 
                       (N7)? { N55, 1'b0 } : 
                       (N8)? { 1'b0, 1'b0 } : 1'b0;
  assign data_mem_w_o = (N5)? 1'b0 : 
                        (N6)? in_fifo_v_lo : 
                        (N7)? 1'b0 : 
                        (N8)? 1'b0 : 1'b0;
  assign in_fifo_yumi_li = (N5)? 1'b0 : 
                           (N6)? in_fifo_v_lo : 
                           (N7)? 1'b0 : 
                           (N8)? 1'b0 : 1'b0;
  assign out_fifo_v_li = (N5)? 1'b0 : 
                         (N6)? 1'b0 : 
                         (N7)? 1'b1 : 
                         (N8)? 1'b0 : 1'b0;
  assign dma_evict_o = (N5)? 1'b0 : 
                       (N6)? 1'b0 : 
                       (N7)? 1'b1 : 
                       (N8)? 1'b0 : 1'b0;
  assign N63 = (N9)? 1'b0 : 
               (N10)? snoop_word_we : 1'b0;
  assign N9 = N62;
  assign N10 = N61;
  assign N11 = ~dma_state_r[1];
  assign N14 = ~N13;
  assign N16 = ~N15;
  assign N20 = ~N19;
  assign N24 = ~N23;
  assign N27 = ~N26;
  assign N31 = ~N30;
  assign N32 = ~dma_cmd_i[3];
  assign N33 = ~dma_cmd_i[2];
  assign N34 = ~dma_cmd_i[1];
  assign N35 = ~dma_cmd_i[0];
  assign N39 = N24 | N20;
  assign N40 = N27 | N39;
  assign N41 = N31 | N40;
  assign N42 = N38 | N41;
  assign N43 = ~N42;
  assign N49 = N75 & in_fifo_v_lo;
  assign N51 = in_fifo_v_lo & N74;
  assign N52 = in_fifo_v_lo & N75;
  assign N53 = N75 & in_fifo_v_lo;
  assign N54 = N70 & out_fifo_ready_lo;
  assign N56 = out_fifo_ready_lo & N69;
  assign N57 = out_fifo_ready_lo & N70;
  assign N58 = out_fifo_ready_lo & N69;
  assign N59 = N70 & out_fifo_ready_lo;
  assign snoop_word_we = N76 & in_fifo_v_lo;
  assign N76 = N66 & N60;
  assign N61 = ~reset_i;
  assign N62 = reset_i;

  always @(posedge clk_i) begin
    if(N63) begin
      { snoop_word_o[31:0] } <= { data_mem_data_o[127:96] };
    end 
    if(reset_i) begin
      { dma_state_r[1:0] } <= { 1'b0, 1'b0 };
    end else if(1'b1) begin
      { dma_state_r[1:0] } <= { dma_state_n[1:0] };
    end 
  end


endmodule

