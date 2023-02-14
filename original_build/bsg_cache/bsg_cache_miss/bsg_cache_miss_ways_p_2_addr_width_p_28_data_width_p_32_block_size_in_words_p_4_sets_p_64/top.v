

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
  input [35:0] tag_v_i;
  input [1:0] valid_v_i;
  input [1:0] lock_v_i;
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
  output [0:0] chosen_way_o;
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
  input [35:0] tag_v_i;
  input [1:0] valid_v_i;
  input [1:0] lock_v_i;
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
  output [0:0] chosen_way_o;
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
  wire [3:0] dma_cmd_o,miss_state_n;
  wire [27:0] dma_addr_o;
  wire [5:0] stat_mem_addr_o,tag_mem_addr_o;
  wire [2:0] stat_mem_data_o,stat_mem_w_mask_o;
  wire [39:0] tag_mem_data_o,tag_mem_w_mask_o;
  wire [0:0] chosen_way_o,invalid_way_id,lru_way_id,chosen_way_lru_data,chosen_way_lru_mask,
  backup_lru_way_id;
  wire stat_mem_v_o,stat_mem_w_o,tag_mem_v_o,tag_mem_w_o,done_o,recover_o,N0,N1,N2,N3,
  N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,n_0_net__1_,
  n_0_net__0_,invalid_exist,goto_flush_op,goto_lock_op,n_2_net__1_,n_2_net__0_,N21,N22,
  N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,
  N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,
  N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,
  N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,
  N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,
  N150,N151,N152,N153,N154,N155,N156,N157,N158,N159;
  wire [1:0] chosen_way_decode;
  reg [0:0] dma_way_o;
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
  assign tag_mem_data_o[19] = tag_mem_data_o[39];
  assign dma_cmd_o[0] = tag_mem_data_o[39];

  bsg_priority_encode
  invalid_way_pe
  (
    .i({ n_0_net__1_, n_0_net__0_ }),
    .addr_o(invalid_way_id[0]),
    .v_o(invalid_exist)
  );


  bsg_lru_pseudo_tree_encode
  lru_encode
  (
    .lru_i(stat_info_i[0]),
    .way_id_o(lru_way_id[0])
  );


  bsg_lru_pseudo_tree_decode
  chosen_way_lru_decode
  (
    .way_id_i(chosen_way_o[0]),
    .data_o(chosen_way_lru_data[0]),
    .mask_o(chosen_way_lru_mask[0])
  );


  bsg_priority_encode
  backup_lru_pe
  (
    .i({ n_2_net__1_, n_2_net__0_ }),
    .addr_o(backup_lru_way_id[0])
  );


  bsg_decode
  chosen_way_demux
  (
    .i(chosen_way_o[0]),
    .o(chosen_way_decode)
  );

  assign N25 = N21 & N22;
  assign N26 = N23 & N24;
  assign N27 = N25 & N26;
  assign N28 = miss_state_r[3] | N22;
  assign N29 = miss_state_r[1] | miss_state_r[0];
  assign N30 = N28 | N29;
  assign N32 = miss_state_r[3] | miss_state_r[2];
  assign N33 = miss_state_r[1] | N24;
  assign N34 = N32 | N33;
  assign N36 = miss_state_r[3] | miss_state_r[2];
  assign N37 = N23 | miss_state_r[0];
  assign N38 = N36 | N37;
  assign N40 = miss_state_r[3] | miss_state_r[2];
  assign N41 = N23 | N24;
  assign N42 = N40 | N41;
  assign N44 = miss_state_r[3] | N22;
  assign N45 = miss_state_r[1] | N24;
  assign N46 = N44 | N45;
  assign N48 = miss_state_r[3] | N22;
  assign N49 = N23 | miss_state_r[0];
  assign N50 = N48 | N49;
  assign N52 = miss_state_r[3] | N22;
  assign N53 = N23 | N24;
  assign N54 = N52 | N53;
  assign N56 = N21 | miss_state_r[2];
  assign N57 = miss_state_r[1] | miss_state_r[0];
  assign N58 = N56 | N57;
  assign N60 = miss_state_r[3] & miss_state_r[0];
  assign N61 = miss_state_r[3] & miss_state_r[1];
  assign N62 = miss_state_r[3] & miss_state_r[2];
  assign N74 = (N73)? lock_v_i[0] : 
               (N0)? lock_v_i[1] : 1'b0;
  assign N0 = lru_way_id[0];
  assign N79 = (N78)? stat_info_i[1] : 
               (N1)? stat_info_i[2] : 1'b0;
  assign N1 = N77;
  assign N80 = (N78)? valid_v_i[0] : 
               (N1)? valid_v_i[1] : 1'b0;
  assign N92 = (N91)? stat_info_i[1] : 
               (N2)? stat_info_i[2] : 1'b0;
  assign N2 = N86;
  assign N93 = (N91)? valid_v_i[0] : 
               (N2)? valid_v_i[1] : 1'b0;
  assign N97 = (N96)? tag_v_i[17] : 
               (N3)? tag_v_i[35] : 1'b0;
  assign N3 = dma_way_o[0];
  assign N98 = (N96)? tag_v_i[16] : 
               (N3)? tag_v_i[34] : 1'b0;
  assign N99 = (N96)? tag_v_i[15] : 
               (N3)? tag_v_i[33] : 1'b0;
  assign N100 = (N96)? tag_v_i[14] : 
                (N3)? tag_v_i[32] : 1'b0;
  assign N101 = (N96)? tag_v_i[13] : 
                (N3)? tag_v_i[31] : 1'b0;
  assign N102 = (N96)? tag_v_i[12] : 
                (N3)? tag_v_i[30] : 1'b0;
  assign N103 = (N96)? tag_v_i[11] : 
                (N3)? tag_v_i[29] : 1'b0;
  assign N104 = (N96)? tag_v_i[10] : 
                (N3)? tag_v_i[28] : 1'b0;
  assign N105 = (N96)? tag_v_i[9] : 
                (N3)? tag_v_i[27] : 1'b0;
  assign N106 = (N96)? tag_v_i[8] : 
                (N3)? tag_v_i[26] : 1'b0;
  assign N107 = (N96)? tag_v_i[7] : 
                (N3)? tag_v_i[25] : 1'b0;
  assign N108 = (N96)? tag_v_i[6] : 
                (N3)? tag_v_i[24] : 1'b0;
  assign N109 = (N96)? tag_v_i[5] : 
                (N3)? tag_v_i[23] : 1'b0;
  assign N110 = (N96)? tag_v_i[4] : 
                (N3)? tag_v_i[22] : 1'b0;
  assign N111 = (N96)? tag_v_i[3] : 
                (N3)? tag_v_i[21] : 1'b0;
  assign N112 = (N96)? tag_v_i[2] : 
                (N3)? tag_v_i[20] : 1'b0;
  assign N113 = (N96)? tag_v_i[1] : 
                (N3)? tag_v_i[19] : 1'b0;
  assign N114 = (N96)? tag_v_i[0] : 
                (N3)? tag_v_i[18] : 1'b0;
  assign N116 = (N96)? tag_v_i[17] : 
                (N3)? tag_v_i[35] : 1'b0;
  assign N117 = (N96)? tag_v_i[16] : 
                (N3)? tag_v_i[34] : 1'b0;
  assign N118 = (N96)? tag_v_i[15] : 
                (N3)? tag_v_i[33] : 1'b0;
  assign N119 = (N96)? tag_v_i[14] : 
                (N3)? tag_v_i[32] : 1'b0;
  assign N120 = (N96)? tag_v_i[13] : 
                (N3)? tag_v_i[31] : 1'b0;
  assign N121 = (N96)? tag_v_i[12] : 
                (N3)? tag_v_i[30] : 1'b0;
  assign N122 = (N96)? tag_v_i[11] : 
                (N3)? tag_v_i[29] : 1'b0;
  assign N123 = (N96)? tag_v_i[10] : 
                (N3)? tag_v_i[28] : 1'b0;
  assign N124 = (N96)? tag_v_i[9] : 
                (N3)? tag_v_i[27] : 1'b0;
  assign N125 = (N96)? tag_v_i[8] : 
                (N3)? tag_v_i[26] : 1'b0;
  assign N126 = (N96)? tag_v_i[7] : 
                (N3)? tag_v_i[25] : 1'b0;
  assign N127 = (N96)? tag_v_i[6] : 
                (N3)? tag_v_i[24] : 1'b0;
  assign N128 = (N96)? tag_v_i[5] : 
                (N3)? tag_v_i[23] : 1'b0;
  assign N129 = (N96)? tag_v_i[4] : 
                (N3)? tag_v_i[22] : 1'b0;
  assign N130 = (N96)? tag_v_i[3] : 
                (N3)? tag_v_i[21] : 1'b0;
  assign N131 = (N96)? tag_v_i[2] : 
                (N3)? tag_v_i[20] : 1'b0;
  assign N132 = (N96)? tag_v_i[1] : 
                (N3)? tag_v_i[19] : 1'b0;
  assign N133 = (N96)? tag_v_i[0] : 
                (N3)? tag_v_i[18] : 1'b0;
  assign { N69, N68, N67 } = (N4)? { 1'b0, 1'b0, 1'b1 } : 
                             (N142)? { 1'b0, 1'b1, 1'b0 } : 
                             (N66)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign N4 = goto_flush_op;
  assign { N72, N71, N70 } = (N5)? { N69, N68, N67 } : 
                             (N6)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N5 = miss_v_i;
  assign N6 = N64;
  assign N77 = (N7)? invalid_way_id[0] : 
               (N144)? backup_lru_way_id[0] : 
               (N76)? lru_way_id[0] : 1'b0;
  assign N7 = invalid_exist;
  assign N82 = ~N81;
  assign { N84, N83 } = (N8)? { N82, N81 } : 
                        (N9)? { 1'b1, 1'b0 } : 1'b0;
  assign N8 = dma_done_i;
  assign N9 = N115;
  assign N86 = (N10)? addr_v_i[10] : 
               (N85)? tag_hit_way_id_i[0] : 1'b0;
  assign N10 = decode_v_i[8];
  assign N95 = ~N94;
  assign N135 = (N8)? N134 : 
                (N9)? 1'b1 : 1'b0;
  assign stat_mem_v_o = (N11)? miss_v_i : 
                        (N12)? dma_done_i : 
                        (N13)? 1'b1 : 
                        (N14)? 1'b0 : 
                        (N15)? 1'b0 : 
                        (N16)? 1'b0 : 
                        (N17)? 1'b0 : 
                        (N18)? 1'b0 : 
                        (N19)? 1'b0 : 
                        (N20)? 1'b0 : 1'b0;
  assign N11 = N27;
  assign N12 = tag_mem_data_o[39];
  assign N13 = N35;
  assign N14 = N39;
  assign N15 = dma_cmd_o[1];
  assign N16 = N47;
  assign N17 = N51;
  assign N18 = N55;
  assign N19 = N59;
  assign N20 = N63;
  assign miss_state_n = (N11)? { 1'b0, N72, N71, N70 } : 
                        (N12)? { 1'b0, N84, dma_done_i, N83 } : 
                        (N13)? { 1'b0, N95, 1'b1, 1'b1 } : 
                        (N14)? { 1'b0, 1'b1, 1'b1, 1'b1 } : 
                        (N15)? { 1'b0, dma_done_i, N115, 1'b1 } : 
                        (N16)? { 1'b0, 1'b1, dma_done_i, N135 } : 
                        (N17)? { 1'b0, 1'b1, 1'b1, dma_done_i } : 
                        (N18)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                        (N19)? { N136, 1'b0, 1'b0, 1'b0 } : 
                        (N20)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign chosen_way_o[0] = (N11)? dma_way_o[0] : 
                           (N12)? N77 : 
                           (N13)? N86 : 
                           (N14)? tag_hit_way_id_i[0] : 
                           (N15)? dma_way_o[0] : 
                           (N16)? dma_way_o[0] : 
                           (N17)? dma_way_o[0] : 
                           (N18)? dma_way_o[0] : 
                           (N19)? dma_way_o[0] : 
                           (N20)? dma_way_o[0] : 1'b0;
  assign dma_cmd_o[2] = (N17)? sbuf_empty_i : 
                        (N139)? 1'b0 : 1'b0;
  assign dma_cmd_o[3] = (N16)? sbuf_empty_i : 
                        (N140)? 1'b0 : 1'b0;
  assign dma_addr_o[3:2] = (N17)? addr_v_i[3:2] : 
                           (N139)? { 1'b0, 1'b0 } : 1'b0;
  assign dma_addr_o[27:4] = (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N12)? addr_v_i[27:4] : 
                            (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N15)? { N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, addr_v_i[9:4] } : 
                            (N16)? { N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133, addr_v_i[9:4] } : 
                            (N17)? addr_v_i[27:4] : 
                            (N18)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N19)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N20)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign stat_mem_w_o = (N11)? 1'b0 : 
                        (N12)? dma_done_i : 
                        (N13)? 1'b1 : 
                        (N14)? 1'b0 : 
                        (N15)? 1'b0 : 
                        (N16)? 1'b0 : 
                        (N17)? 1'b0 : 
                        (N18)? 1'b0 : 
                        (N19)? 1'b0 : 
                        (N20)? 1'b0 : 1'b0;
  assign stat_mem_data_o = (N11)? { 1'b0, 1'b0, 1'b0 } : 
                           (N12)? { decode_v_i[10:10], decode_v_i[10:10], chosen_way_lru_data[0:0] } : 
                           (N13)? { 1'b0, 1'b0, 1'b0 } : 
                           (N14)? { 1'b0, 1'b0, 1'b0 } : 
                           (N15)? { 1'b0, 1'b0, 1'b0 } : 
                           (N16)? { 1'b0, 1'b0, 1'b0 } : 
                           (N17)? { 1'b0, 1'b0, 1'b0 } : 
                           (N18)? { 1'b0, 1'b0, 1'b0 } : 
                           (N19)? { 1'b0, 1'b0, 1'b0 } : 
                           (N20)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign stat_mem_w_mask_o = (N11)? { 1'b0, 1'b0, 1'b0 } : 
                             (N12)? { chosen_way_decode, chosen_way_lru_mask[0:0] } : 
                             (N13)? { chosen_way_decode, 1'b0 } : 
                             (N14)? { 1'b0, 1'b0, 1'b0 } : 
                             (N15)? { 1'b0, 1'b0, 1'b0 } : 
                             (N16)? { 1'b0, 1'b0, 1'b0 } : 
                             (N17)? { 1'b0, 1'b0, 1'b0 } : 
                             (N18)? { 1'b0, 1'b0, 1'b0 } : 
                             (N19)? { 1'b0, 1'b0, 1'b0 } : 
                             (N20)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign tag_mem_v_o = (N11)? 1'b0 : 
                       (N12)? dma_done_i : 
                       (N13)? 1'b1 : 
                       (N14)? 1'b1 : 
                       (N15)? 1'b0 : 
                       (N16)? 1'b0 : 
                       (N17)? 1'b0 : 
                       (N18)? 1'b0 : 
                       (N19)? 1'b0 : 
                       (N20)? 1'b0 : 1'b0;
  assign tag_mem_w_o = (N11)? 1'b0 : 
                       (N12)? dma_done_i : 
                       (N13)? 1'b1 : 
                       (N14)? 1'b1 : 
                       (N15)? 1'b0 : 
                       (N16)? 1'b0 : 
                       (N17)? 1'b0 : 
                       (N18)? 1'b0 : 
                       (N19)? 1'b0 : 
                       (N20)? 1'b0 : 1'b0;
  assign { tag_mem_w_mask_o[37:20], tag_mem_w_mask_o[17:0] } = (N12)? { chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode, chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                                                               (N138)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_w_mask_o[39:38], tag_mem_w_mask_o[19:18] } = (N11)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                (N12)? { chosen_way_decode[1:1], chosen_way_decode, chosen_way_decode[0:0] } : 
                                                                (N13)? { N89, N90, N87, N88 } : 
                                                                (N14)? { 1'b0, chosen_way_decode[1:1], 1'b0, chosen_way_decode[0:0] } : 
                                                                (N15)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                (N16)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                (N17)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                (N18)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                (N19)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                (N20)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_data_o[37:20], tag_mem_data_o[17:0] } = (N12)? { addr_v_i[27:10], addr_v_i[27:10] } : 
                                                           (N138)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_data_o[38:38], tag_mem_data_o[18:18] } = (N11)? { 1'b0, 1'b0 } : 
                                                            (N12)? { decode_v_i[2:2], decode_v_i[2:2] } : 
                                                            (N13)? { 1'b0, 1'b0 } : 
                                                            (N14)? { decode_v_i[2:2], decode_v_i[2:2] } : 
                                                            (N15)? { 1'b0, 1'b0 } : 
                                                            (N16)? { 1'b0, 1'b0 } : 
                                                            (N17)? { 1'b0, 1'b0 } : 
                                                            (N18)? { 1'b0, 1'b0 } : 
                                                            (N19)? { 1'b0, 1'b0 } : 
                                                            (N20)? { 1'b0, 1'b0 } : 1'b0;
  assign recover_o = (N11)? 1'b0 : 
                     (N12)? 1'b0 : 
                     (N13)? 1'b0 : 
                     (N14)? 1'b0 : 
                     (N15)? 1'b0 : 
                     (N16)? 1'b0 : 
                     (N17)? 1'b0 : 
                     (N18)? 1'b1 : 
                     (N19)? 1'b0 : 
                     (N20)? 1'b0 : 1'b0;
  assign done_o = (N11)? 1'b0 : 
                  (N12)? 1'b0 : 
                  (N13)? 1'b0 : 
                  (N14)? 1'b0 : 
                  (N15)? 1'b0 : 
                  (N16)? 1'b0 : 
                  (N17)? 1'b0 : 
                  (N18)? 1'b0 : 
                  (N19)? 1'b1 : 
                  (N20)? 1'b0 : 1'b0;
  assign n_0_net__1_ = N145 & N146;
  assign N145 = ~valid_v_i[1];
  assign N146 = ~lock_v_i[1];
  assign n_0_net__0_ = N147 & N148;
  assign N147 = ~valid_v_i[0];
  assign N148 = ~lock_v_i[0];
  assign goto_flush_op = N150 | decode_v_i[4];
  assign N150 = N149 | decode_v_i[5];
  assign N149 = decode_v_i[8] | decode_v_i[3];
  assign goto_lock_op = decode_v_i[1] | N151;
  assign N151 = decode_v_i[2] & tag_hit_found_i;
  assign n_2_net__1_ = ~lock_v_i[1];
  assign n_2_net__0_ = ~lock_v_i[0];
  assign N21 = ~miss_state_r[3];
  assign N22 = ~miss_state_r[2];
  assign N23 = ~miss_state_r[1];
  assign N24 = ~miss_state_r[0];
  assign N31 = ~N30;
  assign N35 = ~N34;
  assign N39 = ~N38;
  assign N43 = ~N42;
  assign N47 = ~N46;
  assign N51 = ~N50;
  assign N55 = ~N54;
  assign N59 = ~N58;
  assign N63 = N60 | N152;
  assign N152 = N61 | N62;
  assign tag_mem_data_o[39] = N31;
  assign dma_cmd_o[1] = N43;
  assign N64 = ~miss_v_i;
  assign N65 = goto_lock_op | goto_flush_op;
  assign N66 = ~N65;
  assign N73 = ~lru_way_id[0];
  assign N75 = N74 | invalid_exist;
  assign N76 = ~N75;
  assign N78 = ~N77;
  assign N81 = N79 & N80;
  assign N85 = ~decode_v_i[8];
  assign N87 = N153 & chosen_way_decode[0];
  assign N153 = decode_v_i[3] | decode_v_i[4];
  assign N88 = N154 & chosen_way_decode[0];
  assign N154 = decode_v_i[3] | decode_v_i[4];
  assign N89 = N155 & chosen_way_decode[1];
  assign N155 = decode_v_i[3] | decode_v_i[4];
  assign N90 = N156 & chosen_way_decode[1];
  assign N156 = decode_v_i[3] | decode_v_i[4];
  assign N91 = ~N86;
  assign N94 = N158 & N93;
  assign N158 = N157 & N92;
  assign N157 = ~decode_v_i[3];
  assign N96 = ~dma_way_o[0];
  assign N115 = ~dma_done_i;
  assign N134 = N159 | decode_v_i[5];
  assign N159 = decode_v_i[8] | decode_v_i[4];
  assign N136 = ~ack_i;
  assign N137 = ~tag_mem_data_o[39];
  assign N138 = N137;
  assign N139 = N50;
  assign N140 = N46;
  assign N141 = ~goto_flush_op;
  assign N142 = goto_lock_op & N141;
  assign N143 = ~invalid_exist;
  assign N144 = N74 & N143;

  always @(posedge clk_i) begin
    if(reset_i) begin
      { dma_way_o[0:0] } <= { 1'b0 };
      { miss_state_r[3:0] } <= { 1'b0, 1'b0, 1'b0, 1'b0 };
    end else if(1'b1) begin
      { dma_way_o[0:0] } <= { chosen_way_o[0:0] };
      { miss_state_r[3:0] } <= { miss_state_n[3:0] };
    end 
  end


endmodule

