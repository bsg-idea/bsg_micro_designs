

module top
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

  input [7:0] valid_i;
  input [255:0] data_i;
  output [7:0] yumi_o;
  input [2:0] in_top_channel_i;
  input [1:0] out_top_channel_i;
  output [3:0] valid_o;
  output [127:0] data_o;
  input [3:0] ready_i;
  input clk;
  input reset;

  bsg_round_robin_fifo_to_fifo
  wrapper
  (
    .valid_i(valid_i),
    .data_i(data_i),
    .yumi_o(yumi_o),
    .in_top_channel_i(in_top_channel_i),
    .out_top_channel_i(out_top_channel_i),
    .valid_o(valid_o),
    .data_o(data_o),
    .ready_i(ready_i),
    .clk(clk),
    .reset(reset)
  );


endmodule



module bsg_make_2D_array_width_p32_items_p4
(
  i,
  o
);

  input [127:0] i;
  output [127:0] o;
  wire [127:0] o;
  assign o[127] = i[127];
  assign o[126] = i[126];
  assign o[125] = i[125];
  assign o[124] = i[124];
  assign o[123] = i[123];
  assign o[122] = i[122];
  assign o[121] = i[121];
  assign o[120] = i[120];
  assign o[119] = i[119];
  assign o[118] = i[118];
  assign o[117] = i[117];
  assign o[116] = i[116];
  assign o[115] = i[115];
  assign o[114] = i[114];
  assign o[113] = i[113];
  assign o[112] = i[112];
  assign o[111] = i[111];
  assign o[110] = i[110];
  assign o[109] = i[109];
  assign o[108] = i[108];
  assign o[107] = i[107];
  assign o[106] = i[106];
  assign o[105] = i[105];
  assign o[104] = i[104];
  assign o[103] = i[103];
  assign o[102] = i[102];
  assign o[101] = i[101];
  assign o[100] = i[100];
  assign o[99] = i[99];
  assign o[98] = i[98];
  assign o[97] = i[97];
  assign o[96] = i[96];
  assign o[95] = i[95];
  assign o[94] = i[94];
  assign o[93] = i[93];
  assign o[92] = i[92];
  assign o[91] = i[91];
  assign o[90] = i[90];
  assign o[89] = i[89];
  assign o[88] = i[88];
  assign o[87] = i[87];
  assign o[86] = i[86];
  assign o[85] = i[85];
  assign o[84] = i[84];
  assign o[83] = i[83];
  assign o[82] = i[82];
  assign o[81] = i[81];
  assign o[80] = i[80];
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



module bsg_rotate_right_width_p8
(
  data_i,
  rot_i,
  o
);

  input [7:0] data_i;
  input [2:0] rot_i;
  output [7:0] o;
  wire [7:0] o;
  wire SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,
  SYNOPSYS_UNCONNECTED_4,SYNOPSYS_UNCONNECTED_5,SYNOPSYS_UNCONNECTED_6,
  SYNOPSYS_UNCONNECTED_7;
  assign { SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, o } = { data_i[6:0], data_i } >> rot_i;

endmodule



