

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

  input [15:0] decode_v_i;
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

  input [15:0] decode_v_i;
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
  wire [3:0] dma_cmd_o,chosen_way_decode,miss_state_n;
  wire [27:0] dma_addr_o;
  wire [5:0] stat_mem_addr_o,tag_mem_addr_o;
  wire [6:0] stat_mem_data_o,stat_mem_w_mask_o;
  wire [79:0] tag_mem_data_o,tag_mem_w_mask_o;
  wire [1:0] chosen_way_o,invalid_way_id,lru_way_id,backup_lru_way_id;
  wire stat_mem_v_o,stat_mem_w_o,tag_mem_v_o,tag_mem_w_o,done_o,recover_o,N0,N1,N2,N3,
  N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,n_0_net__3_,n_0_net__2_,
  n_0_net__1_,n_0_net__0_,invalid_exist,goto_flush_op,goto_lock_op,n_2_net__3_,n_2_net__2_,
  n_2_net__1_,n_2_net__0_,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,
  N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,
  N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,
  N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,
  N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,
  N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,
  N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,
  N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,
  N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,
  N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,
  N189,N190,N191,N192,N193,N194;
  wire [2:0] chosen_way_lru_data,chosen_way_lru_mask;
  reg [1:0] dma_way_o;
  reg [3:0] miss_state_r;
  assign dma_addr_o[0] = 1'b0;
  assign dma_addr_o[1] = 1'b0;
  assign tag_mem_addr_o[5] = addr_v_i[9];
  assign stat_mem_addr_o[5] = addr_v_i[9];
  assign tag_mem_addr_o[4] = addr_v_i[8];
  assign stat_mem_addr_o[4] = addr_v_i[8];
  assign tag_mem_addr_o[3] = addr_v_i[7];
  assign stat_mem_addr_o[3] = addr_v_i[7];
  assign tag_mem_addr_o[2] = addr_v_i[6];
  assign stat_mem_addr_o[2] = addr_v_i[6];
  assign tag_mem_addr_o[1] = addr_v_i[5];
  assign stat_mem_addr_o[1] = addr_v_i[5];
  assign tag_mem_addr_o[0] = addr_v_i[4];
  assign stat_mem_addr_o[0] = addr_v_i[4];
  assign tag_mem_data_o[19] = tag_mem_data_o[79];
  assign tag_mem_data_o[39] = tag_mem_data_o[79];
  assign tag_mem_data_o[59] = tag_mem_data_o[79];
  assign dma_cmd_o[0] = tag_mem_data_o[79];

  bsg_priority_encode
  invalid_way_pe
  (
    .i({ n_0_net__3_, n_0_net__2_, n_0_net__1_, n_0_net__0_ }),
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
    .i({ n_2_net__3_, n_2_net__2_, n_2_net__1_, n_2_net__0_ }),
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
  assign N86 = (N82)? stat_info_i[3] : 
               (N84)? stat_info_i[4] : 
               (N83)? stat_info_i[5] : 
               (N85)? stat_info_i[6] : 1'b0;
  assign N87 = (N82)? valid_v_i[0] : 
               (N84)? valid_v_i[1] : 
               (N83)? valid_v_i[2] : 
               (N85)? valid_v_i[3] : 1'b0;
  assign N109 = (N105)? stat_info_i[3] : 
                (N107)? stat_info_i[4] : 
                (N106)? stat_info_i[5] : 
                (N108)? stat_info_i[6] : 1'b0;
  assign N110 = (N105)? valid_v_i[0] : 
                (N107)? valid_v_i[1] : 
                (N106)? valid_v_i[2] : 
                (N108)? valid_v_i[3] : 1'b0;
  assign N119 = (N115)? tag_v_i[17] : 
                (N117)? tag_v_i[35] : 
                (N116)? tag_v_i[53] : 
                (N118)? tag_v_i[71] : 1'b0;
  assign N120 = (N115)? tag_v_i[16] : 
                (N117)? tag_v_i[34] : 
                (N116)? tag_v_i[52] : 
                (N118)? tag_v_i[70] : 1'b0;
  assign N121 = (N115)? tag_v_i[15] : 
                (N117)? tag_v_i[33] : 
                (N116)? tag_v_i[51] : 
                (N118)? tag_v_i[69] : 1'b0;
  assign N122 = (N115)? tag_v_i[14] : 
                (N117)? tag_v_i[32] : 
                (N116)? tag_v_i[50] : 
                (N118)? tag_v_i[68] : 1'b0;
  assign N123 = (N115)? tag_v_i[13] : 
                (N117)? tag_v_i[31] : 
                (N116)? tag_v_i[49] : 
                (N118)? tag_v_i[67] : 1'b0;
  assign N124 = (N115)? tag_v_i[12] : 
                (N117)? tag_v_i[30] : 
                (N116)? tag_v_i[48] : 
                (N118)? tag_v_i[66] : 1'b0;
  assign N125 = (N115)? tag_v_i[11] : 
                (N117)? tag_v_i[29] : 
                (N116)? tag_v_i[47] : 
                (N118)? tag_v_i[65] : 1'b0;
  assign N126 = (N115)? tag_v_i[10] : 
                (N117)? tag_v_i[28] : 
                (N116)? tag_v_i[46] : 
                (N118)? tag_v_i[64] : 1'b0;
  assign N127 = (N115)? tag_v_i[9] : 
                (N117)? tag_v_i[27] : 
                (N116)? tag_v_i[45] : 
                (N118)? tag_v_i[63] : 1'b0;
  assign N128 = (N115)? tag_v_i[8] : 
                (N117)? tag_v_i[26] : 
                (N116)? tag_v_i[44] : 
                (N118)? tag_v_i[62] : 1'b0;
  assign N129 = (N115)? tag_v_i[7] : 
                (N117)? tag_v_i[25] : 
                (N116)? tag_v_i[43] : 
                (N118)? tag_v_i[61] : 1'b0;
  assign N130 = (N115)? tag_v_i[6] : 
                (N117)? tag_v_i[24] : 
                (N116)? tag_v_i[42] : 
                (N118)? tag_v_i[60] : 1'b0;
  assign N131 = (N115)? tag_v_i[5] : 
                (N117)? tag_v_i[23] : 
                (N116)? tag_v_i[41] : 
                (N118)? tag_v_i[59] : 1'b0;
  assign N132 = (N115)? tag_v_i[4] : 
                (N117)? tag_v_i[22] : 
                (N116)? tag_v_i[40] : 
                (N118)? tag_v_i[58] : 1'b0;
  assign N133 = (N115)? tag_v_i[3] : 
                (N117)? tag_v_i[21] : 
                (N116)? tag_v_i[39] : 
                (N118)? tag_v_i[57] : 1'b0;
  assign N134 = (N115)? tag_v_i[2] : 
                (N117)? tag_v_i[20] : 
                (N116)? tag_v_i[38] : 
                (N118)? tag_v_i[56] : 1'b0;
  assign N135 = (N115)? tag_v_i[1] : 
                (N117)? tag_v_i[19] : 
                (N116)? tag_v_i[37] : 
                (N118)? tag_v_i[55] : 1'b0;
  assign N136 = (N115)? tag_v_i[0] : 
                (N117)? tag_v_i[18] : 
                (N116)? tag_v_i[36] : 
                (N118)? tag_v_i[54] : 1'b0;
  assign N142 = (N138)? tag_v_i[17] : 
                (N140)? tag_v_i[35] : 
                (N139)? tag_v_i[53] : 
                (N141)? tag_v_i[71] : 1'b0;
  assign N143 = (N138)? tag_v_i[16] : 
                (N140)? tag_v_i[34] : 
                (N139)? tag_v_i[52] : 
                (N141)? tag_v_i[70] : 1'b0;
  assign N144 = (N138)? tag_v_i[15] : 
                (N140)? tag_v_i[33] : 
                (N139)? tag_v_i[51] : 
                (N141)? tag_v_i[69] : 1'b0;
  assign N145 = (N138)? tag_v_i[14] : 
                (N140)? tag_v_i[32] : 
                (N139)? tag_v_i[50] : 
                (N141)? tag_v_i[68] : 1'b0;
  assign N146 = (N138)? tag_v_i[13] : 
                (N140)? tag_v_i[31] : 
                (N139)? tag_v_i[49] : 
                (N141)? tag_v_i[67] : 1'b0;
  assign N147 = (N138)? tag_v_i[12] : 
                (N140)? tag_v_i[30] : 
                (N139)? tag_v_i[48] : 
                (N141)? tag_v_i[66] : 1'b0;
  assign N148 = (N138)? tag_v_i[11] : 
                (N140)? tag_v_i[29] : 
                (N139)? tag_v_i[47] : 
                (N141)? tag_v_i[65] : 1'b0;
  assign N149 = (N138)? tag_v_i[10] : 
                (N140)? tag_v_i[28] : 
                (N139)? tag_v_i[46] : 
                (N141)? tag_v_i[64] : 1'b0;
  assign N150 = (N138)? tag_v_i[9] : 
                (N140)? tag_v_i[27] : 
                (N139)? tag_v_i[45] : 
                (N141)? tag_v_i[63] : 1'b0;
  assign N151 = (N138)? tag_v_i[8] : 
                (N140)? tag_v_i[26] : 
                (N139)? tag_v_i[44] : 
                (N141)? tag_v_i[62] : 1'b0;
  assign N152 = (N138)? tag_v_i[7] : 
                (N140)? tag_v_i[25] : 
                (N139)? tag_v_i[43] : 
                (N141)? tag_v_i[61] : 1'b0;
  assign N153 = (N138)? tag_v_i[6] : 
                (N140)? tag_v_i[24] : 
                (N139)? tag_v_i[42] : 
                (N141)? tag_v_i[60] : 1'b0;
  assign N154 = (N138)? tag_v_i[5] : 
                (N140)? tag_v_i[23] : 
                (N139)? tag_v_i[41] : 
                (N141)? tag_v_i[59] : 1'b0;
  assign N155 = (N138)? tag_v_i[4] : 
                (N140)? tag_v_i[22] : 
                (N139)? tag_v_i[40] : 
                (N141)? tag_v_i[58] : 1'b0;
  assign N156 = (N138)? tag_v_i[3] : 
                (N140)? tag_v_i[21] : 
                (N139)? tag_v_i[39] : 
                (N141)? tag_v_i[57] : 1'b0;
  assign N157 = (N138)? tag_v_i[2] : 
                (N140)? tag_v_i[20] : 
                (N139)? tag_v_i[38] : 
                (N141)? tag_v_i[56] : 1'b0;
  assign N158 = (N138)? tag_v_i[1] : 
                (N140)? tag_v_i[19] : 
                (N139)? tag_v_i[37] : 
                (N141)? tag_v_i[55] : 1'b0;
  assign N159 = (N138)? tag_v_i[0] : 
                (N140)? tag_v_i[18] : 
                (N139)? tag_v_i[36] : 
                (N141)? tag_v_i[54] : 1'b0;
  assign { N65, N64, N63 } = (N0)? { 1'b0, 1'b0, 1'b1 } : 
                             (N169)? { 1'b0, 1'b1, 1'b0 } : 
                             (N62)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign N0 = goto_flush_op;
  assign { N68, N67, N66 } = (N1)? { N65, N64, N63 } : 
                             (N2)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N1 = miss_v_i;
  assign N2 = N60;
  assign { N79, N78 } = (N3)? invalid_way_id : 
                        (N171)? backup_lru_way_id : 
                        (N77)? lru_way_id : 1'b0;
  assign N3 = invalid_exist;
  assign N89 = ~N88;
  assign { N91, N90 } = (N4)? { N89, N88 } : 
                        (N5)? { 1'b1, 1'b0 } : 1'b0;
  assign N4 = dma_done_i;
  assign N5 = N137;
  assign { N94, N93 } = (N6)? addr_v_i[11:10] : 
                        (N92)? tag_hit_way_id_i : 1'b0;
  assign N6 = decode_v_i[8];
  assign N112 = ~N111;
  assign N161 = (N4)? N160 : 
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
  assign N8 = tag_mem_data_o[79];
  assign N9 = N31;
  assign N10 = N35;
  assign N11 = dma_cmd_o[1];
  assign N12 = N43;
  assign N13 = N47;
  assign N14 = N51;
  assign N15 = N55;
  assign N16 = N59;
  assign miss_state_n = (N7)? { 1'b0, N68, N67, N66 } : 
                        (N8)? { 1'b0, N91, dma_done_i, N90 } : 
                        (N9)? { 1'b0, N112, 1'b1, 1'b1 } : 
                        (N10)? { 1'b0, 1'b1, 1'b1, 1'b1 } : 
                        (N11)? { 1'b0, dma_done_i, N137, 1'b1 } : 
                        (N12)? { 1'b0, 1'b1, dma_done_i, N161 } : 
                        (N13)? { 1'b0, 1'b1, 1'b1, dma_done_i } : 
                        (N14)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                        (N15)? { N162, 1'b0, 1'b0, 1'b0 } : 
                        (N16)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign chosen_way_o = (N7)? dma_way_o : 
                        (N8)? { N79, N78 } : 
                        (N9)? { N94, N93 } : 
                        (N10)? tag_hit_way_id_i : 
                        (N11)? dma_way_o : 
                        (N12)? dma_way_o : 
                        (N13)? dma_way_o : 
                        (N14)? dma_way_o : 
                        (N15)? dma_way_o : 
                        (N16)? dma_way_o : 1'b0;
  assign dma_cmd_o[2] = (N13)? sbuf_empty_i : 
                        (N165)? 1'b0 : 1'b0;
  assign dma_cmd_o[3] = (N12)? sbuf_empty_i : 
                        (N166)? 1'b0 : 1'b0;
  assign dma_addr_o[3:2] = (N13)? addr_v_i[3:2] : 
                           (N165)? { 1'b0, 1'b0 } : 1'b0;
  assign dma_addr_o[27:4] = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N8)? addr_v_i[27:4] : 
                            (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N10)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N11)? { N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, N136, addr_v_i[9:4] } : 
                            (N12)? { N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155, N156, N157, N158, N159, addr_v_i[9:4] } : 
                            (N13)? addr_v_i[27:4] : 
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
                           (N8)? { decode_v_i[10:10], decode_v_i[10:10], decode_v_i[10:10], decode_v_i[10:10], chosen_way_lru_data } : 
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
                                                                                        (N167)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_w_mask_o[79:78], tag_mem_w_mask_o[59:58], tag_mem_w_mask_o[39:38], tag_mem_w_mask_o[19:18] } = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                  (N8)? { chosen_way_decode[3:3], chosen_way_decode[3:2], chosen_way_decode[2:1], chosen_way_decode[1:0], chosen_way_decode[0:0] } : 
                                                                                                                  (N9)? { N101, N102, N99, N100, N97, N98, N95, N96 } : 
                                                                                                                  (N10)? { 1'b0, chosen_way_decode[3:3], 1'b0, chosen_way_decode[2:2], 1'b0, chosen_way_decode[1:1], 1'b0, chosen_way_decode[0:0] } : 
                                                                                                                  (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                  (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                  (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                  (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                  (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                  (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_w_mask_o[77:60], tag_mem_w_mask_o[57:53] } = (N8)? { chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2] } : 
                                                                (N164)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_data_o[77:60], tag_mem_data_o[57:40], tag_mem_data_o[37:20], tag_mem_data_o[17:0] } = (N8)? { addr_v_i[27:10], addr_v_i[27:10], addr_v_i[27:10], addr_v_i[27:10] } : 
                                                                                                         (N164)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_data_o[78:78], tag_mem_data_o[58:58], tag_mem_data_o[38:38], tag_mem_data_o[18:18] } = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                          (N8)? { decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2] } : 
                                                                                                          (N9)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                          (N10)? { decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2] } : 
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
  assign n_0_net__3_ = N172 & N173;
  assign N172 = ~valid_v_i[3];
  assign N173 = ~lock_v_i[3];
  assign n_0_net__2_ = N174 & N175;
  assign N174 = ~valid_v_i[2];
  assign N175 = ~lock_v_i[2];
  assign n_0_net__1_ = N176 & N177;
  assign N176 = ~valid_v_i[1];
  assign N177 = ~lock_v_i[1];
  assign n_0_net__0_ = N178 & N179;
  assign N178 = ~valid_v_i[0];
  assign N179 = ~lock_v_i[0];
  assign goto_flush_op = N181 | decode_v_i[4];
  assign N181 = N180 | decode_v_i[5];
  assign N180 = decode_v_i[8] | decode_v_i[3];
  assign goto_lock_op = decode_v_i[1] | N182;
  assign N182 = decode_v_i[2] & tag_hit_found_i;
  assign n_2_net__3_ = ~lock_v_i[3];
  assign n_2_net__2_ = ~lock_v_i[2];
  assign n_2_net__1_ = ~lock_v_i[1];
  assign n_2_net__0_ = ~lock_v_i[0];
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
  assign N59 = N56 | N183;
  assign N183 = N57 | N58;
  assign tag_mem_data_o[79] = N27;
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
  assign N80 = ~N78;
  assign N81 = ~N79;
  assign N82 = N80 & N81;
  assign N83 = N80 & N79;
  assign N84 = N78 & N81;
  assign N85 = N78 & N79;
  assign N88 = N86 & N87;
  assign N92 = ~decode_v_i[8];
  assign N95 = N184 & chosen_way_decode[0];
  assign N184 = decode_v_i[3] | decode_v_i[4];
  assign N96 = N185 & chosen_way_decode[0];
  assign N185 = decode_v_i[3] | decode_v_i[4];
  assign N97 = N186 & chosen_way_decode[1];
  assign N186 = decode_v_i[3] | decode_v_i[4];
  assign N98 = N187 & chosen_way_decode[1];
  assign N187 = decode_v_i[3] | decode_v_i[4];
  assign N99 = N188 & chosen_way_decode[2];
  assign N188 = decode_v_i[3] | decode_v_i[4];
  assign N100 = N189 & chosen_way_decode[2];
  assign N189 = decode_v_i[3] | decode_v_i[4];
  assign N101 = N190 & chosen_way_decode[3];
  assign N190 = decode_v_i[3] | decode_v_i[4];
  assign N102 = N191 & chosen_way_decode[3];
  assign N191 = decode_v_i[3] | decode_v_i[4];
  assign N103 = ~N93;
  assign N104 = ~N94;
  assign N105 = N103 & N104;
  assign N106 = N103 & N94;
  assign N107 = N93 & N104;
  assign N108 = N93 & N94;
  assign N111 = N193 & N110;
  assign N193 = N192 & N109;
  assign N192 = ~decode_v_i[3];
  assign N113 = ~dma_way_o[0];
  assign N114 = ~dma_way_o[1];
  assign N115 = N113 & N114;
  assign N116 = N113 & dma_way_o[1];
  assign N117 = dma_way_o[0] & N114;
  assign N118 = dma_way_o[0] & dma_way_o[1];
  assign N137 = ~dma_done_i;
  assign N138 = N113 & N114;
  assign N139 = N113 & dma_way_o[1];
  assign N140 = dma_way_o[0] & N114;
  assign N141 = dma_way_o[0] & dma_way_o[1];
  assign N160 = N194 | decode_v_i[5];
  assign N194 = decode_v_i[8] | decode_v_i[4];
  assign N162 = ~ack_i;
  assign N163 = ~tag_mem_data_o[79];
  assign N164 = N163;
  assign N165 = N46;
  assign N166 = N42;
  assign N167 = N163;
  assign N168 = ~goto_flush_op;
  assign N169 = goto_lock_op & N168;
  assign N170 = ~invalid_exist;
  assign N171 = N75 & N170;

  always @(posedge clk_i) begin
    if(reset_i) begin
      { dma_way_o[1:0] } <= { 1'b0, 1'b0 };
      { miss_state_r[3:0] } <= { 1'b0, 1'b0, 1'b0, 1'b0 };
    end else if(1'b1) begin
      { dma_way_o[1:0] } <= { chosen_way_o[1:0] };
      { miss_state_r[3:0] } <= { miss_state_n[3:0] };
    end 
  end


endmodule

