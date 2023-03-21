

module top
(
  clk_i,
  reset_i,
  dma_cmd_i,
  dma_way_i,
  dma_addr_i,
  done_o,
  track_data_we_i,
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
  track_miss_i,
  track_mem_data_i,
  dma_evict_o
);

  input [3:0] dma_cmd_i;
  input [0:0] dma_way_i;
  input [27:0] dma_addr_i;
  output [31:0] snoop_word_o;
  output [32:0] dma_pkt_o;
  input [31:0] dma_data_i;
  output [31:0] dma_data_o;
  output [7:0] data_mem_addr_o;
  output [7:0] data_mem_w_mask_o;
  output [63:0] data_mem_data_o;
  input [63:0] data_mem_data_i;
  input [7:0] track_mem_data_i;
  input clk_i;
  input reset_i;
  input track_data_we_i;
  input dma_pkt_yumi_i;
  input dma_data_v_i;
  input dma_data_yumi_i;
  input track_miss_i;
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
    .track_mem_data_i(track_mem_data_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .track_data_we_i(track_data_we_i),
    .dma_pkt_yumi_i(dma_pkt_yumi_i),
    .dma_data_v_i(dma_data_v_i),
    .dma_data_yumi_i(dma_data_yumi_i),
    .track_miss_i(track_miss_i),
    .done_o(done_o),
    .dma_pkt_v_o(dma_pkt_v_o),
    .dma_data_ready_o(dma_data_ready_o),
    .dma_data_v_o(dma_data_v_o),
    .data_mem_v_o(data_mem_v_o),
    .data_mem_w_o(data_mem_w_o),
    .dma_evict_o(dma_evict_o)
  );


endmodule



