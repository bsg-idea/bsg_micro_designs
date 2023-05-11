

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

  input [31:0] w_data_i;
  output [31:0] r_data_o;
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



module bsg_mem_1r1w_synth_width_p32_els_p8_read_write_same_addr_p0
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
  input [31:0] w_data_i;
  input [2:0] r_addr_i;
  output [31:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [31:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45;
  wire [255:0] \nz.mem ;
  reg \nz.mem_255_sv2v_reg ,\nz.mem_254_sv2v_reg ,\nz.mem_253_sv2v_reg ,
  \nz.mem_252_sv2v_reg ,\nz.mem_251_sv2v_reg ,\nz.mem_250_sv2v_reg ,\nz.mem_249_sv2v_reg ,
  \nz.mem_248_sv2v_reg ,\nz.mem_247_sv2v_reg ,\nz.mem_246_sv2v_reg ,
  \nz.mem_245_sv2v_reg ,\nz.mem_244_sv2v_reg ,\nz.mem_243_sv2v_reg ,\nz.mem_242_sv2v_reg ,
  \nz.mem_241_sv2v_reg ,\nz.mem_240_sv2v_reg ,\nz.mem_239_sv2v_reg ,\nz.mem_238_sv2v_reg ,
  \nz.mem_237_sv2v_reg ,\nz.mem_236_sv2v_reg ,\nz.mem_235_sv2v_reg ,
  \nz.mem_234_sv2v_reg ,\nz.mem_233_sv2v_reg ,\nz.mem_232_sv2v_reg ,\nz.mem_231_sv2v_reg ,
  \nz.mem_230_sv2v_reg ,\nz.mem_229_sv2v_reg ,\nz.mem_228_sv2v_reg ,\nz.mem_227_sv2v_reg ,
  \nz.mem_226_sv2v_reg ,\nz.mem_225_sv2v_reg ,\nz.mem_224_sv2v_reg ,
  \nz.mem_223_sv2v_reg ,\nz.mem_222_sv2v_reg ,\nz.mem_221_sv2v_reg ,\nz.mem_220_sv2v_reg ,
  \nz.mem_219_sv2v_reg ,\nz.mem_218_sv2v_reg ,\nz.mem_217_sv2v_reg ,\nz.mem_216_sv2v_reg ,
  \nz.mem_215_sv2v_reg ,\nz.mem_214_sv2v_reg ,\nz.mem_213_sv2v_reg ,
  \nz.mem_212_sv2v_reg ,\nz.mem_211_sv2v_reg ,\nz.mem_210_sv2v_reg ,\nz.mem_209_sv2v_reg ,
  \nz.mem_208_sv2v_reg ,\nz.mem_207_sv2v_reg ,\nz.mem_206_sv2v_reg ,
  \nz.mem_205_sv2v_reg ,\nz.mem_204_sv2v_reg ,\nz.mem_203_sv2v_reg ,\nz.mem_202_sv2v_reg ,
  \nz.mem_201_sv2v_reg ,\nz.mem_200_sv2v_reg ,\nz.mem_199_sv2v_reg ,\nz.mem_198_sv2v_reg ,
  \nz.mem_197_sv2v_reg ,\nz.mem_196_sv2v_reg ,\nz.mem_195_sv2v_reg ,
  \nz.mem_194_sv2v_reg ,\nz.mem_193_sv2v_reg ,\nz.mem_192_sv2v_reg ,\nz.mem_191_sv2v_reg ,
  \nz.mem_190_sv2v_reg ,\nz.mem_189_sv2v_reg ,\nz.mem_188_sv2v_reg ,\nz.mem_187_sv2v_reg ,
  \nz.mem_186_sv2v_reg ,\nz.mem_185_sv2v_reg ,\nz.mem_184_sv2v_reg ,
  \nz.mem_183_sv2v_reg ,\nz.mem_182_sv2v_reg ,\nz.mem_181_sv2v_reg ,\nz.mem_180_sv2v_reg ,
  \nz.mem_179_sv2v_reg ,\nz.mem_178_sv2v_reg ,\nz.mem_177_sv2v_reg ,\nz.mem_176_sv2v_reg ,
  \nz.mem_175_sv2v_reg ,\nz.mem_174_sv2v_reg ,\nz.mem_173_sv2v_reg ,
  \nz.mem_172_sv2v_reg ,\nz.mem_171_sv2v_reg ,\nz.mem_170_sv2v_reg ,\nz.mem_169_sv2v_reg ,
  \nz.mem_168_sv2v_reg ,\nz.mem_167_sv2v_reg ,\nz.mem_166_sv2v_reg ,
  \nz.mem_165_sv2v_reg ,\nz.mem_164_sv2v_reg ,\nz.mem_163_sv2v_reg ,\nz.mem_162_sv2v_reg ,
  \nz.mem_161_sv2v_reg ,\nz.mem_160_sv2v_reg ,\nz.mem_159_sv2v_reg ,\nz.mem_158_sv2v_reg ,
  \nz.mem_157_sv2v_reg ,\nz.mem_156_sv2v_reg ,\nz.mem_155_sv2v_reg ,
  \nz.mem_154_sv2v_reg ,\nz.mem_153_sv2v_reg ,\nz.mem_152_sv2v_reg ,\nz.mem_151_sv2v_reg ,
  \nz.mem_150_sv2v_reg ,\nz.mem_149_sv2v_reg ,\nz.mem_148_sv2v_reg ,\nz.mem_147_sv2v_reg ,
  \nz.mem_146_sv2v_reg ,\nz.mem_145_sv2v_reg ,\nz.mem_144_sv2v_reg ,
  \nz.mem_143_sv2v_reg ,\nz.mem_142_sv2v_reg ,\nz.mem_141_sv2v_reg ,\nz.mem_140_sv2v_reg ,
  \nz.mem_139_sv2v_reg ,\nz.mem_138_sv2v_reg ,\nz.mem_137_sv2v_reg ,\nz.mem_136_sv2v_reg ,
  \nz.mem_135_sv2v_reg ,\nz.mem_134_sv2v_reg ,\nz.mem_133_sv2v_reg ,
  \nz.mem_132_sv2v_reg ,\nz.mem_131_sv2v_reg ,\nz.mem_130_sv2v_reg ,\nz.mem_129_sv2v_reg ,
  \nz.mem_128_sv2v_reg ,\nz.mem_127_sv2v_reg ,\nz.mem_126_sv2v_reg ,
  \nz.mem_125_sv2v_reg ,\nz.mem_124_sv2v_reg ,\nz.mem_123_sv2v_reg ,\nz.mem_122_sv2v_reg ,
  \nz.mem_121_sv2v_reg ,\nz.mem_120_sv2v_reg ,\nz.mem_119_sv2v_reg ,\nz.mem_118_sv2v_reg ,
  \nz.mem_117_sv2v_reg ,\nz.mem_116_sv2v_reg ,\nz.mem_115_sv2v_reg ,
  \nz.mem_114_sv2v_reg ,\nz.mem_113_sv2v_reg ,\nz.mem_112_sv2v_reg ,\nz.mem_111_sv2v_reg ,
  \nz.mem_110_sv2v_reg ,\nz.mem_109_sv2v_reg ,\nz.mem_108_sv2v_reg ,\nz.mem_107_sv2v_reg ,
  \nz.mem_106_sv2v_reg ,\nz.mem_105_sv2v_reg ,\nz.mem_104_sv2v_reg ,
  \nz.mem_103_sv2v_reg ,\nz.mem_102_sv2v_reg ,\nz.mem_101_sv2v_reg ,\nz.mem_100_sv2v_reg ,
  \nz.mem_99_sv2v_reg ,\nz.mem_98_sv2v_reg ,\nz.mem_97_sv2v_reg ,\nz.mem_96_sv2v_reg ,
  \nz.mem_95_sv2v_reg ,\nz.mem_94_sv2v_reg ,\nz.mem_93_sv2v_reg ,\nz.mem_92_sv2v_reg ,
  \nz.mem_91_sv2v_reg ,\nz.mem_90_sv2v_reg ,\nz.mem_89_sv2v_reg ,
  \nz.mem_88_sv2v_reg ,\nz.mem_87_sv2v_reg ,\nz.mem_86_sv2v_reg ,\nz.mem_85_sv2v_reg ,
  \nz.mem_84_sv2v_reg ,\nz.mem_83_sv2v_reg ,\nz.mem_82_sv2v_reg ,\nz.mem_81_sv2v_reg ,
  \nz.mem_80_sv2v_reg ,\nz.mem_79_sv2v_reg ,\nz.mem_78_sv2v_reg ,\nz.mem_77_sv2v_reg ,
  \nz.mem_76_sv2v_reg ,\nz.mem_75_sv2v_reg ,\nz.mem_74_sv2v_reg ,\nz.mem_73_sv2v_reg ,
  \nz.mem_72_sv2v_reg ,\nz.mem_71_sv2v_reg ,\nz.mem_70_sv2v_reg ,
  \nz.mem_69_sv2v_reg ,\nz.mem_68_sv2v_reg ,\nz.mem_67_sv2v_reg ,\nz.mem_66_sv2v_reg ,
  \nz.mem_65_sv2v_reg ,\nz.mem_64_sv2v_reg ,\nz.mem_63_sv2v_reg ,\nz.mem_62_sv2v_reg ,
  \nz.mem_61_sv2v_reg ,\nz.mem_60_sv2v_reg ,\nz.mem_59_sv2v_reg ,\nz.mem_58_sv2v_reg ,
  \nz.mem_57_sv2v_reg ,\nz.mem_56_sv2v_reg ,\nz.mem_55_sv2v_reg ,\nz.mem_54_sv2v_reg ,
  \nz.mem_53_sv2v_reg ,\nz.mem_52_sv2v_reg ,\nz.mem_51_sv2v_reg ,
  \nz.mem_50_sv2v_reg ,\nz.mem_49_sv2v_reg ,\nz.mem_48_sv2v_reg ,\nz.mem_47_sv2v_reg ,
  \nz.mem_46_sv2v_reg ,\nz.mem_45_sv2v_reg ,\nz.mem_44_sv2v_reg ,\nz.mem_43_sv2v_reg ,
  \nz.mem_42_sv2v_reg ,\nz.mem_41_sv2v_reg ,\nz.mem_40_sv2v_reg ,\nz.mem_39_sv2v_reg ,
  \nz.mem_38_sv2v_reg ,\nz.mem_37_sv2v_reg ,\nz.mem_36_sv2v_reg ,\nz.mem_35_sv2v_reg ,
  \nz.mem_34_sv2v_reg ,\nz.mem_33_sv2v_reg ,\nz.mem_32_sv2v_reg ,
  \nz.mem_31_sv2v_reg ,\nz.mem_30_sv2v_reg ,\nz.mem_29_sv2v_reg ,\nz.mem_28_sv2v_reg ,
  \nz.mem_27_sv2v_reg ,\nz.mem_26_sv2v_reg ,\nz.mem_25_sv2v_reg ,\nz.mem_24_sv2v_reg ,
  \nz.mem_23_sv2v_reg ,\nz.mem_22_sv2v_reg ,\nz.mem_21_sv2v_reg ,\nz.mem_20_sv2v_reg ,
  \nz.mem_19_sv2v_reg ,\nz.mem_18_sv2v_reg ,\nz.mem_17_sv2v_reg ,\nz.mem_16_sv2v_reg ,
  \nz.mem_15_sv2v_reg ,\nz.mem_14_sv2v_reg ,\nz.mem_13_sv2v_reg ,\nz.mem_12_sv2v_reg ,
  \nz.mem_11_sv2v_reg ,\nz.mem_10_sv2v_reg ,\nz.mem_9_sv2v_reg ,
  \nz.mem_8_sv2v_reg ,\nz.mem_7_sv2v_reg ,\nz.mem_6_sv2v_reg ,\nz.mem_5_sv2v_reg ,
  \nz.mem_4_sv2v_reg ,\nz.mem_3_sv2v_reg ,\nz.mem_2_sv2v_reg ,\nz.mem_1_sv2v_reg ,
  \nz.mem_0_sv2v_reg ;
  assign \nz.mem [255] = \nz.mem_255_sv2v_reg ;
  assign \nz.mem [254] = \nz.mem_254_sv2v_reg ;
  assign \nz.mem [253] = \nz.mem_253_sv2v_reg ;
  assign \nz.mem [252] = \nz.mem_252_sv2v_reg ;
  assign \nz.mem [251] = \nz.mem_251_sv2v_reg ;
  assign \nz.mem [250] = \nz.mem_250_sv2v_reg ;
  assign \nz.mem [249] = \nz.mem_249_sv2v_reg ;
  assign \nz.mem [248] = \nz.mem_248_sv2v_reg ;
  assign \nz.mem [247] = \nz.mem_247_sv2v_reg ;
  assign \nz.mem [246] = \nz.mem_246_sv2v_reg ;
  assign \nz.mem [245] = \nz.mem_245_sv2v_reg ;
  assign \nz.mem [244] = \nz.mem_244_sv2v_reg ;
  assign \nz.mem [243] = \nz.mem_243_sv2v_reg ;
  assign \nz.mem [242] = \nz.mem_242_sv2v_reg ;
  assign \nz.mem [241] = \nz.mem_241_sv2v_reg ;
  assign \nz.mem [240] = \nz.mem_240_sv2v_reg ;
  assign \nz.mem [239] = \nz.mem_239_sv2v_reg ;
  assign \nz.mem [238] = \nz.mem_238_sv2v_reg ;
  assign \nz.mem [237] = \nz.mem_237_sv2v_reg ;
  assign \nz.mem [236] = \nz.mem_236_sv2v_reg ;
  assign \nz.mem [235] = \nz.mem_235_sv2v_reg ;
  assign \nz.mem [234] = \nz.mem_234_sv2v_reg ;
  assign \nz.mem [233] = \nz.mem_233_sv2v_reg ;
  assign \nz.mem [232] = \nz.mem_232_sv2v_reg ;
  assign \nz.mem [231] = \nz.mem_231_sv2v_reg ;
  assign \nz.mem [230] = \nz.mem_230_sv2v_reg ;
  assign \nz.mem [229] = \nz.mem_229_sv2v_reg ;
  assign \nz.mem [228] = \nz.mem_228_sv2v_reg ;
  assign \nz.mem [227] = \nz.mem_227_sv2v_reg ;
  assign \nz.mem [226] = \nz.mem_226_sv2v_reg ;
  assign \nz.mem [225] = \nz.mem_225_sv2v_reg ;
  assign \nz.mem [224] = \nz.mem_224_sv2v_reg ;
  assign \nz.mem [223] = \nz.mem_223_sv2v_reg ;
  assign \nz.mem [222] = \nz.mem_222_sv2v_reg ;
  assign \nz.mem [221] = \nz.mem_221_sv2v_reg ;
  assign \nz.mem [220] = \nz.mem_220_sv2v_reg ;
  assign \nz.mem [219] = \nz.mem_219_sv2v_reg ;
  assign \nz.mem [218] = \nz.mem_218_sv2v_reg ;
  assign \nz.mem [217] = \nz.mem_217_sv2v_reg ;
  assign \nz.mem [216] = \nz.mem_216_sv2v_reg ;
  assign \nz.mem [215] = \nz.mem_215_sv2v_reg ;
  assign \nz.mem [214] = \nz.mem_214_sv2v_reg ;
  assign \nz.mem [213] = \nz.mem_213_sv2v_reg ;
  assign \nz.mem [212] = \nz.mem_212_sv2v_reg ;
  assign \nz.mem [211] = \nz.mem_211_sv2v_reg ;
  assign \nz.mem [210] = \nz.mem_210_sv2v_reg ;
  assign \nz.mem [209] = \nz.mem_209_sv2v_reg ;
  assign \nz.mem [208] = \nz.mem_208_sv2v_reg ;
  assign \nz.mem [207] = \nz.mem_207_sv2v_reg ;
  assign \nz.mem [206] = \nz.mem_206_sv2v_reg ;
  assign \nz.mem [205] = \nz.mem_205_sv2v_reg ;
  assign \nz.mem [204] = \nz.mem_204_sv2v_reg ;
  assign \nz.mem [203] = \nz.mem_203_sv2v_reg ;
  assign \nz.mem [202] = \nz.mem_202_sv2v_reg ;
  assign \nz.mem [201] = \nz.mem_201_sv2v_reg ;
  assign \nz.mem [200] = \nz.mem_200_sv2v_reg ;
  assign \nz.mem [199] = \nz.mem_199_sv2v_reg ;
  assign \nz.mem [198] = \nz.mem_198_sv2v_reg ;
  assign \nz.mem [197] = \nz.mem_197_sv2v_reg ;
  assign \nz.mem [196] = \nz.mem_196_sv2v_reg ;
  assign \nz.mem [195] = \nz.mem_195_sv2v_reg ;
  assign \nz.mem [194] = \nz.mem_194_sv2v_reg ;
  assign \nz.mem [193] = \nz.mem_193_sv2v_reg ;
  assign \nz.mem [192] = \nz.mem_192_sv2v_reg ;
  assign \nz.mem [191] = \nz.mem_191_sv2v_reg ;
  assign \nz.mem [190] = \nz.mem_190_sv2v_reg ;
  assign \nz.mem [189] = \nz.mem_189_sv2v_reg ;
  assign \nz.mem [188] = \nz.mem_188_sv2v_reg ;
  assign \nz.mem [187] = \nz.mem_187_sv2v_reg ;
  assign \nz.mem [186] = \nz.mem_186_sv2v_reg ;
  assign \nz.mem [185] = \nz.mem_185_sv2v_reg ;
  assign \nz.mem [184] = \nz.mem_184_sv2v_reg ;
  assign \nz.mem [183] = \nz.mem_183_sv2v_reg ;
  assign \nz.mem [182] = \nz.mem_182_sv2v_reg ;
  assign \nz.mem [181] = \nz.mem_181_sv2v_reg ;
  assign \nz.mem [180] = \nz.mem_180_sv2v_reg ;
  assign \nz.mem [179] = \nz.mem_179_sv2v_reg ;
  assign \nz.mem [178] = \nz.mem_178_sv2v_reg ;
  assign \nz.mem [177] = \nz.mem_177_sv2v_reg ;
  assign \nz.mem [176] = \nz.mem_176_sv2v_reg ;
  assign \nz.mem [175] = \nz.mem_175_sv2v_reg ;
  assign \nz.mem [174] = \nz.mem_174_sv2v_reg ;
  assign \nz.mem [173] = \nz.mem_173_sv2v_reg ;
  assign \nz.mem [172] = \nz.mem_172_sv2v_reg ;
  assign \nz.mem [171] = \nz.mem_171_sv2v_reg ;
  assign \nz.mem [170] = \nz.mem_170_sv2v_reg ;
  assign \nz.mem [169] = \nz.mem_169_sv2v_reg ;
  assign \nz.mem [168] = \nz.mem_168_sv2v_reg ;
  assign \nz.mem [167] = \nz.mem_167_sv2v_reg ;
  assign \nz.mem [166] = \nz.mem_166_sv2v_reg ;
  assign \nz.mem [165] = \nz.mem_165_sv2v_reg ;
  assign \nz.mem [164] = \nz.mem_164_sv2v_reg ;
  assign \nz.mem [163] = \nz.mem_163_sv2v_reg ;
  assign \nz.mem [162] = \nz.mem_162_sv2v_reg ;
  assign \nz.mem [161] = \nz.mem_161_sv2v_reg ;
  assign \nz.mem [160] = \nz.mem_160_sv2v_reg ;
  assign \nz.mem [159] = \nz.mem_159_sv2v_reg ;
  assign \nz.mem [158] = \nz.mem_158_sv2v_reg ;
  assign \nz.mem [157] = \nz.mem_157_sv2v_reg ;
  assign \nz.mem [156] = \nz.mem_156_sv2v_reg ;
  assign \nz.mem [155] = \nz.mem_155_sv2v_reg ;
  assign \nz.mem [154] = \nz.mem_154_sv2v_reg ;
  assign \nz.mem [153] = \nz.mem_153_sv2v_reg ;
  assign \nz.mem [152] = \nz.mem_152_sv2v_reg ;
  assign \nz.mem [151] = \nz.mem_151_sv2v_reg ;
  assign \nz.mem [150] = \nz.mem_150_sv2v_reg ;
  assign \nz.mem [149] = \nz.mem_149_sv2v_reg ;
  assign \nz.mem [148] = \nz.mem_148_sv2v_reg ;
  assign \nz.mem [147] = \nz.mem_147_sv2v_reg ;
  assign \nz.mem [146] = \nz.mem_146_sv2v_reg ;
  assign \nz.mem [145] = \nz.mem_145_sv2v_reg ;
  assign \nz.mem [144] = \nz.mem_144_sv2v_reg ;
  assign \nz.mem [143] = \nz.mem_143_sv2v_reg ;
  assign \nz.mem [142] = \nz.mem_142_sv2v_reg ;
  assign \nz.mem [141] = \nz.mem_141_sv2v_reg ;
  assign \nz.mem [140] = \nz.mem_140_sv2v_reg ;
  assign \nz.mem [139] = \nz.mem_139_sv2v_reg ;
  assign \nz.mem [138] = \nz.mem_138_sv2v_reg ;
  assign \nz.mem [137] = \nz.mem_137_sv2v_reg ;
  assign \nz.mem [136] = \nz.mem_136_sv2v_reg ;
  assign \nz.mem [135] = \nz.mem_135_sv2v_reg ;
  assign \nz.mem [134] = \nz.mem_134_sv2v_reg ;
  assign \nz.mem [133] = \nz.mem_133_sv2v_reg ;
  assign \nz.mem [132] = \nz.mem_132_sv2v_reg ;
  assign \nz.mem [131] = \nz.mem_131_sv2v_reg ;
  assign \nz.mem [130] = \nz.mem_130_sv2v_reg ;
  assign \nz.mem [129] = \nz.mem_129_sv2v_reg ;
  assign \nz.mem [128] = \nz.mem_128_sv2v_reg ;
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
  assign r_data_o[31] = (N17)? \nz.mem [31] : 
                        (N19)? \nz.mem [63] : 
                        (N21)? \nz.mem [95] : 
                        (N23)? \nz.mem [127] : 
                        (N18)? \nz.mem [159] : 
                        (N20)? \nz.mem [191] : 
                        (N22)? \nz.mem [223] : 
                        (N24)? \nz.mem [255] : 1'b0;
  assign r_data_o[30] = (N17)? \nz.mem [30] : 
                        (N19)? \nz.mem [62] : 
                        (N21)? \nz.mem [94] : 
                        (N23)? \nz.mem [126] : 
                        (N18)? \nz.mem [158] : 
                        (N20)? \nz.mem [190] : 
                        (N22)? \nz.mem [222] : 
                        (N24)? \nz.mem [254] : 1'b0;
  assign r_data_o[29] = (N17)? \nz.mem [29] : 
                        (N19)? \nz.mem [61] : 
                        (N21)? \nz.mem [93] : 
                        (N23)? \nz.mem [125] : 
                        (N18)? \nz.mem [157] : 
                        (N20)? \nz.mem [189] : 
                        (N22)? \nz.mem [221] : 
                        (N24)? \nz.mem [253] : 1'b0;
  assign r_data_o[28] = (N17)? \nz.mem [28] : 
                        (N19)? \nz.mem [60] : 
                        (N21)? \nz.mem [92] : 
                        (N23)? \nz.mem [124] : 
                        (N18)? \nz.mem [156] : 
                        (N20)? \nz.mem [188] : 
                        (N22)? \nz.mem [220] : 
                        (N24)? \nz.mem [252] : 1'b0;
  assign r_data_o[27] = (N17)? \nz.mem [27] : 
                        (N19)? \nz.mem [59] : 
                        (N21)? \nz.mem [91] : 
                        (N23)? \nz.mem [123] : 
                        (N18)? \nz.mem [155] : 
                        (N20)? \nz.mem [187] : 
                        (N22)? \nz.mem [219] : 
                        (N24)? \nz.mem [251] : 1'b0;
  assign r_data_o[26] = (N17)? \nz.mem [26] : 
                        (N19)? \nz.mem [58] : 
                        (N21)? \nz.mem [90] : 
                        (N23)? \nz.mem [122] : 
                        (N18)? \nz.mem [154] : 
                        (N20)? \nz.mem [186] : 
                        (N22)? \nz.mem [218] : 
                        (N24)? \nz.mem [250] : 1'b0;
  assign r_data_o[25] = (N17)? \nz.mem [25] : 
                        (N19)? \nz.mem [57] : 
                        (N21)? \nz.mem [89] : 
                        (N23)? \nz.mem [121] : 
                        (N18)? \nz.mem [153] : 
                        (N20)? \nz.mem [185] : 
                        (N22)? \nz.mem [217] : 
                        (N24)? \nz.mem [249] : 1'b0;
  assign r_data_o[24] = (N17)? \nz.mem [24] : 
                        (N19)? \nz.mem [56] : 
                        (N21)? \nz.mem [88] : 
                        (N23)? \nz.mem [120] : 
                        (N18)? \nz.mem [152] : 
                        (N20)? \nz.mem [184] : 
                        (N22)? \nz.mem [216] : 
                        (N24)? \nz.mem [248] : 1'b0;
  assign r_data_o[23] = (N17)? \nz.mem [23] : 
                        (N19)? \nz.mem [55] : 
                        (N21)? \nz.mem [87] : 
                        (N23)? \nz.mem [119] : 
                        (N18)? \nz.mem [151] : 
                        (N20)? \nz.mem [183] : 
                        (N22)? \nz.mem [215] : 
                        (N24)? \nz.mem [247] : 1'b0;
  assign r_data_o[22] = (N17)? \nz.mem [22] : 
                        (N19)? \nz.mem [54] : 
                        (N21)? \nz.mem [86] : 
                        (N23)? \nz.mem [118] : 
                        (N18)? \nz.mem [150] : 
                        (N20)? \nz.mem [182] : 
                        (N22)? \nz.mem [214] : 
                        (N24)? \nz.mem [246] : 1'b0;
  assign r_data_o[21] = (N17)? \nz.mem [21] : 
                        (N19)? \nz.mem [53] : 
                        (N21)? \nz.mem [85] : 
                        (N23)? \nz.mem [117] : 
                        (N18)? \nz.mem [149] : 
                        (N20)? \nz.mem [181] : 
                        (N22)? \nz.mem [213] : 
                        (N24)? \nz.mem [245] : 1'b0;
  assign r_data_o[20] = (N17)? \nz.mem [20] : 
                        (N19)? \nz.mem [52] : 
                        (N21)? \nz.mem [84] : 
                        (N23)? \nz.mem [116] : 
                        (N18)? \nz.mem [148] : 
                        (N20)? \nz.mem [180] : 
                        (N22)? \nz.mem [212] : 
                        (N24)? \nz.mem [244] : 1'b0;
  assign r_data_o[19] = (N17)? \nz.mem [19] : 
                        (N19)? \nz.mem [51] : 
                        (N21)? \nz.mem [83] : 
                        (N23)? \nz.mem [115] : 
                        (N18)? \nz.mem [147] : 
                        (N20)? \nz.mem [179] : 
                        (N22)? \nz.mem [211] : 
                        (N24)? \nz.mem [243] : 1'b0;
  assign r_data_o[18] = (N17)? \nz.mem [18] : 
                        (N19)? \nz.mem [50] : 
                        (N21)? \nz.mem [82] : 
                        (N23)? \nz.mem [114] : 
                        (N18)? \nz.mem [146] : 
                        (N20)? \nz.mem [178] : 
                        (N22)? \nz.mem [210] : 
                        (N24)? \nz.mem [242] : 1'b0;
  assign r_data_o[17] = (N17)? \nz.mem [17] : 
                        (N19)? \nz.mem [49] : 
                        (N21)? \nz.mem [81] : 
                        (N23)? \nz.mem [113] : 
                        (N18)? \nz.mem [145] : 
                        (N20)? \nz.mem [177] : 
                        (N22)? \nz.mem [209] : 
                        (N24)? \nz.mem [241] : 1'b0;
  assign r_data_o[16] = (N17)? \nz.mem [16] : 
                        (N19)? \nz.mem [48] : 
                        (N21)? \nz.mem [80] : 
                        (N23)? \nz.mem [112] : 
                        (N18)? \nz.mem [144] : 
                        (N20)? \nz.mem [176] : 
                        (N22)? \nz.mem [208] : 
                        (N24)? \nz.mem [240] : 1'b0;
  assign r_data_o[15] = (N17)? \nz.mem [15] : 
                        (N19)? \nz.mem [47] : 
                        (N21)? \nz.mem [79] : 
                        (N23)? \nz.mem [111] : 
                        (N18)? \nz.mem [143] : 
                        (N20)? \nz.mem [175] : 
                        (N22)? \nz.mem [207] : 
                        (N24)? \nz.mem [239] : 1'b0;
  assign r_data_o[14] = (N17)? \nz.mem [14] : 
                        (N19)? \nz.mem [46] : 
                        (N21)? \nz.mem [78] : 
                        (N23)? \nz.mem [110] : 
                        (N18)? \nz.mem [142] : 
                        (N20)? \nz.mem [174] : 
                        (N22)? \nz.mem [206] : 
                        (N24)? \nz.mem [238] : 1'b0;
  assign r_data_o[13] = (N17)? \nz.mem [13] : 
                        (N19)? \nz.mem [45] : 
                        (N21)? \nz.mem [77] : 
                        (N23)? \nz.mem [109] : 
                        (N18)? \nz.mem [141] : 
                        (N20)? \nz.mem [173] : 
                        (N22)? \nz.mem [205] : 
                        (N24)? \nz.mem [237] : 1'b0;
  assign r_data_o[12] = (N17)? \nz.mem [12] : 
                        (N19)? \nz.mem [44] : 
                        (N21)? \nz.mem [76] : 
                        (N23)? \nz.mem [108] : 
                        (N18)? \nz.mem [140] : 
                        (N20)? \nz.mem [172] : 
                        (N22)? \nz.mem [204] : 
                        (N24)? \nz.mem [236] : 1'b0;
  assign r_data_o[11] = (N17)? \nz.mem [11] : 
                        (N19)? \nz.mem [43] : 
                        (N21)? \nz.mem [75] : 
                        (N23)? \nz.mem [107] : 
                        (N18)? \nz.mem [139] : 
                        (N20)? \nz.mem [171] : 
                        (N22)? \nz.mem [203] : 
                        (N24)? \nz.mem [235] : 1'b0;
  assign r_data_o[10] = (N17)? \nz.mem [10] : 
                        (N19)? \nz.mem [42] : 
                        (N21)? \nz.mem [74] : 
                        (N23)? \nz.mem [106] : 
                        (N18)? \nz.mem [138] : 
                        (N20)? \nz.mem [170] : 
                        (N22)? \nz.mem [202] : 
                        (N24)? \nz.mem [234] : 1'b0;
  assign r_data_o[9] = (N17)? \nz.mem [9] : 
                       (N19)? \nz.mem [41] : 
                       (N21)? \nz.mem [73] : 
                       (N23)? \nz.mem [105] : 
                       (N18)? \nz.mem [137] : 
                       (N20)? \nz.mem [169] : 
                       (N22)? \nz.mem [201] : 
                       (N24)? \nz.mem [233] : 1'b0;
  assign r_data_o[8] = (N17)? \nz.mem [8] : 
                       (N19)? \nz.mem [40] : 
                       (N21)? \nz.mem [72] : 
                       (N23)? \nz.mem [104] : 
                       (N18)? \nz.mem [136] : 
                       (N20)? \nz.mem [168] : 
                       (N22)? \nz.mem [200] : 
                       (N24)? \nz.mem [232] : 1'b0;
  assign r_data_o[7] = (N17)? \nz.mem [7] : 
                       (N19)? \nz.mem [39] : 
                       (N21)? \nz.mem [71] : 
                       (N23)? \nz.mem [103] : 
                       (N18)? \nz.mem [135] : 
                       (N20)? \nz.mem [167] : 
                       (N22)? \nz.mem [199] : 
                       (N24)? \nz.mem [231] : 1'b0;
  assign r_data_o[6] = (N17)? \nz.mem [6] : 
                       (N19)? \nz.mem [38] : 
                       (N21)? \nz.mem [70] : 
                       (N23)? \nz.mem [102] : 
                       (N18)? \nz.mem [134] : 
                       (N20)? \nz.mem [166] : 
                       (N22)? \nz.mem [198] : 
                       (N24)? \nz.mem [230] : 1'b0;
  assign r_data_o[5] = (N17)? \nz.mem [5] : 
                       (N19)? \nz.mem [37] : 
                       (N21)? \nz.mem [69] : 
                       (N23)? \nz.mem [101] : 
                       (N18)? \nz.mem [133] : 
                       (N20)? \nz.mem [165] : 
                       (N22)? \nz.mem [197] : 
                       (N24)? \nz.mem [229] : 1'b0;
  assign r_data_o[4] = (N17)? \nz.mem [4] : 
                       (N19)? \nz.mem [36] : 
                       (N21)? \nz.mem [68] : 
                       (N23)? \nz.mem [100] : 
                       (N18)? \nz.mem [132] : 
                       (N20)? \nz.mem [164] : 
                       (N22)? \nz.mem [196] : 
                       (N24)? \nz.mem [228] : 1'b0;
  assign r_data_o[3] = (N17)? \nz.mem [3] : 
                       (N19)? \nz.mem [35] : 
                       (N21)? \nz.mem [67] : 
                       (N23)? \nz.mem [99] : 
                       (N18)? \nz.mem [131] : 
                       (N20)? \nz.mem [163] : 
                       (N22)? \nz.mem [195] : 
                       (N24)? \nz.mem [227] : 1'b0;
  assign r_data_o[2] = (N17)? \nz.mem [2] : 
                       (N19)? \nz.mem [34] : 
                       (N21)? \nz.mem [66] : 
                       (N23)? \nz.mem [98] : 
                       (N18)? \nz.mem [130] : 
                       (N20)? \nz.mem [162] : 
                       (N22)? \nz.mem [194] : 
                       (N24)? \nz.mem [226] : 1'b0;
  assign r_data_o[1] = (N17)? \nz.mem [1] : 
                       (N19)? \nz.mem [33] : 
                       (N21)? \nz.mem [65] : 
                       (N23)? \nz.mem [97] : 
                       (N18)? \nz.mem [129] : 
                       (N20)? \nz.mem [161] : 
                       (N22)? \nz.mem [193] : 
                       (N24)? \nz.mem [225] : 1'b0;
  assign r_data_o[0] = (N17)? \nz.mem [0] : 
                       (N19)? \nz.mem [32] : 
                       (N21)? \nz.mem [64] : 
                       (N23)? \nz.mem [96] : 
                       (N18)? \nz.mem [128] : 
                       (N20)? \nz.mem [160] : 
                       (N22)? \nz.mem [192] : 
                       (N24)? \nz.mem [224] : 1'b0;
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
      \nz.mem_255_sv2v_reg  <= w_data_i[31];
      \nz.mem_254_sv2v_reg  <= w_data_i[30];
      \nz.mem_253_sv2v_reg  <= w_data_i[29];
      \nz.mem_252_sv2v_reg  <= w_data_i[28];
      \nz.mem_251_sv2v_reg  <= w_data_i[27];
      \nz.mem_250_sv2v_reg  <= w_data_i[26];
      \nz.mem_249_sv2v_reg  <= w_data_i[25];
      \nz.mem_248_sv2v_reg  <= w_data_i[24];
      \nz.mem_247_sv2v_reg  <= w_data_i[23];
      \nz.mem_246_sv2v_reg  <= w_data_i[22];
      \nz.mem_245_sv2v_reg  <= w_data_i[21];
      \nz.mem_244_sv2v_reg  <= w_data_i[20];
      \nz.mem_243_sv2v_reg  <= w_data_i[19];
      \nz.mem_242_sv2v_reg  <= w_data_i[18];
      \nz.mem_241_sv2v_reg  <= w_data_i[17];
      \nz.mem_240_sv2v_reg  <= w_data_i[16];
      \nz.mem_239_sv2v_reg  <= w_data_i[15];
      \nz.mem_238_sv2v_reg  <= w_data_i[14];
      \nz.mem_237_sv2v_reg  <= w_data_i[13];
      \nz.mem_236_sv2v_reg  <= w_data_i[12];
      \nz.mem_235_sv2v_reg  <= w_data_i[11];
      \nz.mem_234_sv2v_reg  <= w_data_i[10];
      \nz.mem_233_sv2v_reg  <= w_data_i[9];
      \nz.mem_232_sv2v_reg  <= w_data_i[8];
      \nz.mem_231_sv2v_reg  <= w_data_i[7];
      \nz.mem_230_sv2v_reg  <= w_data_i[6];
      \nz.mem_229_sv2v_reg  <= w_data_i[5];
      \nz.mem_228_sv2v_reg  <= w_data_i[4];
      \nz.mem_227_sv2v_reg  <= w_data_i[3];
      \nz.mem_226_sv2v_reg  <= w_data_i[2];
      \nz.mem_225_sv2v_reg  <= w_data_i[1];
      \nz.mem_224_sv2v_reg  <= w_data_i[0];
    end 
    if(N40) begin
      \nz.mem_223_sv2v_reg  <= w_data_i[31];
      \nz.mem_222_sv2v_reg  <= w_data_i[30];
      \nz.mem_221_sv2v_reg  <= w_data_i[29];
      \nz.mem_220_sv2v_reg  <= w_data_i[28];
      \nz.mem_219_sv2v_reg  <= w_data_i[27];
      \nz.mem_218_sv2v_reg  <= w_data_i[26];
      \nz.mem_217_sv2v_reg  <= w_data_i[25];
      \nz.mem_216_sv2v_reg  <= w_data_i[24];
      \nz.mem_215_sv2v_reg  <= w_data_i[23];
      \nz.mem_214_sv2v_reg  <= w_data_i[22];
      \nz.mem_213_sv2v_reg  <= w_data_i[21];
      \nz.mem_212_sv2v_reg  <= w_data_i[20];
      \nz.mem_211_sv2v_reg  <= w_data_i[19];
      \nz.mem_210_sv2v_reg  <= w_data_i[18];
      \nz.mem_209_sv2v_reg  <= w_data_i[17];
      \nz.mem_208_sv2v_reg  <= w_data_i[16];
      \nz.mem_207_sv2v_reg  <= w_data_i[15];
      \nz.mem_206_sv2v_reg  <= w_data_i[14];
      \nz.mem_205_sv2v_reg  <= w_data_i[13];
      \nz.mem_204_sv2v_reg  <= w_data_i[12];
      \nz.mem_203_sv2v_reg  <= w_data_i[11];
      \nz.mem_202_sv2v_reg  <= w_data_i[10];
      \nz.mem_201_sv2v_reg  <= w_data_i[9];
      \nz.mem_200_sv2v_reg  <= w_data_i[8];
      \nz.mem_199_sv2v_reg  <= w_data_i[7];
      \nz.mem_198_sv2v_reg  <= w_data_i[6];
      \nz.mem_197_sv2v_reg  <= w_data_i[5];
      \nz.mem_196_sv2v_reg  <= w_data_i[4];
      \nz.mem_195_sv2v_reg  <= w_data_i[3];
      \nz.mem_194_sv2v_reg  <= w_data_i[2];
      \nz.mem_193_sv2v_reg  <= w_data_i[1];
      \nz.mem_192_sv2v_reg  <= w_data_i[0];
    end 
    if(N39) begin
      \nz.mem_191_sv2v_reg  <= w_data_i[31];
      \nz.mem_190_sv2v_reg  <= w_data_i[30];
      \nz.mem_189_sv2v_reg  <= w_data_i[29];
      \nz.mem_188_sv2v_reg  <= w_data_i[28];
      \nz.mem_187_sv2v_reg  <= w_data_i[27];
      \nz.mem_186_sv2v_reg  <= w_data_i[26];
      \nz.mem_185_sv2v_reg  <= w_data_i[25];
      \nz.mem_184_sv2v_reg  <= w_data_i[24];
      \nz.mem_183_sv2v_reg  <= w_data_i[23];
      \nz.mem_182_sv2v_reg  <= w_data_i[22];
      \nz.mem_181_sv2v_reg  <= w_data_i[21];
      \nz.mem_180_sv2v_reg  <= w_data_i[20];
      \nz.mem_179_sv2v_reg  <= w_data_i[19];
      \nz.mem_178_sv2v_reg  <= w_data_i[18];
      \nz.mem_177_sv2v_reg  <= w_data_i[17];
      \nz.mem_176_sv2v_reg  <= w_data_i[16];
      \nz.mem_175_sv2v_reg  <= w_data_i[15];
      \nz.mem_174_sv2v_reg  <= w_data_i[14];
      \nz.mem_173_sv2v_reg  <= w_data_i[13];
      \nz.mem_172_sv2v_reg  <= w_data_i[12];
      \nz.mem_171_sv2v_reg  <= w_data_i[11];
      \nz.mem_170_sv2v_reg  <= w_data_i[10];
      \nz.mem_169_sv2v_reg  <= w_data_i[9];
      \nz.mem_168_sv2v_reg  <= w_data_i[8];
      \nz.mem_167_sv2v_reg  <= w_data_i[7];
      \nz.mem_166_sv2v_reg  <= w_data_i[6];
      \nz.mem_165_sv2v_reg  <= w_data_i[5];
      \nz.mem_164_sv2v_reg  <= w_data_i[4];
      \nz.mem_163_sv2v_reg  <= w_data_i[3];
      \nz.mem_162_sv2v_reg  <= w_data_i[2];
      \nz.mem_161_sv2v_reg  <= w_data_i[1];
      \nz.mem_160_sv2v_reg  <= w_data_i[0];
    end 
    if(N38) begin
      \nz.mem_159_sv2v_reg  <= w_data_i[31];
      \nz.mem_158_sv2v_reg  <= w_data_i[30];
      \nz.mem_157_sv2v_reg  <= w_data_i[29];
      \nz.mem_156_sv2v_reg  <= w_data_i[28];
      \nz.mem_155_sv2v_reg  <= w_data_i[27];
      \nz.mem_154_sv2v_reg  <= w_data_i[26];
      \nz.mem_153_sv2v_reg  <= w_data_i[25];
      \nz.mem_152_sv2v_reg  <= w_data_i[24];
      \nz.mem_151_sv2v_reg  <= w_data_i[23];
      \nz.mem_150_sv2v_reg  <= w_data_i[22];
      \nz.mem_149_sv2v_reg  <= w_data_i[21];
      \nz.mem_148_sv2v_reg  <= w_data_i[20];
      \nz.mem_147_sv2v_reg  <= w_data_i[19];
      \nz.mem_146_sv2v_reg  <= w_data_i[18];
      \nz.mem_145_sv2v_reg  <= w_data_i[17];
      \nz.mem_144_sv2v_reg  <= w_data_i[16];
      \nz.mem_143_sv2v_reg  <= w_data_i[15];
      \nz.mem_142_sv2v_reg  <= w_data_i[14];
      \nz.mem_141_sv2v_reg  <= w_data_i[13];
      \nz.mem_140_sv2v_reg  <= w_data_i[12];
      \nz.mem_139_sv2v_reg  <= w_data_i[11];
      \nz.mem_138_sv2v_reg  <= w_data_i[10];
      \nz.mem_137_sv2v_reg  <= w_data_i[9];
      \nz.mem_136_sv2v_reg  <= w_data_i[8];
      \nz.mem_135_sv2v_reg  <= w_data_i[7];
      \nz.mem_134_sv2v_reg  <= w_data_i[6];
      \nz.mem_133_sv2v_reg  <= w_data_i[5];
      \nz.mem_132_sv2v_reg  <= w_data_i[4];
      \nz.mem_131_sv2v_reg  <= w_data_i[3];
      \nz.mem_130_sv2v_reg  <= w_data_i[2];
      \nz.mem_129_sv2v_reg  <= w_data_i[1];
      \nz.mem_128_sv2v_reg  <= w_data_i[0];
    end 
    if(N37) begin
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
    if(N36) begin
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
    if(N35) begin
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
    if(N34) begin
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



module bsg_mem_1r1w_width_p32_els_p8_read_write_same_addr_p0
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
  input [31:0] w_data_i;
  input [2:0] r_addr_i;
  output [31:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [31:0] r_data_o;

  bsg_mem_1r1w_synth_width_p32_els_p8_read_write_same_addr_p0
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

  input [31:0] w_data_i;
  output [31:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_enq_i;
  input r_clk_i;
  input r_reset_i;
  input r_deq_i;
  output w_full_o;
  output r_valid_o;
  wire [31:0] r_data_o;
  wire w_full_o,r_valid_o,N0,N1;
  wire [3:0] w_ptr_binary_r,r_ptr_binary_r,w_ptr_gray_r,w_ptr_gray_r_rsync,r_ptr_gray_r,
  r_ptr_gray_r_wsync;

  bsg_mem_1r1w_width_p32_els_p8_read_write_same_addr_p0
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

