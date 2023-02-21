

module top
(
  clk,
  reset,
  calibration_done_i,
  valid_i,
  data_i,
  yumi_o,
  in_top_channel_i,
  out_top_channel_i,
  valid_o,
  data_o,
  yumi_i
);

  input [9:0] valid_i;
  input [159:0] data_i;
  output [9:0] yumi_o;
  input [3:0] in_top_channel_i;
  input [2:0] out_top_channel_i;
  output [79:0] data_o;
  input clk;
  input reset;
  input calibration_done_i;
  input yumi_i;
  output valid_o;

  bsg_assembler_in
  wrapper
  (
    .valid_i(valid_i),
    .data_i(data_i),
    .yumi_o(yumi_o),
    .in_top_channel_i(in_top_channel_i),
    .out_top_channel_i(out_top_channel_i),
    .data_o(data_o),
    .clk(clk),
    .reset(reset),
    .calibration_done_i(calibration_done_i),
    .yumi_i(yumi_i),
    .valid_o(valid_o)
  );


endmodule



module bsg_make_2D_array_width_p16_items_p5
(
  i,
  o
);

  input [79:0] i;
  output [79:0] o;
  wire [79:0] o;
  assign o[79] = i[79];
  assign o[78] = i[78];
  assign o[77] = i[77];
  assign o[76] = i[76];
  assign o[75] = i[75];
  assign o[74] = i[74];
  assign o[73] = i[73];
  assign o[72] = i[72];
  assign o[71] = i[71];
  assign o[70] = i[70];
  assign o[69] = i[69];
  assign o[68] = i[68];
  assign o[67] = i[67];
  assign o[66] = i[66];
  assign o[65] = i[65];
  assign o[64] = i[64];
  assign o[63] = i[63];
  assign o[62] = i[62];
  assign o[61] = i[61];
  assign o[60] = i[60];
  assign o[59] = i[59];
  assign o[58] = i[58];
  assign o[57] = i[57];
  assign o[56] = i[56];
  assign o[55] = i[55];
  assign o[54] = i[54];
  assign o[53] = i[53];
  assign o[52] = i[52];
  assign o[51] = i[51];
  assign o[50] = i[50];
  assign o[49] = i[49];
  assign o[48] = i[48];
  assign o[47] = i[47];
  assign o[46] = i[46];
  assign o[45] = i[45];
  assign o[44] = i[44];
  assign o[43] = i[43];
  assign o[42] = i[42];
  assign o[41] = i[41];
  assign o[40] = i[40];
  assign o[39] = i[39];
  assign o[38] = i[38];
  assign o[37] = i[37];
  assign o[36] = i[36];
  assign o[35] = i[35];
  assign o[34] = i[34];
  assign o[33] = i[33];
  assign o[32] = i[32];
  assign o[31] = i[31];
  assign o[30] = i[30];
  assign o[29] = i[29];
  assign o[28] = i[28];
  assign o[27] = i[27];
  assign o[26] = i[26];
  assign o[25] = i[25];
  assign o[24] = i[24];
  assign o[23] = i[23];
  assign o[22] = i[22];
  assign o[21] = i[21];
  assign o[20] = i[20];
  assign o[19] = i[19];
  assign o[18] = i[18];
  assign o[17] = i[17];
  assign o[16] = i[16];
  assign o[15] = i[15];
  assign o[14] = i[14];
  assign o[13] = i[13];
  assign o[12] = i[12];
  assign o[11] = i[11];
  assign o[10] = i[10];
  assign o[9] = i[9];
  assign o[8] = i[8];
  assign o[7] = i[7];
  assign o[6] = i[6];
  assign o[5] = i[5];
  assign o[4] = i[4];
  assign o[3] = i[3];
  assign o[2] = i[2];
  assign o[1] = i[1];
  assign o[0] = i[0];

endmodule



module bsg_rotate_right_width_p10
(
  data_i,
  rot_i,
  o
);

  input [9:0] data_i;
  input [3:0] rot_i;
  output [9:0] o;
  wire [9:0] o;
  wire sv2v_dc_1,sv2v_dc_2,sv2v_dc_3,sv2v_dc_4,sv2v_dc_5,sv2v_dc_6,sv2v_dc_7,sv2v_dc_8,
  sv2v_dc_9,sv2v_dc_10;
  assign { sv2v_dc_1, sv2v_dc_2, sv2v_dc_3, sv2v_dc_4, sv2v_dc_5, sv2v_dc_6, sv2v_dc_7, sv2v_dc_8, sv2v_dc_9, sv2v_dc_10, o } = { data_i, data_i } >> rot_i;

endmodule



module bsg_circular_ptr_slots_p10_max_add_p5
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [2:0] add_i;
  output [3:0] o;
  output [3:0] n_o;
  input clk;
  input reset_i;
  wire [3:0] o,n_o,ptr_nowrap;
  wire N0,N1,N2,N3,N4,N5,N6,N7;
  wire [4:0] ptr_wrap;
  reg o_3_sv2v_reg,o_2_sv2v_reg,o_1_sv2v_reg,o_0_sv2v_reg;
  assign o[3] = o_3_sv2v_reg;
  assign o[2] = o_2_sv2v_reg;
  assign o[1] = o_1_sv2v_reg;
  assign o[0] = o_0_sv2v_reg;
  assign ptr_nowrap = o + add_i;
  assign { N6, N5, N4, N3, N2 } = o - { 1'b1, 1'b0, 1'b1, 1'b0 };
  assign ptr_wrap = { N6, N5, N4, N3, N2 } + add_i;
  assign n_o = (N0)? ptr_wrap[3:0] : 
               (N1)? ptr_nowrap : 1'b0;
  assign N0 = N7;
  assign N1 = ptr_wrap[4];
  assign N7 = ~ptr_wrap[4];

  always @(posedge clk) begin
    if(reset_i) begin
      o_3_sv2v_reg <= 1'b0;
      o_2_sv2v_reg <= 1'b0;
      o_1_sv2v_reg <= 1'b0;
      o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_3_sv2v_reg <= n_o[3];
      o_2_sv2v_reg <= n_o[2];
      o_1_sv2v_reg <= n_o[1];
      o_0_sv2v_reg <= n_o[0];
    end 
  end


endmodule