module bsg_circular_ptr_slots_p8_max_add_p4
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
  wire [2:0] n_o;
  wire N0,N1,N2,N3,N4,N5;
  reg [2:0] o;
  assign n_o = o + add_i;
  assign { N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                          (N1)? n_o : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

  always @(posedge clk) begin
    if(1'b1) begin
      { o[2:0] } <= { N5, N4, N3 };
    end 
  end


endmodule



module bsg_rr_f2f_input_width_p32_num_in_p8_middle_meet_p4
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

  input [7:0] valid_i;
  input [255:0] data_i;
  output [127:0] data_head_o;
  output [3:0] valid_head_o;
  input [3:0] go_channels_i;
  input [2:0] go_cnt_i;
  output [7:0] yumi_o;
  input clk;
  input reset;
  wire [127:0] data_head_o,data_head_o_flat_pretrunc;
  wire [3:0] valid_head_o;
  wire [7:0] yumi_o;
  wire SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,
  SYNOPSYS_UNCONNECTED_4,SYNOPSYS_UNCONNECTED_5,SYNOPSYS_UNCONNECTED_6,
  SYNOPSYS_UNCONNECTED_7,SYNOPSYS_UNCONNECTED_8,SYNOPSYS_UNCONNECTED_9,SYNOPSYS_UNCONNECTED_10,
  SYNOPSYS_UNCONNECTED_11,SYNOPSYS_UNCONNECTED_12,SYNOPSYS_UNCONNECTED_13,
  SYNOPSYS_UNCONNECTED_14,SYNOPSYS_UNCONNECTED_15,SYNOPSYS_UNCONNECTED_16,SYNOPSYS_UNCONNECTED_17,
  SYNOPSYS_UNCONNECTED_18,SYNOPSYS_UNCONNECTED_19,SYNOPSYS_UNCONNECTED_20,
  SYNOPSYS_UNCONNECTED_21,SYNOPSYS_UNCONNECTED_22,SYNOPSYS_UNCONNECTED_23,
  SYNOPSYS_UNCONNECTED_24,SYNOPSYS_UNCONNECTED_25,SYNOPSYS_UNCONNECTED_26,SYNOPSYS_UNCONNECTED_27,
  SYNOPSYS_UNCONNECTED_28,SYNOPSYS_UNCONNECTED_29,SYNOPSYS_UNCONNECTED_30,
  SYNOPSYS_UNCONNECTED_31,SYNOPSYS_UNCONNECTED_32,SYNOPSYS_UNCONNECTED_33,
  SYNOPSYS_UNCONNECTED_34,SYNOPSYS_UNCONNECTED_35,SYNOPSYS_UNCONNECTED_36,SYNOPSYS_UNCONNECTED_37,
  SYNOPSYS_UNCONNECTED_38,SYNOPSYS_UNCONNECTED_39,SYNOPSYS_UNCONNECTED_40,
  SYNOPSYS_UNCONNECTED_41,SYNOPSYS_UNCONNECTED_42,SYNOPSYS_UNCONNECTED_43,
  SYNOPSYS_UNCONNECTED_44,SYNOPSYS_UNCONNECTED_45,SYNOPSYS_UNCONNECTED_46,SYNOPSYS_UNCONNECTED_47,
  SYNOPSYS_UNCONNECTED_48,SYNOPSYS_UNCONNECTED_49,SYNOPSYS_UNCONNECTED_50,
  SYNOPSYS_UNCONNECTED_51,SYNOPSYS_UNCONNECTED_52,SYNOPSYS_UNCONNECTED_53,
  SYNOPSYS_UNCONNECTED_54,SYNOPSYS_UNCONNECTED_55,SYNOPSYS_UNCONNECTED_56,SYNOPSYS_UNCONNECTED_57,
  SYNOPSYS_UNCONNECTED_58,SYNOPSYS_UNCONNECTED_59,SYNOPSYS_UNCONNECTED_60,
  SYNOPSYS_UNCONNECTED_61,SYNOPSYS_UNCONNECTED_62,SYNOPSYS_UNCONNECTED_63,
  SYNOPSYS_UNCONNECTED_64,SYNOPSYS_UNCONNECTED_65,SYNOPSYS_UNCONNECTED_66,SYNOPSYS_UNCONNECTED_67,
  SYNOPSYS_UNCONNECTED_68,SYNOPSYS_UNCONNECTED_69,SYNOPSYS_UNCONNECTED_70,
  SYNOPSYS_UNCONNECTED_71,SYNOPSYS_UNCONNECTED_72,SYNOPSYS_UNCONNECTED_73,
  SYNOPSYS_UNCONNECTED_74,SYNOPSYS_UNCONNECTED_75,SYNOPSYS_UNCONNECTED_76,SYNOPSYS_UNCONNECTED_77,
  SYNOPSYS_UNCONNECTED_78,SYNOPSYS_UNCONNECTED_79,SYNOPSYS_UNCONNECTED_80,
  SYNOPSYS_UNCONNECTED_81,SYNOPSYS_UNCONNECTED_82,SYNOPSYS_UNCONNECTED_83,
  SYNOPSYS_UNCONNECTED_84,SYNOPSYS_UNCONNECTED_85,SYNOPSYS_UNCONNECTED_86,SYNOPSYS_UNCONNECTED_87,
  SYNOPSYS_UNCONNECTED_88,SYNOPSYS_UNCONNECTED_89,SYNOPSYS_UNCONNECTED_90,
  SYNOPSYS_UNCONNECTED_91,SYNOPSYS_UNCONNECTED_92,SYNOPSYS_UNCONNECTED_93,
  SYNOPSYS_UNCONNECTED_94,SYNOPSYS_UNCONNECTED_95,SYNOPSYS_UNCONNECTED_96,SYNOPSYS_UNCONNECTED_97,
  SYNOPSYS_UNCONNECTED_98,SYNOPSYS_UNCONNECTED_99,SYNOPSYS_UNCONNECTED_100,
  SYNOPSYS_UNCONNECTED_101,SYNOPSYS_UNCONNECTED_102,SYNOPSYS_UNCONNECTED_103,
  SYNOPSYS_UNCONNECTED_104,SYNOPSYS_UNCONNECTED_105,SYNOPSYS_UNCONNECTED_106,
  SYNOPSYS_UNCONNECTED_107,SYNOPSYS_UNCONNECTED_108,SYNOPSYS_UNCONNECTED_109,
  SYNOPSYS_UNCONNECTED_110,SYNOPSYS_UNCONNECTED_111,SYNOPSYS_UNCONNECTED_112,SYNOPSYS_UNCONNECTED_113,
  SYNOPSYS_UNCONNECTED_114,SYNOPSYS_UNCONNECTED_115,SYNOPSYS_UNCONNECTED_116,
  SYNOPSYS_UNCONNECTED_117,SYNOPSYS_UNCONNECTED_118,SYNOPSYS_UNCONNECTED_119,
  SYNOPSYS_UNCONNECTED_120,SYNOPSYS_UNCONNECTED_121,SYNOPSYS_UNCONNECTED_122,
  SYNOPSYS_UNCONNECTED_123,SYNOPSYS_UNCONNECTED_124,SYNOPSYS_UNCONNECTED_125,
  SYNOPSYS_UNCONNECTED_126,SYNOPSYS_UNCONNECTED_127,SYNOPSYS_UNCONNECTED_128,SYNOPSYS_UNCONNECTED_129,
  SYNOPSYS_UNCONNECTED_130,SYNOPSYS_UNCONNECTED_131,SYNOPSYS_UNCONNECTED_132,
  SYNOPSYS_UNCONNECTED_133,SYNOPSYS_UNCONNECTED_134,SYNOPSYS_UNCONNECTED_135,
  SYNOPSYS_UNCONNECTED_136,SYNOPSYS_UNCONNECTED_137,SYNOPSYS_UNCONNECTED_138,
  SYNOPSYS_UNCONNECTED_139,SYNOPSYS_UNCONNECTED_140,SYNOPSYS_UNCONNECTED_141,
  SYNOPSYS_UNCONNECTED_142,SYNOPSYS_UNCONNECTED_143,SYNOPSYS_UNCONNECTED_144,SYNOPSYS_UNCONNECTED_145,
  SYNOPSYS_UNCONNECTED_146,SYNOPSYS_UNCONNECTED_147,SYNOPSYS_UNCONNECTED_148,
  SYNOPSYS_UNCONNECTED_149,SYNOPSYS_UNCONNECTED_150,SYNOPSYS_UNCONNECTED_151,
  SYNOPSYS_UNCONNECTED_152,SYNOPSYS_UNCONNECTED_153,SYNOPSYS_UNCONNECTED_154,
  SYNOPSYS_UNCONNECTED_155,SYNOPSYS_UNCONNECTED_156,SYNOPSYS_UNCONNECTED_157,
  SYNOPSYS_UNCONNECTED_158,SYNOPSYS_UNCONNECTED_159,SYNOPSYS_UNCONNECTED_160,SYNOPSYS_UNCONNECTED_161,
  SYNOPSYS_UNCONNECTED_162,SYNOPSYS_UNCONNECTED_163,SYNOPSYS_UNCONNECTED_164,
  SYNOPSYS_UNCONNECTED_165,SYNOPSYS_UNCONNECTED_166,SYNOPSYS_UNCONNECTED_167,
  SYNOPSYS_UNCONNECTED_168,SYNOPSYS_UNCONNECTED_169,SYNOPSYS_UNCONNECTED_170,
  SYNOPSYS_UNCONNECTED_171,SYNOPSYS_UNCONNECTED_172,SYNOPSYS_UNCONNECTED_173,
  SYNOPSYS_UNCONNECTED_174,SYNOPSYS_UNCONNECTED_175,SYNOPSYS_UNCONNECTED_176,SYNOPSYS_UNCONNECTED_177,
  SYNOPSYS_UNCONNECTED_178,SYNOPSYS_UNCONNECTED_179,SYNOPSYS_UNCONNECTED_180,
  SYNOPSYS_UNCONNECTED_181,SYNOPSYS_UNCONNECTED_182,SYNOPSYS_UNCONNECTED_183,
  SYNOPSYS_UNCONNECTED_184,SYNOPSYS_UNCONNECTED_185,SYNOPSYS_UNCONNECTED_186,
  SYNOPSYS_UNCONNECTED_187,SYNOPSYS_UNCONNECTED_188,SYNOPSYS_UNCONNECTED_189,
  SYNOPSYS_UNCONNECTED_190,SYNOPSYS_UNCONNECTED_191,SYNOPSYS_UNCONNECTED_192,SYNOPSYS_UNCONNECTED_193,
  SYNOPSYS_UNCONNECTED_194,SYNOPSYS_UNCONNECTED_195,SYNOPSYS_UNCONNECTED_196,
  SYNOPSYS_UNCONNECTED_197,SYNOPSYS_UNCONNECTED_198,SYNOPSYS_UNCONNECTED_199,
  SYNOPSYS_UNCONNECTED_200,SYNOPSYS_UNCONNECTED_201,SYNOPSYS_UNCONNECTED_202,
  SYNOPSYS_UNCONNECTED_203,SYNOPSYS_UNCONNECTED_204,SYNOPSYS_UNCONNECTED_205,
  SYNOPSYS_UNCONNECTED_206,SYNOPSYS_UNCONNECTED_207,SYNOPSYS_UNCONNECTED_208,SYNOPSYS_UNCONNECTED_209,
  SYNOPSYS_UNCONNECTED_210,SYNOPSYS_UNCONNECTED_211,SYNOPSYS_UNCONNECTED_212,
  SYNOPSYS_UNCONNECTED_213,SYNOPSYS_UNCONNECTED_214,SYNOPSYS_UNCONNECTED_215,
  SYNOPSYS_UNCONNECTED_216,SYNOPSYS_UNCONNECTED_217,SYNOPSYS_UNCONNECTED_218,
  SYNOPSYS_UNCONNECTED_219,SYNOPSYS_UNCONNECTED_220,SYNOPSYS_UNCONNECTED_221,
  SYNOPSYS_UNCONNECTED_222,SYNOPSYS_UNCONNECTED_223,SYNOPSYS_UNCONNECTED_224,SYNOPSYS_UNCONNECTED_225,
  SYNOPSYS_UNCONNECTED_226,SYNOPSYS_UNCONNECTED_227,SYNOPSYS_UNCONNECTED_228,
  SYNOPSYS_UNCONNECTED_229,SYNOPSYS_UNCONNECTED_230,SYNOPSYS_UNCONNECTED_231,
  SYNOPSYS_UNCONNECTED_232,SYNOPSYS_UNCONNECTED_233,SYNOPSYS_UNCONNECTED_234,
  SYNOPSYS_UNCONNECTED_235,SYNOPSYS_UNCONNECTED_236,SYNOPSYS_UNCONNECTED_237,
  SYNOPSYS_UNCONNECTED_238,SYNOPSYS_UNCONNECTED_239,SYNOPSYS_UNCONNECTED_240,SYNOPSYS_UNCONNECTED_241,
  SYNOPSYS_UNCONNECTED_242,SYNOPSYS_UNCONNECTED_243,SYNOPSYS_UNCONNECTED_244,
  SYNOPSYS_UNCONNECTED_245,SYNOPSYS_UNCONNECTED_246,SYNOPSYS_UNCONNECTED_247,
  SYNOPSYS_UNCONNECTED_248,SYNOPSYS_UNCONNECTED_249,SYNOPSYS_UNCONNECTED_250,
  SYNOPSYS_UNCONNECTED_251,SYNOPSYS_UNCONNECTED_252,SYNOPSYS_UNCONNECTED_253,
  SYNOPSYS_UNCONNECTED_254,SYNOPSYS_UNCONNECTED_255,SYNOPSYS_UNCONNECTED_256,SYNOPSYS_UNCONNECTED_257,
  SYNOPSYS_UNCONNECTED_258,SYNOPSYS_UNCONNECTED_259,SYNOPSYS_UNCONNECTED_260,
  SYNOPSYS_UNCONNECTED_261,SYNOPSYS_UNCONNECTED_262,SYNOPSYS_UNCONNECTED_263,
  SYNOPSYS_UNCONNECTED_264,SYNOPSYS_UNCONNECTED_265,SYNOPSYS_UNCONNECTED_266,
  SYNOPSYS_UNCONNECTED_267,SYNOPSYS_UNCONNECTED_268;
  wire [2:0] iptr_r,iptr_r_data;
  wire [7:4] valid_head_o_pretrunc;

  bsg_make_2D_array_width_p32_items_p4
  bm2Da
  (
    .i(data_head_o_flat_pretrunc),
    .o(data_head_o)
  );


  bsg_rotate_right_width_p8
  valid_rr
  (
    .data_i(valid_i),
    .rot_i(iptr_r),
    .o({ valid_head_o_pretrunc, valid_head_o })
  );


  bsg_circular_ptr_slots_p8_max_add_p4
  c_ptr
  (
    .clk(clk),
    .reset_i(reset),
    .add_i(go_cnt_i),
    .o(iptr_r),
    .n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3 })
  );


  bsg_circular_ptr_slots_p8_max_add_p4
  c_ptr_data
  (
    .clk(clk),
    .reset_i(reset),
    .add_i(go_cnt_i),
    .o(iptr_r_data),
    .n_o({ SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6 })
  );

  assign { yumi_o, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13 } = { 1'b0, 1'b0, 1'b0, 1'b0, go_channels_i, 1'b0, 1'b0, 1'b0, 1'b0, go_channels_i[3:1] } << iptr_r;
  assign { SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52, SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54, SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56, SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58, SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60, SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62, SYNOPSYS_UNCONNECTED_63, SYNOPSYS_UNCONNECTED_64, SYNOPSYS_UNCONNECTED_65, SYNOPSYS_UNCONNECTED_66, SYNOPSYS_UNCONNECTED_67, SYNOPSYS_UNCONNECTED_68, SYNOPSYS_UNCONNECTED_69, SYNOPSYS_UNCONNECTED_70, SYNOPSYS_UNCONNECTED_71, SYNOPSYS_UNCONNECTED_72, SYNOPSYS_UNCONNECTED_73, SYNOPSYS_UNCONNECTED_74, SYNOPSYS_UNCONNECTED_75, SYNOPSYS_UNCONNECTED_76, SYNOPSYS_UNCONNECTED_77, SYNOPSYS_UNCONNECTED_78, SYNOPSYS_UNCONNECTED_79, SYNOPSYS_UNCONNECTED_80, SYNOPSYS_UNCONNECTED_81, SYNOPSYS_UNCONNECTED_82, SYNOPSYS_UNCONNECTED_83, SYNOPSYS_UNCONNECTED_84, SYNOPSYS_UNCONNECTED_85, SYNOPSYS_UNCONNECTED_86, SYNOPSYS_UNCONNECTED_87, SYNOPSYS_UNCONNECTED_88, SYNOPSYS_UNCONNECTED_89, SYNOPSYS_UNCONNECTED_90, SYNOPSYS_UNCONNECTED_91, SYNOPSYS_UNCONNECTED_92, SYNOPSYS_UNCONNECTED_93, SYNOPSYS_UNCONNECTED_94, SYNOPSYS_UNCONNECTED_95, SYNOPSYS_UNCONNECTED_96, SYNOPSYS_UNCONNECTED_97, SYNOPSYS_UNCONNECTED_98, SYNOPSYS_UNCONNECTED_99, SYNOPSYS_UNCONNECTED_100, SYNOPSYS_UNCONNECTED_101, SYNOPSYS_UNCONNECTED_102, SYNOPSYS_UNCONNECTED_103, SYNOPSYS_UNCONNECTED_104, SYNOPSYS_UNCONNECTED_105, SYNOPSYS_UNCONNECTED_106, SYNOPSYS_UNCONNECTED_107, SYNOPSYS_UNCONNECTED_108, SYNOPSYS_UNCONNECTED_109, SYNOPSYS_UNCONNECTED_110, SYNOPSYS_UNCONNECTED_111, SYNOPSYS_UNCONNECTED_112, SYNOPSYS_UNCONNECTED_113, SYNOPSYS_UNCONNECTED_114, SYNOPSYS_UNCONNECTED_115, SYNOPSYS_UNCONNECTED_116, SYNOPSYS_UNCONNECTED_117, SYNOPSYS_UNCONNECTED_118, SYNOPSYS_UNCONNECTED_119, SYNOPSYS_UNCONNECTED_120, SYNOPSYS_UNCONNECTED_121, SYNOPSYS_UNCONNECTED_122, SYNOPSYS_UNCONNECTED_123, SYNOPSYS_UNCONNECTED_124, SYNOPSYS_UNCONNECTED_125, SYNOPSYS_UNCONNECTED_126, SYNOPSYS_UNCONNECTED_127, SYNOPSYS_UNCONNECTED_128, SYNOPSYS_UNCONNECTED_129, SYNOPSYS_UNCONNECTED_130, SYNOPSYS_UNCONNECTED_131, SYNOPSYS_UNCONNECTED_132, SYNOPSYS_UNCONNECTED_133, SYNOPSYS_UNCONNECTED_134, SYNOPSYS_UNCONNECTED_135, SYNOPSYS_UNCONNECTED_136, SYNOPSYS_UNCONNECTED_137, SYNOPSYS_UNCONNECTED_138, SYNOPSYS_UNCONNECTED_139, SYNOPSYS_UNCONNECTED_140, SYNOPSYS_UNCONNECTED_141, SYNOPSYS_UNCONNECTED_142, SYNOPSYS_UNCONNECTED_143, SYNOPSYS_UNCONNECTED_144, SYNOPSYS_UNCONNECTED_145, SYNOPSYS_UNCONNECTED_146, SYNOPSYS_UNCONNECTED_147, SYNOPSYS_UNCONNECTED_148, SYNOPSYS_UNCONNECTED_149, SYNOPSYS_UNCONNECTED_150, SYNOPSYS_UNCONNECTED_151, SYNOPSYS_UNCONNECTED_152, SYNOPSYS_UNCONNECTED_153, SYNOPSYS_UNCONNECTED_154, SYNOPSYS_UNCONNECTED_155, SYNOPSYS_UNCONNECTED_156, SYNOPSYS_UNCONNECTED_157, SYNOPSYS_UNCONNECTED_158, SYNOPSYS_UNCONNECTED_159, SYNOPSYS_UNCONNECTED_160, SYNOPSYS_UNCONNECTED_161, SYNOPSYS_UNCONNECTED_162, SYNOPSYS_UNCONNECTED_163, SYNOPSYS_UNCONNECTED_164, SYNOPSYS_UNCONNECTED_165, SYNOPSYS_UNCONNECTED_166, SYNOPSYS_UNCONNECTED_167, SYNOPSYS_UNCONNECTED_168, SYNOPSYS_UNCONNECTED_169, SYNOPSYS_UNCONNECTED_170, SYNOPSYS_UNCONNECTED_171, SYNOPSYS_UNCONNECTED_172, SYNOPSYS_UNCONNECTED_173, SYNOPSYS_UNCONNECTED_174, SYNOPSYS_UNCONNECTED_175, SYNOPSYS_UNCONNECTED_176, SYNOPSYS_UNCONNECTED_177, SYNOPSYS_UNCONNECTED_178, SYNOPSYS_UNCONNECTED_179, SYNOPSYS_UNCONNECTED_180, SYNOPSYS_UNCONNECTED_181, SYNOPSYS_UNCONNECTED_182, SYNOPSYS_UNCONNECTED_183, SYNOPSYS_UNCONNECTED_184, SYNOPSYS_UNCONNECTED_185, SYNOPSYS_UNCONNECTED_186, SYNOPSYS_UNCONNECTED_187, SYNOPSYS_UNCONNECTED_188, SYNOPSYS_UNCONNECTED_189, SYNOPSYS_UNCONNECTED_190, SYNOPSYS_UNCONNECTED_191, SYNOPSYS_UNCONNECTED_192, SYNOPSYS_UNCONNECTED_193, SYNOPSYS_UNCONNECTED_194, SYNOPSYS_UNCONNECTED_195, SYNOPSYS_UNCONNECTED_196, SYNOPSYS_UNCONNECTED_197, SYNOPSYS_UNCONNECTED_198, SYNOPSYS_UNCONNECTED_199, SYNOPSYS_UNCONNECTED_200, SYNOPSYS_UNCONNECTED_201, SYNOPSYS_UNCONNECTED_202, SYNOPSYS_UNCONNECTED_203, SYNOPSYS_UNCONNECTED_204, SYNOPSYS_UNCONNECTED_205, SYNOPSYS_UNCONNECTED_206, SYNOPSYS_UNCONNECTED_207, SYNOPSYS_UNCONNECTED_208, SYNOPSYS_UNCONNECTED_209, SYNOPSYS_UNCONNECTED_210, SYNOPSYS_UNCONNECTED_211, SYNOPSYS_UNCONNECTED_212, SYNOPSYS_UNCONNECTED_213, SYNOPSYS_UNCONNECTED_214, SYNOPSYS_UNCONNECTED_215, SYNOPSYS_UNCONNECTED_216, SYNOPSYS_UNCONNECTED_217, SYNOPSYS_UNCONNECTED_218, SYNOPSYS_UNCONNECTED_219, SYNOPSYS_UNCONNECTED_220, SYNOPSYS_UNCONNECTED_221, SYNOPSYS_UNCONNECTED_222, SYNOPSYS_UNCONNECTED_223, SYNOPSYS_UNCONNECTED_224, SYNOPSYS_UNCONNECTED_225, SYNOPSYS_UNCONNECTED_226, SYNOPSYS_UNCONNECTED_227, SYNOPSYS_UNCONNECTED_228, SYNOPSYS_UNCONNECTED_229, SYNOPSYS_UNCONNECTED_230, SYNOPSYS_UNCONNECTED_231, SYNOPSYS_UNCONNECTED_232, SYNOPSYS_UNCONNECTED_233, SYNOPSYS_UNCONNECTED_234, SYNOPSYS_UNCONNECTED_235, SYNOPSYS_UNCONNECTED_236, SYNOPSYS_UNCONNECTED_237, SYNOPSYS_UNCONNECTED_238, SYNOPSYS_UNCONNECTED_239, SYNOPSYS_UNCONNECTED_240, SYNOPSYS_UNCONNECTED_241, SYNOPSYS_UNCONNECTED_242, SYNOPSYS_UNCONNECTED_243, SYNOPSYS_UNCONNECTED_244, SYNOPSYS_UNCONNECTED_245, SYNOPSYS_UNCONNECTED_246, SYNOPSYS_UNCONNECTED_247, SYNOPSYS_UNCONNECTED_248, SYNOPSYS_UNCONNECTED_249, SYNOPSYS_UNCONNECTED_250, SYNOPSYS_UNCONNECTED_251, SYNOPSYS_UNCONNECTED_252, SYNOPSYS_UNCONNECTED_253, SYNOPSYS_UNCONNECTED_254, SYNOPSYS_UNCONNECTED_255, SYNOPSYS_UNCONNECTED_256, SYNOPSYS_UNCONNECTED_257, SYNOPSYS_UNCONNECTED_258, SYNOPSYS_UNCONNECTED_259, SYNOPSYS_UNCONNECTED_260, SYNOPSYS_UNCONNECTED_261, SYNOPSYS_UNCONNECTED_262, SYNOPSYS_UNCONNECTED_263, SYNOPSYS_UNCONNECTED_264, SYNOPSYS_UNCONNECTED_265, SYNOPSYS_UNCONNECTED_266, SYNOPSYS_UNCONNECTED_267, SYNOPSYS_UNCONNECTED_268, data_head_o_flat_pretrunc } = { data_i[126:0], data_i } >> { iptr_r_data, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 };

