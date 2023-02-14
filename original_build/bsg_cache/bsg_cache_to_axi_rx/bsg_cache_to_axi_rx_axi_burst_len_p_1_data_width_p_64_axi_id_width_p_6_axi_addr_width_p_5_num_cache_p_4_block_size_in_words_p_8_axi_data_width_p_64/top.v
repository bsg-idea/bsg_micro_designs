

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

  input [1:0] tag_i;
  input [4:0] axi_addr_i;
  output [255:0] dma_data_o;
  output [3:0] dma_data_v_o;
  input [3:0] dma_data_ready_i;
  output [5:0] axi_arid_o;
  output [4:0] axi_araddr_o;
  output [7:0] axi_arlen_o;
  output [2:0] axi_arsize_o;
  output [1:0] axi_arburst_o;
  output [3:0] axi_arcache_o;
  output [2:0] axi_arprot_o;
  input [5:0] axi_rid_i;
  input [63:0] axi_rdata_i;
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



module bsg_mem_1r1w_synth_width_p64_els_p2_read_write_same_addr_p0_harden_p0
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
  input [63:0] w_data_i;
  input [0:0] r_addr_i;
  output [63:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [63:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [127:0] mem;
  assign r_data_o[63] = (N3)? mem[63] : 
                        (N0)? mem[127] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[62] = (N3)? mem[62] : 
                        (N0)? mem[126] : 1'b0;
  assign r_data_o[61] = (N3)? mem[61] : 
                        (N0)? mem[125] : 1'b0;
  assign r_data_o[60] = (N3)? mem[60] : 
                        (N0)? mem[124] : 1'b0;
  assign r_data_o[59] = (N3)? mem[59] : 
                        (N0)? mem[123] : 1'b0;
  assign r_data_o[58] = (N3)? mem[58] : 
                        (N0)? mem[122] : 1'b0;
  assign r_data_o[57] = (N3)? mem[57] : 
                        (N0)? mem[121] : 1'b0;
  assign r_data_o[56] = (N3)? mem[56] : 
                        (N0)? mem[120] : 1'b0;
  assign r_data_o[55] = (N3)? mem[55] : 
                        (N0)? mem[119] : 1'b0;
  assign r_data_o[54] = (N3)? mem[54] : 
                        (N0)? mem[118] : 1'b0;
  assign r_data_o[53] = (N3)? mem[53] : 
                        (N0)? mem[117] : 1'b0;
  assign r_data_o[52] = (N3)? mem[52] : 
                        (N0)? mem[116] : 1'b0;
  assign r_data_o[51] = (N3)? mem[51] : 
                        (N0)? mem[115] : 1'b0;
  assign r_data_o[50] = (N3)? mem[50] : 
                        (N0)? mem[114] : 1'b0;
  assign r_data_o[49] = (N3)? mem[49] : 
                        (N0)? mem[113] : 1'b0;
  assign r_data_o[48] = (N3)? mem[48] : 
                        (N0)? mem[112] : 1'b0;
  assign r_data_o[47] = (N3)? mem[47] : 
                        (N0)? mem[111] : 1'b0;
  assign r_data_o[46] = (N3)? mem[46] : 
                        (N0)? mem[110] : 1'b0;
  assign r_data_o[45] = (N3)? mem[45] : 
                        (N0)? mem[109] : 1'b0;
  assign r_data_o[44] = (N3)? mem[44] : 
                        (N0)? mem[108] : 1'b0;
  assign r_data_o[43] = (N3)? mem[43] : 
                        (N0)? mem[107] : 1'b0;
  assign r_data_o[42] = (N3)? mem[42] : 
                        (N0)? mem[106] : 1'b0;
  assign r_data_o[41] = (N3)? mem[41] : 
                        (N0)? mem[105] : 1'b0;
  assign r_data_o[40] = (N3)? mem[40] : 
                        (N0)? mem[104] : 1'b0;
  assign r_data_o[39] = (N3)? mem[39] : 
                        (N0)? mem[103] : 1'b0;
  assign r_data_o[38] = (N3)? mem[38] : 
                        (N0)? mem[102] : 1'b0;
  assign r_data_o[37] = (N3)? mem[37] : 
                        (N0)? mem[101] : 1'b0;
  assign r_data_o[36] = (N3)? mem[36] : 
                        (N0)? mem[100] : 1'b0;
  assign r_data_o[35] = (N3)? mem[35] : 
                        (N0)? mem[99] : 1'b0;
  assign r_data_o[34] = (N3)? mem[34] : 
                        (N0)? mem[98] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] : 
                        (N0)? mem[97] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] : 
                        (N0)? mem[96] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[95] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[94] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[93] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[92] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[91] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[90] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[89] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[88] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[87] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[86] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[85] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[84] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[83] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[82] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[81] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[80] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[79] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[78] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[77] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[76] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[75] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[74] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[73] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[72] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[71] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[70] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[69] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[68] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[67] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[66] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[65] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[64] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[127:64] } <= { w_data_i[63:0] };
    end 
    if(N7) begin
      { mem[63:0] } <= { w_data_i[63:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p64_els_p2_read_write_same_addr_p0
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
  input [63:0] w_data_i;
  input [0:0] r_addr_i;
  output [63:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [63:0] r_data_o;

  bsg_mem_1r1w_synth_width_p64_els_p2_read_write_same_addr_p0_harden_p0
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



module bsg_two_fifo_width_p64
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

  input [63:0] data_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [63:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p64_els_p2_read_write_same_addr_p0
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



module bsg_parallel_in_serial_out_width_p64_els_p1
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

  input [63:0] data_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input valid_i;
  input yumi_i;
  output ready_o;
  output valid_o;
  wire [63:0] data_o;
  wire ready_o,valid_o;

  bsg_two_fifo_width_p64
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

  input [1:0] tag_i;
  input [4:0] axi_addr_i;
  output [255:0] dma_data_o;
  output [3:0] dma_data_v_o;
  input [3:0] dma_data_ready_i;
  output [5:0] axi_arid_o;
  output [4:0] axi_araddr_o;
  output [7:0] axi_arlen_o;
  output [2:0] axi_arsize_o;
  output [1:0] axi_arburst_o;
  output [3:0] axi_arcache_o;
  output [2:0] axi_arprot_o;
  input [5:0] axi_rid_i;
  input [63:0] axi_rdata_i;
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
  wire [255:0] dma_data_o;
  wire [3:0] dma_data_v_o,axi_arcache_o,cache_sel;
  wire [5:0] axi_arid_o;
  wire [4:0] axi_araddr_o;
  wire [7:0] axi_arlen_o;
  wire [2:0] axi_arsize_o,axi_arprot_o,count_lo;
  wire [1:0] axi_arburst_o,tag_lo;
  wire yumi_o,axi_arlock_o,axi_arvalid_o,axi_rready_o,N0,v_i,tag_fifo_v_lo,
  tag_fifo_yumi_li,piso_v_lo,piso_yumi_li,counter_clear_li,counter_up_li,N1,N2,N3,N4,N5,N6,N7,
  N8,N9,N10,N11;
  assign axi_arburst_o[0] = 1'b1;
  assign axi_arsize_o[0] = 1'b1;
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
  assign dma_data_o[127] = dma_data_o[63];
  assign dma_data_o[191] = dma_data_o[63];
  assign dma_data_o[255] = dma_data_o[63];
  assign dma_data_o[126] = dma_data_o[62];
  assign dma_data_o[190] = dma_data_o[62];
  assign dma_data_o[254] = dma_data_o[62];
  assign dma_data_o[125] = dma_data_o[61];
  assign dma_data_o[189] = dma_data_o[61];
  assign dma_data_o[253] = dma_data_o[61];
  assign dma_data_o[124] = dma_data_o[60];
  assign dma_data_o[188] = dma_data_o[60];
  assign dma_data_o[252] = dma_data_o[60];
  assign dma_data_o[123] = dma_data_o[59];
  assign dma_data_o[187] = dma_data_o[59];
  assign dma_data_o[251] = dma_data_o[59];
  assign dma_data_o[122] = dma_data_o[58];
  assign dma_data_o[186] = dma_data_o[58];
  assign dma_data_o[250] = dma_data_o[58];
  assign dma_data_o[121] = dma_data_o[57];
  assign dma_data_o[185] = dma_data_o[57];
  assign dma_data_o[249] = dma_data_o[57];
  assign dma_data_o[120] = dma_data_o[56];
  assign dma_data_o[184] = dma_data_o[56];
  assign dma_data_o[248] = dma_data_o[56];
  assign dma_data_o[119] = dma_data_o[55];
  assign dma_data_o[183] = dma_data_o[55];
  assign dma_data_o[247] = dma_data_o[55];
  assign dma_data_o[118] = dma_data_o[54];
  assign dma_data_o[182] = dma_data_o[54];
  assign dma_data_o[246] = dma_data_o[54];
  assign dma_data_o[117] = dma_data_o[53];
  assign dma_data_o[181] = dma_data_o[53];
  assign dma_data_o[245] = dma_data_o[53];
  assign dma_data_o[116] = dma_data_o[52];
  assign dma_data_o[180] = dma_data_o[52];
  assign dma_data_o[244] = dma_data_o[52];
  assign dma_data_o[115] = dma_data_o[51];
  assign dma_data_o[179] = dma_data_o[51];
  assign dma_data_o[243] = dma_data_o[51];
  assign dma_data_o[114] = dma_data_o[50];
  assign dma_data_o[178] = dma_data_o[50];
  assign dma_data_o[242] = dma_data_o[50];
  assign dma_data_o[113] = dma_data_o[49];
  assign dma_data_o[177] = dma_data_o[49];
  assign dma_data_o[241] = dma_data_o[49];
  assign dma_data_o[112] = dma_data_o[48];
  assign dma_data_o[176] = dma_data_o[48];
  assign dma_data_o[240] = dma_data_o[48];
  assign dma_data_o[111] = dma_data_o[47];
  assign dma_data_o[175] = dma_data_o[47];
  assign dma_data_o[239] = dma_data_o[47];
  assign dma_data_o[110] = dma_data_o[46];
  assign dma_data_o[174] = dma_data_o[46];
  assign dma_data_o[238] = dma_data_o[46];
  assign dma_data_o[109] = dma_data_o[45];
  assign dma_data_o[173] = dma_data_o[45];
  assign dma_data_o[237] = dma_data_o[45];
  assign dma_data_o[108] = dma_data_o[44];
  assign dma_data_o[172] = dma_data_o[44];
  assign dma_data_o[236] = dma_data_o[44];
  assign dma_data_o[107] = dma_data_o[43];
  assign dma_data_o[171] = dma_data_o[43];
  assign dma_data_o[235] = dma_data_o[43];
  assign dma_data_o[106] = dma_data_o[42];
  assign dma_data_o[170] = dma_data_o[42];
  assign dma_data_o[234] = dma_data_o[42];
  assign dma_data_o[105] = dma_data_o[41];
  assign dma_data_o[169] = dma_data_o[41];
  assign dma_data_o[233] = dma_data_o[41];
  assign dma_data_o[104] = dma_data_o[40];
  assign dma_data_o[168] = dma_data_o[40];
  assign dma_data_o[232] = dma_data_o[40];
  assign dma_data_o[103] = dma_data_o[39];
  assign dma_data_o[167] = dma_data_o[39];
  assign dma_data_o[231] = dma_data_o[39];
  assign dma_data_o[102] = dma_data_o[38];
  assign dma_data_o[166] = dma_data_o[38];
  assign dma_data_o[230] = dma_data_o[38];
  assign dma_data_o[101] = dma_data_o[37];
  assign dma_data_o[165] = dma_data_o[37];
  assign dma_data_o[229] = dma_data_o[37];
  assign dma_data_o[100] = dma_data_o[36];
  assign dma_data_o[164] = dma_data_o[36];
  assign dma_data_o[228] = dma_data_o[36];
  assign dma_data_o[99] = dma_data_o[35];
  assign dma_data_o[163] = dma_data_o[35];
  assign dma_data_o[227] = dma_data_o[35];
  assign dma_data_o[98] = dma_data_o[34];
  assign dma_data_o[162] = dma_data_o[34];
  assign dma_data_o[226] = dma_data_o[34];
  assign dma_data_o[97] = dma_data_o[33];
  assign dma_data_o[161] = dma_data_o[33];
  assign dma_data_o[225] = dma_data_o[33];
  assign dma_data_o[96] = dma_data_o[32];
  assign dma_data_o[160] = dma_data_o[32];
  assign dma_data_o[224] = dma_data_o[32];
  assign dma_data_o[95] = dma_data_o[31];
  assign dma_data_o[159] = dma_data_o[31];
  assign dma_data_o[223] = dma_data_o[31];
  assign dma_data_o[94] = dma_data_o[30];
  assign dma_data_o[158] = dma_data_o[30];
  assign dma_data_o[222] = dma_data_o[30];
  assign dma_data_o[93] = dma_data_o[29];
  assign dma_data_o[157] = dma_data_o[29];
  assign dma_data_o[221] = dma_data_o[29];
  assign dma_data_o[92] = dma_data_o[28];
  assign dma_data_o[156] = dma_data_o[28];
  assign dma_data_o[220] = dma_data_o[28];
  assign dma_data_o[91] = dma_data_o[27];
  assign dma_data_o[155] = dma_data_o[27];
  assign dma_data_o[219] = dma_data_o[27];
  assign dma_data_o[90] = dma_data_o[26];
  assign dma_data_o[154] = dma_data_o[26];
  assign dma_data_o[218] = dma_data_o[26];
  assign dma_data_o[89] = dma_data_o[25];
  assign dma_data_o[153] = dma_data_o[25];
  assign dma_data_o[217] = dma_data_o[25];
  assign dma_data_o[88] = dma_data_o[24];
  assign dma_data_o[152] = dma_data_o[24];
  assign dma_data_o[216] = dma_data_o[24];
  assign dma_data_o[87] = dma_data_o[23];
  assign dma_data_o[151] = dma_data_o[23];
  assign dma_data_o[215] = dma_data_o[23];
  assign dma_data_o[86] = dma_data_o[22];
  assign dma_data_o[150] = dma_data_o[22];
  assign dma_data_o[214] = dma_data_o[22];
  assign dma_data_o[85] = dma_data_o[21];
  assign dma_data_o[149] = dma_data_o[21];
  assign dma_data_o[213] = dma_data_o[21];
  assign dma_data_o[84] = dma_data_o[20];
  assign dma_data_o[148] = dma_data_o[20];
  assign dma_data_o[212] = dma_data_o[20];
  assign dma_data_o[83] = dma_data_o[19];
  assign dma_data_o[147] = dma_data_o[19];
  assign dma_data_o[211] = dma_data_o[19];
  assign dma_data_o[82] = dma_data_o[18];
  assign dma_data_o[146] = dma_data_o[18];
  assign dma_data_o[210] = dma_data_o[18];
  assign dma_data_o[81] = dma_data_o[17];
  assign dma_data_o[145] = dma_data_o[17];
  assign dma_data_o[209] = dma_data_o[17];
  assign dma_data_o[80] = dma_data_o[16];
  assign dma_data_o[144] = dma_data_o[16];
  assign dma_data_o[208] = dma_data_o[16];
  assign dma_data_o[79] = dma_data_o[15];
  assign dma_data_o[143] = dma_data_o[15];
  assign dma_data_o[207] = dma_data_o[15];
  assign dma_data_o[78] = dma_data_o[14];
  assign dma_data_o[142] = dma_data_o[14];
  assign dma_data_o[206] = dma_data_o[14];
  assign dma_data_o[77] = dma_data_o[13];
  assign dma_data_o[141] = dma_data_o[13];
  assign dma_data_o[205] = dma_data_o[13];
  assign dma_data_o[76] = dma_data_o[12];
  assign dma_data_o[140] = dma_data_o[12];
  assign dma_data_o[204] = dma_data_o[12];
  assign dma_data_o[75] = dma_data_o[11];
  assign dma_data_o[139] = dma_data_o[11];
  assign dma_data_o[203] = dma_data_o[11];
  assign dma_data_o[74] = dma_data_o[10];
  assign dma_data_o[138] = dma_data_o[10];
  assign dma_data_o[202] = dma_data_o[10];
  assign dma_data_o[73] = dma_data_o[9];
  assign dma_data_o[137] = dma_data_o[9];
  assign dma_data_o[201] = dma_data_o[9];
  assign dma_data_o[72] = dma_data_o[8];
  assign dma_data_o[136] = dma_data_o[8];
  assign dma_data_o[200] = dma_data_o[8];
  assign dma_data_o[71] = dma_data_o[7];
  assign dma_data_o[135] = dma_data_o[7];
  assign dma_data_o[199] = dma_data_o[7];
  assign dma_data_o[70] = dma_data_o[6];
  assign dma_data_o[134] = dma_data_o[6];
  assign dma_data_o[198] = dma_data_o[6];
  assign dma_data_o[69] = dma_data_o[5];
  assign dma_data_o[133] = dma_data_o[5];
  assign dma_data_o[197] = dma_data_o[5];
  assign dma_data_o[68] = dma_data_o[4];
  assign dma_data_o[132] = dma_data_o[4];
  assign dma_data_o[196] = dma_data_o[4];
  assign dma_data_o[67] = dma_data_o[3];
  assign dma_data_o[131] = dma_data_o[3];
  assign dma_data_o[195] = dma_data_o[3];
  assign dma_data_o[66] = dma_data_o[2];
  assign dma_data_o[130] = dma_data_o[2];
  assign dma_data_o[194] = dma_data_o[2];
  assign dma_data_o[65] = dma_data_o[1];
  assign dma_data_o[129] = dma_data_o[1];
  assign dma_data_o[193] = dma_data_o[1];
  assign dma_data_o[64] = dma_data_o[0];
  assign dma_data_o[128] = dma_data_o[0];
  assign dma_data_o[192] = dma_data_o[0];
  assign axi_araddr_o[4] = axi_addr_i[4];
  assign axi_araddr_o[3] = axi_addr_i[3];
  assign axi_araddr_o[2] = axi_addr_i[2];
  assign axi_araddr_o[1] = axi_addr_i[1];
  assign axi_araddr_o[0] = axi_addr_i[0];
  assign axi_arvalid_o = v_i;

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


  bsg_parallel_in_serial_out_width_p64_els_p1
  piso
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .valid_i(axi_rvalid_i),
    .data_i(axi_rdata_i),
    .ready_o(axi_rready_o),
    .valid_o(piso_v_lo),
    .data_o(dma_data_o[63:0]),
    .yumi_i(piso_yumi_li)
  );


  bsg_decode_with_v_num_out_p4
  demux
  (
    .i(tag_lo),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel)
  );


  bsg_counter_clear_up_max_val_p7_init_val_p0
  counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(counter_clear_li),
    .up_i(counter_up_li),
    .count_o(count_lo)
  );

  assign N7 = (N3)? dma_data_ready_i[0] : 
              (N5)? dma_data_ready_i[1] : 
              (N4)? dma_data_ready_i[2] : 
              (N6)? dma_data_ready_i[3] : 1'b0;
  assign N9 = count_lo[1] & count_lo[2];
  assign N10 = count_lo[0] & N9;
  assign counter_clear_li = (N0)? piso_yumi_li : 
                            (N8)? 1'b0 : 1'b0;
  assign N0 = N10;
  assign counter_up_li = (N0)? 1'b0 : 
                         (N8)? piso_yumi_li : 1'b0;
  assign tag_fifo_yumi_li = (N0)? piso_yumi_li : 
                            (N8)? 1'b0 : 1'b0;
  assign yumi_o = v_i & axi_arready_i;
  assign dma_data_v_o[3] = cache_sel[3] & piso_v_lo;
  assign dma_data_v_o[2] = cache_sel[2] & piso_v_lo;
  assign dma_data_v_o[1] = cache_sel[1] & piso_v_lo;
  assign dma_data_v_o[0] = cache_sel[0] & piso_v_lo;
  assign N1 = ~tag_lo[0];
  assign N2 = ~tag_lo[1];
  assign N3 = N1 & N2;
  assign N4 = N1 & tag_lo[1];
  assign N5 = tag_lo[0] & N2;
  assign N6 = tag_lo[0] & tag_lo[1];
  assign piso_yumi_li = N11 & tag_fifo_v_lo;
  assign N11 = N7 & piso_v_lo;
  assign N8 = ~N10;

endmodule