module bsg_rr_f2f_input_width_p16_num_in_p10_middle_meet_p5
(
  clk,
  reset,
  valid_i,
  data_i,
  data_head_o,
  valid_head_o,
  go_channels_i,
  go_cnt_i,
  yumi_o
);

  input [9:0] valid_i;
  input [159:0] data_i;
  output [79:0] data_head_o;
  output [4:0] valid_head_o;
  input [4:0] go_channels_i;
  input [2:0] go_cnt_i;
  output [9:0] yumi_o;
  input clk;
  input reset;
  wire [79:0] data_head_o,data_head_o_flat_pretrunc;
  wire [4:0] valid_head_o;
  wire [9:0] yumi_o;
  wire sv2v_dc_1,sv2v_dc_2,sv2v_dc_3,sv2v_dc_4,sv2v_dc_5,sv2v_dc_6,sv2v_dc_7,sv2v_dc_8,
  sv2v_dc_9,sv2v_dc_10,sv2v_dc_11,sv2v_dc_12,sv2v_dc_13,sv2v_dc_14,sv2v_dc_15,
  sv2v_dc_16,sv2v_dc_17,sv2v_dc_18,sv2v_dc_19,sv2v_dc_20,sv2v_dc_21,sv2v_dc_22,
  sv2v_dc_23,sv2v_dc_24,sv2v_dc_25,sv2v_dc_26,sv2v_dc_27,sv2v_dc_28,sv2v_dc_29,
  sv2v_dc_30,sv2v_dc_31,sv2v_dc_32,sv2v_dc_33,sv2v_dc_34,sv2v_dc_35,sv2v_dc_36,sv2v_dc_37,
  sv2v_dc_38,sv2v_dc_39,sv2v_dc_40,sv2v_dc_41,sv2v_dc_42,sv2v_dc_43,sv2v_dc_44,
  sv2v_dc_45,sv2v_dc_46,sv2v_dc_47,sv2v_dc_48,sv2v_dc_49,sv2v_dc_50,sv2v_dc_51,
  sv2v_dc_52,sv2v_dc_53,sv2v_dc_54,sv2v_dc_55,sv2v_dc_56,sv2v_dc_57,sv2v_dc_58,sv2v_dc_59,
  sv2v_dc_60,sv2v_dc_61,sv2v_dc_62,sv2v_dc_63,sv2v_dc_64,sv2v_dc_65,sv2v_dc_66,
  sv2v_dc_67,sv2v_dc_68,sv2v_dc_69,sv2v_dc_70,sv2v_dc_71,sv2v_dc_72,sv2v_dc_73,
  sv2v_dc_74,sv2v_dc_75,sv2v_dc_76,sv2v_dc_77,sv2v_dc_78,sv2v_dc_79,sv2v_dc_80,
  sv2v_dc_81,sv2v_dc_82,sv2v_dc_83,sv2v_dc_84,sv2v_dc_85,sv2v_dc_86,sv2v_dc_87,sv2v_dc_88,
  sv2v_dc_89,sv2v_dc_90,sv2v_dc_91,sv2v_dc_92,sv2v_dc_93,sv2v_dc_94,sv2v_dc_95,
  sv2v_dc_96,sv2v_dc_97,sv2v_dc_98,sv2v_dc_99,sv2v_dc_100,sv2v_dc_101,sv2v_dc_102,
  sv2v_dc_103,sv2v_dc_104,sv2v_dc_105,sv2v_dc_106,sv2v_dc_107,sv2v_dc_108,sv2v_dc_109,
  sv2v_dc_110,sv2v_dc_111,sv2v_dc_112,sv2v_dc_113,sv2v_dc_114,sv2v_dc_115,
  sv2v_dc_116,sv2v_dc_117,sv2v_dc_118,sv2v_dc_119,sv2v_dc_120,sv2v_dc_121,sv2v_dc_122,
  sv2v_dc_123,sv2v_dc_124,sv2v_dc_125,sv2v_dc_126,sv2v_dc_127,sv2v_dc_128,sv2v_dc_129,
  sv2v_dc_130,sv2v_dc_131,sv2v_dc_132,sv2v_dc_133,sv2v_dc_134,sv2v_dc_135,
  sv2v_dc_136,sv2v_dc_137,sv2v_dc_138,sv2v_dc_139,sv2v_dc_140,sv2v_dc_141,sv2v_dc_142,
  sv2v_dc_143,sv2v_dc_144,sv2v_dc_145,sv2v_dc_146,sv2v_dc_147,sv2v_dc_148,sv2v_dc_149,
  sv2v_dc_150,sv2v_dc_151,sv2v_dc_152,sv2v_dc_153,sv2v_dc_154,sv2v_dc_155,
  sv2v_dc_156,sv2v_dc_157,sv2v_dc_158,sv2v_dc_159,sv2v_dc_160,sv2v_dc_161,sv2v_dc_162,
  sv2v_dc_163,sv2v_dc_164,sv2v_dc_165,sv2v_dc_166,sv2v_dc_167,sv2v_dc_168,sv2v_dc_169,
  sv2v_dc_170,sv2v_dc_171,sv2v_dc_172,sv2v_dc_173,sv2v_dc_174,sv2v_dc_175,
  sv2v_dc_176,sv2v_dc_177,sv2v_dc_178,sv2v_dc_179,sv2v_dc_180,sv2v_dc_181,sv2v_dc_182,
  sv2v_dc_183,sv2v_dc_184,sv2v_dc_185,sv2v_dc_186,sv2v_dc_187,sv2v_dc_188,sv2v_dc_189,
  sv2v_dc_190,sv2v_dc_191,sv2v_dc_192,sv2v_dc_193,sv2v_dc_194,sv2v_dc_195,
  sv2v_dc_196,sv2v_dc_197,sv2v_dc_198,sv2v_dc_199,sv2v_dc_200,sv2v_dc_201,sv2v_dc_202,
  sv2v_dc_203,sv2v_dc_204,sv2v_dc_205,sv2v_dc_206,sv2v_dc_207,sv2v_dc_208,sv2v_dc_209,
  sv2v_dc_210,sv2v_dc_211,sv2v_dc_212,sv2v_dc_213,sv2v_dc_214,sv2v_dc_215,
  sv2v_dc_216,sv2v_dc_217,sv2v_dc_218,sv2v_dc_219,sv2v_dc_220,sv2v_dc_221,sv2v_dc_222,
  sv2v_dc_223,sv2v_dc_224,sv2v_dc_225,sv2v_dc_226,sv2v_dc_227,sv2v_dc_228,sv2v_dc_229,
  sv2v_dc_230,sv2v_dc_231,sv2v_dc_232,sv2v_dc_233,sv2v_dc_234,sv2v_dc_235,
  sv2v_dc_236,sv2v_dc_237,sv2v_dc_238,sv2v_dc_239,sv2v_dc_240,sv2v_dc_241,sv2v_dc_242,
  sv2v_dc_243,sv2v_dc_244,sv2v_dc_245,sv2v_dc_246,sv2v_dc_247,sv2v_dc_248,sv2v_dc_249,
  sv2v_dc_250,sv2v_dc_251,sv2v_dc_252,sv2v_dc_253,sv2v_dc_254,sv2v_dc_255,
  sv2v_dc_256,sv2v_dc_257,sv2v_dc_258;
  wire [3:0] iptr_r,iptr_r_data;
  wire [9:5] valid_head_o_pretrunc;

  bsg_make_2D_array_width_p16_items_p5
  bm2Da
  (
    .i(data_head_o_flat_pretrunc),
    .o(data_head_o)
  );


  bsg_rotate_right_width_p10
  valid_rr
  (
    .data_i(valid_i),
    .rot_i(iptr_r),
    .o({ valid_head_o_pretrunc, valid_head_o })
  );

  assign { sv2v_dc_1, sv2v_dc_2, sv2v_dc_3, sv2v_dc_4, sv2v_dc_5, sv2v_dc_6, sv2v_dc_7, sv2v_dc_8, sv2v_dc_9, sv2v_dc_10, sv2v_dc_11, sv2v_dc_12, sv2v_dc_13, sv2v_dc_14, sv2v_dc_15, sv2v_dc_16, sv2v_dc_17, sv2v_dc_18, sv2v_dc_19, sv2v_dc_20, sv2v_dc_21, sv2v_dc_22, sv2v_dc_23, sv2v_dc_24, sv2v_dc_25, sv2v_dc_26, sv2v_dc_27, sv2v_dc_28, sv2v_dc_29, sv2v_dc_30, sv2v_dc_31, sv2v_dc_32, sv2v_dc_33, sv2v_dc_34, sv2v_dc_35, sv2v_dc_36, sv2v_dc_37, sv2v_dc_38, sv2v_dc_39, sv2v_dc_40, sv2v_dc_41, sv2v_dc_42, sv2v_dc_43, sv2v_dc_44, sv2v_dc_45, sv2v_dc_46, sv2v_dc_47, sv2v_dc_48, sv2v_dc_49, sv2v_dc_50, sv2v_dc_51, sv2v_dc_52, sv2v_dc_53, sv2v_dc_54, sv2v_dc_55, sv2v_dc_56, sv2v_dc_57, sv2v_dc_58, sv2v_dc_59, sv2v_dc_60, sv2v_dc_61, sv2v_dc_62, sv2v_dc_63, sv2v_dc_64, sv2v_dc_65, sv2v_dc_66, sv2v_dc_67, sv2v_dc_68, sv2v_dc_69, sv2v_dc_70, sv2v_dc_71, sv2v_dc_72, sv2v_dc_73, sv2v_dc_74, sv2v_dc_75, sv2v_dc_76, sv2v_dc_77, sv2v_dc_78, sv2v_dc_79, sv2v_dc_80, sv2v_dc_81, sv2v_dc_82, sv2v_dc_83, sv2v_dc_84, sv2v_dc_85, sv2v_dc_86, sv2v_dc_87, sv2v_dc_88, sv2v_dc_89, sv2v_dc_90, sv2v_dc_91, sv2v_dc_92, sv2v_dc_93, sv2v_dc_94, sv2v_dc_95, sv2v_dc_96, sv2v_dc_97, sv2v_dc_98, sv2v_dc_99, sv2v_dc_100, sv2v_dc_101, sv2v_dc_102, sv2v_dc_103, sv2v_dc_104, sv2v_dc_105, sv2v_dc_106, sv2v_dc_107, sv2v_dc_108, sv2v_dc_109, sv2v_dc_110, sv2v_dc_111, sv2v_dc_112, sv2v_dc_113, sv2v_dc_114, sv2v_dc_115, sv2v_dc_116, sv2v_dc_117, sv2v_dc_118, sv2v_dc_119, sv2v_dc_120, sv2v_dc_121, sv2v_dc_122, sv2v_dc_123, sv2v_dc_124, sv2v_dc_125, sv2v_dc_126, sv2v_dc_127, sv2v_dc_128, sv2v_dc_129, sv2v_dc_130, sv2v_dc_131, sv2v_dc_132, sv2v_dc_133, sv2v_dc_134, sv2v_dc_135, sv2v_dc_136, sv2v_dc_137, sv2v_dc_138, sv2v_dc_139, sv2v_dc_140, sv2v_dc_141, sv2v_dc_142, sv2v_dc_143, sv2v_dc_144, sv2v_dc_145, sv2v_dc_146, sv2v_dc_147, sv2v_dc_148, sv2v_dc_149, sv2v_dc_150, sv2v_dc_151, sv2v_dc_152, sv2v_dc_153, sv2v_dc_154, sv2v_dc_155, sv2v_dc_156, sv2v_dc_157, sv2v_dc_158, sv2v_dc_159, sv2v_dc_160, sv2v_dc_161, sv2v_dc_162, sv2v_dc_163, sv2v_dc_164, sv2v_dc_165, sv2v_dc_166, sv2v_dc_167, sv2v_dc_168, sv2v_dc_169, sv2v_dc_170, sv2v_dc_171, sv2v_dc_172, sv2v_dc_173, sv2v_dc_174, sv2v_dc_175, sv2v_dc_176, sv2v_dc_177, sv2v_dc_178, sv2v_dc_179, sv2v_dc_180, sv2v_dc_181, sv2v_dc_182, sv2v_dc_183, sv2v_dc_184, sv2v_dc_185, sv2v_dc_186, sv2v_dc_187, sv2v_dc_188, sv2v_dc_189, sv2v_dc_190, sv2v_dc_191, sv2v_dc_192, sv2v_dc_193, sv2v_dc_194, sv2v_dc_195, sv2v_dc_196, sv2v_dc_197, sv2v_dc_198, sv2v_dc_199, sv2v_dc_200, sv2v_dc_201, sv2v_dc_202, sv2v_dc_203, sv2v_dc_204, sv2v_dc_205, sv2v_dc_206, sv2v_dc_207, sv2v_dc_208, sv2v_dc_209, sv2v_dc_210, sv2v_dc_211, sv2v_dc_212, sv2v_dc_213, sv2v_dc_214, sv2v_dc_215, sv2v_dc_216, sv2v_dc_217, sv2v_dc_218, sv2v_dc_219, sv2v_dc_220, sv2v_dc_221, sv2v_dc_222, sv2v_dc_223, sv2v_dc_224, sv2v_dc_225, sv2v_dc_226, sv2v_dc_227, sv2v_dc_228, sv2v_dc_229, sv2v_dc_230, sv2v_dc_231, sv2v_dc_232, sv2v_dc_233, sv2v_dc_234, sv2v_dc_235, sv2v_dc_236, sv2v_dc_237, sv2v_dc_238, sv2v_dc_239, sv2v_dc_240, data_head_o_flat_pretrunc } = { data_i, data_i } >> { iptr_r_data, 1'b0, 1'b0, 1'b0, 1'b0 };
  assign { yumi_o, sv2v_dc_241, sv2v_dc_242, sv2v_dc_243, sv2v_dc_244, sv2v_dc_245, sv2v_dc_246, sv2v_dc_247, sv2v_dc_248, sv2v_dc_249, sv2v_dc_250 } = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, go_channels_i, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, go_channels_i } << iptr_r;

  bsg_circular_ptr_slots_p10_max_add_p5
  c_ptr
  (
    .clk(clk),
    .reset_i(reset),
    .add_i(go_cnt_i),
    .o(iptr_r),
    .n_o({ sv2v_dc_251, sv2v_dc_252, sv2v_dc_253, sv2v_dc_254 })
  );


  bsg_circular_ptr_slots_p10_max_add_p5
  c_ptr_data
  (
    .clk(clk),
    .reset_i(reset),
    .add_i(go_cnt_i),
    .o(iptr_r_data),
    .n_o({ sv2v_dc_255, sv2v_dc_256, sv2v_dc_257, sv2v_dc_258 })
  );


endmodule