endmodule



module bsg_scan_width_p4_and_p1_lo_to_hi_p1
(
  i,
  o
);

  input [3:0] i;
  output [3:0] o;
  wire [3:0] o;
  wire N0,N1,N2;
  assign o[0] = i[0];
  assign o[1] = i[0] & i[1];
  assign o[2] = N0 & i[2];
  assign N0 = i[0] & i[1];
  assign o[3] = N2 & i[3];
  assign N2 = N1 & i[2];
  assign N1 = i[0] & i[1];

endmodule



module bsg_thermometer_count_width_p4
(
  i,
  o
);

  input [3:0] i;
  output [2:0] o;
  wire [2:0] o;
  wire N0,N1,N2;
  assign o[2] = i[3];
  assign o[1] = N0 & i[1];
  assign N0 = ~i[3];
  assign o[0] = N2 ^ i[0];
  assign N2 = N1 ^ i[1];
  assign N1 = i[3] ^ i[2];

endmodule



module bsg_rr_f2f_middle_width_p32_middle_meet_p4
(
  valid_head_i,
  ready_head_i,
  go_channels_o,
  go_cnt_o
);

  input [3:0] valid_head_i;
  input [3:0] ready_head_i;
  output [3:0] go_channels_o;
  output [2:0] go_cnt_o;
  wire [3:0] go_channels_o,happy_channels;
  wire [2:0] go_cnt_o;

  bsg_scan_width_p4_and_p1_lo_to_hi_p1
  and_scan
  (
    .i(happy_channels),
    .o(go_channels_o)
  );


  bsg_thermometer_count_width_p4
  genblk1_genblk1_thermo
  (
    .i(go_channels_o),
    .o(go_cnt_o)
  );

  assign happy_channels[3] = valid_head_i[3] & ready_head_i[3];
  assign happy_channels[2] = valid_head_i[2] & ready_head_i[2];
  assign happy_channels[1] = valid_head_i[1] & ready_head_i[1];
  assign happy_channels[0] = valid_head_i[0] & ready_head_i[0];

endmodule



module bsg_rotate_right_width_p4
(
  data_i,
  rot_i,
  o
);

  input [3:0] data_i;
  input [1:0] rot_i;
  output [3:0] o;
  wire [3:0] o;
  wire SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3;
  assign { SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, o } = { data_i[2:0], data_i } >> rot_i;

endmodule