module bsg_counter_clear_up_4_0
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
  wire [2:0] count_o;
  wire N0,N1,N4,N5,N6,N8,N9,N10,N11,N12,N13,N14,N15,N2,N3,N7,N30,N16;
  reg count_o_2_sv2v_reg,count_o_1_sv2v_reg,count_o_0_sv2v_reg;
  assign count_o[2] = count_o_2_sv2v_reg;
  assign count_o[1] = count_o_1_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;
  assign N16 = reset_i | clear_i;
  assign { N8, N6, N5 } = count_o + 1'b1;
  assign N9 = (N0)? 1'b1 : 
              (N7)? 1'b1 : 
              (N3)? 1'b0 : 1'b0;
  assign N0 = clear_i;
  assign N11 = (N1)? 1'b1 : 
               (N30)? 1'b0 : 1'b0;
  assign N1 = up_i;
  assign N10 = (N0)? up_i : 
               (N7)? N5 : 1'b0;
  assign N4 = N15;
  assign N12 = ~reset_i;
  assign N13 = ~clear_i;
  assign N14 = N12 & N13;
  assign N15 = up_i & N14;
  assign N2 = up_i | clear_i;
  assign N3 = ~N2;
  assign N7 = up_i & N13;
  assign N30 = ~up_i;

  always @(posedge clk_i) begin
    if(N16) begin
      count_o_2_sv2v_reg <= 1'b0;
      count_o_1_sv2v_reg <= 1'b0;
    end else if(N11) begin
      count_o_2_sv2v_reg <= N8;
      count_o_1_sv2v_reg <= N6;
    end 
    if(reset_i) begin
      count_o_0_sv2v_reg <= 1'b0;
    end else if(N9) begin
      count_o_0_sv2v_reg <= N10;
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
  wire [1:0] o,n_o,\genblk1.genblk1.ptr_r_p1 ;
  wire N0,N1,N2;
  reg o_1_sv2v_reg,o_0_sv2v_reg;
  assign o[1] = o_1_sv2v_reg;
  assign o[0] = o_0_sv2v_reg;
  assign \genblk1.genblk1.ptr_r_p1  = o + 1'b1;
  assign n_o = (N0)? \genblk1.genblk1.ptr_r_p1  : 
               (N1)? o : 1'b0;
  assign N0 = add_i[0];
  assign N1 = N2;
  assign N2 = ~add_i[0];

  always @(posedge clk) begin
    if(reset_i) begin
      o_1_sv2v_reg <= 1'b0;
      o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_1_sv2v_reg <= n_o[1];
      o_0_sv2v_reg <= n_o[0];
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
  wire full_o,empty_o,enq_r,deq_r,N0,equal_ptrs,sv2v_dc_1,sv2v_dc_2;
  reg deq_r_sv2v_reg,enq_r_sv2v_reg;
  assign deq_r = deq_r_sv2v_reg;
  assign enq_r = enq_r_sv2v_reg;

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
    .n_o({ sv2v_dc_1, sv2v_dc_2 })
  );

  assign equal_ptrs = rptr_r_o == wptr_r_o;
  assign N0 = enq_i | deq_i;
  assign empty_o = equal_ptrs & deq_r;
  assign full_o = equal_ptrs & enq_r;

  always @(posedge clk_i) begin
    if(reset_i) begin
      deq_r_sv2v_reg <= 1'b1;
      enq_r_sv2v_reg <= 1'b0;
    end else if(N0) begin
      deq_r_sv2v_reg <= deq_i;
      enq_r_sv2v_reg <= enq_i;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p32_els_p4_read_write_same_addr_p0
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
  wire [127:0] \nz.mem ;
  reg \nz.mem_127_sv2v_reg ,\nz.mem_126_sv2v_reg ,\nz.mem_125_sv2v_reg ,
  \nz.mem_124_sv2v_reg ,\nz.mem_123_sv2v_reg ,\nz.mem_122_sv2v_reg ,\nz.mem_121_sv2v_reg ,
  \nz.mem_120_sv2v_reg ,\nz.mem_119_sv2v_reg ,\nz.mem_118_sv2v_reg ,
  \nz.mem_117_sv2v_reg ,\nz.mem_116_sv2v_reg ,\nz.mem_115_sv2v_reg ,\nz.mem_114_sv2v_reg ,
  \nz.mem_113_sv2v_reg ,\nz.mem_112_sv2v_reg ,\nz.mem_111_sv2v_reg ,\nz.mem_110_sv2v_reg ,
  \nz.mem_109_sv2v_reg ,\nz.mem_108_sv2v_reg ,\nz.mem_107_sv2v_reg ,
  \nz.mem_106_sv2v_reg ,\nz.mem_105_sv2v_reg ,\nz.mem_104_sv2v_reg ,\nz.mem_103_sv2v_reg ,
  \nz.mem_102_sv2v_reg ,\nz.mem_101_sv2v_reg ,\nz.mem_100_sv2v_reg ,\nz.mem_99_sv2v_reg ,
  \nz.mem_98_sv2v_reg ,\nz.mem_97_sv2v_reg ,\nz.mem_96_sv2v_reg ,
  \nz.mem_95_sv2v_reg ,\nz.mem_94_sv2v_reg ,\nz.mem_93_sv2v_reg ,\nz.mem_92_sv2v_reg ,
  \nz.mem_91_sv2v_reg ,\nz.mem_90_sv2v_reg ,\nz.mem_89_sv2v_reg ,\nz.mem_88_sv2v_reg ,
  \nz.mem_87_sv2v_reg ,\nz.mem_86_sv2v_reg ,\nz.mem_85_sv2v_reg ,\nz.mem_84_sv2v_reg ,
  \nz.mem_83_sv2v_reg ,\nz.mem_82_sv2v_reg ,\nz.mem_81_sv2v_reg ,\nz.mem_80_sv2v_reg ,
  \nz.mem_79_sv2v_reg ,\nz.mem_78_sv2v_reg ,\nz.mem_77_sv2v_reg ,\nz.mem_76_sv2v_reg ,
  \nz.mem_75_sv2v_reg ,\nz.mem_74_sv2v_reg ,\nz.mem_73_sv2v_reg ,
  \nz.mem_72_sv2v_reg ,\nz.mem_71_sv2v_reg ,\nz.mem_70_sv2v_reg ,\nz.mem_69_sv2v_reg ,
  \nz.mem_68_sv2v_reg ,\nz.mem_67_sv2v_reg ,\nz.mem_66_sv2v_reg ,\nz.mem_65_sv2v_reg ,
  \nz.mem_64_sv2v_reg ,\nz.mem_63_sv2v_reg ,\nz.mem_62_sv2v_reg ,\nz.mem_61_sv2v_reg ,
  \nz.mem_60_sv2v_reg ,\nz.mem_59_sv2v_reg ,\nz.mem_58_sv2v_reg ,\nz.mem_57_sv2v_reg ,
  \nz.mem_56_sv2v_reg ,\nz.mem_55_sv2v_reg ,\nz.mem_54_sv2v_reg ,
  \nz.mem_53_sv2v_reg ,\nz.mem_52_sv2v_reg ,\nz.mem_51_sv2v_reg ,\nz.mem_50_sv2v_reg ,
  \nz.mem_49_sv2v_reg ,\nz.mem_48_sv2v_reg ,\nz.mem_47_sv2v_reg ,\nz.mem_46_sv2v_reg ,
  \nz.mem_45_sv2v_reg ,\nz.mem_44_sv2v_reg ,\nz.mem_43_sv2v_reg ,\nz.mem_42_sv2v_reg ,
  \nz.mem_41_sv2v_reg ,\nz.mem_40_sv2v_reg ,\nz.mem_39_sv2v_reg ,\nz.mem_38_sv2v_reg ,
  \nz.mem_37_sv2v_reg ,\nz.mem_36_sv2v_reg ,\nz.mem_35_sv2v_reg ,
  \nz.mem_34_sv2v_reg ,\nz.mem_33_sv2v_reg ,\nz.mem_32_sv2v_reg ,\nz.mem_31_sv2v_reg ,
  \nz.mem_30_sv2v_reg ,\nz.mem_29_sv2v_reg ,\nz.mem_28_sv2v_reg ,\nz.mem_27_sv2v_reg ,
  \nz.mem_26_sv2v_reg ,\nz.mem_25_sv2v_reg ,\nz.mem_24_sv2v_reg ,\nz.mem_23_sv2v_reg ,
  \nz.mem_22_sv2v_reg ,\nz.mem_21_sv2v_reg ,\nz.mem_20_sv2v_reg ,\nz.mem_19_sv2v_reg ,
  \nz.mem_18_sv2v_reg ,\nz.mem_17_sv2v_reg ,\nz.mem_16_sv2v_reg ,
  \nz.mem_15_sv2v_reg ,\nz.mem_14_sv2v_reg ,\nz.mem_13_sv2v_reg ,\nz.mem_12_sv2v_reg ,
  \nz.mem_11_sv2v_reg ,\nz.mem_10_sv2v_reg ,\nz.mem_9_sv2v_reg ,\nz.mem_8_sv2v_reg ,
  \nz.mem_7_sv2v_reg ,\nz.mem_6_sv2v_reg ,\nz.mem_5_sv2v_reg ,\nz.mem_4_sv2v_reg ,
  \nz.mem_3_sv2v_reg ,\nz.mem_2_sv2v_reg ,\nz.mem_1_sv2v_reg ,\nz.mem_0_sv2v_reg ;
  assign \nz.mem [127] = \nz.mem_127_sv2v_reg ;
  assign \nz.mem [126] = \nz.mem_126_sv2v_reg ;
  assign \nz.mem [125] = \nz.mem_125_sv2v_reg ;
  assign \nz.mem [124] = \nz.mem_124_sv2v_reg ;
  assign \nz.mem [123] = \nz.mem_123_sv2v_reg ;
  assign \nz.mem [122] = \nz.mem_122_sv2v_reg ;
  assign \nz.mem [121] = \nz.mem_121_sv2v_reg ;
  assign \nz.mem [120] = \nz.mem_120_sv2v_reg ;
  assign \nz.mem [119] = \nz.mem_119_sv2v_reg ;
  assign \nz.mem [118] = \nz.mem_118_sv2v_reg ;
  assign \nz.mem [117] = \nz.mem_117_sv2v_reg ;
  assign \nz.mem [116] = \nz.mem_116_sv2v_reg ;
  assign \nz.mem [115] = \nz.mem_115_sv2v_reg ;
  assign \nz.mem [114] = \nz.mem_114_sv2v_reg ;
  assign \nz.mem [113] = \nz.mem_113_sv2v_reg ;
  assign \nz.mem [112] = \nz.mem_112_sv2v_reg ;
  assign \nz.mem [111] = \nz.mem_111_sv2v_reg ;
  assign \nz.mem [110] = \nz.mem_110_sv2v_reg ;
  assign \nz.mem [109] = \nz.mem_109_sv2v_reg ;
  assign \nz.mem [108] = \nz.mem_108_sv2v_reg ;
  assign \nz.mem [107] = \nz.mem_107_sv2v_reg ;
  assign \nz.mem [106] = \nz.mem_106_sv2v_reg ;
  assign \nz.mem [105] = \nz.mem_105_sv2v_reg ;
  assign \nz.mem [104] = \nz.mem_104_sv2v_reg ;
  assign \nz.mem [103] = \nz.mem_103_sv2v_reg ;
  assign \nz.mem [102] = \nz.mem_102_sv2v_reg ;
  assign \nz.mem [101] = \nz.mem_101_sv2v_reg ;
  assign \nz.mem [100] = \nz.mem_100_sv2v_reg ;
  assign \nz.mem [99] = \nz.mem_99_sv2v_reg ;
  assign \nz.mem [98] = \nz.mem_98_sv2v_reg ;
  assign \nz.mem [97] = \nz.mem_97_sv2v_reg ;
  assign \nz.mem [96] = \nz.mem_96_sv2v_reg ;
  assign \nz.mem [95] = \nz.mem_95_sv2v_reg ;
  assign \nz.mem [94] = \nz.mem_94_sv2v_reg ;
  assign \nz.mem [93] = \nz.mem_93_sv2v_reg ;
  assign \nz.mem [92] = \nz.mem_92_sv2v_reg ;
  assign \nz.mem [91] = \nz.mem_91_sv2v_reg ;
  assign \nz.mem [90] = \nz.mem_90_sv2v_reg ;
  assign \nz.mem [89] = \nz.mem_89_sv2v_reg ;
  assign \nz.mem [88] = \nz.mem_88_sv2v_reg ;
  assign \nz.mem [87] = \nz.mem_87_sv2v_reg ;
  assign \nz.mem [86] = \nz.mem_86_sv2v_reg ;
  assign \nz.mem [85] = \nz.mem_85_sv2v_reg ;
  assign \nz.mem [84] = \nz.mem_84_sv2v_reg ;
  assign \nz.mem [83] = \nz.mem_83_sv2v_reg ;
  assign \nz.mem [82] = \nz.mem_82_sv2v_reg ;
  assign \nz.mem [81] = \nz.mem_81_sv2v_reg ;
  assign \nz.mem [80] = \nz.mem_80_sv2v_reg ;
  assign \nz.mem [79] = \nz.mem_79_sv2v_reg ;
  assign \nz.mem [78] = \nz.mem_78_sv2v_reg ;
  assign \nz.mem [77] = \nz.mem_77_sv2v_reg ;
  assign \nz.mem [76] = \nz.mem_76_sv2v_reg ;
  assign \nz.mem [75] = \nz.mem_75_sv2v_reg ;
  assign \nz.mem [74] = \nz.mem_74_sv2v_reg ;
  assign \nz.mem [73] = \nz.mem_73_sv2v_reg ;
  assign \nz.mem [72] = \nz.mem_72_sv2v_reg ;
  assign \nz.mem [71] = \nz.mem_71_sv2v_reg ;
  assign \nz.mem [70] = \nz.mem_70_sv2v_reg ;
  assign \nz.mem [69] = \nz.mem_69_sv2v_reg ;
  assign \nz.mem [68] = \nz.mem_68_sv2v_reg ;
  assign \nz.mem [67] = \nz.mem_67_sv2v_reg ;
  assign \nz.mem [66] = \nz.mem_66_sv2v_reg ;
  assign \nz.mem [65] = \nz.mem_65_sv2v_reg ;
  assign \nz.mem [64] = \nz.mem_64_sv2v_reg ;
  assign \nz.mem [63] = \nz.mem_63_sv2v_reg ;
  assign \nz.mem [62] = \nz.mem_62_sv2v_reg ;
  assign \nz.mem [61] = \nz.mem_61_sv2v_reg ;
  assign \nz.mem [60] = \nz.mem_60_sv2v_reg ;
  assign \nz.mem [59] = \nz.mem_59_sv2v_reg ;
  assign \nz.mem [58] = \nz.mem_58_sv2v_reg ;
  assign \nz.mem [57] = \nz.mem_57_sv2v_reg ;
  assign \nz.mem [56] = \nz.mem_56_sv2v_reg ;
  assign \nz.mem [55] = \nz.mem_55_sv2v_reg ;
  assign \nz.mem [54] = \nz.mem_54_sv2v_reg ;
  assign \nz.mem [53] = \nz.mem_53_sv2v_reg ;
  assign \nz.mem [52] = \nz.mem_52_sv2v_reg ;
  assign \nz.mem [51] = \nz.mem_51_sv2v_reg ;
  assign \nz.mem [50] = \nz.mem_50_sv2v_reg ;
  assign \nz.mem [49] = \nz.mem_49_sv2v_reg ;
  assign \nz.mem [48] = \nz.mem_48_sv2v_reg ;
  assign \nz.mem [47] = \nz.mem_47_sv2v_reg ;
  assign \nz.mem [46] = \nz.mem_46_sv2v_reg ;
  assign \nz.mem [45] = \nz.mem_45_sv2v_reg ;
  assign \nz.mem [44] = \nz.mem_44_sv2v_reg ;
  assign \nz.mem [43] = \nz.mem_43_sv2v_reg ;
  assign \nz.mem [42] = \nz.mem_42_sv2v_reg ;
  assign \nz.mem [41] = \nz.mem_41_sv2v_reg ;
  assign \nz.mem [40] = \nz.mem_40_sv2v_reg ;
  assign \nz.mem [39] = \nz.mem_39_sv2v_reg ;
  assign \nz.mem [38] = \nz.mem_38_sv2v_reg ;
  assign \nz.mem [37] = \nz.mem_37_sv2v_reg ;
  assign \nz.mem [36] = \nz.mem_36_sv2v_reg ;
  assign \nz.mem [35] = \nz.mem_35_sv2v_reg ;
  assign \nz.mem [34] = \nz.mem_34_sv2v_reg ;
  assign \nz.mem [33] = \nz.mem_33_sv2v_reg ;
  assign \nz.mem [32] = \nz.mem_32_sv2v_reg ;
  assign \nz.mem [31] = \nz.mem_31_sv2v_reg ;
  assign \nz.mem [30] = \nz.mem_30_sv2v_reg ;
  assign \nz.mem [29] = \nz.mem_29_sv2v_reg ;
  assign \nz.mem [28] = \nz.mem_28_sv2v_reg ;
  assign \nz.mem [27] = \nz.mem_27_sv2v_reg ;
  assign \nz.mem [26] = \nz.mem_26_sv2v_reg ;
  assign \nz.mem [25] = \nz.mem_25_sv2v_reg ;
  assign \nz.mem [24] = \nz.mem_24_sv2v_reg ;
  assign \nz.mem [23] = \nz.mem_23_sv2v_reg ;
  assign \nz.mem [22] = \nz.mem_22_sv2v_reg ;
  assign \nz.mem [21] = \nz.mem_21_sv2v_reg ;
  assign \nz.mem [20] = \nz.mem_20_sv2v_reg ;
  assign \nz.mem [19] = \nz.mem_19_sv2v_reg ;
  assign \nz.mem [18] = \nz.mem_18_sv2v_reg ;
  assign \nz.mem [17] = \nz.mem_17_sv2v_reg ;
  assign \nz.mem [16] = \nz.mem_16_sv2v_reg ;
  assign \nz.mem [15] = \nz.mem_15_sv2v_reg ;
  assign \nz.mem [14] = \nz.mem_14_sv2v_reg ;
  assign \nz.mem [13] = \nz.mem_13_sv2v_reg ;
  assign \nz.mem [12] = \nz.mem_12_sv2v_reg ;
  assign \nz.mem [11] = \nz.mem_11_sv2v_reg ;
  assign \nz.mem [10] = \nz.mem_10_sv2v_reg ;
  assign \nz.mem [9] = \nz.mem_9_sv2v_reg ;
  assign \nz.mem [8] = \nz.mem_8_sv2v_reg ;
  assign \nz.mem [7] = \nz.mem_7_sv2v_reg ;
  assign \nz.mem [6] = \nz.mem_6_sv2v_reg ;
  assign \nz.mem [5] = \nz.mem_5_sv2v_reg ;
  assign \nz.mem [4] = \nz.mem_4_sv2v_reg ;
  assign \nz.mem [3] = \nz.mem_3_sv2v_reg ;
  assign \nz.mem [2] = \nz.mem_2_sv2v_reg ;
  assign \nz.mem [1] = \nz.mem_1_sv2v_reg ;
  assign \nz.mem [0] = \nz.mem_0_sv2v_reg ;
  assign r_data_o[31] = (N8)? \nz.mem [31] : 
                        (N10)? \nz.mem [63] : 
                        (N9)? \nz.mem [95] : 
                        (N11)? \nz.mem [127] : 1'b0;
  assign r_data_o[30] = (N8)? \nz.mem [30] : 
                        (N10)? \nz.mem [62] : 
                        (N9)? \nz.mem [94] : 
                        (N11)? \nz.mem [126] : 1'b0;
  assign r_data_o[29] = (N8)? \nz.mem [29] : 
                        (N10)? \nz.mem [61] : 
                        (N9)? \nz.mem [93] : 
                        (N11)? \nz.mem [125] : 1'b0;
  assign r_data_o[28] = (N8)? \nz.mem [28] : 
                        (N10)? \nz.mem [60] : 
                        (N9)? \nz.mem [92] : 
                        (N11)? \nz.mem [124] : 1'b0;
  assign r_data_o[27] = (N8)? \nz.mem [27] : 
                        (N10)? \nz.mem [59] : 
                        (N9)? \nz.mem [91] : 
                        (N11)? \nz.mem [123] : 1'b0;
  assign r_data_o[26] = (N8)? \nz.mem [26] : 
                        (N10)? \nz.mem [58] : 
                        (N9)? \nz.mem [90] : 
                        (N11)? \nz.mem [122] : 1'b0;
  assign r_data_o[25] = (N8)? \nz.mem [25] : 
                        (N10)? \nz.mem [57] : 
                        (N9)? \nz.mem [89] : 
                        (N11)? \nz.mem [121] : 1'b0;
  assign r_data_o[24] = (N8)? \nz.mem [24] : 
                        (N10)? \nz.mem [56] : 
                        (N9)? \nz.mem [88] : 
                        (N11)? \nz.mem [120] : 1'b0;
  assign r_data_o[23] = (N8)? \nz.mem [23] : 
                        (N10)? \nz.mem [55] : 
                        (N9)? \nz.mem [87] : 
                        (N11)? \nz.mem [119] : 1'b0;
  assign r_data_o[22] = (N8)? \nz.mem [22] : 
                        (N10)? \nz.mem [54] : 
                        (N9)? \nz.mem [86] : 
                        (N11)? \nz.mem [118] : 1'b0;
  assign r_data_o[21] = (N8)? \nz.mem [21] : 
                        (N10)? \nz.mem [53] : 
                        (N9)? \nz.mem [85] : 
                        (N11)? \nz.mem [117] : 1'b0;
  assign r_data_o[20] = (N8)? \nz.mem [20] : 
                        (N10)? \nz.mem [52] : 
                        (N9)? \nz.mem [84] : 
                        (N11)? \nz.mem [116] : 1'b0;
  assign r_data_o[19] = (N8)? \nz.mem [19] : 
                        (N10)? \nz.mem [51] : 
                        (N9)? \nz.mem [83] : 
                        (N11)? \nz.mem [115] : 1'b0;
  assign r_data_o[18] = (N8)? \nz.mem [18] : 
                        (N10)? \nz.mem [50] : 
                        (N9)? \nz.mem [82] : 
                        (N11)? \nz.mem [114] : 1'b0;
  assign r_data_o[17] = (N8)? \nz.mem [17] : 
                        (N10)? \nz.mem [49] : 
                        (N9)? \nz.mem [81] : 
                        (N11)? \nz.mem [113] : 1'b0;
  assign r_data_o[16] = (N8)? \nz.mem [16] : 
                        (N10)? \nz.mem [48] : 
                        (N9)? \nz.mem [80] : 
                        (N11)? \nz.mem [112] : 1'b0;
  assign r_data_o[15] = (N8)? \nz.mem [15] : 
                        (N10)? \nz.mem [47] : 
                        (N9)? \nz.mem [79] : 
                        (N11)? \nz.mem [111] : 1'b0;
  assign r_data_o[14] = (N8)? \nz.mem [14] : 
                        (N10)? \nz.mem [46] : 
                        (N9)? \nz.mem [78] : 
                        (N11)? \nz.mem [110] : 1'b0;
  assign r_data_o[13] = (N8)? \nz.mem [13] : 
                        (N10)? \nz.mem [45] : 
                        (N9)? \nz.mem [77] : 
                        (N11)? \nz.mem [109] : 1'b0;
  assign r_data_o[12] = (N8)? \nz.mem [12] : 
                        (N10)? \nz.mem [44] : 
                        (N9)? \nz.mem [76] : 
                        (N11)? \nz.mem [108] : 1'b0;
  assign r_data_o[11] = (N8)? \nz.mem [11] : 
                        (N10)? \nz.mem [43] : 
                        (N9)? \nz.mem [75] : 
                        (N11)? \nz.mem [107] : 1'b0;
  assign r_data_o[10] = (N8)? \nz.mem [10] : 
                        (N10)? \nz.mem [42] : 
                        (N9)? \nz.mem [74] : 
                        (N11)? \nz.mem [106] : 1'b0;
  assign r_data_o[9] = (N8)? \nz.mem [9] : 
                       (N10)? \nz.mem [41] : 
                       (N9)? \nz.mem [73] : 
                       (N11)? \nz.mem [105] : 1'b0;
  assign r_data_o[8] = (N8)? \nz.mem [8] : 
                       (N10)? \nz.mem [40] : 
                       (N9)? \nz.mem [72] : 
                       (N11)? \nz.mem [104] : 1'b0;
  assign r_data_o[7] = (N8)? \nz.mem [7] : 
                       (N10)? \nz.mem [39] : 
                       (N9)? \nz.mem [71] : 
                       (N11)? \nz.mem [103] : 1'b0;
  assign r_data_o[6] = (N8)? \nz.mem [6] : 
                       (N10)? \nz.mem [38] : 
                       (N9)? \nz.mem [70] : 
                       (N11)? \nz.mem [102] : 1'b0;
  assign r_data_o[5] = (N8)? \nz.mem [5] : 
                       (N10)? \nz.mem [37] : 
                       (N9)? \nz.mem [69] : 
                       (N11)? \nz.mem [101] : 1'b0;
  assign r_data_o[4] = (N8)? \nz.mem [4] : 
                       (N10)? \nz.mem [36] : 
                       (N9)? \nz.mem [68] : 
                       (N11)? \nz.mem [100] : 1'b0;
  assign r_data_o[3] = (N8)? \nz.mem [3] : 
                       (N10)? \nz.mem [35] : 
                       (N9)? \nz.mem [67] : 
                       (N11)? \nz.mem [99] : 1'b0;
  assign r_data_o[2] = (N8)? \nz.mem [2] : 
                       (N10)? \nz.mem [34] : 
                       (N9)? \nz.mem [66] : 
                       (N11)? \nz.mem [98] : 1'b0;
  assign r_data_o[1] = (N8)? \nz.mem [1] : 
                       (N10)? \nz.mem [33] : 
                       (N9)? \nz.mem [65] : 
                       (N11)? \nz.mem [97] : 1'b0;
  assign r_data_o[0] = (N8)? \nz.mem [0] : 
                       (N10)? \nz.mem [32] : 
                       (N9)? \nz.mem [64] : 
                       (N11)? \nz.mem [96] : 1'b0;
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
      \nz.mem_127_sv2v_reg  <= w_data_i[31];
      \nz.mem_126_sv2v_reg  <= w_data_i[30];
      \nz.mem_125_sv2v_reg  <= w_data_i[29];
      \nz.mem_124_sv2v_reg  <= w_data_i[28];
      \nz.mem_123_sv2v_reg  <= w_data_i[27];
      \nz.mem_122_sv2v_reg  <= w_data_i[26];
      \nz.mem_121_sv2v_reg  <= w_data_i[25];
      \nz.mem_120_sv2v_reg  <= w_data_i[24];
      \nz.mem_119_sv2v_reg  <= w_data_i[23];
      \nz.mem_118_sv2v_reg  <= w_data_i[22];
      \nz.mem_117_sv2v_reg  <= w_data_i[21];
      \nz.mem_116_sv2v_reg  <= w_data_i[20];
      \nz.mem_115_sv2v_reg  <= w_data_i[19];
      \nz.mem_114_sv2v_reg  <= w_data_i[18];
      \nz.mem_113_sv2v_reg  <= w_data_i[17];
      \nz.mem_112_sv2v_reg  <= w_data_i[16];
      \nz.mem_111_sv2v_reg  <= w_data_i[15];
      \nz.mem_110_sv2v_reg  <= w_data_i[14];
      \nz.mem_109_sv2v_reg  <= w_data_i[13];
      \nz.mem_108_sv2v_reg  <= w_data_i[12];
      \nz.mem_107_sv2v_reg  <= w_data_i[11];
      \nz.mem_106_sv2v_reg  <= w_data_i[10];
      \nz.mem_105_sv2v_reg  <= w_data_i[9];
      \nz.mem_104_sv2v_reg  <= w_data_i[8];
      \nz.mem_103_sv2v_reg  <= w_data_i[7];
      \nz.mem_102_sv2v_reg  <= w_data_i[6];
      \nz.mem_101_sv2v_reg  <= w_data_i[5];
      \nz.mem_100_sv2v_reg  <= w_data_i[4];
      \nz.mem_99_sv2v_reg  <= w_data_i[3];
      \nz.mem_98_sv2v_reg  <= w_data_i[2];
      \nz.mem_97_sv2v_reg  <= w_data_i[1];
      \nz.mem_96_sv2v_reg  <= w_data_i[0];
    end 
    if(N19) begin
      \nz.mem_95_sv2v_reg  <= w_data_i[31];
      \nz.mem_94_sv2v_reg  <= w_data_i[30];
      \nz.mem_93_sv2v_reg  <= w_data_i[29];
      \nz.mem_92_sv2v_reg  <= w_data_i[28];
      \nz.mem_91_sv2v_reg  <= w_data_i[27];
      \nz.mem_90_sv2v_reg  <= w_data_i[26];
      \nz.mem_89_sv2v_reg  <= w_data_i[25];
      \nz.mem_88_sv2v_reg  <= w_data_i[24];
      \nz.mem_87_sv2v_reg  <= w_data_i[23];
      \nz.mem_86_sv2v_reg  <= w_data_i[22];
      \nz.mem_85_sv2v_reg  <= w_data_i[21];
      \nz.mem_84_sv2v_reg  <= w_data_i[20];
      \nz.mem_83_sv2v_reg  <= w_data_i[19];
      \nz.mem_82_sv2v_reg  <= w_data_i[18];
      \nz.mem_81_sv2v_reg  <= w_data_i[17];
      \nz.mem_80_sv2v_reg  <= w_data_i[16];
      \nz.mem_79_sv2v_reg  <= w_data_i[15];
      \nz.mem_78_sv2v_reg  <= w_data_i[14];
      \nz.mem_77_sv2v_reg  <= w_data_i[13];
      \nz.mem_76_sv2v_reg  <= w_data_i[12];
      \nz.mem_75_sv2v_reg  <= w_data_i[11];
      \nz.mem_74_sv2v_reg  <= w_data_i[10];
      \nz.mem_73_sv2v_reg  <= w_data_i[9];
      \nz.mem_72_sv2v_reg  <= w_data_i[8];
      \nz.mem_71_sv2v_reg  <= w_data_i[7];
      \nz.mem_70_sv2v_reg  <= w_data_i[6];
      \nz.mem_69_sv2v_reg  <= w_data_i[5];
      \nz.mem_68_sv2v_reg  <= w_data_i[4];
      \nz.mem_67_sv2v_reg  <= w_data_i[3];
      \nz.mem_66_sv2v_reg  <= w_data_i[2];
      \nz.mem_65_sv2v_reg  <= w_data_i[1];
      \nz.mem_64_sv2v_reg  <= w_data_i[0];
    end 
    if(N18) begin
      \nz.mem_63_sv2v_reg  <= w_data_i[31];
      \nz.mem_62_sv2v_reg  <= w_data_i[30];
      \nz.mem_61_sv2v_reg  <= w_data_i[29];
      \nz.mem_60_sv2v_reg  <= w_data_i[28];
      \nz.mem_59_sv2v_reg  <= w_data_i[27];
      \nz.mem_58_sv2v_reg  <= w_data_i[26];
      \nz.mem_57_sv2v_reg  <= w_data_i[25];
      \nz.mem_56_sv2v_reg  <= w_data_i[24];
      \nz.mem_55_sv2v_reg  <= w_data_i[23];
      \nz.mem_54_sv2v_reg  <= w_data_i[22];
      \nz.mem_53_sv2v_reg  <= w_data_i[21];
      \nz.mem_52_sv2v_reg  <= w_data_i[20];
      \nz.mem_51_sv2v_reg  <= w_data_i[19];
      \nz.mem_50_sv2v_reg  <= w_data_i[18];
      \nz.mem_49_sv2v_reg  <= w_data_i[17];
      \nz.mem_48_sv2v_reg  <= w_data_i[16];
      \nz.mem_47_sv2v_reg  <= w_data_i[15];
      \nz.mem_46_sv2v_reg  <= w_data_i[14];
      \nz.mem_45_sv2v_reg  <= w_data_i[13];
      \nz.mem_44_sv2v_reg  <= w_data_i[12];
      \nz.mem_43_sv2v_reg  <= w_data_i[11];
      \nz.mem_42_sv2v_reg  <= w_data_i[10];
      \nz.mem_41_sv2v_reg  <= w_data_i[9];
      \nz.mem_40_sv2v_reg  <= w_data_i[8];
      \nz.mem_39_sv2v_reg  <= w_data_i[7];
      \nz.mem_38_sv2v_reg  <= w_data_i[6];
      \nz.mem_37_sv2v_reg  <= w_data_i[5];
      \nz.mem_36_sv2v_reg  <= w_data_i[4];
      \nz.mem_35_sv2v_reg  <= w_data_i[3];
      \nz.mem_34_sv2v_reg  <= w_data_i[2];
      \nz.mem_33_sv2v_reg  <= w_data_i[1];
      \nz.mem_32_sv2v_reg  <= w_data_i[0];
    end 
    if(N17) begin
      \nz.mem_31_sv2v_reg  <= w_data_i[31];
      \nz.mem_30_sv2v_reg  <= w_data_i[30];
      \nz.mem_29_sv2v_reg  <= w_data_i[29];
      \nz.mem_28_sv2v_reg  <= w_data_i[28];
      \nz.mem_27_sv2v_reg  <= w_data_i[27];
      \nz.mem_26_sv2v_reg  <= w_data_i[26];
      \nz.mem_25_sv2v_reg  <= w_data_i[25];
      \nz.mem_24_sv2v_reg  <= w_data_i[24];
      \nz.mem_23_sv2v_reg  <= w_data_i[23];
      \nz.mem_22_sv2v_reg  <= w_data_i[22];
      \nz.mem_21_sv2v_reg  <= w_data_i[21];
      \nz.mem_20_sv2v_reg  <= w_data_i[20];
      \nz.mem_19_sv2v_reg  <= w_data_i[19];
      \nz.mem_18_sv2v_reg  <= w_data_i[18];
      \nz.mem_17_sv2v_reg  <= w_data_i[17];
      \nz.mem_16_sv2v_reg  <= w_data_i[16];
      \nz.mem_15_sv2v_reg  <= w_data_i[15];
      \nz.mem_14_sv2v_reg  <= w_data_i[14];
      \nz.mem_13_sv2v_reg  <= w_data_i[13];
      \nz.mem_12_sv2v_reg  <= w_data_i[12];
      \nz.mem_11_sv2v_reg  <= w_data_i[11];
      \nz.mem_10_sv2v_reg  <= w_data_i[10];
      \nz.mem_9_sv2v_reg  <= w_data_i[9];
      \nz.mem_8_sv2v_reg  <= w_data_i[8];
      \nz.mem_7_sv2v_reg  <= w_data_i[7];
      \nz.mem_6_sv2v_reg  <= w_data_i[6];
      \nz.mem_5_sv2v_reg  <= w_data_i[5];
      \nz.mem_4_sv2v_reg  <= w_data_i[4];
      \nz.mem_3_sv2v_reg  <= w_data_i[3];
      \nz.mem_2_sv2v_reg  <= w_data_i[2];
      \nz.mem_1_sv2v_reg  <= w_data_i[1];
      \nz.mem_0_sv2v_reg  <= w_data_i[0];
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

  bsg_mem_1r1w_synth_width_p32_els_p4_read_write_same_addr_p0
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
  wire ready_o,v_o,enque,full,empty,sv2v_dc_1,sv2v_dc_2;
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
    .rptr_n_o({ sv2v_dc_1, sv2v_dc_2 }),
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



