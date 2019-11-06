

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

  input [1:0] tag_i;
  input [255:0] dma_data_i;
  input [3:0] dma_data_v_i;
  output [3:0] dma_data_yumi_o;
  output [63:0] app_wdf_data_o;
  output [7:0] app_wdf_mask_o;
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



module bsg_circular_ptr_slots_p32_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [4:0] o;
  output [4:0] n_o;
  input clk;
  input reset_i;
  wire [4:0] n_o,genblk1_genblk1_ptr_r_p1;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10;
  reg [4:0] o;
  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign { N9, N8, N7, N6, N5 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                  (N1)? n_o : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign n_o = (N2)? genblk1_genblk1_ptr_r_p1 : 
               (N3)? o : 1'b0;
  assign N2 = add_i[0];
  assign N3 = N10;
  assign N4 = ~reset_i;
  assign N10 = ~add_i[0];

  always @(posedge clk) begin
    if(1'b1) begin
      { o[4:0] } <= { N9, N8, N7, N6, N5 };
    end 
  end


endmodule



module bsg_fifo_tracker_els_p32
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

  output [4:0] wptr_r_o;
  output [4:0] rptr_r_o;
  output [4:0] rptr_n_o;
  input clk_i;
  input reset_i;
  input enq_i;
  input deq_i;
  output full_o;
  output empty_o;
  wire [4:0] wptr_r_o,rptr_r_o,rptr_n_o;
  wire full_o,empty_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,equal_ptrs,SYNOPSYS_UNCONNECTED_1,
  SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,SYNOPSYS_UNCONNECTED_4,
  SYNOPSYS_UNCONNECTED_5;
  reg deq_r,enq_r;

  bsg_circular_ptr_slots_p32_max_add_p1
  rptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(deq_i),
    .o(rptr_r_o),
    .n_o(rptr_n_o)
  );


  bsg_circular_ptr_slots_p32_max_add_p1
  wptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(enq_i),
    .o(wptr_r_o),
    .n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5 })
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