module bsg_circular_ptr_slots_p4_max_add_p4
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [2:0] add_i;
  output [1:0] o;
  output [1:0] n_o;
  input clk;
  input reset_i;
  wire [1:0] n_o;
  wire N0,N1,N2,N3,N4;
  reg [1:0] o;
  assign n_o = o + add_i[1:0];
  assign { N4, N3 } = (N0)? { 1'b0, 1'b0 } : 
                      (N1)? n_o : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

  always @(posedge clk) begin
    if(1'b1) begin
      { o[1:0] } <= { N4, N3 };
    end 
  end


endmodule



module bsg_rr_f2f_output_width_p32_num_out_p4_middle_meet_p4
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

  input [3:0] ready_i;
  output [3:0] ready_head_o;
  input [3:0] go_channels_i;
  input [2:0] go_cnt_i;
  input [127:0] data_head_i;
  output [3:0] valid_o;
  output [127:0] data_o;
  input clk;
  input reset;
  wire [3:0] ready_head_o,valid_o;
  wire [127:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,
  SYNOPSYS_UNCONNECTED_3,SYNOPSYS_UNCONNECTED_4,SYNOPSYS_UNCONNECTED_5,SYNOPSYS_UNCONNECTED_6,
  SYNOPSYS_UNCONNECTED_7;
  wire [1:0] optr_r,optr_r_data;

  bsg_rotate_right_width_p4
  ready_rr
  (
    .data_i(ready_i),
    .rot_i(optr_r),
    .o(ready_head_o)
  );


  bsg_circular_ptr_slots_p4_max_add_p4
  c_ptr
  (
    .clk(clk),
    .reset_i(reset),
    .add_i(go_cnt_i),
    .o(optr_r),
    .n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2 })
  );


  bsg_circular_ptr_slots_p4_max_add_p4
  c_ptr_data
  (
    .clk(clk),
    .reset_i(reset),
    .add_i(go_cnt_i),
    .o(optr_r_data),
    .n_o({ SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4 })
  );

  assign { valid_o, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7 } = { go_channels_i, go_channels_i[3:1] } << optr_r;
  assign N35 = optr_r_data[0] & optr_r_data[1];
  assign N34 = N0 & optr_r_data[1];
  assign N0 = ~optr_r_data[0];
  assign N33 = optr_r_data[0] & N1;
  assign N1 = ~optr_r_data[1];
  assign N32 = N2 & N3;
  assign N2 = ~optr_r_data[0];
  assign N3 = ~optr_r_data[1];
  assign N39 = optr_r_data[0] & optr_r_data[1];
  assign N38 = N4 & optr_r_data[1];
  assign N4 = ~optr_r_data[0];
  assign N37 = optr_r_data[0] & N5;
  assign N5 = ~optr_r_data[1];
  assign N36 = N6 & N7;
  assign N6 = ~optr_r_data[0];
  assign N7 = ~optr_r_data[1];
  assign N43 = optr_r_data[0] & optr_r_data[1];
  assign N42 = N8 & optr_r_data[1];
  assign N8 = ~optr_r_data[0];
  assign N41 = optr_r_data[0] & N9;
  assign N9 = ~optr_r_data[1];
  assign N40 = N10 & N11;
  assign N10 = ~optr_r_data[0];
  assign N11 = ~optr_r_data[1];
  assign N47 = optr_r_data[0] & optr_r_data[1];
  assign N46 = N12 & optr_r_data[1];
  assign N12 = ~optr_r_data[0];
  assign N45 = optr_r_data[0] & N13;
  assign N13 = ~optr_r_data[1];
  assign N44 = N14 & N15;
  assign N14 = ~optr_r_data[0];
  assign N15 = ~optr_r_data[1];
  assign data_o[31:0] = (N16)? data_head_i[63:32] : 
                        (N17)? data_head_i[95:64] : 
                        (N18)? data_head_i[127:96] : 
                        (N19)? data_head_i[31:0] : 1'b0;
  assign N16 = N35;
  assign N17 = N34;
  assign N18 = N33;
  assign N19 = N32;
  assign data_o[63:32] = (N20)? data_head_i[95:64] : 
                         (N21)? data_head_i[127:96] : 
                         (N22)? data_head_i[31:0] : 
                         (N23)? data_head_i[63:32] : 1'b0;
  assign N20 = N39;
  assign N21 = N38;
  assign N22 = N37;
  assign N23 = N36;
  assign data_o[95:64] = (N24)? data_head_i[127:96] : 
                         (N25)? data_head_i[31:0] : 
                         (N26)? data_head_i[63:32] : 
                         (N27)? data_head_i[95:64] : 1'b0;
  assign N24 = N43;
  assign N25 = N42;
  assign N26 = N41;
  assign N27 = N40;
  assign data_o[127:96] = (N28)? data_head_i[31:0] : 
                          (N29)? data_head_i[63:32] : 
                          (N30)? data_head_i[95:64] : 
                          (N31)? data_head_i[127:96] : 1'b0;
  assign N28 = N47;
  assign N29 = N46;
  assign N30 = N45;
  assign N31 = N44;

endmodule



