

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
  input [38:0] addr_v_i;
  input [199:0] tag_v_i;
  input [7:0] valid_v_i;
  input [7:0] lock_v_i;
  input [2:0] tag_hit_way_id_i;
  output [3:0] dma_cmd_o;
  output [2:0] dma_way_o;
  output [38:0] dma_addr_o;
  input [14:0] stat_info_i;
  output [7:0] stat_mem_addr_o;
  output [14:0] stat_mem_data_o;
  output [14:0] stat_mem_w_mask_o;
  output [7:0] tag_mem_addr_o;
  output [215:0] tag_mem_data_o;
  output [215:0] tag_mem_w_mask_o;
  output [2:0] chosen_way_o;
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
  input [38:0] addr_v_i;
  input [199:0] tag_v_i;
  input [7:0] valid_v_i;
  input [7:0] lock_v_i;
  input [2:0] tag_hit_way_id_i;
  output [3:0] dma_cmd_o;
  output [2:0] dma_way_o;
  output [38:0] dma_addr_o;
  input [14:0] stat_info_i;
  output [7:0] stat_mem_addr_o;
  output [14:0] stat_mem_data_o;
  output [14:0] stat_mem_w_mask_o;
  output [7:0] tag_mem_addr_o;
  output [215:0] tag_mem_data_o;
  output [215:0] tag_mem_w_mask_o;
  output [2:0] chosen_way_o;
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
  wire [38:0] dma_addr_o;
  wire [7:0] stat_mem_addr_o,tag_mem_addr_o,chosen_way_decode;
  wire [14:0] stat_mem_data_o,stat_mem_w_mask_o;
  wire [215:0] tag_mem_data_o,tag_mem_w_mask_o;
  wire [2:0] chosen_way_o,invalid_way_id,lru_way_id,backup_lru_way_id;
  wire stat_mem_v_o,stat_mem_w_o,tag_mem_v_o,tag_mem_w_o,done_o,recover_o,N0,N1,N2,N3,
  N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,n_0_net__7_,n_0_net__6_,
  n_0_net__5_,n_0_net__4_,n_0_net__3_,n_0_net__2_,n_0_net__1_,n_0_net__0_,invalid_exist,
  goto_flush_op,goto_lock_op,n_2_net__7_,n_2_net__6_,n_2_net__5_,n_2_net__4_,
  n_2_net__3_,n_2_net__2_,n_2_net__1_,n_2_net__0_,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,
  N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,
  N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,
  N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,
  N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,
  N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,
  N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,
  N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,
  N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,
  N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,
  N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,N198,N199,N200,N201,
  N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,N214,N215,N216,N217,
  N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,N230,N231,N232,N233,
  N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,N246,N247,N248,N249,
  N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,N260,N261,N262,N263,N264,N265,
  N266,N267,N268,N269,N270,N271,N272,N273,N274,N275,N276,N277,N278,N279,N280,N281;
  wire [6:0] chosen_way_lru_data,chosen_way_lru_mask;
  reg [2:0] dma_way_o;
  reg [3:0] miss_state_r;
  assign dma_addr_o[0] = 1'b0;
  assign dma_addr_o[1] = 1'b0;
  assign dma_addr_o[2] = 1'b0;
  assign tag_mem_addr_o[7] = addr_v_i[13];
  assign stat_mem_addr_o[7] = addr_v_i[13];
  assign tag_mem_addr_o[6] = addr_v_i[12];
  assign stat_mem_addr_o[6] = addr_v_i[12];
  assign tag_mem_addr_o[5] = addr_v_i[11];
  assign stat_mem_addr_o[5] = addr_v_i[11];
  assign tag_mem_addr_o[4] = addr_v_i[10];
  assign stat_mem_addr_o[4] = addr_v_i[10];
  assign tag_mem_addr_o[3] = addr_v_i[9];
  assign stat_mem_addr_o[3] = addr_v_i[9];
  assign tag_mem_addr_o[2] = addr_v_i[8];
  assign stat_mem_addr_o[2] = addr_v_i[8];
  assign tag_mem_addr_o[1] = addr_v_i[7];
  assign stat_mem_addr_o[1] = addr_v_i[7];
  assign tag_mem_addr_o[0] = addr_v_i[6];
  assign stat_mem_addr_o[0] = addr_v_i[6];
  assign tag_mem_data_o[26] = tag_mem_data_o[215];
  assign tag_mem_data_o[53] = tag_mem_data_o[215];
  assign tag_mem_data_o[80] = tag_mem_data_o[215];
  assign tag_mem_data_o[107] = tag_mem_data_o[215];
  assign tag_mem_data_o[134] = tag_mem_data_o[215];
  assign tag_mem_data_o[161] = tag_mem_data_o[215];
  assign tag_mem_data_o[188] = tag_mem_data_o[215];
  assign dma_cmd_o[0] = tag_mem_data_o[215];

  bsg_priority_encode
  invalid_way_pe
  (
    .i({ n_0_net__7_, n_0_net__6_, n_0_net__5_, n_0_net__4_, n_0_net__3_, n_0_net__2_, n_0_net__1_, n_0_net__0_ }),
    .addr_o(invalid_way_id),
    .v_o(invalid_exist)
  );


  bsg_lru_pseudo_tree_encode
  lru_encode
  (
    .lru_i(stat_info_i[6:0]),
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
    .i({ n_2_net__7_, n_2_net__6_, n_2_net__5_, n_2_net__4_, n_2_net__3_, n_2_net__2_, n_2_net__1_, n_2_net__0_ }),
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
  assign N84 = (N76)? lock_v_i[0] : 
               (N78)? lock_v_i[1] : 
               (N80)? lock_v_i[2] : 
               (N82)? lock_v_i[3] : 
               (N77)? lock_v_i[4] : 
               (N79)? lock_v_i[5] : 
               (N81)? lock_v_i[6] : 
               (N83)? lock_v_i[7] : 1'b0;
  assign N105 = (N97)? stat_info_i[7] : 
                (N99)? stat_info_i[8] : 
                (N101)? stat_info_i[9] : 
                (N103)? stat_info_i[10] : 
                (N98)? stat_info_i[11] : 
                (N100)? stat_info_i[12] : 
                (N102)? stat_info_i[13] : 
                (N104)? stat_info_i[14] : 1'b0;
  assign N106 = (N97)? valid_v_i[0] : 
                (N99)? valid_v_i[1] : 
                (N101)? valid_v_i[2] : 
                (N103)? valid_v_i[3] : 
                (N98)? valid_v_i[4] : 
                (N100)? valid_v_i[5] : 
                (N102)? valid_v_i[6] : 
                (N104)? valid_v_i[7] : 1'b0;
  assign N146 = (N138)? stat_info_i[7] : 
                (N140)? stat_info_i[8] : 
                (N142)? stat_info_i[9] : 
                (N144)? stat_info_i[10] : 
                (N139)? stat_info_i[11] : 
                (N141)? stat_info_i[12] : 
                (N143)? stat_info_i[13] : 
                (N145)? stat_info_i[14] : 1'b0;
  assign N147 = (N138)? valid_v_i[0] : 
                (N140)? valid_v_i[1] : 
                (N142)? valid_v_i[2] : 
                (N144)? valid_v_i[3] : 
                (N139)? valid_v_i[4] : 
                (N141)? valid_v_i[5] : 
                (N143)? valid_v_i[6] : 
                (N145)? valid_v_i[7] : 1'b0;
  assign N165 = (N157)? tag_v_i[24] : 
                (N159)? tag_v_i[49] : 
                (N161)? tag_v_i[74] : 
                (N163)? tag_v_i[99] : 
                (N158)? tag_v_i[124] : 
                (N160)? tag_v_i[149] : 
                (N162)? tag_v_i[174] : 
                (N164)? tag_v_i[199] : 1'b0;
  assign N166 = (N157)? tag_v_i[23] : 
                (N159)? tag_v_i[48] : 
                (N161)? tag_v_i[73] : 
                (N163)? tag_v_i[98] : 
                (N158)? tag_v_i[123] : 
                (N160)? tag_v_i[148] : 
                (N162)? tag_v_i[173] : 
                (N164)? tag_v_i[198] : 1'b0;
  assign N167 = (N157)? tag_v_i[22] : 
                (N159)? tag_v_i[47] : 
                (N161)? tag_v_i[72] : 
                (N163)? tag_v_i[97] : 
                (N158)? tag_v_i[122] : 
                (N160)? tag_v_i[147] : 
                (N162)? tag_v_i[172] : 
                (N164)? tag_v_i[197] : 1'b0;
  assign N168 = (N157)? tag_v_i[21] : 
                (N159)? tag_v_i[46] : 
                (N161)? tag_v_i[71] : 
                (N163)? tag_v_i[96] : 
                (N158)? tag_v_i[121] : 
                (N160)? tag_v_i[146] : 
                (N162)? tag_v_i[171] : 
                (N164)? tag_v_i[196] : 1'b0;
  assign N169 = (N157)? tag_v_i[20] : 
                (N159)? tag_v_i[45] : 
                (N161)? tag_v_i[70] : 
                (N163)? tag_v_i[95] : 
                (N158)? tag_v_i[120] : 
                (N160)? tag_v_i[145] : 
                (N162)? tag_v_i[170] : 
                (N164)? tag_v_i[195] : 1'b0;
  assign N170 = (N157)? tag_v_i[19] : 
                (N159)? tag_v_i[44] : 
                (N161)? tag_v_i[69] : 
                (N163)? tag_v_i[94] : 
                (N158)? tag_v_i[119] : 
                (N160)? tag_v_i[144] : 
                (N162)? tag_v_i[169] : 
                (N164)? tag_v_i[194] : 1'b0;
  assign N171 = (N157)? tag_v_i[18] : 
                (N159)? tag_v_i[43] : 
                (N161)? tag_v_i[68] : 
                (N163)? tag_v_i[93] : 
                (N158)? tag_v_i[118] : 
                (N160)? tag_v_i[143] : 
                (N162)? tag_v_i[168] : 
                (N164)? tag_v_i[193] : 1'b0;
  assign N172 = (N157)? tag_v_i[17] : 
                (N159)? tag_v_i[42] : 
                (N161)? tag_v_i[67] : 
                (N163)? tag_v_i[92] : 
                (N158)? tag_v_i[117] : 
                (N160)? tag_v_i[142] : 
                (N162)? tag_v_i[167] : 
                (N164)? tag_v_i[192] : 1'b0;
  assign N173 = (N157)? tag_v_i[16] : 
                (N159)? tag_v_i[41] : 
                (N161)? tag_v_i[66] : 
                (N163)? tag_v_i[91] : 
                (N158)? tag_v_i[116] : 
                (N160)? tag_v_i[141] : 
                (N162)? tag_v_i[166] : 
                (N164)? tag_v_i[191] : 1'b0;
  assign N174 = (N157)? tag_v_i[15] : 
                (N159)? tag_v_i[40] : 
                (N161)? tag_v_i[65] : 
                (N163)? tag_v_i[90] : 
                (N158)? tag_v_i[115] : 
                (N160)? tag_v_i[140] : 
                (N162)? tag_v_i[165] : 
                (N164)? tag_v_i[190] : 1'b0;
  assign N175 = (N157)? tag_v_i[14] : 
                (N159)? tag_v_i[39] : 
                (N161)? tag_v_i[64] : 
                (N163)? tag_v_i[89] : 
                (N158)? tag_v_i[114] : 
                (N160)? tag_v_i[139] : 
                (N162)? tag_v_i[164] : 
                (N164)? tag_v_i[189] : 1'b0;
  assign N176 = (N157)? tag_v_i[13] : 
                (N159)? tag_v_i[38] : 
                (N161)? tag_v_i[63] : 
                (N163)? tag_v_i[88] : 
                (N158)? tag_v_i[113] : 
                (N160)? tag_v_i[138] : 
                (N162)? tag_v_i[163] : 
                (N164)? tag_v_i[188] : 1'b0;
  assign N177 = (N157)? tag_v_i[12] : 
                (N159)? tag_v_i[37] : 
                (N161)? tag_v_i[62] : 
                (N163)? tag_v_i[87] : 
                (N158)? tag_v_i[112] : 
                (N160)? tag_v_i[137] : 
                (N162)? tag_v_i[162] : 
                (N164)? tag_v_i[187] : 1'b0;
  assign N178 = (N157)? tag_v_i[11] : 
                (N159)? tag_v_i[36] : 
                (N161)? tag_v_i[61] : 
                (N163)? tag_v_i[86] : 
                (N158)? tag_v_i[111] : 
                (N160)? tag_v_i[136] : 
                (N162)? tag_v_i[161] : 
                (N164)? tag_v_i[186] : 1'b0;
  assign N179 = (N157)? tag_v_i[10] : 
                (N159)? tag_v_i[35] : 
                (N161)? tag_v_i[60] : 
                (N163)? tag_v_i[85] : 
                (N158)? tag_v_i[110] : 
                (N160)? tag_v_i[135] : 
                (N162)? tag_v_i[160] : 
                (N164)? tag_v_i[185] : 1'b0;
  assign N180 = (N157)? tag_v_i[9] : 
                (N159)? tag_v_i[34] : 
                (N161)? tag_v_i[59] : 
                (N163)? tag_v_i[84] : 
                (N158)? tag_v_i[109] : 
                (N160)? tag_v_i[134] : 
                (N162)? tag_v_i[159] : 
                (N164)? tag_v_i[184] : 1'b0;
  assign N181 = (N157)? tag_v_i[8] : 
                (N159)? tag_v_i[33] : 
                (N161)? tag_v_i[58] : 
                (N163)? tag_v_i[83] : 
                (N158)? tag_v_i[108] : 
                (N160)? tag_v_i[133] : 
                (N162)? tag_v_i[158] : 
                (N164)? tag_v_i[183] : 1'b0;
  assign N182 = (N157)? tag_v_i[7] : 
                (N159)? tag_v_i[32] : 
                (N161)? tag_v_i[57] : 
                (N163)? tag_v_i[82] : 
                (N158)? tag_v_i[107] : 
                (N160)? tag_v_i[132] : 
                (N162)? tag_v_i[157] : 
                (N164)? tag_v_i[182] : 1'b0;
  assign N183 = (N157)? tag_v_i[6] : 
                (N159)? tag_v_i[31] : 
                (N161)? tag_v_i[56] : 
                (N163)? tag_v_i[81] : 
                (N158)? tag_v_i[106] : 
                (N160)? tag_v_i[131] : 
                (N162)? tag_v_i[156] : 
                (N164)? tag_v_i[181] : 1'b0;
  assign N184 = (N157)? tag_v_i[5] : 
                (N159)? tag_v_i[30] : 
                (N161)? tag_v_i[55] : 
                (N163)? tag_v_i[80] : 
                (N158)? tag_v_i[105] : 
                (N160)? tag_v_i[130] : 
                (N162)? tag_v_i[155] : 
                (N164)? tag_v_i[180] : 1'b0;
  assign N185 = (N157)? tag_v_i[4] : 
                (N159)? tag_v_i[29] : 
                (N161)? tag_v_i[54] : 
                (N163)? tag_v_i[79] : 
                (N158)? tag_v_i[104] : 
                (N160)? tag_v_i[129] : 
                (N162)? tag_v_i[154] : 
                (N164)? tag_v_i[179] : 1'b0;
  assign N186 = (N157)? tag_v_i[3] : 
                (N159)? tag_v_i[28] : 
                (N161)? tag_v_i[53] : 
                (N163)? tag_v_i[78] : 
                (N158)? tag_v_i[103] : 
                (N160)? tag_v_i[128] : 
                (N162)? tag_v_i[153] : 
                (N164)? tag_v_i[178] : 1'b0;
  assign N187 = (N157)? tag_v_i[2] : 
                (N159)? tag_v_i[27] : 
                (N161)? tag_v_i[52] : 
                (N163)? tag_v_i[77] : 
                (N158)? tag_v_i[102] : 
                (N160)? tag_v_i[127] : 
                (N162)? tag_v_i[152] : 
                (N164)? tag_v_i[177] : 1'b0;
  assign N188 = (N157)? tag_v_i[1] : 
                (N159)? tag_v_i[26] : 
                (N161)? tag_v_i[51] : 
                (N163)? tag_v_i[76] : 
                (N158)? tag_v_i[101] : 
                (N160)? tag_v_i[126] : 
                (N162)? tag_v_i[151] : 
                (N164)? tag_v_i[176] : 1'b0;
  assign N189 = (N157)? tag_v_i[0] : 
                (N159)? tag_v_i[25] : 
                (N161)? tag_v_i[50] : 
                (N163)? tag_v_i[75] : 
                (N158)? tag_v_i[100] : 
                (N160)? tag_v_i[125] : 
                (N162)? tag_v_i[150] : 
                (N164)? tag_v_i[175] : 1'b0;
  assign N203 = (N195)? tag_v_i[24] : 
                (N197)? tag_v_i[49] : 
                (N199)? tag_v_i[74] : 
                (N201)? tag_v_i[99] : 
                (N196)? tag_v_i[124] : 
                (N198)? tag_v_i[149] : 
                (N200)? tag_v_i[174] : 
                (N202)? tag_v_i[199] : 1'b0;
  assign N204 = (N195)? tag_v_i[23] : 
                (N197)? tag_v_i[48] : 
                (N199)? tag_v_i[73] : 
                (N201)? tag_v_i[98] : 
                (N196)? tag_v_i[123] : 
                (N198)? tag_v_i[148] : 
                (N200)? tag_v_i[173] : 
                (N202)? tag_v_i[198] : 1'b0;
  assign N205 = (N195)? tag_v_i[22] : 
                (N197)? tag_v_i[47] : 
                (N199)? tag_v_i[72] : 
                (N201)? tag_v_i[97] : 
                (N196)? tag_v_i[122] : 
                (N198)? tag_v_i[147] : 
                (N200)? tag_v_i[172] : 
                (N202)? tag_v_i[197] : 1'b0;
  assign N206 = (N195)? tag_v_i[21] : 
                (N197)? tag_v_i[46] : 
                (N199)? tag_v_i[71] : 
                (N201)? tag_v_i[96] : 
                (N196)? tag_v_i[121] : 
                (N198)? tag_v_i[146] : 
                (N200)? tag_v_i[171] : 
                (N202)? tag_v_i[196] : 1'b0;
  assign N207 = (N195)? tag_v_i[20] : 
                (N197)? tag_v_i[45] : 
                (N199)? tag_v_i[70] : 
                (N201)? tag_v_i[95] : 
                (N196)? tag_v_i[120] : 
                (N198)? tag_v_i[145] : 
                (N200)? tag_v_i[170] : 
                (N202)? tag_v_i[195] : 1'b0;
  assign N208 = (N195)? tag_v_i[19] : 
                (N197)? tag_v_i[44] : 
                (N199)? tag_v_i[69] : 
                (N201)? tag_v_i[94] : 
                (N196)? tag_v_i[119] : 
                (N198)? tag_v_i[144] : 
                (N200)? tag_v_i[169] : 
                (N202)? tag_v_i[194] : 1'b0;
  assign N209 = (N195)? tag_v_i[18] : 
                (N197)? tag_v_i[43] : 
                (N199)? tag_v_i[68] : 
                (N201)? tag_v_i[93] : 
                (N196)? tag_v_i[118] : 
                (N198)? tag_v_i[143] : 
                (N200)? tag_v_i[168] : 
                (N202)? tag_v_i[193] : 1'b0;
  assign N210 = (N195)? tag_v_i[17] : 
                (N197)? tag_v_i[42] : 
                (N199)? tag_v_i[67] : 
                (N201)? tag_v_i[92] : 
                (N196)? tag_v_i[117] : 
                (N198)? tag_v_i[142] : 
                (N200)? tag_v_i[167] : 
                (N202)? tag_v_i[192] : 1'b0;
  assign N211 = (N195)? tag_v_i[16] : 
                (N197)? tag_v_i[41] : 
                (N199)? tag_v_i[66] : 
                (N201)? tag_v_i[91] : 
                (N196)? tag_v_i[116] : 
                (N198)? tag_v_i[141] : 
                (N200)? tag_v_i[166] : 
                (N202)? tag_v_i[191] : 1'b0;
  assign N212 = (N195)? tag_v_i[15] : 
                (N197)? tag_v_i[40] : 
                (N199)? tag_v_i[65] : 
                (N201)? tag_v_i[90] : 
                (N196)? tag_v_i[115] : 
                (N198)? tag_v_i[140] : 
                (N200)? tag_v_i[165] : 
                (N202)? tag_v_i[190] : 1'b0;
  assign N213 = (N195)? tag_v_i[14] : 
                (N197)? tag_v_i[39] : 
                (N199)? tag_v_i[64] : 
                (N201)? tag_v_i[89] : 
                (N196)? tag_v_i[114] : 
                (N198)? tag_v_i[139] : 
                (N200)? tag_v_i[164] : 
                (N202)? tag_v_i[189] : 1'b0;
  assign N214 = (N195)? tag_v_i[13] : 
                (N197)? tag_v_i[38] : 
                (N199)? tag_v_i[63] : 
                (N201)? tag_v_i[88] : 
                (N196)? tag_v_i[113] : 
                (N198)? tag_v_i[138] : 
                (N200)? tag_v_i[163] : 
                (N202)? tag_v_i[188] : 1'b0;
  assign N215 = (N195)? tag_v_i[12] : 
                (N197)? tag_v_i[37] : 
                (N199)? tag_v_i[62] : 
                (N201)? tag_v_i[87] : 
                (N196)? tag_v_i[112] : 
                (N198)? tag_v_i[137] : 
                (N200)? tag_v_i[162] : 
                (N202)? tag_v_i[187] : 1'b0;
  assign N216 = (N195)? tag_v_i[11] : 
                (N197)? tag_v_i[36] : 
                (N199)? tag_v_i[61] : 
                (N201)? tag_v_i[86] : 
                (N196)? tag_v_i[111] : 
                (N198)? tag_v_i[136] : 
                (N200)? tag_v_i[161] : 
                (N202)? tag_v_i[186] : 1'b0;
  assign N217 = (N195)? tag_v_i[10] : 
                (N197)? tag_v_i[35] : 
                (N199)? tag_v_i[60] : 
                (N201)? tag_v_i[85] : 
                (N196)? tag_v_i[110] : 
                (N198)? tag_v_i[135] : 
                (N200)? tag_v_i[160] : 
                (N202)? tag_v_i[185] : 1'b0;
  assign N218 = (N195)? tag_v_i[9] : 
                (N197)? tag_v_i[34] : 
                (N199)? tag_v_i[59] : 
                (N201)? tag_v_i[84] : 
                (N196)? tag_v_i[109] : 
                (N198)? tag_v_i[134] : 
                (N200)? tag_v_i[159] : 
                (N202)? tag_v_i[184] : 1'b0;
  assign N219 = (N195)? tag_v_i[8] : 
                (N197)? tag_v_i[33] : 
                (N199)? tag_v_i[58] : 
                (N201)? tag_v_i[83] : 
                (N196)? tag_v_i[108] : 
                (N198)? tag_v_i[133] : 
                (N200)? tag_v_i[158] : 
                (N202)? tag_v_i[183] : 1'b0;
  assign N220 = (N195)? tag_v_i[7] : 
                (N197)? tag_v_i[32] : 
                (N199)? tag_v_i[57] : 
                (N201)? tag_v_i[82] : 
                (N196)? tag_v_i[107] : 
                (N198)? tag_v_i[132] : 
                (N200)? tag_v_i[157] : 
                (N202)? tag_v_i[182] : 1'b0;
  assign N221 = (N195)? tag_v_i[6] : 
                (N197)? tag_v_i[31] : 
                (N199)? tag_v_i[56] : 
                (N201)? tag_v_i[81] : 
                (N196)? tag_v_i[106] : 
                (N198)? tag_v_i[131] : 
                (N200)? tag_v_i[156] : 
                (N202)? tag_v_i[181] : 1'b0;
  assign N222 = (N195)? tag_v_i[5] : 
                (N197)? tag_v_i[30] : 
                (N199)? tag_v_i[55] : 
                (N201)? tag_v_i[80] : 
                (N196)? tag_v_i[105] : 
                (N198)? tag_v_i[130] : 
                (N200)? tag_v_i[155] : 
                (N202)? tag_v_i[180] : 1'b0;
  assign N223 = (N195)? tag_v_i[4] : 
                (N197)? tag_v_i[29] : 
                (N199)? tag_v_i[54] : 
                (N201)? tag_v_i[79] : 
                (N196)? tag_v_i[104] : 
                (N198)? tag_v_i[129] : 
                (N200)? tag_v_i[154] : 
                (N202)? tag_v_i[179] : 1'b0;
  assign N224 = (N195)? tag_v_i[3] : 
                (N197)? tag_v_i[28] : 
                (N199)? tag_v_i[53] : 
                (N201)? tag_v_i[78] : 
                (N196)? tag_v_i[103] : 
                (N198)? tag_v_i[128] : 
                (N200)? tag_v_i[153] : 
                (N202)? tag_v_i[178] : 1'b0;
  assign N225 = (N195)? tag_v_i[2] : 
                (N197)? tag_v_i[27] : 
                (N199)? tag_v_i[52] : 
                (N201)? tag_v_i[77] : 
                (N196)? tag_v_i[102] : 
                (N198)? tag_v_i[127] : 
                (N200)? tag_v_i[152] : 
                (N202)? tag_v_i[177] : 1'b0;
  assign N226 = (N195)? tag_v_i[1] : 
                (N197)? tag_v_i[26] : 
                (N199)? tag_v_i[51] : 
                (N201)? tag_v_i[76] : 
                (N196)? tag_v_i[101] : 
                (N198)? tag_v_i[126] : 
                (N200)? tag_v_i[151] : 
                (N202)? tag_v_i[176] : 1'b0;
  assign N227 = (N195)? tag_v_i[0] : 
                (N197)? tag_v_i[25] : 
                (N199)? tag_v_i[50] : 
                (N201)? tag_v_i[75] : 
                (N196)? tag_v_i[100] : 
                (N198)? tag_v_i[125] : 
                (N200)? tag_v_i[150] : 
                (N202)? tag_v_i[175] : 1'b0;
  assign { N65, N64, N63 } = (N0)? { 1'b0, 1'b0, 1'b1 } : 
                             (N240)? { 1'b0, 1'b1, 1'b0 } : 
                             (N62)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign N0 = goto_flush_op;
  assign { N68, N67, N66 } = (N1)? { N65, N64, N63 } : 
                             (N2)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N1 = miss_v_i;
  assign N2 = N60;
  assign { N89, N88, N87 } = (N3)? invalid_way_id : 
                             (N242)? backup_lru_way_id : 
                             (N86)? lru_way_id : 1'b0;
  assign N3 = invalid_exist;
  assign N108 = ~N107;
  assign { N110, N109 } = (N4)? { N108, N107 } : 
                          (N5)? { 1'b1, 1'b0 } : 1'b0;
  assign N4 = dma_done_i;
  assign N5 = N190;
  assign { N114, N113, N112 } = (N6)? addr_v_i[16:14] : 
                                (N111)? tag_hit_way_id_i : 1'b0;
  assign N6 = decode_v_i[8];
  assign N149 = ~N148;
  assign N229 = (N4)? N228 : 
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
  assign N8 = tag_mem_data_o[215];
  assign N9 = N31;
  assign N10 = N35;
  assign N11 = dma_cmd_o[1];
  assign N12 = N43;
  assign N13 = N47;
  assign N14 = N51;
  assign N15 = N55;
  assign N16 = N59;
  assign miss_state_n = (N7)? { 1'b0, N68, N67, N66 } : 
                        (N8)? { 1'b0, N110, dma_done_i, N109 } : 
                        (N9)? { 1'b0, N149, 1'b1, 1'b1 } : 
                        (N10)? { 1'b0, 1'b1, 1'b1, 1'b1 } : 
                        (N11)? { 1'b0, dma_done_i, N190, 1'b1 } : 
                        (N12)? { 1'b0, 1'b1, dma_done_i, N229 } : 
                        (N13)? { 1'b0, 1'b1, 1'b1, dma_done_i } : 
                        (N14)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                        (N15)? { N230, 1'b0, 1'b0, 1'b0 } : 
                        (N16)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign chosen_way_o = (N7)? dma_way_o : 
                        (N8)? { N89, N88, N87 } : 
                        (N9)? { N114, N113, N112 } : 
                        (N10)? tag_hit_way_id_i : 
                        (N11)? dma_way_o : 
                        (N12)? dma_way_o : 
                        (N13)? dma_way_o : 
                        (N14)? dma_way_o : 
                        (N15)? dma_way_o : 
                        (N16)? dma_way_o : 1'b0;
  assign dma_cmd_o[2] = (N13)? sbuf_empty_i : 
                        (N233)? 1'b0 : 1'b0;
  assign dma_cmd_o[3] = (N12)? sbuf_empty_i : 
                        (N234)? 1'b0 : 1'b0;
  assign dma_addr_o[5:3] = (N13)? addr_v_i[5:3] : 
                           (N233)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign dma_addr_o[38:6] = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N8)? addr_v_i[38:6] : 
                            (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N10)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N11)? { N165, N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N176, N177, N178, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188, N189, addr_v_i[13:6] } : 
                            (N12)? { N203, N204, N205, N206, N207, N208, N209, N210, N211, N212, N213, N214, N215, N216, N217, N218, N219, N220, N221, N222, N223, N224, N225, N226, N227, addr_v_i[13:6] } : 
                            (N13)? addr_v_i[38:6] : 
                            (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
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
  assign stat_mem_data_o = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N8)? { decode_v_i[10:10], decode_v_i[10:10], decode_v_i[10:10], decode_v_i[10:10], decode_v_i[10:10], decode_v_i[10:10], decode_v_i[10:10], decode_v_i[10:10], chosen_way_lru_data } : 
                           (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N10)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign stat_mem_w_mask_o = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N8)? { chosen_way_decode, chosen_way_lru_mask } : 
                             (N9)? { chosen_way_decode, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N10)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                             (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
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
  assign tag_mem_w_mask_o[0] = (N8)? chosen_way_decode[0] : 
                               (N235)? 1'b0 : 1'b0;
  assign { tag_mem_w_mask_o[213:189], tag_mem_w_mask_o[186:162], tag_mem_w_mask_o[159:135], tag_mem_w_mask_o[132:119], tag_mem_w_mask_o[1:1] } = (N8)? { chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:7], chosen_way_decode[7:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:6], chosen_way_decode[6:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:5], chosen_way_decode[5:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[0:0] } : 
                                                                                                                                                 (N236)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_w_mask_o[118:108], tag_mem_w_mask_o[105:81], tag_mem_w_mask_o[78:54], tag_mem_w_mask_o[51:27], tag_mem_w_mask_o[24:12], tag_mem_w_mask_o[2:2] } = (N8)? { chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:4], chosen_way_decode[4:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:3], chosen_way_decode[3:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:2], chosen_way_decode[2:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:1], chosen_way_decode[1:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                                                                                                                                                                     (N237)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign tag_mem_w_mask_o[11:3] = (N8)? { chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0], chosen_way_decode[0:0] } : 
                                  (N238)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_w_mask_o[215:214], tag_mem_w_mask_o[188:187], tag_mem_w_mask_o[161:160], tag_mem_w_mask_o[134:133], tag_mem_w_mask_o[107:106], tag_mem_w_mask_o[80:79], tag_mem_w_mask_o[53:52], tag_mem_w_mask_o[26:25] } = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                (N8)? { chosen_way_decode[7:7], chosen_way_decode[7:6], chosen_way_decode[6:5], chosen_way_decode[5:4], chosen_way_decode[4:3], chosen_way_decode[3:2], chosen_way_decode[2:1], chosen_way_decode[1:0], chosen_way_decode[0:0] } : 
                                                                                                                                                                                                                                (N9)? { N129, N130, N127, N128, N125, N126, N123, N124, N121, N122, N119, N120, N117, N118, N115, N116 } : 
                                                                                                                                                                                                                                (N10)? { 1'b0, chosen_way_decode[7:7], 1'b0, chosen_way_decode[6:6], 1'b0, chosen_way_decode[5:5], 1'b0, chosen_way_decode[4:4], 1'b0, chosen_way_decode[3:3], 1'b0, chosen_way_decode[2:2], 1'b0, chosen_way_decode[1:1], 1'b0, chosen_way_decode[0:0] } : 
                                                                                                                                                                                                                                (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign tag_mem_data_o[9:0] = (N8)? addr_v_i[23:14] : 
                               (N236)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_data_o[112:108], tag_mem_data_o[105:81], tag_mem_data_o[78:54], tag_mem_data_o[51:27], tag_mem_data_o[24:10] } = (N8)? { addr_v_i[18:14], addr_v_i[38:14], addr_v_i[38:14], addr_v_i[38:14], addr_v_i[38:24] } : 
                                                                                                                                    (N235)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_data_o[214:214], tag_mem_data_o[187:187], tag_mem_data_o[160:160], tag_mem_data_o[133:133], tag_mem_data_o[106:106], tag_mem_data_o[79:79], tag_mem_data_o[52:52], tag_mem_data_o[25:25] } = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                (N8)? { decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2] } : 
                                                                                                                                                                                                                (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                (N10)? { decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2], decode_v_i[2:2] } : 
                                                                                                                                                                                                                (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { tag_mem_data_o[213:189], tag_mem_data_o[186:162], tag_mem_data_o[159:135], tag_mem_data_o[132:113] } = (N8)? { addr_v_i[38:14], addr_v_i[38:14], addr_v_i[38:14], addr_v_i[38:19] } : 
                                                                                                                  (N232)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
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
  assign n_0_net__7_ = N243 & N244;
  assign N243 = ~valid_v_i[7];
  assign N244 = ~lock_v_i[7];
  assign n_0_net__6_ = N245 & N246;
  assign N245 = ~valid_v_i[6];
  assign N246 = ~lock_v_i[6];
  assign n_0_net__5_ = N247 & N248;
  assign N247 = ~valid_v_i[5];
  assign N248 = ~lock_v_i[5];
  assign n_0_net__4_ = N249 & N250;
  assign N249 = ~valid_v_i[4];
  assign N250 = ~lock_v_i[4];
  assign n_0_net__3_ = N251 & N252;
  assign N251 = ~valid_v_i[3];
  assign N252 = ~lock_v_i[3];
  assign n_0_net__2_ = N253 & N254;
  assign N253 = ~valid_v_i[2];
  assign N254 = ~lock_v_i[2];
  assign n_0_net__1_ = N255 & N256;
  assign N255 = ~valid_v_i[1];
  assign N256 = ~lock_v_i[1];
  assign n_0_net__0_ = N257 & N258;
  assign N257 = ~valid_v_i[0];
  assign N258 = ~lock_v_i[0];
  assign goto_flush_op = N260 | decode_v_i[4];
  assign N260 = N259 | decode_v_i[5];
  assign N259 = decode_v_i[8] | decode_v_i[3];
  assign goto_lock_op = decode_v_i[1] | N261;
  assign N261 = decode_v_i[2] & tag_hit_found_i;
  assign n_2_net__7_ = ~lock_v_i[7];
  assign n_2_net__6_ = ~lock_v_i[6];
  assign n_2_net__5_ = ~lock_v_i[5];
  assign n_2_net__4_ = ~lock_v_i[4];
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
  assign N59 = N56 | N262;
  assign N262 = N57 | N58;
  assign tag_mem_data_o[215] = N27;
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
  assign N75 = ~lru_way_id[2];
  assign N76 = N71 & N75;
  assign N77 = N71 & lru_way_id[2];
  assign N78 = N73 & N75;
  assign N79 = N73 & lru_way_id[2];
  assign N80 = N72 & N75;
  assign N81 = N72 & lru_way_id[2];
  assign N82 = N74 & N75;
  assign N83 = N74 & lru_way_id[2];
  assign N85 = N84 | invalid_exist;
  assign N86 = ~N85;
  assign N90 = ~N87;
  assign N91 = ~N88;
  assign N92 = N90 & N91;
  assign N93 = N90 & N88;
  assign N94 = N87 & N91;
  assign N95 = N87 & N88;
  assign N96 = ~N89;
  assign N97 = N92 & N96;
  assign N98 = N92 & N89;
  assign N99 = N94 & N96;
  assign N100 = N94 & N89;
  assign N101 = N93 & N96;
  assign N102 = N93 & N89;
  assign N103 = N95 & N96;
  assign N104 = N95 & N89;
  assign N107 = N105 & N106;
  assign N111 = ~decode_v_i[8];
  assign N115 = N263 & chosen_way_decode[0];
  assign N263 = decode_v_i[3] | decode_v_i[4];
  assign N116 = N264 & chosen_way_decode[0];
  assign N264 = decode_v_i[3] | decode_v_i[4];
  assign N117 = N265 & chosen_way_decode[1];
  assign N265 = decode_v_i[3] | decode_v_i[4];
  assign N118 = N266 & chosen_way_decode[1];
  assign N266 = decode_v_i[3] | decode_v_i[4];
  assign N119 = N267 & chosen_way_decode[2];
  assign N267 = decode_v_i[3] | decode_v_i[4];
  assign N120 = N268 & chosen_way_decode[2];
  assign N268 = decode_v_i[3] | decode_v_i[4];
  assign N121 = N269 & chosen_way_decode[3];
  assign N269 = decode_v_i[3] | decode_v_i[4];
  assign N122 = N270 & chosen_way_decode[3];
  assign N270 = decode_v_i[3] | decode_v_i[4];
  assign N123 = N271 & chosen_way_decode[4];
  assign N271 = decode_v_i[3] | decode_v_i[4];
  assign N124 = N272 & chosen_way_decode[4];
  assign N272 = decode_v_i[3] | decode_v_i[4];
  assign N125 = N273 & chosen_way_decode[5];
  assign N273 = decode_v_i[3] | decode_v_i[4];
  assign N126 = N274 & chosen_way_decode[5];
  assign N274 = decode_v_i[3] | decode_v_i[4];
  assign N127 = N275 & chosen_way_decode[6];
  assign N275 = decode_v_i[3] | decode_v_i[4];
  assign N128 = N276 & chosen_way_decode[6];
  assign N276 = decode_v_i[3] | decode_v_i[4];
  assign N129 = N277 & chosen_way_decode[7];
  assign N277 = decode_v_i[3] | decode_v_i[4];
  assign N130 = N278 & chosen_way_decode[7];
  assign N278 = decode_v_i[3] | decode_v_i[4];
  assign N131 = ~N112;
  assign N132 = ~N113;
  assign N133 = N131 & N132;
  assign N134 = N131 & N113;
  assign N135 = N112 & N132;
  assign N136 = N112 & N113;
  assign N137 = ~N114;
  assign N138 = N133 & N137;
  assign N139 = N133 & N114;
  assign N140 = N135 & N137;
  assign N141 = N135 & N114;
  assign N142 = N134 & N137;
  assign N143 = N134 & N114;
  assign N144 = N136 & N137;
  assign N145 = N136 & N114;
  assign N148 = N280 & N147;
  assign N280 = N279 & N146;
  assign N279 = ~decode_v_i[3];
  assign N150 = ~dma_way_o[0];
  assign N151 = ~dma_way_o[1];
  assign N152 = N150 & N151;
  assign N153 = N150 & dma_way_o[1];
  assign N154 = dma_way_o[0] & N151;
  assign N155 = dma_way_o[0] & dma_way_o[1];
  assign N156 = ~dma_way_o[2];
  assign N157 = N152 & N156;
  assign N158 = N152 & dma_way_o[2];
  assign N159 = N154 & N156;
  assign N160 = N154 & dma_way_o[2];
  assign N161 = N153 & N156;
  assign N162 = N153 & dma_way_o[2];
  assign N163 = N155 & N156;
  assign N164 = N155 & dma_way_o[2];
  assign N190 = ~dma_done_i;
  assign N191 = N150 & N151;
  assign N192 = N150 & dma_way_o[1];
  assign N193 = dma_way_o[0] & N151;
  assign N194 = dma_way_o[0] & dma_way_o[1];
  assign N195 = N191 & N156;
  assign N196 = N191 & dma_way_o[2];
  assign N197 = N193 & N156;
  assign N198 = N193 & dma_way_o[2];
  assign N199 = N192 & N156;
  assign N200 = N192 & dma_way_o[2];
  assign N201 = N194 & N156;
  assign N202 = N194 & dma_way_o[2];
  assign N228 = N281 | decode_v_i[5];
  assign N281 = decode_v_i[8] | decode_v_i[4];
  assign N230 = ~ack_i;
  assign N231 = ~tag_mem_data_o[215];
  assign N232 = N231;
  assign N233 = N46;
  assign N234 = N42;
  assign N235 = N231;
  assign N236 = N231;
  assign N237 = N231;
  assign N238 = N231;
  assign N239 = ~goto_flush_op;
  assign N240 = goto_lock_op & N239;
  assign N241 = ~invalid_exist;
  assign N242 = N84 & N241;

  always @(posedge clk_i) begin
    if(reset_i) begin
      { dma_way_o[2:0] } <= { 1'b0, 1'b0, 1'b0 };
      { miss_state_r[3:0] } <= { 1'b0, 1'b0, 1'b0, 1'b0 };
    end else if(1'b1) begin
      { dma_way_o[2:0] } <= { chosen_way_o[2:0] };
      { miss_state_r[3:0] } <= { miss_state_n[3:0] };
    end 
  end


endmodule

