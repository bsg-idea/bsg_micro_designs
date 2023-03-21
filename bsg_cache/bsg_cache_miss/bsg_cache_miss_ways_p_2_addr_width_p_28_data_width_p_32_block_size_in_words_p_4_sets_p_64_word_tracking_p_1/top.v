

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
  input [35:0] tag_v_i;
  input [1:0] valid_v_i;
  input [1:0] lock_v_i;
  input [1:0] tag_hit_v_i;
  input [0:0] tag_hit_way_id_i;
  output [3:0] dma_cmd_o;
  output [0:0] dma_way_o;
  output [27:0] dma_addr_o;
  input [2:0] stat_info_i;
  output [5:0] stat_mem_addr_o;
  output [2:0] stat_mem_data_o;
  output [2:0] stat_mem_w_mask_o;
  output [5:0] tag_mem_addr_o;
  output [39:0] tag_mem_data_o;
  output [39:0] tag_mem_w_mask_o;
  output [5:0] track_mem_addr_o;
  output [7:0] track_mem_w_mask_o;
  output [7:0] track_mem_data_o;
  output [0:0] chosen_way_o;
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
  input [35:0] tag_v_i;
  input [1:0] valid_v_i;
  input [1:0] lock_v_i;
  input [1:0] tag_hit_v_i;
  input [0:0] tag_hit_way_id_i;
  output [3:0] dma_cmd_o;
  output [0:0] dma_way_o;
  output [27:0] dma_addr_o;
  input [2:0] stat_info_i;
  output [5:0] stat_mem_addr_o;
  output [2:0] stat_mem_data_o;
  output [2:0] stat_mem_w_mask_o;
  output [5:0] tag_mem_addr_o;
  output [39:0] tag_mem_data_o;
  output [39:0] tag_mem_w_mask_o;
  output [5:0] track_mem_addr_o;
  output [7:0] track_mem_w_mask_o;
  output [7:0] track_mem_data_o;
  output [0:0] chosen_way_o;
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
  wire [3:0] dma_cmd_o,miss_state_r,miss_state_n;
  wire [0:0] dma_way_o,chosen_way_o,invalid_way_id,flush_way_r,chosen_way_lru_data,
  chosen_way_lru_mask,modify_mask_lo,modify_data_lo,modified_lru_bits,lru_way_id,
  chosen_way_n;
  wire [27:0] dma_addr_o;
  wire [5:0] stat_mem_addr_o,tag_mem_addr_o,track_mem_addr_o;
  wire [2:0] stat_mem_data_o,stat_mem_w_mask_o;
  wire [39:0] tag_mem_data_o,tag_mem_w_mask_o;
  wire [7:0] track_mem_w_mask_o,track_mem_data_o;
  wire track_data_we_o,stat_mem_v_o,stat_mem_w_o,tag_mem_v_o,tag_mem_w_o,track_mem_v_o,
  track_mem_w_o,done_o,recover_o,select_snoop_data_r_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,
  N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,
  track_mem_data_o_1__3_,_0_net__1_,_0_net__0_,invalid_exist,goto_flush_op,goto_lock_op,
  N27,N28,full_word_op,st_tag_miss_op,N29,N30,select_snoop_data_n,N31,N32,N33,N34,
  N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,
  N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,
  N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,
  N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,
  N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,
  N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,
  N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,
  N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,
  N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,
  N192,N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,
  N208,N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,
  N224,N225,N226,N227;
  wire [1:0] chosen_way_decode,addr_way_v_decode,flush_way_decode;
  reg track_data_we_o_sv2v_reg,miss_state_r_3_sv2v_reg,miss_state_r_2_sv2v_reg,
  miss_state_r_1_sv2v_reg,miss_state_r_0_sv2v_reg,chosen_way_o_0_sv2v_reg,
  flush_way_r_0_sv2v_reg,select_snoop_data_r_o_sv2v_reg;
  assign track_data_we_o = track_data_we_o_sv2v_reg;
  assign miss_state_r[3] = miss_state_r_3_sv2v_reg;
  assign miss_state_r[2] = miss_state_r_2_sv2v_reg;
  assign miss_state_r[1] = miss_state_r_1_sv2v_reg;
  assign miss_state_r[0] = miss_state_r_0_sv2v_reg;
  assign chosen_way_o[0] = chosen_way_o_0_sv2v_reg;
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
  assign track_mem_data_o[0] = track_mem_data_o_1__3_;
  assign track_mem_data_o[1] = track_mem_data_o_1__3_;
  assign track_mem_data_o[2] = track_mem_data_o_1__3_;
  assign track_mem_data_o[3] = track_mem_data_o_1__3_;
  assign track_mem_data_o[4] = track_mem_data_o_1__3_;
  assign track_mem_data_o[5] = track_mem_data_o_1__3_;
  assign track_mem_data_o[6] = track_mem_data_o_1__3_;
  assign track_mem_data_o[7] = track_mem_data_o_1__3_;
  assign dma_cmd_o[2] = track_mem_data_o_1__3_;

  bsg_priority_encode
  invalid_way_pe
  (
    .i({ _0_net__1_, _0_net__0_ }),
    .addr_o(invalid_way_id[0]),
    .v_o(invalid_exist)
  );


  bsg_lru_pseudo_tree_decode
  chosen_way_lru_decode
  (
    .way_id_i(chosen_way_o[0]),
    .data_o(chosen_way_lru_data[0]),
    .mask_o(chosen_way_lru_mask[0])
  );


  bsg_lru_pseudo_tree_backup
  backup_lru
  (
    .disabled_ways_i(lock_v_i),
    .modify_mask_o(modify_mask_lo[0]),
    .modify_data_o(modify_data_lo[0])
  );


  bsg_mux_bitwise
  lru_bit_mux
  (
    .data0_i(stat_info_i[0]),
    .data1_i(modify_data_lo[0]),
    .sel_i(modify_mask_lo[0]),
    .data_o(modified_lru_bits[0])
  );


  bsg_lru_pseudo_tree_encode
  lru_encode
  (
    .lru_i(modified_lru_bits[0]),
    .way_id_o(lru_way_id[0])
  );


  bsg_decode
  chosen_way_demux
  (
    .i(chosen_way_n[0]),
    .o(chosen_way_decode)
  );


  bsg_decode
  addr_way_v_demux
  (
    .i(addr_v_i[10]),
    .o(addr_way_v_decode)
  );

  assign N35 = N31 & N32;
  assign N36 = N33 & N34;
  assign N37 = N35 & N36;
  assign N38 = miss_state_r[3] | N32;
  assign N39 = miss_state_r[1] | miss_state_r[0];
  assign N40 = N38 | N39;
  assign N42 = miss_state_r[3] | miss_state_r[2];
  assign N43 = miss_state_r[1] | N34;
  assign N44 = N42 | N43;
  assign N46 = miss_state_r[3] | miss_state_r[2];
  assign N47 = N33 | miss_state_r[0];
  assign N48 = N46 | N47;
  assign N50 = miss_state_r[3] | miss_state_r[2];
  assign N51 = N33 | N34;
  assign N52 = N50 | N51;
  assign N54 = miss_state_r[3] | N32;
  assign N55 = miss_state_r[1] | N34;
  assign N56 = N54 | N55;
  assign N58 = miss_state_r[3] | N32;
  assign N59 = N33 | miss_state_r[0];
  assign N60 = N58 | N59;
  assign N62 = miss_state_r[3] | N32;
  assign N63 = N33 | N34;
  assign N64 = N62 | N63;
  assign N66 = N31 | miss_state_r[2];
  assign N67 = miss_state_r[1] | miss_state_r[0];
  assign N68 = N66 | N67;
  assign N70 = N31 | miss_state_r[2];
  assign N71 = miss_state_r[1] | N34;
  assign N72 = N70 | N71;
  assign N74 = N31 | miss_state_r[2];
  assign N75 = N33 | miss_state_r[0];
  assign N76 = N74 | N75;
  assign N78 = miss_state_r[3] & miss_state_r[1];
  assign N79 = N78 & miss_state_r[0];
  assign N80 = miss_state_r[3] & miss_state_r[2];
  assign N97 = (N96)? stat_info_i[1] : 
               (N0)? stat_info_i[2] : 1'b0;
  assign N0 = N95;
  assign N98 = (N96)? valid_v_i[0] : 
               (N0)? valid_v_i[1] : 1'b0;
  assign N109 = (N108)? stat_info_i[1] : 
                (N1)? stat_info_i[2] : 1'b0;
  assign N1 = N103;
  assign N110 = (N108)? valid_v_i[0] : 
                (N1)? valid_v_i[1] : 1'b0;
  assign N114 = (N113)? tag_v_i[17] : 
                (N2)? tag_v_i[35] : 1'b0;
  assign N2 = dma_way_o[0];
  assign N115 = (N113)? tag_v_i[16] : 
                (N2)? tag_v_i[34] : 1'b0;
  assign N116 = (N113)? tag_v_i[15] : 
                (N2)? tag_v_i[33] : 1'b0;
  assign N117 = (N113)? tag_v_i[14] : 
                (N2)? tag_v_i[32] : 1'b0;
  assign N118 = (N113)? tag_v_i[13] : 
                (N2)? tag_v_i[31] : 1'b0;
  assign N119 = (N113)? tag_v_i[12] : 
                (N2)? tag_v_i[30] : 1'b0;
  assign N120 = (N113)? tag_v_i[11] : 
                (N2)? tag_v_i[29] : 1'b0;
  assign N121 = (N113)? tag_v_i[10] : 
                (N2)? tag_v_i[28] : 1'b0;
  assign N122 = (N113)? tag_v_i[9] : 
                (N2)? tag_v_i[27] : 1'b0;
  assign N123 = (N113)? tag_v_i[8] : 
                (N2)? tag_v_i[26] : 1'b0;
  assign N124 = (N113)? tag_v_i[7] : 
                (N2)? tag_v_i[25] : 1'b0;
  assign N125 = (N113)? tag_v_i[6] : 
                (N2)? tag_v_i[24] : 1'b0;
  assign N126 = (N113)? tag_v_i[5] : 
                (N2)? tag_v_i[23] : 1'b0;
  assign N127 = (N113)? tag_v_i[4] : 
                (N2)? tag_v_i[22] : 1'b0;
  assign N128 = (N113)? tag_v_i[3] : 
                (N2)? tag_v_i[21] : 1'b0;
  assign N129 = (N113)? tag_v_i[2] : 
                (N2)? tag_v_i[20] : 1'b0;
  assign N130 = (N113)? tag_v_i[1] : 
                (N2)? tag_v_i[19] : 1'b0;
  assign N131 = (N113)? tag_v_i[0] : 
                (N2)? tag_v_i[18] : 1'b0;
  assign N133 = (N113)? tag_v_i[17] : 
                (N2)? tag_v_i[35] : 1'b0;
  assign N134 = (N113)? tag_v_i[16] : 
                (N2)? tag_v_i[34] : 1'b0;
  assign N135 = (N113)? tag_v_i[15] : 
                (N2)? tag_v_i[33] : 1'b0;
  assign N136 = (N113)? tag_v_i[14] : 
                (N2)? tag_v_i[32] : 1'b0;
  assign N137 = (N113)? tag_v_i[13] : 
                (N2)? tag_v_i[31] : 1'b0;
  assign N138 = (N113)? tag_v_i[12] : 
                (N2)? tag_v_i[30] : 1'b0;
  assign N139 = (N113)? tag_v_i[11] : 
                (N2)? tag_v_i[29] : 1'b0;
  assign N140 = (N113)? tag_v_i[10] : 
                (N2)? tag_v_i[28] : 1'b0;
  assign N141 = (N113)? tag_v_i[9] : 
                (N2)? tag_v_i[27] : 1'b0;
  assign N142 = (N113)? tag_v_i[8] : 
                (N2)? tag_v_i[26] : 1'b0;
  assign N143 = (N113)? tag_v_i[7] : 
                (N2)? tag_v_i[25] : 1'b0;
  assign N144 = (N113)? tag_v_i[6] : 
                (N2)? tag_v_i[24] : 1'b0;
  assign N145 = (N113)? tag_v_i[5] : 
                (N2)? tag_v_i[23] : 1'b0;
  assign N146 = (N113)? tag_v_i[4] : 
                (N2)? tag_v_i[22] : 1'b0;
  assign N147 = (N113)? tag_v_i[3] : 
                (N2)? tag_v_i[21] : 1'b0;
  assign N148 = (N113)? tag_v_i[2] : 
                (N2)? tag_v_i[20] : 1'b0;
  assign N149 = (N113)? tag_v_i[1] : 
                (N2)? tag_v_i[19] : 1'b0;
  assign N150 = (N113)? tag_v_i[0] : 
                (N2)? tag_v_i[18] : 1'b0;
  assign N166 = (N165)? stat_info_i[1] : 
                (N3)? stat_info_i[2] : 1'b0;
  assign N3 = N164;
  assign N167 = (N165)? valid_v_i[0] : 
                (N3)? valid_v_i[1] : 1'b0;
  assign full_word_op = (N4)? N28 : 
                        (N27)? decode_v_i[20] : 1'b0;
  assign N4 = decode_v_i[17];
  assign dma_way_o[0] = (N5)? flush_way_r[0] : 
                        (N6)? chosen_way_o[0] : 1'b0;
  assign N5 = goto_flush_op;
  assign N6 = N29;
  assign flush_way_decode = (N7)? addr_way_v_decode : 
                            (N30)? tag_hit_v_i : 1'b0;
  assign N7 = decode_v_i[13];
  assign { N89, N88, N87 } = (N5)? { 1'b0, 1'b0, 1'b1 } : 
                             (N174)? { 1'b0, 1'b1, 1'b0 } : 
                             (N177)? { 1'b1, 1'b1, 1'b1 } : 
                             (N86)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign { N92, N91, N90 } = (N8)? { N89, N88, N87 } : 
                             (N83)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N8 = N82;
  assign N95 = (N9)? tag_hit_way_id_i[0] : 
               (N179)? invalid_way_id[0] : 
               (N94)? lru_way_id[0] : 1'b0;
  assign N9 = track_miss_i;
  assign N100 = ~N99;
  assign { N102, N101 } = (N10)? { N100, N99 } : 
                          (N11)? { 1'b1, 1'b0 } : 1'b0;
  assign N10 = dma_done_i;
  assign N11 = N132;
  assign N103 = (N7)? addr_v_i[10] : 
                (N30)? tag_hit_way_id_i[0] : 1'b0;
  assign N112 = ~N111;
  assign N155 = ~N154;
  assign { N159, N158, N157, N156 } = (N10)? { N154, N155, N155, N154 } : 
                                      (N11)? { 1'b0, 1'b1, 1'b0, 1'b1 } : 1'b0;
  assign { N162, N161 } = (N9)? { 1'b0, 1'b0 } : 
                          (N12)? chosen_way_decode : 1'b0;
  assign N12 = N217;
  assign N164 = (N13)? invalid_way_id[0] : 
                (N14)? lru_way_id[0] : 1'b0;
  assign N13 = invalid_exist;
  assign N14 = N163;
  assign N169 = ~N168;
  assign stat_mem_v_o = (N15)? N82 : 
                        (N16)? 1'b0 : 
                        (N17)? 1'b1 : 
                        (N18)? 1'b0 : 
                        (N19)? 1'b0 : 
                        (N20)? N151 : 
                        (N21)? dma_done_i : 
                        (N22)? 1'b0 : 
                        (N23)? 1'b1 : 
                        (N24)? 1'b0 : 
                        (N25)? 1'b0 : 
                        (N26)? 1'b0 : 1'b0;
  assign N15 = N37;
  assign N16 = dma_cmd_o[0];
  assign N17 = N45;
  assign N18 = N49;
  assign N19 = dma_cmd_o[1];
  assign N20 = dma_cmd_o[3];
  assign N21 = track_mem_data_o_1__3_;
  assign N22 = N65;
  assign N23 = N69;
  assign N24 = N73;
  assign N25 = N77;
  assign N26 = N81;
  assign track_mem_v_o = (N15)? N82 : 
                         (N16)? 1'b0 : 
                         (N17)? 1'b0 : 
                         (N18)? 1'b0 : 
                         (N19)? 1'b0 : 
                         (N20)? N153 : 
                         (N21)? dma_done_i : 
                         (N22)? 1'b0 : 
                         (N23)? 1'b1 : 
                         (N24)? 1'b0 : 
                         (N25)? 1'b0 : 
                         (N26)? 1'b0 : 1'b0;
  assign miss_state_n = (N15)? { 1'b0, N92, N91, N90 } : 
                        (N16)? { 1'b0, N102, dma_done_i, N101 } : 
                        (N17)? { N112, 1'b0, N111, 1'b1 } : 
                        (N18)? { 1'b1, 1'b0, 1'b0, 1'b1 } : 
                        (N19)? { 1'b0, dma_done_i, N132, 1'b1 } : 
                        (N20)? { N159, N158, N157, N156 } : 
                        (N21)? { dma_done_i, N132, N132, dma_done_i } : 
                        (N22)? { N169, 1'b0, N168, N168 } : 
                        (N23)? { 1'b1, 1'b0, 1'b0, 1'b1 } : 
                        (N24)? { 1'b1, 1'b0, 1'b1, 1'b0 } : 
                        (N25)? { N170, 1'b0, N170, 1'b0 } : 
                        (N26)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign chosen_way_n[0] = (N15)? chosen_way_o[0] : 
                           (N16)? N95 : 
                           (N17)? chosen_way_o[0] : 
                           (N18)? chosen_way_o[0] : 
                           (N19)? chosen_way_o[0] : 
                           (N20)? chosen_way_o[0] : 
                           (N21)? chosen_way_o[0] : 
                           (N22)? N164 : 
                           (N23)? chosen_way_o[0] : 
                           (N24)? chosen_way_o[0] : 
                           (N25)? chosen_way_o[0] : 
                           (N26)? chosen_way_o[0] : 1'b0;
  assign dma_addr_o[3:2] = (N21)? addr_v_i[3:2] : 
                           (N172)? { 1'b0, 1'b0 } : 1'b0;
  assign dma_addr_o[27:4] = (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N16)? { addr_v_i[27:10], stat_mem_addr_o } : 
                            (N17)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N18)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N19)? { N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, stat_mem_addr_o } : 
                            (N20)? { N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149, N150, stat_mem_addr_o } : 
                            (N21)? { addr_v_i[27:10], stat_mem_addr_o } : 
                            (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N23)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N24)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N25)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N26)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign stat_mem_w_o = (N15)? 1'b0 : 
                        (N16)? 1'b0 : 
                        (N17)? 1'b1 : 
                        (N18)? 1'b0 : 
                        (N19)? 1'b0 : 
                        (N20)? 1'b1 : 
                        (N21)? 1'b1 : 
                        (N22)? 1'b0 : 
                        (N23)? 1'b1 : 
                        (N24)? 1'b0 : 
                        (N25)? 1'b0 : 
                        (N26)? 1'b0 : 1'b0;
  assign stat_mem_data_o = (N15)? { 1'b0, 1'b0, 1'b0 } : 
                           (N16)? { 1'b0, 1'b0, 1'b0 } : 
                           (N17)? { 1'b0, 1'b0, 1'b0 } : 
                           (N18)? { 1'b0, 1'b0, 1'b0 } : 
                           (N19)? { 1'b0, 1'b0, 1'b0 } : 
                           (N20)? { 1'b1, 1'b1, chosen_way_lru_data[0:0] } : 
                           (N21)? { N160, N160, chosen_way_lru_data[0:0] } : 
                           (N22)? { 1'b0, 1'b0, 1'b0 } : 
                           (N23)? { 1'b1, 1'b1, chosen_way_lru_data[0:0] } : 
                           (N24)? { 1'b0, 1'b0, 1'b0 } : 
                           (N25)? { 1'b0, 1'b0, 1'b0 } : 
                           (N26)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign stat_mem_w_mask_o = (N15)? { 1'b0, 1'b0, 1'b0 } : 
                             (N16)? { 1'b0, 1'b0, 1'b0 } : 
                             (N17)? { flush_way_decode, 1'b0 } : 
                             (N18)? { 1'b0, 1'b0, 1'b0 } : 
                             (N19)? { 1'b0, 1'b0, 1'b0 } : 
                             (N20)? { chosen_way_decode, chosen_way_lru_mask[0:0] } : 
                             (N21)? { N162, N161, chosen_way_lru_mask[0:0] } : 
                             (N22)? { 1'b0, 1'b0, 1'b0 } : 
                             (N23)? { chosen_way_decode, chosen_way_lru_mask[0:0] } : 
                             (N24)? { 1'b0, 1'b0, 1'b0 } : 
                             (N25)? { 1'b0, 1'b0, 1'b0 } : 
                             (N26)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign tag_mem_v_o = (N15)? 1'b0 : 
                       (N16)? 1'b0 : 
                       (N17)? 1'b1 : 
                       (N18)? 1'b1 : 
                       (N19)? 1'b0 : 
                       (N20)? N152 : 
                       (N21)? dma_done_i : 
                       (N22)? 1'b0 : 
                       (N23)? 1'b1 : 
                       (N24)? 1'b0 : 
                       (N25)? 1'b0 : 
                       (N26)? 1'b0 : 1'b0;
  assign tag_mem_w_o = (N15)? 1'b0 : 
                       (N16)? 1'b0 : 
                       (N17)? 1'b1 : 
                       (N18)? 1'b1 : 
                       (N19)? 1'b0 : 
                       (N20)? 1'b1 : 
                       (N21)? 1'b1 : 
                       (N22)? 1'b0 : 
                       (N23)? 1'b1 : 
                       (N24)? 1'b0 : 
                       (N25)? 1'b0 : 
                       (N26)? 1'b0 : 1'b0;
  assign tag_mem_w_mask_o = (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N17)? { N106, N107, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N104, N105, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N18)? { 1'b0, tag_hit_v_i[1:1], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, tag_hit_v_i[0:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N19)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N20)? { chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode, chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                            (N21)? { chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode, chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                            (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N23)? { chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode, chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                            (N24)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N25)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N26)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign tag_mem_data_o = (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N17)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N18)? { 1'b0, decode_v_i[7:7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, decode_v_i[7:7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N19)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N20)? { 1'b1, decode_v_i[7:7], addr_v_i[27:10], 1'b1, decode_v_i[7:7], addr_v_i[27:10] } : 
                          (N21)? { 1'b1, decode_v_i[7:7], addr_v_i[27:10], 1'b1, decode_v_i[7:7], addr_v_i[27:10] } : 
                          (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N23)? { 1'b1, decode_v_i[7:7], addr_v_i[27:10], 1'b1, decode_v_i[7:7], addr_v_i[27:10] } : 
                          (N24)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N25)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N26)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign track_mem_w_o = (N15)? 1'b0 : 
                         (N16)? 1'b0 : 
                         (N17)? 1'b0 : 
                         (N18)? 1'b0 : 
                         (N19)? 1'b0 : 
                         (N20)? 1'b1 : 
                         (N21)? 1'b1 : 
                         (N22)? 1'b0 : 
                         (N23)? 1'b1 : 
                         (N24)? 1'b0 : 
                         (N25)? 1'b0 : 
                         (N26)? 1'b0 : 1'b0;
  assign track_mem_w_mask_o = (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N17)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N18)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N19)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N20)? { chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode, chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                              (N21)? { chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode, chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                              (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N23)? { chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode, chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                              (N24)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N25)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N26)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign select_snoop_data_n = (N21)? 1'b1 : 
                               (N25)? 1'b0 : 1'b0;
  assign recover_o = (N15)? 1'b0 : 
                     (N16)? 1'b0 : 
                     (N17)? 1'b0 : 
                     (N18)? 1'b0 : 
                     (N19)? 1'b0 : 
                     (N20)? 1'b0 : 
                     (N21)? 1'b0 : 
                     (N22)? 1'b0 : 
                     (N23)? 1'b0 : 
                     (N24)? 1'b1 : 
                     (N25)? 1'b0 : 
                     (N26)? 1'b0 : 1'b0;
  assign done_o = (N15)? 1'b0 : 
                  (N16)? 1'b0 : 
                  (N17)? 1'b0 : 
                  (N18)? 1'b0 : 
                  (N19)? 1'b0 : 
                  (N20)? 1'b0 : 
                  (N21)? 1'b0 : 
                  (N22)? 1'b0 : 
                  (N23)? 1'b0 : 
                  (N24)? 1'b0 : 
                  (N25)? 1'b1 : 
                  (N26)? 1'b0 : 1'b0;
  assign _0_net__1_ = N205 & N206;
  assign N205 = ~valid_v_i[1];
  assign N206 = ~lock_v_i[1];
  assign _0_net__0_ = N207 & N208;
  assign N207 = ~valid_v_i[0];
  assign N208 = ~lock_v_i[0];
  assign goto_flush_op = N210 | decode_v_i[9];
  assign N210 = N209 | decode_v_i[10];
  assign N209 = decode_v_i[13] | decode_v_i[8];
  assign goto_lock_op = decode_v_i[6] | N211;
  assign N211 = decode_v_i[7] & tag_hit_found_i;
  assign N27 = ~decode_v_i[17];
  assign N28 = N213 & mask_v_i[0];
  assign N213 = N212 & mask_v_i[1];
  assign N212 = mask_v_i[3] & mask_v_i[2];
  assign st_tag_miss_op = N214 & N215;
  assign N214 = decode_v_i[15] & full_word_op;
  assign N215 = ~tag_hit_found_i;
  assign N29 = ~goto_flush_op;
  assign N30 = ~decode_v_i[13];
  assign N31 = ~miss_state_r[3];
  assign N32 = ~miss_state_r[2];
  assign N33 = ~miss_state_r[1];
  assign N34 = ~miss_state_r[0];
  assign N41 = ~N40;
  assign N45 = ~N44;
  assign N49 = ~N48;
  assign N53 = ~N52;
  assign N57 = ~N56;
  assign N61 = ~N60;
  assign N65 = ~N64;
  assign N69 = ~N68;
  assign N73 = ~N72;
  assign N77 = ~N76;
  assign N81 = N79 | N80;
  assign dma_cmd_o[0] = N41;
  assign dma_cmd_o[1] = N53;
  assign dma_cmd_o[3] = N57;
  assign track_mem_data_o_1__3_ = N61;
  assign N82 = N216 & tbuf_empty_i;
  assign N216 = miss_v_i & sbuf_empty_i;
  assign N83 = ~N82;
  assign N84 = goto_lock_op | goto_flush_op;
  assign N85 = st_tag_miss_op | N84;
  assign N86 = ~N85;
  assign N93 = invalid_exist | track_miss_i;
  assign N94 = ~N93;
  assign N96 = ~N95;
  assign N99 = N218 & N98;
  assign N218 = N217 & N97;
  assign N217 = ~track_miss_i;
  assign N104 = N219 & flush_way_decode[0];
  assign N219 = decode_v_i[8] | decode_v_i[9];
  assign N105 = N220 & flush_way_decode[0];
  assign N220 = decode_v_i[8] | decode_v_i[9];
  assign N106 = N221 & flush_way_decode[1];
  assign N221 = decode_v_i[8] | decode_v_i[9];
  assign N107 = N222 & flush_way_decode[1];
  assign N222 = decode_v_i[8] | decode_v_i[9];
  assign N108 = ~N103;
  assign N111 = N224 & N110;
  assign N224 = N223 & N109;
  assign N223 = ~decode_v_i[8];
  assign N113 = ~dma_way_o[0];
  assign N132 = ~dma_done_i;
  assign N151 = dma_done_i & st_tag_miss_op;
  assign N152 = dma_done_i & st_tag_miss_op;
  assign N153 = dma_done_i & st_tag_miss_op;
  assign N154 = N226 | st_tag_miss_op;
  assign N226 = N225 | decode_v_i[10];
  assign N225 = decode_v_i[13] | decode_v_i[9];
  assign N160 = decode_v_i[15] | decode_v_i[4];
  assign N163 = ~invalid_exist;
  assign N165 = ~N164;
  assign N168 = N166 & N167;
  assign N170 = ~ack_i;
  assign N171 = ~track_mem_data_o_1__3_;
  assign N172 = N171;
  assign N173 = ~goto_flush_op;
  assign N174 = goto_lock_op & N173;
  assign N175 = ~goto_lock_op;
  assign N176 = N173 & N175;
  assign N177 = st_tag_miss_op & N176;
  assign N178 = ~track_miss_i;
  assign N179 = invalid_exist & N178;
  assign N180 = track_mem_v_o & N227;
  assign N227 = ~track_mem_w_o;
  assign N181 = N37 | dma_cmd_o[0];
  assign N182 = N181 | N49;
  assign N183 = N182 | dma_cmd_o[1];
  assign N184 = N183 | dma_cmd_o[3];
  assign N185 = N184 | track_mem_data_o_1__3_;
  assign N186 = N185 | N65;
  assign N187 = N186 | N69;
  assign N188 = N187 | N73;
  assign N189 = N188 | N77;
  assign N190 = N189 | N81;
  assign N191 = ~N190;
  assign N192 = N181 | N45;
  assign N193 = N192 | N49;
  assign N194 = N193 | dma_cmd_o[1];
  assign N195 = N194 | dma_cmd_o[3];
  assign N196 = N132 & track_mem_data_o_1__3_;
  assign N197 = N195 | N196;
  assign N198 = N197 | N65;
  assign N199 = N198 | N69;
  assign N200 = N199 | N73;
  assign N201 = N170 & N77;
  assign N202 = N200 | N201;
  assign N203 = N202 | N81;
  assign N204 = ~N203;

  always @(posedge clk_i) begin
    if(reset_i) begin
      track_data_we_o_sv2v_reg <= 1'b0;
      miss_state_r_3_sv2v_reg <= 1'b0;
      miss_state_r_2_sv2v_reg <= 1'b0;
      miss_state_r_1_sv2v_reg <= 1'b0;
      miss_state_r_0_sv2v_reg <= 1'b0;
      chosen_way_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      track_data_we_o_sv2v_reg <= N180;
      miss_state_r_3_sv2v_reg <= miss_state_n[3];
      miss_state_r_2_sv2v_reg <= miss_state_n[2];
      miss_state_r_1_sv2v_reg <= miss_state_n[1];
      miss_state_r_0_sv2v_reg <= miss_state_n[0];
      chosen_way_o_0_sv2v_reg <= chosen_way_n[0];
    end 
    if(reset_i) begin
      flush_way_r_0_sv2v_reg <= 1'b0;
    end else if(N191) begin
      flush_way_r_0_sv2v_reg <= N103;
    end 
    if(reset_i) begin
      select_snoop_data_r_o_sv2v_reg <= 1'b0;
    end else if(N204) begin
      select_snoop_data_r_o_sv2v_reg <= select_snoop_data_n;
    end 
  end


endmodule