module bsg_round_robin_fifo_to_fifo
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

  input [7:0] valid_i;
  input [255:0] data_i;
  output [7:0] yumi_o;
  input [2:0] in_top_channel_i;
  input [1:0] out_top_channel_i;
  output [3:0] valid_o;
  output [127:0] data_o;
  input [3:0] ready_i;
  input clk;
  input reset;
  wire [7:0] yumi_o;
  wire [3:0] valid_o,go_channels;
  wire [127:0] data_o,data_o_flat,oc_3__out_chan_data_head_array;
  wire yumi_int_o_7__7_,yumi_int_o_7__6_,yumi_int_o_7__5_,yumi_int_o_7__4_,
  yumi_int_o_7__3_,yumi_int_o_7__2_,yumi_int_o_7__1_,yumi_int_o_7__0_,N0,N1,N2,N3,N4,N5,N6,N7,
  N8,N9,N10,N11,N12,N13,N14,valid_int_o_3__3_,valid_int_o_3__2_,valid_int_o_3__1_,
  valid_int_o_3__0_,N15,N16,N17,N18,N19,N20,data_int_o_3__127_,data_int_o_3__126_,
  data_int_o_3__125_,data_int_o_3__124_,data_int_o_3__123_,data_int_o_3__122_,
  data_int_o_3__121_,data_int_o_3__120_,data_int_o_3__119_,data_int_o_3__118_,
  data_int_o_3__117_,data_int_o_3__116_,data_int_o_3__115_,data_int_o_3__114_,
  data_int_o_3__113_,data_int_o_3__112_,data_int_o_3__111_,data_int_o_3__110_,
  data_int_o_3__109_,data_int_o_3__108_,data_int_o_3__107_,data_int_o_3__106_,data_int_o_3__105_,
  data_int_o_3__104_,data_int_o_3__103_,data_int_o_3__102_,data_int_o_3__101_,
  data_int_o_3__100_,data_int_o_3__99_,data_int_o_3__98_,data_int_o_3__97_,
  data_int_o_3__96_,data_int_o_3__95_,data_int_o_3__94_,data_int_o_3__93_,data_int_o_3__92_,
  data_int_o_3__91_,data_int_o_3__90_,data_int_o_3__89_,data_int_o_3__88_,
  data_int_o_3__87_,data_int_o_3__86_,data_int_o_3__85_,data_int_o_3__84_,data_int_o_3__83_,
  data_int_o_3__82_,data_int_o_3__81_,data_int_o_3__80_,data_int_o_3__79_,
  data_int_o_3__78_,data_int_o_3__77_,data_int_o_3__76_,data_int_o_3__75_,
  data_int_o_3__74_,data_int_o_3__73_,data_int_o_3__72_,data_int_o_3__71_,data_int_o_3__70_,
  data_int_o_3__69_,data_int_o_3__68_,data_int_o_3__67_,data_int_o_3__66_,
  data_int_o_3__65_,data_int_o_3__64_,data_int_o_3__63_,data_int_o_3__62_,data_int_o_3__61_,
  data_int_o_3__60_,data_int_o_3__59_,data_int_o_3__58_,data_int_o_3__57_,
  data_int_o_3__56_,data_int_o_3__55_,data_int_o_3__54_,data_int_o_3__53_,data_int_o_3__52_,
  data_int_o_3__51_,data_int_o_3__50_,data_int_o_3__49_,data_int_o_3__48_,
  data_int_o_3__47_,data_int_o_3__46_,data_int_o_3__45_,data_int_o_3__44_,data_int_o_3__43_,
  data_int_o_3__42_,data_int_o_3__41_,data_int_o_3__40_,data_int_o_3__39_,
  data_int_o_3__38_,data_int_o_3__37_,data_int_o_3__36_,data_int_o_3__35_,
  data_int_o_3__34_,data_int_o_3__33_,data_int_o_3__32_,data_int_o_3__31_,data_int_o_3__30_,
  data_int_o_3__29_,data_int_o_3__28_,data_int_o_3__27_,data_int_o_3__26_,
  data_int_o_3__25_,data_int_o_3__24_,data_int_o_3__23_,data_int_o_3__22_,data_int_o_3__21_,
  data_int_o_3__20_,data_int_o_3__19_,data_int_o_3__18_,data_int_o_3__17_,
  data_int_o_3__16_,data_int_o_3__15_,data_int_o_3__14_,data_int_o_3__13_,data_int_o_3__12_,
  data_int_o_3__11_,data_int_o_3__10_,data_int_o_3__9_,data_int_o_3__8_,
  data_int_o_3__7_,data_int_o_3__6_,data_int_o_3__5_,data_int_o_3__4_,data_int_o_3__3_,
  data_int_o_3__2_,data_int_o_3__1_,data_int_o_3__0_,N21,N22,N23,N24,data_head_7__127_,
  data_head_7__126_,data_head_7__125_,data_head_7__124_,data_head_7__123_,
  data_head_7__122_,data_head_7__121_,data_head_7__120_,data_head_7__119_,data_head_7__118_,
  data_head_7__117_,data_head_7__116_,data_head_7__115_,data_head_7__114_,
  data_head_7__113_,data_head_7__112_,data_head_7__111_,data_head_7__110_,
  data_head_7__109_,data_head_7__108_,data_head_7__107_,data_head_7__106_,data_head_7__105_,
  data_head_7__104_,data_head_7__103_,data_head_7__102_,data_head_7__101_,
  data_head_7__100_,data_head_7__99_,data_head_7__98_,data_head_7__97_,data_head_7__96_,
  data_head_7__95_,data_head_7__94_,data_head_7__93_,data_head_7__92_,data_head_7__91_,
  data_head_7__90_,data_head_7__89_,data_head_7__88_,data_head_7__87_,
  data_head_7__86_,data_head_7__85_,data_head_7__84_,data_head_7__83_,data_head_7__82_,
  data_head_7__81_,data_head_7__80_,data_head_7__79_,data_head_7__78_,data_head_7__77_,
  data_head_7__76_,data_head_7__75_,data_head_7__74_,data_head_7__73_,data_head_7__72_,
  data_head_7__71_,data_head_7__70_,data_head_7__69_,data_head_7__68_,
  data_head_7__67_,data_head_7__66_,data_head_7__65_,data_head_7__64_,data_head_7__63_,
  data_head_7__62_,data_head_7__61_,data_head_7__60_,data_head_7__59_,data_head_7__58_,
  data_head_7__57_,data_head_7__56_,data_head_7__55_,data_head_7__54_,
  data_head_7__53_,data_head_7__52_,data_head_7__51_,data_head_7__50_,data_head_7__49_,
  data_head_7__48_,data_head_7__47_,data_head_7__46_,data_head_7__45_,data_head_7__44_,
  data_head_7__43_,data_head_7__42_,data_head_7__41_,data_head_7__40_,
  data_head_7__39_,data_head_7__38_,data_head_7__37_,data_head_7__36_,data_head_7__35_,
  data_head_7__34_,data_head_7__33_,data_head_7__32_,data_head_7__31_,data_head_7__30_,
  data_head_7__29_,data_head_7__28_,data_head_7__27_,data_head_7__26_,data_head_7__25_,
  data_head_7__24_,data_head_7__23_,data_head_7__22_,data_head_7__21_,
  data_head_7__20_,data_head_7__19_,data_head_7__18_,data_head_7__17_,data_head_7__16_,
  data_head_7__15_,data_head_7__14_,data_head_7__13_,data_head_7__12_,data_head_7__11_,
  data_head_7__10_,data_head_7__9_,data_head_7__8_,data_head_7__7_,data_head_7__6_,
  data_head_7__5_,data_head_7__4_,data_head_7__3_,data_head_7__2_,data_head_7__1_,
  data_head_7__0_,n_0_net_,valid_head_7__3_,valid_head_7__2_,valid_head_7__1_,
  valid_head_7__0_,n_2_net__3_,n_2_net__2_,n_2_net__1_,n_2_net__0_,n_3_net__3_,
  n_3_net__2_,n_3_net__1_,n_3_net__0_,ready_head_3__3_,ready_head_3__2_,ready_head_3__1_,
  ready_head_3__0_,N25,N26,N27,N28,N29,N30,N31,N32,N33,n_4_net__127_,n_4_net__126_,
  n_4_net__125_,n_4_net__124_,n_4_net__123_,n_4_net__122_,n_4_net__121_,
  n_4_net__120_,n_4_net__119_,n_4_net__118_,n_4_net__117_,n_4_net__116_,n_4_net__115_,
  n_4_net__114_,n_4_net__113_,n_4_net__112_,n_4_net__111_,n_4_net__110_,n_4_net__109_,
  n_4_net__108_,n_4_net__107_,n_4_net__106_,n_4_net__105_,n_4_net__104_,
  n_4_net__103_,n_4_net__102_,n_4_net__101_,n_4_net__100_,n_4_net__99_,n_4_net__98_,
  n_4_net__97_,n_4_net__96_,n_4_net__95_,n_4_net__94_,n_4_net__93_,n_4_net__92_,n_4_net__91_,
  n_4_net__90_,n_4_net__89_,n_4_net__88_,n_4_net__87_,n_4_net__86_,n_4_net__85_,
  n_4_net__84_,n_4_net__83_,n_4_net__82_,n_4_net__81_,n_4_net__80_,n_4_net__79_,
  n_4_net__78_,n_4_net__77_,n_4_net__76_,n_4_net__75_,n_4_net__74_,n_4_net__73_,
  n_4_net__72_,n_4_net__71_,n_4_net__70_,n_4_net__69_,n_4_net__68_,n_4_net__67_,
  n_4_net__66_,n_4_net__65_,n_4_net__64_,n_4_net__63_,n_4_net__62_,n_4_net__61_,
  n_4_net__60_,n_4_net__59_,n_4_net__58_,n_4_net__57_,n_4_net__56_,n_4_net__55_,
  n_4_net__54_,n_4_net__53_,n_4_net__52_,n_4_net__51_,n_4_net__50_,n_4_net__49_,n_4_net__48_,
  n_4_net__47_,n_4_net__46_,n_4_net__45_,n_4_net__44_,n_4_net__43_,n_4_net__42_,
  n_4_net__41_,n_4_net__40_,n_4_net__39_,n_4_net__38_,n_4_net__37_,n_4_net__36_,
  n_4_net__35_,n_4_net__34_,n_4_net__33_,n_4_net__32_,n_4_net__31_,n_4_net__30_,
  n_4_net__29_,n_4_net__28_,n_4_net__27_,n_4_net__26_,n_4_net__25_,n_4_net__24_,
  n_4_net__23_,n_4_net__22_,n_4_net__21_,n_4_net__20_,n_4_net__19_,n_4_net__18_,
  n_4_net__17_,n_4_net__16_,n_4_net__15_,n_4_net__14_,n_4_net__13_,n_4_net__12_,n_4_net__11_,
  n_4_net__10_,n_4_net__9_,n_4_net__8_,n_4_net__7_,n_4_net__6_,n_4_net__5_,
  n_4_net__4_,n_4_net__3_,n_4_net__2_,n_4_net__1_,n_4_net__0_,N34,N35,N36,N37,N38,N39,
  N40,N41,n_5_net_,N42,N43,N44,N45,N46;
  wire [2:0] go_cnt;
  assign yumi_o[7] = (N7)? 1'b0 : 
                     (N9)? 1'b0 : 
                     (N11)? 1'b0 : 
                     (N13)? 1'b0 : 
                     (N8)? 1'b0 : 
                     (N10)? 1'b0 : 
                     (N12)? 1'b0 : 
                     (N14)? yumi_int_o_7__7_ : 1'b0;
  assign yumi_o[6] = (N7)? 1'b0 : 
                     (N9)? 1'b0 : 
                     (N11)? 1'b0 : 
                     (N13)? 1'b0 : 
                     (N8)? 1'b0 : 
                     (N10)? 1'b0 : 
                     (N12)? 1'b0 : 
                     (N14)? yumi_int_o_7__6_ : 1'b0;
  assign yumi_o[5] = (N7)? 1'b0 : 
                     (N9)? 1'b0 : 
                     (N11)? 1'b0 : 
                     (N13)? 1'b0 : 
                     (N8)? 1'b0 : 
                     (N10)? 1'b0 : 
                     (N12)? 1'b0 : 
                     (N14)? yumi_int_o_7__5_ : 1'b0;
  assign yumi_o[4] = (N7)? 1'b0 : 
                     (N9)? 1'b0 : 
                     (N11)? 1'b0 : 
                     (N13)? 1'b0 : 
                     (N8)? 1'b0 : 
                     (N10)? 1'b0 : 
                     (N12)? 1'b0 : 
                     (N14)? yumi_int_o_7__4_ : 1'b0;
  assign yumi_o[3] = (N7)? 1'b0 : 
                     (N9)? 1'b0 : 
                     (N11)? 1'b0 : 
                     (N13)? 1'b0 : 
                     (N8)? 1'b0 : 
                     (N10)? 1'b0 : 
                     (N12)? 1'b0 : 
                     (N14)? yumi_int_o_7__3_ : 1'b0;
  assign yumi_o[2] = (N7)? 1'b0 : 
                     (N9)? 1'b0 : 
                     (N11)? 1'b0 : 
                     (N13)? 1'b0 : 
                     (N8)? 1'b0 : 
                     (N10)? 1'b0 : 
                     (N12)? 1'b0 : 
                     (N14)? yumi_int_o_7__2_ : 1'b0;
  assign yumi_o[1] = (N7)? 1'b0 : 
                     (N9)? 1'b0 : 
                     (N11)? 1'b0 : 
                     (N13)? 1'b0 : 
                     (N8)? 1'b0 : 
                     (N10)? 1'b0 : 
                     (N12)? 1'b0 : 
                     (N14)? yumi_int_o_7__1_ : 1'b0;
  assign yumi_o[0] = (N7)? 1'b0 : 
                     (N9)? 1'b0 : 
                     (N11)? 1'b0 : 
                     (N13)? 1'b0 : 
                     (N8)? 1'b0 : 
                     (N10)? 1'b0 : 
                     (N12)? 1'b0 : 
                     (N14)? yumi_int_o_7__0_ : 1'b0;
  assign valid_o[3] = (N17)? 1'b0 : 
                      (N19)? 1'b0 : 
                      (N18)? 1'b0 : 
                      (N20)? valid_int_o_3__3_ : 1'b0;
  assign valid_o[2] = (N17)? 1'b0 : 
                      (N19)? 1'b0 : 
                      (N18)? 1'b0 : 
                      (N20)? valid_int_o_3__2_ : 1'b0;
  assign valid_o[1] = (N17)? 1'b0 : 
                      (N19)? 1'b0 : 
                      (N18)? 1'b0 : 
                      (N20)? valid_int_o_3__1_ : 1'b0;
  assign valid_o[0] = (N17)? 1'b0 : 
                      (N19)? 1'b0 : 
                      (N18)? 1'b0 : 
                      (N20)? valid_int_o_3__0_ : 1'b0;
  assign data_o_flat[127] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__127_ : 1'b0;
  assign data_o_flat[126] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__126_ : 1'b0;
  assign data_o_flat[125] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__125_ : 1'b0;
  assign data_o_flat[124] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__124_ : 1'b0;
  assign data_o_flat[123] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__123_ : 1'b0;
  assign data_o_flat[122] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__122_ : 1'b0;
  assign data_o_flat[121] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__121_ : 1'b0;
  assign data_o_flat[120] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__120_ : 1'b0;
  assign data_o_flat[119] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__119_ : 1'b0;
  assign data_o_flat[118] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__118_ : 1'b0;
  assign data_o_flat[117] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__117_ : 1'b0;
  assign data_o_flat[116] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__116_ : 1'b0;
  assign data_o_flat[115] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__115_ : 1'b0;
  assign data_o_flat[114] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__114_ : 1'b0;
  assign data_o_flat[113] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__113_ : 1'b0;
  assign data_o_flat[112] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__112_ : 1'b0;
  assign data_o_flat[111] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__111_ : 1'b0;
  assign data_o_flat[110] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__110_ : 1'b0;
  assign data_o_flat[109] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__109_ : 1'b0;
  assign data_o_flat[108] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__108_ : 1'b0;
  assign data_o_flat[107] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__107_ : 1'b0;
  assign data_o_flat[106] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__106_ : 1'b0;
  assign data_o_flat[105] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__105_ : 1'b0;
  assign data_o_flat[104] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__104_ : 1'b0;
  assign data_o_flat[103] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__103_ : 1'b0;
  assign data_o_flat[102] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__102_ : 1'b0;
  assign data_o_flat[101] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__101_ : 1'b0;
  assign data_o_flat[100] = (N21)? 1'b0 : 
                            (N23)? 1'b0 : 
                            (N22)? 1'b0 : 
                            (N24)? data_int_o_3__100_ : 1'b0;
  assign data_o_flat[99] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__99_ : 1'b0;
  assign data_o_flat[98] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__98_ : 1'b0;
  assign data_o_flat[97] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__97_ : 1'b0;
  assign data_o_flat[96] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__96_ : 1'b0;
  assign data_o_flat[95] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__95_ : 1'b0;
  assign data_o_flat[94] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__94_ : 1'b0;
  assign data_o_flat[93] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__93_ : 1'b0;
  assign data_o_flat[92] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__92_ : 1'b0;
  assign data_o_flat[91] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__91_ : 1'b0;
  assign data_o_flat[90] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__90_ : 1'b0;
  assign data_o_flat[89] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__89_ : 1'b0;
  assign data_o_flat[88] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__88_ : 1'b0;
  assign data_o_flat[87] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__87_ : 1'b0;
  assign data_o_flat[86] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__86_ : 1'b0;
  assign data_o_flat[85] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__85_ : 1'b0;
  assign data_o_flat[84] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__84_ : 1'b0;
  assign data_o_flat[83] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__83_ : 1'b0;
  assign data_o_flat[82] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__82_ : 1'b0;
  assign data_o_flat[81] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__81_ : 1'b0;
  assign data_o_flat[80] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__80_ : 1'b0;
  assign data_o_flat[79] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__79_ : 1'b0;
  assign data_o_flat[78] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__78_ : 1'b0;
  assign data_o_flat[77] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__77_ : 1'b0;
  assign data_o_flat[76] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__76_ : 1'b0;
  assign data_o_flat[75] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__75_ : 1'b0;
  assign data_o_flat[74] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__74_ : 1'b0;
  assign data_o_flat[73] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__73_ : 1'b0;
  assign data_o_flat[72] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__72_ : 1'b0;
  assign data_o_flat[71] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__71_ : 1'b0;
  assign data_o_flat[70] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__70_ : 1'b0;
  assign data_o_flat[69] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__69_ : 1'b0;
  assign data_o_flat[68] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__68_ : 1'b0;
  assign data_o_flat[67] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__67_ : 1'b0;
  assign data_o_flat[66] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__66_ : 1'b0;
  assign data_o_flat[65] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__65_ : 1'b0;
  assign data_o_flat[64] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__64_ : 1'b0;
  assign data_o_flat[63] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__63_ : 1'b0;
  assign data_o_flat[62] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__62_ : 1'b0;
  assign data_o_flat[61] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__61_ : 1'b0;
  assign data_o_flat[60] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__60_ : 1'b0;
  assign data_o_flat[59] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__59_ : 1'b0;
  assign data_o_flat[58] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__58_ : 1'b0;
  assign data_o_flat[57] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__57_ : 1'b0;
  assign data_o_flat[56] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__56_ : 1'b0;
  assign data_o_flat[55] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__55_ : 1'b0;
  assign data_o_flat[54] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__54_ : 1'b0;
  assign data_o_flat[53] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__53_ : 1'b0;
  assign data_o_flat[52] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__52_ : 1'b0;
  assign data_o_flat[51] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__51_ : 1'b0;
  assign data_o_flat[50] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__50_ : 1'b0;
  assign data_o_flat[49] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__49_ : 1'b0;
  assign data_o_flat[48] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__48_ : 1'b0;
  assign data_o_flat[47] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__47_ : 1'b0;
  assign data_o_flat[46] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__46_ : 1'b0;
  assign data_o_flat[45] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__45_ : 1'b0;
  assign data_o_flat[44] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__44_ : 1'b0;
  assign data_o_flat[43] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__43_ : 1'b0;
  assign data_o_flat[42] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__42_ : 1'b0;
  assign data_o_flat[41] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__41_ : 1'b0;
  assign data_o_flat[40] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__40_ : 1'b0;
  assign data_o_flat[39] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__39_ : 1'b0;
  assign data_o_flat[38] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__38_ : 1'b0;
  assign data_o_flat[37] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__37_ : 1'b0;
  assign data_o_flat[36] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__36_ : 1'b0;
  assign data_o_flat[35] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__35_ : 1'b0;
  assign data_o_flat[34] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__34_ : 1'b0;
  assign data_o_flat[33] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__33_ : 1'b0;
  assign data_o_flat[32] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__32_ : 1'b0;
  assign data_o_flat[31] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__31_ : 1'b0;
  assign data_o_flat[30] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__30_ : 1'b0;
  assign data_o_flat[29] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__29_ : 1'b0;
  assign data_o_flat[28] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__28_ : 1'b0;
  assign data_o_flat[27] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__27_ : 1'b0;
  assign data_o_flat[26] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__26_ : 1'b0;
  assign data_o_flat[25] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__25_ : 1'b0;
  assign data_o_flat[24] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__24_ : 1'b0;
  assign data_o_flat[23] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__23_ : 1'b0;
  assign data_o_flat[22] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__22_ : 1'b0;
  assign data_o_flat[21] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__21_ : 1'b0;
  assign data_o_flat[20] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__20_ : 1'b0;
  assign data_o_flat[19] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__19_ : 1'b0;
  assign data_o_flat[18] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__18_ : 1'b0;
  assign data_o_flat[17] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__17_ : 1'b0;
  assign data_o_flat[16] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__16_ : 1'b0;
  assign data_o_flat[15] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__15_ : 1'b0;
  assign data_o_flat[14] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__14_ : 1'b0;
  assign data_o_flat[13] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__13_ : 1'b0;
  assign data_o_flat[12] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__12_ : 1'b0;
  assign data_o_flat[11] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__11_ : 1'b0;
  assign data_o_flat[10] = (N21)? 1'b0 : 
                           (N23)? 1'b0 : 
                           (N22)? 1'b0 : 
                           (N24)? data_int_o_3__10_ : 1'b0;
  assign data_o_flat[9] = (N21)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N24)? data_int_o_3__9_ : 1'b0;
  assign data_o_flat[8] = (N21)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N24)? data_int_o_3__8_ : 1'b0;
  assign data_o_flat[7] = (N21)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N24)? data_int_o_3__7_ : 1'b0;
  assign data_o_flat[6] = (N21)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N24)? data_int_o_3__6_ : 1'b0;
  assign data_o_flat[5] = (N21)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N24)? data_int_o_3__5_ : 1'b0;
  assign data_o_flat[4] = (N21)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N24)? data_int_o_3__4_ : 1'b0;
  assign data_o_flat[3] = (N21)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N24)? data_int_o_3__3_ : 1'b0;
  assign data_o_flat[2] = (N21)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N24)? data_int_o_3__2_ : 1'b0;
  assign data_o_flat[1] = (N21)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N24)? data_int_o_3__1_ : 1'b0;
  assign data_o_flat[0] = (N21)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N24)? data_int_o_3__0_ : 1'b0;

  bsg_make_2D_array_width_p32_items_p4
  bm2Da
  (
    .i(data_o_flat),
    .o(data_o)
  );


  bsg_rr_f2f_input_width_p32_num_in_p8_middle_meet_p4
  ic_7__in_chan_bsg_rr_ff_in
  (
    .clk(clk),
    .reset(n_0_net_),
    .valid_i(valid_i),
    .data_i(data_i),
    .data_head_o({ data_head_7__127_, data_head_7__126_, data_head_7__125_, data_head_7__124_, data_head_7__123_, data_head_7__122_, data_head_7__121_, data_head_7__120_, data_head_7__119_, data_head_7__118_, data_head_7__117_, data_head_7__116_, data_head_7__115_, data_head_7__114_, data_head_7__113_, data_head_7__112_, data_head_7__111_, data_head_7__110_, data_head_7__109_, data_head_7__108_, data_head_7__107_, data_head_7__106_, data_head_7__105_, data_head_7__104_, data_head_7__103_, data_head_7__102_, data_head_7__101_, data_head_7__100_, data_head_7__99_, data_head_7__98_, data_head_7__97_, data_head_7__96_, data_head_7__95_, data_head_7__94_, data_head_7__93_, data_head_7__92_, data_head_7__91_, data_head_7__90_, data_head_7__89_, data_head_7__88_, data_head_7__87_, data_head_7__86_, data_head_7__85_, data_head_7__84_, data_head_7__83_, data_head_7__82_, data_head_7__81_, data_head_7__80_, data_head_7__79_, data_head_7__78_, data_head_7__77_, data_head_7__76_, data_head_7__75_, data_head_7__74_, data_head_7__73_, data_head_7__72_, data_head_7__71_, data_head_7__70_, data_head_7__69_, data_head_7__68_, data_head_7__67_, data_head_7__66_, data_head_7__65_, data_head_7__64_, data_head_7__63_, data_head_7__62_, data_head_7__61_, data_head_7__60_, data_head_7__59_, data_head_7__58_, data_head_7__57_, data_head_7__56_, data_head_7__55_, data_head_7__54_, data_head_7__53_, data_head_7__52_, data_head_7__51_, data_head_7__50_, data_head_7__49_, data_head_7__48_, data_head_7__47_, data_head_7__46_, data_head_7__45_, data_head_7__44_, data_head_7__43_, data_head_7__42_, data_head_7__41_, data_head_7__40_, data_head_7__39_, data_head_7__38_, data_head_7__37_, data_head_7__36_, data_head_7__35_, data_head_7__34_, data_head_7__33_, data_head_7__32_, data_head_7__31_, data_head_7__30_, data_head_7__29_, data_head_7__28_, data_head_7__27_, data_head_7__26_, data_head_7__25_, data_head_7__24_, data_head_7__23_, data_head_7__22_, data_head_7__21_, data_head_7__20_, data_head_7__19_, data_head_7__18_, data_head_7__17_, data_head_7__16_, data_head_7__15_, data_head_7__14_, data_head_7__13_, data_head_7__12_, data_head_7__11_, data_head_7__10_, data_head_7__9_, data_head_7__8_, data_head_7__7_, data_head_7__6_, data_head_7__5_, data_head_7__4_, data_head_7__3_, data_head_7__2_, data_head_7__1_, data_head_7__0_ }),
    .valid_head_o({ valid_head_7__3_, valid_head_7__2_, valid_head_7__1_, valid_head_7__0_ }),
    .go_channels_i(go_channels),
    .go_cnt_i(go_cnt),
    .yumi_o({ yumi_int_o_7__7_, yumi_int_o_7__6_, yumi_int_o_7__5_, yumi_int_o_7__4_, yumi_int_o_7__3_, yumi_int_o_7__2_, yumi_int_o_7__1_, yumi_int_o_7__0_ })
  );


  bsg_rr_f2f_middle_width_p32_middle_meet_p4
  brrf2fm
  (
    .valid_head_i({ n_2_net__3_, n_2_net__2_, n_2_net__1_, n_2_net__0_ }),
    .ready_head_i({ n_3_net__3_, n_3_net__2_, n_3_net__1_, n_3_net__0_ }),
    .go_channels_o(go_channels),
    .go_cnt_o(go_cnt)
  );

  assign n_3_net__3_ = (N25)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N20)? ready_head_3__3_ : 1'b0;
  assign n_3_net__2_ = (N25)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N20)? ready_head_3__2_ : 1'b0;
  assign n_3_net__1_ = (N25)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N20)? ready_head_3__1_ : 1'b0;
  assign n_3_net__0_ = (N25)? 1'b0 : 
                       (N27)? 1'b0 : 
                       (N26)? 1'b0 : 
                       (N20)? ready_head_3__0_ : 1'b0;
  assign n_2_net__3_ = (N28)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N13)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N14)? valid_head_7__3_ : 1'b0;
  assign n_2_net__2_ = (N28)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N13)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N14)? valid_head_7__2_ : 1'b0;
  assign n_2_net__1_ = (N28)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N13)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N14)? valid_head_7__1_ : 1'b0;
  assign n_2_net__0_ = (N28)? 1'b0 : 
                       (N30)? 1'b0 : 
                       (N32)? 1'b0 : 
                       (N13)? 1'b0 : 
                       (N29)? 1'b0 : 
                       (N31)? 1'b0 : 
                       (N33)? 1'b0 : 
                       (N14)? valid_head_7__0_ : 1'b0;

  bsg_make_2D_array_width_p32_items_p4
  oc_3__out_chan_bm2Da
  (
    .i({ n_4_net__127_, n_4_net__126_, n_4_net__125_, n_4_net__124_, n_4_net__123_, n_4_net__122_, n_4_net__121_, n_4_net__120_, n_4_net__119_, n_4_net__118_, n_4_net__117_, n_4_net__116_, n_4_net__115_, n_4_net__114_, n_4_net__113_, n_4_net__112_, n_4_net__111_, n_4_net__110_, n_4_net__109_, n_4_net__108_, n_4_net__107_, n_4_net__106_, n_4_net__105_, n_4_net__104_, n_4_net__103_, n_4_net__102_, n_4_net__101_, n_4_net__100_, n_4_net__99_, n_4_net__98_, n_4_net__97_, n_4_net__96_, n_4_net__95_, n_4_net__94_, n_4_net__93_, n_4_net__92_, n_4_net__91_, n_4_net__90_, n_4_net__89_, n_4_net__88_, n_4_net__87_, n_4_net__86_, n_4_net__85_, n_4_net__84_, n_4_net__83_, n_4_net__82_, n_4_net__81_, n_4_net__80_, n_4_net__79_, n_4_net__78_, n_4_net__77_, n_4_net__76_, n_4_net__75_, n_4_net__74_, n_4_net__73_, n_4_net__72_, n_4_net__71_, n_4_net__70_, n_4_net__69_, n_4_net__68_, n_4_net__67_, n_4_net__66_, n_4_net__65_, n_4_net__64_, n_4_net__63_, n_4_net__62_, n_4_net__61_, n_4_net__60_, n_4_net__59_, n_4_net__58_, n_4_net__57_, n_4_net__56_, n_4_net__55_, n_4_net__54_, n_4_net__53_, n_4_net__52_, n_4_net__51_, n_4_net__50_, n_4_net__49_, n_4_net__48_, n_4_net__47_, n_4_net__46_, n_4_net__45_, n_4_net__44_, n_4_net__43_, n_4_net__42_, n_4_net__41_, n_4_net__40_, n_4_net__39_, n_4_net__38_, n_4_net__37_, n_4_net__36_, n_4_net__35_, n_4_net__34_, n_4_net__33_, n_4_net__32_, n_4_net__31_, n_4_net__30_, n_4_net__29_, n_4_net__28_, n_4_net__27_, n_4_net__26_, n_4_net__25_, n_4_net__24_, n_4_net__23_, n_4_net__22_, n_4_net__21_, n_4_net__20_, n_4_net__19_, n_4_net__18_, n_4_net__17_, n_4_net__16_, n_4_net__15_, n_4_net__14_, n_4_net__13_, n_4_net__12_, n_4_net__11_, n_4_net__10_, n_4_net__9_, n_4_net__8_, n_4_net__7_, n_4_net__6_, n_4_net__5_, n_4_net__4_, n_4_net__3_, n_4_net__2_, n_4_net__1_, n_4_net__0_ }),
    .o(oc_3__out_chan_data_head_array)
  );

  assign n_4_net__127_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__127_ : 1'b0;
  assign n_4_net__126_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__126_ : 1'b0;
  assign n_4_net__125_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__125_ : 1'b0;
  assign n_4_net__124_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__124_ : 1'b0;
  assign n_4_net__123_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__123_ : 1'b0;
  assign n_4_net__122_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__122_ : 1'b0;
  assign n_4_net__121_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__121_ : 1'b0;
  assign n_4_net__120_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__120_ : 1'b0;
  assign n_4_net__119_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__119_ : 1'b0;
  assign n_4_net__118_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__118_ : 1'b0;
  assign n_4_net__117_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__117_ : 1'b0;
  assign n_4_net__116_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__116_ : 1'b0;
  assign n_4_net__115_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__115_ : 1'b0;
  assign n_4_net__114_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__114_ : 1'b0;
  assign n_4_net__113_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__113_ : 1'b0;
  assign n_4_net__112_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__112_ : 1'b0;
  assign n_4_net__111_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__111_ : 1'b0;
  assign n_4_net__110_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__110_ : 1'b0;
  assign n_4_net__109_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__109_ : 1'b0;
  assign n_4_net__108_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__108_ : 1'b0;
  assign n_4_net__107_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__107_ : 1'b0;
  assign n_4_net__106_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__106_ : 1'b0;
  assign n_4_net__105_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__105_ : 1'b0;
  assign n_4_net__104_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__104_ : 1'b0;
  assign n_4_net__103_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__103_ : 1'b0;
  assign n_4_net__102_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__102_ : 1'b0;
  assign n_4_net__101_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__101_ : 1'b0;
  assign n_4_net__100_ = (N34)? 1'b0 : 
                         (N36)? 1'b0 : 
                         (N38)? 1'b0 : 
                         (N40)? 1'b0 : 
                         (N35)? 1'b0 : 
                         (N37)? 1'b0 : 
                         (N39)? 1'b0 : 
                         (N41)? data_head_7__100_ : 1'b0;
  assign n_4_net__99_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__99_ : 1'b0;
  assign n_4_net__98_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__98_ : 1'b0;
  assign n_4_net__97_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__97_ : 1'b0;
  assign n_4_net__96_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__96_ : 1'b0;
  assign n_4_net__95_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__95_ : 1'b0;
  assign n_4_net__94_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__94_ : 1'b0;
  assign n_4_net__93_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__93_ : 1'b0;
  assign n_4_net__92_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__92_ : 1'b0;
  assign n_4_net__91_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__91_ : 1'b0;
  assign n_4_net__90_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__90_ : 1'b0;
  assign n_4_net__89_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__89_ : 1'b0;
  assign n_4_net__88_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__88_ : 1'b0;
  assign n_4_net__87_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__87_ : 1'b0;
  assign n_4_net__86_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__86_ : 1'b0;
  assign n_4_net__85_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__85_ : 1'b0;
  assign n_4_net__84_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__84_ : 1'b0;
  assign n_4_net__83_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__83_ : 1'b0;
  assign n_4_net__82_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__82_ : 1'b0;
  assign n_4_net__81_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__81_ : 1'b0;
  assign n_4_net__80_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__80_ : 1'b0;
  assign n_4_net__79_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__79_ : 1'b0;
  assign n_4_net__78_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__78_ : 1'b0;
  assign n_4_net__77_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__77_ : 1'b0;
  assign n_4_net__76_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__76_ : 1'b0;
  assign n_4_net__75_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__75_ : 1'b0;
  assign n_4_net__74_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__74_ : 1'b0;
  assign n_4_net__73_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__73_ : 1'b0;
  assign n_4_net__72_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__72_ : 1'b0;
  assign n_4_net__71_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__71_ : 1'b0;
  assign n_4_net__70_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__70_ : 1'b0;
  assign n_4_net__69_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__69_ : 1'b0;
  assign n_4_net__68_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__68_ : 1'b0;
  assign n_4_net__67_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__67_ : 1'b0;
  assign n_4_net__66_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__66_ : 1'b0;
  assign n_4_net__65_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__65_ : 1'b0;
  assign n_4_net__64_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__64_ : 1'b0;
  assign n_4_net__63_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__63_ : 1'b0;
  assign n_4_net__62_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__62_ : 1'b0;
  assign n_4_net__61_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__61_ : 1'b0;
  assign n_4_net__60_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__60_ : 1'b0;
  assign n_4_net__59_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__59_ : 1'b0;
  assign n_4_net__58_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__58_ : 1'b0;
  assign n_4_net__57_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__57_ : 1'b0;
  assign n_4_net__56_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__56_ : 1'b0;
  assign n_4_net__55_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__55_ : 1'b0;
  assign n_4_net__54_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__54_ : 1'b0;
  assign n_4_net__53_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__53_ : 1'b0;
  assign n_4_net__52_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__52_ : 1'b0;
  assign n_4_net__51_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__51_ : 1'b0;
  assign n_4_net__50_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__50_ : 1'b0;
  assign n_4_net__49_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__49_ : 1'b0;
  assign n_4_net__48_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__48_ : 1'b0;
  assign n_4_net__47_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__47_ : 1'b0;
  assign n_4_net__46_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__46_ : 1'b0;
  assign n_4_net__45_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__45_ : 1'b0;
  assign n_4_net__44_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__44_ : 1'b0;
  assign n_4_net__43_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__43_ : 1'b0;
  assign n_4_net__42_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__42_ : 1'b0;
  assign n_4_net__41_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__41_ : 1'b0;
  assign n_4_net__40_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__40_ : 1'b0;
  assign n_4_net__39_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__39_ : 1'b0;
  assign n_4_net__38_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__38_ : 1'b0;
  assign n_4_net__37_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__37_ : 1'b0;
  assign n_4_net__36_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__36_ : 1'b0;
  assign n_4_net__35_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__35_ : 1'b0;
  assign n_4_net__34_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__34_ : 1'b0;
  assign n_4_net__33_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__33_ : 1'b0;
  assign n_4_net__32_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__32_ : 1'b0;
  assign n_4_net__31_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__31_ : 1'b0;
  assign n_4_net__30_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__30_ : 1'b0;
  assign n_4_net__29_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__29_ : 1'b0;
  assign n_4_net__28_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__28_ : 1'b0;
  assign n_4_net__27_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__27_ : 1'b0;
  assign n_4_net__26_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__26_ : 1'b0;
  assign n_4_net__25_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__25_ : 1'b0;
  assign n_4_net__24_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__24_ : 1'b0;
  assign n_4_net__23_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__23_ : 1'b0;
  assign n_4_net__22_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__22_ : 1'b0;
  assign n_4_net__21_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__21_ : 1'b0;
  assign n_4_net__20_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__20_ : 1'b0;
  assign n_4_net__19_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__19_ : 1'b0;
  assign n_4_net__18_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__18_ : 1'b0;
  assign n_4_net__17_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__17_ : 1'b0;
  assign n_4_net__16_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__16_ : 1'b0;
  assign n_4_net__15_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__15_ : 1'b0;
  assign n_4_net__14_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__14_ : 1'b0;
  assign n_4_net__13_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__13_ : 1'b0;
  assign n_4_net__12_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__12_ : 1'b0;
  assign n_4_net__11_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__11_ : 1'b0;
  assign n_4_net__10_ = (N34)? 1'b0 : 
                        (N36)? 1'b0 : 
                        (N38)? 1'b0 : 
                        (N40)? 1'b0 : 
                        (N35)? 1'b0 : 
                        (N37)? 1'b0 : 
                        (N39)? 1'b0 : 
                        (N41)? data_head_7__10_ : 1'b0;
  assign n_4_net__9_ = (N34)? 1'b0 : 
                       (N36)? 1'b0 : 
                       (N38)? 1'b0 : 
                       (N40)? 1'b0 : 
                       (N35)? 1'b0 : 
                       (N37)? 1'b0 : 
                       (N39)? 1'b0 : 
                       (N41)? data_head_7__9_ : 1'b0;
  assign n_4_net__8_ = (N34)? 1'b0 : 
                       (N36)? 1'b0 : 
                       (N38)? 1'b0 : 
                       (N40)? 1'b0 : 
                       (N35)? 1'b0 : 
                       (N37)? 1'b0 : 
                       (N39)? 1'b0 : 
                       (N41)? data_head_7__8_ : 1'b0;
  assign n_4_net__7_ = (N34)? 1'b0 : 
                       (N36)? 1'b0 : 
                       (N38)? 1'b0 : 
                       (N40)? 1'b0 : 
                       (N35)? 1'b0 : 
                       (N37)? 1'b0 : 
                       (N39)? 1'b0 : 
                       (N41)? data_head_7__7_ : 1'b0;
  assign n_4_net__6_ = (N34)? 1'b0 : 
                       (N36)? 1'b0 : 
                       (N38)? 1'b0 : 
                       (N40)? 1'b0 : 
                       (N35)? 1'b0 : 
                       (N37)? 1'b0 : 
                       (N39)? 1'b0 : 
                       (N41)? data_head_7__6_ : 1'b0;
  assign n_4_net__5_ = (N34)? 1'b0 : 
                       (N36)? 1'b0 : 
                       (N38)? 1'b0 : 
                       (N40)? 1'b0 : 
                       (N35)? 1'b0 : 
                       (N37)? 1'b0 : 
                       (N39)? 1'b0 : 
                       (N41)? data_head_7__5_ : 1'b0;
  assign n_4_net__4_ = (N34)? 1'b0 : 
                       (N36)? 1'b0 : 
                       (N38)? 1'b0 : 
                       (N40)? 1'b0 : 
                       (N35)? 1'b0 : 
                       (N37)? 1'b0 : 
                       (N39)? 1'b0 : 
                       (N41)? data_head_7__4_ : 1'b0;
  assign n_4_net__3_ = (N34)? 1'b0 : 
                       (N36)? 1'b0 : 
                       (N38)? 1'b0 : 
                       (N40)? 1'b0 : 
                       (N35)? 1'b0 : 
                       (N37)? 1'b0 : 
                       (N39)? 1'b0 : 
                       (N41)? data_head_7__3_ : 1'b0;
  assign n_4_net__2_ = (N34)? 1'b0 : 
                       (N36)? 1'b0 : 
                       (N38)? 1'b0 : 
                       (N40)? 1'b0 : 
                       (N35)? 1'b0 : 
                       (N37)? 1'b0 : 
                       (N39)? 1'b0 : 
                       (N41)? data_head_7__2_ : 1'b0;
  assign n_4_net__1_ = (N34)? 1'b0 : 
                       (N36)? 1'b0 : 
                       (N38)? 1'b0 : 
                       (N40)? 1'b0 : 
                       (N35)? 1'b0 : 
                       (N37)? 1'b0 : 
                       (N39)? 1'b0 : 
                       (N41)? data_head_7__1_ : 1'b0;
  assign n_4_net__0_ = (N34)? 1'b0 : 
                       (N36)? 1'b0 : 
                       (N38)? 1'b0 : 
                       (N40)? 1'b0 : 
                       (N35)? 1'b0 : 
                       (N37)? 1'b0 : 
                       (N39)? 1'b0 : 
                       (N41)? data_head_7__0_ : 1'b0;

  bsg_rr_f2f_output_width_p32_num_out_p4_middle_meet_p4
  oc_3__out_chan_bsg_rr_ff_out
  (
    .clk(clk),
    .reset(n_5_net_),
    .ready_i(ready_i),
    .ready_head_o({ ready_head_3__3_, ready_head_3__2_, ready_head_3__1_, ready_head_3__0_ }),
    .go_channels_i(go_channels),
    .go_cnt_i(go_cnt),
    .data_head_i(oc_3__out_chan_data_head_array),
    .valid_o({ valid_int_o_3__3_, valid_int_o_3__2_, valid_int_o_3__1_, valid_int_o_3__0_ }),
    .data_o({ data_int_o_3__127_, data_int_o_3__126_, data_int_o_3__125_, data_int_o_3__124_, data_int_o_3__123_, data_int_o_3__122_, data_int_o_3__121_, data_int_o_3__120_, data_int_o_3__119_, data_int_o_3__118_, data_int_o_3__117_, data_int_o_3__116_, data_int_o_3__115_, data_int_o_3__114_, data_int_o_3__113_, data_int_o_3__112_, data_int_o_3__111_, data_int_o_3__110_, data_int_o_3__109_, data_int_o_3__108_, data_int_o_3__107_, data_int_o_3__106_, data_int_o_3__105_, data_int_o_3__104_, data_int_o_3__103_, data_int_o_3__102_, data_int_o_3__101_, data_int_o_3__100_, data_int_o_3__99_, data_int_o_3__98_, data_int_o_3__97_, data_int_o_3__96_, data_int_o_3__95_, data_int_o_3__94_, data_int_o_3__93_, data_int_o_3__92_, data_int_o_3__91_, data_int_o_3__90_, data_int_o_3__89_, data_int_o_3__88_, data_int_o_3__87_, data_int_o_3__86_, data_int_o_3__85_, data_int_o_3__84_, data_int_o_3__83_, data_int_o_3__82_, data_int_o_3__81_, data_int_o_3__80_, data_int_o_3__79_, data_int_o_3__78_, data_int_o_3__77_, data_int_o_3__76_, data_int_o_3__75_, data_int_o_3__74_, data_int_o_3__73_, data_int_o_3__72_, data_int_o_3__71_, data_int_o_3__70_, data_int_o_3__69_, data_int_o_3__68_, data_int_o_3__67_, data_int_o_3__66_, data_int_o_3__65_, data_int_o_3__64_, data_int_o_3__63_, data_int_o_3__62_, data_int_o_3__61_, data_int_o_3__60_, data_int_o_3__59_, data_int_o_3__58_, data_int_o_3__57_, data_int_o_3__56_, data_int_o_3__55_, data_int_o_3__54_, data_int_o_3__53_, data_int_o_3__52_, data_int_o_3__51_, data_int_o_3__50_, data_int_o_3__49_, data_int_o_3__48_, data_int_o_3__47_, data_int_o_3__46_, data_int_o_3__45_, data_int_o_3__44_, data_int_o_3__43_, data_int_o_3__42_, data_int_o_3__41_, data_int_o_3__40_, data_int_o_3__39_, data_int_o_3__38_, data_int_o_3__37_, data_int_o_3__36_, data_int_o_3__35_, data_int_o_3__34_, data_int_o_3__33_, data_int_o_3__32_, data_int_o_3__31_, data_int_o_3__30_, data_int_o_3__29_, data_int_o_3__28_, data_int_o_3__27_, data_int_o_3__26_, data_int_o_3__25_, data_int_o_3__24_, data_int_o_3__23_, data_int_o_3__22_, data_int_o_3__21_, data_int_o_3__20_, data_int_o_3__19_, data_int_o_3__18_, data_int_o_3__17_, data_int_o_3__16_, data_int_o_3__15_, data_int_o_3__14_, data_int_o_3__13_, data_int_o_3__12_, data_int_o_3__11_, data_int_o_3__10_, data_int_o_3__9_, data_int_o_3__8_, data_int_o_3__7_, data_int_o_3__6_, data_int_o_3__5_, data_int_o_3__4_, data_int_o_3__3_, data_int_o_3__2_, data_int_o_3__1_, data_int_o_3__0_ })
  );

  assign N42 = in_top_channel_i[1] & in_top_channel_i[2];
  assign N43 = in_top_channel_i[0] & N42;
  assign N44 = ~N43;
  assign N45 = out_top_channel_i[0] & out_top_channel_i[1];
  assign N46 = ~N45;
  assign N0 = ~in_top_channel_i[0];
  assign N1 = ~in_top_channel_i[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & in_top_channel_i[1];
  assign N4 = in_top_channel_i[0] & N1;
  assign N5 = in_top_channel_i[0] & in_top_channel_i[1];
  assign N6 = ~in_top_channel_i[2];
  assign N7 = N2 & N6;
  assign N8 = N2 & in_top_channel_i[2];
  assign N9 = N4 & N6;
  assign N10 = N4 & in_top_channel_i[2];
  assign N11 = N3 & N6;
  assign N12 = N3 & in_top_channel_i[2];
  assign N13 = N5 & N6;
  assign N14 = N5 & in_top_channel_i[2];
  assign N15 = ~out_top_channel_i[0];
  assign N16 = ~out_top_channel_i[1];
  assign N17 = N15 & N16;
  assign N18 = N15 & out_top_channel_i[1];
  assign N19 = out_top_channel_i[0] & N16;
  assign N20 = out_top_channel_i[0] & out_top_channel_i[1];
  assign N21 = N15 & N16;
  assign N22 = N15 & out_top_channel_i[1];
  assign N23 = out_top_channel_i[0] & N16;
  assign N24 = out_top_channel_i[0] & out_top_channel_i[1];
  assign n_0_net_ = reset | N44;
  assign N25 = N15 & N16;
  assign N26 = N15 & out_top_channel_i[1];
  assign N27 = out_top_channel_i[0] & N16;
  assign N28 = N2 & N6;
  assign N29 = N2 & in_top_channel_i[2];
  assign N30 = N4 & N6;
  assign N31 = N4 & in_top_channel_i[2];
  assign N32 = N3 & N6;
  assign N33 = N3 & in_top_channel_i[2];
  assign N34 = N2 & N6;
  assign N35 = N2 & in_top_channel_i[2];
  assign N36 = N4 & N6;
  assign N37 = N4 & in_top_channel_i[2];
  assign N38 = N3 & N6;
  assign N39 = N3 & in_top_channel_i[2];
  assign N40 = N5 & N6;
  assign N41 = N5 & in_top_channel_i[2];
  assign n_5_net_ = reset | N46;

endmodule