module bsg_mem_1r1w_synth_width_p2_els_p32_read_write_same_addr_p0_harden_p0
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

  input [4:0] w_addr_i;
  input [1:0] w_data_i;
  input [4:0] r_addr_i;
  output [1:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [1:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,
  N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,
  N150,N151,N152,N153,N154,N155,N156;
  reg [63:0] mem;
  assign r_data_o[1] = (N43)? mem[1] : 
                       (N45)? mem[3] : 
                       (N47)? mem[5] : 
                       (N49)? mem[7] : 
                       (N51)? mem[9] : 
                       (N53)? mem[11] : 
                       (N55)? mem[13] : 
                       (N57)? mem[15] : 
                       (N59)? mem[17] : 
                       (N61)? mem[19] : 
                       (N63)? mem[21] : 
                       (N65)? mem[23] : 
                       (N67)? mem[25] : 
                       (N69)? mem[27] : 
                       (N71)? mem[29] : 
                       (N73)? mem[31] : 
                       (N44)? mem[33] : 
                       (N46)? mem[35] : 
                       (N48)? mem[37] : 
                       (N50)? mem[39] : 
                       (N52)? mem[41] : 
                       (N54)? mem[43] : 
                       (N56)? mem[45] : 
                       (N58)? mem[47] : 
                       (N60)? mem[49] : 
                       (N62)? mem[51] : 
                       (N64)? mem[53] : 
                       (N66)? mem[55] : 
                       (N68)? mem[57] : 
                       (N70)? mem[59] : 
                       (N72)? mem[61] : 
                       (N74)? mem[63] : 1'b0;
  assign r_data_o[0] = (N43)? mem[0] : 
                       (N45)? mem[2] : 
                       (N47)? mem[4] : 
                       (N49)? mem[6] : 
                       (N51)? mem[8] : 
                       (N53)? mem[10] : 
                       (N55)? mem[12] : 
                       (N57)? mem[14] : 
                       (N59)? mem[16] : 
                       (N61)? mem[18] : 
                       (N63)? mem[20] : 
                       (N65)? mem[22] : 
                       (N67)? mem[24] : 
                       (N69)? mem[26] : 
                       (N71)? mem[28] : 
                       (N73)? mem[30] : 
                       (N44)? mem[32] : 
                       (N46)? mem[34] : 
                       (N48)? mem[36] : 
                       (N50)? mem[38] : 
                       (N52)? mem[40] : 
                       (N54)? mem[42] : 
                       (N56)? mem[44] : 
                       (N58)? mem[46] : 
                       (N60)? mem[48] : 
                       (N62)? mem[50] : 
                       (N64)? mem[52] : 
                       (N66)? mem[54] : 
                       (N68)? mem[56] : 
                       (N70)? mem[58] : 
                       (N72)? mem[60] : 
                       (N74)? mem[62] : 1'b0;
  assign N140 = w_addr_i[3] & w_addr_i[4];
  assign N141 = N0 & w_addr_i[4];
  assign N0 = ~w_addr_i[3];
  assign N142 = w_addr_i[3] & N1;
  assign N1 = ~w_addr_i[4];
  assign N143 = N2 & N3;
  assign N2 = ~w_addr_i[3];
  assign N3 = ~w_addr_i[4];
  assign N144 = ~w_addr_i[2];
  assign N145 = w_addr_i[0] & w_addr_i[1];
  assign N146 = N4 & w_addr_i[1];
  assign N4 = ~w_addr_i[0];
  assign N147 = w_addr_i[0] & N5;
  assign N5 = ~w_addr_i[1];
  assign N148 = N6 & N7;
  assign N6 = ~w_addr_i[0];
  assign N7 = ~w_addr_i[1];
  assign N149 = w_addr_i[2] & N145;
  assign N150 = w_addr_i[2] & N146;
  assign N151 = w_addr_i[2] & N147;
  assign N152 = w_addr_i[2] & N148;
  assign N153 = N144 & N145;
  assign N154 = N144 & N146;
  assign N155 = N144 & N147;
  assign N156 = N144 & N148;
  assign N107 = N140 & N149;
  assign N106 = N140 & N150;
  assign N105 = N140 & N151;
  assign N104 = N140 & N152;
  assign N103 = N140 & N153;
  assign N102 = N140 & N154;
  assign N101 = N140 & N155;
  assign N100 = N140 & N156;
  assign N99 = N141 & N149;
  assign N98 = N141 & N150;
  assign N97 = N141 & N151;
  assign N96 = N141 & N152;
  assign N95 = N141 & N153;
  assign N94 = N141 & N154;
  assign N93 = N141 & N155;
  assign N92 = N141 & N156;
  assign N91 = N142 & N149;
  assign N90 = N142 & N150;
  assign N89 = N142 & N151;
  assign N88 = N142 & N152;
  assign N87 = N142 & N153;
  assign N86 = N142 & N154;
  assign N85 = N142 & N155;
  assign N84 = N142 & N156;
  assign N83 = N143 & N149;
  assign N82 = N143 & N150;
  assign N81 = N143 & N151;
  assign N80 = N143 & N152;
  assign N79 = N143 & N153;
  assign N78 = N143 & N154;
  assign N77 = N143 & N155;
  assign N76 = N143 & N156;
  assign { N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108 } = (N8)? { N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76 } : 
                                                                                                                                                                                                              (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N8 = w_v_i;
  assign N9 = N75;
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
  assign N25 = ~r_addr_i[3];
  assign N26 = N17 & N25;
  assign N27 = N17 & r_addr_i[3];
  assign N28 = N19 & N25;
  assign N29 = N19 & r_addr_i[3];
  assign N30 = N21 & N25;
  assign N31 = N21 & r_addr_i[3];
  assign N32 = N23 & N25;
  assign N33 = N23 & r_addr_i[3];
  assign N34 = N18 & N25;
  assign N35 = N18 & r_addr_i[3];
  assign N36 = N20 & N25;
  assign N37 = N20 & r_addr_i[3];
  assign N38 = N22 & N25;
  assign N39 = N22 & r_addr_i[3];
  assign N40 = N24 & N25;
  assign N41 = N24 & r_addr_i[3];
  assign N42 = ~r_addr_i[4];
  assign N43 = N26 & N42;
  assign N44 = N26 & r_addr_i[4];
  assign N45 = N28 & N42;
  assign N46 = N28 & r_addr_i[4];
  assign N47 = N30 & N42;
  assign N48 = N30 & r_addr_i[4];
  assign N49 = N32 & N42;
  assign N50 = N32 & r_addr_i[4];
  assign N51 = N34 & N42;
  assign N52 = N34 & r_addr_i[4];
  assign N53 = N36 & N42;
  assign N54 = N36 & r_addr_i[4];
  assign N55 = N38 & N42;
  assign N56 = N38 & r_addr_i[4];
  assign N57 = N40 & N42;
  assign N58 = N40 & r_addr_i[4];
  assign N59 = N27 & N42;
  assign N60 = N27 & r_addr_i[4];
  assign N61 = N29 & N42;
  assign N62 = N29 & r_addr_i[4];
  assign N63 = N31 & N42;
  assign N64 = N31 & r_addr_i[4];
  assign N65 = N33 & N42;
  assign N66 = N33 & r_addr_i[4];
  assign N67 = N35 & N42;
  assign N68 = N35 & r_addr_i[4];
  assign N69 = N37 & N42;
  assign N70 = N37 & r_addr_i[4];
  assign N71 = N39 & N42;
  assign N72 = N39 & r_addr_i[4];
  assign N73 = N41 & N42;
  assign N74 = N41 & r_addr_i[4];
  assign N75 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N139) begin
      { mem[63:62] } <= { w_data_i[1:0] };
    end 
    if(N138) begin
      { mem[61:60] } <= { w_data_i[1:0] };
    end 
    if(N137) begin
      { mem[59:58] } <= { w_data_i[1:0] };
    end 
    if(N136) begin
      { mem[57:56] } <= { w_data_i[1:0] };
    end 
    if(N135) begin
      { mem[55:54] } <= { w_data_i[1:0] };
    end 
    if(N134) begin
      { mem[53:52] } <= { w_data_i[1:0] };
    end 
    if(N133) begin
      { mem[51:50] } <= { w_data_i[1:0] };
    end 
    if(N132) begin
      { mem[49:48] } <= { w_data_i[1:0] };
    end 
    if(N131) begin
      { mem[47:46] } <= { w_data_i[1:0] };
    end 
    if(N130) begin
      { mem[45:44] } <= { w_data_i[1:0] };
    end 
    if(N129) begin
      { mem[43:42] } <= { w_data_i[1:0] };
    end 
    if(N128) begin
      { mem[41:40] } <= { w_data_i[1:0] };
    end 
    if(N127) begin
      { mem[39:38] } <= { w_data_i[1:0] };
    end 
    if(N126) begin
      { mem[37:36] } <= { w_data_i[1:0] };
    end 
    if(N125) begin
      { mem[35:34] } <= { w_data_i[1:0] };
    end 
    if(N124) begin
      { mem[33:32] } <= { w_data_i[1:0] };
    end 
    if(N123) begin
      { mem[31:30] } <= { w_data_i[1:0] };
    end 
    if(N122) begin
      { mem[29:28] } <= { w_data_i[1:0] };
    end 
    if(N121) begin
      { mem[27:26] } <= { w_data_i[1:0] };
    end 
    if(N120) begin
      { mem[25:24] } <= { w_data_i[1:0] };
    end 
    if(N119) begin
      { mem[23:22] } <= { w_data_i[1:0] };
    end 
    if(N118) begin
      { mem[21:20] } <= { w_data_i[1:0] };
    end 
    if(N117) begin
      { mem[19:18] } <= { w_data_i[1:0] };
    end 
    if(N116) begin
      { mem[17:16] } <= { w_data_i[1:0] };
    end 
    if(N115) begin
      { mem[15:14] } <= { w_data_i[1:0] };
    end 
    if(N114) begin
      { mem[13:12] } <= { w_data_i[1:0] };
    end 
    if(N113) begin
      { mem[11:10] } <= { w_data_i[1:0] };
    end 
    if(N112) begin
      { mem[9:8] } <= { w_data_i[1:0] };
    end 
    if(N111) begin
      { mem[7:6] } <= { w_data_i[1:0] };
    end 
    if(N110) begin
      { mem[5:4] } <= { w_data_i[1:0] };
    end 
    if(N109) begin
      { mem[3:2] } <= { w_data_i[1:0] };
    end 
    if(N108) begin
      { mem[1:0] } <= { w_data_i[1:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p2_els_p32_read_write_same_addr_p0
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

  input [4:0] w_addr_i;
  input [1:0] w_data_i;
  input [4:0] r_addr_i;
  output [1:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [1:0] r_data_o;

  bsg_mem_1r1w_synth_width_p2_els_p32_read_write_same_addr_p0_harden_p0
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



module bsg_fifo_1r1w_small_unhardened_width_p2_els_p32_ready_THEN_valid_p0
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
  wire ready_o,v_o,enque,full,empty,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,
  SYNOPSYS_UNCONNECTED_3,SYNOPSYS_UNCONNECTED_4,SYNOPSYS_UNCONNECTED_5;
  wire [4:0] wptr_r,rptr_r;

  bsg_fifo_tracker_els_p32
  ft
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .enq_i(enque),
    .deq_i(yumi_i),
    .wptr_r_o(wptr_r),
    .rptr_r_o(rptr_r),
    .rptr_n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5 }),
    .full_o(full),
    .empty_o(empty)
  );


  bsg_mem_1r1w_width_p2_els_p32_read_write_same_addr_p0
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



module bsg_fifo_1r1w_small_width_p2_els_p32
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

  bsg_fifo_1r1w_small_unhardened_width_p2_els_p32_ready_THEN_valid_p0
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

  input [1:0] tag_i;
  input [255:0] dma_data_i;
  input [3:0] dma_data_v_i;
  output [3:0] dma_data_yumi_o;
  output [63:0] app_wdf_data_o;
  output [7:0] app_wdf_mask_o;
  input clk_i;
  input reset_i;
  input v_i;
  input app_wdf_rdy_i;
  output ready_o;
  output app_wdf_wren_o;
  output app_wdf_end_o;
  wire [3:0] dma_data_yumi_o,cache_sel;
  wire [63:0] app_wdf_data_o;
  wire [7:0] app_wdf_mask_o;
  wire ready_o,app_wdf_wren_o,app_wdf_end_o,N0,N1,tag_fifo_v_lo,tag_fifo_yumi_li,N2,N3,
  N4,N5,N6,N7,N8,clear_li,up_li,take_word,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,
  N19;
  wire [1:0] tag_fifo_data_lo;
  wire [0:0] count_lo;
  assign app_wdf_mask_o[0] = 1'b0;
  assign app_wdf_mask_o[1] = 1'b0;
  assign app_wdf_mask_o[2] = 1'b0;
  assign app_wdf_mask_o[3] = 1'b0;
  assign app_wdf_mask_o[4] = 1'b0;
  assign app_wdf_mask_o[5] = 1'b0;
  assign app_wdf_mask_o[6] = 1'b0;
  assign app_wdf_mask_o[7] = 1'b0;

  bsg_fifo_1r1w_small_width_p2_els_p32
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_i(tag_i),
    .v_o(tag_fifo_v_lo),
    .data_o(tag_fifo_data_lo),
    .yumi_i(tag_fifo_yumi_li)
  );


  bsg_decode_with_v_num_out_p4
  demux
  (
    .i(tag_fifo_data_lo),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel)
  );

  assign N8 = (N4)? dma_data_v_i[0] : 
              (N6)? dma_data_v_i[1] : 
              (N5)? dma_data_v_i[2] : 
              (N7)? dma_data_v_i[3] : 1'b0;

  bsg_counter_clear_up_max_val_p0_init_val_p0
  word_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_li),
    .up_i(up_li),
    .count_o(count_lo[0])
  );

  assign app_wdf_data_o[63] = (N11)? dma_data_i[63] : 
                              (N13)? dma_data_i[127] : 
                              (N12)? dma_data_i[191] : 
                              (N14)? dma_data_i[255] : 1'b0;
  assign app_wdf_data_o[62] = (N11)? dma_data_i[62] : 
                              (N13)? dma_data_i[126] : 
                              (N12)? dma_data_i[190] : 
                              (N14)? dma_data_i[254] : 1'b0;
  assign app_wdf_data_o[61] = (N11)? dma_data_i[61] : 
                              (N13)? dma_data_i[125] : 
                              (N12)? dma_data_i[189] : 
                              (N14)? dma_data_i[253] : 1'b0;
  assign app_wdf_data_o[60] = (N11)? dma_data_i[60] : 
                              (N13)? dma_data_i[124] : 
                              (N12)? dma_data_i[188] : 
                              (N14)? dma_data_i[252] : 1'b0;
  assign app_wdf_data_o[59] = (N11)? dma_data_i[59] : 
                              (N13)? dma_data_i[123] : 
                              (N12)? dma_data_i[187] : 
                              (N14)? dma_data_i[251] : 1'b0;
  assign app_wdf_data_o[58] = (N11)? dma_data_i[58] : 
                              (N13)? dma_data_i[122] : 
                              (N12)? dma_data_i[186] : 
                              (N14)? dma_data_i[250] : 1'b0;
  assign app_wdf_data_o[57] = (N11)? dma_data_i[57] : 
                              (N13)? dma_data_i[121] : 
                              (N12)? dma_data_i[185] : 
                              (N14)? dma_data_i[249] : 1'b0;
  assign app_wdf_data_o[56] = (N11)? dma_data_i[56] : 
                              (N13)? dma_data_i[120] : 
                              (N12)? dma_data_i[184] : 
                              (N14)? dma_data_i[248] : 1'b0;
  assign app_wdf_data_o[55] = (N11)? dma_data_i[55] : 
                              (N13)? dma_data_i[119] : 
                              (N12)? dma_data_i[183] : 
                              (N14)? dma_data_i[247] : 1'b0;
  assign app_wdf_data_o[54] = (N11)? dma_data_i[54] : 
                              (N13)? dma_data_i[118] : 
                              (N12)? dma_data_i[182] : 
                              (N14)? dma_data_i[246] : 1'b0;
  assign app_wdf_data_o[53] = (N11)? dma_data_i[53] : 
                              (N13)? dma_data_i[117] : 
                              (N12)? dma_data_i[181] : 
                              (N14)? dma_data_i[245] : 1'b0;
  assign app_wdf_data_o[52] = (N11)? dma_data_i[52] : 
                              (N13)? dma_data_i[116] : 
                              (N12)? dma_data_i[180] : 
                              (N14)? dma_data_i[244] : 1'b0;
  assign app_wdf_data_o[51] = (N11)? dma_data_i[51] : 
                              (N13)? dma_data_i[115] : 
                              (N12)? dma_data_i[179] : 
                              (N14)? dma_data_i[243] : 1'b0;
  assign app_wdf_data_o[50] = (N11)? dma_data_i[50] : 
                              (N13)? dma_data_i[114] : 
                              (N12)? dma_data_i[178] : 
                              (N14)? dma_data_i[242] : 1'b0;
  assign app_wdf_data_o[49] = (N11)? dma_data_i[49] : 
                              (N13)? dma_data_i[113] : 
                              (N12)? dma_data_i[177] : 
                              (N14)? dma_data_i[241] : 1'b0;
  assign app_wdf_data_o[48] = (N11)? dma_data_i[48] : 
                              (N13)? dma_data_i[112] : 
                              (N12)? dma_data_i[176] : 
                              (N14)? dma_data_i[240] : 1'b0;
  assign app_wdf_data_o[47] = (N11)? dma_data_i[47] : 
                              (N13)? dma_data_i[111] : 
                              (N12)? dma_data_i[175] : 
                              (N14)? dma_data_i[239] : 1'b0;
  assign app_wdf_data_o[46] = (N11)? dma_data_i[46] : 
                              (N13)? dma_data_i[110] : 
                              (N12)? dma_data_i[174] : 
                              (N14)? dma_data_i[238] : 1'b0;
  assign app_wdf_data_o[45] = (N11)? dma_data_i[45] : 
                              (N13)? dma_data_i[109] : 
                              (N12)? dma_data_i[173] : 
                              (N14)? dma_data_i[237] : 1'b0;
  assign app_wdf_data_o[44] = (N11)? dma_data_i[44] : 
                              (N13)? dma_data_i[108] : 
                              (N12)? dma_data_i[172] : 
                              (N14)? dma_data_i[236] : 1'b0;
  assign app_wdf_data_o[43] = (N11)? dma_data_i[43] : 
                              (N13)? dma_data_i[107] : 
                              (N12)? dma_data_i[171] : 
                              (N14)? dma_data_i[235] : 1'b0;
  assign app_wdf_data_o[42] = (N11)? dma_data_i[42] : 
                              (N13)? dma_data_i[106] : 
                              (N12)? dma_data_i[170] : 
                              (N14)? dma_data_i[234] : 1'b0;
  assign app_wdf_data_o[41] = (N11)? dma_data_i[41] : 
                              (N13)? dma_data_i[105] : 
                              (N12)? dma_data_i[169] : 
                              (N14)? dma_data_i[233] : 1'b0;
  assign app_wdf_data_o[40] = (N11)? dma_data_i[40] : 
                              (N13)? dma_data_i[104] : 
                              (N12)? dma_data_i[168] : 
                              (N14)? dma_data_i[232] : 1'b0;
  assign app_wdf_data_o[39] = (N11)? dma_data_i[39] : 
                              (N13)? dma_data_i[103] : 
                              (N12)? dma_data_i[167] : 
                              (N14)? dma_data_i[231] : 1'b0;
  assign app_wdf_data_o[38] = (N11)? dma_data_i[38] : 
                              (N13)? dma_data_i[102] : 
                              (N12)? dma_data_i[166] : 
                              (N14)? dma_data_i[230] : 1'b0;
  assign app_wdf_data_o[37] = (N11)? dma_data_i[37] : 
                              (N13)? dma_data_i[101] : 
                              (N12)? dma_data_i[165] : 
                              (N14)? dma_data_i[229] : 1'b0;
  assign app_wdf_data_o[36] = (N11)? dma_data_i[36] : 
                              (N13)? dma_data_i[100] : 
                              (N12)? dma_data_i[164] : 
                              (N14)? dma_data_i[228] : 1'b0;
  assign app_wdf_data_o[35] = (N11)? dma_data_i[35] : 
                              (N13)? dma_data_i[99] : 
                              (N12)? dma_data_i[163] : 
                              (N14)? dma_data_i[227] : 1'b0;
  assign app_wdf_data_o[34] = (N11)? dma_data_i[34] : 
                              (N13)? dma_data_i[98] : 
                              (N12)? dma_data_i[162] : 
                              (N14)? dma_data_i[226] : 1'b0;
  assign app_wdf_data_o[33] = (N11)? dma_data_i[33] : 
                              (N13)? dma_data_i[97] : 
                              (N12)? dma_data_i[161] : 
                              (N14)? dma_data_i[225] : 1'b0;
  assign app_wdf_data_o[32] = (N11)? dma_data_i[32] : 
                              (N13)? dma_data_i[96] : 
                              (N12)? dma_data_i[160] : 
                              (N14)? dma_data_i[224] : 1'b0;
  assign app_wdf_data_o[31] = (N11)? dma_data_i[31] : 
                              (N13)? dma_data_i[95] : 
                              (N12)? dma_data_i[159] : 
                              (N14)? dma_data_i[223] : 1'b0;
  assign app_wdf_data_o[30] = (N11)? dma_data_i[30] : 
                              (N13)? dma_data_i[94] : 
                              (N12)? dma_data_i[158] : 
                              (N14)? dma_data_i[222] : 1'b0;
  assign app_wdf_data_o[29] = (N11)? dma_data_i[29] : 
                              (N13)? dma_data_i[93] : 
                              (N12)? dma_data_i[157] : 
                              (N14)? dma_data_i[221] : 1'b0;
  assign app_wdf_data_o[28] = (N11)? dma_data_i[28] : 
                              (N13)? dma_data_i[92] : 
                              (N12)? dma_data_i[156] : 
                              (N14)? dma_data_i[220] : 1'b0;
  assign app_wdf_data_o[27] = (N11)? dma_data_i[27] : 
                              (N13)? dma_data_i[91] : 
                              (N12)? dma_data_i[155] : 
                              (N14)? dma_data_i[219] : 1'b0;
  assign app_wdf_data_o[26] = (N11)? dma_data_i[26] : 
                              (N13)? dma_data_i[90] : 
                              (N12)? dma_data_i[154] : 
                              (N14)? dma_data_i[218] : 1'b0;
  assign app_wdf_data_o[25] = (N11)? dma_data_i[25] : 
                              (N13)? dma_data_i[89] : 
                              (N12)? dma_data_i[153] : 
                              (N14)? dma_data_i[217] : 1'b0;
  assign app_wdf_data_o[24] = (N11)? dma_data_i[24] : 
                              (N13)? dma_data_i[88] : 
                              (N12)? dma_data_i[152] : 
                              (N14)? dma_data_i[216] : 1'b0;
  assign app_wdf_data_o[23] = (N11)? dma_data_i[23] : 
                              (N13)? dma_data_i[87] : 
                              (N12)? dma_data_i[151] : 
                              (N14)? dma_data_i[215] : 1'b0;
  assign app_wdf_data_o[22] = (N11)? dma_data_i[22] : 
                              (N13)? dma_data_i[86] : 
                              (N12)? dma_data_i[150] : 
                              (N14)? dma_data_i[214] : 1'b0;
  assign app_wdf_data_o[21] = (N11)? dma_data_i[21] : 
                              (N13)? dma_data_i[85] : 
                              (N12)? dma_data_i[149] : 
                              (N14)? dma_data_i[213] : 1'b0;
  assign app_wdf_data_o[20] = (N11)? dma_data_i[20] : 
                              (N13)? dma_data_i[84] : 
                              (N12)? dma_data_i[148] : 
                              (N14)? dma_data_i[212] : 1'b0;
  assign app_wdf_data_o[19] = (N11)? dma_data_i[19] : 
                              (N13)? dma_data_i[83] : 
                              (N12)? dma_data_i[147] : 
                              (N14)? dma_data_i[211] : 1'b0;
  assign app_wdf_data_o[18] = (N11)? dma_data_i[18] : 
                              (N13)? dma_data_i[82] : 
                              (N12)? dma_data_i[146] : 
                              (N14)? dma_data_i[210] : 1'b0;
  assign app_wdf_data_o[17] = (N11)? dma_data_i[17] : 
                              (N13)? dma_data_i[81] : 
                              (N12)? dma_data_i[145] : 
                              (N14)? dma_data_i[209] : 1'b0;
  assign app_wdf_data_o[16] = (N11)? dma_data_i[16] : 
                              (N13)? dma_data_i[80] : 
                              (N12)? dma_data_i[144] : 
                              (N14)? dma_data_i[208] : 1'b0;
  assign app_wdf_data_o[15] = (N11)? dma_data_i[15] : 
                              (N13)? dma_data_i[79] : 
                              (N12)? dma_data_i[143] : 
                              (N14)? dma_data_i[207] : 1'b0;
  assign app_wdf_data_o[14] = (N11)? dma_data_i[14] : 
                              (N13)? dma_data_i[78] : 
                              (N12)? dma_data_i[142] : 
                              (N14)? dma_data_i[206] : 1'b0;
  assign app_wdf_data_o[13] = (N11)? dma_data_i[13] : 
                              (N13)? dma_data_i[77] : 
                              (N12)? dma_data_i[141] : 
                              (N14)? dma_data_i[205] : 1'b0;
  assign app_wdf_data_o[12] = (N11)? dma_data_i[12] : 
                              (N13)? dma_data_i[76] : 
                              (N12)? dma_data_i[140] : 
                              (N14)? dma_data_i[204] : 1'b0;
  assign app_wdf_data_o[11] = (N11)? dma_data_i[11] : 
                              (N13)? dma_data_i[75] : 
                              (N12)? dma_data_i[139] : 
                              (N14)? dma_data_i[203] : 1'b0;
  assign app_wdf_data_o[10] = (N11)? dma_data_i[10] : 
                              (N13)? dma_data_i[74] : 
                              (N12)? dma_data_i[138] : 
                              (N14)? dma_data_i[202] : 1'b0;
  assign app_wdf_data_o[9] = (N11)? dma_data_i[9] : 
                             (N13)? dma_data_i[73] : 
                             (N12)? dma_data_i[137] : 
                             (N14)? dma_data_i[201] : 1'b0;
  assign app_wdf_data_o[8] = (N11)? dma_data_i[8] : 
                             (N13)? dma_data_i[72] : 
                             (N12)? dma_data_i[136] : 
                             (N14)? dma_data_i[200] : 1'b0;
  assign app_wdf_data_o[7] = (N11)? dma_data_i[7] : 
                             (N13)? dma_data_i[71] : 
                             (N12)? dma_data_i[135] : 
                             (N14)? dma_data_i[199] : 1'b0;
  assign app_wdf_data_o[6] = (N11)? dma_data_i[6] : 
                             (N13)? dma_data_i[70] : 
                             (N12)? dma_data_i[134] : 
                             (N14)? dma_data_i[198] : 1'b0;
  assign app_wdf_data_o[5] = (N11)? dma_data_i[5] : 
                             (N13)? dma_data_i[69] : 
                             (N12)? dma_data_i[133] : 
                             (N14)? dma_data_i[197] : 1'b0;
  assign app_wdf_data_o[4] = (N11)? dma_data_i[4] : 
                             (N13)? dma_data_i[68] : 
                             (N12)? dma_data_i[132] : 
                             (N14)? dma_data_i[196] : 1'b0;
  assign app_wdf_data_o[3] = (N11)? dma_data_i[3] : 
                             (N13)? dma_data_i[67] : 
                             (N12)? dma_data_i[131] : 
                             (N14)? dma_data_i[195] : 1'b0;
  assign app_wdf_data_o[2] = (N11)? dma_data_i[2] : 
                             (N13)? dma_data_i[66] : 
                             (N12)? dma_data_i[130] : 
                             (N14)? dma_data_i[194] : 1'b0;
  assign app_wdf_data_o[1] = (N11)? dma_data_i[1] : 
                             (N13)? dma_data_i[65] : 
                             (N12)? dma_data_i[129] : 
                             (N14)? dma_data_i[193] : 1'b0;
  assign app_wdf_data_o[0] = (N11)? dma_data_i[0] : 
                             (N13)? dma_data_i[64] : 
                             (N12)? dma_data_i[128] : 
                             (N14)? dma_data_i[192] : 1'b0;
  assign N15 = ~count_lo[0];
  assign clear_li = (N0)? take_word : 
                    (N1)? 1'b0 : 1'b0;
  assign N0 = N15;
  assign N1 = count_lo[0];
  assign up_li = (N0)? 1'b0 : 
                 (N1)? take_word : 1'b0;
  assign app_wdf_end_o = (N0)? take_word : 
                         (N1)? 1'b0 : 1'b0;
  assign tag_fifo_yumi_li = (N0)? take_word : 
                            (N1)? 1'b0 : 1'b0;
  assign dma_data_yumi_o[3] = N16 & app_wdf_rdy_i;
  assign N16 = cache_sel[3] & dma_data_v_i[3];
  assign dma_data_yumi_o[2] = N17 & app_wdf_rdy_i;
  assign N17 = cache_sel[2] & dma_data_v_i[2];
  assign dma_data_yumi_o[1] = N18 & app_wdf_rdy_i;
  assign N18 = cache_sel[1] & dma_data_v_i[1];
  assign dma_data_yumi_o[0] = N19 & app_wdf_rdy_i;
  assign N19 = cache_sel[0] & dma_data_v_i[0];
  assign N2 = ~tag_fifo_data_lo[0];
  assign N3 = ~tag_fifo_data_lo[1];
  assign N4 = N2 & N3;
  assign N5 = N2 & tag_fifo_data_lo[1];
  assign N6 = tag_fifo_data_lo[0] & N3;
  assign N7 = tag_fifo_data_lo[0] & tag_fifo_data_lo[1];
  assign app_wdf_wren_o = tag_fifo_v_lo & N8;
  assign take_word = app_wdf_wren_o & app_wdf_rdy_i;
  assign N9 = ~tag_fifo_data_lo[0];
  assign N10 = ~tag_fifo_data_lo[1];
  assign N11 = N9 & N10;
  assign N12 = N9 & tag_fifo_data_lo[1];
  assign N13 = tag_fifo_data_lo[0] & N10;
  assign N14 = tag_fifo_data_lo[0] & tag_fifo_data_lo[1];

endmodule

