

module top
(
  clk_i,
  reset_i,
  miss_v_i,
  track_miss_i,
  decode_v_i,
  addr_v_i,
  mask_v_i,
  tag_v_i,
  valid_v_i,
  lock_v_i,
  tag_hit_v_i,
  tag_hit_way_id_i,
  tag_hit_found_i,
  sbuf_empty_i,
  tbuf_empty_i,
  dma_cmd_o,
  dma_way_o,
  dma_addr_o,
  dma_done_i,
  track_data_we_o,
  stat_info_i,
  stat_mem_v_o,
  stat_mem_w_o,
  stat_mem_addr_o,
  stat_mem_data_o,
  stat_mem_w_mask_o,
  tag_mem_v_o,
  tag_mem_w_o,
  tag_mem_addr_o,
  tag_mem_data_o,
  tag_mem_w_mask_o,
  track_mem_v_o,
  track_mem_w_o,
  track_mem_addr_o,
  track_mem_w_mask_o,
  track_mem_data_o,
  done_o,
  recover_o,
  chosen_way_o,
  select_snoop_data_r_o,
  ack_i
);

  input [20:0] decode_v_i;
  input [27:0] addr_v_i;
  input [3:0] mask_v_i;
  input [71:0] tag_v_i;
  input [3:0] valid_v_i;
  input [3:0] lock_v_i;
  input [3:0] tag_hit_v_i;
  input [1:0] tag_hit_way_id_i;
  output [3:0] dma_cmd_o;
  output [1:0] dma_way_o;
  output [27:0] dma_addr_o;
  input [6:0] stat_info_i;
  output [5:0] stat_mem_addr_o;
  output [6:0] stat_mem_data_o;
  output [6:0] stat_mem_w_mask_o;
  output [5:0] tag_mem_addr_o;
  output [79:0] tag_mem_data_o;
  output [79:0] tag_mem_w_mask_o;
  output [5:0] track_mem_addr_o;
  output [15:0] track_mem_w_mask_o;
  output [15:0] track_mem_data_o;
  output [1:0] chosen_way_o;
  input clk_i;
  input reset_i;
  input miss_v_i;
  input track_miss_i;
  input tag_hit_found_i;
  input sbuf_empty_i;
  input tbuf_empty_i;
  input dma_done_i;
  input ack_i;
  output track_data_we_o;
  output stat_mem_v_o;
  output stat_mem_w_o;
  output tag_mem_v_o;
  output tag_mem_w_o;
  output track_mem_v_o;
  output track_mem_w_o;
  output done_o;
  output recover_o;
  output select_snoop_data_r_o;

  bsg_cache_miss
  wrapper
  (
    .decode_v_i(decode_v_i),
    .addr_v_i(addr_v_i),
    .mask_v_i(mask_v_i),
    .tag_v_i(tag_v_i),
    .valid_v_i(valid_v_i),
    .lock_v_i(lock_v_i),
    .tag_hit_v_i(tag_hit_v_i),
    .tag_hit_way_id_i(tag_hit_way_id_i),
    .dma_cmd_o(dma_cmd_o),
    .dma_way_o(dma_way_o),
    .dma_addr_o(dma_addr_o),
    .stat_info_i(stat_info_i),
    .stat_mem_addr_o(stat_mem_addr_o),
    .stat_mem_data_o(stat_mem_data_o),
    .stat_mem_w_mask_o(stat_mem_w_mask_o),
    .tag_mem_addr_o(tag_mem_addr_o),
    .tag_mem_data_o(tag_mem_data_o),
    .tag_mem_w_mask_o(tag_mem_w_mask_o),
    .track_mem_addr_o(track_mem_addr_o),
    .track_mem_w_mask_o(track_mem_w_mask_o),
    .track_mem_data_o(track_mem_data_o),
    .chosen_way_o(chosen_way_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .miss_v_i(miss_v_i),
    .track_miss_i(track_miss_i),
    .tag_hit_found_i(tag_hit_found_i),
    .sbuf_empty_i(sbuf_empty_i),
    .tbuf_empty_i(tbuf_empty_i),
    .dma_done_i(dma_done_i),
    .ack_i(ack_i),
    .track_data_we_o(track_data_we_o),
    .stat_mem_v_o(stat_mem_v_o),
    .stat_mem_w_o(stat_mem_w_o),
    .tag_mem_v_o(tag_mem_v_o),
    .tag_mem_w_o(tag_mem_w_o),
    .track_mem_v_o(track_mem_v_o),
    .track_mem_w_o(track_mem_w_o),
    .done_o(done_o),
    .recover_o(recover_o),
    .select_snoop_data_r_o(select_snoop_data_r_o)
  );


endmodule



module bsg_cache_miss
(
  clk_i,
  reset_i,
  miss_v_i,
  track_miss_i,
  decode_v_i,
  addr_v_i,
  mask_v_i,
  tag_v_i,
  valid_v_i,
  lock_v_i,
  tag_hit_v_i,
  tag_hit_way_id_i,
  tag_hit_found_i,
  sbuf_empty_i,
  tbuf_empty_i,
  dma_cmd_o,
  dma_way_o,
  dma_addr_o,
  dma_done_i,
  track_data_we_o,
  stat_info_i,
  stat_mem_v_o,
  stat_mem_w_o,
  stat_mem_addr_o,
  stat_mem_data_o,
  stat_mem_w_mask_o,
  tag_mem_v_o,
  tag_mem_w_o,
  tag_mem_addr_o,
  tag_mem_data_o,
  tag_mem_w_mask_o,
  track_mem_v_o,
  track_mem_w_o,
  track_mem_addr_o,
  track_mem_w_mask_o,
  track_mem_data_o,
  done_o,
  recover_o,
  chosen_way_o,
  select_snoop_data_r_o,
  ack_i
);

  input [20:0] decode_v_i;
  input [27:0] addr_v_i;
  input [3:0] mask_v_i;
  input [71:0] tag_v_i;
  input [3:0] valid_v_i;
  input [3:0] lock_v_i;
  input [3:0] tag_hit_v_i;
  input [1:0] tag_hit_way_id_i;
  output [3:0] dma_cmd_o;
  output [1:0] dma_way_o;
  output [27:0] dma_addr_o;
  input [6:0] stat_info_i;
  output [5:0] stat_mem_addr_o;
  output [6:0] stat_mem_data_o;
  output [6:0] stat_mem_w_mask_o;
  output [5:0] tag_mem_addr_o;
  output [79:0] tag_mem_data_o;
  output [79:0] tag_mem_w_mask_o;
  output [5:0] track_mem_addr_o;
  output [15:0] track_mem_w_mask_o;
  output [15:0] track_mem_data_o;
  output [1:0] chosen_way_o;
  input clk_i;
  input reset_i;
  input miss_v_i;
  input track_miss_i;
  input tag_hit_found_i;
  input sbuf_empty_i;
  input tbuf_empty_i;
  input dma_done_i;
  input ack_i;
  output track_data_we_o;
  output stat_mem_v_o;
  output stat_mem_w_o;
  output tag_mem_v_o;
  output tag_mem_w_o;
  output track_mem_v_o;
  output track_mem_w_o;
  output done_o;
  output recover_o;
  output select_snoop_data_r_o;
  wire [3:0] dma_cmd_o,chosen_way_decode,addr_way_v_decode,flush_way_decode,miss_state_r,
  miss_state_n;
  wire [1:0] dma_way_o,chosen_way_o,invalid_way_id,flush_way_r,lru_way_id,chosen_way_n;
  wire [27:0] dma_addr_o;
  wire [5:0] stat_mem_addr_o,tag_mem_addr_o,track_mem_addr_o;
  wire [6:0] stat_mem_data_o,stat_mem_w_mask_o;
  wire [79:0] tag_mem_data_o,tag_mem_w_mask_o;
  wire [15:0] track_mem_w_mask_o,track_mem_data_o;
  wire track_data_we_o,stat_mem_v_o,stat_mem_w_o,tag_mem_v_o,tag_mem_w_o,track_mem_v_o,
  track_mem_w_o,done_o,recover_o,select_snoop_data_r_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,
  N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,track_mem_data_o_3__3_,
  _0_net__3_,_0_net__2_,_0_net__1_,_0_net__0_,invalid_exist,goto_flush_op,
  goto_lock_op,N23,N24,full_word_op,st_tag_miss_op,N25,N26,select_snoop_data_n,N27,N28,N29,
  N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,
  N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,
  N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,
  N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,
  N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,
  N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,
  N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,
  N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,
  N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,
  N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,
  N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,
  N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,N230,N231,N232,N233,N234,N235,
  N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,N246,N247,N248,N249,N250,N251,
  N252,N253,N254,N255,N256,N257,N258,N259,N260,N261,N262,N263,N264;
  wire [2:0] chosen_way_lru_data,chosen_way_lru_mask,modify_mask_lo,modify_data_lo,
  modified_lru_bits;
  reg track_data_we_o_sv2v_reg,miss_state_r_3_sv2v_reg,miss_state_r_2_sv2v_reg,
  miss_state_r_1_sv2v_reg,miss_state_r_0_sv2v_reg,chosen_way_o_1_sv2v_reg,
  chosen_way_o_0_sv2v_reg,flush_way_r_1_sv2v_reg,flush_way_r_0_sv2v_reg,
  select_snoop_data_r_o_sv2v_reg;
  assign track_data_we_o = track_data_we_o_sv2v_reg;
  assign miss_state_r[3] = miss_state_r_3_sv2v_reg;
  assign miss_state_r[2] = miss_state_r_2_sv2v_reg;
  assign miss_state_r[1] = miss_state_r_1_sv2v_reg;
  assign miss_state_r[0] = miss_state_r_0_sv2v_reg;
  assign chosen_way_o[1] = chosen_way_o_1_sv2v_reg;
  assign chosen_way_o[0] = chosen_way_o_0_sv2v_reg;
  assign flush_way_r[1] = flush_way_r_1_sv2v_reg;
  assign flush_way_r[0] = flush_way_r_0_sv2v_reg;
  assign select_snoop_data_r_o = select_snoop_data_r_o_sv2v_reg;
  assign dma_addr_o[0] = 1'b0;
  assign dma_addr_o[1] = 1'b0;
  assign stat_mem_addr_o[5] = addr_v_i[9];
  assign track_mem_addr_o[5] = stat_mem_addr_o[5];
  assign tag_mem_addr_o[5] = stat_mem_addr_o[5];
  assign stat_mem_addr_o[4] = addr_v_i[8];
  assign track_mem_addr_o[4] = stat_mem_addr_o[4];
  assign tag_mem_addr_o[4] = stat_mem_addr_o[4];
  assign stat_mem_addr_o[3] = addr_v_i[7];
  assign track_mem_addr_o[3] = stat_mem_addr_o[3];
  assign tag_mem_addr_o[3] = stat_mem_addr_o[3];
  assign stat_mem_addr_o[2] = addr_v_i[6];
  assign track_mem_addr_o[2] = stat_mem_addr_o[2];
  assign tag_mem_addr_o[2] = stat_mem_addr_o[2];
  assign stat_mem_addr_o[1] = addr_v_i[5];
  assign track_mem_addr_o[1] = stat_mem_addr_o[1];
  assign tag_mem_addr_o[1] = stat_mem_addr_o[1];
  assign stat_mem_addr_o[0] = addr_v_i[4];
  assign track_mem_addr_o[0] = stat_mem_addr_o[0];
  assign tag_mem_addr_o[0] = stat_mem_addr_o[0];
  assign track_mem_data_o[0] = track_mem_data_o_3__3_;
  assign track_mem_data_o[1] = track_mem_data_o_3__3_;
  assign track_mem_data_o[2] = track_mem_data_o_3__3_;
  assign track_mem_data_o[3] = track_mem_data_o_3__3_;
  assign track_mem_data_o[4] = track_mem_data_o_3__3_;
  assign track_mem_data_o[5] = track_mem_data_o_3__3_;
  assign track_mem_data_o[6] = track_mem_data_o_3__3_;
  assign track_mem_data_o[7] = track_mem_data_o_3__3_;
  assign track_mem_data_o[8] = track_mem_data_o_3__3_;
  assign track_mem_data_o[9] = track_mem_data_o_3__3_;
  assign track_mem_data_o[10] = track_mem_data_o_3__3_;
  assign track_mem_data_o[11] = track_mem_data_o_3__3_;
  assign track_mem_data_o[12] = track_mem_data_o_3__3_;
  assign track_mem_data_o[13] = track_mem_data_o_3__3_;
  assign track_mem_data_o[14] = track_mem_data_o_3__3_;
  assign track_mem_data_o[15] = track_mem_data_o_3__3_;
  assign dma_cmd_o[2] = track_mem_data_o_3__3_;

  bsg_priority_encode
  invalid_way_pe
  (
    .i({ _0_net__3_, _0_net__2_, _0_net__1_, _0_net__0_ }),
    .addr_o(invalid_way_id),
    .v_o(invalid_exist)
  );


  bsg_lru_pseudo_tree_decode
  chosen_way_lru_decode
  (
    .way_id_i(chosen_way_o),
    .data_o(chosen_way_lru_data),
    .mask_o(chosen_way_lru_mask)
  );


  bsg_lru_pseudo_tree_backup
  backup_lru
  (
    .disabled_ways_i(lock_v_i),
    .modify_mask_o(modify_mask_lo),
    .modify_data_o(modify_data_lo)
  );


  bsg_mux_bitwise
  lru_bit_mux
  (
    .data0_i(stat_info_i[2:0]),
    .data1_i(modify_data_lo),
    .sel_i(modify_mask_lo),
    .data_o(modified_lru_bits)
  );


  bsg_lru_pseudo_tree_encode
  lru_encode
  (
    .lru_i(modified_lru_bits),
    .way_id_o(lru_way_id)
  );


  bsg_decode
  chosen_way_demux
  (
    .i(chosen_way_n),
    .o(chosen_way_decode)
  );


  bsg_decode
  addr_way_v_demux
  (
    .i(addr_v_i[11:10]),
    .o(addr_way_v_decode)
  );

  assign N31 = N27 & N28;
  assign N32 = N29 & N30;
  assign N33 = N31 & N32;
  assign N34 = miss_state_r[3] | N28;
  assign N35 = miss_state_r[1] | miss_state_r[0];
  assign N36 = N34 | N35;
  assign N38 = miss_state_r[3] | miss_state_r[2];
  assign N39 = miss_state_r[1] | N30;
  assign N40 = N38 | N39;
  assign N42 = miss_state_r[3] | miss_state_r[2];
  assign N43 = N29 | miss_state_r[0];
  assign N44 = N42 | N43;
  assign N46 = miss_state_r[3] | miss_state_r[2];
  assign N47 = N29 | N30;
  assign N48 = N46 | N47;
  assign N50 = miss_state_r[3] | N28;
  assign N51 = miss_state_r[1] | N30;
  assign N52 = N50 | N51;
  assign N54 = miss_state_r[3] | N28;
  assign N55 = N29 | miss_state_r[0];
  assign N56 = N54 | N55;
  assign N58 = miss_state_r[3] | N28;
  assign N59 = N29 | N30;
  assign N60 = N58 | N59;
  assign N62 = N27 | miss_state_r[2];
  assign N63 = miss_state_r[1] | miss_state_r[0];
  assign N64 = N62 | N63;
  assign N66 = N27 | miss_state_r[2];
  assign N67 = miss_state_r[1] | N30;
  assign N68 = N66 | N67;
  assign N70 = N27 | miss_state_r[2];
  assign N71 = N29 | miss_state_r[0];
  assign N72 = N70 | N71;
  assign N74 = miss_state_r[3] & miss_state_r[1];
  assign N75 = N74 & miss_state_r[0];
  assign N76 = miss_state_r[3] & miss_state_r[2];
  assign N99 = (N95)? stat_info_i[3] : 
               (N97)? stat_info_i[4] : 
               (N96)? stat_info_i[5] : 
               (N98)? stat_info_i[6] : 1'b0;
  assign N100 = (N95)? valid_v_i[0] : 
                (N97)? valid_v_i[1] : 
                (N96)? valid_v_i[2] : 
                (N98)? valid_v_i[3] : 1'b0;
  assign N121 = (N117)? stat_info_i[3] : 
                (N119)? stat_info_i[4] : 
                (N118)? stat_info_i[5] : 
                (N120)? stat_info_i[6] : 1'b0;
  assign N122 = (N117)? valid_v_i[0] : 
                (N119)? valid_v_i[1] : 
                (N118)? valid_v_i[2] : 
                (N120)? valid_v_i[3] : 1'b0;
  assign N131 = (N127)? tag_v_i[17] : 
                (N129)? tag_v_i[35] : 
                (N128)? tag_v_i[53] : 
                (N130)? tag_v_i[71] : 1'b0;
  assign N132 = (N127)? tag_v_i[16] : 
                (N129)? tag_v_i[34] : 
                (N128)? tag_v_i[52] : 
                (N130)? tag_v_i[70] : 1'b0;
  assign N133 = (N127)? tag_v_i[15] : 
                (N129)? tag_v_i[33] : 
                (N128)? tag_v_i[51] : 
                (N130)? tag_v_i[69] : 1'b0;
  assign N134 = (N127)? tag_v_i[14] : 
                (N129)? tag_v_i[32] : 
                (N128)? tag_v_i[50] : 
                (N130)? tag_v_i[68] : 1'b0;
  assign N135 = (N127)? tag_v_i[13] : 
                (N129)? tag_v_i[31] : 
                (N128)? tag_v_i[49] : 
                (N130)? tag_v_i[67] : 1'b0;
  assign N136 = (N127)? tag_v_i[12] : 
                (N129)? tag_v_i[30] : 
                (N128)? tag_v_i[48] : 
                (N130)? tag_v_i[66] : 1'b0;
  assign N137 = (N127)? tag_v_i[11] : 
                (N129)? tag_v_i[29] : 
                (N128)? tag_v_i[47] : 
                (N130)? tag_v_i[65] : 1'b0;
  assign N138 = (N127)? tag_v_i[10] : 
                (N129)? tag_v_i[28] : 
                (N128)? tag_v_i[46] : 
                (N130)? tag_v_i[64] : 1'b0;
  assign N139 = (N127)? tag_v_i[9] : 
                (N129)? tag_v_i[27] : 
                (N128)? tag_v_i[45] : 
                (N130)? tag_v_i[63] : 1'b0;
  assign N140 = (N127)? tag_v_i[8] : 
                (N129)? tag_v_i[26] : 
                (N128)? tag_v_i[44] : 
                (N130)? tag_v_i[62] : 1'b0;
  assign N141 = (N127)? tag_v_i[7] : 
                (N129)? tag_v_i[25] : 
                (N128)? tag_v_i[43] : 
                (N130)? tag_v_i[61] : 1'b0;
  assign N142 = (N127)? tag_v_i[6] : 
                (N129)? tag_v_i[24] : 
                (N128)? tag_v_i[42] : 
                (N130)? tag_v_i[60] : 1'b0;
  assign N143 = (N127)? tag_v_i[5] : 
                (N129)? tag_v_i[23] : 
                (N128)? tag_v_i[41] : 
                (N130)? tag_v_i[59] : 1'b0;
  assign N144 = (N127)? tag_v_i[4] : 
                (N129)? tag_v_i[22] : 
                (N128)? tag_v_i[40] : 
                (N130)? tag_v_i[58] : 1'b0;
  assign N145 = (N127)? tag_v_i[3] : 
                (N129)? tag_v_i[21] : 
                (N128)? tag_v_i[39] : 
                (N130)? tag_v_i[57] : 1'b0;
  assign N146 = (N127)? tag_v_i[2] : 
                (N129)? tag_v_i[20] : 
                (N128)? tag_v_i[38] : 
                (N130)? tag_v_i[56] : 1'b0;
  assign N147 = (N127)? tag_v_i[1] : 
                (N129)? tag_v_i[19] : 
                (N128)? tag_v_i[37] : 
                (N130)? tag_v_i[55] : 1'b0;
  assign N148 = (N127)? tag_v_i[0] : 
                (N129)? tag_v_i[18] : 
                (N128)? tag_v_i[36] : 
                (N130)? tag_v_i[54] : 1'b0;
  assign N154 = (N150)? tag_v_i[17] : 
                (N152)? tag_v_i[35] : 
                (N151)? tag_v_i[53] : 
                (N153)? tag_v_i[71] : 1'b0;
  assign N155 = (N150)? tag_v_i[16] : 
                (N152)? tag_v_i[34] : 
                (N151)? tag_v_i[52] : 
                (N153)? tag_v_i[70] : 1'b0;
  assign N156 = (N150)? tag_v_i[15] : 
                (N152)? tag_v_i[33] : 
                (N151)? tag_v_i[51] : 
                (N153)? tag_v_i[69] : 1'b0;
  assign N157 = (N150)? tag_v_i[14] : 
                (N152)? tag_v_i[32] : 
                (N151)? tag_v_i[50] : 
                (N153)? tag_v_i[68] : 1'b0;
  assign N158 = (N150)? tag_v_i[13] : 
                (N152)? tag_v_i[31] : 
                (N151)? tag_v_i[49] : 
                (N153)? tag_v_i[67] : 1'b0;
  assign N159 = (N150)? tag_v_i[12] : 
                (N152)? tag_v_i[30] : 
                (N151)? tag_v_i[48] : 
                (N153)? tag_v_i[66] : 1'b0;
  assign N160 = (N150)? tag_v_i[11] : 
                (N152)? tag_v_i[29] : 
                (N151)? tag_v_i[47] : 
                (N153)? tag_v_i[65] : 1'b0;
  assign N161 = (N150)? tag_v_i[10] : 
                (N152)? tag_v_i[28] : 
                (N151)? tag_v_i[46] : 
                (N153)? tag_v_i[64] : 1'b0;
  assign N162 = (N150)? tag_v_i[9] : 
                (N152)? tag_v_i[27] : 
                (N151)? tag_v_i[45] : 
                (N153)? tag_v_i[63] : 1'b0;
  assign N163 = (N150)? tag_v_i[8] : 
                (N152)? tag_v_i[26] : 
                (N151)? tag_v_i[44] : 
                (N153)? tag_v_i[62] : 1'b0;
  assign N164 = (N150)? tag_v_i[7] : 
                (N152)? tag_v_i[25] : 
                (N151)? tag_v_i[43] : 
                (N153)? tag_v_i[61] : 1'b0;
  assign N165 = (N150)? tag_v_i[6] : 
                (N152)? tag_v_i[24] : 
                (N151)? tag_v_i[42] : 
                (N153)? tag_v_i[60] : 1'b0;
  assign N166 = (N150)? tag_v_i[5] : 
                (N152)? tag_v_i[23] : 
                (N151)? tag_v_i[41] : 
                (N153)? tag_v_i[59] : 1'b0;
  assign N167 = (N150)? tag_v_i[4] : 
                (N152)? tag_v_i[22] : 
                (N151)? tag_v_i[40] : 
                (N153)? tag_v_i[58] : 1'b0;
  assign N168 = (N150)? tag_v_i[3] : 
                (N152)? tag_v_i[21] : 
                (N151)? tag_v_i[39] : 
                (N153)? tag_v_i[57] : 1'b0;
  assign N169 = (N150)? tag_v_i[2] : 
                (N152)? tag_v_i[20] : 
                (N151)? tag_v_i[38] : 
                (N153)? tag_v_i[56] : 1'b0;
  assign N170 = (N150)? tag_v_i[1] : 
                (N152)? tag_v_i[19] : 
                (N151)? tag_v_i[37] : 
                (N153)? tag_v_i[55] : 1'b0;
  assign N171 = (N150)? tag_v_i[0] : 
                (N152)? tag_v_i[18] : 
                (N151)? tag_v_i[36] : 
                (N153)? tag_v_i[54] : 1'b0;
  assign N195 = (N191)? stat_info_i[3] : 
                (N193)? stat_info_i[4] : 
                (N192)? stat_info_i[5] : 
                (N194)? stat_info_i[6] : 1'b0;
  assign N196 = (N191)? valid_v_i[0] : 
                (N193)? valid_v_i[1] : 
                (N192)? valid_v_i[2] : 
                (N194)? valid_v_i[3] : 1'b0;
  assign full_word_op = (N0)? N24 : 
                        (N23)? decode_v_i[20] : 1'b0;
  assign N0 = decode_v_i[17];
  assign dma_way_o = (N1)? flush_way_r : 
                     (N2)? chosen_way_o : 1'b0;
  assign N1 = goto_flush_op;
  assign N2 = N25;
  assign flush_way_decode = (N3)? addr_way_v_decode : 
                            (N26)? tag_hit_v_i : 1'b0;
  assign N3 = decode_v_i[13];
  assign { N85, N84, N83 } = (N1)? { 1'b0, 1'b0, 1'b1 } : 
                             (N203)? { 1'b0, 1'b1, 1'b0 } : 
                             (N206)? { 1'b1, 1'b1, 1'b1 } : 
                             (N82)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign { N88, N87, N86 } = (N4)? { N85, N84, N83 } : 
                             (N79)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N4 = N78;
  assign { N92, N91 } = (N5)? tag_hit_way_id_i : 
                        (N208)? invalid_way_id : 
                        (N90)? lru_way_id : 1'b0;
  assign N5 = track_miss_i;
  assign N102 = ~N101;
  assign { N104, N103 } = (N6)? { N102, N101 } : 
                          (N7)? { 1'b1, 1'b0 } : 1'b0;
  assign N6 = dma_done_i;
  assign N7 = N149;
  assign { N106, N105 } = (N3)? addr_v_i[11:10] : 
                          (N26)? tag_hit_way_id_i : 1'b0;
  assign N124 = ~N123;
  assign N176 = ~N175;
  assign { N180, N179, N178, N177 } = (N6)? { N175, N176, N176, N175 } : 
                                      (N7)? { 1'b0, 1'b1, 1'b0, 1'b1 } : 1'b0;
  assign { N185, N184, N183, N182 } = (N5)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                      (N8)? chosen_way_decode : 1'b0;
  assign N8 = N250;
  assign { N188, N187 } = (N9)? invalid_way_id : 
                          (N10)? lru_way_id : 1'b0;
  assign N9 = invalid_exist;
  assign N10 = N186;
  assign N198 = ~N197;
  assign stat_mem_v_o = (N11)? N78 : 
                        (N12)? 1'b0 : 
                        (N13)? 1'b1 : 
                        (N14)? 1'b0 : 
                        (N15)? 1'b0 : 
                        (N16)? N172 : 
                        (N17)? dma_done_i : 
                        (N18)? 1'b0 : 
                        (N19)? 1'b1 : 
                        (N20)? 1'b0 : 
                        (N21)? 1'b0 : 
                        (N22)? 1'b0 : 1'b0;
  assign N11 = N33;
  assign N12 = dma_cmd_o[0];
  assign N13 = N41;
  assign N14 = N45;
  assign N15 = dma_cmd_o[1];
  assign N16 = dma_cmd_o[3];
  assign N17 = track_mem_data_o_3__3_;
  assign N18 = N61;
  assign N19 = N65;
  assign N20 = N69;
  assign N21 = N73;
  assign N22 = N77;
  assign track_mem_v_o = (N11)? N78 : 
                         (N12)? 1'b0 : 
                         (N13)? 1'b0 : 
                         (N14)? 1'b0 : 
                         (N15)? 1'b0 : 
                         (N16)? N174 : 
                         (N17)? dma_done_i : 
                         (N18)? 1'b0 : 
                         (N19)? 1'b1 : 
                         (N20)? 1'b0 : 
                         (N21)? 1'b0 : 
                         (N22)? 1'b0 : 1'b0;
  assign miss_state_n = (N11)? { 1'b0, N88, N87, N86 } : 
                        (N12)? { 1'b0, N104, dma_done_i, N103 } : 
                        (N13)? { N124, 1'b0, N123, 1'b1 } : 
                        (N14)? { 1'b1, 1'b0, 1'b0, 1'b1 } : 
                        (N15)? { 1'b0, dma_done_i, N149, 1'b1 } : 
                        (N16)? { N180, N179, N178, N177 } : 
                        (N17)? { dma_done_i, N149, N149, dma_done_i } : 
                        (N18)? { N198, 1'b0, N197, N197 } : 
                        (N19)? { 1'b1, 1'b0, 1'b0, 1'b1 } : 
                        (N20)? { 1'b1, 1'b0, 1'b1, 1'b0 } : 
                        (N21)? { N199, 1'b0, N199, 1'b0 } : 
                        (N22)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign chosen_way_n = (N11)? chosen_way_o : 
                        (N12)? { N92, N91 } : 
                        (N13)? chosen_way_o : 
                        (N14)? chosen_way_o : 
                        (N15)? chosen_way_o : 
                        (N16)? chosen_way_o : 
                        (N17)? chosen_way_o : 
                        (N18)? { N188, N187 } : 
                        (N19)? chosen_way_o : 
                        (N20)? chosen_way_o : 
                        (N21)? chosen_way_o : 
                        (N22)? chosen_way_o : 1'b0;
  assign dma_addr_o[3:2] = (N17)? addr_v_i[3:2] : 
                           (N201)? { 1'b0, 1'b0 } : 1'b0;
  assign dma_addr_o[27:4] = (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N12)? { addr_v_i[27:10], stat_mem_addr_o } : 
                            (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N15)? { N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, stat_mem_addr_o } : 
                            (N16)? { N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166, N167, N168, N169, N170, N171, stat_mem_addr_o } : 
                            (N17)? { addr_v_i[27:10], stat_mem_addr_o } : 
                            (N18)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N19)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N20)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N21)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign stat_mem_w_o = (N11)? 1'b0 : 
                        (N12)? 1'b0 : 
                        (N13)? 1'b1 : 
                        (N14)? 1'b0 : 
                        (N15)? 1'b0 : 
                        (N16)? 1'b1 : 
                        (N17)? 1'b1 : 
                        (N18)? 1'b0 : 
                        (N19)? 1'b1 : 
                        (N20)? 1'b0 : 
                        (N21)? 1'b0 : 
                        (N22)? 1'b0 : 1'b0;
  assign stat_mem_data_o = (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N16)? { 1'b1, 1'b1, 1'b1, 1'b1, chosen_way_lru_data } : 
                           (N17)? { N181, N181, N181, N181, chosen_way_lru_data } : 
                           (N18)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N19)? { 1'b1, 1'b1, 1'b1, 1'b1, chosen_way_lru_data } : 
                           (N20)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N21)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign stat_mem_w_mask_o = (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N13)? { flush_way_decode, 1'b0, 1'b0, 1'b0 } : 
                             (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N16)? { chosen_way_decode, chosen_way_lru_mask } : 
                             (N17)? { N185, N184, N183, N182, chosen_way_lru_mask } : 
                             (N18)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N19)? { chosen_way_decode, chosen_way_lru_mask } : 
                             (N20)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N21)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign tag_mem_v_o = (N11)? 1'b0 : 
                       (N12)? 1'b0 : 
                       (N13)? 1'b1 : 
                       (N14)? 1'b1 : 
                       (N15)? 1'b0 : 
                       (N16)? N173 : 
                       (N17)? dma_done_i : 
                       (N18)? 1'b0 : 
                       (N19)? 1'b1 : 
                       (N20)? 1'b0 : 
                       (N21)? 1'b0 : 
                       (N22)? 1'b0 : 1'b0;
  assign tag_mem_w_o = (N11)? 1'b0 : 
                       (N12)? 1'b0 : 
                       (N13)? 1'b1 : 
                       (N14)? 1'b1 : 
                       (N15)? 1'b0 : 
                       (N16)? 1'b1 : 
                       (N17)? 1'b1 : 
                       (N18)? 1'b0 : 
                       (N19)? 1'b1 : 
                       (N20)? 1'b0 : 
                       (N21)? 1'b0 : 
                       (N22)? 1'b0 : 1'b0;
  assign tag_mem_w_mask_o = (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N13)? { N113, N114, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N111, N112, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N109, N110, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N107, N108, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N14)? { 1'b0, tag_hit_v_i[3:3], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, tag_hit_v_i[2:2], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, tag_hit_v_i[1:1], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, tag_hit_v_i[0:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N16)? { chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                            (N17)? { chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                            (N18)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N19)? { chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                            (N20)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N21)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign tag_mem_data_o = (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N14)? { 1'b0, decode_v_i[7:7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, decode_v_i[7:7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, decode_v_i[7:7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, decode_v_i[7:7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N16)? { 1'b1, decode_v_i[7:7], addr_v_i[27:10], 1'b1, decode_v_i[7:7], addr_v_i[27:10], 1'b1, decode_v_i[7:7], addr_v_i[27:10], 1'b1, decode_v_i[7:7], addr_v_i[27:10] } : 
                          (N17)? { 1'b1, decode_v_i[7:7], addr_v_i[27:10], 1'b1, decode_v_i[7:7], addr_v_i[27:10], 1'b1, decode_v_i[7:7], addr_v_i[27:10], 1'b1, decode_v_i[7:7], addr_v_i[27:10] } : 
                          (N18)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N19)? { 1'b1, decode_v_i[7:7], addr_v_i[27:10], 1'b1, decode_v_i[7:7], addr_v_i[27:10], 1'b1, decode_v_i[7:7], addr_v_i[27:10], 1'b1, decode_v_i[7:7], addr_v_i[27:10] } : 
                          (N20)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N21)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign track_mem_w_o = (N11)? 1'b0 : 
                         (N12)? 1'b0 : 
                         (N13)? 1'b0 : 
                         (N14)? 1'b0 : 
                         (N15)? 1'b0 : 
                         (N16)? 1'b1 : 
                         (N17)? 1'b1 : 
                         (N18)? 1'b0 : 
                         (N19)? 1'b1 : 
                         (N20)? 1'b0 : 
                         (N21)? 1'b0 : 
                         (N22)? 1'b0 : 1'b0;
  assign track_mem_w_mask_o = (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N16)? { chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                              (N17)? { chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                              (N18)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N19)? { chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                              (N20)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N21)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign select_snoop_data_n = (N17)? 1'b1 : 
                               (N21)? 1'b0 : 1'b0;
  assign recover_o = (N11)? 1'b0 : 
                     (N12)? 1'b0 : 
                     (N13)? 1'b0 : 
                     (N14)? 1'b0 : 
                     (N15)? 1'b0 : 
                     (N16)? 1'b0 : 
                     (N17)? 1'b0 : 
                     (N18)? 1'b0 : 
                     (N19)? 1'b0 : 
                     (N20)? 1'b1 : 
                     (N21)? 1'b0 : 
                     (N22)? 1'b0 : 1'b0;
  assign done_o = (N11)? 1'b0 : 
                  (N12)? 1'b0 : 
                  (N13)? 1'b0 : 
                  (N14)? 1'b0 : 
                  (N15)? 1'b0 : 
                  (N16)? 1'b0 : 
                  (N17)? 1'b0 : 
                  (N18)? 1'b0 : 
                  (N19)? 1'b0 : 
                  (N20)? 1'b0 : 
                  (N21)? 1'b1 : 
                  (N22)? 1'b0 : 1'b0;
  assign _0_net__3_ = N234 & N235;
  assign N234 = ~valid_v_i[3];
  assign N235 = ~lock_v_i[3];
  assign _0_net__2_ = N236 & N237;
  assign N236 = ~valid_v_i[2];
  assign N237 = ~lock_v_i[2];
  assign _0_net__1_ = N238 & N239;
  assign N238 = ~valid_v_i[1];
  assign N239 = ~lock_v_i[1];
  assign _0_net__0_ = N240 & N241;
  assign N240 = ~valid_v_i[0];
  assign N241 = ~lock_v_i[0];
  assign goto_flush_op = N243 | decode_v_i[9];
  assign N243 = N242 | decode_v_i[10];
  assign N242 = decode_v_i[13] | decode_v_i[8];
  assign goto_lock_op = decode_v_i[6] | N244;
  assign N244 = decode_v_i[7] & tag_hit_found_i;
  assign N23 = ~decode_v_i[17];
  assign N24 = N246 & mask_v_i[0];
  assign N246 = N245 & mask_v_i[1];
  assign N245 = mask_v_i[3] & mask_v_i[2];
  assign st_tag_miss_op = N247 & N248;
  assign N247 = decode_v_i[15] & full_word_op;
  assign N248 = ~tag_hit_found_i;
  assign N25 = ~goto_flush_op;
  assign N26 = ~decode_v_i[13];
  assign N27 = ~miss_state_r[3];
  assign N28 = ~miss_state_r[2];
  assign N29 = ~miss_state_r[1];
  assign N30 = ~miss_state_r[0];
  assign N37 = ~N36;
  assign N41 = ~N40;
  assign N45 = ~N44;
  assign N49 = ~N48;
  assign N53 = ~N52;
  assign N57 = ~N56;
  assign N61 = ~N60;
  assign N65 = ~N64;
  assign N69 = ~N68;
  assign N73 = ~N72;
  assign N77 = N75 | N76;
  assign dma_cmd_o[0] = N37;
  assign dma_cmd_o[1] = N49;
  assign dma_cmd_o[3] = N53;
  assign track_mem_data_o_3__3_ = N57;
  assign N78 = N249 & tbuf_empty_i;
  assign N249 = miss_v_i & sbuf_empty_i;
  assign N79 = ~N78;
  assign N80 = goto_lock_op | goto_flush_op;
  assign N81 = st_tag_miss_op | N80;
  assign N82 = ~N81;
  assign N89 = invalid_exist | track_miss_i;
  assign N90 = ~N89;
  assign N93 = ~N91;
  assign N94 = ~N92;
  assign N95 = N93 & N94;
  assign N96 = N93 & N92;
  assign N97 = N91 & N94;
  assign N98 = N91 & N92;
  assign N101 = N251 & N100;
  assign N251 = N250 & N99;
  assign N250 = ~track_miss_i;
  assign N107 = N252 & flush_way_decode[0];
  assign N252 = decode_v_i[8] | decode_v_i[9];
  assign N108 = N253 & flush_way_decode[0];
  assign N253 = decode_v_i[8] | decode_v_i[9];
  assign N109 = N254 & flush_way_decode[1];
  assign N254 = decode_v_i[8] | decode_v_i[9];
  assign N110 = N255 & flush_way_decode[1];
  assign N255 = decode_v_i[8] | decode_v_i[9];
  assign N111 = N256 & flush_way_decode[2];
  assign N256 = decode_v_i[8] | decode_v_i[9];
  assign N112 = N257 & flush_way_decode[2];
  assign N257 = decode_v_i[8] | decode_v_i[9];
  assign N113 = N258 & flush_way_decode[3];
  assign N258 = decode_v_i[8] | decode_v_i[9];
  assign N114 = N259 & flush_way_decode[3];
  assign N259 = decode_v_i[8] | decode_v_i[9];
  assign N115 = ~N105;
  assign N116 = ~N106;
  assign N117 = N115 & N116;
  assign N118 = N115 & N106;
  assign N119 = N105 & N116;
  assign N120 = N105 & N106;
  assign N123 = N261 & N122;
  assign N261 = N260 & N121;
  assign N260 = ~decode_v_i[8];
  assign N125 = ~dma_way_o[0];
  assign N126 = ~dma_way_o[1];
  assign N127 = N125 & N126;
  assign N128 = N125 & dma_way_o[1];
  assign N129 = dma_way_o[0] & N126;
  assign N130 = dma_way_o[0] & dma_way_o[1];
  assign N149 = ~dma_done_i;
  assign N150 = N125 & N126;
  assign N151 = N125 & dma_way_o[1];
  assign N152 = dma_way_o[0] & N126;
  assign N153 = dma_way_o[0] & dma_way_o[1];
  assign N172 = dma_done_i & st_tag_miss_op;
  assign N173 = dma_done_i & st_tag_miss_op;
  assign N174 = dma_done_i & st_tag_miss_op;
  assign N175 = N263 | st_tag_miss_op;
  assign N263 = N262 | decode_v_i[10];
  assign N262 = decode_v_i[13] | decode_v_i[9];
  assign N181 = decode_v_i[15] | decode_v_i[4];
  assign N186 = ~invalid_exist;
  assign N189 = ~N187;
  assign N190 = ~N188;
  assign N191 = N189 & N190;
  assign N192 = N189 & N188;
  assign N193 = N187 & N190;
  assign N194 = N187 & N188;
  assign N197 = N195 & N196;
  assign N199 = ~ack_i;
  assign N200 = ~track_mem_data_o_3__3_;
  assign N201 = N200;
  assign N202 = ~goto_flush_op;
  assign N203 = goto_lock_op & N202;
  assign N204 = ~goto_lock_op;
  assign N205 = N202 & N204;
  assign N206 = st_tag_miss_op & N205;
  assign N207 = ~track_miss_i;
  assign N208 = invalid_exist & N207;
  assign N209 = track_mem_v_o & N264;
  assign N264 = ~track_mem_w_o;
  assign N210 = N33 | dma_cmd_o[0];
  assign N211 = N210 | N45;
  assign N212 = N211 | dma_cmd_o[1];
  assign N213 = N212 | dma_cmd_o[3];
  assign N214 = N213 | track_mem_data_o_3__3_;
  assign N215 = N214 | N61;
  assign N216 = N215 | N65;
  assign N217 = N216 | N69;
  assign N218 = N217 | N73;
  assign N219 = N218 | N77;
  assign N220 = ~N219;
  assign N221 = N210 | N41;
  assign N222 = N221 | N45;
  assign N223 = N222 | dma_cmd_o[1];
  assign N224 = N223 | dma_cmd_o[3];
  assign N225 = N149 & track_mem_data_o_3__3_;
  assign N226 = N224 | N225;
  assign N227 = N226 | N61;
  assign N228 = N227 | N65;
  assign N229 = N228 | N69;
  assign N230 = N199 & N73;
  assign N231 = N229 | N230;
  assign N232 = N231 | N77;
  assign N233 = ~N232;

  always @(posedge clk_i) begin
    if(reset_i) begin
      track_data_we_o_sv2v_reg <= 1'b0;
      miss_state_r_3_sv2v_reg <= 1'b0;
      miss_state_r_2_sv2v_reg <= 1'b0;
      miss_state_r_1_sv2v_reg <= 1'b0;
      miss_state_r_0_sv2v_reg <= 1'b0;
      chosen_way_o_1_sv2v_reg <= 1'b0;
      chosen_way_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      track_data_we_o_sv2v_reg <= N209;
      miss_state_r_3_sv2v_reg <= miss_state_n[3];
      miss_state_r_2_sv2v_reg <= miss_state_n[2];
      miss_state_r_1_sv2v_reg <= miss_state_n[1];
      miss_state_r_0_sv2v_reg <= miss_state_n[0];
      chosen_way_o_1_sv2v_reg <= chosen_way_n[1];
      chosen_way_o_0_sv2v_reg <= chosen_way_n[0];
    end 
    if(reset_i) begin
      flush_way_r_1_sv2v_reg <= 1'b0;
      flush_way_r_0_sv2v_reg <= 1'b0;
    end else if(N220) begin
      flush_way_r_1_sv2v_reg <= N106;
      flush_way_r_0_sv2v_reg <= N105;
    end 
    if(reset_i) begin
      select_snoop_data_r_o_sv2v_reg <= 1'b0;
    end else if(N233) begin
      select_snoop_data_r_o_sv2v_reg <= select_snoop_data_n;
    end 
  end


endmodule

