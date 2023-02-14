

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
  wire [2:0] count_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
  reg count_o_2_sv2v_reg,count_o_1_sv2v_reg,count_o_0_sv2v_reg;
  assign count_o[2] = count_o_2_sv2v_reg;
  assign count_o[1] = count_o_1_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;
  assign N9 = reset_i | clear_i;
  assign { N7, N6, N5 } = count_o + up_i;
  assign N8 = (N0)? up_i : 
              (N1)? N5 : 1'b0;
  assign N0 = clear_i;
  assign N1 = N4;
  assign N2 = ~reset_i;
  assign N3 = N2;
  assign N4 = ~clear_i;

  always @(posedge clk_i) begin
    if(N9) begin
      count_o_2_sv2v_reg <= 1'b0;
      count_o_1_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      count_o_2_sv2v_reg <= N7;
      count_o_1_sv2v_reg <= N6;
    end 
    if(reset_i) begin
      count_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      count_o_0_sv2v_reg <= N8;
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
  wire full_o,empty_o,N0,N1,N2,enq_r,deq_r,N3,equal_ptrs,sv2v_dc_1,sv2v_dc_2;
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
  assign N3 = (N0)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = N1;
  assign N1 = enq_i | deq_i;
  assign N2 = ~N1;
  assign empty_o = equal_ptrs & deq_r;
  assign full_o = equal_ptrs & enq_r;

  always @(posedge clk_i) begin
    if(reset_i) begin
      deq_r_sv2v_reg <= 1'b1;
      enq_r_sv2v_reg <= 1'b0;
    end else if(N3) begin
      deq_r_sv2v_reg <= deq_i;
      enq_r_sv2v_reg <= enq_i;
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
  wire [127:0] mem;
  reg mem_127_sv2v_reg,mem_126_sv2v_reg,mem_125_sv2v_reg,mem_124_sv2v_reg,
  mem_123_sv2v_reg,mem_122_sv2v_reg,mem_121_sv2v_reg,mem_120_sv2v_reg,mem_119_sv2v_reg,
  mem_118_sv2v_reg,mem_117_sv2v_reg,mem_116_sv2v_reg,mem_115_sv2v_reg,mem_114_sv2v_reg,
  mem_113_sv2v_reg,mem_112_sv2v_reg,mem_111_sv2v_reg,mem_110_sv2v_reg,
  mem_109_sv2v_reg,mem_108_sv2v_reg,mem_107_sv2v_reg,mem_106_sv2v_reg,mem_105_sv2v_reg,
  mem_104_sv2v_reg,mem_103_sv2v_reg,mem_102_sv2v_reg,mem_101_sv2v_reg,mem_100_sv2v_reg,
  mem_99_sv2v_reg,mem_98_sv2v_reg,mem_97_sv2v_reg,mem_96_sv2v_reg,mem_95_sv2v_reg,
  mem_94_sv2v_reg,mem_93_sv2v_reg,mem_92_sv2v_reg,mem_91_sv2v_reg,mem_90_sv2v_reg,
  mem_89_sv2v_reg,mem_88_sv2v_reg,mem_87_sv2v_reg,mem_86_sv2v_reg,mem_85_sv2v_reg,
  mem_84_sv2v_reg,mem_83_sv2v_reg,mem_82_sv2v_reg,mem_81_sv2v_reg,mem_80_sv2v_reg,
  mem_79_sv2v_reg,mem_78_sv2v_reg,mem_77_sv2v_reg,mem_76_sv2v_reg,mem_75_sv2v_reg,
  mem_74_sv2v_reg,mem_73_sv2v_reg,mem_72_sv2v_reg,mem_71_sv2v_reg,mem_70_sv2v_reg,
  mem_69_sv2v_reg,mem_68_sv2v_reg,mem_67_sv2v_reg,mem_66_sv2v_reg,mem_65_sv2v_reg,
  mem_64_sv2v_reg,mem_63_sv2v_reg,mem_62_sv2v_reg,mem_61_sv2v_reg,mem_60_sv2v_reg,
  mem_59_sv2v_reg,mem_58_sv2v_reg,mem_57_sv2v_reg,mem_56_sv2v_reg,mem_55_sv2v_reg,
  mem_54_sv2v_reg,mem_53_sv2v_reg,mem_52_sv2v_reg,mem_51_sv2v_reg,mem_50_sv2v_reg,
  mem_49_sv2v_reg,mem_48_sv2v_reg,mem_47_sv2v_reg,mem_46_sv2v_reg,mem_45_sv2v_reg,
  mem_44_sv2v_reg,mem_43_sv2v_reg,mem_42_sv2v_reg,mem_41_sv2v_reg,mem_40_sv2v_reg,
  mem_39_sv2v_reg,mem_38_sv2v_reg,mem_37_sv2v_reg,mem_36_sv2v_reg,mem_35_sv2v_reg,
  mem_34_sv2v_reg,mem_33_sv2v_reg,mem_32_sv2v_reg,mem_31_sv2v_reg,mem_30_sv2v_reg,
  mem_29_sv2v_reg,mem_28_sv2v_reg,mem_27_sv2v_reg,mem_26_sv2v_reg,mem_25_sv2v_reg,
  mem_24_sv2v_reg,mem_23_sv2v_reg,mem_22_sv2v_reg,mem_21_sv2v_reg,mem_20_sv2v_reg,
  mem_19_sv2v_reg,mem_18_sv2v_reg,mem_17_sv2v_reg,mem_16_sv2v_reg,mem_15_sv2v_reg,
  mem_14_sv2v_reg,mem_13_sv2v_reg,mem_12_sv2v_reg,mem_11_sv2v_reg,mem_10_sv2v_reg,
  mem_9_sv2v_reg,mem_8_sv2v_reg,mem_7_sv2v_reg,mem_6_sv2v_reg,mem_5_sv2v_reg,
  mem_4_sv2v_reg,mem_3_sv2v_reg,mem_2_sv2v_reg,mem_1_sv2v_reg,mem_0_sv2v_reg;
  assign mem[127] = mem_127_sv2v_reg;
  assign mem[126] = mem_126_sv2v_reg;
  assign mem[125] = mem_125_sv2v_reg;
  assign mem[124] = mem_124_sv2v_reg;
  assign mem[123] = mem_123_sv2v_reg;
  assign mem[122] = mem_122_sv2v_reg;
  assign mem[121] = mem_121_sv2v_reg;
  assign mem[120] = mem_120_sv2v_reg;
  assign mem[119] = mem_119_sv2v_reg;
  assign mem[118] = mem_118_sv2v_reg;
  assign mem[117] = mem_117_sv2v_reg;
  assign mem[116] = mem_116_sv2v_reg;
  assign mem[115] = mem_115_sv2v_reg;
  assign mem[114] = mem_114_sv2v_reg;
  assign mem[113] = mem_113_sv2v_reg;
  assign mem[112] = mem_112_sv2v_reg;
  assign mem[111] = mem_111_sv2v_reg;
  assign mem[110] = mem_110_sv2v_reg;
  assign mem[109] = mem_109_sv2v_reg;
  assign mem[108] = mem_108_sv2v_reg;
  assign mem[107] = mem_107_sv2v_reg;
  assign mem[106] = mem_106_sv2v_reg;
  assign mem[105] = mem_105_sv2v_reg;
  assign mem[104] = mem_104_sv2v_reg;
  assign mem[103] = mem_103_sv2v_reg;
  assign mem[102] = mem_102_sv2v_reg;
  assign mem[101] = mem_101_sv2v_reg;
  assign mem[100] = mem_100_sv2v_reg;
  assign mem[99] = mem_99_sv2v_reg;
  assign mem[98] = mem_98_sv2v_reg;
  assign mem[97] = mem_97_sv2v_reg;
  assign mem[96] = mem_96_sv2v_reg;
  assign mem[95] = mem_95_sv2v_reg;
  assign mem[94] = mem_94_sv2v_reg;
  assign mem[93] = mem_93_sv2v_reg;
  assign mem[92] = mem_92_sv2v_reg;
  assign mem[91] = mem_91_sv2v_reg;
  assign mem[90] = mem_90_sv2v_reg;
  assign mem[89] = mem_89_sv2v_reg;
  assign mem[88] = mem_88_sv2v_reg;
  assign mem[87] = mem_87_sv2v_reg;
  assign mem[86] = mem_86_sv2v_reg;
  assign mem[85] = mem_85_sv2v_reg;
  assign mem[84] = mem_84_sv2v_reg;
  assign mem[83] = mem_83_sv2v_reg;
  assign mem[82] = mem_82_sv2v_reg;
  assign mem[81] = mem_81_sv2v_reg;
  assign mem[80] = mem_80_sv2v_reg;
  assign mem[79] = mem_79_sv2v_reg;
  assign mem[78] = mem_78_sv2v_reg;
  assign mem[77] = mem_77_sv2v_reg;
  assign mem[76] = mem_76_sv2v_reg;
  assign mem[75] = mem_75_sv2v_reg;
  assign mem[74] = mem_74_sv2v_reg;
  assign mem[73] = mem_73_sv2v_reg;
  assign mem[72] = mem_72_sv2v_reg;
  assign mem[71] = mem_71_sv2v_reg;
  assign mem[70] = mem_70_sv2v_reg;
  assign mem[69] = mem_69_sv2v_reg;
  assign mem[68] = mem_68_sv2v_reg;
  assign mem[67] = mem_67_sv2v_reg;
  assign mem[66] = mem_66_sv2v_reg;
  assign mem[65] = mem_65_sv2v_reg;
  assign mem[64] = mem_64_sv2v_reg;
  assign mem[63] = mem_63_sv2v_reg;
  assign mem[62] = mem_62_sv2v_reg;
  assign mem[61] = mem_61_sv2v_reg;
  assign mem[60] = mem_60_sv2v_reg;
  assign mem[59] = mem_59_sv2v_reg;
  assign mem[58] = mem_58_sv2v_reg;
  assign mem[57] = mem_57_sv2v_reg;
  assign mem[56] = mem_56_sv2v_reg;
  assign mem[55] = mem_55_sv2v_reg;
  assign mem[54] = mem_54_sv2v_reg;
  assign mem[53] = mem_53_sv2v_reg;
  assign mem[52] = mem_52_sv2v_reg;
  assign mem[51] = mem_51_sv2v_reg;
  assign mem[50] = mem_50_sv2v_reg;
  assign mem[49] = mem_49_sv2v_reg;
  assign mem[48] = mem_48_sv2v_reg;
  assign mem[47] = mem_47_sv2v_reg;
  assign mem[46] = mem_46_sv2v_reg;
  assign mem[45] = mem_45_sv2v_reg;
  assign mem[44] = mem_44_sv2v_reg;
  assign mem[43] = mem_43_sv2v_reg;
  assign mem[42] = mem_42_sv2v_reg;
  assign mem[41] = mem_41_sv2v_reg;
  assign mem[40] = mem_40_sv2v_reg;
  assign mem[39] = mem_39_sv2v_reg;
  assign mem[38] = mem_38_sv2v_reg;
  assign mem[37] = mem_37_sv2v_reg;
  assign mem[36] = mem_36_sv2v_reg;
  assign mem[35] = mem_35_sv2v_reg;
  assign mem[34] = mem_34_sv2v_reg;
  assign mem[33] = mem_33_sv2v_reg;
  assign mem[32] = mem_32_sv2v_reg;
  assign mem[31] = mem_31_sv2v_reg;
  assign mem[30] = mem_30_sv2v_reg;
  assign mem[29] = mem_29_sv2v_reg;
  assign mem[28] = mem_28_sv2v_reg;
  assign mem[27] = mem_27_sv2v_reg;
  assign mem[26] = mem_26_sv2v_reg;
  assign mem[25] = mem_25_sv2v_reg;
  assign mem[24] = mem_24_sv2v_reg;
  assign mem[23] = mem_23_sv2v_reg;
  assign mem[22] = mem_22_sv2v_reg;
  assign mem[21] = mem_21_sv2v_reg;
  assign mem[20] = mem_20_sv2v_reg;
  assign mem[19] = mem_19_sv2v_reg;
  assign mem[18] = mem_18_sv2v_reg;
  assign mem[17] = mem_17_sv2v_reg;
  assign mem[16] = mem_16_sv2v_reg;
  assign mem[15] = mem_15_sv2v_reg;
  assign mem[14] = mem_14_sv2v_reg;
  assign mem[13] = mem_13_sv2v_reg;
  assign mem[12] = mem_12_sv2v_reg;
  assign mem[11] = mem_11_sv2v_reg;
  assign mem[10] = mem_10_sv2v_reg;
  assign mem[9] = mem_9_sv2v_reg;
  assign mem[8] = mem_8_sv2v_reg;
  assign mem[7] = mem_7_sv2v_reg;
  assign mem[6] = mem_6_sv2v_reg;
  assign mem[5] = mem_5_sv2v_reg;
  assign mem[4] = mem_4_sv2v_reg;
  assign mem[3] = mem_3_sv2v_reg;
  assign mem[2] = mem_2_sv2v_reg;
  assign mem[1] = mem_1_sv2v_reg;
  assign mem[0] = mem_0_sv2v_reg;
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
      mem_127_sv2v_reg <= w_data_i[31];
      mem_126_sv2v_reg <= w_data_i[30];
      mem_125_sv2v_reg <= w_data_i[29];
      mem_124_sv2v_reg <= w_data_i[28];
      mem_123_sv2v_reg <= w_data_i[27];
      mem_122_sv2v_reg <= w_data_i[26];
      mem_121_sv2v_reg <= w_data_i[25];
      mem_120_sv2v_reg <= w_data_i[24];
      mem_119_sv2v_reg <= w_data_i[23];
      mem_118_sv2v_reg <= w_data_i[22];
      mem_117_sv2v_reg <= w_data_i[21];
      mem_116_sv2v_reg <= w_data_i[20];
      mem_115_sv2v_reg <= w_data_i[19];
      mem_114_sv2v_reg <= w_data_i[18];
      mem_113_sv2v_reg <= w_data_i[17];
      mem_112_sv2v_reg <= w_data_i[16];
      mem_111_sv2v_reg <= w_data_i[15];
      mem_110_sv2v_reg <= w_data_i[14];
      mem_109_sv2v_reg <= w_data_i[13];
      mem_108_sv2v_reg <= w_data_i[12];
      mem_107_sv2v_reg <= w_data_i[11];
      mem_106_sv2v_reg <= w_data_i[10];
      mem_105_sv2v_reg <= w_data_i[9];
      mem_104_sv2v_reg <= w_data_i[8];
      mem_103_sv2v_reg <= w_data_i[7];
      mem_102_sv2v_reg <= w_data_i[6];
      mem_101_sv2v_reg <= w_data_i[5];
      mem_100_sv2v_reg <= w_data_i[4];
      mem_99_sv2v_reg <= w_data_i[3];
      mem_98_sv2v_reg <= w_data_i[2];
      mem_97_sv2v_reg <= w_data_i[1];
      mem_96_sv2v_reg <= w_data_i[0];
    end 
    if(N19) begin
      mem_95_sv2v_reg <= w_data_i[31];
      mem_94_sv2v_reg <= w_data_i[30];
      mem_93_sv2v_reg <= w_data_i[29];
      mem_92_sv2v_reg <= w_data_i[28];
      mem_91_sv2v_reg <= w_data_i[27];
      mem_90_sv2v_reg <= w_data_i[26];
      mem_89_sv2v_reg <= w_data_i[25];
      mem_88_sv2v_reg <= w_data_i[24];
      mem_87_sv2v_reg <= w_data_i[23];
      mem_86_sv2v_reg <= w_data_i[22];
      mem_85_sv2v_reg <= w_data_i[21];
      mem_84_sv2v_reg <= w_data_i[20];
      mem_83_sv2v_reg <= w_data_i[19];
      mem_82_sv2v_reg <= w_data_i[18];
      mem_81_sv2v_reg <= w_data_i[17];
      mem_80_sv2v_reg <= w_data_i[16];
      mem_79_sv2v_reg <= w_data_i[15];
      mem_78_sv2v_reg <= w_data_i[14];
      mem_77_sv2v_reg <= w_data_i[13];
      mem_76_sv2v_reg <= w_data_i[12];
      mem_75_sv2v_reg <= w_data_i[11];
      mem_74_sv2v_reg <= w_data_i[10];
      mem_73_sv2v_reg <= w_data_i[9];
      mem_72_sv2v_reg <= w_data_i[8];
      mem_71_sv2v_reg <= w_data_i[7];
      mem_70_sv2v_reg <= w_data_i[6];
      mem_69_sv2v_reg <= w_data_i[5];
      mem_68_sv2v_reg <= w_data_i[4];
      mem_67_sv2v_reg <= w_data_i[3];
      mem_66_sv2v_reg <= w_data_i[2];
      mem_65_sv2v_reg <= w_data_i[1];
      mem_64_sv2v_reg <= w_data_i[0];
    end 
    if(N18) begin
      mem_63_sv2v_reg <= w_data_i[31];
      mem_62_sv2v_reg <= w_data_i[30];
      mem_61_sv2v_reg <= w_data_i[29];
      mem_60_sv2v_reg <= w_data_i[28];
      mem_59_sv2v_reg <= w_data_i[27];
      mem_58_sv2v_reg <= w_data_i[26];
      mem_57_sv2v_reg <= w_data_i[25];
      mem_56_sv2v_reg <= w_data_i[24];
      mem_55_sv2v_reg <= w_data_i[23];
      mem_54_sv2v_reg <= w_data_i[22];
      mem_53_sv2v_reg <= w_data_i[21];
      mem_52_sv2v_reg <= w_data_i[20];
      mem_51_sv2v_reg <= w_data_i[19];
      mem_50_sv2v_reg <= w_data_i[18];
      mem_49_sv2v_reg <= w_data_i[17];
      mem_48_sv2v_reg <= w_data_i[16];
      mem_47_sv2v_reg <= w_data_i[15];
      mem_46_sv2v_reg <= w_data_i[14];
      mem_45_sv2v_reg <= w_data_i[13];
      mem_44_sv2v_reg <= w_data_i[12];
      mem_43_sv2v_reg <= w_data_i[11];
      mem_42_sv2v_reg <= w_data_i[10];
      mem_41_sv2v_reg <= w_data_i[9];
      mem_40_sv2v_reg <= w_data_i[8];
      mem_39_sv2v_reg <= w_data_i[7];
      mem_38_sv2v_reg <= w_data_i[6];
      mem_37_sv2v_reg <= w_data_i[5];
      mem_36_sv2v_reg <= w_data_i[4];
      mem_35_sv2v_reg <= w_data_i[3];
      mem_34_sv2v_reg <= w_data_i[2];
      mem_33_sv2v_reg <= w_data_i[1];
      mem_32_sv2v_reg <= w_data_i[0];
    end 
    if(N17) begin
      mem_31_sv2v_reg <= w_data_i[31];
      mem_30_sv2v_reg <= w_data_i[30];
      mem_29_sv2v_reg <= w_data_i[29];
      mem_28_sv2v_reg <= w_data_i[28];
      mem_27_sv2v_reg <= w_data_i[27];
      mem_26_sv2v_reg <= w_data_i[26];
      mem_25_sv2v_reg <= w_data_i[25];
      mem_24_sv2v_reg <= w_data_i[24];
      mem_23_sv2v_reg <= w_data_i[23];
      mem_22_sv2v_reg <= w_data_i[22];
      mem_21_sv2v_reg <= w_data_i[21];
      mem_20_sv2v_reg <= w_data_i[20];
      mem_19_sv2v_reg <= w_data_i[19];
      mem_18_sv2v_reg <= w_data_i[18];
      mem_17_sv2v_reg <= w_data_i[17];
      mem_16_sv2v_reg <= w_data_i[16];
      mem_15_sv2v_reg <= w_data_i[15];
      mem_14_sv2v_reg <= w_data_i[14];
      mem_13_sv2v_reg <= w_data_i[13];
      mem_12_sv2v_reg <= w_data_i[12];
      mem_11_sv2v_reg <= w_data_i[11];
      mem_10_sv2v_reg <= w_data_i[10];
      mem_9_sv2v_reg <= w_data_i[9];
      mem_8_sv2v_reg <= w_data_i[8];
      mem_7_sv2v_reg <= w_data_i[7];
      mem_6_sv2v_reg <= w_data_i[6];
      mem_5_sv2v_reg <= w_data_i[5];
      mem_4_sv2v_reg <= w_data_i[4];
      mem_3_sv2v_reg <= w_data_i[3];
      mem_2_sv2v_reg <= w_data_i[2];
      mem_1_sv2v_reg <= w_data_i[1];
      mem_0_sv2v_reg <= w_data_i[0];
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
  \unhardened.fifo 
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
  wire [63:0] mem;
  reg mem_63_sv2v_reg,mem_62_sv2v_reg,mem_61_sv2v_reg,mem_60_sv2v_reg,mem_59_sv2v_reg,
  mem_58_sv2v_reg,mem_57_sv2v_reg,mem_56_sv2v_reg,mem_55_sv2v_reg,mem_54_sv2v_reg,
  mem_53_sv2v_reg,mem_52_sv2v_reg,mem_51_sv2v_reg,mem_50_sv2v_reg,mem_49_sv2v_reg,
  mem_48_sv2v_reg,mem_47_sv2v_reg,mem_46_sv2v_reg,mem_45_sv2v_reg,mem_44_sv2v_reg,
  mem_43_sv2v_reg,mem_42_sv2v_reg,mem_41_sv2v_reg,mem_40_sv2v_reg,mem_39_sv2v_reg,
  mem_38_sv2v_reg,mem_37_sv2v_reg,mem_36_sv2v_reg,mem_35_sv2v_reg,mem_34_sv2v_reg,
  mem_33_sv2v_reg,mem_32_sv2v_reg,mem_31_sv2v_reg,mem_30_sv2v_reg,mem_29_sv2v_reg,
  mem_28_sv2v_reg,mem_27_sv2v_reg,mem_26_sv2v_reg,mem_25_sv2v_reg,mem_24_sv2v_reg,
  mem_23_sv2v_reg,mem_22_sv2v_reg,mem_21_sv2v_reg,mem_20_sv2v_reg,mem_19_sv2v_reg,
  mem_18_sv2v_reg,mem_17_sv2v_reg,mem_16_sv2v_reg,mem_15_sv2v_reg,mem_14_sv2v_reg,
  mem_13_sv2v_reg,mem_12_sv2v_reg,mem_11_sv2v_reg,mem_10_sv2v_reg,mem_9_sv2v_reg,
  mem_8_sv2v_reg,mem_7_sv2v_reg,mem_6_sv2v_reg,mem_5_sv2v_reg,mem_4_sv2v_reg,
  mem_3_sv2v_reg,mem_2_sv2v_reg,mem_1_sv2v_reg,mem_0_sv2v_reg;
  assign mem[63] = mem_63_sv2v_reg;
  assign mem[62] = mem_62_sv2v_reg;
  assign mem[61] = mem_61_sv2v_reg;
  assign mem[60] = mem_60_sv2v_reg;
  assign mem[59] = mem_59_sv2v_reg;
  assign mem[58] = mem_58_sv2v_reg;
  assign mem[57] = mem_57_sv2v_reg;
  assign mem[56] = mem_56_sv2v_reg;
  assign mem[55] = mem_55_sv2v_reg;
  assign mem[54] = mem_54_sv2v_reg;
  assign mem[53] = mem_53_sv2v_reg;
  assign mem[52] = mem_52_sv2v_reg;
  assign mem[51] = mem_51_sv2v_reg;
  assign mem[50] = mem_50_sv2v_reg;
  assign mem[49] = mem_49_sv2v_reg;
  assign mem[48] = mem_48_sv2v_reg;
  assign mem[47] = mem_47_sv2v_reg;
  assign mem[46] = mem_46_sv2v_reg;
  assign mem[45] = mem_45_sv2v_reg;
  assign mem[44] = mem_44_sv2v_reg;
  assign mem[43] = mem_43_sv2v_reg;
  assign mem[42] = mem_42_sv2v_reg;
  assign mem[41] = mem_41_sv2v_reg;
  assign mem[40] = mem_40_sv2v_reg;
  assign mem[39] = mem_39_sv2v_reg;
  assign mem[38] = mem_38_sv2v_reg;
  assign mem[37] = mem_37_sv2v_reg;
  assign mem[36] = mem_36_sv2v_reg;
  assign mem[35] = mem_35_sv2v_reg;
  assign mem[34] = mem_34_sv2v_reg;
  assign mem[33] = mem_33_sv2v_reg;
  assign mem[32] = mem_32_sv2v_reg;
  assign mem[31] = mem_31_sv2v_reg;
  assign mem[30] = mem_30_sv2v_reg;
  assign mem[29] = mem_29_sv2v_reg;
  assign mem[28] = mem_28_sv2v_reg;
  assign mem[27] = mem_27_sv2v_reg;
  assign mem[26] = mem_26_sv2v_reg;
  assign mem[25] = mem_25_sv2v_reg;
  assign mem[24] = mem_24_sv2v_reg;
  assign mem[23] = mem_23_sv2v_reg;
  assign mem[22] = mem_22_sv2v_reg;
  assign mem[21] = mem_21_sv2v_reg;
  assign mem[20] = mem_20_sv2v_reg;
  assign mem[19] = mem_19_sv2v_reg;
  assign mem[18] = mem_18_sv2v_reg;
  assign mem[17] = mem_17_sv2v_reg;
  assign mem[16] = mem_16_sv2v_reg;
  assign mem[15] = mem_15_sv2v_reg;
  assign mem[14] = mem_14_sv2v_reg;
  assign mem[13] = mem_13_sv2v_reg;
  assign mem[12] = mem_12_sv2v_reg;
  assign mem[11] = mem_11_sv2v_reg;
  assign mem[10] = mem_10_sv2v_reg;
  assign mem[9] = mem_9_sv2v_reg;
  assign mem[8] = mem_8_sv2v_reg;
  assign mem[7] = mem_7_sv2v_reg;
  assign mem[6] = mem_6_sv2v_reg;
  assign mem[5] = mem_5_sv2v_reg;
  assign mem[4] = mem_4_sv2v_reg;
  assign mem[3] = mem_3_sv2v_reg;
  assign mem[2] = mem_2_sv2v_reg;
  assign mem[1] = mem_1_sv2v_reg;
  assign mem[0] = mem_0_sv2v_reg;
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
      mem_63_sv2v_reg <= w_data_i[31];
      mem_62_sv2v_reg <= w_data_i[30];
      mem_61_sv2v_reg <= w_data_i[29];
      mem_60_sv2v_reg <= w_data_i[28];
      mem_59_sv2v_reg <= w_data_i[27];
      mem_58_sv2v_reg <= w_data_i[26];
      mem_57_sv2v_reg <= w_data_i[25];
      mem_56_sv2v_reg <= w_data_i[24];
      mem_55_sv2v_reg <= w_data_i[23];
      mem_54_sv2v_reg <= w_data_i[22];
      mem_53_sv2v_reg <= w_data_i[21];
      mem_52_sv2v_reg <= w_data_i[20];
      mem_51_sv2v_reg <= w_data_i[19];
      mem_50_sv2v_reg <= w_data_i[18];
      mem_49_sv2v_reg <= w_data_i[17];
      mem_48_sv2v_reg <= w_data_i[16];
      mem_47_sv2v_reg <= w_data_i[15];
      mem_46_sv2v_reg <= w_data_i[14];
      mem_45_sv2v_reg <= w_data_i[13];
      mem_44_sv2v_reg <= w_data_i[12];
      mem_43_sv2v_reg <= w_data_i[11];
      mem_42_sv2v_reg <= w_data_i[10];
      mem_41_sv2v_reg <= w_data_i[9];
      mem_40_sv2v_reg <= w_data_i[8];
      mem_39_sv2v_reg <= w_data_i[7];
      mem_38_sv2v_reg <= w_data_i[6];
      mem_37_sv2v_reg <= w_data_i[5];
      mem_36_sv2v_reg <= w_data_i[4];
      mem_35_sv2v_reg <= w_data_i[3];
      mem_34_sv2v_reg <= w_data_i[2];
      mem_33_sv2v_reg <= w_data_i[1];
      mem_32_sv2v_reg <= w_data_i[0];
    end 
    if(N7) begin
      mem_31_sv2v_reg <= w_data_i[31];
      mem_30_sv2v_reg <= w_data_i[30];
      mem_29_sv2v_reg <= w_data_i[29];
      mem_28_sv2v_reg <= w_data_i[28];
      mem_27_sv2v_reg <= w_data_i[27];
      mem_26_sv2v_reg <= w_data_i[26];
      mem_25_sv2v_reg <= w_data_i[25];
      mem_24_sv2v_reg <= w_data_i[24];
      mem_23_sv2v_reg <= w_data_i[23];
      mem_22_sv2v_reg <= w_data_i[22];
      mem_21_sv2v_reg <= w_data_i[21];
      mem_20_sv2v_reg <= w_data_i[20];
      mem_19_sv2v_reg <= w_data_i[19];
      mem_18_sv2v_reg <= w_data_i[18];
      mem_17_sv2v_reg <= w_data_i[17];
      mem_16_sv2v_reg <= w_data_i[16];
      mem_15_sv2v_reg <= w_data_i[15];
      mem_14_sv2v_reg <= w_data_i[14];
      mem_13_sv2v_reg <= w_data_i[13];
      mem_12_sv2v_reg <= w_data_i[12];
      mem_11_sv2v_reg <= w_data_i[11];
      mem_10_sv2v_reg <= w_data_i[10];
      mem_9_sv2v_reg <= w_data_i[9];
      mem_8_sv2v_reg <= w_data_i[8];
      mem_7_sv2v_reg <= w_data_i[7];
      mem_6_sv2v_reg <= w_data_i[6];
      mem_5_sv2v_reg <= w_data_i[5];
      mem_4_sv2v_reg <= w_data_i[4];
      mem_3_sv2v_reg <= w_data_i[3];
      mem_2_sv2v_reg <= w_data_i[2];
      mem_1_sv2v_reg <= w_data_i[1];
      mem_0_sv2v_reg <= w_data_i[0];
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
  wire [31:0] snoop_word_o,dma_data_o,out_fifo_data_li,snoop_word_n;
  wire [28:0] dma_pkt_o;
  wire [7:0] data_mem_addr_o;
  wire [15:0] data_mem_w_mask_o;
  wire [127:0] data_mem_data_o;
  wire done_o,dma_pkt_v_o,dma_data_ready_o,dma_data_v_o,data_mem_v_o,data_mem_w_o,
  dma_evict_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,dma_pkt_o_27_,dma_pkt_o_26_,
  dma_pkt_o_25_,dma_pkt_o_24_,dma_pkt_o_23_,dma_pkt_o_22_,dma_pkt_o_21_,dma_pkt_o_20_,
  dma_pkt_o_19_,dma_pkt_o_18_,dma_pkt_o_17_,dma_pkt_o_16_,dma_pkt_o_15_,dma_pkt_o_14_,
  dma_pkt_o_13_,dma_pkt_o_12_,dma_pkt_o_11_,dma_pkt_o_10_,data_mem_addr_o_7_,
  data_mem_addr_o_6_,data_mem_addr_o_5_,data_mem_addr_o_4_,data_mem_addr_o_3_,
  data_mem_addr_o_2_,data_mem_data_o_3__31_,data_mem_data_o_3__30_,data_mem_data_o_3__29_,
  data_mem_data_o_3__28_,data_mem_data_o_3__27_,data_mem_data_o_3__26_,
  data_mem_data_o_3__25_,data_mem_data_o_3__24_,data_mem_data_o_3__23_,data_mem_data_o_3__22_,
  data_mem_data_o_3__21_,data_mem_data_o_3__20_,data_mem_data_o_3__19_,
  data_mem_data_o_3__18_,data_mem_data_o_3__17_,data_mem_data_o_3__16_,data_mem_data_o_3__15_,
  data_mem_data_o_3__14_,data_mem_data_o_3__13_,data_mem_data_o_3__12_,
  data_mem_data_o_3__11_,data_mem_data_o_3__10_,data_mem_data_o_3__9_,data_mem_data_o_3__8_,
  data_mem_data_o_3__7_,data_mem_data_o_3__6_,data_mem_data_o_3__5_,
  data_mem_data_o_3__4_,data_mem_data_o_3__3_,data_mem_data_o_3__2_,data_mem_data_o_3__1_,
  data_mem_data_o_3__0_,counter_clear,counter_up,in_fifo_v_lo,in_fifo_yumi_li,
  out_fifo_v_li,out_fifo_ready_lo,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,
  N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,
  N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,snoop_word_we,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76;
  wire [2:2] counter_r;
  wire [3:0] dma_way_mask;
  wire [1:0] dma_state_r,dma_state_n;
  reg snoop_word_o_31_sv2v_reg,snoop_word_o_30_sv2v_reg,snoop_word_o_29_sv2v_reg,
  snoop_word_o_28_sv2v_reg,snoop_word_o_27_sv2v_reg,snoop_word_o_26_sv2v_reg,
  snoop_word_o_25_sv2v_reg,snoop_word_o_24_sv2v_reg,snoop_word_o_23_sv2v_reg,
  snoop_word_o_22_sv2v_reg,snoop_word_o_21_sv2v_reg,snoop_word_o_20_sv2v_reg,
  snoop_word_o_19_sv2v_reg,snoop_word_o_18_sv2v_reg,snoop_word_o_17_sv2v_reg,snoop_word_o_16_sv2v_reg,
  snoop_word_o_15_sv2v_reg,snoop_word_o_14_sv2v_reg,snoop_word_o_13_sv2v_reg,
  snoop_word_o_12_sv2v_reg,snoop_word_o_11_sv2v_reg,snoop_word_o_10_sv2v_reg,
  snoop_word_o_9_sv2v_reg,snoop_word_o_8_sv2v_reg,snoop_word_o_7_sv2v_reg,
  snoop_word_o_6_sv2v_reg,snoop_word_o_5_sv2v_reg,snoop_word_o_4_sv2v_reg,snoop_word_o_3_sv2v_reg,
  snoop_word_o_2_sv2v_reg,snoop_word_o_1_sv2v_reg,snoop_word_o_0_sv2v_reg,
  dma_state_r_1_sv2v_reg,dma_state_r_0_sv2v_reg;
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
  assign dma_state_r[1] = dma_state_r_1_sv2v_reg;
  assign dma_state_r[0] = dma_state_r_0_sv2v_reg;
  assign dma_pkt_o[0] = 1'b0;
  assign dma_pkt_o[1] = 1'b0;
  assign dma_pkt_o[2] = 1'b0;
  assign dma_pkt_o[3] = 1'b0;
  assign dma_pkt_o_27_ = dma_addr_i[27];
  assign dma_pkt_o[27] = dma_pkt_o_27_;
  assign dma_pkt_o_26_ = dma_addr_i[26];
  assign dma_pkt_o[26] = dma_pkt_o_26_;
  assign dma_pkt_o_25_ = dma_addr_i[25];
  assign dma_pkt_o[25] = dma_pkt_o_25_;
  assign dma_pkt_o_24_ = dma_addr_i[24];
  assign dma_pkt_o[24] = dma_pkt_o_24_;
  assign dma_pkt_o_23_ = dma_addr_i[23];
  assign dma_pkt_o[23] = dma_pkt_o_23_;
  assign dma_pkt_o_22_ = dma_addr_i[22];
  assign dma_pkt_o[22] = dma_pkt_o_22_;
  assign dma_pkt_o_21_ = dma_addr_i[21];
  assign dma_pkt_o[21] = dma_pkt_o_21_;
  assign dma_pkt_o_20_ = dma_addr_i[20];
  assign dma_pkt_o[20] = dma_pkt_o_20_;
  assign dma_pkt_o_19_ = dma_addr_i[19];
  assign dma_pkt_o[19] = dma_pkt_o_19_;
  assign dma_pkt_o_18_ = dma_addr_i[18];
  assign dma_pkt_o[18] = dma_pkt_o_18_;
  assign dma_pkt_o_17_ = dma_addr_i[17];
  assign dma_pkt_o[17] = dma_pkt_o_17_;
  assign dma_pkt_o_16_ = dma_addr_i[16];
  assign dma_pkt_o[16] = dma_pkt_o_16_;
  assign dma_pkt_o_15_ = dma_addr_i[15];
  assign dma_pkt_o[15] = dma_pkt_o_15_;
  assign dma_pkt_o_14_ = dma_addr_i[14];
  assign dma_pkt_o[14] = dma_pkt_o_14_;
  assign dma_pkt_o_13_ = dma_addr_i[13];
  assign dma_pkt_o[13] = dma_pkt_o_13_;
  assign dma_pkt_o_12_ = dma_addr_i[12];
  assign dma_pkt_o[12] = dma_pkt_o_12_;
  assign dma_pkt_o_11_ = dma_addr_i[11];
  assign dma_pkt_o[11] = dma_pkt_o_11_;
  assign dma_pkt_o_10_ = dma_addr_i[10];
  assign dma_pkt_o[10] = dma_pkt_o_10_;
  assign data_mem_addr_o_7_ = dma_addr_i[9];
  assign data_mem_addr_o[7] = data_mem_addr_o_7_;
  assign dma_pkt_o[9] = data_mem_addr_o_7_;
  assign data_mem_addr_o_6_ = dma_addr_i[8];
  assign data_mem_addr_o[6] = data_mem_addr_o_6_;
  assign dma_pkt_o[8] = data_mem_addr_o_6_;
  assign data_mem_addr_o_5_ = dma_addr_i[7];
  assign data_mem_addr_o[5] = data_mem_addr_o_5_;
  assign dma_pkt_o[7] = data_mem_addr_o_5_;
  assign data_mem_addr_o_4_ = dma_addr_i[6];
  assign data_mem_addr_o[4] = data_mem_addr_o_4_;
  assign dma_pkt_o[6] = data_mem_addr_o_4_;
  assign data_mem_addr_o_3_ = dma_addr_i[5];
  assign data_mem_addr_o[3] = data_mem_addr_o_3_;
  assign dma_pkt_o[5] = data_mem_addr_o_3_;
  assign data_mem_addr_o_2_ = dma_addr_i[4];
  assign data_mem_addr_o[2] = data_mem_addr_o_2_;
  assign dma_pkt_o[4] = data_mem_addr_o_2_;
  assign data_mem_data_o[31] = data_mem_data_o_3__31_;
  assign data_mem_data_o[63] = data_mem_data_o_3__31_;
  assign data_mem_data_o[95] = data_mem_data_o_3__31_;
  assign data_mem_data_o[127] = data_mem_data_o_3__31_;
  assign data_mem_data_o[30] = data_mem_data_o_3__30_;
  assign data_mem_data_o[62] = data_mem_data_o_3__30_;
  assign data_mem_data_o[94] = data_mem_data_o_3__30_;
  assign data_mem_data_o[126] = data_mem_data_o_3__30_;
  assign data_mem_data_o[29] = data_mem_data_o_3__29_;
  assign data_mem_data_o[61] = data_mem_data_o_3__29_;
  assign data_mem_data_o[93] = data_mem_data_o_3__29_;
  assign data_mem_data_o[125] = data_mem_data_o_3__29_;
  assign data_mem_data_o[28] = data_mem_data_o_3__28_;
  assign data_mem_data_o[60] = data_mem_data_o_3__28_;
  assign data_mem_data_o[92] = data_mem_data_o_3__28_;
  assign data_mem_data_o[124] = data_mem_data_o_3__28_;
  assign data_mem_data_o[27] = data_mem_data_o_3__27_;
  assign data_mem_data_o[59] = data_mem_data_o_3__27_;
  assign data_mem_data_o[91] = data_mem_data_o_3__27_;
  assign data_mem_data_o[123] = data_mem_data_o_3__27_;
  assign data_mem_data_o[26] = data_mem_data_o_3__26_;
  assign data_mem_data_o[58] = data_mem_data_o_3__26_;
  assign data_mem_data_o[90] = data_mem_data_o_3__26_;
  assign data_mem_data_o[122] = data_mem_data_o_3__26_;
  assign data_mem_data_o[25] = data_mem_data_o_3__25_;
  assign data_mem_data_o[57] = data_mem_data_o_3__25_;
  assign data_mem_data_o[89] = data_mem_data_o_3__25_;
  assign data_mem_data_o[121] = data_mem_data_o_3__25_;
  assign data_mem_data_o[24] = data_mem_data_o_3__24_;
  assign data_mem_data_o[56] = data_mem_data_o_3__24_;
  assign data_mem_data_o[88] = data_mem_data_o_3__24_;
  assign data_mem_data_o[120] = data_mem_data_o_3__24_;
  assign data_mem_data_o[23] = data_mem_data_o_3__23_;
  assign data_mem_data_o[55] = data_mem_data_o_3__23_;
  assign data_mem_data_o[87] = data_mem_data_o_3__23_;
  assign data_mem_data_o[119] = data_mem_data_o_3__23_;
  assign data_mem_data_o[22] = data_mem_data_o_3__22_;
  assign data_mem_data_o[54] = data_mem_data_o_3__22_;
  assign data_mem_data_o[86] = data_mem_data_o_3__22_;
  assign data_mem_data_o[118] = data_mem_data_o_3__22_;
  assign data_mem_data_o[21] = data_mem_data_o_3__21_;
  assign data_mem_data_o[53] = data_mem_data_o_3__21_;
  assign data_mem_data_o[85] = data_mem_data_o_3__21_;
  assign data_mem_data_o[117] = data_mem_data_o_3__21_;
  assign data_mem_data_o[20] = data_mem_data_o_3__20_;
  assign data_mem_data_o[52] = data_mem_data_o_3__20_;
  assign data_mem_data_o[84] = data_mem_data_o_3__20_;
  assign data_mem_data_o[116] = data_mem_data_o_3__20_;
  assign data_mem_data_o[19] = data_mem_data_o_3__19_;
  assign data_mem_data_o[51] = data_mem_data_o_3__19_;
  assign data_mem_data_o[83] = data_mem_data_o_3__19_;
  assign data_mem_data_o[115] = data_mem_data_o_3__19_;
  assign data_mem_data_o[18] = data_mem_data_o_3__18_;
  assign data_mem_data_o[50] = data_mem_data_o_3__18_;
  assign data_mem_data_o[82] = data_mem_data_o_3__18_;
  assign data_mem_data_o[114] = data_mem_data_o_3__18_;
  assign data_mem_data_o[17] = data_mem_data_o_3__17_;
  assign data_mem_data_o[49] = data_mem_data_o_3__17_;
  assign data_mem_data_o[81] = data_mem_data_o_3__17_;
  assign data_mem_data_o[113] = data_mem_data_o_3__17_;
  assign data_mem_data_o[16] = data_mem_data_o_3__16_;
  assign data_mem_data_o[48] = data_mem_data_o_3__16_;
  assign data_mem_data_o[80] = data_mem_data_o_3__16_;
  assign data_mem_data_o[112] = data_mem_data_o_3__16_;
  assign data_mem_data_o[15] = data_mem_data_o_3__15_;
  assign data_mem_data_o[47] = data_mem_data_o_3__15_;
  assign data_mem_data_o[79] = data_mem_data_o_3__15_;
  assign data_mem_data_o[111] = data_mem_data_o_3__15_;
  assign data_mem_data_o[14] = data_mem_data_o_3__14_;
  assign data_mem_data_o[46] = data_mem_data_o_3__14_;
  assign data_mem_data_o[78] = data_mem_data_o_3__14_;
  assign data_mem_data_o[110] = data_mem_data_o_3__14_;
  assign data_mem_data_o[13] = data_mem_data_o_3__13_;
  assign data_mem_data_o[45] = data_mem_data_o_3__13_;
  assign data_mem_data_o[77] = data_mem_data_o_3__13_;
  assign data_mem_data_o[109] = data_mem_data_o_3__13_;
  assign data_mem_data_o[12] = data_mem_data_o_3__12_;
  assign data_mem_data_o[44] = data_mem_data_o_3__12_;
  assign data_mem_data_o[76] = data_mem_data_o_3__12_;
  assign data_mem_data_o[108] = data_mem_data_o_3__12_;
  assign data_mem_data_o[11] = data_mem_data_o_3__11_;
  assign data_mem_data_o[43] = data_mem_data_o_3__11_;
  assign data_mem_data_o[75] = data_mem_data_o_3__11_;
  assign data_mem_data_o[107] = data_mem_data_o_3__11_;
  assign data_mem_data_o[10] = data_mem_data_o_3__10_;
  assign data_mem_data_o[42] = data_mem_data_o_3__10_;
  assign data_mem_data_o[74] = data_mem_data_o_3__10_;
  assign data_mem_data_o[106] = data_mem_data_o_3__10_;
  assign data_mem_data_o[9] = data_mem_data_o_3__9_;
  assign data_mem_data_o[41] = data_mem_data_o_3__9_;
  assign data_mem_data_o[73] = data_mem_data_o_3__9_;
  assign data_mem_data_o[105] = data_mem_data_o_3__9_;
  assign data_mem_data_o[8] = data_mem_data_o_3__8_;
  assign data_mem_data_o[40] = data_mem_data_o_3__8_;
  assign data_mem_data_o[72] = data_mem_data_o_3__8_;
  assign data_mem_data_o[104] = data_mem_data_o_3__8_;
  assign data_mem_data_o[7] = data_mem_data_o_3__7_;
  assign data_mem_data_o[39] = data_mem_data_o_3__7_;
  assign data_mem_data_o[71] = data_mem_data_o_3__7_;
  assign data_mem_data_o[103] = data_mem_data_o_3__7_;
  assign data_mem_data_o[6] = data_mem_data_o_3__6_;
  assign data_mem_data_o[38] = data_mem_data_o_3__6_;
  assign data_mem_data_o[70] = data_mem_data_o_3__6_;
  assign data_mem_data_o[102] = data_mem_data_o_3__6_;
  assign data_mem_data_o[5] = data_mem_data_o_3__5_;
  assign data_mem_data_o[37] = data_mem_data_o_3__5_;
  assign data_mem_data_o[69] = data_mem_data_o_3__5_;
  assign data_mem_data_o[101] = data_mem_data_o_3__5_;
  assign data_mem_data_o[4] = data_mem_data_o_3__4_;
  assign data_mem_data_o[36] = data_mem_data_o_3__4_;
  assign data_mem_data_o[68] = data_mem_data_o_3__4_;
  assign data_mem_data_o[100] = data_mem_data_o_3__4_;
  assign data_mem_data_o[3] = data_mem_data_o_3__3_;
  assign data_mem_data_o[35] = data_mem_data_o_3__3_;
  assign data_mem_data_o[67] = data_mem_data_o_3__3_;
  assign data_mem_data_o[99] = data_mem_data_o_3__3_;
  assign data_mem_data_o[2] = data_mem_data_o_3__2_;
  assign data_mem_data_o[34] = data_mem_data_o_3__2_;
  assign data_mem_data_o[66] = data_mem_data_o_3__2_;
  assign data_mem_data_o[98] = data_mem_data_o_3__2_;
  assign data_mem_data_o[1] = data_mem_data_o_3__1_;
  assign data_mem_data_o[33] = data_mem_data_o_3__1_;
  assign data_mem_data_o[65] = data_mem_data_o_3__1_;
  assign data_mem_data_o[97] = data_mem_data_o_3__1_;
  assign data_mem_data_o[0] = data_mem_data_o_3__0_;
  assign data_mem_data_o[32] = data_mem_data_o_3__0_;
  assign data_mem_data_o[64] = data_mem_data_o_3__0_;
  assign data_mem_data_o[96] = data_mem_data_o_3__0_;

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
    .data_o({ data_mem_data_o_3__31_, data_mem_data_o_3__30_, data_mem_data_o_3__29_, data_mem_data_o_3__28_, data_mem_data_o_3__27_, data_mem_data_o_3__26_, data_mem_data_o_3__25_, data_mem_data_o_3__24_, data_mem_data_o_3__23_, data_mem_data_o_3__22_, data_mem_data_o_3__21_, data_mem_data_o_3__20_, data_mem_data_o_3__19_, data_mem_data_o_3__18_, data_mem_data_o_3__17_, data_mem_data_o_3__16_, data_mem_data_o_3__15_, data_mem_data_o_3__14_, data_mem_data_o_3__13_, data_mem_data_o_3__12_, data_mem_data_o_3__11_, data_mem_data_o_3__10_, data_mem_data_o_3__9_, data_mem_data_o_3__8_, data_mem_data_o_3__7_, data_mem_data_o_3__6_, data_mem_data_o_3__5_, data_mem_data_o_3__4_, data_mem_data_o_3__3_, data_mem_data_o_3__2_, data_mem_data_o_3__1_, data_mem_data_o_3__0_ }),
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
    .o(dma_way_mask)
  );


  bsg_expand_bitmask
  expand0
  (
    .i(dma_way_mask),
    .o(data_mem_w_mask_o)
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
  assign N60 = data_mem_addr_o[1:0] == dma_addr_i[3:2];

  bsg_mux_width_p32_els_p1
  snoop_mux0
  (
    .data_i({ data_mem_data_o_3__31_, data_mem_data_o_3__30_, data_mem_data_o_3__29_, data_mem_data_o_3__28_, data_mem_data_o_3__27_, data_mem_data_o_3__26_, data_mem_data_o_3__25_, data_mem_data_o_3__24_, data_mem_data_o_3__23_, data_mem_data_o_3__22_, data_mem_data_o_3__21_, data_mem_data_o_3__20_, data_mem_data_o_3__19_, data_mem_data_o_3__18_, data_mem_data_o_3__17_, data_mem_data_o_3__16_, data_mem_data_o_3__15_, data_mem_data_o_3__14_, data_mem_data_o_3__13_, data_mem_data_o_3__12_, data_mem_data_o_3__11_, data_mem_data_o_3__10_, data_mem_data_o_3__9_, data_mem_data_o_3__8_, data_mem_data_o_3__7_, data_mem_data_o_3__6_, data_mem_data_o_3__5_, data_mem_data_o_3__4_, data_mem_data_o_3__3_, data_mem_data_o_3__2_, data_mem_data_o_3__1_, data_mem_data_o_3__0_ }),
    .sel_i(dma_addr_i[2]),
    .data_o(snoop_word_n)
  );

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
  assign snoop_word_we = N76 & N60;
  assign N76 = N66 & in_fifo_v_lo;
  assign N61 = ~reset_i;
  assign N62 = reset_i;

  always @(posedge clk_i) begin
    if(N63) begin
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
    if(reset_i) begin
      dma_state_r_1_sv2v_reg <= 1'b0;
      dma_state_r_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      dma_state_r_1_sv2v_reg <= dma_state_n[1];
      dma_state_r_0_sv2v_reg <= dma_state_n[0];
    end 
  end


endmodule