module bsg_scan_width_p5_and_p1_lo_to_hi_p1
(
  i,
  o
);

  input [4:0] i;
  output [4:0] o;
  wire [4:0] o;
  wire t_2__4_,t_2__3_,t_2__2_,t_2__1_,t_2__0_,t_1__4_,t_1__3_,t_1__2_,t_1__1_,t_1__0_;
  assign t_1__4_ = i[0] & 1'b1;
  assign t_1__3_ = i[1] & i[0];
  assign t_1__2_ = i[2] & i[1];
  assign t_1__1_ = i[3] & i[2];
  assign t_1__0_ = i[4] & i[3];
  assign t_2__4_ = t_1__4_ & 1'b1;
  assign t_2__3_ = t_1__3_ & 1'b1;
  assign t_2__2_ = t_1__2_ & t_1__4_;
  assign t_2__1_ = t_1__1_ & t_1__3_;
  assign t_2__0_ = t_1__0_ & t_1__2_;
  assign o[0] = t_2__4_ & 1'b1;
  assign o[1] = t_2__3_ & 1'b1;
  assign o[2] = t_2__2_ & 1'b1;
  assign o[3] = t_2__1_ & 1'b1;
  assign o[4] = t_2__0_ & t_2__4_;

endmodule



module bsg_encode_one_hot_width_p1
(
  i,
  addr_o,
  v_o
);

  input [0:0] i;
  output [0:0] addr_o;
  output v_o;
  wire [0:0] addr_o;
  wire v_o;
  assign v_o = i[0];
  assign addr_o[0] = 1'b0;

endmodule



module bsg_encode_one_hot_width_p2
(
  i,
  addr_o,
  v_o
);

  input [1:0] i;
  output [0:0] addr_o;
  output v_o;
  wire [0:0] addr_o,\aligned.vs ;
  wire v_o;
  wire [1:0] \aligned.addrs ;

  bsg_encode_one_hot_width_p1
  \aligned.left 
  (
    .i(i[0]),
    .addr_o(\aligned.addrs [0]),
    .v_o(\aligned.vs [0])
  );


  bsg_encode_one_hot_width_p1
  \aligned.right 
  (
    .i(i[1]),
    .addr_o(\aligned.addrs [1]),
    .v_o(addr_o[0])
  );

  assign v_o = addr_o[0] | \aligned.vs [0];

endmodule



module bsg_encode_one_hot_width_p4
(
  i,
  addr_o,
  v_o
);

  input [3:0] i;
  output [1:0] addr_o;
  output v_o;
  wire [1:0] addr_o,\aligned.addrs ;
  wire v_o;
  wire [0:0] \aligned.vs ;

  bsg_encode_one_hot_width_p2
  \aligned.left 
  (
    .i(i[1:0]),
    .addr_o(\aligned.addrs [0]),
    .v_o(\aligned.vs [0])
  );


  bsg_encode_one_hot_width_p2
  \aligned.right 
  (
    .i(i[3:2]),
    .addr_o(\aligned.addrs [1]),
    .v_o(addr_o[1])
  );

  assign v_o = addr_o[1] | \aligned.vs [0];
  assign addr_o[0] = \aligned.addrs [0] | \aligned.addrs [1];

endmodule



module bsg_encode_one_hot_width_p8
(
  i,
  addr_o,
  v_o
);

  input [7:0] i;
  output [2:0] addr_o;
  output v_o;
  wire [2:0] addr_o;
  wire v_o;
  wire [3:0] \aligned.addrs ;
  wire [0:0] \aligned.vs ;

  bsg_encode_one_hot_width_p4
  \aligned.left 
  (
    .i(i[3:0]),
    .addr_o(\aligned.addrs [1:0]),
    .v_o(\aligned.vs [0])
  );


  bsg_encode_one_hot_width_p4
  \aligned.right 
  (
    .i(i[7:4]),
    .addr_o(\aligned.addrs [3:2]),
    .v_o(addr_o[2])
  );

  assign v_o = addr_o[2] | \aligned.vs [0];
  assign addr_o[1] = \aligned.addrs [1] | \aligned.addrs [3];
  assign addr_o[0] = \aligned.addrs [0] | \aligned.addrs [2];

endmodule



module bsg_encode_one_hot_width_p6
(
  i,
  addr_o,
  v_o
);

  input [5:0] i;
  output [2:0] addr_o;
  output v_o;
  wire [2:0] addr_o;
  wire v_o;

  bsg_encode_one_hot_width_p8
  \unaligned.align 
  (
    .i({ 1'b0, 1'b0, i }),
    .addr_o(addr_o),
    .v_o(v_o)
  );


endmodule



module bsg_thermometer_count_width_p5
(
  i,
  o
);

  input [4:0] i;
  output [2:0] o;
  wire [2:0] o;
  wire N0,N1,N2,N3;
  wire [4:0] \big.one_hot ;

  bsg_encode_one_hot_width_p6
  \big.encode_one_hot 
  (
    .i({ i[4:4], \big.one_hot  }),
    .addr_o(o)
  );

  assign \big.one_hot [4] = N0 & i[3];
  assign N0 = ~i[4];
  assign \big.one_hot [3] = N1 & i[2];
  assign N1 = ~i[3];
  assign \big.one_hot [2] = N2 & i[1];
  assign N2 = ~i[2];
  assign \big.one_hot [1] = N3 & i[0];
  assign N3 = ~i[1];
  assign \big.one_hot [0] = ~i[0];

endmodule



module bsg_rr_f2f_middle_width_p16_middle_meet_p5
(
  valid_head_i,
  ready_head_i,
  go_channels_o,
  go_cnt_o
);

  input [4:0] valid_head_i;
  input [4:0] ready_head_i;
  output [4:0] go_channels_o;
  output [2:0] go_cnt_o;
  wire [4:0] go_channels_o,happy_channels;
  wire [2:0] go_cnt_o;

  bsg_scan_width_p5_and_p1_lo_to_hi_p1
  and_scan
  (
    .i(happy_channels),
    .o(go_channels_o)
  );


  bsg_thermometer_count_width_p5
  \genblk1.genblk1.thermo 
  (
    .i(go_channels_o),
    .o(go_cnt_o)
  );

  assign happy_channels[4] = valid_head_i[4] & ready_head_i[4];
  assign happy_channels[3] = valid_head_i[3] & ready_head_i[3];
  assign happy_channels[2] = valid_head_i[2] & ready_head_i[2];
  assign happy_channels[1] = valid_head_i[1] & ready_head_i[1];
  assign happy_channels[0] = valid_head_i[0] & ready_head_i[0];

endmodule



module bsg_rotate_right_width_p5
(
  data_i,
  rot_i,
  o
);

  input [4:0] data_i;
  input [2:0] rot_i;
  output [4:0] o;
  wire [4:0] o;
  wire sv2v_dc_1,sv2v_dc_2,sv2v_dc_3,sv2v_dc_4,sv2v_dc_5;
  assign { sv2v_dc_1, sv2v_dc_2, sv2v_dc_3, sv2v_dc_4, sv2v_dc_5, o } = { data_i, data_i } >> rot_i;

endmodule



