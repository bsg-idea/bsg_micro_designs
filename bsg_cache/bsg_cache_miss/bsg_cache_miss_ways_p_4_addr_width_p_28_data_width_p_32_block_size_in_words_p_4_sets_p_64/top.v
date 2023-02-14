

module top
(
  clk_i,
  reset_i,
  miss_v_i,
  decode_v_i,
  addr_v_i,
  tag_v_i,
  valid_v_i,
  lock_v_i,
  tag_hit_way_id_i,
  tag_hit_found_i,
  sbuf_empty_i,
  dma_cmd_o,
  dma_way_o,
  dma_addr_o,
  dma_done_i,
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
  done_o,
  recover_o,
  chosen_way_o,
  ack_i
);

  input [18:0] decode_v_i;
  input [27:0] addr_v_i;
  input [71:0] tag_v_i;
  input [3:0] valid_v_i;
  input [3:0] lock_v_i;
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
  output [1:0] chosen_way_o;
  input clk_i;
  input reset_i;
  input miss_v_i;
  input tag_hit_found_i;
  input sbuf_empty_i;
  input dma_done_i;
  input ack_i;
  output stat_mem_v_o;
  output stat_mem_w_o;
  output tag_mem_v_o;
  output tag_mem_w_o;
  output done_o;
  output recover_o;

  bsg_cache_miss
  wrapper
  (
    .decode_v_i(decode_v_i),
    .addr_v_i(addr_v_i),
    .tag_v_i(tag_v_i),
    .valid_v_i(valid_v_i),
    .lock_v_i(lock_v_i),
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
    .chosen_way_o(chosen_way_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .miss_v_i(miss_v_i),
    .tag_hit_found_i(tag_hit_found_i),
    .sbuf_empty_i(sbuf_empty_i),
    .dma_done_i(dma_done_i),
    .ack_i(ack_i),
    .stat_mem_v_o(stat_mem_v_o),
    .stat_mem_w_o(stat_mem_w_o),
    .tag_mem_v_o(tag_mem_v_o),
    .tag_mem_w_o(tag_mem_w_o),
    .done_o(done_o),
    .recover_o(recover_o)
  );


endmodule



module bsg_cache_miss
(
  clk_i,
  reset_i,
  miss_v_i,
  decode_v_i,
  addr_v_i,
  tag_v_i,
  valid_v_i,
  lock_v_i,
  tag_hit_way_id_i,
  tag_hit_found_i,
  sbuf_empty_i,
  dma_cmd_o,
  dma_way_o,
  dma_addr_o,
  dma_done_i,
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
  done_o,
  recover_o,
  chosen_way_o,
  ack_i
);

  input [18:0] decode_v_i;
  input [27:0] addr_v_i;
  input [71:0] tag_v_i;
  input [3:0] valid_v_i;
  input [3:0] lock_v_i;
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
  output [1:0] chosen_way_o;
  input clk_i;
  input reset_i;
  input miss_v_i;
  input tag_hit_found_i;
  input sbuf_empty_i;
  input dma_done_i;
  input ack_i;
  output stat_mem_v_o;
  output stat_mem_w_o;
  output tag_mem_v_o;
  output tag_mem_w_o;
  output done_o;
  output recover_o;
  wire [3:0] dma_cmd_o,chosen_way_decode,miss_state_r,miss_state_n;
  wire [1:0] dma_way_o,chosen_way_o,invalid_way_id,lru_way_id,backup_lru_way_id;
  wire [27:0] dma_addr_o;
  wire [5:0] stat_mem_addr_o,tag_mem_addr_o;
  wire [6:0] stat_mem_data_o,stat_mem_w_mask_o;
  wire [79:0] tag_mem_data_o,tag_mem_w_mask_o;
  wire stat_mem_v_o,stat_mem_w_o,tag_mem_v_o,tag_mem_w_o,done_o,recover_o,N0,N1,N2,N3,
  N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,tag_mem_data_o_3__19_,_0_net__3_,
  _0_net__2_,_0_net__1_,_0_net__0_,invalid_exist,goto_flush_op,goto_lock_op,
  _2_net__3_,_2_net__2_,_2_net__1_,_2_net__0_,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,
  N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,
  N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,
  N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,
  N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,
  N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,
  N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,
  N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,
  N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,
  N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,
  N186,N187,N188,N189,N190,N191,N192,N193,N194,N195;
  wire [2:0] chosen_way_lru_data,chosen_way_lru_mask;
  reg dma_way_o_1_sv2v_reg,dma_way_o_0_sv2v_reg,miss_state_r_3_sv2v_reg,
  miss_state_r_2_sv2v_reg,miss_state_r_1_sv2v_reg,miss_state_r_0_sv2v_reg;
  assign dma_way_o[1] = dma_way_o_1_sv2v_reg;
  assign dma_way_o[0] = dma_way_o_0_sv2v_reg;
  assign miss_state_r[3] = miss_state_r_3_sv2v_reg;
  assign miss_state_r[2] = miss_state_r_2_sv2v_reg;
  assign miss_state_r[1] = miss_state_r_1_sv2v_reg;
  assign miss_state_r[0] = miss_state_r_0_sv2v_reg;
  assign dma_addr_o[0] = 1'b0;
  assign dma_addr_o[1] = 1'b0;
  assign stat_mem_addr_o[5] = addr_v_i[9];
  assign tag_mem_addr_o[5] = stat_mem_addr_o[5];
  assign stat_mem_addr_o[4] = addr_v_i[8];
  assign tag_mem_addr_o[4] = stat_mem_addr_o[4];
  assign stat_mem_addr_o[3] = addr_v_i[7];
  assign tag_mem_addr_o[3] = stat_mem_addr_o[3];
  assign stat_mem_addr_o[2] = addr_v_i[6];
  assign tag_mem_addr_o[2] = stat_mem_addr_o[2];
  assign stat_mem_addr_o[1] = addr_v_i[5];
  assign tag_mem_addr_o[1] = stat_mem_addr_o[1];
  assign stat_mem_addr_o[0] = addr_v_i[4];
  assign tag_mem_addr_o[0] = stat_mem_addr_o[0];
  assign tag_mem_data_o[19] = tag_mem_data_o_3__19_;
  assign tag_mem_data_o[39] = tag_mem_data_o_3__19_;
  assign tag_mem_data_o[59] = tag_mem_data_o_3__19_;
  assign tag_mem_data_o[79] = tag_mem_data_o_3__19_;
  assign dma_cmd_o[0] = tag_mem_data_o_3__19_;

  bsg_priority_encode
  invalid_way_pe
  (
    .i({ _0_net__3_, _0_net__2_, _0_net__1_, _0_net__0_ }),
    .addr_o(invalid_way_id),
    .v_o(invalid_exist)
  );


  bsg_lru_pseudo_tree_encode
  lru_encode
  (
    .lru_i(stat_info_i[2:0]),
    .way_id_o(lru_way_id)
  );


  bsg_lru_pseudo_tree_decode
  chosen_way_lru_decode
  (
    .way_id_i(chosen_way_o),
    .data_o(chosen_way_lru_data),
    .mask_o(chosen_way_lru_mask)
  );


  bsg_priority_encode
  backup_lru_pe
  (
    .i({ _2_net__3_, _2_net__2_, _2_net__1_, _2_net__0_ }),
    .addr_o(backup_lru_way_id)
  );


  bsg_decode
  chosen_way_demux
  (
    .i(chosen_way_o),
    .o(chosen_way_decode)
  );

  assign N21 = N17 & N18;
  assign N22 = N19 & N20;
  assign N23 = N21 & N22;
  assign N24 = miss_state_r[3] | N18;
  assign N25 = miss_state_r[1] | miss_state_r[0];
  assign N26 = N24 | N25;
  assign N28 = miss_state_r[3] | miss_state_r[2];
  assign N29 = miss_state_r[1] | N20;
  assign N30 = N28 | N29;
  assign N32 = miss_state_r[3] | miss_state_r[2];
  assign N33 = N19 | miss_state_r[0];
  assign N34 = N32 | N33;
  assign N36 = miss_state_r[3] | miss_state_r[2];
  assign N37 = N19 | N20;
  assign N38 = N36 | N37;
  assign N40 = miss_state_r[3] | N18;
  assign N41 = miss_state_r[1] | N20;
  assign N42 = N40 | N41;
  assign N44 = miss_state_r[3] | N18;
  assign N45 = N19 | miss_state_r[0];
  assign N46 = N44 | N45;
  assign N48 = miss_state_r[3] | N18;
  assign N49 = N19 | N20;
  assign N50 = N48 | N49;
  assign N52 = N17 | miss_state_r[2];
  assign N53 = miss_state_r[1] | miss_state_r[0];
  assign N54 = N52 | N53;
  assign N56 = miss_state_r[3] & miss_state_r[0];
  assign N57 = miss_state_r[3] & miss_state_r[1];
  assign N58 = miss_state_r[3] & miss_state_r[2];
  assign N75 = (N71)? lock_v_i[0] : 
               (N73)? lock_v_i[1] : 
               (N72)? lock_v_i[2] : 
               (N74)? lock_v_i[3] : 1'b0;
  assign N87 = (N83)? stat_info_i[3] : 
               (N85)? stat_info_i[4] : 
               (N84)? stat_info_i[5] : 
               (N86)? stat_info_i[6] : 1'b0;
  assign N88 = (N83)? valid_v_i[0] : 
               (N85)? valid_v_i[1] : 
               (N84)? valid_v_i[2] : 
               (N86)? valid_v_i[3] : 1'b0;
  assign N110 = (N106)? stat_info_i[3] : 
                (N108)? stat_info_i[4] : 
                (N107)? stat_info_i[5] : 
                (N109)? stat_info_i[6] : 1'b0;
  assign N111 = (N106)? valid_v_i[0] : 
                (N108)? valid_v_i[1] : 
                (N107)? valid_v_i[2] : 
                (N109)? valid_v_i[3] : 1'b0;
  assign N120 = (N116)? tag_v_i[17] : 
                (N118)? tag_v_i[35] : 
                (N117)? tag_v_i[53] : 
                (N119)? tag_v_i[71] : 1'b0;
  assign N121 = (N116)? tag_v_i[16] : 
                (N118)? tag_v_i[34] : 
                (N117)? tag_v_i[52] : 
                (N119)? tag_v_i[70] : 1'b0;
  assign N122 = (N116)? tag_v_i[15] : 
                (N118)? tag_v_i[33] : 
                (N117)? tag_v_i[51] : 
                (N119)? tag_v_i[69] : 1'b0;
  assign N123 = (N116)? tag_v_i[14] : 
                (N118)? tag_v_i[32] : 
                (N117)? tag_v_i[50] : 
                (N119)? tag_v_i[68] : 1'b0;
  assign N124 = (N116)? tag_v_i[13] : 
                (N118)? tag_v_i[31] : 
                (N117)? tag_v_i[49] : 
                (N119)? tag_v_i[67] : 1'b0;
  assign N125 = (N116)? tag_v_i[12] : 
                (N118)? tag_v_i[30] : 
                (N117)? tag_v_i[48] : 
                (N119)? tag_v_i[66] : 1'b0;
  assign N126 = (N116)? tag_v_i[11] : 
                (N118)? tag_v_i[29] : 
                (N117)? tag_v_i[47] : 
                (N119)? tag_v_i[65] : 1'b0;
  assign N127 = (N116)? tag_v_i[10] : 
                (N118)? tag_v_i[28] : 
                (N117)? tag_v_i[46] : 
                (N119)? tag_v_i[64] : 1'b0;
  assign N128 = (N116)? tag_v_i[9] : 
                (N118)? tag_v_i[27] : 
                (N117)? tag_v_i[45] : 
                (N119)? tag_v_i[63] : 1'b0;
  assign N129 = (N116)? tag_v_i[8] : 
                (N118)? tag_v_i[26] : 
                (N117)? tag_v_i[44] : 
                (N119)? tag_v_i[62] : 1'b0;
  assign N130 = (N116)? tag_v_i[7] : 
                (N118)? tag_v_i[25] : 
                (N117)? tag_v_i[43] : 
                (N119)? tag_v_i[61] : 1'b0;
  assign N131 = (N116)? tag_v_i[6] : 
                (N118)? tag_v_i[24] : 
                (N117)? tag_v_i[42] : 
                (N119)? tag_v_i[60] : 1'b0;
  assign N132 = (N116)? tag_v_i[5] : 
                (N118)? tag_v_i[23] : 
                (N117)? tag_v_i[41] : 
                (N119)? tag_v_i[59] : 1'b0;
  assign N133 = (N116)? tag_v_i[4] : 
                (N118)? tag_v_i[22] : 
                (N117)? tag_v_i[40] : 
                (N119)? tag_v_i[58] : 1'b0;
  assign N134 = (N116)? tag_v_i[3] : 
                (N118)? tag_v_i[21] : 
                (N117)? tag_v_i[39] : 
                (N119)? tag_v_i[57] : 1'b0;
  assign N135 = (N116)? tag_v_i[2] : 
                (N118)? tag_v_i[20] : 
                (N117)? tag_v_i[38] : 
                (N119)? tag_v_i[56] : 1'b0;
  assign N136 = (N116)? tag_v_i[1] : 
                (N118)? tag_v_i[19] : 
                (N117)? tag_v_i[37] : 
                (N119)? tag_v_i[55] : 1'b0;
  assign N137 = (N116)? tag_v_i[0] : 
                (N118)? tag_v_i[18] : 
                (N117)? tag_v_i[36] : 
                (N119)? tag_v_i[54] : 1'b0;
  assign N143 = (N139)? tag_v_i[17] : 
                (N141)? tag_v_i[35] : 
                (N140)? tag_v_i[53] : 
                (N142)? tag_v_i[71] : 1'b0;
  assign N144 = (N139)? tag_v_i[16] : 
                (N141)? tag_v_i[34] : 
                (N140)? tag_v_i[52] : 
                (N142)? tag_v_i[70] : 1'b0;
  assign N145 = (N139)? tag_v_i[15] : 
                (N141)? tag_v_i[33] : 
                (N140)? tag_v_i[51] : 
                (N142)? tag_v_i[69] : 1'b0;
  assign N146 = (N139)? tag_v_i[14] : 
                (N141)? tag_v_i[32] : 
                (N140)? tag_v_i[50] : 
                (N142)? tag_v_i[68] : 1'b0;
  assign N147 = (N139)? tag_v_i[13] : 
                (N141)? tag_v_i[31] : 
                (N140)? tag_v_i[49] : 
                (N142)? tag_v_i[67] : 1'b0;
  assign N148 = (N139)? tag_v_i[12] : 
                (N141)? tag_v_i[30] : 
                (N140)? tag_v_i[48] : 
                (N142)? tag_v_i[66] : 1'b0;
  assign N149 = (N139)? tag_v_i[11] : 
                (N141)? tag_v_i[29] : 
                (N140)? tag_v_i[47] : 
                (N142)? tag_v_i[65] : 1'b0;
  assign N150 = (N139)? tag_v_i[10] : 
                (N141)? tag_v_i[28] : 
                (N140)? tag_v_i[46] : 
                (N142)? tag_v_i[64] : 1'b0;
  assign N151 = (N139)? tag_v_i[9] : 
                (N141)? tag_v_i[27] : 
                (N140)? tag_v_i[45] : 
                (N142)? tag_v_i[63] : 1'b0;
  assign N152 = (N139)? tag_v_i[8] : 
                (N141)? tag_v_i[26] : 
                (N140)? tag_v_i[44] : 
                (N142)? tag_v_i[62] : 1'b0;
  assign N153 = (N139)? tag_v_i[7] : 
                (N141)? tag_v_i[25] : 
                (N140)? tag_v_i[43] : 
                (N142)? tag_v_i[61] : 1'b0;
  assign N154 = (N139)? tag_v_i[6] : 
                (N141)? tag_v_i[24] : 
                (N140)? tag_v_i[42] : 
                (N142)? tag_v_i[60] : 1'b0;
  assign N155 = (N139)? tag_v_i[5] : 
                (N141)? tag_v_i[23] : 
                (N140)? tag_v_i[41] : 
                (N142)? tag_v_i[59] : 1'b0;
  assign N156 = (N139)? tag_v_i[4] : 
                (N141)? tag_v_i[22] : 
                (N140)? tag_v_i[40] : 
                (N142)? tag_v_i[58] : 1'b0;
  assign N157 = (N139)? tag_v_i[3] : 
                (N141)? tag_v_i[21] : 
                (N140)? tag_v_i[39] : 
                (N142)? tag_v_i[57] : 1'b0;
  assign N158 = (N139)? tag_v_i[2] : 
                (N141)? tag_v_i[20] : 
                (N140)? tag_v_i[38] : 
                (N142)? tag_v_i[56] : 1'b0;
  assign N159 = (N139)? tag_v_i[1] : 
                (N141)? tag_v_i[19] : 
                (N140)? tag_v_i[37] : 
                (N142)? tag_v_i[55] : 1'b0;
  assign N160 = (N139)? tag_v_i[0] : 
                (N141)? tag_v_i[18] : 
                (N140)? tag_v_i[36] : 
                (N142)? tag_v_i[54] : 1'b0;
  assign { N65, N64, N63 } = (N0)? { 1'b0, 1'b0, 1'b1 } : 
                             (N170)? { 1'b0, 1'b1, 1'b0 } : 
                             (N62)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign N0 = goto_flush_op;
  assign { N68, N67, N66 } = (N1)? { N65, N64, N63 } : 
                             (N2)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N1 = miss_v_i;
  assign N2 = N60;
  assign { N79, N78 } = (N3)? invalid_way_id : 
                        (N172)? backup_lru_way_id : 
                        (N77)? lru_way_id : 1'b0;
  assign N3 = invalid_exist;
  assign N90 = ~N89;
  assign { N92, N91 } = (N4)? { N90, N89 } : 
                        (N5)? { 1'b1, 1'b0 } : 1'b0;
  assign N4 = dma_done_i;
  assign N5 = N138;
  assign { N95, N94 } = (N6)? addr_v_i[11:10] : 
                        (N93)? tag_hit_way_id_i : 1'b0;
  assign N6 = decode_v_i[11];
  assign N113 = ~N112;
  assign N162 = (N4)? N161 : 
                (N5)? 1'b1 : 1'b0;
  assign stat_mem_v_o = (N7)? miss_v_i : 
                        (N8)? dma_done_i : 
                        (N9)? 1'b1 : 
                        (N10)? 1'b0 : 
                        (N11)? 1'b0 : 
                        (N12)? 1'b0 : 
                        (N13)? 1'b0 : 
                        (N14)? 1'b0 : 
                        (N15)? 1'b0 : 
                        (N16)? 1'b0 : 1'b0;
  assign N7 = N23;
  assign N8 = tag_mem_data_o_3__19_;
  assign N9 = N31;
  assign N10 = N35;
  assign N11 = dma_cmd_o[1];
  assign N12 = N43;
  assign N13 = N47;
  assign N14 = N51;
  assign N15 = N55;
  assign N16 = N59;
  assign miss_state_n = (N7)? { 1'b0, N68, N67, N66 } : 
                        (N8)? { 1'b0, N92, dma_done_i, N91 } : 
                        (N9)? { 1'b0, N113, 1'b1, 1'b1 } : 
                        (N10)? { 1'b0, 1'b1, 1'b1, 1'b1 } : 
                        (N11)? { 1'b0, dma_done_i, N138, 1'b1 } : 
                        (N12)? { 1'b0, 1'b1, dma_done_i, N162 } : 
                        (N13)? { 1'b0, 1'b1, 1'b1, dma_done_i } : 
                        (N14)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                        (N15)? { N163, 1'b0, 1'b0, 1'b0 } : 
                        (N16)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign chosen_way_o = (N7)? dma_way_o : 
                        (N8)? { N79, N78 } : 
                        (N9)? { N95, N94 } : 
                        (N10)? tag_hit_way_id_i : 
                        (N11)? dma_way_o : 
                        (N12)? dma_way_o : 
                        (N13)? dma_way_o : 
                        (N14)? dma_way_o : 
                        (N15)? dma_way_o : 
                        (N16)? dma_way_o : 1'b0;
  assign dma_cmd_o[2] = (N13)? sbuf_empty_i : 
                        (N166)? 1'b0 : 1'b0;
  assign dma_cmd_o[3] = (N12)? sbuf_empty_i : 
                        (N167)? 1'b0 : 1'b0;
  assign dma_addr_o[3:2] = (N13)? addr_v_i[3:2] : 
                           (N166)? { 1'b0, 1'b0 } : 1'b0;
  assign dma_addr_o[27:4] = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N8)? { addr_v_i[27:10], stat_mem_addr_o } : 
                            (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N10)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N11)? { N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, N136, N137, stat_mem_addr_o } : 
                            (N12)? { N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155, N156, N157, N158, N159, N160, stat_mem_addr_o } : 
                            (N13)? { addr_v_i[27:10], stat_mem_addr_o } : 
                            (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign stat_mem_w_o = (N7)? 1'b0 : 
                        (N8)? dma_done_i : 
                        (N9)? 1'b1 : 
                        (N10)? 1'b0 : 
                        (N11)? 1'b0 : 
                        (N12)? 1'b0 : 
                        (N13)? 1'b0 : 
                        (N14)? 1'b0 : 
                        (N15)? 1'b0 : 
                        (N16)? 1'b0 : 1'b0;
  assign stat_mem_data_o = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N8)? { N80, N80, N80, N80, chosen_way_lru_data } : 
                           (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N10)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign stat_mem_w_mask_o = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N8)? { chosen_way_decode, chosen_way_lru_mask } : 
                             (N9)? { chosen_way_decode, 1'b0, 1'b0, 1'b0 } : 
                             (N10)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign tag_mem_v_o = (N7)? 1'b0 : 
                       (N8)? dma_done_i : 
                       (N9)? 1'b1 : 
                       (N10)? 1'b1 : 
                       (N11)? 1'b0 : 
                       (N12)? 1'b0 : 
                       (N13)? 1'b0 : 
                       (N14)? 1'b0 : 
                       (N15)? 1'b0 : 
                       (N16)? 1'b0 : 1'b0;
  assign tag_mem_w_o = (N7)? 1'b0 : 
                       (N8)? dma_done_i : 
                       (N9)? 1'b1 : 
                       (N10)? 1'b1 : 
                       (N11)? 1'b0 : 
                       (N12)? 1'b0 : 
                       (N13)? 1'b0 : 
                       (N14)? 1'b0 : 
                       (N15)? 1'b0 : 
                       (N16)? 1'b0 : 1'b0;
  assign { tag_mem_w_mask_o[52:40], tag_mem_w_mask_o[37:20], tag_mem_w_mask_o[17:0] } = (N8)? { chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                                                                                        (N168)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_w_mask_o[79:78], tag_mem_w_mask_o[59:58], tag_mem_w_mask_o[39:38], tag_mem_w_mask_o[19:18] } = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                  (N8)? { chosen_way_decode[3:3], chosen_way_decode[3:2], chosen_way_decode[2:1], chosen_way_decode[1:0], chosen_way_decode[0:0] } : 
                                                                                                                  (N9)? { N102, N103, N100, N101, N98, N99, N96, N97 } : 
                                                                                                                  (N10)? { 1'b0, chosen_way_decode[3:3], 1'b0, chosen_way_decode[2:2], 1'b0, chosen_way_decode[1:1], 1'b0, chosen_way_decode[0:0] } : 
                                                                                                                  (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                  (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                  (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                  (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                  (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                  (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_w_mask_o[77:60], tag_mem_w_mask_o[57:53] } = (N8)? { chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2] } : 
                                                                (N165)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_data_o[77:60], tag_mem_data_o[57:40], tag_mem_data_o[37:20], tag_mem_data_o[17:0] } = (N8)? { addr_v_i[27:10], addr_v_i[27:10], addr_v_i[27:10], addr_v_i[27:10] } : 
                                                                                                         (N165)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_data_o[78:78], tag_mem_data_o[58:58], tag_mem_data_o[38:38], tag_mem_data_o[18:18] } = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                          (N8)? { decode_v_i[5:5], decode_v_i[5:5], decode_v_i[5:5], decode_v_i[5:5] } : 
                                                                                                          (N9)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                          (N10)? { decode_v_i[5:5], decode_v_i[5:5], decode_v_i[5:5], decode_v_i[5:5] } : 
                                                                                                          (N11)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                          (N12)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                          (N13)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                          (N14)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                          (N15)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                          (N16)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign recover_o = (N7)? 1'b0 : 
                     (N8)? 1'b0 : 
                     (N9)? 1'b0 : 
                     (N10)? 1'b0 : 
                     (N11)? 1'b0 : 
                     (N12)? 1'b0 : 
                     (N13)? 1'b0 : 
                     (N14)? 1'b1 : 
                     (N15)? 1'b0 : 
                     (N16)? 1'b0 : 1'b0;
  assign done_o = (N7)? 1'b0 : 
                  (N8)? 1'b0 : 
                  (N9)? 1'b0 : 
                  (N10)? 1'b0 : 
                  (N11)? 1'b0 : 
                  (N12)? 1'b0 : 
                  (N13)? 1'b0 : 
                  (N14)? 1'b0 : 
                  (N15)? 1'b1 : 
                  (N16)? 1'b0 : 1'b0;
  assign _0_net__3_ = N173 & N174;
  assign N173 = ~valid_v_i[3];
  assign N174 = ~lock_v_i[3];
  assign _0_net__2_ = N175 & N176;
  assign N175 = ~valid_v_i[2];
  assign N176 = ~lock_v_i[2];
  assign _0_net__1_ = N177 & N178;
  assign N177 = ~valid_v_i[1];
  assign N178 = ~lock_v_i[1];
  assign _0_net__0_ = N179 & N180;
  assign N179 = ~valid_v_i[0];
  assign N180 = ~lock_v_i[0];
  assign goto_flush_op = N182 | decode_v_i[7];
  assign N182 = N181 | decode_v_i[8];
  assign N181 = decode_v_i[11] | decode_v_i[6];
  assign goto_lock_op = decode_v_i[4] | N183;
  assign N183 = decode_v_i[5] & tag_hit_found_i;
  assign _2_net__3_ = ~lock_v_i[3];
  assign _2_net__2_ = ~lock_v_i[2];
  assign _2_net__1_ = ~lock_v_i[1];
  assign _2_net__0_ = ~lock_v_i[0];
  assign N17 = ~miss_state_r[3];
  assign N18 = ~miss_state_r[2];
  assign N19 = ~miss_state_r[1];
  assign N20 = ~miss_state_r[0];
  assign N27 = ~N26;
  assign N31 = ~N30;
  assign N35 = ~N34;
  assign N39 = ~N38;
  assign N43 = ~N42;
  assign N47 = ~N46;
  assign N51 = ~N50;
  assign N55 = ~N54;
  assign N59 = N56 | N184;
  assign N184 = N57 | N58;
  assign tag_mem_data_o_3__19_ = N27;
  assign dma_cmd_o[1] = N39;
  assign N60 = ~miss_v_i;
  assign N61 = goto_lock_op | goto_flush_op;
  assign N62 = ~N61;
  assign N69 = ~lru_way_id[0];
  assign N70 = ~lru_way_id[1];
  assign N71 = N69 & N70;
  assign N72 = N69 & lru_way_id[1];
  assign N73 = lru_way_id[0] & N70;
  assign N74 = lru_way_id[0] & lru_way_id[1];
  assign N76 = N75 | invalid_exist;
  assign N77 = ~N76;
  assign N80 = decode_v_i[13] | decode_v_i[2];
  assign N81 = ~N78;
  assign N82 = ~N79;
  assign N83 = N81 & N82;
  assign N84 = N81 & N79;
  assign N85 = N78 & N82;
  assign N86 = N78 & N79;
  assign N89 = N87 & N88;
  assign N93 = ~decode_v_i[11];
  assign N96 = N185 & chosen_way_decode[0];
  assign N185 = decode_v_i[6] | decode_v_i[7];
  assign N97 = N186 & chosen_way_decode[0];
  assign N186 = decode_v_i[6] | decode_v_i[7];
  assign N98 = N187 & chosen_way_decode[1];
  assign N187 = decode_v_i[6] | decode_v_i[7];
  assign N99 = N188 & chosen_way_decode[1];
  assign N188 = decode_v_i[6] | decode_v_i[7];
  assign N100 = N189 & chosen_way_decode[2];
  assign N189 = decode_v_i[6] | decode_v_i[7];
  assign N101 = N190 & chosen_way_decode[2];
  assign N190 = decode_v_i[6] | decode_v_i[7];
  assign N102 = N191 & chosen_way_decode[3];
  assign N191 = decode_v_i[6] | decode_v_i[7];
  assign N103 = N192 & chosen_way_decode[3];
  assign N192 = decode_v_i[6] | decode_v_i[7];
  assign N104 = ~N94;
  assign N105 = ~N95;
  assign N106 = N104 & N105;
  assign N107 = N104 & N95;
  assign N108 = N94 & N105;
  assign N109 = N94 & N95;
  assign N112 = N194 & N111;
  assign N194 = N193 & N110;
  assign N193 = ~decode_v_i[6];
  assign N114 = ~dma_way_o[0];
  assign N115 = ~dma_way_o[1];
  assign N116 = N114 & N115;
  assign N117 = N114 & dma_way_o[1];
  assign N118 = dma_way_o[0] & N115;
  assign N119 = dma_way_o[0] & dma_way_o[1];
  assign N138 = ~dma_done_i;
  assign N139 = N114 & N115;
  assign N140 = N114 & dma_way_o[1];
  assign N141 = dma_way_o[0] & N115;
  assign N142 = dma_way_o[0] & dma_way_o[1];
  assign N161 = N195 | decode_v_i[8];
  assign N195 = decode_v_i[11] | decode_v_i[7];
  assign N163 = ~ack_i;
  assign N164 = ~tag_mem_data_o_3__19_;
  assign N165 = N164;
  assign N166 = N46;
  assign N167 = N42;
  assign N168 = N164;
  assign N169 = ~goto_flush_op;
  assign N170 = goto_lock_op & N169;
  assign N171 = ~invalid_exist;
  assign N172 = N75 & N171;

  always @(posedge clk_i) begin
    if(reset_i) begin
      dma_way_o_1_sv2v_reg <= 1'b0;
      dma_way_o_0_sv2v_reg <= 1'b0;
      miss_state_r_3_sv2v_reg <= 1'b0;
      miss_state_r_2_sv2v_reg <= 1'b0;
      miss_state_r_1_sv2v_reg <= 1'b0;
      miss_state_r_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      dma_way_o_1_sv2v_reg <= chosen_way_o[1];
      dma_way_o_0_sv2v_reg <= chosen_way_o[0];
      miss_state_r_3_sv2v_reg <= miss_state_n[3];
      miss_state_r_2_sv2v_reg <= miss_state_n[2];
      miss_state_r_1_sv2v_reg <= miss_state_n[1];
      miss_state_r_0_sv2v_reg <= miss_state_n[0];
    end 
  end


endmodule

