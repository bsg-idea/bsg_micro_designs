

module top
(
  w_clk_i,
  w_reset_i,
  w_enq_i,
  w_data_i,
  w_full_o,
  r_clk_i,
  r_reset_i,
  r_deq_i,
  r_data_o,
  r_valid_o
);

  input [15:0] w_data_i;
  output [15:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_enq_i;
  input r_clk_i;
  input r_reset_i;
  input r_deq_i;
  output w_full_o;
  output r_valid_o;

  bsg_async_fifo
  wrapper
  (
    .w_data_i(w_data_i),
    .r_data_o(r_data_o),
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_enq_i(w_enq_i),
    .r_clk_i(r_clk_i),
    .r_reset_i(r_reset_i),
    .r_deq_i(r_deq_i),
    .w_full_o(w_full_o),
    .r_valid_o(r_valid_o)
  );


endmodule



module bsg_mem_1r1w_synth_width_p16_els_p8_read_write_same_addr_p0
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
  input [15:0] w_data_i;
  input [2:0] r_addr_i;
  output [15:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [15:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45;
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
  assign r_data_o[15] = (N17)? \nz.mem [15] : 
                        (N19)? \nz.mem [31] : 
                        (N21)? \nz.mem [47] : 
                        (N23)? \nz.mem [63] : 
                        (N18)? \nz.mem [79] : 
                        (N20)? \nz.mem [95] : 
                        (N22)? \nz.mem [111] : 
                        (N24)? \nz.mem [127] : 1'b0;
  assign r_data_o[14] = (N17)? \nz.mem [14] : 
                        (N19)? \nz.mem [30] : 
                        (N21)? \nz.mem [46] : 
                        (N23)? \nz.mem [62] : 
                        (N18)? \nz.mem [78] : 
                        (N20)? \nz.mem [94] : 
                        (N22)? \nz.mem [110] : 
                        (N24)? \nz.mem [126] : 1'b0;
  assign r_data_o[13] = (N17)? \nz.mem [13] : 
                        (N19)? \nz.mem [29] : 
                        (N21)? \nz.mem [45] : 
                        (N23)? \nz.mem [61] : 
                        (N18)? \nz.mem [77] : 
                        (N20)? \nz.mem [93] : 
                        (N22)? \nz.mem [109] : 
                        (N24)? \nz.mem [125] : 1'b0;
  assign r_data_o[12] = (N17)? \nz.mem [12] : 
                        (N19)? \nz.mem [28] : 
                        (N21)? \nz.mem [44] : 
                        (N23)? \nz.mem [60] : 
                        (N18)? \nz.mem [76] : 
                        (N20)? \nz.mem [92] : 
                        (N22)? \nz.mem [108] : 
                        (N24)? \nz.mem [124] : 1'b0;
  assign r_data_o[11] = (N17)? \nz.mem [11] : 
                        (N19)? \nz.mem [27] : 
                        (N21)? \nz.mem [43] : 
                        (N23)? \nz.mem [59] : 
                        (N18)? \nz.mem [75] : 
                        (N20)? \nz.mem [91] : 
                        (N22)? \nz.mem [107] : 
                        (N24)? \nz.mem [123] : 1'b0;
  assign r_data_o[10] = (N17)? \nz.mem [10] : 
                        (N19)? \nz.mem [26] : 
                        (N21)? \nz.mem [42] : 
                        (N23)? \nz.mem [58] : 
                        (N18)? \nz.mem [74] : 
                        (N20)? \nz.mem [90] : 
                        (N22)? \nz.mem [106] : 
                        (N24)? \nz.mem [122] : 1'b0;
  assign r_data_o[9] = (N17)? \nz.mem [9] : 
                       (N19)? \nz.mem [25] : 
                       (N21)? \nz.mem [41] : 
                       (N23)? \nz.mem [57] : 
                       (N18)? \nz.mem [73] : 
                       (N20)? \nz.mem [89] : 
                       (N22)? \nz.mem [105] : 
                       (N24)? \nz.mem [121] : 1'b0;
  assign r_data_o[8] = (N17)? \nz.mem [8] : 
                       (N19)? \nz.mem [24] : 
                       (N21)? \nz.mem [40] : 
                       (N23)? \nz.mem [56] : 
                       (N18)? \nz.mem [72] : 
                       (N20)? \nz.mem [88] : 
                       (N22)? \nz.mem [104] : 
                       (N24)? \nz.mem [120] : 1'b0;
  assign r_data_o[7] = (N17)? \nz.mem [7] : 
                       (N19)? \nz.mem [23] : 
                       (N21)? \nz.mem [39] : 
                       (N23)? \nz.mem [55] : 
                       (N18)? \nz.mem [71] : 
                       (N20)? \nz.mem [87] : 
                       (N22)? \nz.mem [103] : 
                       (N24)? \nz.mem [119] : 1'b0;
  assign r_data_o[6] = (N17)? \nz.mem [6] : 
                       (N19)? \nz.mem [22] : 
                       (N21)? \nz.mem [38] : 
                       (N23)? \nz.mem [54] : 
                       (N18)? \nz.mem [70] : 
                       (N20)? \nz.mem [86] : 
                       (N22)? \nz.mem [102] : 
                       (N24)? \nz.mem [118] : 1'b0;
  assign r_data_o[5] = (N17)? \nz.mem [5] : 
                       (N19)? \nz.mem [21] : 
                       (N21)? \nz.mem [37] : 
                       (N23)? \nz.mem [53] : 
                       (N18)? \nz.mem [69] : 
                       (N20)? \nz.mem [85] : 
                       (N22)? \nz.mem [101] : 
                       (N24)? \nz.mem [117] : 1'b0;
  assign r_data_o[4] = (N17)? \nz.mem [4] : 
                       (N19)? \nz.mem [20] : 
                       (N21)? \nz.mem [36] : 
                       (N23)? \nz.mem [52] : 
                       (N18)? \nz.mem [68] : 
                       (N20)? \nz.mem [84] : 
                       (N22)? \nz.mem [100] : 
                       (N24)? \nz.mem [116] : 1'b0;
  assign r_data_o[3] = (N17)? \nz.mem [3] : 
                       (N19)? \nz.mem [19] : 
                       (N21)? \nz.mem [35] : 
                       (N23)? \nz.mem [51] : 
                       (N18)? \nz.mem [67] : 
                       (N20)? \nz.mem [83] : 
                       (N22)? \nz.mem [99] : 
                       (N24)? \nz.mem [115] : 1'b0;
  assign r_data_o[2] = (N17)? \nz.mem [2] : 
                       (N19)? \nz.mem [18] : 
                       (N21)? \nz.mem [34] : 
                       (N23)? \nz.mem [50] : 
                       (N18)? \nz.mem [66] : 
                       (N20)? \nz.mem [82] : 
                       (N22)? \nz.mem [98] : 
                       (N24)? \nz.mem [114] : 1'b0;
  assign r_data_o[1] = (N17)? \nz.mem [1] : 
                       (N19)? \nz.mem [17] : 
                       (N21)? \nz.mem [33] : 
                       (N23)? \nz.mem [49] : 
                       (N18)? \nz.mem [65] : 
                       (N20)? \nz.mem [81] : 
                       (N22)? \nz.mem [97] : 
                       (N24)? \nz.mem [113] : 1'b0;
  assign r_data_o[0] = (N17)? \nz.mem [0] : 
                       (N19)? \nz.mem [16] : 
                       (N21)? \nz.mem [32] : 
                       (N23)? \nz.mem [48] : 
                       (N18)? \nz.mem [64] : 
                       (N20)? \nz.mem [80] : 
                       (N22)? \nz.mem [96] : 
                       (N24)? \nz.mem [112] : 1'b0;
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
      \nz.mem_127_sv2v_reg  <= w_data_i[15];
      \nz.mem_126_sv2v_reg  <= w_data_i[14];
      \nz.mem_125_sv2v_reg  <= w_data_i[13];
      \nz.mem_124_sv2v_reg  <= w_data_i[12];
      \nz.mem_123_sv2v_reg  <= w_data_i[11];
      \nz.mem_122_sv2v_reg  <= w_data_i[10];
      \nz.mem_121_sv2v_reg  <= w_data_i[9];
      \nz.mem_120_sv2v_reg  <= w_data_i[8];
      \nz.mem_119_sv2v_reg  <= w_data_i[7];
      \nz.mem_118_sv2v_reg  <= w_data_i[6];
      \nz.mem_117_sv2v_reg  <= w_data_i[5];
      \nz.mem_116_sv2v_reg  <= w_data_i[4];
      \nz.mem_115_sv2v_reg  <= w_data_i[3];
      \nz.mem_114_sv2v_reg  <= w_data_i[2];
      \nz.mem_113_sv2v_reg  <= w_data_i[1];
      \nz.mem_112_sv2v_reg  <= w_data_i[0];
    end 
    if(N40) begin
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
    if(N39) begin
      \nz.mem_95_sv2v_reg  <= w_data_i[15];
      \nz.mem_94_sv2v_reg  <= w_data_i[14];
      \nz.mem_93_sv2v_reg  <= w_data_i[13];
      \nz.mem_92_sv2v_reg  <= w_data_i[12];
      \nz.mem_91_sv2v_reg  <= w_data_i[11];
      \nz.mem_90_sv2v_reg  <= w_data_i[10];
      \nz.mem_89_sv2v_reg  <= w_data_i[9];
      \nz.mem_88_sv2v_reg  <= w_data_i[8];
      \nz.mem_87_sv2v_reg  <= w_data_i[7];
      \nz.mem_86_sv2v_reg  <= w_data_i[6];
      \nz.mem_85_sv2v_reg  <= w_data_i[5];
      \nz.mem_84_sv2v_reg  <= w_data_i[4];
      \nz.mem_83_sv2v_reg  <= w_data_i[3];
      \nz.mem_82_sv2v_reg  <= w_data_i[2];
      \nz.mem_81_sv2v_reg  <= w_data_i[1];
      \nz.mem_80_sv2v_reg  <= w_data_i[0];
    end 
    if(N38) begin
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
    if(N37) begin
      \nz.mem_63_sv2v_reg  <= w_data_i[15];
      \nz.mem_62_sv2v_reg  <= w_data_i[14];
      \nz.mem_61_sv2v_reg  <= w_data_i[13];
      \nz.mem_60_sv2v_reg  <= w_data_i[12];
      \nz.mem_59_sv2v_reg  <= w_data_i[11];
      \nz.mem_58_sv2v_reg  <= w_data_i[10];
      \nz.mem_57_sv2v_reg  <= w_data_i[9];
      \nz.mem_56_sv2v_reg  <= w_data_i[8];
      \nz.mem_55_sv2v_reg  <= w_data_i[7];
      \nz.mem_54_sv2v_reg  <= w_data_i[6];
      \nz.mem_53_sv2v_reg  <= w_data_i[5];
      \nz.mem_52_sv2v_reg  <= w_data_i[4];
      \nz.mem_51_sv2v_reg  <= w_data_i[3];
      \nz.mem_50_sv2v_reg  <= w_data_i[2];
      \nz.mem_49_sv2v_reg  <= w_data_i[1];
      \nz.mem_48_sv2v_reg  <= w_data_i[0];
    end 
    if(N36) begin
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
    if(N35) begin
      \nz.mem_31_sv2v_reg  <= w_data_i[15];
      \nz.mem_30_sv2v_reg  <= w_data_i[14];
      \nz.mem_29_sv2v_reg  <= w_data_i[13];
      \nz.mem_28_sv2v_reg  <= w_data_i[12];
      \nz.mem_27_sv2v_reg  <= w_data_i[11];
      \nz.mem_26_sv2v_reg  <= w_data_i[10];
      \nz.mem_25_sv2v_reg  <= w_data_i[9];
      \nz.mem_24_sv2v_reg  <= w_data_i[8];
      \nz.mem_23_sv2v_reg  <= w_data_i[7];
      \nz.mem_22_sv2v_reg  <= w_data_i[6];
      \nz.mem_21_sv2v_reg  <= w_data_i[5];
      \nz.mem_20_sv2v_reg  <= w_data_i[4];
      \nz.mem_19_sv2v_reg  <= w_data_i[3];
      \nz.mem_18_sv2v_reg  <= w_data_i[2];
      \nz.mem_17_sv2v_reg  <= w_data_i[1];
      \nz.mem_16_sv2v_reg  <= w_data_i[0];
    end 
    if(N34) begin
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



module bsg_mem_1r1w_width_p16_els_p8_read_write_same_addr_p0
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
  input [15:0] w_data_i;
  input [2:0] r_addr_i;
  output [15:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [15:0] r_data_o;

  bsg_mem_1r1w_synth_width_p16_els_p8_read_write_same_addr_p0
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



module bsg_launch_sync_sync_posedge_4_unit
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [3:0] iclk_data_i;
  output [3:0] iclk_data_o;
  output [3:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire [3:0] iclk_data_o,oclk_data_o,bsg_SYNC_1_r;
  reg iclk_data_o_3_sv2v_reg,iclk_data_o_2_sv2v_reg,iclk_data_o_1_sv2v_reg,
  iclk_data_o_0_sv2v_reg,bsg_SYNC_1_r_3_sv2v_reg,bsg_SYNC_1_r_2_sv2v_reg,
  bsg_SYNC_1_r_1_sv2v_reg,bsg_SYNC_1_r_0_sv2v_reg,oclk_data_o_3_sv2v_reg,oclk_data_o_2_sv2v_reg,
  oclk_data_o_1_sv2v_reg,oclk_data_o_0_sv2v_reg;
  assign iclk_data_o[3] = iclk_data_o_3_sv2v_reg;
  assign iclk_data_o[2] = iclk_data_o_2_sv2v_reg;
  assign iclk_data_o[1] = iclk_data_o_1_sv2v_reg;
  assign iclk_data_o[0] = iclk_data_o_0_sv2v_reg;
  assign bsg_SYNC_1_r[3] = bsg_SYNC_1_r_3_sv2v_reg;
  assign bsg_SYNC_1_r[2] = bsg_SYNC_1_r_2_sv2v_reg;
  assign bsg_SYNC_1_r[1] = bsg_SYNC_1_r_1_sv2v_reg;
  assign bsg_SYNC_1_r[0] = bsg_SYNC_1_r_0_sv2v_reg;
  assign oclk_data_o[3] = oclk_data_o_3_sv2v_reg;
  assign oclk_data_o[2] = oclk_data_o_2_sv2v_reg;
  assign oclk_data_o[1] = oclk_data_o_1_sv2v_reg;
  assign oclk_data_o[0] = oclk_data_o_0_sv2v_reg;

  always @(posedge iclk_i) begin
    if(iclk_reset_i) begin
      iclk_data_o_3_sv2v_reg <= 1'b0;
      iclk_data_o_2_sv2v_reg <= 1'b0;
      iclk_data_o_1_sv2v_reg <= 1'b0;
      iclk_data_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      iclk_data_o_3_sv2v_reg <= iclk_data_i[3];
      iclk_data_o_2_sv2v_reg <= iclk_data_i[2];
      iclk_data_o_1_sv2v_reg <= iclk_data_i[1];
      iclk_data_o_0_sv2v_reg <= iclk_data_i[0];
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      bsg_SYNC_1_r_3_sv2v_reg <= iclk_data_o[3];
      bsg_SYNC_1_r_2_sv2v_reg <= iclk_data_o[2];
      bsg_SYNC_1_r_1_sv2v_reg <= iclk_data_o[1];
      bsg_SYNC_1_r_0_sv2v_reg <= iclk_data_o[0];
      oclk_data_o_3_sv2v_reg <= bsg_SYNC_1_r[3];
      oclk_data_o_2_sv2v_reg <= bsg_SYNC_1_r[2];
      oclk_data_o_1_sv2v_reg <= bsg_SYNC_1_r[1];
      oclk_data_o_0_sv2v_reg <= bsg_SYNC_1_r[0];
    end 
  end


endmodule



module bsg_launch_sync_sync_width_p4_use_negedge_for_launch_p0_use_async_reset_p0
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [3:0] iclk_data_i;
  output [3:0] iclk_data_o;
  output [3:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire [3:0] iclk_data_o,oclk_data_o;

  bsg_launch_sync_sync_posedge_4_unit
  \sync.p.z.blss 
  (
    .iclk_i(iclk_i),
    .iclk_reset_i(iclk_reset_i),
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i),
    .iclk_data_o(iclk_data_o),
    .oclk_data_o(oclk_data_o)
  );


endmodule



module bsg_async_ptr_gray_lg_size_p4
(
  w_clk_i,
  w_reset_i,
  w_inc_i,
  r_clk_i,
  w_ptr_binary_r_o,
  w_ptr_gray_r_o,
  w_ptr_gray_r_rsync_o
);

  output [3:0] w_ptr_binary_r_o;
  output [3:0] w_ptr_gray_r_o;
  output [3:0] w_ptr_gray_r_rsync_o;
  input w_clk_i;
  input w_reset_i;
  input w_inc_i;
  input r_clk_i;
  wire [3:0] w_ptr_binary_r_o,w_ptr_gray_r_o,w_ptr_gray_r_rsync_o,w_ptr_p1_r,w_ptr_p2,
  w_ptr_gray_n;
  wire N0,N1,N2,N3,N4,N5;
  reg w_ptr_p1_r_3_sv2v_reg,w_ptr_p1_r_2_sv2v_reg,w_ptr_p1_r_1_sv2v_reg,
  w_ptr_p1_r_0_sv2v_reg,w_ptr_binary_r_o_3_sv2v_reg,w_ptr_binary_r_o_2_sv2v_reg,
  w_ptr_binary_r_o_1_sv2v_reg,w_ptr_binary_r_o_0_sv2v_reg;
  assign w_ptr_p1_r[3] = w_ptr_p1_r_3_sv2v_reg;
  assign w_ptr_p1_r[2] = w_ptr_p1_r_2_sv2v_reg;
  assign w_ptr_p1_r[1] = w_ptr_p1_r_1_sv2v_reg;
  assign w_ptr_p1_r[0] = w_ptr_p1_r_0_sv2v_reg;
  assign w_ptr_binary_r_o[3] = w_ptr_binary_r_o_3_sv2v_reg;
  assign w_ptr_binary_r_o[2] = w_ptr_binary_r_o_2_sv2v_reg;
  assign w_ptr_binary_r_o[1] = w_ptr_binary_r_o_1_sv2v_reg;
  assign w_ptr_binary_r_o[0] = w_ptr_binary_r_o_0_sv2v_reg;

  bsg_launch_sync_sync_width_p4_use_negedge_for_launch_p0_use_async_reset_p0
  ptr_sync
  (
    .iclk_i(w_clk_i),
    .iclk_reset_i(w_reset_i),
    .oclk_i(r_clk_i),
    .iclk_data_i(w_ptr_gray_n),
    .iclk_data_o(w_ptr_gray_r_o),
    .oclk_data_o(w_ptr_gray_r_rsync_o)
  );

  assign w_ptr_p2 = w_ptr_p1_r + 1'b1;
  assign w_ptr_gray_n = (N0)? { w_ptr_p1_r[3:3], N3, N4, N5 } : 
                        (N1)? w_ptr_gray_r_o : 1'b0;
  assign N0 = w_inc_i;
  assign N1 = N2;
  assign N2 = ~w_inc_i;
  assign N3 = w_ptr_p1_r[3] ^ w_ptr_p1_r[2];
  assign N4 = w_ptr_p1_r[2] ^ w_ptr_p1_r[1];
  assign N5 = w_ptr_p1_r[1] ^ w_ptr_p1_r[0];

  always @(posedge w_clk_i) begin
    if(w_reset_i) begin
      w_ptr_p1_r_3_sv2v_reg <= 1'b0;
      w_ptr_p1_r_2_sv2v_reg <= 1'b0;
      w_ptr_p1_r_1_sv2v_reg <= 1'b0;
      w_ptr_p1_r_0_sv2v_reg <= 1'b1;
      w_ptr_binary_r_o_3_sv2v_reg <= 1'b0;
      w_ptr_binary_r_o_2_sv2v_reg <= 1'b0;
      w_ptr_binary_r_o_1_sv2v_reg <= 1'b0;
      w_ptr_binary_r_o_0_sv2v_reg <= 1'b0;
    end else if(w_inc_i) begin
      w_ptr_p1_r_3_sv2v_reg <= w_ptr_p2[3];
      w_ptr_p1_r_2_sv2v_reg <= w_ptr_p2[2];
      w_ptr_p1_r_1_sv2v_reg <= w_ptr_p2[1];
      w_ptr_p1_r_0_sv2v_reg <= w_ptr_p2[0];
      w_ptr_binary_r_o_3_sv2v_reg <= w_ptr_p1_r[3];
      w_ptr_binary_r_o_2_sv2v_reg <= w_ptr_p1_r[2];
      w_ptr_binary_r_o_1_sv2v_reg <= w_ptr_p1_r[1];
      w_ptr_binary_r_o_0_sv2v_reg <= w_ptr_p1_r[0];
    end 
  end


endmodule



module bsg_async_fifo
(
  w_clk_i,
  w_reset_i,
  w_enq_i,
  w_data_i,
  w_full_o,
  r_clk_i,
  r_reset_i,
  r_deq_i,
  r_data_o,
  r_valid_o
);

  input [15:0] w_data_i;
  output [15:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_enq_i;
  input r_clk_i;
  input r_reset_i;
  input r_deq_i;
  output w_full_o;
  output r_valid_o;
  wire [15:0] r_data_o;
  wire w_full_o,r_valid_o,N0,N1;
  wire [3:0] w_ptr_binary_r,r_ptr_binary_r,w_ptr_gray_r,w_ptr_gray_r_rsync,r_ptr_gray_r,
  r_ptr_gray_r_wsync;

  bsg_mem_1r1w_width_p16_els_p8_read_write_same_addr_p0
  MSYNC_1r1w
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_enq_i),
    .w_addr_i(w_ptr_binary_r[2:0]),
    .w_data_i(w_data_i),
    .r_v_i(r_valid_o),
    .r_addr_i(r_ptr_binary_r[2:0]),
    .r_data_o(r_data_o)
  );


  bsg_async_ptr_gray_lg_size_p4
  bapg_wr
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_inc_i(w_enq_i),
    .r_clk_i(r_clk_i),
    .w_ptr_binary_r_o(w_ptr_binary_r),
    .w_ptr_gray_r_o(w_ptr_gray_r),
    .w_ptr_gray_r_rsync_o(w_ptr_gray_r_rsync)
  );


  bsg_async_ptr_gray_lg_size_p4
  bapg_rd
  (
    .w_clk_i(r_clk_i),
    .w_reset_i(r_reset_i),
    .w_inc_i(r_deq_i),
    .r_clk_i(w_clk_i),
    .w_ptr_binary_r_o(r_ptr_binary_r),
    .w_ptr_gray_r_o(r_ptr_gray_r),
    .w_ptr_gray_r_rsync_o(r_ptr_gray_r_wsync)
  );

  assign r_valid_o = r_ptr_gray_r != w_ptr_gray_r_rsync;
  assign w_full_o = w_ptr_gray_r == { N0, N1, r_ptr_gray_r_wsync[1:0] };
  assign N0 = ~r_ptr_gray_r_wsync[3];
  assign N1 = ~r_ptr_gray_r_wsync[2];

endmodule