module bsg_circular_ptr_slots_p5_max_add_p5
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [2:0] add_i;
  output [2:0] o;
  output [2:0] n_o;
  input clk;
  input reset_i;
  wire [2:0] o,n_o,ptr_nowrap;
  wire N0,N1,N2,N3,N4,N5,N6;
  wire [3:0] ptr_wrap;
  reg o_2_sv2v_reg,o_1_sv2v_reg,o_0_sv2v_reg;
  assign o[2] = o_2_sv2v_reg;
  assign o[1] = o_1_sv2v_reg;
  assign o[0] = o_0_sv2v_reg;
  assign ptr_nowrap = o + add_i;
  assign { N5, N4, N3, N2 } = o - { 1'b1, 1'b0, 1'b1 };
  assign ptr_wrap = { N5, N4, N3, N2 } + add_i;
  assign n_o = (N0)? ptr_wrap[2:0] : 
               (N1)? ptr_nowrap : 1'b0;
  assign N0 = N6;
  assign N1 = ptr_wrap[3];
  assign N6 = ~ptr_wrap[3];

  always @(posedge clk) begin
    if(reset_i) begin
      o_2_sv2v_reg <= 1'b0;
      o_1_sv2v_reg <= 1'b0;
      o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_2_sv2v_reg <= n_o[2];
      o_1_sv2v_reg <= n_o[1];
      o_0_sv2v_reg <= n_o[0];
    end 
  end


endmodule



module bsg_rr_f2f_output_width_p16_num_out_p5_middle_meet_p5
(
  clk,
  reset,
  ready_i,
  ready_head_o,
  go_channels_i,
  go_cnt_i,
  data_head_i,
  valid_o,
  data_o
);

  input [4:0] ready_i;
  output [4:0] ready_head_o;
  input [4:0] go_channels_i;
  input [2:0] go_cnt_i;
  input [79:0] data_head_i;
  output [4:0] valid_o;
  output [79:0] data_o;
  input clk;
  input reset;
  wire [4:0] ready_head_o,valid_o;
  wire [79:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,
  N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,
  N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,
  N166,N167,N168,N169,sv2v_dc_1,sv2v_dc_2,sv2v_dc_3,sv2v_dc_4,sv2v_dc_5,sv2v_dc_6,
  sv2v_dc_7,sv2v_dc_8,sv2v_dc_9,sv2v_dc_10,sv2v_dc_11;
  wire [2:0] optr_r,optr_r_data;

  bsg_rotate_right_width_p5
  ready_rr
  (
    .data_i(ready_i),
    .rot_i(optr_r),
    .o(ready_head_o)
  );

  assign { valid_o, sv2v_dc_1, sv2v_dc_2, sv2v_dc_3, sv2v_dc_4, sv2v_dc_5 } = { go_channels_i, go_channels_i } << optr_r;

  bsg_circular_ptr_slots_p5_max_add_p5
  c_ptr
  (
    .clk(clk),
    .reset_i(reset),
    .add_i(go_cnt_i),
    .o(optr_r),
    .n_o({ sv2v_dc_6, sv2v_dc_7, sv2v_dc_8 })
  );


  bsg_circular_ptr_slots_p5_max_add_p5
  c_ptr_data
  (
    .clk(clk),
    .reset_i(reset),
    .add_i(go_cnt_i),
    .o(optr_r_data),
    .n_o({ sv2v_dc_9, sv2v_dc_10, sv2v_dc_11 })
  );

  assign N133 = optr_r_data[0] & N0;
  assign N0 = ~optr_r_data[1];
  assign N101 = N133 & optr_r_data[2];
  assign N134 = N1 & N2;
  assign N1 = ~optr_r_data[0];
  assign N2 = ~optr_r_data[1];
  assign N100 = N134 & optr_r_data[2];
  assign N135 = optr_r_data[0] & optr_r_data[1];
  assign N99 = N135 & N3;
  assign N3 = ~optr_r_data[2];
  assign N136 = N4 & optr_r_data[1];
  assign N4 = ~optr_r_data[0];
  assign N98 = N136 & N5;
  assign N5 = ~optr_r_data[2];
  assign N137 = optr_r_data[0] & N6;
  assign N6 = ~optr_r_data[1];
  assign N97 = N137 & N7;
  assign N7 = ~optr_r_data[2];
  assign N138 = N8 & N9;
  assign N8 = ~optr_r_data[0];
  assign N9 = ~optr_r_data[1];
  assign N96 = N138 & N10;
  assign N10 = ~optr_r_data[2];
  assign N139 = N11 & optr_r_data[1];
  assign N11 = ~optr_r_data[0];
  assign N108 = N139 & optr_r_data[2];
  assign N140 = optr_r_data[0] & N12;
  assign N12 = ~optr_r_data[1];
  assign N107 = N140 & optr_r_data[2];
  assign N141 = N13 & N14;
  assign N13 = ~optr_r_data[0];
  assign N14 = ~optr_r_data[1];
  assign N106 = N141 & optr_r_data[2];
  assign N142 = optr_r_data[0] & optr_r_data[1];
  assign N105 = N142 & N15;
  assign N15 = ~optr_r_data[2];
  assign N143 = N16 & optr_r_data[1];
  assign N16 = ~optr_r_data[0];
  assign N104 = N143 & N17;
  assign N17 = ~optr_r_data[2];
  assign N144 = optr_r_data[0] & N18;
  assign N18 = ~optr_r_data[1];
  assign N103 = N144 & N19;
  assign N19 = ~optr_r_data[2];
  assign N145 = N20 & N21;
  assign N20 = ~optr_r_data[0];
  assign N21 = ~optr_r_data[1];
  assign N102 = N145 & N22;
  assign N22 = ~optr_r_data[2];
  assign N146 = optr_r_data[0] & optr_r_data[1];
  assign N116 = N146 & optr_r_data[2];
  assign N147 = N23 & optr_r_data[1];
  assign N23 = ~optr_r_data[0];
  assign N115 = N147 & optr_r_data[2];
  assign N148 = optr_r_data[0] & N24;
  assign N24 = ~optr_r_data[1];
  assign N114 = N148 & optr_r_data[2];
  assign N149 = N25 & N26;
  assign N25 = ~optr_r_data[0];
  assign N26 = ~optr_r_data[1];
  assign N113 = N149 & optr_r_data[2];
  assign N150 = optr_r_data[0] & optr_r_data[1];
  assign N112 = N150 & N27;
  assign N27 = ~optr_r_data[2];
  assign N151 = N28 & optr_r_data[1];
  assign N28 = ~optr_r_data[0];
  assign N111 = N151 & N29;
  assign N29 = ~optr_r_data[2];
  assign N152 = optr_r_data[0] & N30;
  assign N30 = ~optr_r_data[1];
  assign N110 = N152 & N31;
  assign N31 = ~optr_r_data[2];
  assign N153 = N32 & N33;
  assign N32 = ~optr_r_data[0];
  assign N33 = ~optr_r_data[1];
  assign N109 = N153 & N34;
  assign N34 = ~optr_r_data[2];
  assign N154 = optr_r_data[0] & optr_r_data[1];
  assign N124 = N154 & optr_r_data[2];
  assign N155 = N35 & optr_r_data[1];
  assign N35 = ~optr_r_data[0];
  assign N123 = N155 & optr_r_data[2];
  assign N156 = optr_r_data[0] & N36;
  assign N36 = ~optr_r_data[1];
  assign N122 = N156 & optr_r_data[2];
  assign N157 = N37 & N38;
  assign N37 = ~optr_r_data[0];
  assign N38 = ~optr_r_data[1];
  assign N121 = N157 & optr_r_data[2];
  assign N158 = optr_r_data[0] & optr_r_data[1];
  assign N120 = N158 & N39;
  assign N39 = ~optr_r_data[2];
  assign N159 = N40 & optr_r_data[1];
  assign N40 = ~optr_r_data[0];
  assign N119 = N159 & N41;
  assign N41 = ~optr_r_data[2];
  assign N160 = optr_r_data[0] & N42;
  assign N42 = ~optr_r_data[1];
  assign N118 = N160 & N43;
  assign N43 = ~optr_r_data[2];
  assign N161 = N44 & N45;
  assign N44 = ~optr_r_data[0];
  assign N45 = ~optr_r_data[1];
  assign N117 = N161 & N46;
  assign N46 = ~optr_r_data[2];
  assign N162 = optr_r_data[0] & optr_r_data[1];
  assign N132 = N162 & optr_r_data[2];
  assign N163 = N47 & optr_r_data[1];
  assign N47 = ~optr_r_data[0];
  assign N131 = N163 & optr_r_data[2];
  assign N164 = optr_r_data[0] & N48;
  assign N48 = ~optr_r_data[1];
  assign N130 = N164 & optr_r_data[2];
  assign N165 = N49 & N50;
  assign N49 = ~optr_r_data[0];
  assign N50 = ~optr_r_data[1];
  assign N129 = N165 & optr_r_data[2];
  assign N166 = optr_r_data[0] & optr_r_data[1];
  assign N128 = N166 & N51;
  assign N51 = ~optr_r_data[2];
  assign N167 = N52 & optr_r_data[1];
  assign N52 = ~optr_r_data[0];
  assign N127 = N167 & N53;
  assign N53 = ~optr_r_data[2];
  assign N168 = optr_r_data[0] & N54;
  assign N54 = ~optr_r_data[1];
  assign N126 = N168 & N55;
  assign N55 = ~optr_r_data[2];
  assign N169 = N56 & N57;
  assign N56 = ~optr_r_data[0];
  assign N57 = ~optr_r_data[1];
  assign N125 = N169 & N58;
  assign N58 = ~optr_r_data[2];
  assign data_o[15:0] = (N59)? data_head_i[15:0] : 
                        (N60)? data_head_i[31:16] : 
                        (N61)? data_head_i[47:32] : 
                        (N62)? data_head_i[63:48] : 
                        (N63)? data_head_i[79:64] : 
                        (N64)? data_head_i[15:0] : 1'b0;
  assign N59 = N101;
  assign N60 = N100;
  assign N61 = N99;
  assign N62 = N98;
  assign N63 = N97;
  assign N64 = N96;
  assign data_o[31:16] = (N65)? data_head_i[15:0] : 
                         (N66)? data_head_i[31:16] : 
                         (N67)? data_head_i[47:32] : 
                         (N68)? data_head_i[63:48] : 
                         (N69)? data_head_i[79:64] : 
                         (N70)? data_head_i[15:0] : 
                         (N71)? data_head_i[31:16] : 1'b0;
  assign N65 = N108;
  assign N66 = N107;
  assign N67 = N106;
  assign N68 = N105;
  assign N69 = N104;
  assign N70 = N103;
  assign N71 = N102;
  assign data_o[47:32] = (N72)? data_head_i[15:0] : 
                         (N73)? data_head_i[31:16] : 
                         (N74)? data_head_i[47:32] : 
                         (N75)? data_head_i[63:48] : 
                         (N76)? data_head_i[79:64] : 
                         (N77)? data_head_i[15:0] : 
                         (N78)? data_head_i[31:16] : 
                         (N79)? data_head_i[47:32] : 1'b0;
  assign N72 = N116;
  assign N73 = N115;
  assign N74 = N114;
  assign N75 = N113;
  assign N76 = N112;
  assign N77 = N111;
  assign N78 = N110;
  assign N79 = N109;
  assign data_o[63:48] = (N80)? data_head_i[31:16] : 
                         (N81)? data_head_i[47:32] : 
                         (N82)? data_head_i[63:48] : 
                         (N83)? data_head_i[79:64] : 
                         (N84)? data_head_i[15:0] : 
                         (N85)? data_head_i[31:16] : 
                         (N86)? data_head_i[47:32] : 
                         (N87)? data_head_i[63:48] : 1'b0;
  assign N80 = N124;
  assign N81 = N123;
  assign N82 = N122;
  assign N83 = N121;
  assign N84 = N120;
  assign N85 = N119;
  assign N86 = N118;
  assign N87 = N117;
  assign data_o[79:64] = (N88)? data_head_i[47:32] : 
                         (N89)? data_head_i[63:48] : 
                         (N90)? data_head_i[79:64] : 
                         (N91)? data_head_i[15:0] : 
                         (N92)? data_head_i[31:16] : 
                         (N93)? data_head_i[47:32] : 
                         (N94)? data_head_i[63:48] : 
                         (N95)? data_head_i[79:64] : 1'b0;
  assign N88 = N132;
  assign N89 = N131;
  assign N90 = N130;
  assign N91 = N129;
  assign N92 = N128;
  assign N93 = N127;
  assign N94 = N126;
  assign N95 = N125;

endmodule



module bsg_round_robin_fifo_to_fifo_width_p16_num_in_p10_num_out_p5_in_channel_count_mask_p512
(
  clk,
  reset,
  valid_i,
  data_i,
  yumi_o,
  in_top_channel_i,
  out_top_channel_i,
  valid_o,
  data_o,
  ready_i
);

  input [9:0] valid_i;
  input [159:0] data_i;
  output [9:0] yumi_o;
  input [3:0] in_top_channel_i;
  input [2:0] out_top_channel_i;
  output [4:0] valid_o;
  output [79:0] data_o;
  input [4:0] ready_i;
  input clk;
  input reset;
  wire [9:0] yumi_o;
  wire [4:0] valid_o,go_channels;
  wire [79:0] data_o,data_o_flat,\oc_4_.out_chan.data_head_array ;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,yumi_int_o_9__9_,
  yumi_int_o_9__8_,yumi_int_o_9__7_,yumi_int_o_9__6_,yumi_int_o_9__5_,yumi_int_o_9__4_,
  yumi_int_o_9__3_,yumi_int_o_9__2_,yumi_int_o_9__1_,yumi_int_o_9__0_,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,valid_int_o_4__4_,valid_int_o_4__3_,valid_int_o_4__2_,
  valid_int_o_4__1_,valid_int_o_4__0_,N45,N46,N47,N48,data_int_o_4__79_,
  data_int_o_4__78_,data_int_o_4__77_,data_int_o_4__76_,data_int_o_4__75_,data_int_o_4__74_,
  data_int_o_4__73_,data_int_o_4__72_,data_int_o_4__71_,data_int_o_4__70_,
  data_int_o_4__69_,data_int_o_4__68_,data_int_o_4__67_,data_int_o_4__66_,data_int_o_4__65_,
  data_int_o_4__64_,data_int_o_4__63_,data_int_o_4__62_,data_int_o_4__61_,
  data_int_o_4__60_,data_int_o_4__59_,data_int_o_4__58_,data_int_o_4__57_,data_int_o_4__56_,
  data_int_o_4__55_,data_int_o_4__54_,data_int_o_4__53_,data_int_o_4__52_,
  data_int_o_4__51_,data_int_o_4__50_,data_int_o_4__49_,data_int_o_4__48_,data_int_o_4__47_,
  data_int_o_4__46_,data_int_o_4__45_,data_int_o_4__44_,data_int_o_4__43_,
  data_int_o_4__42_,data_int_o_4__41_,data_int_o_4__40_,data_int_o_4__39_,
  data_int_o_4__38_,data_int_o_4__37_,data_int_o_4__36_,data_int_o_4__35_,data_int_o_4__34_,
  data_int_o_4__33_,data_int_o_4__32_,data_int_o_4__31_,data_int_o_4__30_,
  data_int_o_4__29_,data_int_o_4__28_,data_int_o_4__27_,data_int_o_4__26_,data_int_o_4__25_,
  data_int_o_4__24_,data_int_o_4__23_,data_int_o_4__22_,data_int_o_4__21_,
  data_int_o_4__20_,data_int_o_4__19_,data_int_o_4__18_,data_int_o_4__17_,data_int_o_4__16_,
  data_int_o_4__15_,data_int_o_4__14_,data_int_o_4__13_,data_int_o_4__12_,
  data_int_o_4__11_,data_int_o_4__10_,data_int_o_4__9_,data_int_o_4__8_,data_int_o_4__7_,
  data_int_o_4__6_,data_int_o_4__5_,data_int_o_4__4_,data_int_o_4__3_,
  data_int_o_4__2_,data_int_o_4__1_,data_int_o_4__0_,data_head_9__79_,data_head_9__78_,
  data_head_9__77_,data_head_9__76_,data_head_9__75_,data_head_9__74_,data_head_9__73_,
  data_head_9__72_,data_head_9__71_,data_head_9__70_,data_head_9__69_,data_head_9__68_,
  data_head_9__67_,data_head_9__66_,data_head_9__65_,data_head_9__64_,
  data_head_9__63_,data_head_9__62_,data_head_9__61_,data_head_9__60_,data_head_9__59_,
  data_head_9__58_,data_head_9__57_,data_head_9__56_,data_head_9__55_,data_head_9__54_,
  data_head_9__53_,data_head_9__52_,data_head_9__51_,data_head_9__50_,
  data_head_9__49_,data_head_9__48_,data_head_9__47_,data_head_9__46_,data_head_9__45_,
  data_head_9__44_,data_head_9__43_,data_head_9__42_,data_head_9__41_,data_head_9__40_,
  data_head_9__39_,data_head_9__38_,data_head_9__37_,data_head_9__36_,
  data_head_9__35_,data_head_9__34_,data_head_9__33_,data_head_9__32_,data_head_9__31_,
  data_head_9__30_,data_head_9__29_,data_head_9__28_,data_head_9__27_,data_head_9__26_,
  data_head_9__25_,data_head_9__24_,data_head_9__23_,data_head_9__22_,data_head_9__21_,
  data_head_9__20_,data_head_9__19_,data_head_9__18_,data_head_9__17_,
  data_head_9__16_,data_head_9__15_,data_head_9__14_,data_head_9__13_,data_head_9__12_,
  data_head_9__11_,data_head_9__10_,data_head_9__9_,data_head_9__8_,data_head_9__7_,
  data_head_9__6_,data_head_9__5_,data_head_9__4_,data_head_9__3_,data_head_9__2_,
  data_head_9__1_,data_head_9__0_,_0_net_,valid_head_9__4_,valid_head_9__3_,
  valid_head_9__2_,valid_head_9__1_,valid_head_9__0_,_2_net__4_,_2_net__3_,_2_net__2_,
  _2_net__1_,_2_net__0_,_3_net__4_,_3_net__3_,_3_net__2_,_3_net__1_,_3_net__0_,
  ready_head_4__4_,ready_head_4__3_,ready_head_4__2_,ready_head_4__1_,ready_head_4__0_,
  _4_net__79_,_4_net__78_,_4_net__77_,_4_net__76_,_4_net__75_,_4_net__74_,_4_net__73_,
  _4_net__72_,_4_net__71_,_4_net__70_,_4_net__69_,_4_net__68_,_4_net__67_,
  _4_net__66_,_4_net__65_,_4_net__64_,_4_net__63_,_4_net__62_,_4_net__61_,_4_net__60_,
  _4_net__59_,_4_net__58_,_4_net__57_,_4_net__56_,_4_net__55_,_4_net__54_,_4_net__53_,
  _4_net__52_,_4_net__51_,_4_net__50_,_4_net__49_,_4_net__48_,_4_net__47_,
  _4_net__46_,_4_net__45_,_4_net__44_,_4_net__43_,_4_net__42_,_4_net__41_,_4_net__40_,
  _4_net__39_,_4_net__38_,_4_net__37_,_4_net__36_,_4_net__35_,_4_net__34_,_4_net__33_,
  _4_net__32_,_4_net__31_,_4_net__30_,_4_net__29_,_4_net__28_,_4_net__27_,
  _4_net__26_,_4_net__25_,_4_net__24_,_4_net__23_,_4_net__22_,_4_net__21_,_4_net__20_,
  _4_net__19_,_4_net__18_,_4_net__17_,_4_net__16_,_4_net__15_,_4_net__14_,_4_net__13_,
  _4_net__12_,_4_net__11_,_4_net__10_,_4_net__9_,_4_net__8_,_4_net__7_,_4_net__6_,
  _4_net__5_,_4_net__4_,_4_net__3_,_4_net__2_,_4_net__1_,_4_net__0_,_5_net_,N49,N50,
  N51,N52,N53,N54,N55,N56;
  wire [2:0] go_cnt;

  bsg_make_2D_array_width_p16_items_p5
  bm2Da
  (
    .i(data_o_flat),
    .o(data_o)
  );


  bsg_rr_f2f_input_width_p16_num_in_p10_middle_meet_p5
  \ic_9_.in_chan.bsg_rr_ff_in 
  (
    .clk(clk),
    .reset(_0_net_),
    .valid_i(valid_i),
    .data_i(data_i),
    .data_head_o({ data_head_9__79_, data_head_9__78_, data_head_9__77_, data_head_9__76_, data_head_9__75_, data_head_9__74_, data_head_9__73_, data_head_9__72_, data_head_9__71_, data_head_9__70_, data_head_9__69_, data_head_9__68_, data_head_9__67_, data_head_9__66_, data_head_9__65_, data_head_9__64_, data_head_9__63_, data_head_9__62_, data_head_9__61_, data_head_9__60_, data_head_9__59_, data_head_9__58_, data_head_9__57_, data_head_9__56_, data_head_9__55_, data_head_9__54_, data_head_9__53_, data_head_9__52_, data_head_9__51_, data_head_9__50_, data_head_9__49_, data_head_9__48_, data_head_9__47_, data_head_9__46_, data_head_9__45_, data_head_9__44_, data_head_9__43_, data_head_9__42_, data_head_9__41_, data_head_9__40_, data_head_9__39_, data_head_9__38_, data_head_9__37_, data_head_9__36_, data_head_9__35_, data_head_9__34_, data_head_9__33_, data_head_9__32_, data_head_9__31_, data_head_9__30_, data_head_9__29_, data_head_9__28_, data_head_9__27_, data_head_9__26_, data_head_9__25_, data_head_9__24_, data_head_9__23_, data_head_9__22_, data_head_9__21_, data_head_9__20_, data_head_9__19_, data_head_9__18_, data_head_9__17_, data_head_9__16_, data_head_9__15_, data_head_9__14_, data_head_9__13_, data_head_9__12_, data_head_9__11_, data_head_9__10_, data_head_9__9_, data_head_9__8_, data_head_9__7_, data_head_9__6_, data_head_9__5_, data_head_9__4_, data_head_9__3_, data_head_9__2_, data_head_9__1_, data_head_9__0_ }),
    .valid_head_o({ valid_head_9__4_, valid_head_9__3_, valid_head_9__2_, valid_head_9__1_, valid_head_9__0_ }),
    .go_channels_i(go_channels),
    .go_cnt_i(go_cnt),
    .yumi_o({ yumi_int_o_9__9_, yumi_int_o_9__8_, yumi_int_o_9__7_, yumi_int_o_9__6_, yumi_int_o_9__5_, yumi_int_o_9__4_, yumi_int_o_9__3_, yumi_int_o_9__2_, yumi_int_o_9__1_, yumi_int_o_9__0_ })
  );


  bsg_rr_f2f_middle_width_p16_middle_meet_p5
  brrf2fm
  (
    .valid_head_i({ _2_net__4_, _2_net__3_, _2_net__2_, _2_net__1_, _2_net__0_ }),
    .ready_head_i({ _3_net__4_, _3_net__3_, _3_net__2_, _3_net__1_, _3_net__0_ }),
    .go_channels_o(go_channels),
    .go_cnt_o(go_cnt)
  );


  bsg_make_2D_array_width_p16_items_p5
  \oc_4_.out_chan.bm2Da 
  (
    .i({ _4_net__79_, _4_net__78_, _4_net__77_, _4_net__76_, _4_net__75_, _4_net__74_, _4_net__73_, _4_net__72_, _4_net__71_, _4_net__70_, _4_net__69_, _4_net__68_, _4_net__67_, _4_net__66_, _4_net__65_, _4_net__64_, _4_net__63_, _4_net__62_, _4_net__61_, _4_net__60_, _4_net__59_, _4_net__58_, _4_net__57_, _4_net__56_, _4_net__55_, _4_net__54_, _4_net__53_, _4_net__52_, _4_net__51_, _4_net__50_, _4_net__49_, _4_net__48_, _4_net__47_, _4_net__46_, _4_net__45_, _4_net__44_, _4_net__43_, _4_net__42_, _4_net__41_, _4_net__40_, _4_net__39_, _4_net__38_, _4_net__37_, _4_net__36_, _4_net__35_, _4_net__34_, _4_net__33_, _4_net__32_, _4_net__31_, _4_net__30_, _4_net__29_, _4_net__28_, _4_net__27_, _4_net__26_, _4_net__25_, _4_net__24_, _4_net__23_, _4_net__22_, _4_net__21_, _4_net__20_, _4_net__19_, _4_net__18_, _4_net__17_, _4_net__16_, _4_net__15_, _4_net__14_, _4_net__13_, _4_net__12_, _4_net__11_, _4_net__10_, _4_net__9_, _4_net__8_, _4_net__7_, _4_net__6_, _4_net__5_, _4_net__4_, _4_net__3_, _4_net__2_, _4_net__1_, _4_net__0_ }),
    .o(\oc_4_.out_chan.data_head_array )
  );


  bsg_rr_f2f_output_width_p16_num_out_p5_middle_meet_p5
  \oc_4_.out_chan.bsg_rr_ff_out 
  (
    .clk(clk),
    .reset(_5_net_),
    .ready_i(ready_i),
    .ready_head_o({ ready_head_4__4_, ready_head_4__3_, ready_head_4__2_, ready_head_4__1_, ready_head_4__0_ }),
    .go_channels_i(go_channels),
    .go_cnt_i(go_cnt),
    .data_head_i(\oc_4_.out_chan.data_head_array ),
    .valid_o({ valid_int_o_4__4_, valid_int_o_4__3_, valid_int_o_4__2_, valid_int_o_4__1_, valid_int_o_4__0_ }),
    .data_o({ data_int_o_4__79_, data_int_o_4__78_, data_int_o_4__77_, data_int_o_4__76_, data_int_o_4__75_, data_int_o_4__74_, data_int_o_4__73_, data_int_o_4__72_, data_int_o_4__71_, data_int_o_4__70_, data_int_o_4__69_, data_int_o_4__68_, data_int_o_4__67_, data_int_o_4__66_, data_int_o_4__65_, data_int_o_4__64_, data_int_o_4__63_, data_int_o_4__62_, data_int_o_4__61_, data_int_o_4__60_, data_int_o_4__59_, data_int_o_4__58_, data_int_o_4__57_, data_int_o_4__56_, data_int_o_4__55_, data_int_o_4__54_, data_int_o_4__53_, data_int_o_4__52_, data_int_o_4__51_, data_int_o_4__50_, data_int_o_4__49_, data_int_o_4__48_, data_int_o_4__47_, data_int_o_4__46_, data_int_o_4__45_, data_int_o_4__44_, data_int_o_4__43_, data_int_o_4__42_, data_int_o_4__41_, data_int_o_4__40_, data_int_o_4__39_, data_int_o_4__38_, data_int_o_4__37_, data_int_o_4__36_, data_int_o_4__35_, data_int_o_4__34_, data_int_o_4__33_, data_int_o_4__32_, data_int_o_4__31_, data_int_o_4__30_, data_int_o_4__29_, data_int_o_4__28_, data_int_o_4__27_, data_int_o_4__26_, data_int_o_4__25_, data_int_o_4__24_, data_int_o_4__23_, data_int_o_4__22_, data_int_o_4__21_, data_int_o_4__20_, data_int_o_4__19_, data_int_o_4__18_, data_int_o_4__17_, data_int_o_4__16_, data_int_o_4__15_, data_int_o_4__14_, data_int_o_4__13_, data_int_o_4__12_, data_int_o_4__11_, data_int_o_4__10_, data_int_o_4__9_, data_int_o_4__8_, data_int_o_4__7_, data_int_o_4__6_, data_int_o_4__5_, data_int_o_4__4_, data_int_o_4__3_, data_int_o_4__2_, data_int_o_4__1_, data_int_o_4__0_ })
  );

  assign N49 = ~in_top_channel_i[3];
  assign N50 = ~in_top_channel_i[0];
  assign N51 = in_top_channel_i[2] | N49;
  assign N52 = in_top_channel_i[1] | N51;
  assign N53 = N50 | N52;
  assign N54 = ~out_top_channel_i[2];
  assign N55 = out_top_channel_i[1] | N54;
  assign N56 = out_top_channel_i[0] | N55;
  assign N45 = N0 & N1 & N2;
  assign N0 = ~out_top_channel_i[2];
  assign N1 = ~out_top_channel_i[0];
  assign N2 = ~out_top_channel_i[1];
  assign N46 = out_top_channel_i[0] & N3;
  assign N3 = ~out_top_channel_i[1];
  assign N47 = N4 & out_top_channel_i[1];
  assign N4 = ~out_top_channel_i[0];
  assign N48 = out_top_channel_i[0] & out_top_channel_i[1];
  assign N35 = N5 & N6 & (N7 & N8);
  assign N5 = ~in_top_channel_i[3];
  assign N6 = ~in_top_channel_i[2];
  assign N7 = ~in_top_channel_i[0];
  assign N8 = ~in_top_channel_i[1];
  assign N36 = in_top_channel_i[3] & N9;
  assign N9 = ~in_top_channel_i[0];
  assign N37 = N10 & N11 & (in_top_channel_i[0] & N12);
  assign N10 = ~in_top_channel_i[3];
  assign N11 = ~in_top_channel_i[2];
  assign N12 = ~in_top_channel_i[1];
  assign N39 = N13 & N14 & in_top_channel_i[1];
  assign N13 = ~in_top_channel_i[2];
  assign N14 = ~in_top_channel_i[0];
  assign N40 = N15 & in_top_channel_i[0] & in_top_channel_i[1];
  assign N15 = ~in_top_channel_i[2];
  assign N41 = in_top_channel_i[2] & N16 & N17;
  assign N16 = ~in_top_channel_i[0];
  assign N17 = ~in_top_channel_i[1];
  assign N42 = in_top_channel_i[2] & in_top_channel_i[0] & N18;
  assign N18 = ~in_top_channel_i[1];
  assign N43 = in_top_channel_i[2] & N19 & in_top_channel_i[1];
  assign N19 = ~in_top_channel_i[0];
  assign N44 = in_top_channel_i[2] & in_top_channel_i[0] & in_top_channel_i[1];
  assign N38 = in_top_channel_i[3] & in_top_channel_i[0];
  assign valid_o[4] = (N20)? 1'b0 : 
                      (N21)? 1'b0 : 
                      (N22)? 1'b0 : 
                      (N23)? 1'b0 : 
                      (N24)? valid_int_o_4__4_ : 1'b0;
  assign N20 = N45;
  assign N21 = N46;
  assign N22 = N47;
  assign N23 = N48;
  assign N24 = out_top_channel_i[2];
  assign valid_o[3] = (N20)? 1'b0 : 
                      (N21)? 1'b0 : 
                      (N22)? 1'b0 : 
                      (N23)? 1'b0 : 
                      (N24)? valid_int_o_4__3_ : 1'b0;
  assign valid_o[2] = (N20)? 1'b0 : 
                      (N21)? 1'b0 : 
                      (N22)? 1'b0 : 
                      (N23)? 1'b0 : 
                      (N24)? valid_int_o_4__2_ : 1'b0;
  assign valid_o[1] = (N20)? 1'b0 : 
                      (N21)? 1'b0 : 
                      (N22)? 1'b0 : 
                      (N23)? 1'b0 : 
                      (N24)? valid_int_o_4__1_ : 1'b0;
  assign valid_o[0] = (N20)? 1'b0 : 
                      (N21)? 1'b0 : 
                      (N22)? 1'b0 : 
                      (N23)? 1'b0 : 
                      (N24)? valid_int_o_4__0_ : 1'b0;
  assign data_o_flat[79] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__79_ : 1'b0;
  assign data_o_flat[78] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__78_ : 1'b0;
  assign data_o_flat[77] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__77_ : 1'b0;
  assign data_o_flat[76] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__76_ : 1'b0;
  assign data_o_flat[75] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__75_ : 1'b0;
  assign data_o_flat[74] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__74_ : 1'b0;
  assign data_o_flat[73] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__73_ : 1'b0;
  assign data_o_flat[72] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__72_ : 1'b0;
  assign data_o_flat[71] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__71_ : 1'b0;
  assign data_o_flat[70] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__70_ : 1'b0;
  assign data_o_flat[69] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__69_ : 1'b0;
  assign data_o_flat[68] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__68_ : 1'b0;
  assign data_o_flat[67] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__67_ : 1'b0;
  assign data_o_flat[66] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__66_ : 1'b0;
  assign data_o_flat[65] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__65_ : 1'b0;
  assign data_o_flat[64] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__64_ : 1'b0;
  assign data_o_flat[63] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__63_ : 1'b0;
  assign data_o_flat[62] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__62_ : 1'b0;
  assign data_o_flat[61] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__61_ : 1'b0;
  assign data_o_flat[60] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__60_ : 1'b0;
  assign data_o_flat[59] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__59_ : 1'b0;
  assign data_o_flat[58] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__58_ : 1'b0;
  assign data_o_flat[57] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__57_ : 1'b0;
  assign data_o_flat[56] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__56_ : 1'b0;
  assign data_o_flat[55] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__55_ : 1'b0;
  assign data_o_flat[54] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__54_ : 1'b0;
  assign data_o_flat[53] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__53_ : 1'b0;
  assign data_o_flat[52] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__52_ : 1'b0;
  assign data_o_flat[51] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__51_ : 1'b0;
  assign data_o_flat[50] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__50_ : 1'b0;
  assign data_o_flat[49] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__49_ : 1'b0;
  assign data_o_flat[48] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__48_ : 1'b0;
  assign data_o_flat[47] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__47_ : 1'b0;
  assign data_o_flat[46] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__46_ : 1'b0;
  assign data_o_flat[45] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__45_ : 1'b0;
  assign data_o_flat[44] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__44_ : 1'b0;
  assign data_o_flat[43] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__43_ : 1'b0;
  assign data_o_flat[42] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__42_ : 1'b0;
  assign data_o_flat[41] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__41_ : 1'b0;
  assign data_o_flat[40] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__40_ : 1'b0;
  assign data_o_flat[39] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__39_ : 1'b0;
  assign data_o_flat[38] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__38_ : 1'b0;
  assign data_o_flat[37] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__37_ : 1'b0;
  assign data_o_flat[36] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__36_ : 1'b0;
  assign data_o_flat[35] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__35_ : 1'b0;
  assign data_o_flat[34] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__34_ : 1'b0;
  assign data_o_flat[33] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__33_ : 1'b0;
  assign data_o_flat[32] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__32_ : 1'b0;
  assign data_o_flat[31] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__31_ : 1'b0;
  assign data_o_flat[30] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__30_ : 1'b0;
  assign data_o_flat[29] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__29_ : 1'b0;
  assign data_o_flat[28] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__28_ : 1'b0;
  assign data_o_flat[27] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__27_ : 1'b0;
  assign data_o_flat[26] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__26_ : 1'b0;
  assign data_o_flat[25] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__25_ : 1'b0;
  assign data_o_flat[24] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__24_ : 1'b0;
  assign data_o_flat[23] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__23_ : 1'b0;
  assign data_o_flat[22] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__22_ : 1'b0;
  assign data_o_flat[21] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__21_ : 1'b0;
  assign data_o_flat[20] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__20_ : 1'b0;
  assign data_o_flat[19] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__19_ : 1'b0;
  assign data_o_flat[18] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__18_ : 1'b0;
  assign data_o_flat[17] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__17_ : 1'b0;
  assign data_o_flat[16] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__16_ : 1'b0;
  assign data_o_flat[15] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__15_ : 1'b0;
  assign data_o_flat[14] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__14_ : 1'b0;
  assign data_o_flat[13] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__13_ : 1'b0;
  assign data_o_flat[12] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__12_ : 1'b0;
  assign data_o_flat[11] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__11_ : 1'b0;
  assign data_o_flat[10] = (N20)? 1'b0 : 
                           (N21)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N24)? data_int_o_4__10_ : 1'b0;
  assign data_o_flat[9] = (N20)? 1'b0 : 
                          (N21)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N24)? data_int_o_4__9_ : 1'b0;
  assign data_o_flat[8] = (N20)? 1'b0 : 
                          (N21)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N24)? data_int_o_4__8_ : 1'b0;
  assign data_o_flat[7] = (N20)? 1'b0 : 
                          (N21)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N24)? data_int_o_4__7_ : 1'b0;
  assign data_o_flat[6] = (N20)? 1'b0 : 
                          (N21)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N24)? data_int_o_4__6_ : 1'b0;
  assign data_o_flat[5] = (N20)? 1'b0 : 
                          (N21)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N24)? data_int_o_4__5_ : 1'b0;
  assign data_o_flat[4] = (N20)? 1'b0 : 
                          (N21)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N24)? data_int_o_4__4_ : 1'b0;
  assign data_o_flat[3] = (N20)? 1'b0 : 
                          (N21)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N24)? data_int_o_4__3_ : 1'b0;
  assign data_o_flat[2] = (N20)? 1'b0 : 
                          (N21)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N24)? data_int_o_4__2_ : 1'b0;
  assign data_o_flat[1] = (N20)? 1'b0 : 
                          (N21)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N24)? data_int_o_4__1_ : 1'b0;
  assign data_o_flat[0] = (N20)? 1'b0 : 
                          (N21)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N24)? data_int_o_4__0_ : 1'b0;
  assign _3_net__4_ = (N20)? 1'b0 : 
                      (N21)? 1'b0 : 
                      (N22)? 1'b0 : 
                      (N23)? 1'b0 : 
                      (N24)? ready_head_4__4_ : 1'b0;
  assign _3_net__3_ = (N20)? 1'b0 : 
                      (N21)? 1'b0 : 
                      (N22)? 1'b0 : 
                      (N23)? 1'b0 : 
                      (N24)? ready_head_4__3_ : 1'b0;
  assign _3_net__2_ = (N20)? 1'b0 : 
                      (N21)? 1'b0 : 
                      (N22)? 1'b0 : 
                      (N23)? 1'b0 : 
                      (N24)? ready_head_4__2_ : 1'b0;
  assign _3_net__1_ = (N20)? 1'b0 : 
                      (N21)? 1'b0 : 
                      (N22)? 1'b0 : 
                      (N23)? 1'b0 : 
                      (N24)? ready_head_4__1_ : 1'b0;
  assign _3_net__0_ = (N20)? 1'b0 : 
                      (N21)? 1'b0 : 
                      (N22)? 1'b0 : 
                      (N23)? 1'b0 : 
                      (N24)? ready_head_4__0_ : 1'b0;
  assign yumi_o[9] = (N25)? 1'b0 : 
                     (N26)? 1'b0 : 
                     (N27)? 1'b0 : 
                     (N28)? 1'b0 : 
                     (N29)? 1'b0 : 
                     (N30)? 1'b0 : 
                     (N31)? 1'b0 : 
                     (N32)? 1'b0 : 
                     (N33)? 1'b0 : 
                     (N34)? yumi_int_o_9__9_ : 1'b0;
  assign N25 = N35;
  assign N26 = N37;
  assign N27 = N39;
  assign N28 = N40;
  assign N29 = N41;
  assign N30 = N42;
  assign N31 = N43;
  assign N32 = N44;
  assign N33 = N36;
  assign N34 = N38;
  assign yumi_o[8] = (N25)? 1'b0 : 
                     (N26)? 1'b0 : 
                     (N27)? 1'b0 : 
                     (N28)? 1'b0 : 
                     (N29)? 1'b0 : 
                     (N30)? 1'b0 : 
                     (N31)? 1'b0 : 
                     (N32)? 1'b0 : 
                     (N33)? 1'b0 : 
                     (N34)? yumi_int_o_9__8_ : 1'b0;
  assign yumi_o[7] = (N25)? 1'b0 : 
                     (N26)? 1'b0 : 
                     (N27)? 1'b0 : 
                     (N28)? 1'b0 : 
                     (N29)? 1'b0 : 
                     (N30)? 1'b0 : 
                     (N31)? 1'b0 : 
                     (N32)? 1'b0 : 
                     (N33)? 1'b0 : 
                     (N34)? yumi_int_o_9__7_ : 1'b0;
  assign yumi_o[6] = (N25)? 1'b0 : 
                     (N26)? 1'b0 : 
                     (N27)? 1'b0 : 
                     (N28)? 1'b0 : 
                     (N29)? 1'b0 : 
                     (N30)? 1'b0 : 
                     (N31)? 1'b0 : 
                     (N32)? 1'b0 : 
                     (N33)? 1'b0 : 
                     (N34)? yumi_int_o_9__6_ : 1'b0;
  assign yumi_o[5] = (N25)? 1'b0 : 
                     (N26)? 1'b0 : 
                     (N27)? 1'b0 : 
                     (N28)? 1'b0 : 
                     (N29)? 1'b0 : 
                     (N30)? 1'b0 : 
                     (N31)? 1'b0 : 
                     (N32)? 1'b0 : 
                     (N33)? 1'b0 : 
                     (N34)? yumi_int_o_9__5_ : 1'b0;
  assign yumi_o[4] = (N25)? 1'b0 : 
                     (N26)? 1'b0 : 
                     (N27)? 1'b0 : 
                     (N28)? 1'b0 : 
                     (N29)? 1'b0 : 
                     (N30)? 1'b0 : 
                     (N31)? 1'b0 : 
                     (N32)? 1'b0 : 
                     (N33)? 1'b0 : 
                     (N34)? yumi_int_o_9__4_ : 1'b0;
  assign yumi_o[3] = (N25)? 1'b0 : 
                     (N26)? 1'b0 : 
                     (N27)? 1'b0 : 
                     (N28)? 1'b0 : 
                     (N29)? 1'b0 : 
                     (N30)? 1'b0 : 
                     (N31)? 1'b0 : 
                     (N32)? 1'b0 : 
                     (N33)? 1'b0 : 
                     (N34)? yumi_int_o_9__3_ : 1'b0;
  assign yumi_o[2] = (N25)? 1'b0 : 
                     (N26)? 1'b0 : 
                     (N27)? 1'b0 : 
                     (N28)? 1'b0 : 
                     (N29)? 1'b0 : 
                     (N30)? 1'b0 : 
                     (N31)? 1'b0 : 
                     (N32)? 1'b0 : 
                     (N33)? 1'b0 : 
                     (N34)? yumi_int_o_9__2_ : 1'b0;
  assign yumi_o[1] = (N25)? 1'b0 : 
                     (N26)? 1'b0 : 
                     (N27)? 1'b0 : 
                     (N28)? 1'b0 : 
                     (N29)? 1'b0 : 
                     (N30)? 1'b0 : 
                     (N31)? 1'b0 : 
                     (N32)? 1'b0 : 
                     (N33)? 1'b0 : 
                     (N34)? yumi_int_o_9__1_ : 1'b0;
  assign yumi_o[0] = (N25)? 1'b0 : 
                     (N26)? 1'b0 : 
                     (N27)? 1'b0 : 
                     (N28)? 1'b0 : 
                     (N29)? 1'b0 : 
                     (N30)? 1'b0 : 
                     (N31)? 1'b0 : 
                     (N32)? 1'b0 : 
                     (N33)? 1'b0 : 
                     (N34)? yumi_int_o_9__0_ : 1'b0;
  assign _2_net__4_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? valid_head_9__4_ : 1'b0;
  assign _2_net__3_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? valid_head_9__3_ : 1'b0;
  assign _2_net__2_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? valid_head_9__2_ : 1'b0;
  assign _2_net__1_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? valid_head_9__1_ : 1'b0;
  assign _2_net__0_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? valid_head_9__0_ : 1'b0;
  assign _4_net__79_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__79_ : 1'b0;
  assign _4_net__78_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__78_ : 1'b0;
  assign _4_net__77_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__77_ : 1'b0;
  assign _4_net__76_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__76_ : 1'b0;
  assign _4_net__75_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__75_ : 1'b0;
  assign _4_net__74_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__74_ : 1'b0;
  assign _4_net__73_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__73_ : 1'b0;
  assign _4_net__72_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__72_ : 1'b0;
  assign _4_net__71_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__71_ : 1'b0;
  assign _4_net__70_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__70_ : 1'b0;
  assign _4_net__69_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__69_ : 1'b0;
  assign _4_net__68_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__68_ : 1'b0;
  assign _4_net__67_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__67_ : 1'b0;
  assign _4_net__66_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__66_ : 1'b0;
  assign _4_net__65_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__65_ : 1'b0;
  assign _4_net__64_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__64_ : 1'b0;
  assign _4_net__63_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__63_ : 1'b0;
  assign _4_net__62_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__62_ : 1'b0;
  assign _4_net__61_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__61_ : 1'b0;
  assign _4_net__60_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__60_ : 1'b0;
  assign _4_net__59_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__59_ : 1'b0;
  assign _4_net__58_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__58_ : 1'b0;
  assign _4_net__57_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__57_ : 1'b0;
  assign _4_net__56_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__56_ : 1'b0;
  assign _4_net__55_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__55_ : 1'b0;
  assign _4_net__54_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__54_ : 1'b0;
  assign _4_net__53_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__53_ : 1'b0;
  assign _4_net__52_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__52_ : 1'b0;
  assign _4_net__51_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__51_ : 1'b0;
  assign _4_net__50_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__50_ : 1'b0;
  assign _4_net__49_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__49_ : 1'b0;
  assign _4_net__48_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__48_ : 1'b0;
  assign _4_net__47_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__47_ : 1'b0;
  assign _4_net__46_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__46_ : 1'b0;
  assign _4_net__45_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__45_ : 1'b0;
  assign _4_net__44_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__44_ : 1'b0;
  assign _4_net__43_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__43_ : 1'b0;
  assign _4_net__42_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__42_ : 1'b0;
  assign _4_net__41_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__41_ : 1'b0;
  assign _4_net__40_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__40_ : 1'b0;
  assign _4_net__39_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__39_ : 1'b0;
  assign _4_net__38_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__38_ : 1'b0;
  assign _4_net__37_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__37_ : 1'b0;
  assign _4_net__36_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__36_ : 1'b0;
  assign _4_net__35_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__35_ : 1'b0;
  assign _4_net__34_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__34_ : 1'b0;
  assign _4_net__33_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__33_ : 1'b0;
  assign _4_net__32_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__32_ : 1'b0;
  assign _4_net__31_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__31_ : 1'b0;
  assign _4_net__30_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__30_ : 1'b0;
  assign _4_net__29_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__29_ : 1'b0;
  assign _4_net__28_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__28_ : 1'b0;
  assign _4_net__27_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__27_ : 1'b0;
  assign _4_net__26_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__26_ : 1'b0;
  assign _4_net__25_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__25_ : 1'b0;
  assign _4_net__24_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__24_ : 1'b0;
  assign _4_net__23_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__23_ : 1'b0;
  assign _4_net__22_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__22_ : 1'b0;
  assign _4_net__21_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__21_ : 1'b0;
  assign _4_net__20_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__20_ : 1'b0;
  assign _4_net__19_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__19_ : 1'b0;
  assign _4_net__18_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__18_ : 1'b0;
  assign _4_net__17_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__17_ : 1'b0;
  assign _4_net__16_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__16_ : 1'b0;
  assign _4_net__15_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__15_ : 1'b0;
  assign _4_net__14_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__14_ : 1'b0;
  assign _4_net__13_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__13_ : 1'b0;
  assign _4_net__12_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__12_ : 1'b0;
  assign _4_net__11_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__11_ : 1'b0;
  assign _4_net__10_ = (N25)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N28)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N34)? data_head_9__10_ : 1'b0;
  assign _4_net__9_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? data_head_9__9_ : 1'b0;
  assign _4_net__8_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? data_head_9__8_ : 1'b0;
  assign _4_net__7_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? data_head_9__7_ : 1'b0;
  assign _4_net__6_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? data_head_9__6_ : 1'b0;
  assign _4_net__5_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? data_head_9__5_ : 1'b0;
  assign _4_net__4_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? data_head_9__4_ : 1'b0;
  assign _4_net__3_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? data_head_9__3_ : 1'b0;
  assign _4_net__2_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? data_head_9__2_ : 1'b0;
  assign _4_net__1_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? data_head_9__1_ : 1'b0;
  assign _4_net__0_ = (N25)? 1'b0 : 
                      (N26)? 1'b0 : 
                      (N27)? 1'b0 : 
                      (N28)? 1'b0 : 
                      (N29)? 1'b0 : 
                      (N30)? 1'b0 : 
                      (N31)? 1'b0 : 
                      (N32)? 1'b0 : 
                      (N33)? 1'b0 : 
                      (N34)? data_head_9__0_ : 1'b0;
  assign _0_net_ = reset | N53;
  assign _5_net_ = reset | N56;

