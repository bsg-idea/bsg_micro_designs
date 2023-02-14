

module top
(
  clk_i,
  reset_i,
  v_i,
  len_i,
  data_i,
  ready_o,
  v_o,
  len_v_o,
  data_o,
  yumi_i
);

  input [2:0] len_i;
  input [79:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  output len_v_o;

  bsg_parallel_in_serial_out_dynamic
  wrapper
  (
    .len_i(len_i),
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .yumi_i(yumi_i),
    .ready_o(ready_o),
    .v_o(v_o),
    .len_v_o(len_v_o)
  );


endmodule



module bsg_mem_1r1w_synth_width_p3_els_p2_read_write_same_addr_p0_harden_p0
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
  input [2:0] w_data_i;
  input [0:0] r_addr_i;
  output [2:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [2:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  wire [5:0] mem;
  reg mem_5_sv2v_reg,mem_4_sv2v_reg,mem_3_sv2v_reg,mem_2_sv2v_reg,mem_1_sv2v_reg,
  mem_0_sv2v_reg;
  assign mem[5] = mem_5_sv2v_reg;
  assign mem[4] = mem_4_sv2v_reg;
  assign mem[3] = mem_3_sv2v_reg;
  assign mem[2] = mem_2_sv2v_reg;
  assign mem[1] = mem_1_sv2v_reg;
  assign mem[0] = mem_0_sv2v_reg;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[5] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[4] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[3] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_5_sv2v_reg <= w_data_i[2];
      mem_4_sv2v_reg <= w_data_i[1];
      mem_3_sv2v_reg <= w_data_i[0];
    end 
    if(N7) begin
      mem_2_sv2v_reg <= w_data_i[2];
      mem_1_sv2v_reg <= w_data_i[1];
      mem_0_sv2v_reg <= w_data_i[0];
    end 
  end


endmodule



module bsg_mem_1r1w_width_p3_els_p2_read_write_same_addr_p0
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
  input [2:0] w_data_i;
  input [0:0] r_addr_i;
  output [2:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [2:0] r_data_o;

  bsg_mem_1r1w_synth_width_p3_els_p2_read_write_same_addr_p0_harden_p0
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



module bsg_two_fifo_width_p3
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

  input [2:0] data_i;
  output [2:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [2:0] data_o;
  wire ready_o,v_o,enq_i,tail_r,_0_net_,head_r,empty_r,full_r,N0,N1,N2,N3,N4,N5,N6,N7,
  N8,N9,N10,N11,N12,N13,N14;
  reg full_r_sv2v_reg,tail_r_sv2v_reg,head_r_sv2v_reg,empty_r_sv2v_reg;
  assign full_r = full_r_sv2v_reg;
  assign tail_r = tail_r_sv2v_reg;
  assign head_r = head_r_sv2v_reg;
  assign empty_r = empty_r_sv2v_reg;

  bsg_mem_1r1w_width_p3_els_p2_read_write_same_addr_p0
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



module bsg_mem_1r1w_synth_width_p80_els_p2_read_write_same_addr_p0_harden_p0
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
  input [79:0] w_data_i;
  input [0:0] r_addr_i;
  output [79:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [79:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  wire [159:0] mem;
  reg mem_159_sv2v_reg,mem_158_sv2v_reg,mem_157_sv2v_reg,mem_156_sv2v_reg,
  mem_155_sv2v_reg,mem_154_sv2v_reg,mem_153_sv2v_reg,mem_152_sv2v_reg,mem_151_sv2v_reg,
  mem_150_sv2v_reg,mem_149_sv2v_reg,mem_148_sv2v_reg,mem_147_sv2v_reg,mem_146_sv2v_reg,
  mem_145_sv2v_reg,mem_144_sv2v_reg,mem_143_sv2v_reg,mem_142_sv2v_reg,
  mem_141_sv2v_reg,mem_140_sv2v_reg,mem_139_sv2v_reg,mem_138_sv2v_reg,mem_137_sv2v_reg,
  mem_136_sv2v_reg,mem_135_sv2v_reg,mem_134_sv2v_reg,mem_133_sv2v_reg,mem_132_sv2v_reg,
  mem_131_sv2v_reg,mem_130_sv2v_reg,mem_129_sv2v_reg,mem_128_sv2v_reg,
  mem_127_sv2v_reg,mem_126_sv2v_reg,mem_125_sv2v_reg,mem_124_sv2v_reg,mem_123_sv2v_reg,
  mem_122_sv2v_reg,mem_121_sv2v_reg,mem_120_sv2v_reg,mem_119_sv2v_reg,mem_118_sv2v_reg,
  mem_117_sv2v_reg,mem_116_sv2v_reg,mem_115_sv2v_reg,mem_114_sv2v_reg,mem_113_sv2v_reg,
  mem_112_sv2v_reg,mem_111_sv2v_reg,mem_110_sv2v_reg,mem_109_sv2v_reg,
  mem_108_sv2v_reg,mem_107_sv2v_reg,mem_106_sv2v_reg,mem_105_sv2v_reg,mem_104_sv2v_reg,
  mem_103_sv2v_reg,mem_102_sv2v_reg,mem_101_sv2v_reg,mem_100_sv2v_reg,mem_99_sv2v_reg,
  mem_98_sv2v_reg,mem_97_sv2v_reg,mem_96_sv2v_reg,mem_95_sv2v_reg,mem_94_sv2v_reg,
  mem_93_sv2v_reg,mem_92_sv2v_reg,mem_91_sv2v_reg,mem_90_sv2v_reg,mem_89_sv2v_reg,
  mem_88_sv2v_reg,mem_87_sv2v_reg,mem_86_sv2v_reg,mem_85_sv2v_reg,mem_84_sv2v_reg,
  mem_83_sv2v_reg,mem_82_sv2v_reg,mem_81_sv2v_reg,mem_80_sv2v_reg,mem_79_sv2v_reg,
  mem_78_sv2v_reg,mem_77_sv2v_reg,mem_76_sv2v_reg,mem_75_sv2v_reg,mem_74_sv2v_reg,
  mem_73_sv2v_reg,mem_72_sv2v_reg,mem_71_sv2v_reg,mem_70_sv2v_reg,mem_69_sv2v_reg,
  mem_68_sv2v_reg,mem_67_sv2v_reg,mem_66_sv2v_reg,mem_65_sv2v_reg,mem_64_sv2v_reg,
  mem_63_sv2v_reg,mem_62_sv2v_reg,mem_61_sv2v_reg,mem_60_sv2v_reg,mem_59_sv2v_reg,
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
  assign mem[159] = mem_159_sv2v_reg;
  assign mem[158] = mem_158_sv2v_reg;
  assign mem[157] = mem_157_sv2v_reg;
  assign mem[156] = mem_156_sv2v_reg;
  assign mem[155] = mem_155_sv2v_reg;
  assign mem[154] = mem_154_sv2v_reg;
  assign mem[153] = mem_153_sv2v_reg;
  assign mem[152] = mem_152_sv2v_reg;
  assign mem[151] = mem_151_sv2v_reg;
  assign mem[150] = mem_150_sv2v_reg;
  assign mem[149] = mem_149_sv2v_reg;
  assign mem[148] = mem_148_sv2v_reg;
  assign mem[147] = mem_147_sv2v_reg;
  assign mem[146] = mem_146_sv2v_reg;
  assign mem[145] = mem_145_sv2v_reg;
  assign mem[144] = mem_144_sv2v_reg;
  assign mem[143] = mem_143_sv2v_reg;
  assign mem[142] = mem_142_sv2v_reg;
  assign mem[141] = mem_141_sv2v_reg;
  assign mem[140] = mem_140_sv2v_reg;
  assign mem[139] = mem_139_sv2v_reg;
  assign mem[138] = mem_138_sv2v_reg;
  assign mem[137] = mem_137_sv2v_reg;
  assign mem[136] = mem_136_sv2v_reg;
  assign mem[135] = mem_135_sv2v_reg;
  assign mem[134] = mem_134_sv2v_reg;
  assign mem[133] = mem_133_sv2v_reg;
  assign mem[132] = mem_132_sv2v_reg;
  assign mem[131] = mem_131_sv2v_reg;
  assign mem[130] = mem_130_sv2v_reg;
  assign mem[129] = mem_129_sv2v_reg;
  assign mem[128] = mem_128_sv2v_reg;
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
  assign r_data_o[79] = (N3)? mem[79] : 
                        (N0)? mem[159] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[78] = (N3)? mem[78] : 
                        (N0)? mem[158] : 1'b0;
  assign r_data_o[77] = (N3)? mem[77] : 
                        (N0)? mem[157] : 1'b0;
  assign r_data_o[76] = (N3)? mem[76] : 
                        (N0)? mem[156] : 1'b0;
  assign r_data_o[75] = (N3)? mem[75] : 
                        (N0)? mem[155] : 1'b0;
  assign r_data_o[74] = (N3)? mem[74] : 
                        (N0)? mem[154] : 1'b0;
  assign r_data_o[73] = (N3)? mem[73] : 
                        (N0)? mem[153] : 1'b0;
  assign r_data_o[72] = (N3)? mem[72] : 
                        (N0)? mem[152] : 1'b0;
  assign r_data_o[71] = (N3)? mem[71] : 
                        (N0)? mem[151] : 1'b0;
  assign r_data_o[70] = (N3)? mem[70] : 
                        (N0)? mem[150] : 1'b0;
  assign r_data_o[69] = (N3)? mem[69] : 
                        (N0)? mem[149] : 1'b0;
  assign r_data_o[68] = (N3)? mem[68] : 
                        (N0)? mem[148] : 1'b0;
  assign r_data_o[67] = (N3)? mem[67] : 
                        (N0)? mem[147] : 1'b0;
  assign r_data_o[66] = (N3)? mem[66] : 
                        (N0)? mem[146] : 1'b0;
  assign r_data_o[65] = (N3)? mem[65] : 
                        (N0)? mem[145] : 1'b0;
  assign r_data_o[64] = (N3)? mem[64] : 
                        (N0)? mem[144] : 1'b0;
  assign r_data_o[63] = (N3)? mem[63] : 
                        (N0)? mem[143] : 1'b0;
  assign r_data_o[62] = (N3)? mem[62] : 
                        (N0)? mem[142] : 1'b0;
  assign r_data_o[61] = (N3)? mem[61] : 
                        (N0)? mem[141] : 1'b0;
  assign r_data_o[60] = (N3)? mem[60] : 
                        (N0)? mem[140] : 1'b0;
  assign r_data_o[59] = (N3)? mem[59] : 
                        (N0)? mem[139] : 1'b0;
  assign r_data_o[58] = (N3)? mem[58] : 
                        (N0)? mem[138] : 1'b0;
  assign r_data_o[57] = (N3)? mem[57] : 
                        (N0)? mem[137] : 1'b0;
  assign r_data_o[56] = (N3)? mem[56] : 
                        (N0)? mem[136] : 1'b0;
  assign r_data_o[55] = (N3)? mem[55] : 
                        (N0)? mem[135] : 1'b0;
  assign r_data_o[54] = (N3)? mem[54] : 
                        (N0)? mem[134] : 1'b0;
  assign r_data_o[53] = (N3)? mem[53] : 
                        (N0)? mem[133] : 1'b0;
  assign r_data_o[52] = (N3)? mem[52] : 
                        (N0)? mem[132] : 1'b0;
  assign r_data_o[51] = (N3)? mem[51] : 
                        (N0)? mem[131] : 1'b0;
  assign r_data_o[50] = (N3)? mem[50] : 
                        (N0)? mem[130] : 1'b0;
  assign r_data_o[49] = (N3)? mem[49] : 
                        (N0)? mem[129] : 1'b0;
  assign r_data_o[48] = (N3)? mem[48] : 
                        (N0)? mem[128] : 1'b0;
  assign r_data_o[47] = (N3)? mem[47] : 
                        (N0)? mem[127] : 1'b0;
  assign r_data_o[46] = (N3)? mem[46] : 
                        (N0)? mem[126] : 1'b0;
  assign r_data_o[45] = (N3)? mem[45] : 
                        (N0)? mem[125] : 1'b0;
  assign r_data_o[44] = (N3)? mem[44] : 
                        (N0)? mem[124] : 1'b0;
  assign r_data_o[43] = (N3)? mem[43] : 
                        (N0)? mem[123] : 1'b0;
  assign r_data_o[42] = (N3)? mem[42] : 
                        (N0)? mem[122] : 1'b0;
  assign r_data_o[41] = (N3)? mem[41] : 
                        (N0)? mem[121] : 1'b0;
  assign r_data_o[40] = (N3)? mem[40] : 
                        (N0)? mem[120] : 1'b0;
  assign r_data_o[39] = (N3)? mem[39] : 
                        (N0)? mem[119] : 1'b0;
  assign r_data_o[38] = (N3)? mem[38] : 
                        (N0)? mem[118] : 1'b0;
  assign r_data_o[37] = (N3)? mem[37] : 
                        (N0)? mem[117] : 1'b0;
  assign r_data_o[36] = (N3)? mem[36] : 
                        (N0)? mem[116] : 1'b0;
  assign r_data_o[35] = (N3)? mem[35] : 
                        (N0)? mem[115] : 1'b0;
  assign r_data_o[34] = (N3)? mem[34] : 
                        (N0)? mem[114] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] : 
                        (N0)? mem[113] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] : 
                        (N0)? mem[112] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[111] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[110] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[109] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[108] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[107] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[106] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[105] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[104] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[103] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[102] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[101] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[100] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[99] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[98] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[97] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[96] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[95] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[94] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[93] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[92] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[91] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[90] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[89] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[88] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[87] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[86] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[85] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[84] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[83] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[82] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[81] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[80] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_159_sv2v_reg <= w_data_i[79];
      mem_158_sv2v_reg <= w_data_i[78];
      mem_157_sv2v_reg <= w_data_i[77];
      mem_156_sv2v_reg <= w_data_i[76];
      mem_155_sv2v_reg <= w_data_i[75];
      mem_154_sv2v_reg <= w_data_i[74];
      mem_153_sv2v_reg <= w_data_i[73];
      mem_152_sv2v_reg <= w_data_i[72];
      mem_151_sv2v_reg <= w_data_i[71];
      mem_150_sv2v_reg <= w_data_i[70];
      mem_149_sv2v_reg <= w_data_i[69];
      mem_148_sv2v_reg <= w_data_i[68];
      mem_147_sv2v_reg <= w_data_i[67];
      mem_146_sv2v_reg <= w_data_i[66];
      mem_145_sv2v_reg <= w_data_i[65];
      mem_144_sv2v_reg <= w_data_i[64];
      mem_143_sv2v_reg <= w_data_i[63];
      mem_142_sv2v_reg <= w_data_i[62];
      mem_141_sv2v_reg <= w_data_i[61];
      mem_140_sv2v_reg <= w_data_i[60];
      mem_139_sv2v_reg <= w_data_i[59];
      mem_138_sv2v_reg <= w_data_i[58];
      mem_137_sv2v_reg <= w_data_i[57];
      mem_136_sv2v_reg <= w_data_i[56];
      mem_135_sv2v_reg <= w_data_i[55];
      mem_134_sv2v_reg <= w_data_i[54];
      mem_133_sv2v_reg <= w_data_i[53];
      mem_132_sv2v_reg <= w_data_i[52];
      mem_131_sv2v_reg <= w_data_i[51];
      mem_130_sv2v_reg <= w_data_i[50];
      mem_129_sv2v_reg <= w_data_i[49];
      mem_128_sv2v_reg <= w_data_i[48];
      mem_127_sv2v_reg <= w_data_i[47];
      mem_126_sv2v_reg <= w_data_i[46];
      mem_125_sv2v_reg <= w_data_i[45];
      mem_124_sv2v_reg <= w_data_i[44];
      mem_123_sv2v_reg <= w_data_i[43];
      mem_122_sv2v_reg <= w_data_i[42];
      mem_121_sv2v_reg <= w_data_i[41];
      mem_120_sv2v_reg <= w_data_i[40];
      mem_119_sv2v_reg <= w_data_i[39];
      mem_118_sv2v_reg <= w_data_i[38];
      mem_117_sv2v_reg <= w_data_i[37];
      mem_116_sv2v_reg <= w_data_i[36];
      mem_115_sv2v_reg <= w_data_i[35];
      mem_114_sv2v_reg <= w_data_i[34];
      mem_113_sv2v_reg <= w_data_i[33];
      mem_112_sv2v_reg <= w_data_i[32];
      mem_111_sv2v_reg <= w_data_i[31];
      mem_110_sv2v_reg <= w_data_i[30];
      mem_109_sv2v_reg <= w_data_i[29];
      mem_108_sv2v_reg <= w_data_i[28];
      mem_107_sv2v_reg <= w_data_i[27];
      mem_106_sv2v_reg <= w_data_i[26];
      mem_105_sv2v_reg <= w_data_i[25];
      mem_104_sv2v_reg <= w_data_i[24];
      mem_103_sv2v_reg <= w_data_i[23];
      mem_102_sv2v_reg <= w_data_i[22];
      mem_101_sv2v_reg <= w_data_i[21];
      mem_100_sv2v_reg <= w_data_i[20];
      mem_99_sv2v_reg <= w_data_i[19];
      mem_98_sv2v_reg <= w_data_i[18];
      mem_97_sv2v_reg <= w_data_i[17];
      mem_96_sv2v_reg <= w_data_i[16];
      mem_95_sv2v_reg <= w_data_i[15];
      mem_94_sv2v_reg <= w_data_i[14];
      mem_93_sv2v_reg <= w_data_i[13];
      mem_92_sv2v_reg <= w_data_i[12];
      mem_91_sv2v_reg <= w_data_i[11];
      mem_90_sv2v_reg <= w_data_i[10];
      mem_89_sv2v_reg <= w_data_i[9];
      mem_88_sv2v_reg <= w_data_i[8];
      mem_87_sv2v_reg <= w_data_i[7];
      mem_86_sv2v_reg <= w_data_i[6];
      mem_85_sv2v_reg <= w_data_i[5];
      mem_84_sv2v_reg <= w_data_i[4];
      mem_83_sv2v_reg <= w_data_i[3];
      mem_82_sv2v_reg <= w_data_i[2];
      mem_81_sv2v_reg <= w_data_i[1];
      mem_80_sv2v_reg <= w_data_i[0];
    end 
    if(N7) begin
      mem_79_sv2v_reg <= w_data_i[79];
      mem_78_sv2v_reg <= w_data_i[78];
      mem_77_sv2v_reg <= w_data_i[77];
      mem_76_sv2v_reg <= w_data_i[76];
      mem_75_sv2v_reg <= w_data_i[75];
      mem_74_sv2v_reg <= w_data_i[74];
      mem_73_sv2v_reg <= w_data_i[73];
      mem_72_sv2v_reg <= w_data_i[72];
      mem_71_sv2v_reg <= w_data_i[71];
      mem_70_sv2v_reg <= w_data_i[70];
      mem_69_sv2v_reg <= w_data_i[69];
      mem_68_sv2v_reg <= w_data_i[68];
      mem_67_sv2v_reg <= w_data_i[67];
      mem_66_sv2v_reg <= w_data_i[66];
      mem_65_sv2v_reg <= w_data_i[65];
      mem_64_sv2v_reg <= w_data_i[64];
      mem_63_sv2v_reg <= w_data_i[63];
      mem_62_sv2v_reg <= w_data_i[62];
      mem_61_sv2v_reg <= w_data_i[61];
      mem_60_sv2v_reg <= w_data_i[60];
      mem_59_sv2v_reg <= w_data_i[59];
      mem_58_sv2v_reg <= w_data_i[58];
      mem_57_sv2v_reg <= w_data_i[57];
      mem_56_sv2v_reg <= w_data_i[56];
      mem_55_sv2v_reg <= w_data_i[55];
      mem_54_sv2v_reg <= w_data_i[54];
      mem_53_sv2v_reg <= w_data_i[53];
      mem_52_sv2v_reg <= w_data_i[52];
      mem_51_sv2v_reg <= w_data_i[51];
      mem_50_sv2v_reg <= w_data_i[50];
      mem_49_sv2v_reg <= w_data_i[49];
      mem_48_sv2v_reg <= w_data_i[48];
      mem_47_sv2v_reg <= w_data_i[47];
      mem_46_sv2v_reg <= w_data_i[46];
      mem_45_sv2v_reg <= w_data_i[45];
      mem_44_sv2v_reg <= w_data_i[44];
      mem_43_sv2v_reg <= w_data_i[43];
      mem_42_sv2v_reg <= w_data_i[42];
      mem_41_sv2v_reg <= w_data_i[41];
      mem_40_sv2v_reg <= w_data_i[40];
      mem_39_sv2v_reg <= w_data_i[39];
      mem_38_sv2v_reg <= w_data_i[38];
      mem_37_sv2v_reg <= w_data_i[37];
      mem_36_sv2v_reg <= w_data_i[36];
      mem_35_sv2v_reg <= w_data_i[35];
      mem_34_sv2v_reg <= w_data_i[34];
      mem_33_sv2v_reg <= w_data_i[33];
      mem_32_sv2v_reg <= w_data_i[32];
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



module bsg_mem_1r1w_width_p80_els_p2_read_write_same_addr_p0
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
  input [79:0] w_data_i;
  input [0:0] r_addr_i;
  output [79:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [79:0] r_data_o;

  bsg_mem_1r1w_synth_width_p80_els_p2_read_write_same_addr_p0_harden_p0
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



module bsg_two_fifo_width_p80
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

  input [79:0] data_i;
  output [79:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [79:0] data_o;
  wire ready_o,v_o,enq_i,tail_r,_0_net_,head_r,empty_r,full_r,N0,N1,N2,N3,N4,N5,N6,N7,
  N8,N9,N10,N11,N12,N13,N14;
  reg full_r_sv2v_reg,tail_r_sv2v_reg,head_r_sv2v_reg,empty_r_sv2v_reg;
  assign full_r = full_r_sv2v_reg;
  assign tail_r = tail_r_sv2v_reg;
  assign head_r = head_r_sv2v_reg;
  assign empty_r = empty_r_sv2v_reg;

  bsg_mem_1r1w_width_p80_els_p2_read_write_same_addr_p0
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



module bsg_counter_clear_up_max_val_p4_init_val_p0
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



module bsg_mux_width_p16_els_p5
(
  data_i,
  sel_i,
  data_o
);

  input [79:0] data_i;
  input [2:0] sel_i;
  output [15:0] data_o;
  wire [15:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13;
  assign N10 = N0 & N1 & N2;
  assign N0 = ~sel_i[2];
  assign N1 = ~sel_i[0];
  assign N2 = ~sel_i[1];
  assign N11 = sel_i[0] & N3;
  assign N3 = ~sel_i[1];
  assign N12 = N4 & sel_i[1];
  assign N4 = ~sel_i[0];
  assign N13 = sel_i[0] & sel_i[1];
  assign data_o[15] = (N5)? data_i[15] : 
                      (N6)? data_i[31] : 
                      (N7)? data_i[47] : 
                      (N8)? data_i[63] : 
                      (N9)? data_i[79] : 1'b0;
  assign N5 = N10;
  assign N6 = N11;
  assign N7 = N12;
  assign N8 = N13;
  assign N9 = sel_i[2];
  assign data_o[14] = (N5)? data_i[14] : 
                      (N6)? data_i[30] : 
                      (N7)? data_i[46] : 
                      (N8)? data_i[62] : 
                      (N9)? data_i[78] : 1'b0;
  assign data_o[13] = (N5)? data_i[13] : 
                      (N6)? data_i[29] : 
                      (N7)? data_i[45] : 
                      (N8)? data_i[61] : 
                      (N9)? data_i[77] : 1'b0;
  assign data_o[12] = (N5)? data_i[12] : 
                      (N6)? data_i[28] : 
                      (N7)? data_i[44] : 
                      (N8)? data_i[60] : 
                      (N9)? data_i[76] : 1'b0;
  assign data_o[11] = (N5)? data_i[11] : 
                      (N6)? data_i[27] : 
                      (N7)? data_i[43] : 
                      (N8)? data_i[59] : 
                      (N9)? data_i[75] : 1'b0;
  assign data_o[10] = (N5)? data_i[10] : 
                      (N6)? data_i[26] : 
                      (N7)? data_i[42] : 
                      (N8)? data_i[58] : 
                      (N9)? data_i[74] : 1'b0;
  assign data_o[9] = (N5)? data_i[9] : 
                     (N6)? data_i[25] : 
                     (N7)? data_i[41] : 
                     (N8)? data_i[57] : 
                     (N9)? data_i[73] : 1'b0;
  assign data_o[8] = (N5)? data_i[8] : 
                     (N6)? data_i[24] : 
                     (N7)? data_i[40] : 
                     (N8)? data_i[56] : 
                     (N9)? data_i[72] : 1'b0;
  assign data_o[7] = (N5)? data_i[7] : 
                     (N6)? data_i[23] : 
                     (N7)? data_i[39] : 
                     (N8)? data_i[55] : 
                     (N9)? data_i[71] : 1'b0;
  assign data_o[6] = (N5)? data_i[6] : 
                     (N6)? data_i[22] : 
                     (N7)? data_i[38] : 
                     (N8)? data_i[54] : 
                     (N9)? data_i[70] : 1'b0;
  assign data_o[5] = (N5)? data_i[5] : 
                     (N6)? data_i[21] : 
                     (N7)? data_i[37] : 
                     (N8)? data_i[53] : 
                     (N9)? data_i[69] : 1'b0;
  assign data_o[4] = (N5)? data_i[4] : 
                     (N6)? data_i[20] : 
                     (N7)? data_i[36] : 
                     (N8)? data_i[52] : 
                     (N9)? data_i[68] : 1'b0;
  assign data_o[3] = (N5)? data_i[3] : 
                     (N6)? data_i[19] : 
                     (N7)? data_i[35] : 
                     (N8)? data_i[51] : 
                     (N9)? data_i[67] : 1'b0;
  assign data_o[2] = (N5)? data_i[2] : 
                     (N6)? data_i[18] : 
                     (N7)? data_i[34] : 
                     (N8)? data_i[50] : 
                     (N9)? data_i[66] : 1'b0;
  assign data_o[1] = (N5)? data_i[1] : 
                     (N6)? data_i[17] : 
                     (N7)? data_i[33] : 
                     (N8)? data_i[49] : 
                     (N9)? data_i[65] : 1'b0;
  assign data_o[0] = (N5)? data_i[0] : 
                     (N6)? data_i[16] : 
                     (N7)? data_i[32] : 
                     (N8)? data_i[48] : 
                     (N9)? data_i[64] : 1'b0;

endmodule



module bsg_parallel_in_serial_out_dynamic
(
  clk_i,
  reset_i,
  v_i,
  len_i,
  data_i,
  ready_o,
  v_o,
  len_v_o,
  data_o,
  yumi_i
);

  input [2:0] len_i;
  input [79:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  output len_v_o;
  wire [15:0] data_o;
  wire ready_o,v_o,len_v_o,count_r_is_last,up_li,clear_li,N0,N1,N3;
  wire [2:0] len_lo,count_lo;
  wire [79:0] fifo_data_lo;

  bsg_two_fifo_width_p3
  go_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_o),
    .data_i(len_i),
    .v_i(v_i),
    .v_o(v_o),
    .data_o(len_lo),
    .yumi_i(clear_li)
  );


  bsg_two_fifo_width_p80
  data_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(v_i),
    .data_o(fifo_data_lo),
    .yumi_i(clear_li)
  );

  assign count_r_is_last = count_lo == len_lo;

  bsg_counter_clear_up_max_val_p4_init_val_p0
  ctr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_li),
    .up_i(up_li),
    .count_o(count_lo)
  );


  bsg_mux_width_p16_els_p5
  data_mux
  (
    .data_i(fifo_data_lo),
    .sel_i(count_lo),
    .data_o(data_o)
  );

  assign N0 = count_lo[1] | count_lo[2];
  assign N1 = count_lo[0] | N0;
  assign len_v_o = ~N1;
  assign up_li = yumi_i & N3;
  assign N3 = ~count_r_is_last;
  assign clear_li = yumi_i & count_r_is_last;

endmodule