module bsg_mem_1r1w_synth_width_p32_els_p2_read_write_same_addr_p0
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
  wire [63:0] \nz.mem ;
  reg \nz.mem_63_sv2v_reg ,\nz.mem_62_sv2v_reg ,\nz.mem_61_sv2v_reg ,
  \nz.mem_60_sv2v_reg ,\nz.mem_59_sv2v_reg ,\nz.mem_58_sv2v_reg ,\nz.mem_57_sv2v_reg ,
  \nz.mem_56_sv2v_reg ,\nz.mem_55_sv2v_reg ,\nz.mem_54_sv2v_reg ,\nz.mem_53_sv2v_reg ,
  \nz.mem_52_sv2v_reg ,\nz.mem_51_sv2v_reg ,\nz.mem_50_sv2v_reg ,\nz.mem_49_sv2v_reg ,
  \nz.mem_48_sv2v_reg ,\nz.mem_47_sv2v_reg ,\nz.mem_46_sv2v_reg ,\nz.mem_45_sv2v_reg ,
  \nz.mem_44_sv2v_reg ,\nz.mem_43_sv2v_reg ,\nz.mem_42_sv2v_reg ,
  \nz.mem_41_sv2v_reg ,\nz.mem_40_sv2v_reg ,\nz.mem_39_sv2v_reg ,\nz.mem_38_sv2v_reg ,
  \nz.mem_37_sv2v_reg ,\nz.mem_36_sv2v_reg ,\nz.mem_35_sv2v_reg ,\nz.mem_34_sv2v_reg ,
  \nz.mem_33_sv2v_reg ,\nz.mem_32_sv2v_reg ,\nz.mem_31_sv2v_reg ,\nz.mem_30_sv2v_reg ,
  \nz.mem_29_sv2v_reg ,\nz.mem_28_sv2v_reg ,\nz.mem_27_sv2v_reg ,\nz.mem_26_sv2v_reg ,
  \nz.mem_25_sv2v_reg ,\nz.mem_24_sv2v_reg ,\nz.mem_23_sv2v_reg ,
  \nz.mem_22_sv2v_reg ,\nz.mem_21_sv2v_reg ,\nz.mem_20_sv2v_reg ,\nz.mem_19_sv2v_reg ,
  \nz.mem_18_sv2v_reg ,\nz.mem_17_sv2v_reg ,\nz.mem_16_sv2v_reg ,\nz.mem_15_sv2v_reg ,
  \nz.mem_14_sv2v_reg ,\nz.mem_13_sv2v_reg ,\nz.mem_12_sv2v_reg ,\nz.mem_11_sv2v_reg ,
  \nz.mem_10_sv2v_reg ,\nz.mem_9_sv2v_reg ,\nz.mem_8_sv2v_reg ,\nz.mem_7_sv2v_reg ,
  \nz.mem_6_sv2v_reg ,\nz.mem_5_sv2v_reg ,\nz.mem_4_sv2v_reg ,\nz.mem_3_sv2v_reg ,
  \nz.mem_2_sv2v_reg ,\nz.mem_1_sv2v_reg ,\nz.mem_0_sv2v_reg ;
  assign \nz.mem [63] = \nz.mem_63_sv2v_reg ;
  assign \nz.mem [62] = \nz.mem_62_sv2v_reg ;
  assign \nz.mem [61] = \nz.mem_61_sv2v_reg ;
  assign \nz.mem [60] = \nz.mem_60_sv2v_reg ;
  assign \nz.mem [59] = \nz.mem_59_sv2v_reg ;
  assign \nz.mem [58] = \nz.mem_58_sv2v_reg ;
  assign \nz.mem [57] = \nz.mem_57_sv2v_reg ;
  assign \nz.mem [56] = \nz.mem_56_sv2v_reg ;
  assign \nz.mem [55] = \nz.mem_55_sv2v_reg ;
  assign \nz.mem [54] = \nz.mem_54_sv2v_reg ;
  assign \nz.mem [53] = \nz.mem_53_sv2v_reg ;
  assign \nz.mem [52] = \nz.mem_52_sv2v_reg ;
  assign \nz.mem [51] = \nz.mem_51_sv2v_reg ;
  assign \nz.mem [50] = \nz.mem_50_sv2v_reg ;
  assign \nz.mem [49] = \nz.mem_49_sv2v_reg ;
  assign \nz.mem [48] = \nz.mem_48_sv2v_reg ;
  assign \nz.mem [47] = \nz.mem_47_sv2v_reg ;
  assign \nz.mem [46] = \nz.mem_46_sv2v_reg ;
  assign \nz.mem [45] = \nz.mem_45_sv2v_reg ;
  assign \nz.mem [44] = \nz.mem_44_sv2v_reg ;
  assign \nz.mem [43] = \nz.mem_43_sv2v_reg ;
  assign \nz.mem [42] = \nz.mem_42_sv2v_reg ;
  assign \nz.mem [41] = \nz.mem_41_sv2v_reg ;
  assign \nz.mem [40] = \nz.mem_40_sv2v_reg ;
  assign \nz.mem [39] = \nz.mem_39_sv2v_reg ;
  assign \nz.mem [38] = \nz.mem_38_sv2v_reg ;
  assign \nz.mem [37] = \nz.mem_37_sv2v_reg ;
  assign \nz.mem [36] = \nz.mem_36_sv2v_reg ;
  assign \nz.mem [35] = \nz.mem_35_sv2v_reg ;
  assign \nz.mem [34] = \nz.mem_34_sv2v_reg ;
  assign \nz.mem [33] = \nz.mem_33_sv2v_reg ;
  assign \nz.mem [32] = \nz.mem_32_sv2v_reg ;
  assign \nz.mem [31] = \nz.mem_31_sv2v_reg ;
  assign \nz.mem [30] = \nz.mem_30_sv2v_reg ;
  assign \nz.mem [29] = \nz.mem_29_sv2v_reg ;
  assign \nz.mem [28] = \nz.mem_28_sv2v_reg ;
  assign \nz.mem [27] = \nz.mem_27_sv2v_reg ;
  assign \nz.mem [26] = \nz.mem_26_sv2v_reg ;
  assign \nz.mem [25] = \nz.mem_25_sv2v_reg ;
  assign \nz.mem [24] = \nz.mem_24_sv2v_reg ;
  assign \nz.mem [23] = \nz.mem_23_sv2v_reg ;
  assign \nz.mem [22] = \nz.mem_22_sv2v_reg ;
  assign \nz.mem [21] = \nz.mem_21_sv2v_reg ;
  assign \nz.mem [20] = \nz.mem_20_sv2v_reg ;
  assign \nz.mem [19] = \nz.mem_19_sv2v_reg ;
  assign \nz.mem [18] = \nz.mem_18_sv2v_reg ;
  assign \nz.mem [17] = \nz.mem_17_sv2v_reg ;
  assign \nz.mem [16] = \nz.mem_16_sv2v_reg ;
  assign \nz.mem [15] = \nz.mem_15_sv2v_reg ;
  assign \nz.mem [14] = \nz.mem_14_sv2v_reg ;
  assign \nz.mem [13] = \nz.mem_13_sv2v_reg ;
  assign \nz.mem [12] = \nz.mem_12_sv2v_reg ;
  assign \nz.mem [11] = \nz.mem_11_sv2v_reg ;
  assign \nz.mem [10] = \nz.mem_10_sv2v_reg ;
  assign \nz.mem [9] = \nz.mem_9_sv2v_reg ;
  assign \nz.mem [8] = \nz.mem_8_sv2v_reg ;
  assign \nz.mem [7] = \nz.mem_7_sv2v_reg ;
  assign \nz.mem [6] = \nz.mem_6_sv2v_reg ;
  assign \nz.mem [5] = \nz.mem_5_sv2v_reg ;
  assign \nz.mem [4] = \nz.mem_4_sv2v_reg ;
  assign \nz.mem [3] = \nz.mem_3_sv2v_reg ;
  assign \nz.mem [2] = \nz.mem_2_sv2v_reg ;
  assign \nz.mem [1] = \nz.mem_1_sv2v_reg ;
  assign \nz.mem [0] = \nz.mem_0_sv2v_reg ;
  assign r_data_o[31] = (N3)? \nz.mem [31] : 
                        (N0)? \nz.mem [63] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[30] = (N3)? \nz.mem [30] : 
                        (N0)? \nz.mem [62] : 1'b0;
  assign r_data_o[29] = (N3)? \nz.mem [29] : 
                        (N0)? \nz.mem [61] : 1'b0;
  assign r_data_o[28] = (N3)? \nz.mem [28] : 
                        (N0)? \nz.mem [60] : 1'b0;
  assign r_data_o[27] = (N3)? \nz.mem [27] : 
                        (N0)? \nz.mem [59] : 1'b0;
  assign r_data_o[26] = (N3)? \nz.mem [26] : 
                        (N0)? \nz.mem [58] : 1'b0;
  assign r_data_o[25] = (N3)? \nz.mem [25] : 
                        (N0)? \nz.mem [57] : 1'b0;
  assign r_data_o[24] = (N3)? \nz.mem [24] : 
                        (N0)? \nz.mem [56] : 1'b0;
  assign r_data_o[23] = (N3)? \nz.mem [23] : 
                        (N0)? \nz.mem [55] : 1'b0;
  assign r_data_o[22] = (N3)? \nz.mem [22] : 
                        (N0)? \nz.mem [54] : 1'b0;
  assign r_data_o[21] = (N3)? \nz.mem [21] : 
                        (N0)? \nz.mem [53] : 1'b0;
  assign r_data_o[20] = (N3)? \nz.mem [20] : 
                        (N0)? \nz.mem [52] : 1'b0;
  assign r_data_o[19] = (N3)? \nz.mem [19] : 
                        (N0)? \nz.mem [51] : 1'b0;
  assign r_data_o[18] = (N3)? \nz.mem [18] : 
                        (N0)? \nz.mem [50] : 1'b0;
  assign r_data_o[17] = (N3)? \nz.mem [17] : 
                        (N0)? \nz.mem [49] : 1'b0;
  assign r_data_o[16] = (N3)? \nz.mem [16] : 
                        (N0)? \nz.mem [48] : 1'b0;
  assign r_data_o[15] = (N3)? \nz.mem [15] : 
                        (N0)? \nz.mem [47] : 1'b0;
  assign r_data_o[14] = (N3)? \nz.mem [14] : 
                        (N0)? \nz.mem [46] : 1'b0;
  assign r_data_o[13] = (N3)? \nz.mem [13] : 
                        (N0)? \nz.mem [45] : 1'b0;
  assign r_data_o[12] = (N3)? \nz.mem [12] : 
                        (N0)? \nz.mem [44] : 1'b0;
  assign r_data_o[11] = (N3)? \nz.mem [11] : 
                        (N0)? \nz.mem [43] : 1'b0;
  assign r_data_o[10] = (N3)? \nz.mem [10] : 
                        (N0)? \nz.mem [42] : 1'b0;
  assign r_data_o[9] = (N3)? \nz.mem [9] : 
                       (N0)? \nz.mem [41] : 1'b0;
  assign r_data_o[8] = (N3)? \nz.mem [8] : 
                       (N0)? \nz.mem [40] : 1'b0;
  assign r_data_o[7] = (N3)? \nz.mem [7] : 
                       (N0)? \nz.mem [39] : 1'b0;
  assign r_data_o[6] = (N3)? \nz.mem [6] : 
                       (N0)? \nz.mem [38] : 1'b0;
  assign r_data_o[5] = (N3)? \nz.mem [5] : 
                       (N0)? \nz.mem [37] : 1'b0;
  assign r_data_o[4] = (N3)? \nz.mem [4] : 
                       (N0)? \nz.mem [36] : 1'b0;
  assign r_data_o[3] = (N3)? \nz.mem [3] : 
                       (N0)? \nz.mem [35] : 1'b0;
  assign r_data_o[2] = (N3)? \nz.mem [2] : 
                       (N0)? \nz.mem [34] : 1'b0;
  assign r_data_o[1] = (N3)? \nz.mem [1] : 
                       (N0)? \nz.mem [33] : 1'b0;
  assign r_data_o[0] = (N3)? \nz.mem [0] : 
                       (N0)? \nz.mem [32] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      \nz.mem_63_sv2v_reg  <= w_data_i[31];
      \nz.mem_62_sv2v_reg  <= w_data_i[30];
      \nz.mem_61_sv2v_reg  <= w_data_i[29];
      \nz.mem_60_sv2v_reg  <= w_data_i[28];
      \nz.mem_59_sv2v_reg  <= w_data_i[27];
      \nz.mem_58_sv2v_reg  <= w_data_i[26];
      \nz.mem_57_sv2v_reg  <= w_data_i[25];
      \nz.mem_56_sv2v_reg  <= w_data_i[24];
      \nz.mem_55_sv2v_reg  <= w_data_i[23];
      \nz.mem_54_sv2v_reg  <= w_data_i[22];
      \nz.mem_53_sv2v_reg  <= w_data_i[21];
      \nz.mem_52_sv2v_reg  <= w_data_i[20];
      \nz.mem_51_sv2v_reg  <= w_data_i[19];
      \nz.mem_50_sv2v_reg  <= w_data_i[18];
      \nz.mem_49_sv2v_reg  <= w_data_i[17];
      \nz.mem_48_sv2v_reg  <= w_data_i[16];
      \nz.mem_47_sv2v_reg  <= w_data_i[15];
      \nz.mem_46_sv2v_reg  <= w_data_i[14];
      \nz.mem_45_sv2v_reg  <= w_data_i[13];
      \nz.mem_44_sv2v_reg  <= w_data_i[12];
      \nz.mem_43_sv2v_reg  <= w_data_i[11];
      \nz.mem_42_sv2v_reg  <= w_data_i[10];
      \nz.mem_41_sv2v_reg  <= w_data_i[9];
      \nz.mem_40_sv2v_reg  <= w_data_i[8];
      \nz.mem_39_sv2v_reg  <= w_data_i[7];
      \nz.mem_38_sv2v_reg  <= w_data_i[6];
      \nz.mem_37_sv2v_reg  <= w_data_i[5];
      \nz.mem_36_sv2v_reg  <= w_data_i[4];
      \nz.mem_35_sv2v_reg  <= w_data_i[3];
      \nz.mem_34_sv2v_reg  <= w_data_i[2];
      \nz.mem_33_sv2v_reg  <= w_data_i[1];
      \nz.mem_32_sv2v_reg  <= w_data_i[0];
    end 
    if(N7) begin
      \nz.mem_31_sv2v_reg  <= w_data_i[31];
      \nz.mem_30_sv2v_reg  <= w_data_i[30];
      \nz.mem_29_sv2v_reg  <= w_data_i[29];
      \nz.mem_28_sv2v_reg  <= w_data_i[28];
      \nz.mem_27_sv2v_reg  <= w_data_i[27];
      \nz.mem_26_sv2v_reg  <= w_data_i[26];
      \nz.mem_25_sv2v_reg  <= w_data_i[25];
      \nz.mem_24_sv2v_reg  <= w_data_i[24];
      \nz.mem_23_sv2v_reg  <= w_data_i[23];
      \nz.mem_22_sv2v_reg  <= w_data_i[22];
      \nz.mem_21_sv2v_reg  <= w_data_i[21];
      \nz.mem_20_sv2v_reg  <= w_data_i[20];
      \nz.mem_19_sv2v_reg  <= w_data_i[19];
      \nz.mem_18_sv2v_reg  <= w_data_i[18];
      \nz.mem_17_sv2v_reg  <= w_data_i[17];
      \nz.mem_16_sv2v_reg  <= w_data_i[16];
      \nz.mem_15_sv2v_reg  <= w_data_i[15];
      \nz.mem_14_sv2v_reg  <= w_data_i[14];
      \nz.mem_13_sv2v_reg  <= w_data_i[13];
      \nz.mem_12_sv2v_reg  <= w_data_i[12];
      \nz.mem_11_sv2v_reg  <= w_data_i[11];
      \nz.mem_10_sv2v_reg  <= w_data_i[10];
      \nz.mem_9_sv2v_reg  <= w_data_i[9];
      \nz.mem_8_sv2v_reg  <= w_data_i[8];
      \nz.mem_7_sv2v_reg  <= w_data_i[7];
      \nz.mem_6_sv2v_reg  <= w_data_i[6];
      \nz.mem_5_sv2v_reg  <= w_data_i[5];
      \nz.mem_4_sv2v_reg  <= w_data_i[4];
      \nz.mem_3_sv2v_reg  <= w_data_i[3];
      \nz.mem_2_sv2v_reg  <= w_data_i[2];
      \nz.mem_1_sv2v_reg  <= w_data_i[1];
      \nz.mem_0_sv2v_reg  <= w_data_i[0];
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

  bsg_mem_1r1w_synth_width_p32_els_p2_read_write_same_addr_p0
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
  wire ready_o,v_o,enq_i,tail_r,_0_net_,head_r,empty_r,full_r,N0,N1,N2,N3,N4,N5,N6,N7,
  N8,N9,N10,N11,N12,N13,N14;
  reg full_r_sv2v_reg,tail_r_sv2v_reg,head_r_sv2v_reg,empty_r_sv2v_reg;
  assign full_r = full_r_sv2v_reg;
  assign tail_r = tail_r_sv2v_reg;
  assign head_r = head_r_sv2v_reg;
  assign empty_r = empty_r_sv2v_reg;

  bsg_mem_1r1w_width_p32_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i),
    .r_v_i(_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o)
  );

  assign _0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N5;
  assign N5 = ~full_r;
  assign N1 = enq_i;
  assign N0 = ~tail_r;
  assign N2 = ~head_r;
  assign N3 = N7 | N9;
  assign N7 = empty_r & N6;
  assign N6 = ~enq_i;
  assign N9 = N8 & N6;
  assign N8 = N5 & yumi_i;
  assign N4 = N13 | N14;
  assign N13 = N11 & N12;
  assign N11 = N10 & enq_i;
  assign N10 = ~empty_r;
  assign N12 = ~yumi_i;
  assign N14 = full_r & N12;

  always @(posedge clk_i) begin
    if(reset_i) begin
      full_r_sv2v_reg <= 1'b0;
      empty_r_sv2v_reg <= 1'b1;
    end else if(1'b1) begin
      full_r_sv2v_reg <= N4;
      empty_r_sv2v_reg <= N3;
    end 
    if(reset_i) begin
      tail_r_sv2v_reg <= 1'b0;
    end else if(N1) begin
      tail_r_sv2v_reg <= N0;
    end 
    if(reset_i) begin
      head_r_sv2v_reg <= 1'b0;
    end else if(yumi_i) begin
      head_r_sv2v_reg <= N2;
    end 
  end


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



module bsg_mux_width_p4_els_p2
(
  data_i,
  sel_i,
  data_o
);

  input [7:0] data_i;
  input [0:0] sel_i;
  output [3:0] data_o;
  wire [3:0] data_o;
  wire N0,N1;
  assign data_o[3] = (N1)? data_i[3] : 
                     (N0)? data_i[7] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[2] = (N1)? data_i[2] : 
                     (N0)? data_i[6] : 1'b0;
  assign data_o[1] = (N1)? data_i[1] : 
                     (N0)? data_i[5] : 1'b0;
  assign data_o[0] = (N1)? data_i[0] : 
                     (N0)? data_i[4] : 1'b0;
  assign N1 = ~sel_i[0];

endmodule



module bsg_mux_width_p1_els_p4
(
  data_i,
  sel_i,
  data_o
);

  input [3:0] data_i;
  input [1:0] sel_i;
  output [0:0] data_o;
  wire [0:0] data_o;
  wire N0,N1,N2,N3,N4,N5;
  assign data_o[0] = (N2)? data_i[0] : 
                     (N4)? data_i[1] : 
                     (N3)? data_i[2] : 
                     (N5)? data_i[3] : 1'b0;
  assign N0 = ~sel_i[0];
  assign N1 = ~sel_i[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & sel_i[1];
  assign N4 = sel_i[0] & N1;
  assign N5 = sel_i[0] & sel_i[1];

endmodule



module bsg_mux_width_p32_els_p2
(
  data_i,
  sel_i,
  data_o
);

  input [63:0] data_i;
  input [0:0] sel_i;
  output [31:0] data_o;
  wire [31:0] data_o;
  wire N0,N1;
  assign data_o[31] = (N1)? data_i[31] : 
                      (N0)? data_i[63] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[30] = (N1)? data_i[30] : 
                      (N0)? data_i[62] : 1'b0;
  assign data_o[29] = (N1)? data_i[29] : 
                      (N0)? data_i[61] : 1'b0;
  assign data_o[28] = (N1)? data_i[28] : 
                      (N0)? data_i[60] : 1'b0;
  assign data_o[27] = (N1)? data_i[27] : 
                      (N0)? data_i[59] : 1'b0;
  assign data_o[26] = (N1)? data_i[26] : 
                      (N0)? data_i[58] : 1'b0;
  assign data_o[25] = (N1)? data_i[25] : 
                      (N0)? data_i[57] : 1'b0;
  assign data_o[24] = (N1)? data_i[24] : 
                      (N0)? data_i[56] : 1'b0;
  assign data_o[23] = (N1)? data_i[23] : 
                      (N0)? data_i[55] : 1'b0;
  assign data_o[22] = (N1)? data_i[22] : 
                      (N0)? data_i[54] : 1'b0;
  assign data_o[21] = (N1)? data_i[21] : 
                      (N0)? data_i[53] : 1'b0;
  assign data_o[20] = (N1)? data_i[20] : 
                      (N0)? data_i[52] : 1'b0;
  assign data_o[19] = (N1)? data_i[19] : 
                      (N0)? data_i[51] : 1'b0;
  assign data_o[18] = (N1)? data_i[18] : 
                      (N0)? data_i[50] : 1'b0;
  assign data_o[17] = (N1)? data_i[17] : 
                      (N0)? data_i[49] : 1'b0;
  assign data_o[16] = (N1)? data_i[16] : 
                      (N0)? data_i[48] : 1'b0;
  assign data_o[15] = (N1)? data_i[15] : 
                      (N0)? data_i[47] : 1'b0;
  assign data_o[14] = (N1)? data_i[14] : 
                      (N0)? data_i[46] : 1'b0;
  assign data_o[13] = (N1)? data_i[13] : 
                      (N0)? data_i[45] : 1'b0;
  assign data_o[12] = (N1)? data_i[12] : 
                      (N0)? data_i[44] : 1'b0;
  assign data_o[11] = (N1)? data_i[11] : 
                      (N0)? data_i[43] : 1'b0;
  assign data_o[10] = (N1)? data_i[10] : 
                      (N0)? data_i[42] : 1'b0;
  assign data_o[9] = (N1)? data_i[9] : 
                     (N0)? data_i[41] : 1'b0;
  assign data_o[8] = (N1)? data_i[8] : 
                     (N0)? data_i[40] : 1'b0;
  assign data_o[7] = (N1)? data_i[7] : 
                     (N0)? data_i[39] : 1'b0;
  assign data_o[6] = (N1)? data_i[6] : 
                     (N0)? data_i[38] : 1'b0;
  assign data_o[5] = (N1)? data_i[5] : 
                     (N0)? data_i[37] : 1'b0;
  assign data_o[4] = (N1)? data_i[4] : 
                     (N0)? data_i[36] : 1'b0;
  assign data_o[3] = (N1)? data_i[3] : 
                     (N0)? data_i[35] : 1'b0;
  assign data_o[2] = (N1)? data_i[2] : 
                     (N0)? data_i[34] : 1'b0;
  assign data_o[1] = (N1)? data_i[1] : 
                     (N0)? data_i[33] : 1'b0;
  assign data_o[0] = (N1)? data_i[0] : 
                     (N0)? data_i[32] : 1'b0;
  assign N1 = ~sel_i[0];

endmodule



module bsg_mux_width_p32_els_p1
(
  data_i,
  sel_i,
  data_o
);

  input [31:0] data_i;
  input [0:0] sel_i;
  output [31:0] data_o;
  wire [31:0] data_o;
  assign data_o[31] = data_i[31];
  assign data_o[30] = data_i[30];
  assign data_o[29] = data_i[29];
  assign data_o[28] = data_i[28];
  assign data_o[27] = data_i[27];
  assign data_o[26] = data_i[26];
  assign data_o[25] = data_i[25];
  assign data_o[24] = data_i[24];
  assign data_o[23] = data_i[23];
  assign data_o[22] = data_i[22];
  assign data_o[21] = data_i[21];
  assign data_o[20] = data_i[20];
  assign data_o[19] = data_i[19];
  assign data_o[18] = data_i[18];
  assign data_o[17] = data_i[17];
  assign data_o[16] = data_i[16];
  assign data_o[15] = data_i[15];
  assign data_o[14] = data_i[14];
  assign data_o[13] = data_i[13];
  assign data_o[12] = data_i[12];
  assign data_o[11] = data_i[11];
  assign data_o[10] = data_i[10];
  assign data_o[9] = data_i[9];
  assign data_o[8] = data_i[8];
  assign data_o[7] = data_i[7];
  assign data_o[6] = data_i[6];
  assign data_o[5] = data_i[5];
  assign data_o[4] = data_i[4];
  assign data_o[3] = data_i[3];
  assign data_o[2] = data_i[2];
  assign data_o[1] = data_i[1];
  assign data_o[0] = data_i[0];

endmodule



module bsg_cache_dma
(
  clk_i,
  reset_i,
  dma_cmd_i,
  dma_way_i,
  dma_addr_i,
  done_o,
  track_data_we_i,
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
  track_miss_i,
  track_mem_data_i,
  dma_evict_o
);

  input [3:0] dma_cmd_i;
  input [0:0] dma_way_i;
  input [27:0] dma_addr_i;
  output [31:0] snoop_word_o;
  output [32:0] dma_pkt_o;
  input [31:0] dma_data_i;
  output [31:0] dma_data_o;
  output [7:0] data_mem_addr_o;
  output [7:0] data_mem_w_mask_o;
  output [63:0] data_mem_data_o;
  input [63:0] data_mem_data_i;
  input [7:0] track_mem_data_i;
  input clk_i;
  input reset_i;
  input track_data_we_i;
  input dma_pkt_yumi_i;
  input dma_data_v_i;
  input dma_data_yumi_i;
  input track_miss_i;
  output done_o;
  output dma_pkt_v_o;
  output dma_data_ready_o;
  output dma_data_v_o;
  output data_mem_v_o;
  output data_mem_w_o;
  output dma_evict_o;
  wire [31:0] snoop_word_o,dma_data_o,out_fifo_data_li,snoop_word_n;
  wire [32:0] dma_pkt_o;
  wire [7:0] data_mem_addr_o,data_mem_w_mask_o,dma_way_mask_expanded,track_mem_data_r;
  wire [63:0] data_mem_data_o;
  wire done_o,dma_pkt_v_o,dma_data_ready_o,dma_data_v_o,data_mem_v_o,data_mem_w_o,
  dma_evict_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,dma_pkt_o_31_,dma_pkt_o_30_,
  dma_pkt_o_29_,dma_pkt_o_28_,dma_pkt_o_27_,dma_pkt_o_26_,dma_pkt_o_25_,dma_pkt_o_24_,
  dma_pkt_o_23_,dma_pkt_o_22_,dma_pkt_o_21_,dma_pkt_o_20_,dma_pkt_o_19_,
  dma_pkt_o_18_,dma_pkt_o_17_,dma_pkt_o_16_,dma_pkt_o_15_,dma_pkt_o_14_,data_mem_addr_o_7_,
  data_mem_addr_o_6_,data_mem_addr_o_5_,data_mem_addr_o_4_,data_mem_addr_o_3_,
  data_mem_addr_o_2_,data_mem_data_o_1__31_,data_mem_data_o_1__30_,data_mem_data_o_1__29_,
  data_mem_data_o_1__28_,data_mem_data_o_1__27_,data_mem_data_o_1__26_,
  data_mem_data_o_1__25_,data_mem_data_o_1__24_,data_mem_data_o_1__23_,
  data_mem_data_o_1__22_,data_mem_data_o_1__21_,data_mem_data_o_1__20_,data_mem_data_o_1__19_,
  data_mem_data_o_1__18_,data_mem_data_o_1__17_,data_mem_data_o_1__16_,
  data_mem_data_o_1__15_,data_mem_data_o_1__14_,data_mem_data_o_1__13_,data_mem_data_o_1__12_,
  data_mem_data_o_1__11_,data_mem_data_o_1__10_,data_mem_data_o_1__9_,
  data_mem_data_o_1__8_,data_mem_data_o_1__7_,data_mem_data_o_1__6_,data_mem_data_o_1__5_,
  data_mem_data_o_1__4_,data_mem_data_o_1__3_,data_mem_data_o_1__2_,data_mem_data_o_1__1_,
  data_mem_data_o_1__0_,counter_clear,counter_up,in_fifo_v_lo,in_fifo_yumi_li,
  out_fifo_v_li,out_fifo_ready_lo,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,
  N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,
  N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,
  N66,N67,N68,N69,N70,N71,snoop_word_we,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89;
  wire [2:2] counter_r;
  wire [1:0] dma_way_mask,dma_state_r,dma_state_n;
  wire [3:0] track_data_way_picked,track_bits_offset_picked_expanded,
  data_mem_w_mask_way_picked;
  wire [0:0] track_bits_offset_picked;
  reg track_mem_data_r_7_sv2v_reg,track_mem_data_r_6_sv2v_reg,
  track_mem_data_r_5_sv2v_reg,track_mem_data_r_4_sv2v_reg,track_mem_data_r_3_sv2v_reg,
  track_mem_data_r_2_sv2v_reg,track_mem_data_r_1_sv2v_reg,track_mem_data_r_0_sv2v_reg,
  dma_state_r_1_sv2v_reg,dma_state_r_0_sv2v_reg,snoop_word_o_31_sv2v_reg,snoop_word_o_30_sv2v_reg,
  snoop_word_o_29_sv2v_reg,snoop_word_o_28_sv2v_reg,snoop_word_o_27_sv2v_reg,
  snoop_word_o_26_sv2v_reg,snoop_word_o_25_sv2v_reg,snoop_word_o_24_sv2v_reg,
  snoop_word_o_23_sv2v_reg,snoop_word_o_22_sv2v_reg,snoop_word_o_21_sv2v_reg,
  snoop_word_o_20_sv2v_reg,snoop_word_o_19_sv2v_reg,snoop_word_o_18_sv2v_reg,
  snoop_word_o_17_sv2v_reg,snoop_word_o_16_sv2v_reg,snoop_word_o_15_sv2v_reg,snoop_word_o_14_sv2v_reg,
  snoop_word_o_13_sv2v_reg,snoop_word_o_12_sv2v_reg,snoop_word_o_11_sv2v_reg,
  snoop_word_o_10_sv2v_reg,snoop_word_o_9_sv2v_reg,snoop_word_o_8_sv2v_reg,
  snoop_word_o_7_sv2v_reg,snoop_word_o_6_sv2v_reg,snoop_word_o_5_sv2v_reg,
  snoop_word_o_4_sv2v_reg,snoop_word_o_3_sv2v_reg,snoop_word_o_2_sv2v_reg,snoop_word_o_1_sv2v_reg,
  snoop_word_o_0_sv2v_reg;
  assign track_mem_data_r[7] = track_mem_data_r_7_sv2v_reg;
  assign track_mem_data_r[6] = track_mem_data_r_6_sv2v_reg;
  assign track_mem_data_r[5] = track_mem_data_r_5_sv2v_reg;
  assign track_mem_data_r[4] = track_mem_data_r_4_sv2v_reg;
  assign track_mem_data_r[3] = track_mem_data_r_3_sv2v_reg;
  assign track_mem_data_r[2] = track_mem_data_r_2_sv2v_reg;
  assign track_mem_data_r[1] = track_mem_data_r_1_sv2v_reg;
  assign track_mem_data_r[0] = track_mem_data_r_0_sv2v_reg;
  assign dma_state_r[1] = dma_state_r_1_sv2v_reg;
  assign dma_state_r[0] = dma_state_r_0_sv2v_reg;
  assign snoop_word_o[31] = snoop_word_o_31_sv2v_reg;
  assign snoop_word_o[30] = snoop_word_o_30_sv2v_reg;
  assign snoop_word_o[29] = snoop_word_o_29_sv2v_reg;
  assign snoop_word_o[28] = snoop_word_o_28_sv2v_reg;
  assign snoop_word_o[27] = snoop_word_o_27_sv2v_reg;
  assign snoop_word_o[26] = snoop_word_o_26_sv2v_reg;
  assign snoop_word_o[25] = snoop_word_o_25_sv2v_reg;
  assign snoop_word_o[24] = snoop_word_o_24_sv2v_reg;
  assign snoop_word_o[23] = snoop_word_o_23_sv2v_reg;
  assign snoop_word_o[22] = snoop_word_o_22_sv2v_reg;
  assign snoop_word_o[21] = snoop_word_o_21_sv2v_reg;
  assign snoop_word_o[20] = snoop_word_o_20_sv2v_reg;
  assign snoop_word_o[19] = snoop_word_o_19_sv2v_reg;
  assign snoop_word_o[18] = snoop_word_o_18_sv2v_reg;
  assign snoop_word_o[17] = snoop_word_o_17_sv2v_reg;
  assign snoop_word_o[16] = snoop_word_o_16_sv2v_reg;
  assign snoop_word_o[15] = snoop_word_o_15_sv2v_reg;
  assign snoop_word_o[14] = snoop_word_o_14_sv2v_reg;
  assign snoop_word_o[13] = snoop_word_o_13_sv2v_reg;
  assign snoop_word_o[12] = snoop_word_o_12_sv2v_reg;
  assign snoop_word_o[11] = snoop_word_o_11_sv2v_reg;
  assign snoop_word_o[10] = snoop_word_o_10_sv2v_reg;
  assign snoop_word_o[9] = snoop_word_o_9_sv2v_reg;
  assign snoop_word_o[8] = snoop_word_o_8_sv2v_reg;
  assign snoop_word_o[7] = snoop_word_o_7_sv2v_reg;
  assign snoop_word_o[6] = snoop_word_o_6_sv2v_reg;
  assign snoop_word_o[5] = snoop_word_o_5_sv2v_reg;
  assign snoop_word_o[4] = snoop_word_o_4_sv2v_reg;
  assign snoop_word_o[3] = snoop_word_o_3_sv2v_reg;
  assign snoop_word_o[2] = snoop_word_o_2_sv2v_reg;
  assign snoop_word_o[1] = snoop_word_o_1_sv2v_reg;
  assign snoop_word_o[0] = snoop_word_o_0_sv2v_reg;
  assign dma_pkt_o[4] = 1'b0;
  assign dma_pkt_o[5] = 1'b0;
  assign dma_pkt_o[6] = 1'b0;
  assign dma_pkt_o[7] = 1'b0;
  assign dma_pkt_o_31_ = dma_addr_i[27];
  assign dma_pkt_o[31] = dma_pkt_o_31_;
  assign dma_pkt_o_30_ = dma_addr_i[26];
  assign dma_pkt_o[30] = dma_pkt_o_30_;
  assign dma_pkt_o_29_ = dma_addr_i[25];
  assign dma_pkt_o[29] = dma_pkt_o_29_;
  assign dma_pkt_o_28_ = dma_addr_i[24];
  assign dma_pkt_o[28] = dma_pkt_o_28_;
  assign dma_pkt_o_27_ = dma_addr_i[23];
  assign dma_pkt_o[27] = dma_pkt_o_27_;
  assign dma_pkt_o_26_ = dma_addr_i[22];
  assign dma_pkt_o[26] = dma_pkt_o_26_;
  assign dma_pkt_o_25_ = dma_addr_i[21];
  assign dma_pkt_o[25] = dma_pkt_o_25_;
  assign dma_pkt_o_24_ = dma_addr_i[20];
  assign dma_pkt_o[24] = dma_pkt_o_24_;
  assign dma_pkt_o_23_ = dma_addr_i[19];
  assign dma_pkt_o[23] = dma_pkt_o_23_;
  assign dma_pkt_o_22_ = dma_addr_i[18];
  assign dma_pkt_o[22] = dma_pkt_o_22_;
  assign dma_pkt_o_21_ = dma_addr_i[17];
  assign dma_pkt_o[21] = dma_pkt_o_21_;
  assign dma_pkt_o_20_ = dma_addr_i[16];
  assign dma_pkt_o[20] = dma_pkt_o_20_;
  assign dma_pkt_o_19_ = dma_addr_i[15];
  assign dma_pkt_o[19] = dma_pkt_o_19_;
  assign dma_pkt_o_18_ = dma_addr_i[14];
  assign dma_pkt_o[18] = dma_pkt_o_18_;
  assign dma_pkt_o_17_ = dma_addr_i[13];
  assign dma_pkt_o[17] = dma_pkt_o_17_;
  assign dma_pkt_o_16_ = dma_addr_i[12];
  assign dma_pkt_o[16] = dma_pkt_o_16_;
  assign dma_pkt_o_15_ = dma_addr_i[11];
  assign dma_pkt_o[15] = dma_pkt_o_15_;
  assign dma_pkt_o_14_ = dma_addr_i[10];
  assign dma_pkt_o[14] = dma_pkt_o_14_;
  assign data_mem_addr_o_7_ = dma_addr_i[9];
  assign data_mem_addr_o[7] = data_mem_addr_o_7_;
  assign dma_pkt_o[13] = data_mem_addr_o_7_;
  assign data_mem_addr_o_6_ = dma_addr_i[8];
  assign data_mem_addr_o[6] = data_mem_addr_o_6_;
  assign dma_pkt_o[12] = data_mem_addr_o_6_;
  assign data_mem_addr_o_5_ = dma_addr_i[7];
  assign data_mem_addr_o[5] = data_mem_addr_o_5_;
  assign dma_pkt_o[11] = data_mem_addr_o_5_;
  assign data_mem_addr_o_4_ = dma_addr_i[6];
  assign data_mem_addr_o[4] = data_mem_addr_o_4_;
  assign dma_pkt_o[10] = data_mem_addr_o_4_;
  assign data_mem_addr_o_3_ = dma_addr_i[5];
  assign data_mem_addr_o[3] = data_mem_addr_o_3_;
  assign dma_pkt_o[9] = data_mem_addr_o_3_;
  assign data_mem_addr_o_2_ = dma_addr_i[4];
  assign data_mem_addr_o[2] = data_mem_addr_o_2_;
  assign dma_pkt_o[8] = data_mem_addr_o_2_;
  assign data_mem_data_o[31] = data_mem_data_o_1__31_;
  assign data_mem_data_o[63] = data_mem_data_o_1__31_;
  assign data_mem_data_o[30] = data_mem_data_o_1__30_;
  assign data_mem_data_o[62] = data_mem_data_o_1__30_;
  assign data_mem_data_o[29] = data_mem_data_o_1__29_;
  assign data_mem_data_o[61] = data_mem_data_o_1__29_;
  assign data_mem_data_o[28] = data_mem_data_o_1__28_;
  assign data_mem_data_o[60] = data_mem_data_o_1__28_;
  assign data_mem_data_o[27] = data_mem_data_o_1__27_;
  assign data_mem_data_o[59] = data_mem_data_o_1__27_;
  assign data_mem_data_o[26] = data_mem_data_o_1__26_;
  assign data_mem_data_o[58] = data_mem_data_o_1__26_;
  assign data_mem_data_o[25] = data_mem_data_o_1__25_;
  assign data_mem_data_o[57] = data_mem_data_o_1__25_;
  assign data_mem_data_o[24] = data_mem_data_o_1__24_;
  assign data_mem_data_o[56] = data_mem_data_o_1__24_;
  assign data_mem_data_o[23] = data_mem_data_o_1__23_;
  assign data_mem_data_o[55] = data_mem_data_o_1__23_;
  assign data_mem_data_o[22] = data_mem_data_o_1__22_;
  assign data_mem_data_o[54] = data_mem_data_o_1__22_;
  assign data_mem_data_o[21] = data_mem_data_o_1__21_;
  assign data_mem_data_o[53] = data_mem_data_o_1__21_;
  assign data_mem_data_o[20] = data_mem_data_o_1__20_;
  assign data_mem_data_o[52] = data_mem_data_o_1__20_;
  assign data_mem_data_o[19] = data_mem_data_o_1__19_;
  assign data_mem_data_o[51] = data_mem_data_o_1__19_;
  assign data_mem_data_o[18] = data_mem_data_o_1__18_;
  assign data_mem_data_o[50] = data_mem_data_o_1__18_;
  assign data_mem_data_o[17] = data_mem_data_o_1__17_;
  assign data_mem_data_o[49] = data_mem_data_o_1__17_;
  assign data_mem_data_o[16] = data_mem_data_o_1__16_;
  assign data_mem_data_o[48] = data_mem_data_o_1__16_;
  assign data_mem_data_o[15] = data_mem_data_o_1__15_;
  assign data_mem_data_o[47] = data_mem_data_o_1__15_;
  assign data_mem_data_o[14] = data_mem_data_o_1__14_;
  assign data_mem_data_o[46] = data_mem_data_o_1__14_;
  assign data_mem_data_o[13] = data_mem_data_o_1__13_;
  assign data_mem_data_o[45] = data_mem_data_o_1__13_;
  assign data_mem_data_o[12] = data_mem_data_o_1__12_;
  assign data_mem_data_o[44] = data_mem_data_o_1__12_;
  assign data_mem_data_o[11] = data_mem_data_o_1__11_;
  assign data_mem_data_o[43] = data_mem_data_o_1__11_;
  assign data_mem_data_o[10] = data_mem_data_o_1__10_;
  assign data_mem_data_o[42] = data_mem_data_o_1__10_;
  assign data_mem_data_o[9] = data_mem_data_o_1__9_;
  assign data_mem_data_o[41] = data_mem_data_o_1__9_;
  assign data_mem_data_o[8] = data_mem_data_o_1__8_;
  assign data_mem_data_o[40] = data_mem_data_o_1__8_;
  assign data_mem_data_o[7] = data_mem_data_o_1__7_;
  assign data_mem_data_o[39] = data_mem_data_o_1__7_;
  assign data_mem_data_o[6] = data_mem_data_o_1__6_;
  assign data_mem_data_o[38] = data_mem_data_o_1__6_;
  assign data_mem_data_o[5] = data_mem_data_o_1__5_;
  assign data_mem_data_o[37] = data_mem_data_o_1__5_;
  assign data_mem_data_o[4] = data_mem_data_o_1__4_;
  assign data_mem_data_o[36] = data_mem_data_o_1__4_;
  assign data_mem_data_o[3] = data_mem_data_o_1__3_;
  assign data_mem_data_o[35] = data_mem_data_o_1__3_;
  assign data_mem_data_o[2] = data_mem_data_o_1__2_;
  assign data_mem_data_o[34] = data_mem_data_o_1__2_;
  assign data_mem_data_o[1] = data_mem_data_o_1__1_;
  assign data_mem_data_o[33] = data_mem_data_o_1__1_;
  assign data_mem_data_o[0] = data_mem_data_o_1__0_;
  assign data_mem_data_o[32] = data_mem_data_o_1__0_;

  bsg_counter_clear_up_4_0
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
    .data_o({ data_mem_data_o_1__31_, data_mem_data_o_1__30_, data_mem_data_o_1__29_, data_mem_data_o_1__28_, data_mem_data_o_1__27_, data_mem_data_o_1__26_, data_mem_data_o_1__25_, data_mem_data_o_1__24_, data_mem_data_o_1__23_, data_mem_data_o_1__22_, data_mem_data_o_1__21_, data_mem_data_o_1__20_, data_mem_data_o_1__19_, data_mem_data_o_1__18_, data_mem_data_o_1__17_, data_mem_data_o_1__16_, data_mem_data_o_1__15_, data_mem_data_o_1__14_, data_mem_data_o_1__13_, data_mem_data_o_1__12_, data_mem_data_o_1__11_, data_mem_data_o_1__10_, data_mem_data_o_1__9_, data_mem_data_o_1__8_, data_mem_data_o_1__7_, data_mem_data_o_1__6_, data_mem_data_o_1__5_, data_mem_data_o_1__4_, data_mem_data_o_1__3_, data_mem_data_o_1__2_, data_mem_data_o_1__1_, data_mem_data_o_1__0_ }),
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


  bsg_decode_num_out_p2
  dma_way_demux
  (
    .i(dma_way_i[0]),
    .o(dma_way_mask)
  );


  bsg_expand_bitmask
  expand0
  (
    .i(dma_way_mask),
    .o(dma_way_mask_expanded)
  );


  bsg_mux_width_p4_els_p2
  track_way_mux
  (
    .data_i(track_mem_data_r),
    .sel_i(dma_way_i[0]),
    .data_o(track_data_way_picked)
  );


  bsg_mux_width_p1_els_p4
  track_offset_mux
  (
    .data_i(track_data_way_picked),
    .sel_i(data_mem_addr_o[1:0]),
    .data_o(track_bits_offset_picked[0])
  );


  bsg_expand_bitmask
  expand1
  (
    .i(track_bits_offset_picked[0]),
    .o(track_bits_offset_picked_expanded)
  );


  bsg_mux_width_p32_els_p2
  write_data_mux
  (
    .data_i(data_mem_data_i),
    .sel_i(dma_way_i[0]),
    .data_o(out_fifo_data_li)
  );

  assign N18 = N17 & N85;
  assign N19 = dma_state_r[1] | N85;
  assign N21 = N17 | dma_state_r[0];
  assign N23 = dma_state_r[1] & dma_state_r[0];
  assign N24 = dma_cmd_i[1] | N41;
  assign N25 = N27 | N24;
  assign N27 = dma_cmd_i[3] | dma_cmd_i[2];
  assign N28 = N40 | dma_cmd_i[0];
  assign N29 = N27 | N28;
  assign N31 = dma_cmd_i[3] | N39;
  assign N32 = N31 | N35;
  assign N34 = N38 | dma_cmd_i[2];
  assign N35 = dma_cmd_i[1] | dma_cmd_i[0];
  assign N36 = N34 | N35;
  assign N42 = N38 & N39;
  assign N43 = N40 & N41;
  assign N44 = N42 & N43;
  assign N71 = data_mem_addr_o[1:0] == dma_addr_i[3:2];

  bsg_mux_width_p32_els_p1
  snoop_mux0
  (
    .data_i({ data_mem_data_o_1__31_, data_mem_data_o_1__30_, data_mem_data_o_1__29_, data_mem_data_o_1__28_, data_mem_data_o_1__27_, data_mem_data_o_1__26_, data_mem_data_o_1__25_, data_mem_data_o_1__24_, data_mem_data_o_1__23_, data_mem_data_o_1__22_, data_mem_data_o_1__21_, data_mem_data_o_1__20_, data_mem_data_o_1__19_, data_mem_data_o_1__18_, data_mem_data_o_1__17_, data_mem_data_o_1__16_, data_mem_data_o_1__15_, data_mem_data_o_1__14_, data_mem_data_o_1__13_, data_mem_data_o_1__12_, data_mem_data_o_1__11_, data_mem_data_o_1__10_, data_mem_data_o_1__9_, data_mem_data_o_1__8_, data_mem_data_o_1__7_, data_mem_data_o_1__6_, data_mem_data_o_1__5_, data_mem_data_o_1__4_, data_mem_data_o_1__3_, data_mem_data_o_1__2_, data_mem_data_o_1__1_, data_mem_data_o_1__0_ }),
    .sel_i(dma_addr_i[2]),
    .data_o(snoop_word_n)
  );

  assign N76 = ~counter_r[2];
  assign N77 = data_mem_addr_o[1] | N76;
  assign N78 = data_mem_addr_o[0] | N77;
  assign N79 = ~N78;
  assign N80 = ~data_mem_addr_o[1];
  assign N81 = ~data_mem_addr_o[0];
  assign N82 = N80 | counter_r[2];
  assign N83 = N81 | N82;
  assign N84 = ~N83;
  assign N85 = ~dma_state_r[0];
  assign N86 = N85 | dma_state_r[1];
  assign N87 = ~N86;
  assign data_mem_w_mask_way_picked = (N0)? { N13, N14, N15, N16 } : 
                                      (N12)? { 1'b1, 1'b1, 1'b1, 1'b1 } : 1'b0;
  assign N0 = track_miss_i;
  assign N50 = (N1)? 1'b1 : 
               (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N49)? 1'b0 : 1'b0;
  assign N1 = N26;
  assign N2 = N30;
  assign N3 = N33;
  assign N4 = N37;
  assign N5 = N44;
  assign { N55, N54, N53, N52, N51 } = (N1)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                       (N2)? { 1'b1, track_data_way_picked } : 
                                       (N3)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                       (N4)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                       (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                       (N49)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N56 = (N1)? dma_pkt_yumi_i : 
               (N2)? dma_pkt_yumi_i : 
               (N3)? 1'b0 : 
               (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N49)? 1'b0 : 1'b0;
  assign N57 = (N1)? 1'b0 : 
               (N2)? 1'b0 : 
               (N3)? 1'b1 : 
               (N4)? 1'b1 : 
               (N5)? 1'b0 : 
               (N49)? 1'b0 : 1'b0;
  assign N58 = (N1)? 1'b0 : 
               (N2)? 1'b0 : 
               (N3)? 1'b0 : 
               (N4)? 1'b1 : 
               (N5)? 1'b0 : 
               (N49)? 1'b0 : 1'b0;
  assign N59 = (N1)? 1'b0 : 
               (N2)? 1'b0 : 
               (N3)? 1'b0 : 
               (N4)? track_bits_offset_picked[0] : 
               (N5)? 1'b0 : 
               (N49)? 1'b0 : 1'b0;
  assign N61 = ~N60;
  assign N66 = ~N65;
  assign counter_clear = (N6)? N57 : 
                         (N7)? N63 : 
                         (N8)? N68 : 
                         (N9)? 1'b0 : 1'b0;
  assign N6 = N18;
  assign N7 = N20;
  assign N8 = N22;
  assign N9 = N23;
  assign counter_up = (N6)? N58 : 
                      (N7)? N62 : 
                      (N8)? N67 : 
                      (N9)? 1'b0 : 1'b0;
  assign data_mem_v_o = (N6)? N59 : 
                        (N7)? in_fifo_v_lo : 
                        (N8)? N69 : 
                        (N9)? 1'b0 : 1'b0;
  assign dma_pkt_v_o = (N6)? N50 : 
                       (N7)? 1'b0 : 
                       (N8)? 1'b0 : 
                       (N9)? 1'b0 : 1'b0;
  assign { dma_pkt_o[32:32], dma_pkt_o[3:0] } = (N6)? { N55, N54, N53, N52, N51 } : 
                                                (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                (N8)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign done_o = (N6)? N56 : 
                  (N7)? N64 : 
                  (N8)? N70 : 
                  (N9)? 1'b0 : 1'b0;
  assign dma_state_n = (N6)? { N37, N33 } : 
                       (N7)? { 1'b0, N61 } : 
                       (N8)? { N66, 1'b0 } : 
                       (N9)? { 1'b0, 1'b0 } : 1'b0;
  assign data_mem_w_o = (N6)? 1'b0 : 
                        (N7)? in_fifo_v_lo : 
                        (N8)? 1'b0 : 
                        (N9)? 1'b0 : 1'b0;
  assign in_fifo_yumi_li = (N6)? 1'b0 : 
                           (N7)? in_fifo_v_lo : 
                           (N8)? 1'b0 : 
                           (N9)? 1'b0 : 1'b0;
  assign out_fifo_v_li = (N6)? 1'b0 : 
                         (N7)? 1'b0 : 
                         (N8)? 1'b1 : 
                         (N9)? 1'b0 : 1'b0;
  assign dma_evict_o = (N6)? 1'b0 : 
                       (N7)? 1'b0 : 
                       (N8)? 1'b1 : 
                       (N9)? 1'b0 : 1'b0;
  assign N74 = (N10)? 1'b0 : 
               (N11)? snoop_word_we : 1'b0;
  assign N10 = N73;
  assign N11 = N72;
  assign N75 = (N10)? 1'b0 : 
               (N11)? track_data_we_i : 1'b0;
  assign N12 = ~track_miss_i;
  assign N13 = ~track_bits_offset_picked_expanded[3];
  assign N14 = ~track_bits_offset_picked_expanded[2];
  assign N15 = ~track_bits_offset_picked_expanded[1];
  assign N16 = ~track_bits_offset_picked_expanded[0];
  assign data_mem_w_mask_o[7] = dma_way_mask_expanded[7] & data_mem_w_mask_way_picked[3];
  assign data_mem_w_mask_o[6] = dma_way_mask_expanded[6] & data_mem_w_mask_way_picked[2];
  assign data_mem_w_mask_o[5] = dma_way_mask_expanded[5] & data_mem_w_mask_way_picked[1];
  assign data_mem_w_mask_o[4] = dma_way_mask_expanded[4] & data_mem_w_mask_way_picked[0];
  assign data_mem_w_mask_o[3] = dma_way_mask_expanded[3] & data_mem_w_mask_way_picked[3];
  assign data_mem_w_mask_o[2] = dma_way_mask_expanded[2] & data_mem_w_mask_way_picked[2];
  assign data_mem_w_mask_o[1] = dma_way_mask_expanded[1] & data_mem_w_mask_way_picked[1];
  assign data_mem_w_mask_o[0] = dma_way_mask_expanded[0] & data_mem_w_mask_way_picked[0];
  assign N17 = ~dma_state_r[1];
  assign N20 = ~N19;
  assign N22 = ~N21;
  assign N26 = ~N25;
  assign N30 = ~N29;
  assign N33 = ~N32;
  assign N37 = ~N36;
  assign N38 = ~dma_cmd_i[3];
  assign N39 = ~dma_cmd_i[2];
  assign N40 = ~dma_cmd_i[1];
  assign N41 = ~dma_cmd_i[0];
  assign N45 = N30 | N26;
  assign N46 = N33 | N45;
  assign N47 = N37 | N46;
  assign N48 = N44 | N47;
  assign N49 = ~N48;
  assign N60 = N84 & in_fifo_v_lo;
  assign N62 = in_fifo_v_lo & N83;
  assign N63 = in_fifo_v_lo & N84;
  assign N64 = N84 & in_fifo_v_lo;
  assign N65 = N79 & out_fifo_ready_lo;
  assign N67 = out_fifo_ready_lo & N78;
  assign N68 = out_fifo_ready_lo & N79;
  assign N69 = N88 & track_bits_offset_picked[0];
  assign N88 = out_fifo_ready_lo & N78;
  assign N70 = N79 & out_fifo_ready_lo;
  assign snoop_word_we = N89 & N71;
  assign N89 = N87 & in_fifo_v_lo;
  assign N72 = ~reset_i;
  assign N73 = reset_i;

  always @(posedge clk_i) begin
    if(N75) begin
      track_mem_data_r_7_sv2v_reg <= track_mem_data_i[7];
      track_mem_data_r_6_sv2v_reg <= track_mem_data_i[6];
      track_mem_data_r_5_sv2v_reg <= track_mem_data_i[5];
      track_mem_data_r_4_sv2v_reg <= track_mem_data_i[4];
      track_mem_data_r_3_sv2v_reg <= track_mem_data_i[3];
      track_mem_data_r_2_sv2v_reg <= track_mem_data_i[2];
      track_mem_data_r_1_sv2v_reg <= track_mem_data_i[1];
      track_mem_data_r_0_sv2v_reg <= track_mem_data_i[0];
    end 
    if(reset_i) begin
      dma_state_r_1_sv2v_reg <= 1'b0;
      dma_state_r_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      dma_state_r_1_sv2v_reg <= dma_state_n[1];
      dma_state_r_0_sv2v_reg <= dma_state_n[0];
    end 
    if(N74) begin
      snoop_word_o_31_sv2v_reg <= snoop_word_n[31];
      snoop_word_o_30_sv2v_reg <= snoop_word_n[30];
      snoop_word_o_29_sv2v_reg <= snoop_word_n[29];
      snoop_word_o_28_sv2v_reg <= snoop_word_n[28];
      snoop_word_o_27_sv2v_reg <= snoop_word_n[27];
      snoop_word_o_26_sv2v_reg <= snoop_word_n[26];
      snoop_word_o_25_sv2v_reg <= snoop_word_n[25];
      snoop_word_o_24_sv2v_reg <= snoop_word_n[24];
      snoop_word_o_23_sv2v_reg <= snoop_word_n[23];
      snoop_word_o_22_sv2v_reg <= snoop_word_n[22];
      snoop_word_o_21_sv2v_reg <= snoop_word_n[21];
      snoop_word_o_20_sv2v_reg <= snoop_word_n[20];
      snoop_word_o_19_sv2v_reg <= snoop_word_n[19];
      snoop_word_o_18_sv2v_reg <= snoop_word_n[18];
      snoop_word_o_17_sv2v_reg <= snoop_word_n[17];
      snoop_word_o_16_sv2v_reg <= snoop_word_n[16];
      snoop_word_o_15_sv2v_reg <= snoop_word_n[15];
      snoop_word_o_14_sv2v_reg <= snoop_word_n[14];
      snoop_word_o_13_sv2v_reg <= snoop_word_n[13];
      snoop_word_o_12_sv2v_reg <= snoop_word_n[12];
      snoop_word_o_11_sv2v_reg <= snoop_word_n[11];
      snoop_word_o_10_sv2v_reg <= snoop_word_n[10];
      snoop_word_o_9_sv2v_reg <= snoop_word_n[9];
      snoop_word_o_8_sv2v_reg <= snoop_word_n[8];
      snoop_word_o_7_sv2v_reg <= snoop_word_n[7];
      snoop_word_o_6_sv2v_reg <= snoop_word_n[6];
      snoop_word_o_5_sv2v_reg <= snoop_word_n[5];
      snoop_word_o_4_sv2v_reg <= snoop_word_n[4];
      snoop_word_o_3_sv2v_reg <= snoop_word_n[3];
      snoop_word_o_2_sv2v_reg <= snoop_word_n[2];
      snoop_word_o_1_sv2v_reg <= snoop_word_n[1];
      snoop_word_o_0_sv2v_reg <= snoop_word_n[0];
    end 
  end


endmodule