endmodule



module bsg_mem_1r1w_synth_width_p16_els_p2_read_write_same_addr_p0_harden_p0
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
  input [15:0] w_data_i;
  input [0:0] r_addr_i;
  output [15:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [15:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  wire [31:0] mem;
  reg mem_31_sv2v_reg,mem_30_sv2v_reg,mem_29_sv2v_reg,mem_28_sv2v_reg,mem_27_sv2v_reg,
  mem_26_sv2v_reg,mem_25_sv2v_reg,mem_24_sv2v_reg,mem_23_sv2v_reg,mem_22_sv2v_reg,
  mem_21_sv2v_reg,mem_20_sv2v_reg,mem_19_sv2v_reg,mem_18_sv2v_reg,mem_17_sv2v_reg,
  mem_16_sv2v_reg,mem_15_sv2v_reg,mem_14_sv2v_reg,mem_13_sv2v_reg,mem_12_sv2v_reg,
  mem_11_sv2v_reg,mem_10_sv2v_reg,mem_9_sv2v_reg,mem_8_sv2v_reg,mem_7_sv2v_reg,
  mem_6_sv2v_reg,mem_5_sv2v_reg,mem_4_sv2v_reg,mem_3_sv2v_reg,mem_2_sv2v_reg,
  mem_1_sv2v_reg,mem_0_sv2v_reg;
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
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[31] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[30] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[29] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[28] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[27] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[26] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[25] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[24] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[23] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[22] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[21] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[20] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[19] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[18] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[17] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[16] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_31_sv2v_reg <= w_data_i[15];
      mem_30_sv2v_reg <= w_data_i[14];
      mem_29_sv2v_reg <= w_data_i[13];
      mem_28_sv2v_reg <= w_data_i[12];
      mem_27_sv2v_reg <= w_data_i[11];
      mem_26_sv2v_reg <= w_data_i[10];
      mem_25_sv2v_reg <= w_data_i[9];
      mem_24_sv2v_reg <= w_data_i[8];
      mem_23_sv2v_reg <= w_data_i[7];
      mem_22_sv2v_reg <= w_data_i[6];
      mem_21_sv2v_reg <= w_data_i[5];
      mem_20_sv2v_reg <= w_data_i[4];
      mem_19_sv2v_reg <= w_data_i[3];
      mem_18_sv2v_reg <= w_data_i[2];
      mem_17_sv2v_reg <= w_data_i[1];
      mem_16_sv2v_reg <= w_data_i[0];
    end 
    if(N7) begin
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



module bsg_mem_1r1w_width_p16_els_p2_read_write_same_addr_p0
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
  input [15:0] w_data_i;
  input [0:0] r_addr_i;
  output [15:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [15:0] r_data_o;

  bsg_mem_1r1w_synth_width_p16_els_p2_read_write_same_addr_p0_harden_p0
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



module bsg_two_fifo_width_p16
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

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [15:0] data_o;
  wire ready_o,v_o,enq_i,tail_r,_0_net_,head_r,empty_r,full_r,N0,N1,N2,N3,N4,N5,N6,N7,
  N8,N9,N10,N11,N12,N13,N14;
  reg full_r_sv2v_reg,tail_r_sv2v_reg,head_r_sv2v_reg,empty_r_sv2v_reg;
  assign full_r = full_r_sv2v_reg;
  assign tail_r = tail_r_sv2v_reg;
  assign head_r = head_r_sv2v_reg;
  assign empty_r = empty_r_sv2v_reg;

  bsg_mem_1r1w_width_p16_els_p2_read_write_same_addr_p0
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



module bsg_assembler_in
(
  clk,
  reset,
  calibration_done_i,
  valid_i,
  data_i,
  yumi_o,
  in_top_channel_i,
  out_top_channel_i,
  valid_o,
  data_o,
  yumi_i
);

  input [9:0] valid_i;
  input [159:0] data_i;
  output [9:0] yumi_o;
  input [3:0] in_top_channel_i;
  input [2:0] out_top_channel_i;
  output [79:0] data_o;
  input clk;
  input reset;
  input calibration_done_i;
  input yumi_i;
  output valid_o;
  wire [9:0] yumi_o;
  wire [79:0] data_o,fifo_data_vec;
  wire valid_o,_0_net__9_,_0_net__8_,_0_net__7_,_0_net__6_,_0_net__5_,_0_net__4_,
  _0_net__3_,_0_net__2_,_0_net__1_,_0_net__0_,N0,N1,N2,N3;
  wire [4:0] fifo_enq_vec,fifo_not_full_vec,fifo_valid_vec;

  bsg_round_robin_fifo_to_fifo_width_p16_num_in_p10_num_out_p5_in_channel_count_mask_p512
  rr_fifo_to_fifo
  (
    .clk(clk),
    .reset(reset),
    .valid_i({ _0_net__9_, _0_net__8_, _0_net__7_, _0_net__6_, _0_net__5_, _0_net__4_, _0_net__3_, _0_net__2_, _0_net__1_, _0_net__0_ }),
    .data_i(data_i),
    .yumi_o(yumi_o),
    .in_top_channel_i(in_top_channel_i),
    .out_top_channel_i(out_top_channel_i),
    .valid_o(fifo_enq_vec),
    .data_o(fifo_data_vec),
    .ready_i(fifo_not_full_vec)
  );


  bsg_two_fifo_width_p16
  \fifos_0_.ring_packet_fifo 
  (
    .clk_i(clk),
    .reset_i(reset),
    .ready_o(fifo_not_full_vec[0]),
    .data_i(fifo_data_vec[15:0]),
    .v_i(fifo_enq_vec[0]),
    .v_o(fifo_valid_vec[0]),
    .data_o(data_o[15:0]),
    .yumi_i(yumi_i)
  );


  bsg_two_fifo_width_p16
  \fifos_1_.ring_packet_fifo 
  (
    .clk_i(clk),
    .reset_i(reset),
    .ready_o(fifo_not_full_vec[1]),
    .data_i(fifo_data_vec[31:16]),
    .v_i(fifo_enq_vec[1]),
    .v_o(fifo_valid_vec[1]),
    .data_o(data_o[31:16]),
    .yumi_i(yumi_i)
  );


  bsg_two_fifo_width_p16
  \fifos_2_.ring_packet_fifo 
  (
    .clk_i(clk),
    .reset_i(reset),
    .ready_o(fifo_not_full_vec[2]),
    .data_i(fifo_data_vec[47:32]),
    .v_i(fifo_enq_vec[2]),
    .v_o(fifo_valid_vec[2]),
    .data_o(data_o[47:32]),
    .yumi_i(yumi_i)
  );


  bsg_two_fifo_width_p16
  \fifos_3_.ring_packet_fifo 
  (
    .clk_i(clk),
    .reset_i(reset),
    .ready_o(fifo_not_full_vec[3]),
    .data_i(fifo_data_vec[63:48]),
    .v_i(fifo_enq_vec[3]),
    .v_o(fifo_valid_vec[3]),
    .data_o(data_o[63:48]),
    .yumi_i(yumi_i)
  );


  bsg_two_fifo_width_p16
  \fifos_4_.ring_packet_fifo 
  (
    .clk_i(clk),
    .reset_i(reset),
    .ready_o(fifo_not_full_vec[4]),
    .data_i(fifo_data_vec[79:64]),
    .v_i(fifo_enq_vec[4]),
    .v_o(fifo_valid_vec[4]),
    .data_o(data_o[79:64]),
    .yumi_i(yumi_i)
  );

  assign _0_net__9_ = valid_i[9] & calibration_done_i;
  assign _0_net__8_ = valid_i[8] & calibration_done_i;
  assign _0_net__7_ = valid_i[7] & calibration_done_i;
  assign _0_net__6_ = valid_i[6] & calibration_done_i;
  assign _0_net__5_ = valid_i[5] & calibration_done_i;
  assign _0_net__4_ = valid_i[4] & calibration_done_i;
  assign _0_net__3_ = valid_i[3] & calibration_done_i;
  assign _0_net__2_ = valid_i[2] & calibration_done_i;
  assign _0_net__1_ = valid_i[1] & calibration_done_i;
  assign _0_net__0_ = valid_i[0] & calibration_done_i;
  assign valid_o = N3 & calibration_done_i;
  assign N3 = N2 & fifo_valid_vec[0];
  assign N2 = N1 & fifo_valid_vec[1];
  assign N1 = N0 & fifo_valid_vec[2];
  assign N0 = fifo_valid_vec[4] & fifo_valid_vec[3];

endmodule

