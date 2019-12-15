

module top
(
  clk_i,
  reset_i,
  dma_pkt_i,
  dma_pkt_v_i,
  dma_pkt_yumi_o,
  dma_data_o,
  dma_data_v_o,
  dma_data_ready_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  app_en_o,
  app_rdy_i,
  app_cmd_o,
  app_addr_o,
  app_wdf_wren_o,
  app_wdf_rdy_i,
  app_wdf_data_o,
  app_wdf_mask_o,
  app_wdf_end_o,
  app_rd_data_valid_i,
  app_rd_data_i,
  app_rd_data_end_i
);

  input [159:0] dma_pkt_i;
  input [3:0] dma_pkt_v_i;
  output [3:0] dma_pkt_yumi_o;
  output [255:0] dma_data_o;
  output [3:0] dma_data_v_o;
  input [3:0] dma_data_ready_i;
  input [255:0] dma_data_i;
  input [3:0] dma_data_v_i;
  output [3:0] dma_data_yumi_o;
  output [2:0] app_cmd_o;
  output [40:0] app_addr_o;
  output [63:0] app_wdf_data_o;
  output [7:0] app_wdf_mask_o;
  input [63:0] app_rd_data_i;
  input clk_i;
  input reset_i;
  input app_rdy_i;
  input app_wdf_rdy_i;
  input app_rd_data_valid_i;
  input app_rd_data_end_i;
  output app_en_o;
  output app_wdf_wren_o;
  output app_wdf_end_o;

  bsg_cache_to_dram_ctrl
  wrapper
  (
    .dma_pkt_i(dma_pkt_i),
    .dma_pkt_v_i(dma_pkt_v_i),
    .dma_pkt_yumi_o(dma_pkt_yumi_o),
    .dma_data_o(dma_data_o),
    .dma_data_v_o(dma_data_v_o),
    .dma_data_ready_i(dma_data_ready_i),
    .dma_data_i(dma_data_i),
    .dma_data_v_i(dma_data_v_i),
    .dma_data_yumi_o(dma_data_yumi_o),
    .app_cmd_o(app_cmd_o),
    .app_addr_o(app_addr_o),
    .app_wdf_data_o(app_wdf_data_o),
    .app_wdf_mask_o(app_wdf_mask_o),
    .app_rd_data_i(app_rd_data_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .app_rdy_i(app_rdy_i),
    .app_wdf_rdy_i(app_wdf_rdy_i),
    .app_rd_data_valid_i(app_rd_data_valid_i),
    .app_rd_data_end_i(app_rd_data_end_i),
    .app_en_o(app_en_o),
    .app_wdf_wren_o(app_wdf_wren_o),
    .app_wdf_end_o(app_wdf_end_o)
  );


endmodule



module bsg_round_robin_arb_inputs_p4
(
  clk_i,
  reset_i,
  grants_en_i,
  reqs_i,
  grants_o,
  sel_one_hot_o,
  v_o,
  tag_o,
  yumi_i
);

  input [3:0] reqs_i;
  output [3:0] grants_o;
  output [3:0] sel_one_hot_o;
  output [1:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [3:0] grants_o,sel_one_hot_o;
  wire [1:0] tag_o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103;
  reg [1:0] last_r;
  assign N79 = N0 & N1 & (N2 & N3);
  assign N0 = ~reqs_i[1];
  assign N1 = ~reqs_i[2];
  assign N2 = ~reqs_i[0];
  assign N3 = ~reqs_i[3];
  assign N80 = reqs_i[1] & N4 & N5;
  assign N4 = ~last_r[0];
  assign N5 = ~last_r[1];
  assign N81 = N6 & reqs_i[2] & (N7 & N8);
  assign N6 = ~reqs_i[1];
  assign N7 = ~last_r[0];
  assign N8 = ~last_r[1];
  assign N82 = N9 & N10 & (reqs_i[3] & N11) & N12;
  assign N9 = ~reqs_i[1];
  assign N10 = ~reqs_i[2];
  assign N11 = ~last_r[0];
  assign N12 = ~last_r[1];
  assign N13 = N17 & N18;
  assign N14 = N13 & reqs_i[0];
  assign N15 = N14 & N19;
  assign N16 = N15 & N20;
  assign N83 = N16 & N21;
  assign N17 = ~reqs_i[1];
  assign N18 = ~reqs_i[2];
  assign N19 = ~reqs_i[3];
  assign N20 = ~last_r[0];
  assign N21 = ~last_r[1];
  assign N84 = reqs_i[2] & last_r[0] & N22;
  assign N22 = ~last_r[1];
  assign N85 = N23 & reqs_i[3] & (last_r[0] & N24);
  assign N23 = ~reqs_i[2];
  assign N24 = ~last_r[1];
  assign N86 = N25 & reqs_i[0] & (N26 & last_r[0]) & N27;
  assign N25 = ~reqs_i[2];
  assign N26 = ~reqs_i[3];
  assign N27 = ~last_r[1];
  assign N28 = reqs_i[1] & N32;
  assign N29 = N28 & N33;
  assign N30 = N29 & N34;
  assign N31 = N30 & last_r[0];
  assign N87 = N31 & N35;
  assign N32 = ~reqs_i[2];
  assign N33 = ~reqs_i[0];
  assign N34 = ~reqs_i[3];
  assign N35 = ~last_r[1];
  assign N88 = reqs_i[3] & N36 & last_r[1];
  assign N36 = ~last_r[0];
  assign N89 = reqs_i[0] & N37 & (N38 & last_r[1]);
  assign N37 = ~reqs_i[3];
  assign N38 = ~last_r[0];
  assign N90 = reqs_i[1] & N39 & (N40 & N41) & last_r[1];
  assign N39 = ~reqs_i[0];
  assign N40 = ~reqs_i[3];
  assign N41 = ~last_r[0];
  assign N42 = N46 & reqs_i[2];
  assign N43 = N42 & N47;
  assign N44 = N43 & N48;
  assign N45 = N44 & N49;
  assign N91 = N45 & last_r[1];
  assign N46 = ~reqs_i[1];
  assign N47 = ~reqs_i[0];
  assign N48 = ~reqs_i[3];
  assign N49 = ~last_r[0];
  assign N92 = reqs_i[0] & last_r[0] & last_r[1];
  assign N93 = reqs_i[1] & N50 & (last_r[0] & last_r[1]);
  assign N50 = ~reqs_i[0];
  assign N94 = N51 & reqs_i[2] & (N52 & last_r[0]) & last_r[1];
  assign N51 = ~reqs_i[1];
  assign N52 = ~reqs_i[0];
  assign N53 = N57 & N58;
  assign N54 = N53 & N59;
  assign N55 = N54 & reqs_i[3];
  assign N56 = N55 & last_r[0];
  assign N95 = N56 & last_r[1];
  assign N57 = ~reqs_i[1];
  assign N58 = ~reqs_i[2];
  assign N59 = ~reqs_i[0];
  assign sel_one_hot_o = (N60)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                         (N61)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                         (N62)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                         (N63)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                         (N64)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                         (N65)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                         (N66)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                         (N67)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                         (N68)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                         (N69)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                         (N70)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                         (N71)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                         (N72)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                         (N73)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                         (N74)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                         (N75)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                         (N76)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N60 = N79;
  assign N61 = N80;
  assign N62 = N81;
  assign N63 = N82;
  assign N64 = N83;
  assign N65 = N84;
  assign N66 = N85;
  assign N67 = N86;
  assign N68 = N87;
  assign N69 = N88;
  assign N70 = N89;
  assign N71 = N90;
  assign N72 = N91;
  assign N73 = N92;
  assign N74 = N93;
  assign N75 = N94;
  assign N76 = N95;
  assign tag_o = (N60)? { 1'b0, 1'b0 } : 
                 (N61)? { 1'b0, 1'b1 } : 
                 (N62)? { 1'b1, 1'b0 } : 
                 (N63)? { 1'b1, 1'b1 } : 
                 (N64)? { 1'b0, 1'b0 } : 
                 (N65)? { 1'b1, 1'b0 } : 
                 (N66)? { 1'b1, 1'b1 } : 
                 (N67)? { 1'b0, 1'b0 } : 
                 (N68)? { 1'b0, 1'b1 } : 
                 (N69)? { 1'b1, 1'b1 } : 
                 (N70)? { 1'b0, 1'b0 } : 
                 (N71)? { 1'b0, 1'b1 } : 
                 (N72)? { 1'b1, 1'b0 } : 
                 (N73)? { 1'b0, 1'b0 } : 
                 (N74)? { 1'b0, 1'b1 } : 
                 (N75)? { 1'b1, 1'b0 } : 
                 (N76)? { 1'b1, 1'b1 } : 1'b0;
  assign { N99, N98 } = (N77)? { 1'b0, 1'b0 } : 
                        (N78)? tag_o : 1'b0;
  assign N77 = reset_i;
  assign N78 = N97;
  assign grants_o[3] = sel_one_hot_o[3] & grants_en_i;
  assign grants_o[2] = sel_one_hot_o[2] & grants_en_i;
  assign grants_o[1] = sel_one_hot_o[1] & grants_en_i;
  assign grants_o[0] = sel_one_hot_o[0] & grants_en_i;
  assign v_o = N103 | reqs_i[0];
  assign N103 = N102 | reqs_i[1];
  assign N102 = reqs_i[3] | reqs_i[2];
  assign N96 = ~yumi_i;
  assign N97 = ~reset_i;
  assign N100 = N96 & N97;
  assign N101 = ~N100;

  always @(posedge clk_i) begin
    if(N101) begin
      { last_r[1:0] } <= { N99, N98 };
    end 
  end


endmodule



module bsg_mux_one_hot_width_p40_els_p4
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [159:0] data_i;
  input [3:0] sel_one_hot_i;
  output [39:0] data_o;
  wire [39:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79;
  wire [159:0] data_masked;
  assign data_masked[39] = data_i[39] & sel_one_hot_i[0];
  assign data_masked[38] = data_i[38] & sel_one_hot_i[0];
  assign data_masked[37] = data_i[37] & sel_one_hot_i[0];
  assign data_masked[36] = data_i[36] & sel_one_hot_i[0];
  assign data_masked[35] = data_i[35] & sel_one_hot_i[0];
  assign data_masked[34] = data_i[34] & sel_one_hot_i[0];
  assign data_masked[33] = data_i[33] & sel_one_hot_i[0];
  assign data_masked[32] = data_i[32] & sel_one_hot_i[0];
  assign data_masked[31] = data_i[31] & sel_one_hot_i[0];
  assign data_masked[30] = data_i[30] & sel_one_hot_i[0];
  assign data_masked[29] = data_i[29] & sel_one_hot_i[0];
  assign data_masked[28] = data_i[28] & sel_one_hot_i[0];
  assign data_masked[27] = data_i[27] & sel_one_hot_i[0];
  assign data_masked[26] = data_i[26] & sel_one_hot_i[0];
  assign data_masked[25] = data_i[25] & sel_one_hot_i[0];
  assign data_masked[24] = data_i[24] & sel_one_hot_i[0];
  assign data_masked[23] = data_i[23] & sel_one_hot_i[0];
  assign data_masked[22] = data_i[22] & sel_one_hot_i[0];
  assign data_masked[21] = data_i[21] & sel_one_hot_i[0];
  assign data_masked[20] = data_i[20] & sel_one_hot_i[0];
  assign data_masked[19] = data_i[19] & sel_one_hot_i[0];
  assign data_masked[18] = data_i[18] & sel_one_hot_i[0];
  assign data_masked[17] = data_i[17] & sel_one_hot_i[0];
  assign data_masked[16] = data_i[16] & sel_one_hot_i[0];
  assign data_masked[15] = data_i[15] & sel_one_hot_i[0];
  assign data_masked[14] = data_i[14] & sel_one_hot_i[0];
  assign data_masked[13] = data_i[13] & sel_one_hot_i[0];
  assign data_masked[12] = data_i[12] & sel_one_hot_i[0];
  assign data_masked[11] = data_i[11] & sel_one_hot_i[0];
  assign data_masked[10] = data_i[10] & sel_one_hot_i[0];
  assign data_masked[9] = data_i[9] & sel_one_hot_i[0];
  assign data_masked[8] = data_i[8] & sel_one_hot_i[0];
  assign data_masked[7] = data_i[7] & sel_one_hot_i[0];
  assign data_masked[6] = data_i[6] & sel_one_hot_i[0];
  assign data_masked[5] = data_i[5] & sel_one_hot_i[0];
  assign data_masked[4] = data_i[4] & sel_one_hot_i[0];
  assign data_masked[3] = data_i[3] & sel_one_hot_i[0];
  assign data_masked[2] = data_i[2] & sel_one_hot_i[0];
  assign data_masked[1] = data_i[1] & sel_one_hot_i[0];
  assign data_masked[0] = data_i[0] & sel_one_hot_i[0];
  assign data_masked[79] = data_i[79] & sel_one_hot_i[1];
  assign data_masked[78] = data_i[78] & sel_one_hot_i[1];
  assign data_masked[77] = data_i[77] & sel_one_hot_i[1];
  assign data_masked[76] = data_i[76] & sel_one_hot_i[1];
  assign data_masked[75] = data_i[75] & sel_one_hot_i[1];
  assign data_masked[74] = data_i[74] & sel_one_hot_i[1];
  assign data_masked[73] = data_i[73] & sel_one_hot_i[1];
  assign data_masked[72] = data_i[72] & sel_one_hot_i[1];
  assign data_masked[71] = data_i[71] & sel_one_hot_i[1];
  assign data_masked[70] = data_i[70] & sel_one_hot_i[1];
  assign data_masked[69] = data_i[69] & sel_one_hot_i[1];
  assign data_masked[68] = data_i[68] & sel_one_hot_i[1];
  assign data_masked[67] = data_i[67] & sel_one_hot_i[1];
  assign data_masked[66] = data_i[66] & sel_one_hot_i[1];
  assign data_masked[65] = data_i[65] & sel_one_hot_i[1];
  assign data_masked[64] = data_i[64] & sel_one_hot_i[1];
  assign data_masked[63] = data_i[63] & sel_one_hot_i[1];
  assign data_masked[62] = data_i[62] & sel_one_hot_i[1];
  assign data_masked[61] = data_i[61] & sel_one_hot_i[1];
  assign data_masked[60] = data_i[60] & sel_one_hot_i[1];
  assign data_masked[59] = data_i[59] & sel_one_hot_i[1];
  assign data_masked[58] = data_i[58] & sel_one_hot_i[1];
  assign data_masked[57] = data_i[57] & sel_one_hot_i[1];
  assign data_masked[56] = data_i[56] & sel_one_hot_i[1];
  assign data_masked[55] = data_i[55] & sel_one_hot_i[1];
  assign data_masked[54] = data_i[54] & sel_one_hot_i[1];
  assign data_masked[53] = data_i[53] & sel_one_hot_i[1];
  assign data_masked[52] = data_i[52] & sel_one_hot_i[1];
  assign data_masked[51] = data_i[51] & sel_one_hot_i[1];
  assign data_masked[50] = data_i[50] & sel_one_hot_i[1];
  assign data_masked[49] = data_i[49] & sel_one_hot_i[1];
  assign data_masked[48] = data_i[48] & sel_one_hot_i[1];
  assign data_masked[47] = data_i[47] & sel_one_hot_i[1];
  assign data_masked[46] = data_i[46] & sel_one_hot_i[1];
  assign data_masked[45] = data_i[45] & sel_one_hot_i[1];
  assign data_masked[44] = data_i[44] & sel_one_hot_i[1];
  assign data_masked[43] = data_i[43] & sel_one_hot_i[1];
  assign data_masked[42] = data_i[42] & sel_one_hot_i[1];
  assign data_masked[41] = data_i[41] & sel_one_hot_i[1];
  assign data_masked[40] = data_i[40] & sel_one_hot_i[1];
  assign data_masked[119] = data_i[119] & sel_one_hot_i[2];
  assign data_masked[118] = data_i[118] & sel_one_hot_i[2];
  assign data_masked[117] = data_i[117] & sel_one_hot_i[2];
  assign data_masked[116] = data_i[116] & sel_one_hot_i[2];
  assign data_masked[115] = data_i[115] & sel_one_hot_i[2];
  assign data_masked[114] = data_i[114] & sel_one_hot_i[2];
  assign data_masked[113] = data_i[113] & sel_one_hot_i[2];
  assign data_masked[112] = data_i[112] & sel_one_hot_i[2];
  assign data_masked[111] = data_i[111] & sel_one_hot_i[2];
  assign data_masked[110] = data_i[110] & sel_one_hot_i[2];
  assign data_masked[109] = data_i[109] & sel_one_hot_i[2];
  assign data_masked[108] = data_i[108] & sel_one_hot_i[2];
  assign data_masked[107] = data_i[107] & sel_one_hot_i[2];
  assign data_masked[106] = data_i[106] & sel_one_hot_i[2];
  assign data_masked[105] = data_i[105] & sel_one_hot_i[2];
  assign data_masked[104] = data_i[104] & sel_one_hot_i[2];
  assign data_masked[103] = data_i[103] & sel_one_hot_i[2];
  assign data_masked[102] = data_i[102] & sel_one_hot_i[2];
  assign data_masked[101] = data_i[101] & sel_one_hot_i[2];
  assign data_masked[100] = data_i[100] & sel_one_hot_i[2];
  assign data_masked[99] = data_i[99] & sel_one_hot_i[2];
  assign data_masked[98] = data_i[98] & sel_one_hot_i[2];
  assign data_masked[97] = data_i[97] & sel_one_hot_i[2];
  assign data_masked[96] = data_i[96] & sel_one_hot_i[2];
  assign data_masked[95] = data_i[95] & sel_one_hot_i[2];
  assign data_masked[94] = data_i[94] & sel_one_hot_i[2];
  assign data_masked[93] = data_i[93] & sel_one_hot_i[2];
  assign data_masked[92] = data_i[92] & sel_one_hot_i[2];
  assign data_masked[91] = data_i[91] & sel_one_hot_i[2];
  assign data_masked[90] = data_i[90] & sel_one_hot_i[2];
  assign data_masked[89] = data_i[89] & sel_one_hot_i[2];
  assign data_masked[88] = data_i[88] & sel_one_hot_i[2];
  assign data_masked[87] = data_i[87] & sel_one_hot_i[2];
  assign data_masked[86] = data_i[86] & sel_one_hot_i[2];
  assign data_masked[85] = data_i[85] & sel_one_hot_i[2];
  assign data_masked[84] = data_i[84] & sel_one_hot_i[2];
  assign data_masked[83] = data_i[83] & sel_one_hot_i[2];
  assign data_masked[82] = data_i[82] & sel_one_hot_i[2];
  assign data_masked[81] = data_i[81] & sel_one_hot_i[2];
  assign data_masked[80] = data_i[80] & sel_one_hot_i[2];
  assign data_masked[159] = data_i[159] & sel_one_hot_i[3];
  assign data_masked[158] = data_i[158] & sel_one_hot_i[3];
  assign data_masked[157] = data_i[157] & sel_one_hot_i[3];
  assign data_masked[156] = data_i[156] & sel_one_hot_i[3];
  assign data_masked[155] = data_i[155] & sel_one_hot_i[3];
  assign data_masked[154] = data_i[154] & sel_one_hot_i[3];
  assign data_masked[153] = data_i[153] & sel_one_hot_i[3];
  assign data_masked[152] = data_i[152] & sel_one_hot_i[3];
  assign data_masked[151] = data_i[151] & sel_one_hot_i[3];
  assign data_masked[150] = data_i[150] & sel_one_hot_i[3];
  assign data_masked[149] = data_i[149] & sel_one_hot_i[3];
  assign data_masked[148] = data_i[148] & sel_one_hot_i[3];
  assign data_masked[147] = data_i[147] & sel_one_hot_i[3];
  assign data_masked[146] = data_i[146] & sel_one_hot_i[3];
  assign data_masked[145] = data_i[145] & sel_one_hot_i[3];
  assign data_masked[144] = data_i[144] & sel_one_hot_i[3];
  assign data_masked[143] = data_i[143] & sel_one_hot_i[3];
  assign data_masked[142] = data_i[142] & sel_one_hot_i[3];
  assign data_masked[141] = data_i[141] & sel_one_hot_i[3];
  assign data_masked[140] = data_i[140] & sel_one_hot_i[3];
  assign data_masked[139] = data_i[139] & sel_one_hot_i[3];
  assign data_masked[138] = data_i[138] & sel_one_hot_i[3];
  assign data_masked[137] = data_i[137] & sel_one_hot_i[3];
  assign data_masked[136] = data_i[136] & sel_one_hot_i[3];
  assign data_masked[135] = data_i[135] & sel_one_hot_i[3];
  assign data_masked[134] = data_i[134] & sel_one_hot_i[3];
  assign data_masked[133] = data_i[133] & sel_one_hot_i[3];
  assign data_masked[132] = data_i[132] & sel_one_hot_i[3];
  assign data_masked[131] = data_i[131] & sel_one_hot_i[3];
  assign data_masked[130] = data_i[130] & sel_one_hot_i[3];
  assign data_masked[129] = data_i[129] & sel_one_hot_i[3];
  assign data_masked[128] = data_i[128] & sel_one_hot_i[3];
  assign data_masked[127] = data_i[127] & sel_one_hot_i[3];
  assign data_masked[126] = data_i[126] & sel_one_hot_i[3];
  assign data_masked[125] = data_i[125] & sel_one_hot_i[3];
  assign data_masked[124] = data_i[124] & sel_one_hot_i[3];
  assign data_masked[123] = data_i[123] & sel_one_hot_i[3];
  assign data_masked[122] = data_i[122] & sel_one_hot_i[3];
  assign data_masked[121] = data_i[121] & sel_one_hot_i[3];
  assign data_masked[120] = data_i[120] & sel_one_hot_i[3];
  assign data_o[0] = N1 | data_masked[0];
  assign N1 = N0 | data_masked[40];
  assign N0 = data_masked[120] | data_masked[80];
  assign data_o[1] = N3 | data_masked[1];
  assign N3 = N2 | data_masked[41];
  assign N2 = data_masked[121] | data_masked[81];
  assign data_o[2] = N5 | data_masked[2];
  assign N5 = N4 | data_masked[42];
  assign N4 = data_masked[122] | data_masked[82];
  assign data_o[3] = N7 | data_masked[3];
  assign N7 = N6 | data_masked[43];
  assign N6 = data_masked[123] | data_masked[83];
  assign data_o[4] = N9 | data_masked[4];
  assign N9 = N8 | data_masked[44];
  assign N8 = data_masked[124] | data_masked[84];
  assign data_o[5] = N11 | data_masked[5];
  assign N11 = N10 | data_masked[45];
  assign N10 = data_masked[125] | data_masked[85];
  assign data_o[6] = N13 | data_masked[6];
  assign N13 = N12 | data_masked[46];
  assign N12 = data_masked[126] | data_masked[86];
  assign data_o[7] = N15 | data_masked[7];
  assign N15 = N14 | data_masked[47];
  assign N14 = data_masked[127] | data_masked[87];
  assign data_o[8] = N17 | data_masked[8];
  assign N17 = N16 | data_masked[48];
  assign N16 = data_masked[128] | data_masked[88];
  assign data_o[9] = N19 | data_masked[9];
  assign N19 = N18 | data_masked[49];
  assign N18 = data_masked[129] | data_masked[89];
  assign data_o[10] = N21 | data_masked[10];
  assign N21 = N20 | data_masked[50];
  assign N20 = data_masked[130] | data_masked[90];
  assign data_o[11] = N23 | data_masked[11];
  assign N23 = N22 | data_masked[51];
  assign N22 = data_masked[131] | data_masked[91];
  assign data_o[12] = N25 | data_masked[12];
  assign N25 = N24 | data_masked[52];
  assign N24 = data_masked[132] | data_masked[92];
  assign data_o[13] = N27 | data_masked[13];
  assign N27 = N26 | data_masked[53];
  assign N26 = data_masked[133] | data_masked[93];
  assign data_o[14] = N29 | data_masked[14];
  assign N29 = N28 | data_masked[54];
  assign N28 = data_masked[134] | data_masked[94];
  assign data_o[15] = N31 | data_masked[15];
  assign N31 = N30 | data_masked[55];
  assign N30 = data_masked[135] | data_masked[95];
  assign data_o[16] = N33 | data_masked[16];
  assign N33 = N32 | data_masked[56];
  assign N32 = data_masked[136] | data_masked[96];
  assign data_o[17] = N35 | data_masked[17];
  assign N35 = N34 | data_masked[57];
  assign N34 = data_masked[137] | data_masked[97];
  assign data_o[18] = N37 | data_masked[18];
  assign N37 = N36 | data_masked[58];
  assign N36 = data_masked[138] | data_masked[98];
  assign data_o[19] = N39 | data_masked[19];
  assign N39 = N38 | data_masked[59];
  assign N38 = data_masked[139] | data_masked[99];
  assign data_o[20] = N41 | data_masked[20];
  assign N41 = N40 | data_masked[60];
  assign N40 = data_masked[140] | data_masked[100];
  assign data_o[21] = N43 | data_masked[21];
  assign N43 = N42 | data_masked[61];
  assign N42 = data_masked[141] | data_masked[101];
  assign data_o[22] = N45 | data_masked[22];
  assign N45 = N44 | data_masked[62];
  assign N44 = data_masked[142] | data_masked[102];
  assign data_o[23] = N47 | data_masked[23];
  assign N47 = N46 | data_masked[63];
  assign N46 = data_masked[143] | data_masked[103];
  assign data_o[24] = N49 | data_masked[24];
  assign N49 = N48 | data_masked[64];
  assign N48 = data_masked[144] | data_masked[104];
  assign data_o[25] = N51 | data_masked[25];
  assign N51 = N50 | data_masked[65];
  assign N50 = data_masked[145] | data_masked[105];
  assign data_o[26] = N53 | data_masked[26];
  assign N53 = N52 | data_masked[66];
  assign N52 = data_masked[146] | data_masked[106];
  assign data_o[27] = N55 | data_masked[27];
  assign N55 = N54 | data_masked[67];
  assign N54 = data_masked[147] | data_masked[107];
  assign data_o[28] = N57 | data_masked[28];
  assign N57 = N56 | data_masked[68];
  assign N56 = data_masked[148] | data_masked[108];
  assign data_o[29] = N59 | data_masked[29];
  assign N59 = N58 | data_masked[69];
  assign N58 = data_masked[149] | data_masked[109];
  assign data_o[30] = N61 | data_masked[30];
  assign N61 = N60 | data_masked[70];
  assign N60 = data_masked[150] | data_masked[110];
  assign data_o[31] = N63 | data_masked[31];
  assign N63 = N62 | data_masked[71];
  assign N62 = data_masked[151] | data_masked[111];
  assign data_o[32] = N65 | data_masked[32];
  assign N65 = N64 | data_masked[72];
  assign N64 = data_masked[152] | data_masked[112];
  assign data_o[33] = N67 | data_masked[33];
  assign N67 = N66 | data_masked[73];
  assign N66 = data_masked[153] | data_masked[113];
  assign data_o[34] = N69 | data_masked[34];
  assign N69 = N68 | data_masked[74];
  assign N68 = data_masked[154] | data_masked[114];
  assign data_o[35] = N71 | data_masked[35];
  assign N71 = N70 | data_masked[75];
  assign N70 = data_masked[155] | data_masked[115];
  assign data_o[36] = N73 | data_masked[36];
  assign N73 = N72 | data_masked[76];
  assign N72 = data_masked[156] | data_masked[116];
  assign data_o[37] = N75 | data_masked[37];
  assign N75 = N74 | data_masked[77];
  assign N74 = data_masked[157] | data_masked[117];
  assign data_o[38] = N77 | data_masked[38];
  assign N77 = N76 | data_masked[78];
  assign N76 = data_masked[158] | data_masked[118];
  assign data_o[39] = N79 | data_masked[39];
  assign N79 = N78 | data_masked[79];
  assign N78 = data_masked[159] | data_masked[119];

endmodule



module bsg_crossbar_o_by_i_i_els_p4_o_els_p1_width_p40
(
  i,
  sel_oi_one_hot_i,
  o
);

  input [159:0] i;
  input [3:0] sel_oi_one_hot_i;
  output [39:0] o;
  wire [39:0] o;

  bsg_mux_one_hot_width_p40_els_p4
  genblk1_0__mux_one_hot
  (
    .data_i(i),
    .sel_one_hot_i(sel_oi_one_hot_i),
    .data_o(o)
  );


endmodule



module bsg_round_robin_n_to_1_width_p40_num_in_p4_strict_p0
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  yumi_o,
  v_o,
  data_o,
  tag_o,
  yumi_i
);

  input [159:0] data_i;
  input [3:0] v_i;
  output [3:0] yumi_o;
  output [39:0] data_o;
  output [1:0] tag_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;
  wire [3:0] yumi_o,greedy_grants_lo;
  wire [39:0] data_o;
  wire [1:0] tag_o;
  wire v_o,n_1_net_,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,
  SYNOPSYS_UNCONNECTED_3,SYNOPSYS_UNCONNECTED_4;

  bsg_round_robin_arb_inputs_p4
  greedy_rr_arb_ctrl
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .grants_en_i(1'b1),
    .reqs_i(v_i),
    .grants_o(greedy_grants_lo),
    .sel_one_hot_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4 }),
    .v_o(v_o),
    .tag_o(tag_o),
    .yumi_i(n_1_net_)
  );


  bsg_crossbar_o_by_i_i_els_p4_o_els_p1_width_p40
  greedy_xbar
  (
    .i(data_i),
    .sel_oi_one_hot_i(greedy_grants_lo),
    .o(data_o)
  );

  assign n_1_net_ = yumi_i & v_o;
  assign yumi_o[3] = greedy_grants_lo[3] & yumi_i;
  assign yumi_o[2] = greedy_grants_lo[2] & yumi_i;
  assign yumi_o[1] = greedy_grants_lo[1] & yumi_i;
  assign yumi_o[0] = greedy_grants_lo[0] & yumi_i;

endmodule



module bsg_serial_in_parallel_out_width_p64_els_p3_out_els_p2
(
  clk_i,
  reset_i,
  valid_i,
  data_i,
  ready_o,
  valid_o,
  data_o,
  yumi_cnt_i
);

  input [63:0] data_i;
  output [1:0] valid_o;
  output [127:0] data_o;
  input [1:0] yumi_cnt_i;
  input clk_i;
  input reset_i;
  input valid_i;
  output ready_o;
  wire [1:0] valid_o,num_els_n;
  wire [127:0] data_o;
  wire ready_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,
  data_n_3__63_,data_n_3__62_,data_n_3__61_,data_n_3__60_,data_n_3__59_,data_n_3__58_,
  data_n_3__57_,data_n_3__56_,data_n_3__55_,data_n_3__54_,data_n_3__53_,data_n_3__52_,
  data_n_3__51_,data_n_3__50_,data_n_3__49_,data_n_3__48_,data_n_3__47_,
  data_n_3__46_,data_n_3__45_,data_n_3__44_,data_n_3__43_,data_n_3__42_,data_n_3__41_,
  data_n_3__40_,data_n_3__39_,data_n_3__38_,data_n_3__37_,data_n_3__36_,data_n_3__35_,
  data_n_3__34_,data_n_3__33_,data_n_3__32_,data_n_3__31_,data_n_3__30_,data_n_3__29_,
  data_n_3__28_,data_n_3__27_,data_n_3__26_,data_n_3__25_,data_n_3__24_,
  data_n_3__23_,data_n_3__22_,data_n_3__21_,data_n_3__20_,data_n_3__19_,data_n_3__18_,
  data_n_3__17_,data_n_3__16_,data_n_3__15_,data_n_3__14_,data_n_3__13_,data_n_3__12_,
  data_n_3__11_,data_n_3__10_,data_n_3__9_,data_n_3__8_,data_n_3__7_,data_n_3__6_,
  data_n_3__5_,data_n_3__4_,data_n_3__3_,data_n_3__2_,data_n_3__1_,data_n_3__0_,
  data_n_2__63_,data_n_2__62_,data_n_2__61_,data_n_2__60_,data_n_2__59_,data_n_2__58_,
  data_n_2__57_,data_n_2__56_,data_n_2__55_,data_n_2__54_,data_n_2__53_,
  data_n_2__52_,data_n_2__51_,data_n_2__50_,data_n_2__49_,data_n_2__48_,data_n_2__47_,
  data_n_2__46_,data_n_2__45_,data_n_2__44_,data_n_2__43_,data_n_2__42_,data_n_2__41_,
  data_n_2__40_,data_n_2__39_,data_n_2__38_,data_n_2__37_,data_n_2__36_,
  data_n_2__35_,data_n_2__34_,data_n_2__33_,data_n_2__32_,data_n_2__31_,data_n_2__30_,
  data_n_2__29_,data_n_2__28_,data_n_2__27_,data_n_2__26_,data_n_2__25_,data_n_2__24_,
  data_n_2__23_,data_n_2__22_,data_n_2__21_,data_n_2__20_,data_n_2__19_,data_n_2__18_,
  data_n_2__17_,data_n_2__16_,data_n_2__15_,data_n_2__14_,data_n_2__13_,
  data_n_2__12_,data_n_2__11_,data_n_2__10_,data_n_2__9_,data_n_2__8_,data_n_2__7_,
  data_n_2__6_,data_n_2__5_,data_n_2__4_,data_n_2__3_,data_n_2__2_,data_n_2__1_,
  data_n_2__0_,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,
  N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68;
  wire [2:0] valid_nn;
  wire [191:0] data_nn;
  wire [3:2] valid_n;
  reg [2:0] valid_r;
  reg [1:0] num_els_r;
  reg [191:0] data_r;
  assign { N37, N36 } = num_els_r + N35;
  assign num_els_n = { N37, N36 } - yumi_cnt_i;
  assign N41 = num_els_r[0] & num_els_r[1];
  assign N40 = N0 & num_els_r[1];
  assign N0 = ~num_els_r[0];
  assign N39 = num_els_r[0] & N1;
  assign N1 = ~num_els_r[1];
  assign N38 = N2 & N3;
  assign N2 = ~num_els_r[0];
  assign N3 = ~num_els_r[1];
  assign N49 = num_els_r[0] & num_els_r[1];
  assign N48 = N4 & num_els_r[1];
  assign N4 = ~num_els_r[0];
  assign N47 = num_els_r[0] & N5;
  assign N5 = ~num_els_r[1];
  assign N46 = N6 & N7;
  assign N6 = ~num_els_r[0];
  assign N7 = ~num_els_r[1];
  assign N64 = yumi_cnt_i[0] & yumi_cnt_i[1];
  assign N63 = N8 & yumi_cnt_i[1];
  assign N8 = ~yumi_cnt_i[0];
  assign N62 = yumi_cnt_i[0] & N9;
  assign N9 = ~yumi_cnt_i[1];
  assign N61 = N10 & N11;
  assign N10 = ~yumi_cnt_i[0];
  assign N11 = ~yumi_cnt_i[1];
  assign { N31, N30 } = (N12)? { 1'b0, 1'b0 } : 
                        (N13)? num_els_n : 1'b0;
  assign N12 = reset_i;
  assign N13 = N29;
  assign { N34, N33, N32 } = (N12)? { 1'b0, 1'b0, 1'b0 } : 
                             (N13)? valid_nn : 1'b0;
  assign { data_o[0:0], data_o[1:1], data_o[2:2], data_o[3:3], data_o[4:4], data_o[5:5], data_o[6:6], data_o[7:7], data_o[8:8], data_o[9:9], data_o[10:10], data_o[11:11], data_o[12:12], data_o[13:13], data_o[14:14], data_o[15:15], data_o[16:16], data_o[17:17], data_o[18:18], data_o[19:19], data_o[20:20], data_o[21:21], data_o[22:22], data_o[23:23], data_o[24:24], data_o[25:25], data_o[26:26], data_o[27:27], data_o[28:28], data_o[29:29], data_o[30:30], data_o[31:31], data_o[32:32], data_o[33:33], data_o[34:34], data_o[35:35], data_o[36:36], data_o[37:37], data_o[38:38], data_o[39:39], data_o[40:40], data_o[41:41], data_o[42:42], data_o[43:43], data_o[44:44], data_o[45:45], data_o[46:46], data_o[47:47], data_o[48:48], data_o[49:49], data_o[50:50], data_o[51:51], data_o[52:52], data_o[53:53], data_o[54:54], data_o[55:55], data_o[56:56], data_o[57:57], data_o[58:58], data_o[59:59], data_o[60:60], data_o[61:61], data_o[62:62], data_o[63:63] } = (N14)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31], data_i[32:32], data_i[33:33], data_i[34:34], data_i[35:35], data_i[36:36], data_i[37:37], data_i[38:38], data_i[39:39], data_i[40:40], data_i[41:41], data_i[42:42], data_i[43:43], data_i[44:44], data_i[45:45], data_i[46:46], data_i[47:47], data_i[48:48], data_i[49:49], data_i[50:50], data_i[51:51], data_i[52:52], data_i[53:53], data_i[54:54], data_i[55:55], data_i[56:56], data_i[57:57], data_i[58:58], data_i[59:59], data_i[60:60], data_i[61:61], data_i[62:62], data_i[63:63] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          (N42)? { data_r[0:0], data_r[1:1], data_r[2:2], data_r[3:3], data_r[4:4], data_r[5:5], data_r[6:6], data_r[7:7], data_r[8:8], data_r[9:9], data_r[10:10], data_r[11:11], data_r[12:12], data_r[13:13], data_r[14:14], data_r[15:15], data_r[16:16], data_r[17:17], data_r[18:18], data_r[19:19], data_r[20:20], data_r[21:21], data_r[22:22], data_r[23:23], data_r[24:24], data_r[25:25], data_r[26:26], data_r[27:27], data_r[28:28], data_r[29:29], data_r[30:30], data_r[31:31], data_r[32:32], data_r[33:33], data_r[34:34], data_r[35:35], data_r[36:36], data_r[37:37], data_r[38:38], data_r[39:39], data_r[40:40], data_r[41:41], data_r[42:42], data_r[43:43], data_r[44:44], data_r[45:45], data_r[46:46], data_r[47:47], data_r[48:48], data_r[49:49], data_r[50:50], data_r[51:51], data_r[52:52], data_r[53:53], data_r[54:54], data_r[55:55], data_r[56:56], data_r[57:57], data_r[58:58], data_r[59:59], data_r[60:60], data_r[61:61], data_r[62:62], data_r[63:63] } : 1'b0;
  assign N14 = N38;
  assign { data_o[64:64], data_o[65:65], data_o[66:66], data_o[67:67], data_o[68:68], data_o[69:69], data_o[70:70], data_o[71:71], data_o[72:72], data_o[73:73], data_o[74:74], data_o[75:75], data_o[76:76], data_o[77:77], data_o[78:78], data_o[79:79], data_o[80:80], data_o[81:81], data_o[82:82], data_o[83:83], data_o[84:84], data_o[85:85], data_o[86:86], data_o[87:87], data_o[88:88], data_o[89:89], data_o[90:90], data_o[91:91], data_o[92:92], data_o[93:93], data_o[94:94], data_o[95:95], data_o[96:96], data_o[97:97], data_o[98:98], data_o[99:99], data_o[100:100], data_o[101:101], data_o[102:102], data_o[103:103], data_o[104:104], data_o[105:105], data_o[106:106], data_o[107:107], data_o[108:108], data_o[109:109], data_o[110:110], data_o[111:111], data_o[112:112], data_o[113:113], data_o[114:114], data_o[115:115], data_o[116:116], data_o[117:117], data_o[118:118], data_o[119:119], data_o[120:120], data_o[121:121], data_o[122:122], data_o[123:123], data_o[124:124], data_o[125:125], data_o[126:126], data_o[127:127] } = (N15)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31], data_i[32:32], data_i[33:33], data_i[34:34], data_i[35:35], data_i[36:36], data_i[37:37], data_i[38:38], data_i[39:39], data_i[40:40], data_i[41:41], data_i[42:42], data_i[43:43], data_i[44:44], data_i[45:45], data_i[46:46], data_i[47:47], data_i[48:48], data_i[49:49], data_i[50:50], data_i[51:51], data_i[52:52], data_i[53:53], data_i[54:54], data_i[55:55], data_i[56:56], data_i[57:57], data_i[58:58], data_i[59:59], data_i[60:60], data_i[61:61], data_i[62:62], data_i[63:63] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      (N43)? { data_r[64:64], data_r[65:65], data_r[66:66], data_r[67:67], data_r[68:68], data_r[69:69], data_r[70:70], data_r[71:71], data_r[72:72], data_r[73:73], data_r[74:74], data_r[75:75], data_r[76:76], data_r[77:77], data_r[78:78], data_r[79:79], data_r[80:80], data_r[81:81], data_r[82:82], data_r[83:83], data_r[84:84], data_r[85:85], data_r[86:86], data_r[87:87], data_r[88:88], data_r[89:89], data_r[90:90], data_r[91:91], data_r[92:92], data_r[93:93], data_r[94:94], data_r[95:95], data_r[96:96], data_r[97:97], data_r[98:98], data_r[99:99], data_r[100:100], data_r[101:101], data_r[102:102], data_r[103:103], data_r[104:104], data_r[105:105], data_r[106:106], data_r[107:107], data_r[108:108], data_r[109:109], data_r[110:110], data_r[111:111], data_r[112:112], data_r[113:113], data_r[114:114], data_r[115:115], data_r[116:116], data_r[117:117], data_r[118:118], data_r[119:119], data_r[120:120], data_r[121:121], data_r[122:122], data_r[123:123], data_r[124:124], data_r[125:125], data_r[126:126], data_r[127:127] } : 1'b0;
  assign N15 = N39;
  assign { data_n_2__0_, data_n_2__1_, data_n_2__2_, data_n_2__3_, data_n_2__4_, data_n_2__5_, data_n_2__6_, data_n_2__7_, data_n_2__8_, data_n_2__9_, data_n_2__10_, data_n_2__11_, data_n_2__12_, data_n_2__13_, data_n_2__14_, data_n_2__15_, data_n_2__16_, data_n_2__17_, data_n_2__18_, data_n_2__19_, data_n_2__20_, data_n_2__21_, data_n_2__22_, data_n_2__23_, data_n_2__24_, data_n_2__25_, data_n_2__26_, data_n_2__27_, data_n_2__28_, data_n_2__29_, data_n_2__30_, data_n_2__31_, data_n_2__32_, data_n_2__33_, data_n_2__34_, data_n_2__35_, data_n_2__36_, data_n_2__37_, data_n_2__38_, data_n_2__39_, data_n_2__40_, data_n_2__41_, data_n_2__42_, data_n_2__43_, data_n_2__44_, data_n_2__45_, data_n_2__46_, data_n_2__47_, data_n_2__48_, data_n_2__49_, data_n_2__50_, data_n_2__51_, data_n_2__52_, data_n_2__53_, data_n_2__54_, data_n_2__55_, data_n_2__56_, data_n_2__57_, data_n_2__58_, data_n_2__59_, data_n_2__60_, data_n_2__61_, data_n_2__62_, data_n_2__63_ } = (N16)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31], data_i[32:32], data_i[33:33], data_i[34:34], data_i[35:35], data_i[36:36], data_i[37:37], data_i[38:38], data_i[39:39], data_i[40:40], data_i[41:41], data_i[42:42], data_i[43:43], data_i[44:44], data_i[45:45], data_i[46:46], data_i[47:47], data_i[48:48], data_i[49:49], data_i[50:50], data_i[51:51], data_i[52:52], data_i[53:53], data_i[54:54], data_i[55:55], data_i[56:56], data_i[57:57], data_i[58:58], data_i[59:59], data_i[60:60], data_i[61:61], data_i[62:62], data_i[63:63] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (N44)? { data_r[128:128], data_r[129:129], data_r[130:130], data_r[131:131], data_r[132:132], data_r[133:133], data_r[134:134], data_r[135:135], data_r[136:136], data_r[137:137], data_r[138:138], data_r[139:139], data_r[140:140], data_r[141:141], data_r[142:142], data_r[143:143], data_r[144:144], data_r[145:145], data_r[146:146], data_r[147:147], data_r[148:148], data_r[149:149], data_r[150:150], data_r[151:151], data_r[152:152], data_r[153:153], data_r[154:154], data_r[155:155], data_r[156:156], data_r[157:157], data_r[158:158], data_r[159:159], data_r[160:160], data_r[161:161], data_r[162:162], data_r[163:163], data_r[164:164], data_r[165:165], data_r[166:166], data_r[167:167], data_r[168:168], data_r[169:169], data_r[170:170], data_r[171:171], data_r[172:172], data_r[173:173], data_r[174:174], data_r[175:175], data_r[176:176], data_r[177:177], data_r[178:178], data_r[179:179], data_r[180:180], data_r[181:181], data_r[182:182], data_r[183:183], data_r[184:184], data_r[185:185], data_r[186:186], data_r[187:187], data_r[188:188], data_r[189:189], data_r[190:190], data_r[191:191] } : 1'b0;
  assign N16 = N40;
  assign { data_n_3__0_, data_n_3__1_, data_n_3__2_, data_n_3__3_, data_n_3__4_, data_n_3__5_, data_n_3__6_, data_n_3__7_, data_n_3__8_, data_n_3__9_, data_n_3__10_, data_n_3__11_, data_n_3__12_, data_n_3__13_, data_n_3__14_, data_n_3__15_, data_n_3__16_, data_n_3__17_, data_n_3__18_, data_n_3__19_, data_n_3__20_, data_n_3__21_, data_n_3__22_, data_n_3__23_, data_n_3__24_, data_n_3__25_, data_n_3__26_, data_n_3__27_, data_n_3__28_, data_n_3__29_, data_n_3__30_, data_n_3__31_, data_n_3__32_, data_n_3__33_, data_n_3__34_, data_n_3__35_, data_n_3__36_, data_n_3__37_, data_n_3__38_, data_n_3__39_, data_n_3__40_, data_n_3__41_, data_n_3__42_, data_n_3__43_, data_n_3__44_, data_n_3__45_, data_n_3__46_, data_n_3__47_, data_n_3__48_, data_n_3__49_, data_n_3__50_, data_n_3__51_, data_n_3__52_, data_n_3__53_, data_n_3__54_, data_n_3__55_, data_n_3__56_, data_n_3__57_, data_n_3__58_, data_n_3__59_, data_n_3__60_, data_n_3__61_, data_n_3__62_, data_n_3__63_ } = (N17)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31], data_i[32:32], data_i[33:33], data_i[34:34], data_i[35:35], data_i[36:36], data_i[37:37], data_i[38:38], data_i[39:39], data_i[40:40], data_i[41:41], data_i[42:42], data_i[43:43], data_i[44:44], data_i[45:45], data_i[46:46], data_i[47:47], data_i[48:48], data_i[49:49], data_i[50:50], data_i[51:51], data_i[52:52], data_i[53:53], data_i[54:54], data_i[55:55], data_i[56:56], data_i[57:57], data_i[58:58], data_i[59:59], data_i[60:60], data_i[61:61], data_i[62:62], data_i[63:63] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (N45)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N17 = N41;
  assign valid_o[0] = (N18)? N50 : 
                      (N51)? valid_r[0] : 1'b0;
  assign N18 = N46;
  assign valid_o[1] = (N19)? N50 : 
                      (N52)? valid_r[1] : 1'b0;
  assign N19 = N47;
  assign valid_n[2] = (N20)? N50 : 
                      (N53)? valid_r[2] : 1'b0;
  assign N20 = N48;
  assign valid_n[3] = (N21)? N50 : 
                      (N54)? 1'b0 : 1'b0;
  assign N21 = N49;
  assign data_nn[127:64] = (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                           (N23)? { data_n_3__63_, data_n_3__62_, data_n_3__61_, data_n_3__60_, data_n_3__59_, data_n_3__58_, data_n_3__57_, data_n_3__56_, data_n_3__55_, data_n_3__54_, data_n_3__53_, data_n_3__52_, data_n_3__51_, data_n_3__50_, data_n_3__49_, data_n_3__48_, data_n_3__47_, data_n_3__46_, data_n_3__45_, data_n_3__44_, data_n_3__43_, data_n_3__42_, data_n_3__41_, data_n_3__40_, data_n_3__39_, data_n_3__38_, data_n_3__37_, data_n_3__36_, data_n_3__35_, data_n_3__34_, data_n_3__33_, data_n_3__32_, data_n_3__31_, data_n_3__30_, data_n_3__29_, data_n_3__28_, data_n_3__27_, data_n_3__26_, data_n_3__25_, data_n_3__24_, data_n_3__23_, data_n_3__22_, data_n_3__21_, data_n_3__20_, data_n_3__19_, data_n_3__18_, data_n_3__17_, data_n_3__16_, data_n_3__15_, data_n_3__14_, data_n_3__13_, data_n_3__12_, data_n_3__11_, data_n_3__10_, data_n_3__9_, data_n_3__8_, data_n_3__7_, data_n_3__6_, data_n_3__5_, data_n_3__4_, data_n_3__3_, data_n_3__2_, data_n_3__1_, data_n_3__0_ } : 
                           (N24)? { data_n_2__63_, data_n_2__62_, data_n_2__61_, data_n_2__60_, data_n_2__59_, data_n_2__58_, data_n_2__57_, data_n_2__56_, data_n_2__55_, data_n_2__54_, data_n_2__53_, data_n_2__52_, data_n_2__51_, data_n_2__50_, data_n_2__49_, data_n_2__48_, data_n_2__47_, data_n_2__46_, data_n_2__45_, data_n_2__44_, data_n_2__43_, data_n_2__42_, data_n_2__41_, data_n_2__40_, data_n_2__39_, data_n_2__38_, data_n_2__37_, data_n_2__36_, data_n_2__35_, data_n_2__34_, data_n_2__33_, data_n_2__32_, data_n_2__31_, data_n_2__30_, data_n_2__29_, data_n_2__28_, data_n_2__27_, data_n_2__26_, data_n_2__25_, data_n_2__24_, data_n_2__23_, data_n_2__22_, data_n_2__21_, data_n_2__20_, data_n_2__19_, data_n_2__18_, data_n_2__17_, data_n_2__16_, data_n_2__15_, data_n_2__14_, data_n_2__13_, data_n_2__12_, data_n_2__11_, data_n_2__10_, data_n_2__9_, data_n_2__8_, data_n_2__7_, data_n_2__6_, data_n_2__5_, data_n_2__4_, data_n_2__3_, data_n_2__2_, data_n_2__1_, data_n_2__0_ } : 
                           (N25)? data_o[127:64] : 1'b0;
  assign N22 = N64;
  assign N23 = N63;
  assign N24 = N62;
  assign N25 = N61;
  assign data_nn[191:128] = (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N23)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                            (N24)? { data_n_3__63_, data_n_3__62_, data_n_3__61_, data_n_3__60_, data_n_3__59_, data_n_3__58_, data_n_3__57_, data_n_3__56_, data_n_3__55_, data_n_3__54_, data_n_3__53_, data_n_3__52_, data_n_3__51_, data_n_3__50_, data_n_3__49_, data_n_3__48_, data_n_3__47_, data_n_3__46_, data_n_3__45_, data_n_3__44_, data_n_3__43_, data_n_3__42_, data_n_3__41_, data_n_3__40_, data_n_3__39_, data_n_3__38_, data_n_3__37_, data_n_3__36_, data_n_3__35_, data_n_3__34_, data_n_3__33_, data_n_3__32_, data_n_3__31_, data_n_3__30_, data_n_3__29_, data_n_3__28_, data_n_3__27_, data_n_3__26_, data_n_3__25_, data_n_3__24_, data_n_3__23_, data_n_3__22_, data_n_3__21_, data_n_3__20_, data_n_3__19_, data_n_3__18_, data_n_3__17_, data_n_3__16_, data_n_3__15_, data_n_3__14_, data_n_3__13_, data_n_3__12_, data_n_3__11_, data_n_3__10_, data_n_3__9_, data_n_3__8_, data_n_3__7_, data_n_3__6_, data_n_3__5_, data_n_3__4_, data_n_3__3_, data_n_3__2_, data_n_3__1_, data_n_3__0_ } : 
                            (N25)? { data_n_2__63_, data_n_2__62_, data_n_2__61_, data_n_2__60_, data_n_2__59_, data_n_2__58_, data_n_2__57_, data_n_2__56_, data_n_2__55_, data_n_2__54_, data_n_2__53_, data_n_2__52_, data_n_2__51_, data_n_2__50_, data_n_2__49_, data_n_2__48_, data_n_2__47_, data_n_2__46_, data_n_2__45_, data_n_2__44_, data_n_2__43_, data_n_2__42_, data_n_2__41_, data_n_2__40_, data_n_2__39_, data_n_2__38_, data_n_2__37_, data_n_2__36_, data_n_2__35_, data_n_2__34_, data_n_2__33_, data_n_2__32_, data_n_2__31_, data_n_2__30_, data_n_2__29_, data_n_2__28_, data_n_2__27_, data_n_2__26_, data_n_2__25_, data_n_2__24_, data_n_2__23_, data_n_2__22_, data_n_2__21_, data_n_2__20_, data_n_2__19_, data_n_2__18_, data_n_2__17_, data_n_2__16_, data_n_2__15_, data_n_2__14_, data_n_2__13_, data_n_2__12_, data_n_2__11_, data_n_2__10_, data_n_2__9_, data_n_2__8_, data_n_2__7_, data_n_2__6_, data_n_2__5_, data_n_2__4_, data_n_2__3_, data_n_2__2_, data_n_2__1_, data_n_2__0_ } : 1'b0;
  assign { N68, N67, N66, N65 } = (N26)? { 1'b0, 1'b0, valid_n } : 
                                  (N56)? { valid_n, valid_o } : 1'b0;
  assign N26 = yumi_cnt_i[1];
  assign valid_nn = (N27)? { N68, N67, N66 } : 
                    (N55)? { N67, N66, N65 } : 1'b0;
  assign N27 = yumi_cnt_i[0];
  assign data_nn[63] = (N57)? data_o[63] : 
                       (N59)? data_o[127] : 
                       (N58)? data_n_2__63_ : 
                       (N60)? data_n_3__63_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign N28 = 1'b0;
  assign data_nn[62] = (N57)? data_o[62] : 
                       (N59)? data_o[126] : 
                       (N58)? data_n_2__62_ : 
                       (N60)? data_n_3__62_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[61] = (N57)? data_o[61] : 
                       (N59)? data_o[125] : 
                       (N58)? data_n_2__61_ : 
                       (N60)? data_n_3__61_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[60] = (N57)? data_o[60] : 
                       (N59)? data_o[124] : 
                       (N58)? data_n_2__60_ : 
                       (N60)? data_n_3__60_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[59] = (N57)? data_o[59] : 
                       (N59)? data_o[123] : 
                       (N58)? data_n_2__59_ : 
                       (N60)? data_n_3__59_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[58] = (N57)? data_o[58] : 
                       (N59)? data_o[122] : 
                       (N58)? data_n_2__58_ : 
                       (N60)? data_n_3__58_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[57] = (N57)? data_o[57] : 
                       (N59)? data_o[121] : 
                       (N58)? data_n_2__57_ : 
                       (N60)? data_n_3__57_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[56] = (N57)? data_o[56] : 
                       (N59)? data_o[120] : 
                       (N58)? data_n_2__56_ : 
                       (N60)? data_n_3__56_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[55] = (N57)? data_o[55] : 
                       (N59)? data_o[119] : 
                       (N58)? data_n_2__55_ : 
                       (N60)? data_n_3__55_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[54] = (N57)? data_o[54] : 
                       (N59)? data_o[118] : 
                       (N58)? data_n_2__54_ : 
                       (N60)? data_n_3__54_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[53] = (N57)? data_o[53] : 
                       (N59)? data_o[117] : 
                       (N58)? data_n_2__53_ : 
                       (N60)? data_n_3__53_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[52] = (N57)? data_o[52] : 
                       (N59)? data_o[116] : 
                       (N58)? data_n_2__52_ : 
                       (N60)? data_n_3__52_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[51] = (N57)? data_o[51] : 
                       (N59)? data_o[115] : 
                       (N58)? data_n_2__51_ : 
                       (N60)? data_n_3__51_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[50] = (N57)? data_o[50] : 
                       (N59)? data_o[114] : 
                       (N58)? data_n_2__50_ : 
                       (N60)? data_n_3__50_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[49] = (N57)? data_o[49] : 
                       (N59)? data_o[113] : 
                       (N58)? data_n_2__49_ : 
                       (N60)? data_n_3__49_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[48] = (N57)? data_o[48] : 
                       (N59)? data_o[112] : 
                       (N58)? data_n_2__48_ : 
                       (N60)? data_n_3__48_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[47] = (N57)? data_o[47] : 
                       (N59)? data_o[111] : 
                       (N58)? data_n_2__47_ : 
                       (N60)? data_n_3__47_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[46] = (N57)? data_o[46] : 
                       (N59)? data_o[110] : 
                       (N58)? data_n_2__46_ : 
                       (N60)? data_n_3__46_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[45] = (N57)? data_o[45] : 
                       (N59)? data_o[109] : 
                       (N58)? data_n_2__45_ : 
                       (N60)? data_n_3__45_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[44] = (N57)? data_o[44] : 
                       (N59)? data_o[108] : 
                       (N58)? data_n_2__44_ : 
                       (N60)? data_n_3__44_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[43] = (N57)? data_o[43] : 
                       (N59)? data_o[107] : 
                       (N58)? data_n_2__43_ : 
                       (N60)? data_n_3__43_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[42] = (N57)? data_o[42] : 
                       (N59)? data_o[106] : 
                       (N58)? data_n_2__42_ : 
                       (N60)? data_n_3__42_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[41] = (N57)? data_o[41] : 
                       (N59)? data_o[105] : 
                       (N58)? data_n_2__41_ : 
                       (N60)? data_n_3__41_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[40] = (N57)? data_o[40] : 
                       (N59)? data_o[104] : 
                       (N58)? data_n_2__40_ : 
                       (N60)? data_n_3__40_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[39] = (N57)? data_o[39] : 
                       (N59)? data_o[103] : 
                       (N58)? data_n_2__39_ : 
                       (N60)? data_n_3__39_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[38] = (N57)? data_o[38] : 
                       (N59)? data_o[102] : 
                       (N58)? data_n_2__38_ : 
                       (N60)? data_n_3__38_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[37] = (N57)? data_o[37] : 
                       (N59)? data_o[101] : 
                       (N58)? data_n_2__37_ : 
                       (N60)? data_n_3__37_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[36] = (N57)? data_o[36] : 
                       (N59)? data_o[100] : 
                       (N58)? data_n_2__36_ : 
                       (N60)? data_n_3__36_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[35] = (N57)? data_o[35] : 
                       (N59)? data_o[99] : 
                       (N58)? data_n_2__35_ : 
                       (N60)? data_n_3__35_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[34] = (N57)? data_o[34] : 
                       (N59)? data_o[98] : 
                       (N58)? data_n_2__34_ : 
                       (N60)? data_n_3__34_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[33] = (N57)? data_o[33] : 
                       (N59)? data_o[97] : 
                       (N58)? data_n_2__33_ : 
                       (N60)? data_n_3__33_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[32] = (N57)? data_o[32] : 
                       (N59)? data_o[96] : 
                       (N58)? data_n_2__32_ : 
                       (N60)? data_n_3__32_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[31] = (N57)? data_o[31] : 
                       (N59)? data_o[95] : 
                       (N58)? data_n_2__31_ : 
                       (N60)? data_n_3__31_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[30] = (N57)? data_o[30] : 
                       (N59)? data_o[94] : 
                       (N58)? data_n_2__30_ : 
                       (N60)? data_n_3__30_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[29] = (N57)? data_o[29] : 
                       (N59)? data_o[93] : 
                       (N58)? data_n_2__29_ : 
                       (N60)? data_n_3__29_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[28] = (N57)? data_o[28] : 
                       (N59)? data_o[92] : 
                       (N58)? data_n_2__28_ : 
                       (N60)? data_n_3__28_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[27] = (N57)? data_o[27] : 
                       (N59)? data_o[91] : 
                       (N58)? data_n_2__27_ : 
                       (N60)? data_n_3__27_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[26] = (N57)? data_o[26] : 
                       (N59)? data_o[90] : 
                       (N58)? data_n_2__26_ : 
                       (N60)? data_n_3__26_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[25] = (N57)? data_o[25] : 
                       (N59)? data_o[89] : 
                       (N58)? data_n_2__25_ : 
                       (N60)? data_n_3__25_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[24] = (N57)? data_o[24] : 
                       (N59)? data_o[88] : 
                       (N58)? data_n_2__24_ : 
                       (N60)? data_n_3__24_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[23] = (N57)? data_o[23] : 
                       (N59)? data_o[87] : 
                       (N58)? data_n_2__23_ : 
                       (N60)? data_n_3__23_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[22] = (N57)? data_o[22] : 
                       (N59)? data_o[86] : 
                       (N58)? data_n_2__22_ : 
                       (N60)? data_n_3__22_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[21] = (N57)? data_o[21] : 
                       (N59)? data_o[85] : 
                       (N58)? data_n_2__21_ : 
                       (N60)? data_n_3__21_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[20] = (N57)? data_o[20] : 
                       (N59)? data_o[84] : 
                       (N58)? data_n_2__20_ : 
                       (N60)? data_n_3__20_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[19] = (N57)? data_o[19] : 
                       (N59)? data_o[83] : 
                       (N58)? data_n_2__19_ : 
                       (N60)? data_n_3__19_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[18] = (N57)? data_o[18] : 
                       (N59)? data_o[82] : 
                       (N58)? data_n_2__18_ : 
                       (N60)? data_n_3__18_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[17] = (N57)? data_o[17] : 
                       (N59)? data_o[81] : 
                       (N58)? data_n_2__17_ : 
                       (N60)? data_n_3__17_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[16] = (N57)? data_o[16] : 
                       (N59)? data_o[80] : 
                       (N58)? data_n_2__16_ : 
                       (N60)? data_n_3__16_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[15] = (N57)? data_o[15] : 
                       (N59)? data_o[79] : 
                       (N58)? data_n_2__15_ : 
                       (N60)? data_n_3__15_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[14] = (N57)? data_o[14] : 
                       (N59)? data_o[78] : 
                       (N58)? data_n_2__14_ : 
                       (N60)? data_n_3__14_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[13] = (N57)? data_o[13] : 
                       (N59)? data_o[77] : 
                       (N58)? data_n_2__13_ : 
                       (N60)? data_n_3__13_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[12] = (N57)? data_o[12] : 
                       (N59)? data_o[76] : 
                       (N58)? data_n_2__12_ : 
                       (N60)? data_n_3__12_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[11] = (N57)? data_o[11] : 
                       (N59)? data_o[75] : 
                       (N58)? data_n_2__11_ : 
                       (N60)? data_n_3__11_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[10] = (N57)? data_o[10] : 
                       (N59)? data_o[74] : 
                       (N58)? data_n_2__10_ : 
                       (N60)? data_n_3__10_ : 
                       (N28)? 1'b0 : 
                       (N28)? 1'b0 : 1'b0;
  assign data_nn[9] = (N57)? data_o[9] : 
                      (N59)? data_o[73] : 
                      (N58)? data_n_2__9_ : 
                      (N60)? data_n_3__9_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[8] = (N57)? data_o[8] : 
                      (N59)? data_o[72] : 
                      (N58)? data_n_2__8_ : 
                      (N60)? data_n_3__8_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[7] = (N57)? data_o[7] : 
                      (N59)? data_o[71] : 
                      (N58)? data_n_2__7_ : 
                      (N60)? data_n_3__7_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[6] = (N57)? data_o[6] : 
                      (N59)? data_o[70] : 
                      (N58)? data_n_2__6_ : 
                      (N60)? data_n_3__6_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[5] = (N57)? data_o[5] : 
                      (N59)? data_o[69] : 
                      (N58)? data_n_2__5_ : 
                      (N60)? data_n_3__5_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[4] = (N57)? data_o[4] : 
                      (N59)? data_o[68] : 
                      (N58)? data_n_2__4_ : 
                      (N60)? data_n_3__4_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[3] = (N57)? data_o[3] : 
                      (N59)? data_o[67] : 
                      (N58)? data_n_2__3_ : 
                      (N60)? data_n_3__3_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[2] = (N57)? data_o[2] : 
                      (N59)? data_o[66] : 
                      (N58)? data_n_2__2_ : 
                      (N60)? data_n_3__2_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[1] = (N57)? data_o[1] : 
                      (N59)? data_o[65] : 
                      (N58)? data_n_2__1_ : 
                      (N60)? data_n_3__1_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign data_nn[0] = (N57)? data_o[0] : 
                      (N59)? data_o[64] : 
                      (N58)? data_n_2__0_ : 
                      (N60)? data_n_3__0_ : 
                      (N28)? 1'b0 : 
                      (N28)? 1'b0 : 1'b0;
  assign N29 = ~reset_i;
  assign ready_o = ~valid_r[2];
  assign N35 = valid_i & ready_o;
  assign N42 = ~N38;
  assign N43 = ~N39;
  assign N44 = ~N40;
  assign N45 = ~N41;
  assign N50 = valid_i & ready_o;
  assign N51 = ~N46;
  assign N52 = ~N47;
  assign N53 = ~N48;
  assign N54 = ~N49;
  assign N55 = ~yumi_cnt_i[0];
  assign N56 = ~yumi_cnt_i[1];
  assign N57 = N55 & N56;
  assign N58 = N55 & yumi_cnt_i[1];
  assign N59 = yumi_cnt_i[0] & N56;
  assign N60 = yumi_cnt_i[0] & yumi_cnt_i[1];

  always @(posedge clk_i) begin
    if(1'b1) begin
      { valid_r[2:0] } <= { N34, N33, N32 };
      { num_els_r[1:0] } <= { N31, N30 };
      { data_r[191:0] } <= { data_nn[191:0] };
    end 
  end


endmodule



module bsg_circular_ptr_slots_p2_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [0:0] o;
  output [0:0] n_o;
  input clk;
  input reset_i;
  wire [0:0] n_o,genblk1_genblk1_ptr_r_p1;
  wire N0,N1,N2,N3,N4,N5,N6;
  reg [0:0] o;
  assign genblk1_genblk1_ptr_r_p1[0] = o[0] ^ 1'b1;
  assign N5 = (N0)? 1'b0 : 
              (N1)? n_o[0] : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign n_o[0] = (N2)? genblk1_genblk1_ptr_r_p1[0] : 
                  (N3)? o[0] : 1'b0;
  assign N2 = add_i[0];
  assign N3 = N6;
  assign N4 = ~reset_i;
  assign N6 = ~add_i[0];

  always @(posedge clk) begin
    if(1'b1) begin
      { o[0:0] } <= { N5 };
    end 
  end


endmodule



module bsg_mem_1rw_sync_synth_width_p128_els_p2_latch_last_read_p0
(
  clk_i,
  v_i,
  reset_i,
  data_i,
  addr_i,
  w_i,
  data_o
);

  input [127:0] data_i;
  input [0:0] addr_i;
  output [127:0] data_o;
  input clk_i;
  input v_i;
  input reset_i;
  input w_i;
  wire [127:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8,N9,N10;
  reg [0:0] addr_r;
  reg [255:0] mem;
  assign data_o[127] = (N2)? mem[127] : 
                       (N0)? mem[255] : 1'b0;
  assign N0 = addr_r[0];
  assign data_o[126] = (N2)? mem[126] : 
                       (N0)? mem[254] : 1'b0;
  assign data_o[125] = (N2)? mem[125] : 
                       (N0)? mem[253] : 1'b0;
  assign data_o[124] = (N2)? mem[124] : 
                       (N0)? mem[252] : 1'b0;
  assign data_o[123] = (N2)? mem[123] : 
                       (N0)? mem[251] : 1'b0;
  assign data_o[122] = (N2)? mem[122] : 
                       (N0)? mem[250] : 1'b0;
  assign data_o[121] = (N2)? mem[121] : 
                       (N0)? mem[249] : 1'b0;
  assign data_o[120] = (N2)? mem[120] : 
                       (N0)? mem[248] : 1'b0;
  assign data_o[119] = (N2)? mem[119] : 
                       (N0)? mem[247] : 1'b0;
  assign data_o[118] = (N2)? mem[118] : 
                       (N0)? mem[246] : 1'b0;
  assign data_o[117] = (N2)? mem[117] : 
                       (N0)? mem[245] : 1'b0;
  assign data_o[116] = (N2)? mem[116] : 
                       (N0)? mem[244] : 1'b0;
  assign data_o[115] = (N2)? mem[115] : 
                       (N0)? mem[243] : 1'b0;
  assign data_o[114] = (N2)? mem[114] : 
                       (N0)? mem[242] : 1'b0;
  assign data_o[113] = (N2)? mem[113] : 
                       (N0)? mem[241] : 1'b0;
  assign data_o[112] = (N2)? mem[112] : 
                       (N0)? mem[240] : 1'b0;
  assign data_o[111] = (N2)? mem[111] : 
                       (N0)? mem[239] : 1'b0;
  assign data_o[110] = (N2)? mem[110] : 
                       (N0)? mem[238] : 1'b0;
  assign data_o[109] = (N2)? mem[109] : 
                       (N0)? mem[237] : 1'b0;
  assign data_o[108] = (N2)? mem[108] : 
                       (N0)? mem[236] : 1'b0;
  assign data_o[107] = (N2)? mem[107] : 
                       (N0)? mem[235] : 1'b0;
  assign data_o[106] = (N2)? mem[106] : 
                       (N0)? mem[234] : 1'b0;
  assign data_o[105] = (N2)? mem[105] : 
                       (N0)? mem[233] : 1'b0;
  assign data_o[104] = (N2)? mem[104] : 
                       (N0)? mem[232] : 1'b0;
  assign data_o[103] = (N2)? mem[103] : 
                       (N0)? mem[231] : 1'b0;
  assign data_o[102] = (N2)? mem[102] : 
                       (N0)? mem[230] : 1'b0;
  assign data_o[101] = (N2)? mem[101] : 
                       (N0)? mem[229] : 1'b0;
  assign data_o[100] = (N2)? mem[100] : 
                       (N0)? mem[228] : 1'b0;
  assign data_o[99] = (N2)? mem[99] : 
                      (N0)? mem[227] : 1'b0;
  assign data_o[98] = (N2)? mem[98] : 
                      (N0)? mem[226] : 1'b0;
  assign data_o[97] = (N2)? mem[97] : 
                      (N0)? mem[225] : 1'b0;
  assign data_o[96] = (N2)? mem[96] : 
                      (N0)? mem[224] : 1'b0;
  assign data_o[95] = (N2)? mem[95] : 
                      (N0)? mem[223] : 1'b0;
  assign data_o[94] = (N2)? mem[94] : 
                      (N0)? mem[222] : 1'b0;
  assign data_o[93] = (N2)? mem[93] : 
                      (N0)? mem[221] : 1'b0;
  assign data_o[92] = (N2)? mem[92] : 
                      (N0)? mem[220] : 1'b0;
  assign data_o[91] = (N2)? mem[91] : 
                      (N0)? mem[219] : 1'b0;
  assign data_o[90] = (N2)? mem[90] : 
                      (N0)? mem[218] : 1'b0;
  assign data_o[89] = (N2)? mem[89] : 
                      (N0)? mem[217] : 1'b0;
  assign data_o[88] = (N2)? mem[88] : 
                      (N0)? mem[216] : 1'b0;
  assign data_o[87] = (N2)? mem[87] : 
                      (N0)? mem[215] : 1'b0;
  assign data_o[86] = (N2)? mem[86] : 
                      (N0)? mem[214] : 1'b0;
  assign data_o[85] = (N2)? mem[85] : 
                      (N0)? mem[213] : 1'b0;
  assign data_o[84] = (N2)? mem[84] : 
                      (N0)? mem[212] : 1'b0;
  assign data_o[83] = (N2)? mem[83] : 
                      (N0)? mem[211] : 1'b0;
  assign data_o[82] = (N2)? mem[82] : 
                      (N0)? mem[210] : 1'b0;
  assign data_o[81] = (N2)? mem[81] : 
                      (N0)? mem[209] : 1'b0;
  assign data_o[80] = (N2)? mem[80] : 
                      (N0)? mem[208] : 1'b0;
  assign data_o[79] = (N2)? mem[79] : 
                      (N0)? mem[207] : 1'b0;
  assign data_o[78] = (N2)? mem[78] : 
                      (N0)? mem[206] : 1'b0;
  assign data_o[77] = (N2)? mem[77] : 
                      (N0)? mem[205] : 1'b0;
  assign data_o[76] = (N2)? mem[76] : 
                      (N0)? mem[204] : 1'b0;
  assign data_o[75] = (N2)? mem[75] : 
                      (N0)? mem[203] : 1'b0;
  assign data_o[74] = (N2)? mem[74] : 
                      (N0)? mem[202] : 1'b0;
  assign data_o[73] = (N2)? mem[73] : 
                      (N0)? mem[201] : 1'b0;
  assign data_o[72] = (N2)? mem[72] : 
                      (N0)? mem[200] : 1'b0;
  assign data_o[71] = (N2)? mem[71] : 
                      (N0)? mem[199] : 1'b0;
  assign data_o[70] = (N2)? mem[70] : 
                      (N0)? mem[198] : 1'b0;
  assign data_o[69] = (N2)? mem[69] : 
                      (N0)? mem[197] : 1'b0;
  assign data_o[68] = (N2)? mem[68] : 
                      (N0)? mem[196] : 1'b0;
  assign data_o[67] = (N2)? mem[67] : 
                      (N0)? mem[195] : 1'b0;
  assign data_o[66] = (N2)? mem[66] : 
                      (N0)? mem[194] : 1'b0;
  assign data_o[65] = (N2)? mem[65] : 
                      (N0)? mem[193] : 1'b0;
  assign data_o[64] = (N2)? mem[64] : 
                      (N0)? mem[192] : 1'b0;
  assign data_o[63] = (N2)? mem[63] : 
                      (N0)? mem[191] : 1'b0;
  assign data_o[62] = (N2)? mem[62] : 
                      (N0)? mem[190] : 1'b0;
  assign data_o[61] = (N2)? mem[61] : 
                      (N0)? mem[189] : 1'b0;
  assign data_o[60] = (N2)? mem[60] : 
                      (N0)? mem[188] : 1'b0;
  assign data_o[59] = (N2)? mem[59] : 
                      (N0)? mem[187] : 1'b0;
  assign data_o[58] = (N2)? mem[58] : 
                      (N0)? mem[186] : 1'b0;
  assign data_o[57] = (N2)? mem[57] : 
                      (N0)? mem[185] : 1'b0;
  assign data_o[56] = (N2)? mem[56] : 
                      (N0)? mem[184] : 1'b0;
  assign data_o[55] = (N2)? mem[55] : 
                      (N0)? mem[183] : 1'b0;
  assign data_o[54] = (N2)? mem[54] : 
                      (N0)? mem[182] : 1'b0;
  assign data_o[53] = (N2)? mem[53] : 
                      (N0)? mem[181] : 1'b0;
  assign data_o[52] = (N2)? mem[52] : 
                      (N0)? mem[180] : 1'b0;
  assign data_o[51] = (N2)? mem[51] : 
                      (N0)? mem[179] : 1'b0;
  assign data_o[50] = (N2)? mem[50] : 
                      (N0)? mem[178] : 1'b0;
  assign data_o[49] = (N2)? mem[49] : 
                      (N0)? mem[177] : 1'b0;
  assign data_o[48] = (N2)? mem[48] : 
                      (N0)? mem[176] : 1'b0;
  assign data_o[47] = (N2)? mem[47] : 
                      (N0)? mem[175] : 1'b0;
  assign data_o[46] = (N2)? mem[46] : 
                      (N0)? mem[174] : 1'b0;
  assign data_o[45] = (N2)? mem[45] : 
                      (N0)? mem[173] : 1'b0;
  assign data_o[44] = (N2)? mem[44] : 
                      (N0)? mem[172] : 1'b0;
  assign data_o[43] = (N2)? mem[43] : 
                      (N0)? mem[171] : 1'b0;
  assign data_o[42] = (N2)? mem[42] : 
                      (N0)? mem[170] : 1'b0;
  assign data_o[41] = (N2)? mem[41] : 
                      (N0)? mem[169] : 1'b0;
  assign data_o[40] = (N2)? mem[40] : 
                      (N0)? mem[168] : 1'b0;
  assign data_o[39] = (N2)? mem[39] : 
                      (N0)? mem[167] : 1'b0;
  assign data_o[38] = (N2)? mem[38] : 
                      (N0)? mem[166] : 1'b0;
  assign data_o[37] = (N2)? mem[37] : 
                      (N0)? mem[165] : 1'b0;
  assign data_o[36] = (N2)? mem[36] : 
                      (N0)? mem[164] : 1'b0;
  assign data_o[35] = (N2)? mem[35] : 
                      (N0)? mem[163] : 1'b0;
  assign data_o[34] = (N2)? mem[34] : 
                      (N0)? mem[162] : 1'b0;
  assign data_o[33] = (N2)? mem[33] : 
                      (N0)? mem[161] : 1'b0;
  assign data_o[32] = (N2)? mem[32] : 
                      (N0)? mem[160] : 1'b0;
  assign data_o[31] = (N2)? mem[31] : 
                      (N0)? mem[159] : 1'b0;
  assign data_o[30] = (N2)? mem[30] : 
                      (N0)? mem[158] : 1'b0;
  assign data_o[29] = (N2)? mem[29] : 
                      (N0)? mem[157] : 1'b0;
  assign data_o[28] = (N2)? mem[28] : 
                      (N0)? mem[156] : 1'b0;
  assign data_o[27] = (N2)? mem[27] : 
                      (N0)? mem[155] : 1'b0;
  assign data_o[26] = (N2)? mem[26] : 
                      (N0)? mem[154] : 1'b0;
  assign data_o[25] = (N2)? mem[25] : 
                      (N0)? mem[153] : 1'b0;
  assign data_o[24] = (N2)? mem[24] : 
                      (N0)? mem[152] : 1'b0;
  assign data_o[23] = (N2)? mem[23] : 
                      (N0)? mem[151] : 1'b0;
  assign data_o[22] = (N2)? mem[22] : 
                      (N0)? mem[150] : 1'b0;
  assign data_o[21] = (N2)? mem[21] : 
                      (N0)? mem[149] : 1'b0;
  assign data_o[20] = (N2)? mem[20] : 
                      (N0)? mem[148] : 1'b0;
  assign data_o[19] = (N2)? mem[19] : 
                      (N0)? mem[147] : 1'b0;
  assign data_o[18] = (N2)? mem[18] : 
                      (N0)? mem[146] : 1'b0;
  assign data_o[17] = (N2)? mem[17] : 
                      (N0)? mem[145] : 1'b0;
  assign data_o[16] = (N2)? mem[16] : 
                      (N0)? mem[144] : 1'b0;
  assign data_o[15] = (N2)? mem[15] : 
                      (N0)? mem[143] : 1'b0;
  assign data_o[14] = (N2)? mem[14] : 
                      (N0)? mem[142] : 1'b0;
  assign data_o[13] = (N2)? mem[13] : 
                      (N0)? mem[141] : 1'b0;
  assign data_o[12] = (N2)? mem[12] : 
                      (N0)? mem[140] : 1'b0;
  assign data_o[11] = (N2)? mem[11] : 
                      (N0)? mem[139] : 1'b0;
  assign data_o[10] = (N2)? mem[10] : 
                      (N0)? mem[138] : 1'b0;
  assign data_o[9] = (N2)? mem[9] : 
                     (N0)? mem[137] : 1'b0;
  assign data_o[8] = (N2)? mem[8] : 
                     (N0)? mem[136] : 1'b0;
  assign data_o[7] = (N2)? mem[7] : 
                     (N0)? mem[135] : 1'b0;
  assign data_o[6] = (N2)? mem[6] : 
                     (N0)? mem[134] : 1'b0;
  assign data_o[5] = (N2)? mem[5] : 
                     (N0)? mem[133] : 1'b0;
  assign data_o[4] = (N2)? mem[4] : 
                     (N0)? mem[132] : 1'b0;
  assign data_o[3] = (N2)? mem[3] : 
                     (N0)? mem[131] : 1'b0;
  assign data_o[2] = (N2)? mem[2] : 
                     (N0)? mem[130] : 1'b0;
  assign data_o[1] = (N2)? mem[1] : 
                     (N0)? mem[129] : 1'b0;
  assign data_o[0] = (N2)? mem[0] : 
                     (N0)? mem[128] : 1'b0;
  assign N5 = ~addr_i[0];
  assign { N10, N9, N8, N7 } = (N1)? { addr_i[0:0], addr_i[0:0], N5, N5 } : 
                               (N4)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N1 = N3;
  assign N2 = ~addr_r[0];
  assign N3 = v_i & w_i;
  assign N4 = ~N3;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { addr_r[0:0] } <= { addr_i[0:0] };
    end 
    if(N9) begin
      { mem[255:157], mem[128:128] } <= { data_i[127:29], data_i[0:0] };
    end 
    if(N10) begin
      { mem[156:129] } <= { data_i[28:1] };
    end 
    if(N7) begin
      { mem[127:29], mem[0:0] } <= { data_i[127:29], data_i[0:0] };
    end 
    if(N8) begin
      { mem[28:1] } <= { data_i[28:1] };
    end 
  end


endmodule



module bsg_mem_1rw_sync_width_p128_els_p2
(
  clk_i,
  reset_i,
  data_i,
  addr_i,
  v_i,
  w_i,
  data_o
);

  input [127:0] data_i;
  input [0:0] addr_i;
  output [127:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input w_i;
  wire [127:0] data_o;

  bsg_mem_1rw_sync_synth_width_p128_els_p2_latch_last_read_p0
  synth
  (
    .clk_i(clk_i),
    .v_i(v_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .addr_i(addr_i[0]),
    .w_i(w_i),
    .data_o(data_o)
  );


endmodule



module bsg_fifo_1rw_large_width_p128_els_p2
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  enq_not_deq_i,
  full_o,
  empty_o,
  data_o
);

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input enq_not_deq_i;
  output full_o;
  output empty_o;
  wire [127:0] data_o;
  wire full_o,empty_o,N0,N1,N2,N3,N4,mem_we,mem_re,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  n_0_net__0_,N15,N16,N17,N18,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2;
  wire [0:0] rd_ptr,wr_ptr;
  reg last_op_is_read_r;
  assign N0 = rd_ptr[0] ^ wr_ptr[0];
  assign N13 = ~N0;
  assign N1 = rd_ptr[0] ^ wr_ptr[0];
  assign N14 = ~N1;

  bsg_circular_ptr_slots_p2_max_add_p1
  rd_circ_ptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(mem_re),
    .o(rd_ptr[0]),
    .n_o(SYNOPSYS_UNCONNECTED_1)
  );


  bsg_circular_ptr_slots_p2_max_add_p1
  wr_circ_ptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(mem_we),
    .o(wr_ptr[0]),
    .n_o(SYNOPSYS_UNCONNECTED_2)
  );


  bsg_mem_1rw_sync_width_p128_els_p2
  mem_1srw
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .addr_i(n_0_net__0_),
    .v_i(v_i),
    .w_i(mem_we),
    .data_o(data_o)
  );

  assign N9 = (N2)? 1'b1 : 
              (N12)? 1'b1 : 
              (N8)? 1'b0 : 1'b0;
  assign N2 = N5;
  assign N10 = (N2)? 1'b1 : 
               (N12)? mem_re : 1'b0;
  assign n_0_net__0_ = (N3)? wr_ptr[0] : 
                       (N4)? rd_ptr[0] : 1'b0;
  assign N3 = N16;
  assign N4 = N15;
  assign mem_we = enq_not_deq_i & v_i;
  assign mem_re = N17 & v_i;
  assign N17 = ~enq_not_deq_i;
  assign N5 = reset_i;
  assign N6 = v_i;
  assign N7 = N6 | N5;
  assign N8 = ~N7;
  assign N11 = ~N5;
  assign N12 = N6 & N11;
  assign empty_o = N13 & last_op_is_read_r;
  assign full_o = N14 & N18;
  assign N18 = ~last_op_is_read_r;
  assign N15 = ~mem_we;
  assign N16 = mem_we;

  always @(posedge clk_i) begin
    if(N9) begin
      last_op_is_read_r <= N10;
    end 
  end


endmodule



module bsg_thermometer_count_width_p2
(
  i,
  o
);

  input [1:0] i;
  output [1:0] o;
  wire [1:0] o;
  wire N0;
  assign o[1] = i[1];
  assign o[0] = i[0] & N0;
  assign N0 = ~i[1];

endmodule



module bsg_round_robin_2_to_2_width_p64
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  data_o,
  v_o,
  ready_i
);

  input [127:0] data_i;
  input [1:0] v_i;
  output [1:0] ready_o;
  output [127:0] data_o;
  output [1:0] v_o;
  input [1:0] ready_i;
  input clk_i;
  input reset_i;
  wire [1:0] ready_o,v_o;
  wire [127:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10;
  reg head_r;
  assign N6 = (N0)? 1'b0 : 
              (N1)? N5 : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign data_o = (N2)? { data_i[63:0], data_i[127:64] } : 
                  (N3)? data_i : 1'b0;
  assign N2 = head_r;
  assign N3 = N7;
  assign v_o = (N2)? { v_i[0:0], v_i[1:1] } : 
               (N3)? v_i : 1'b0;
  assign ready_o = (N2)? { ready_i[0:0], ready_i[1:1] } : 
                   (N3)? ready_i : 1'b0;
  assign N4 = ~reset_i;
  assign N5 = N9 ^ N10;
  assign N9 = head_r ^ N8;
  assign N8 = v_i[1] & ready_o[1];
  assign N10 = v_i[0] & ready_o[0];
  assign N7 = ~head_r;

  always @(posedge clk_i) begin
    if(1'b1) begin
      head_r <= N6;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p64_els_p2_read_write_same_addr_p0_harden_p0
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
  input [63:0] w_data_i;
  input [0:0] r_addr_i;
  output [63:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [63:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [127:0] mem;
  assign r_data_o[63] = (N3)? mem[63] : 
                        (N0)? mem[127] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[62] = (N3)? mem[62] : 
                        (N0)? mem[126] : 1'b0;
  assign r_data_o[61] = (N3)? mem[61] : 
                        (N0)? mem[125] : 1'b0;
  assign r_data_o[60] = (N3)? mem[60] : 
                        (N0)? mem[124] : 1'b0;
  assign r_data_o[59] = (N3)? mem[59] : 
                        (N0)? mem[123] : 1'b0;
  assign r_data_o[58] = (N3)? mem[58] : 
                        (N0)? mem[122] : 1'b0;
  assign r_data_o[57] = (N3)? mem[57] : 
                        (N0)? mem[121] : 1'b0;
  assign r_data_o[56] = (N3)? mem[56] : 
                        (N0)? mem[120] : 1'b0;
  assign r_data_o[55] = (N3)? mem[55] : 
                        (N0)? mem[119] : 1'b0;
  assign r_data_o[54] = (N3)? mem[54] : 
                        (N0)? mem[118] : 1'b0;
  assign r_data_o[53] = (N3)? mem[53] : 
                        (N0)? mem[117] : 1'b0;
  assign r_data_o[52] = (N3)? mem[52] : 
                        (N0)? mem[116] : 1'b0;
  assign r_data_o[51] = (N3)? mem[51] : 
                        (N0)? mem[115] : 1'b0;
  assign r_data_o[50] = (N3)? mem[50] : 
                        (N0)? mem[114] : 1'b0;
  assign r_data_o[49] = (N3)? mem[49] : 
                        (N0)? mem[113] : 1'b0;
  assign r_data_o[48] = (N3)? mem[48] : 
                        (N0)? mem[112] : 1'b0;
  assign r_data_o[47] = (N3)? mem[47] : 
                        (N0)? mem[111] : 1'b0;
  assign r_data_o[46] = (N3)? mem[46] : 
                        (N0)? mem[110] : 1'b0;
  assign r_data_o[45] = (N3)? mem[45] : 
                        (N0)? mem[109] : 1'b0;
  assign r_data_o[44] = (N3)? mem[44] : 
                        (N0)? mem[108] : 1'b0;
  assign r_data_o[43] = (N3)? mem[43] : 
                        (N0)? mem[107] : 1'b0;
  assign r_data_o[42] = (N3)? mem[42] : 
                        (N0)? mem[106] : 1'b0;
  assign r_data_o[41] = (N3)? mem[41] : 
                        (N0)? mem[105] : 1'b0;
  assign r_data_o[40] = (N3)? mem[40] : 
                        (N0)? mem[104] : 1'b0;
  assign r_data_o[39] = (N3)? mem[39] : 
                        (N0)? mem[103] : 1'b0;
  assign r_data_o[38] = (N3)? mem[38] : 
                        (N0)? mem[102] : 1'b0;
  assign r_data_o[37] = (N3)? mem[37] : 
                        (N0)? mem[101] : 1'b0;
  assign r_data_o[36] = (N3)? mem[36] : 
                        (N0)? mem[100] : 1'b0;
  assign r_data_o[35] = (N3)? mem[35] : 
                        (N0)? mem[99] : 1'b0;
  assign r_data_o[34] = (N3)? mem[34] : 
                        (N0)? mem[98] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] : 
                        (N0)? mem[97] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] : 
                        (N0)? mem[96] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[95] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[94] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[93] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[92] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[91] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[90] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[89] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[88] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[87] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[86] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[85] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[84] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[83] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[82] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[81] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[80] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[79] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[78] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[77] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[76] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[75] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[74] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[73] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[72] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[71] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[70] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[69] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[68] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[67] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[66] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[65] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[64] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[127:64] } <= { w_data_i[63:0] };
    end 
    if(N7) begin
      { mem[63:0] } <= { w_data_i[63:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p64_els_p2_read_write_same_addr_p0
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
  input [63:0] w_data_i;
  input [0:0] r_addr_i;
  output [63:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [63:0] r_data_o;

  bsg_mem_1r1w_synth_width_p64_els_p2_read_write_same_addr_p0_harden_p0
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



module bsg_two_fifo_width_p64
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

  input [63:0] data_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [63:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p64_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i),
    .r_v_i(n_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o)
  );

  assign N9 = (N0)? 1'b1 : 
              (N1)? N5 : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign N10 = (N0)? 1'b0 : 
               (N1)? N4 : 1'b0;
  assign N11 = (N0)? 1'b1 : 
               (N1)? yumi_i : 1'b0;
  assign N12 = (N0)? 1'b0 : 
               (N1)? N6 : 1'b0;
  assign N13 = (N0)? 1'b1 : 
               (N1)? N7 : 1'b0;
  assign N14 = (N0)? 1'b0 : 
               (N1)? N8 : 1'b0;
  assign n_0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N15;
  assign N15 = ~full_r;
  assign N2 = ~reset_i;
  assign N3 = reset_i;
  assign N5 = enq_i;
  assign N4 = ~tail_r;
  assign N6 = ~head_r;
  assign N7 = N17 | N19;
  assign N17 = empty_r & N16;
  assign N16 = ~enq_i;
  assign N19 = N18 & N16;
  assign N18 = N15 & yumi_i;
  assign N8 = N23 | N24;
  assign N23 = N21 & N22;
  assign N21 = N20 & enq_i;
  assign N20 = ~empty_r;
  assign N22 = ~yumi_i;
  assign N24 = full_r & N22;

  always @(posedge clk_i) begin
    if(1'b1) begin
      full_r <= N14;
      empty_r <= N13;
    end 
    if(N9) begin
      tail_r <= N10;
    end 
    if(N11) begin
      head_r <= N12;
    end 
  end


endmodule



module bsg_round_robin_n_to_1_width_p64_num_in_p2_strict_p1
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  yumi_o,
  v_o,
  data_o,
  tag_o,
  yumi_i
);

  input [127:0] data_i;
  input [1:0] v_i;
  output [1:0] yumi_o;
  output [63:0] data_o;
  output [0:0] tag_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;
  wire [1:0] yumi_o;
  wire [63:0] data_o;
  wire [0:0] tag_o;
  wire v_o,N0,N1,SYNOPSYS_UNCONNECTED_1;

  bsg_circular_ptr_slots_p2_max_add_p1
  strict_circular_ptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(yumi_i),
    .o(tag_o[0]),
    .n_o(SYNOPSYS_UNCONNECTED_1)
  );

  assign v_o = (N1)? v_i[0] : 
               (N0)? v_i[1] : 1'b0;
  assign N0 = tag_o[0];
  assign data_o[63] = (N1)? data_i[63] : 
                      (N0)? data_i[127] : 1'b0;
  assign data_o[62] = (N1)? data_i[62] : 
                      (N0)? data_i[126] : 1'b0;
  assign data_o[61] = (N1)? data_i[61] : 
                      (N0)? data_i[125] : 1'b0;
  assign data_o[60] = (N1)? data_i[60] : 
                      (N0)? data_i[124] : 1'b0;
  assign data_o[59] = (N1)? data_i[59] : 
                      (N0)? data_i[123] : 1'b0;
  assign data_o[58] = (N1)? data_i[58] : 
                      (N0)? data_i[122] : 1'b0;
  assign data_o[57] = (N1)? data_i[57] : 
                      (N0)? data_i[121] : 1'b0;
  assign data_o[56] = (N1)? data_i[56] : 
                      (N0)? data_i[120] : 1'b0;
  assign data_o[55] = (N1)? data_i[55] : 
                      (N0)? data_i[119] : 1'b0;
  assign data_o[54] = (N1)? data_i[54] : 
                      (N0)? data_i[118] : 1'b0;
  assign data_o[53] = (N1)? data_i[53] : 
                      (N0)? data_i[117] : 1'b0;
  assign data_o[52] = (N1)? data_i[52] : 
                      (N0)? data_i[116] : 1'b0;
  assign data_o[51] = (N1)? data_i[51] : 
                      (N0)? data_i[115] : 1'b0;
  assign data_o[50] = (N1)? data_i[50] : 
                      (N0)? data_i[114] : 1'b0;
  assign data_o[49] = (N1)? data_i[49] : 
                      (N0)? data_i[113] : 1'b0;
  assign data_o[48] = (N1)? data_i[48] : 
                      (N0)? data_i[112] : 1'b0;
  assign data_o[47] = (N1)? data_i[47] : 
                      (N0)? data_i[111] : 1'b0;
  assign data_o[46] = (N1)? data_i[46] : 
                      (N0)? data_i[110] : 1'b0;
  assign data_o[45] = (N1)? data_i[45] : 
                      (N0)? data_i[109] : 1'b0;
  assign data_o[44] = (N1)? data_i[44] : 
                      (N0)? data_i[108] : 1'b0;
  assign data_o[43] = (N1)? data_i[43] : 
                      (N0)? data_i[107] : 1'b0;
  assign data_o[42] = (N1)? data_i[42] : 
                      (N0)? data_i[106] : 1'b0;
  assign data_o[41] = (N1)? data_i[41] : 
                      (N0)? data_i[105] : 1'b0;
  assign data_o[40] = (N1)? data_i[40] : 
                      (N0)? data_i[104] : 1'b0;
  assign data_o[39] = (N1)? data_i[39] : 
                      (N0)? data_i[103] : 1'b0;
  assign data_o[38] = (N1)? data_i[38] : 
                      (N0)? data_i[102] : 1'b0;
  assign data_o[37] = (N1)? data_i[37] : 
                      (N0)? data_i[101] : 1'b0;
  assign data_o[36] = (N1)? data_i[36] : 
                      (N0)? data_i[100] : 1'b0;
  assign data_o[35] = (N1)? data_i[35] : 
                      (N0)? data_i[99] : 1'b0;
  assign data_o[34] = (N1)? data_i[34] : 
                      (N0)? data_i[98] : 1'b0;
  assign data_o[33] = (N1)? data_i[33] : 
                      (N0)? data_i[97] : 1'b0;
  assign data_o[32] = (N1)? data_i[32] : 
                      (N0)? data_i[96] : 1'b0;
  assign data_o[31] = (N1)? data_i[31] : 
                      (N0)? data_i[95] : 1'b0;
  assign data_o[30] = (N1)? data_i[30] : 
                      (N0)? data_i[94] : 1'b0;
  assign data_o[29] = (N1)? data_i[29] : 
                      (N0)? data_i[93] : 1'b0;
  assign data_o[28] = (N1)? data_i[28] : 
                      (N0)? data_i[92] : 1'b0;
  assign data_o[27] = (N1)? data_i[27] : 
                      (N0)? data_i[91] : 1'b0;
  assign data_o[26] = (N1)? data_i[26] : 
                      (N0)? data_i[90] : 1'b0;
  assign data_o[25] = (N1)? data_i[25] : 
                      (N0)? data_i[89] : 1'b0;
  assign data_o[24] = (N1)? data_i[24] : 
                      (N0)? data_i[88] : 1'b0;
  assign data_o[23] = (N1)? data_i[23] : 
                      (N0)? data_i[87] : 1'b0;
  assign data_o[22] = (N1)? data_i[22] : 
                      (N0)? data_i[86] : 1'b0;
  assign data_o[21] = (N1)? data_i[21] : 
                      (N0)? data_i[85] : 1'b0;
  assign data_o[20] = (N1)? data_i[20] : 
                      (N0)? data_i[84] : 1'b0;
  assign data_o[19] = (N1)? data_i[19] : 
                      (N0)? data_i[83] : 1'b0;
  assign data_o[18] = (N1)? data_i[18] : 
                      (N0)? data_i[82] : 1'b0;
  assign data_o[17] = (N1)? data_i[17] : 
                      (N0)? data_i[81] : 1'b0;
  assign data_o[16] = (N1)? data_i[16] : 
                      (N0)? data_i[80] : 1'b0;
  assign data_o[15] = (N1)? data_i[15] : 
                      (N0)? data_i[79] : 1'b0;
  assign data_o[14] = (N1)? data_i[14] : 
                      (N0)? data_i[78] : 1'b0;
  assign data_o[13] = (N1)? data_i[13] : 
                      (N0)? data_i[77] : 1'b0;
  assign data_o[12] = (N1)? data_i[12] : 
                      (N0)? data_i[76] : 1'b0;
  assign data_o[11] = (N1)? data_i[11] : 
                      (N0)? data_i[75] : 1'b0;
  assign data_o[10] = (N1)? data_i[10] : 
                      (N0)? data_i[74] : 1'b0;
  assign data_o[9] = (N1)? data_i[9] : 
                     (N0)? data_i[73] : 1'b0;
  assign data_o[8] = (N1)? data_i[8] : 
                     (N0)? data_i[72] : 1'b0;
  assign data_o[7] = (N1)? data_i[7] : 
                     (N0)? data_i[71] : 1'b0;
  assign data_o[6] = (N1)? data_i[6] : 
                     (N0)? data_i[70] : 1'b0;
  assign data_o[5] = (N1)? data_i[5] : 
                     (N0)? data_i[69] : 1'b0;
  assign data_o[4] = (N1)? data_i[4] : 
                     (N0)? data_i[68] : 1'b0;
  assign data_o[3] = (N1)? data_i[3] : 
                     (N0)? data_i[67] : 1'b0;
  assign data_o[2] = (N1)? data_i[2] : 
                     (N0)? data_i[66] : 1'b0;
  assign data_o[1] = (N1)? data_i[1] : 
                     (N0)? data_i[65] : 1'b0;
  assign data_o[0] = (N1)? data_i[0] : 
                     (N0)? data_i[64] : 1'b0;
  assign yumi_o = { 1'b0, yumi_i } << tag_o[0];
  assign N1 = ~tag_o[0];

endmodule



module bsg_fifo_1r1w_large_width_p64_els_p4
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  v_o,
  data_o,
  yumi_i
);

  input [63:0] data_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [63:0] data_o;
  wire ready_o,v_o,N0,N1,N2,N3,big_deq,big_valid,big_full_lo,big_empty_lo,bypass_mode,
  can_spill,emergency,will_spill,N4,N5,N6,n_0_net__1_,n_0_net__0_,N7,N8,N9,N10,N11,
  N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,SYNOPSYS_UNCONNECTED_1;
  wire [1:0] valid_sipo,yumi_cnt_sipo,little_ready,little_ready_rot,valid_int,bypass_vector,
  little_valid,cnt,little_valid_rot,yumi_int;
  wire [127:0] data_sipo,big_data_lo,little_data,little_data_rot,data_int;
  reg big_deq_r;

  bsg_serial_in_parallel_out_width_p64_els_p3_out_els_p2
  sipo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .valid_i(v_i),
    .data_i(data_i),
    .ready_o(ready_o),
    .valid_o(valid_sipo),
    .data_o(data_sipo),
    .yumi_cnt_i(yumi_cnt_sipo)
  );


  bsg_fifo_1rw_large_width_p128_els_p2
  big1p
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_sipo),
    .v_i(big_valid),
    .enq_not_deq_i(will_spill),
    .full_o(big_full_lo),
    .empty_o(big_empty_lo),
    .data_o(big_data_lo)
  );


  bsg_thermometer_count_width_p2
  thermo
  (
    .i({ n_0_net__1_, n_0_net__0_ }),
    .o(cnt)
  );


  bsg_round_robin_2_to_2_width_p64
  rr222
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(little_data),
    .v_i(little_valid),
    .ready_o(little_ready),
    .data_o(little_data_rot),
    .v_o(little_valid_rot),
    .ready_i(little_ready_rot)
  );


  bsg_two_fifo_width_p64
  twofer_0__little
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(little_ready_rot[0]),
    .data_i(little_data_rot[63:0]),
    .v_i(little_valid_rot[0]),
    .v_o(valid_int[0]),
    .data_o(data_int[63:0]),
    .yumi_i(yumi_int[0])
  );


  bsg_two_fifo_width_p64
  twofer_1__little
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(little_ready_rot[1]),
    .data_i(little_data_rot[127:64]),
    .v_i(little_valid_rot[1]),
    .v_o(valid_int[1]),
    .data_o(data_int[127:64]),
    .yumi_i(yumi_int[1])
  );


  bsg_round_robin_n_to_1_width_p64_num_in_p2_strict_p1
  round_robin_n_to_1
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_int),
    .v_i(valid_int),
    .yumi_o(yumi_int),
    .v_o(v_o),
    .data_o(data_o),
    .tag_o(SYNOPSYS_UNCONNECTED_1),
    .yumi_i(yumi_i)
  );

  assign N6 = (N0)? N4 : 
              (N1)? N5 : 1'b0;
  assign N0 = big_deq_r;
  assign N1 = N9;
  assign little_data = (N0)? big_data_lo : 
                       (N1)? data_sipo : 1'b0;
  assign little_valid = (N0)? { 1'b1, 1'b1 } : 
                        (N1)? bypass_vector : 1'b0;
  assign yumi_cnt_sipo = (N2)? { 1'b1, 1'b0 } : 
                         (N3)? cnt : 1'b0;
  assign N2 = N8;
  assign N3 = N7;
  assign bypass_mode = N10 & big_empty_lo;
  assign N10 = N9 & little_ready[0];
  assign N9 = ~big_deq_r;
  assign can_spill = N11 & N12;
  assign N11 = ~big_full_lo;
  assign N12 = ~bypass_mode;
  assign emergency = N15 & N9;
  assign N15 = N13 & N14;
  assign N13 = little_ready_rot[1] & little_ready_rot[0];
  assign N14 = ~big_empty_lo;
  assign will_spill = N17 & N18;
  assign N17 = can_spill & N16;
  assign N16 = valid_sipo[1] & valid_sipo[0];
  assign N18 = ~emergency;
  assign N4 = ~N19;
  assign N19 = valid_int[1] | valid_int[0];
  assign N5 = little_ready_rot[1] & little_ready_rot[0];
  assign big_deq = N21 & N6;
  assign N21 = N20 & N14;
  assign N20 = ~will_spill;
  assign big_valid = will_spill | big_deq;
  assign bypass_vector[1] = valid_sipo[1] & bypass_mode;
  assign bypass_vector[0] = valid_sipo[0] & bypass_mode;
  assign n_0_net__1_ = little_ready[1] & bypass_vector[1];
  assign n_0_net__0_ = little_ready[0] & bypass_vector[0];
  assign N7 = ~will_spill;
  assign N8 = will_spill;

  always @(posedge clk_i) begin
    if(1'b1) begin
      big_deq_r <= big_deq;
    end 
  end


endmodule



module bsg_circular_ptr_slots_p4_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [1:0] o;
  output [1:0] n_o;
  input clk;
  input reset_i;
  wire [1:0] n_o,genblk1_genblk1_ptr_r_p1;
  wire N0,N1,N2,N3,N4,N5,N6,N7;
  reg [1:0] o;
  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign { N6, N5 } = (N0)? { 1'b0, 1'b0 } : 
                      (N1)? n_o : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign n_o = (N2)? genblk1_genblk1_ptr_r_p1 : 
               (N3)? o : 1'b0;
  assign N2 = add_i[0];
  assign N3 = N7;
  assign N4 = ~reset_i;
  assign N7 = ~add_i[0];

  always @(posedge clk) begin
    if(1'b1) begin
      { o[1:0] } <= { N6, N5 };
    end 
  end


endmodule



module bsg_fifo_tracker_els_p4
(
  clk_i,
  reset_i,
  enq_i,
  deq_i,
  wptr_r_o,
  rptr_r_o,
  rptr_n_o,
  full_o,
  empty_o
);

  output [1:0] wptr_r_o;
  output [1:0] rptr_r_o;
  output [1:0] rptr_n_o;
  input clk_i;
  input reset_i;
  input enq_i;
  input deq_i;
  output full_o;
  output empty_o;
  wire [1:0] wptr_r_o,rptr_r_o,rptr_n_o;
  wire full_o,empty_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,equal_ptrs,SYNOPSYS_UNCONNECTED_1,
  SYNOPSYS_UNCONNECTED_2;
  reg deq_r,enq_r;

  bsg_circular_ptr_slots_p4_max_add_p1
  rptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(deq_i),
    .o(rptr_r_o),
    .n_o(rptr_n_o)
  );


  bsg_circular_ptr_slots_p4_max_add_p1
  wptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(enq_i),
    .o(wptr_r_o),
    .n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2 })
  );

  assign equal_ptrs = rptr_r_o == wptr_r_o;
  assign N5 = (N0)? 1'b1 : 
              (N9)? 1'b1 : 
              (N4)? 1'b0 : 1'b0;
  assign N0 = N2;
  assign N6 = (N0)? 1'b0 : 
              (N9)? enq_i : 1'b0;
  assign N7 = (N0)? 1'b1 : 
              (N9)? deq_i : 1'b0;
  assign N1 = enq_i | deq_i;
  assign N2 = reset_i;
  assign N3 = N1 | N2;
  assign N4 = ~N3;
  assign N8 = ~N2;
  assign N9 = N1 & N8;
  assign empty_o = equal_ptrs & deq_r;
  assign full_o = equal_ptrs & enq_r;

  always @(posedge clk_i) begin
    if(N5) begin
      deq_r <= N7;
      enq_r <= N6;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p2_els_p4_read_write_same_addr_p0_harden_p0
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

  input [1:0] w_addr_i;
  input [1:0] w_data_i;
  input [1:0] r_addr_i;
  output [1:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [1:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20;
  reg [7:0] mem;
  assign r_data_o[1] = (N8)? mem[1] : 
                       (N10)? mem[3] : 
                       (N9)? mem[5] : 
                       (N11)? mem[7] : 1'b0;
  assign r_data_o[0] = (N8)? mem[0] : 
                       (N10)? mem[2] : 
                       (N9)? mem[4] : 
                       (N11)? mem[6] : 1'b0;
  assign N16 = w_addr_i[0] & w_addr_i[1];
  assign N15 = N0 & w_addr_i[1];
  assign N0 = ~w_addr_i[0];
  assign N14 = w_addr_i[0] & N1;
  assign N1 = ~w_addr_i[1];
  assign N13 = N2 & N3;
  assign N2 = ~w_addr_i[0];
  assign N3 = ~w_addr_i[1];
  assign { N20, N19, N18, N17 } = (N4)? { N16, N15, N14, N13 } : 
                                  (N5)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N4 = w_v_i;
  assign N5 = N12;
  assign N6 = ~r_addr_i[0];
  assign N7 = ~r_addr_i[1];
  assign N8 = N6 & N7;
  assign N9 = N6 & r_addr_i[1];
  assign N10 = r_addr_i[0] & N7;
  assign N11 = r_addr_i[0] & r_addr_i[1];
  assign N12 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N20) begin
      { mem[7:6] } <= { w_data_i[1:0] };
    end 
    if(N19) begin
      { mem[5:4] } <= { w_data_i[1:0] };
    end 
    if(N18) begin
      { mem[3:2] } <= { w_data_i[1:0] };
    end 
    if(N17) begin
      { mem[1:0] } <= { w_data_i[1:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p2_els_p4_read_write_same_addr_p0
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

  input [1:0] w_addr_i;
  input [1:0] w_data_i;
  input [1:0] r_addr_i;
  output [1:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [1:0] r_data_o;

  bsg_mem_1r1w_synth_width_p2_els_p4_read_write_same_addr_p0_harden_p0
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



module bsg_fifo_1r1w_small_unhardened_width_p2_els_p4_ready_THEN_valid_p0
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  data_i,
  v_o,
  data_o,
  yumi_i
);

  input [1:0] data_i;
  output [1:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [1:0] data_o,wptr_r,rptr_r;
  wire ready_o,v_o,enque,full,empty,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2;

  bsg_fifo_tracker_els_p4
  ft
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .enq_i(enque),
    .deq_i(yumi_i),
    .wptr_r_o(wptr_r),
    .rptr_r_o(rptr_r),
    .rptr_n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2 }),
    .full_o(full),
    .empty_o(empty)
  );


  bsg_mem_1r1w_width_p2_els_p4_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enque),
    .w_addr_i(wptr_r),
    .w_data_i(data_i),
    .r_v_i(v_o),
    .r_addr_i(rptr_r),
    .r_data_o(data_o)
  );

  assign enque = v_i & ready_o;
  assign ready_o = ~full;
  assign v_o = ~empty;

endmodule



module bsg_fifo_1r1w_small_width_p2_els_p4
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  data_i,
  v_o,
  data_o,
  yumi_i
);

  input [1:0] data_i;
  output [1:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [1:0] data_o;
  wire ready_o,v_o;

  bsg_fifo_1r1w_small_unhardened_width_p2_els_p4_ready_THEN_valid_p0
  unhardened_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_i(data_i),
    .v_o(v_o),
    .data_o(data_o),
    .yumi_i(yumi_i)
  );


endmodule



module bsg_decode_num_out_p4
(
  i,
  o
);

  input [1:0] i;
  output [3:0] o;
  wire [3:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule



module bsg_decode_with_v_num_out_p4
(
  i,
  v_i,
  o
);

  input [1:0] i;
  output [3:0] o;
  input v_i;
  wire [3:0] o,lo;

  bsg_decode_num_out_p4
  bd
  (
    .i(i),
    .o(lo)
  );

  assign o[3] = v_i & lo[3];
  assign o[2] = v_i & lo[2];
  assign o[1] = v_i & lo[1];
  assign o[0] = v_i & lo[0];

endmodule



module bsg_counter_clear_up_max_val_p0_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [0:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8;
  reg [0:0] count_o;
  assign N6 = count_o[0] ^ up_i;
  assign N7 = (N0)? up_i : 
              (N1)? N6 : 1'b0;
  assign N0 = clear_i;
  assign N1 = N5;
  assign N8 = (N2)? 1'b0 : 
              (N3)? N7 : 1'b0;
  assign N2 = reset_i;
  assign N3 = N4;
  assign N4 = ~reset_i;
  assign N5 = ~clear_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_o[0:0] } <= { N8 };
    end 
  end


endmodule



module bsg_cache_to_dram_ctrl_rx_num_cache_p4_data_width_p64_block_size_in_words_p8_dram_ctrl_burst_len_p1
(
  clk_i,
  reset_i,
  v_i,
  tag_i,
  ready_o,
  dma_data_o,
  dma_data_v_o,
  dma_data_ready_i,
  app_rd_data_valid_i,
  app_rd_data_end_i,
  app_rd_data_i
);

  input [1:0] tag_i;
  output [255:0] dma_data_o;
  output [3:0] dma_data_v_o;
  input [3:0] dma_data_ready_i;
  input [63:0] app_rd_data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input app_rd_data_valid_i;
  input app_rd_data_end_i;
  output ready_o;
  wire [255:0] dma_data_o;
  wire [3:0] dma_data_v_o,cache_sel;
  wire ready_o,N0,N1,fifo_v_lo,fifo_yumi_li,tag_fifo_v_lo,tag_fifo_yumi_li,N2,N3,N4,N5,
  N6,N7,N8,counter_clear_li,counter_up_li,N9,N10;
  wire [1:0] tag_fifo_data_lo;
  wire [0:0] count_lo;
  assign dma_data_o[255] = dma_data_o[63];
  assign dma_data_o[191] = dma_data_o[63];
  assign dma_data_o[127] = dma_data_o[63];
  assign dma_data_o[254] = dma_data_o[62];
  assign dma_data_o[190] = dma_data_o[62];
  assign dma_data_o[126] = dma_data_o[62];
  assign dma_data_o[253] = dma_data_o[61];
  assign dma_data_o[189] = dma_data_o[61];
  assign dma_data_o[125] = dma_data_o[61];
  assign dma_data_o[252] = dma_data_o[60];
  assign dma_data_o[188] = dma_data_o[60];
  assign dma_data_o[124] = dma_data_o[60];
  assign dma_data_o[251] = dma_data_o[59];
  assign dma_data_o[187] = dma_data_o[59];
  assign dma_data_o[123] = dma_data_o[59];
  assign dma_data_o[250] = dma_data_o[58];
  assign dma_data_o[186] = dma_data_o[58];
  assign dma_data_o[122] = dma_data_o[58];
  assign dma_data_o[249] = dma_data_o[57];
  assign dma_data_o[185] = dma_data_o[57];
  assign dma_data_o[121] = dma_data_o[57];
  assign dma_data_o[248] = dma_data_o[56];
  assign dma_data_o[184] = dma_data_o[56];
  assign dma_data_o[120] = dma_data_o[56];
  assign dma_data_o[247] = dma_data_o[55];
  assign dma_data_o[183] = dma_data_o[55];
  assign dma_data_o[119] = dma_data_o[55];
  assign dma_data_o[246] = dma_data_o[54];
  assign dma_data_o[182] = dma_data_o[54];
  assign dma_data_o[118] = dma_data_o[54];
  assign dma_data_o[245] = dma_data_o[53];
  assign dma_data_o[181] = dma_data_o[53];
  assign dma_data_o[117] = dma_data_o[53];
  assign dma_data_o[244] = dma_data_o[52];
  assign dma_data_o[180] = dma_data_o[52];
  assign dma_data_o[116] = dma_data_o[52];
  assign dma_data_o[243] = dma_data_o[51];
  assign dma_data_o[179] = dma_data_o[51];
  assign dma_data_o[115] = dma_data_o[51];
  assign dma_data_o[242] = dma_data_o[50];
  assign dma_data_o[178] = dma_data_o[50];
  assign dma_data_o[114] = dma_data_o[50];
  assign dma_data_o[241] = dma_data_o[49];
  assign dma_data_o[177] = dma_data_o[49];
  assign dma_data_o[113] = dma_data_o[49];
  assign dma_data_o[240] = dma_data_o[48];
  assign dma_data_o[176] = dma_data_o[48];
  assign dma_data_o[112] = dma_data_o[48];
  assign dma_data_o[239] = dma_data_o[47];
  assign dma_data_o[175] = dma_data_o[47];
  assign dma_data_o[111] = dma_data_o[47];
  assign dma_data_o[238] = dma_data_o[46];
  assign dma_data_o[174] = dma_data_o[46];
  assign dma_data_o[110] = dma_data_o[46];
  assign dma_data_o[237] = dma_data_o[45];
  assign dma_data_o[173] = dma_data_o[45];
  assign dma_data_o[109] = dma_data_o[45];
  assign dma_data_o[236] = dma_data_o[44];
  assign dma_data_o[172] = dma_data_o[44];
  assign dma_data_o[108] = dma_data_o[44];
  assign dma_data_o[235] = dma_data_o[43];
  assign dma_data_o[171] = dma_data_o[43];
  assign dma_data_o[107] = dma_data_o[43];
  assign dma_data_o[234] = dma_data_o[42];
  assign dma_data_o[170] = dma_data_o[42];
  assign dma_data_o[106] = dma_data_o[42];
  assign dma_data_o[233] = dma_data_o[41];
  assign dma_data_o[169] = dma_data_o[41];
  assign dma_data_o[105] = dma_data_o[41];
  assign dma_data_o[232] = dma_data_o[40];
  assign dma_data_o[168] = dma_data_o[40];
  assign dma_data_o[104] = dma_data_o[40];
  assign dma_data_o[231] = dma_data_o[39];
  assign dma_data_o[167] = dma_data_o[39];
  assign dma_data_o[103] = dma_data_o[39];
  assign dma_data_o[230] = dma_data_o[38];
  assign dma_data_o[166] = dma_data_o[38];
  assign dma_data_o[102] = dma_data_o[38];
  assign dma_data_o[229] = dma_data_o[37];
  assign dma_data_o[165] = dma_data_o[37];
  assign dma_data_o[101] = dma_data_o[37];
  assign dma_data_o[228] = dma_data_o[36];
  assign dma_data_o[164] = dma_data_o[36];
  assign dma_data_o[100] = dma_data_o[36];
  assign dma_data_o[227] = dma_data_o[35];
  assign dma_data_o[163] = dma_data_o[35];
  assign dma_data_o[99] = dma_data_o[35];
  assign dma_data_o[226] = dma_data_o[34];
  assign dma_data_o[162] = dma_data_o[34];
  assign dma_data_o[98] = dma_data_o[34];
  assign dma_data_o[225] = dma_data_o[33];
  assign dma_data_o[161] = dma_data_o[33];
  assign dma_data_o[97] = dma_data_o[33];
  assign dma_data_o[224] = dma_data_o[32];
  assign dma_data_o[160] = dma_data_o[32];
  assign dma_data_o[96] = dma_data_o[32];
  assign dma_data_o[223] = dma_data_o[31];
  assign dma_data_o[159] = dma_data_o[31];
  assign dma_data_o[95] = dma_data_o[31];
  assign dma_data_o[222] = dma_data_o[30];
  assign dma_data_o[158] = dma_data_o[30];
  assign dma_data_o[94] = dma_data_o[30];
  assign dma_data_o[221] = dma_data_o[29];
  assign dma_data_o[157] = dma_data_o[29];
  assign dma_data_o[93] = dma_data_o[29];
  assign dma_data_o[220] = dma_data_o[28];
  assign dma_data_o[156] = dma_data_o[28];
  assign dma_data_o[92] = dma_data_o[28];
  assign dma_data_o[219] = dma_data_o[27];
  assign dma_data_o[155] = dma_data_o[27];
  assign dma_data_o[91] = dma_data_o[27];
  assign dma_data_o[218] = dma_data_o[26];
  assign dma_data_o[154] = dma_data_o[26];
  assign dma_data_o[90] = dma_data_o[26];
  assign dma_data_o[217] = dma_data_o[25];
  assign dma_data_o[153] = dma_data_o[25];
  assign dma_data_o[89] = dma_data_o[25];
  assign dma_data_o[216] = dma_data_o[24];
  assign dma_data_o[152] = dma_data_o[24];
  assign dma_data_o[88] = dma_data_o[24];
  assign dma_data_o[215] = dma_data_o[23];
  assign dma_data_o[151] = dma_data_o[23];
  assign dma_data_o[87] = dma_data_o[23];
  assign dma_data_o[214] = dma_data_o[22];
  assign dma_data_o[150] = dma_data_o[22];
  assign dma_data_o[86] = dma_data_o[22];
  assign dma_data_o[213] = dma_data_o[21];
  assign dma_data_o[149] = dma_data_o[21];
  assign dma_data_o[85] = dma_data_o[21];
  assign dma_data_o[212] = dma_data_o[20];
  assign dma_data_o[148] = dma_data_o[20];
  assign dma_data_o[84] = dma_data_o[20];
  assign dma_data_o[211] = dma_data_o[19];
  assign dma_data_o[147] = dma_data_o[19];
  assign dma_data_o[83] = dma_data_o[19];
  assign dma_data_o[210] = dma_data_o[18];
  assign dma_data_o[146] = dma_data_o[18];
  assign dma_data_o[82] = dma_data_o[18];
  assign dma_data_o[209] = dma_data_o[17];
  assign dma_data_o[145] = dma_data_o[17];
  assign dma_data_o[81] = dma_data_o[17];
  assign dma_data_o[208] = dma_data_o[16];
  assign dma_data_o[144] = dma_data_o[16];
  assign dma_data_o[80] = dma_data_o[16];
  assign dma_data_o[207] = dma_data_o[15];
  assign dma_data_o[143] = dma_data_o[15];
  assign dma_data_o[79] = dma_data_o[15];
  assign dma_data_o[206] = dma_data_o[14];
  assign dma_data_o[142] = dma_data_o[14];
  assign dma_data_o[78] = dma_data_o[14];
  assign dma_data_o[205] = dma_data_o[13];
  assign dma_data_o[141] = dma_data_o[13];
  assign dma_data_o[77] = dma_data_o[13];
  assign dma_data_o[204] = dma_data_o[12];
  assign dma_data_o[140] = dma_data_o[12];
  assign dma_data_o[76] = dma_data_o[12];
  assign dma_data_o[203] = dma_data_o[11];
  assign dma_data_o[139] = dma_data_o[11];
  assign dma_data_o[75] = dma_data_o[11];
  assign dma_data_o[202] = dma_data_o[10];
  assign dma_data_o[138] = dma_data_o[10];
  assign dma_data_o[74] = dma_data_o[10];
  assign dma_data_o[201] = dma_data_o[9];
  assign dma_data_o[137] = dma_data_o[9];
  assign dma_data_o[73] = dma_data_o[9];
  assign dma_data_o[200] = dma_data_o[8];
  assign dma_data_o[136] = dma_data_o[8];
  assign dma_data_o[72] = dma_data_o[8];
  assign dma_data_o[199] = dma_data_o[7];
  assign dma_data_o[135] = dma_data_o[7];
  assign dma_data_o[71] = dma_data_o[7];
  assign dma_data_o[198] = dma_data_o[6];
  assign dma_data_o[134] = dma_data_o[6];
  assign dma_data_o[70] = dma_data_o[6];
  assign dma_data_o[197] = dma_data_o[5];
  assign dma_data_o[133] = dma_data_o[5];
  assign dma_data_o[69] = dma_data_o[5];
  assign dma_data_o[196] = dma_data_o[4];
  assign dma_data_o[132] = dma_data_o[4];
  assign dma_data_o[68] = dma_data_o[4];
  assign dma_data_o[195] = dma_data_o[3];
  assign dma_data_o[131] = dma_data_o[3];
  assign dma_data_o[67] = dma_data_o[3];
  assign dma_data_o[194] = dma_data_o[2];
  assign dma_data_o[130] = dma_data_o[2];
  assign dma_data_o[66] = dma_data_o[2];
  assign dma_data_o[193] = dma_data_o[1];
  assign dma_data_o[129] = dma_data_o[1];
  assign dma_data_o[65] = dma_data_o[1];
  assign dma_data_o[192] = dma_data_o[0];
  assign dma_data_o[128] = dma_data_o[0];
  assign dma_data_o[64] = dma_data_o[0];

  bsg_fifo_1r1w_large_width_p64_els_p4
  fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(app_rd_data_i),
    .v_i(app_rd_data_valid_i),
    .v_o(fifo_v_lo),
    .data_o(dma_data_o[63:0]),
    .yumi_i(fifo_yumi_li)
  );


  bsg_fifo_1r1w_small_width_p2_els_p4
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_i(tag_i),
    .v_o(tag_fifo_v_lo),
    .data_o(tag_fifo_data_lo),
    .yumi_i(tag_fifo_yumi_li)
  );

  assign N8 = (N4)? dma_data_ready_i[0] : 
              (N6)? dma_data_ready_i[1] : 
              (N5)? dma_data_ready_i[2] : 
              (N7)? dma_data_ready_i[3] : 1'b0;

  bsg_decode_with_v_num_out_p4
  demux
  (
    .i(tag_fifo_data_lo),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel)
  );


  bsg_counter_clear_up_max_val_p0_init_val_p0
  counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(counter_clear_li),
    .up_i(counter_up_li),
    .count_o(count_lo[0])
  );

  assign N9 = ~count_lo[0];
  assign counter_clear_li = (N0)? fifo_yumi_li : 
                            (N1)? 1'b0 : 1'b0;
  assign N0 = N9;
  assign N1 = count_lo[0];
  assign counter_up_li = (N0)? 1'b0 : 
                         (N1)? fifo_yumi_li : 1'b0;
  assign tag_fifo_yumi_li = (N0)? fifo_yumi_li : 
                            (N1)? 1'b0 : 1'b0;
  assign N2 = ~tag_fifo_data_lo[0];
  assign N3 = ~tag_fifo_data_lo[1];
  assign N4 = N2 & N3;
  assign N5 = N2 & tag_fifo_data_lo[1];
  assign N6 = tag_fifo_data_lo[0] & N3;
  assign N7 = tag_fifo_data_lo[0] & tag_fifo_data_lo[1];
  assign fifo_yumi_li = N10 & N8;
  assign N10 = fifo_v_lo & tag_fifo_v_lo;
  assign dma_data_v_o[0] = cache_sel[0] & fifo_v_lo;
  assign dma_data_v_o[1] = cache_sel[1] & fifo_v_lo;
  assign dma_data_v_o[2] = cache_sel[2] & fifo_v_lo;
  assign dma_data_v_o[3] = cache_sel[3] & fifo_v_lo;

endmodule



module bsg_circular_ptr_slots_p32_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [4:0] o;
  output [4:0] n_o;
  input clk;
  input reset_i;
  wire [4:0] n_o,genblk1_genblk1_ptr_r_p1;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10;
  reg [4:0] o;
  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign { N9, N8, N7, N6, N5 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                  (N1)? n_o : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign n_o = (N2)? genblk1_genblk1_ptr_r_p1 : 
               (N3)? o : 1'b0;
  assign N2 = add_i[0];
  assign N3 = N10;
  assign N4 = ~reset_i;
  assign N10 = ~add_i[0];

  always @(posedge clk) begin
    if(1'b1) begin
      { o[4:0] } <= { N9, N8, N7, N6, N5 };
    end 
  end


endmodule



module bsg_fifo_tracker_els_p32
(
  clk_i,
  reset_i,
  enq_i,
  deq_i,
  wptr_r_o,
  rptr_r_o,
  rptr_n_o,
  full_o,
  empty_o
);

  output [4:0] wptr_r_o;
  output [4:0] rptr_r_o;
  output [4:0] rptr_n_o;
  input clk_i;
  input reset_i;
  input enq_i;
  input deq_i;
  output full_o;
  output empty_o;
  wire [4:0] wptr_r_o,rptr_r_o,rptr_n_o;
  wire full_o,empty_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,equal_ptrs,SYNOPSYS_UNCONNECTED_1,
  SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,SYNOPSYS_UNCONNECTED_4,
  SYNOPSYS_UNCONNECTED_5;
  reg deq_r,enq_r;

  bsg_circular_ptr_slots_p32_max_add_p1
  rptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(deq_i),
    .o(rptr_r_o),
    .n_o(rptr_n_o)
  );


  bsg_circular_ptr_slots_p32_max_add_p1
  wptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(enq_i),
    .o(wptr_r_o),
    .n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5 })
  );

  assign equal_ptrs = rptr_r_o == wptr_r_o;
  assign N5 = (N0)? 1'b1 : 
              (N9)? 1'b1 : 
              (N4)? 1'b0 : 1'b0;
  assign N0 = N2;
  assign N6 = (N0)? 1'b0 : 
              (N9)? enq_i : 1'b0;
  assign N7 = (N0)? 1'b1 : 
              (N9)? deq_i : 1'b0;
  assign N1 = enq_i | deq_i;
  assign N2 = reset_i;
  assign N3 = N1 | N2;
  assign N4 = ~N3;
  assign N8 = ~N2;
  assign N9 = N1 & N8;
  assign empty_o = equal_ptrs & deq_r;
  assign full_o = equal_ptrs & enq_r;

  always @(posedge clk_i) begin
    if(N5) begin
      deq_r <= N7;
      enq_r <= N6;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p2_els_p32_read_write_same_addr_p0_harden_p0
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

  input [4:0] w_addr_i;
  input [1:0] w_data_i;
  input [4:0] r_addr_i;
  output [1:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [1:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,
  N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,
  N150,N151,N152,N153,N154,N155,N156;
  reg [63:0] mem;
  assign r_data_o[1] = (N43)? mem[1] : 
                       (N45)? mem[3] : 
                       (N47)? mem[5] : 
                       (N49)? mem[7] : 
                       (N51)? mem[9] : 
                       (N53)? mem[11] : 
                       (N55)? mem[13] : 
                       (N57)? mem[15] : 
                       (N59)? mem[17] : 
                       (N61)? mem[19] : 
                       (N63)? mem[21] : 
                       (N65)? mem[23] : 
                       (N67)? mem[25] : 
                       (N69)? mem[27] : 
                       (N71)? mem[29] : 
                       (N73)? mem[31] : 
                       (N44)? mem[33] : 
                       (N46)? mem[35] : 
                       (N48)? mem[37] : 
                       (N50)? mem[39] : 
                       (N52)? mem[41] : 
                       (N54)? mem[43] : 
                       (N56)? mem[45] : 
                       (N58)? mem[47] : 
                       (N60)? mem[49] : 
                       (N62)? mem[51] : 
                       (N64)? mem[53] : 
                       (N66)? mem[55] : 
                       (N68)? mem[57] : 
                       (N70)? mem[59] : 
                       (N72)? mem[61] : 
                       (N74)? mem[63] : 1'b0;
  assign r_data_o[0] = (N43)? mem[0] : 
                       (N45)? mem[2] : 
                       (N47)? mem[4] : 
                       (N49)? mem[6] : 
                       (N51)? mem[8] : 
                       (N53)? mem[10] : 
                       (N55)? mem[12] : 
                       (N57)? mem[14] : 
                       (N59)? mem[16] : 
                       (N61)? mem[18] : 
                       (N63)? mem[20] : 
                       (N65)? mem[22] : 
                       (N67)? mem[24] : 
                       (N69)? mem[26] : 
                       (N71)? mem[28] : 
                       (N73)? mem[30] : 
                       (N44)? mem[32] : 
                       (N46)? mem[34] : 
                       (N48)? mem[36] : 
                       (N50)? mem[38] : 
                       (N52)? mem[40] : 
                       (N54)? mem[42] : 
                       (N56)? mem[44] : 
                       (N58)? mem[46] : 
                       (N60)? mem[48] : 
                       (N62)? mem[50] : 
                       (N64)? mem[52] : 
                       (N66)? mem[54] : 
                       (N68)? mem[56] : 
                       (N70)? mem[58] : 
                       (N72)? mem[60] : 
                       (N74)? mem[62] : 1'b0;
  assign N140 = w_addr_i[3] & w_addr_i[4];
  assign N141 = N0 & w_addr_i[4];
  assign N0 = ~w_addr_i[3];
  assign N142 = w_addr_i[3] & N1;
  assign N1 = ~w_addr_i[4];
  assign N143 = N2 & N3;
  assign N2 = ~w_addr_i[3];
  assign N3 = ~w_addr_i[4];
  assign N144 = ~w_addr_i[2];
  assign N145 = w_addr_i[0] & w_addr_i[1];
  assign N146 = N4 & w_addr_i[1];
  assign N4 = ~w_addr_i[0];
  assign N147 = w_addr_i[0] & N5;
  assign N5 = ~w_addr_i[1];
  assign N148 = N6 & N7;
  assign N6 = ~w_addr_i[0];
  assign N7 = ~w_addr_i[1];
  assign N149 = w_addr_i[2] & N145;
  assign N150 = w_addr_i[2] & N146;
  assign N151 = w_addr_i[2] & N147;
  assign N152 = w_addr_i[2] & N148;
  assign N153 = N144 & N145;
  assign N154 = N144 & N146;
  assign N155 = N144 & N147;
  assign N156 = N144 & N148;
  assign N107 = N140 & N149;
  assign N106 = N140 & N150;
  assign N105 = N140 & N151;
  assign N104 = N140 & N152;
  assign N103 = N140 & N153;
  assign N102 = N140 & N154;
  assign N101 = N140 & N155;
  assign N100 = N140 & N156;
  assign N99 = N141 & N149;
  assign N98 = N141 & N150;
  assign N97 = N141 & N151;
  assign N96 = N141 & N152;
  assign N95 = N141 & N153;
  assign N94 = N141 & N154;
  assign N93 = N141 & N155;
  assign N92 = N141 & N156;
  assign N91 = N142 & N149;
  assign N90 = N142 & N150;
  assign N89 = N142 & N151;
  assign N88 = N142 & N152;
  assign N87 = N142 & N153;
  assign N86 = N142 & N154;
  assign N85 = N142 & N155;
  assign N84 = N142 & N156;
  assign N83 = N143 & N149;
  assign N82 = N143 & N150;
  assign N81 = N143 & N151;
  assign N80 = N143 & N152;
  assign N79 = N143 & N153;
  assign N78 = N143 & N154;
  assign N77 = N143 & N155;
  assign N76 = N143 & N156;
  assign { N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108 } = (N8)? { N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76 } : 
                                                                                                                                                                                                              (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N8 = w_v_i;
  assign N9 = N75;
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
  assign N25 = ~r_addr_i[3];
  assign N26 = N17 & N25;
  assign N27 = N17 & r_addr_i[3];
  assign N28 = N19 & N25;
  assign N29 = N19 & r_addr_i[3];
  assign N30 = N21 & N25;
  assign N31 = N21 & r_addr_i[3];
  assign N32 = N23 & N25;
  assign N33 = N23 & r_addr_i[3];
  assign N34 = N18 & N25;
  assign N35 = N18 & r_addr_i[3];
  assign N36 = N20 & N25;
  assign N37 = N20 & r_addr_i[3];
  assign N38 = N22 & N25;
  assign N39 = N22 & r_addr_i[3];
  assign N40 = N24 & N25;
  assign N41 = N24 & r_addr_i[3];
  assign N42 = ~r_addr_i[4];
  assign N43 = N26 & N42;
  assign N44 = N26 & r_addr_i[4];
  assign N45 = N28 & N42;
  assign N46 = N28 & r_addr_i[4];
  assign N47 = N30 & N42;
  assign N48 = N30 & r_addr_i[4];
  assign N49 = N32 & N42;
  assign N50 = N32 & r_addr_i[4];
  assign N51 = N34 & N42;
  assign N52 = N34 & r_addr_i[4];
  assign N53 = N36 & N42;
  assign N54 = N36 & r_addr_i[4];
  assign N55 = N38 & N42;
  assign N56 = N38 & r_addr_i[4];
  assign N57 = N40 & N42;
  assign N58 = N40 & r_addr_i[4];
  assign N59 = N27 & N42;
  assign N60 = N27 & r_addr_i[4];
  assign N61 = N29 & N42;
  assign N62 = N29 & r_addr_i[4];
  assign N63 = N31 & N42;
  assign N64 = N31 & r_addr_i[4];
  assign N65 = N33 & N42;
  assign N66 = N33 & r_addr_i[4];
  assign N67 = N35 & N42;
  assign N68 = N35 & r_addr_i[4];
  assign N69 = N37 & N42;
  assign N70 = N37 & r_addr_i[4];
  assign N71 = N39 & N42;
  assign N72 = N39 & r_addr_i[4];
  assign N73 = N41 & N42;
  assign N74 = N41 & r_addr_i[4];
  assign N75 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N139) begin
      { mem[63:62] } <= { w_data_i[1:0] };
    end 
    if(N138) begin
      { mem[61:60] } <= { w_data_i[1:0] };
    end 
    if(N137) begin
      { mem[59:58] } <= { w_data_i[1:0] };
    end 
    if(N136) begin
      { mem[57:56] } <= { w_data_i[1:0] };
    end 
    if(N135) begin
      { mem[55:54] } <= { w_data_i[1:0] };
    end 
    if(N134) begin
      { mem[53:52] } <= { w_data_i[1:0] };
    end 
    if(N133) begin
      { mem[51:50] } <= { w_data_i[1:0] };
    end 
    if(N132) begin
      { mem[49:48] } <= { w_data_i[1:0] };
    end 
    if(N131) begin
      { mem[47:46] } <= { w_data_i[1:0] };
    end 
    if(N130) begin
      { mem[45:44] } <= { w_data_i[1:0] };
    end 
    if(N129) begin
      { mem[43:42] } <= { w_data_i[1:0] };
    end 
    if(N128) begin
      { mem[41:40] } <= { w_data_i[1:0] };
    end 
    if(N127) begin
      { mem[39:38] } <= { w_data_i[1:0] };
    end 
    if(N126) begin
      { mem[37:36] } <= { w_data_i[1:0] };
    end 
    if(N125) begin
      { mem[35:34] } <= { w_data_i[1:0] };
    end 
    if(N124) begin
      { mem[33:32] } <= { w_data_i[1:0] };
    end 
    if(N123) begin
      { mem[31:30] } <= { w_data_i[1:0] };
    end 
    if(N122) begin
      { mem[29:28] } <= { w_data_i[1:0] };
    end 
    if(N121) begin
      { mem[27:26] } <= { w_data_i[1:0] };
    end 
    if(N120) begin
      { mem[25:24] } <= { w_data_i[1:0] };
    end 
    if(N119) begin
      { mem[23:22] } <= { w_data_i[1:0] };
    end 
    if(N118) begin
      { mem[21:20] } <= { w_data_i[1:0] };
    end 
    if(N117) begin
      { mem[19:18] } <= { w_data_i[1:0] };
    end 
    if(N116) begin
      { mem[17:16] } <= { w_data_i[1:0] };
    end 
    if(N115) begin
      { mem[15:14] } <= { w_data_i[1:0] };
    end 
    if(N114) begin
      { mem[13:12] } <= { w_data_i[1:0] };
    end 
    if(N113) begin
      { mem[11:10] } <= { w_data_i[1:0] };
    end 
    if(N112) begin
      { mem[9:8] } <= { w_data_i[1:0] };
    end 
    if(N111) begin
      { mem[7:6] } <= { w_data_i[1:0] };
    end 
    if(N110) begin
      { mem[5:4] } <= { w_data_i[1:0] };
    end 
    if(N109) begin
      { mem[3:2] } <= { w_data_i[1:0] };
    end 
    if(N108) begin
      { mem[1:0] } <= { w_data_i[1:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p2_els_p32_read_write_same_addr_p0
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

  input [4:0] w_addr_i;
  input [1:0] w_data_i;
  input [4:0] r_addr_i;
  output [1:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [1:0] r_data_o;

  bsg_mem_1r1w_synth_width_p2_els_p32_read_write_same_addr_p0_harden_p0
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



module bsg_fifo_1r1w_small_unhardened_width_p2_els_p32_ready_THEN_valid_p0
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  data_i,
  v_o,
  data_o,
  yumi_i
);

  input [1:0] data_i;
  output [1:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [1:0] data_o;
  wire ready_o,v_o,enque,full,empty,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,
  SYNOPSYS_UNCONNECTED_3,SYNOPSYS_UNCONNECTED_4,SYNOPSYS_UNCONNECTED_5;
  wire [4:0] wptr_r,rptr_r;

  bsg_fifo_tracker_els_p32
  ft
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .enq_i(enque),
    .deq_i(yumi_i),
    .wptr_r_o(wptr_r),
    .rptr_r_o(rptr_r),
    .rptr_n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5 }),
    .full_o(full),
    .empty_o(empty)
  );


  bsg_mem_1r1w_width_p2_els_p32_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enque),
    .w_addr_i(wptr_r),
    .w_data_i(data_i),
    .r_v_i(v_o),
    .r_addr_i(rptr_r),
    .r_data_o(data_o)
  );

  assign enque = v_i & ready_o;
  assign ready_o = ~full;
  assign v_o = ~empty;

endmodule



module bsg_fifo_1r1w_small_width_p2_els_p32
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  data_i,
  v_o,
  data_o,
  yumi_i
);

  input [1:0] data_i;
  output [1:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [1:0] data_o;
  wire ready_o,v_o;

  bsg_fifo_1r1w_small_unhardened_width_p2_els_p32_ready_THEN_valid_p0
  unhardened_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_i(data_i),
    .v_o(v_o),
    .data_o(data_o),
    .yumi_i(yumi_i)
  );


endmodule



module bsg_cache_to_dram_ctrl_tx_num_cache_p4_data_width_p64_block_size_in_words_p8_dram_ctrl_burst_len_p1
(
  clk_i,
  reset_i,
  v_i,
  tag_i,
  ready_o,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  app_wdf_wren_o,
  app_wdf_data_o,
  app_wdf_mask_o,
  app_wdf_end_o,
  app_wdf_rdy_i
);

  input [1:0] tag_i;
  input [255:0] dma_data_i;
  input [3:0] dma_data_v_i;
  output [3:0] dma_data_yumi_o;
  output [63:0] app_wdf_data_o;
  output [7:0] app_wdf_mask_o;
  input clk_i;
  input reset_i;
  input v_i;
  input app_wdf_rdy_i;
  output ready_o;
  output app_wdf_wren_o;
  output app_wdf_end_o;
  wire [3:0] dma_data_yumi_o,cache_sel;
  wire [63:0] app_wdf_data_o;
  wire [7:0] app_wdf_mask_o;
  wire ready_o,app_wdf_wren_o,app_wdf_end_o,N0,N1,tag_fifo_v_lo,tag_fifo_yumi_li,N2,N3,
  N4,N5,N6,N7,N8,clear_li,up_li,take_word,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,
  N19;
  wire [1:0] tag_fifo_data_lo;
  wire [0:0] count_lo;
  assign app_wdf_mask_o[0] = 1'b0;
  assign app_wdf_mask_o[1] = 1'b0;
  assign app_wdf_mask_o[2] = 1'b0;
  assign app_wdf_mask_o[3] = 1'b0;
  assign app_wdf_mask_o[4] = 1'b0;
  assign app_wdf_mask_o[5] = 1'b0;
  assign app_wdf_mask_o[6] = 1'b0;
  assign app_wdf_mask_o[7] = 1'b0;

  bsg_fifo_1r1w_small_width_p2_els_p32
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_i(tag_i),
    .v_o(tag_fifo_v_lo),
    .data_o(tag_fifo_data_lo),
    .yumi_i(tag_fifo_yumi_li)
  );


  bsg_decode_with_v_num_out_p4
  demux
  (
    .i(tag_fifo_data_lo),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel)
  );

  assign N8 = (N4)? dma_data_v_i[0] : 
              (N6)? dma_data_v_i[1] : 
              (N5)? dma_data_v_i[2] : 
              (N7)? dma_data_v_i[3] : 1'b0;

  bsg_counter_clear_up_max_val_p0_init_val_p0
  word_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_li),
    .up_i(up_li),
    .count_o(count_lo[0])
  );

  assign app_wdf_data_o[63] = (N11)? dma_data_i[63] : 
                              (N13)? dma_data_i[127] : 
                              (N12)? dma_data_i[191] : 
                              (N14)? dma_data_i[255] : 1'b0;
  assign app_wdf_data_o[62] = (N11)? dma_data_i[62] : 
                              (N13)? dma_data_i[126] : 
                              (N12)? dma_data_i[190] : 
                              (N14)? dma_data_i[254] : 1'b0;
  assign app_wdf_data_o[61] = (N11)? dma_data_i[61] : 
                              (N13)? dma_data_i[125] : 
                              (N12)? dma_data_i[189] : 
                              (N14)? dma_data_i[253] : 1'b0;
  assign app_wdf_data_o[60] = (N11)? dma_data_i[60] : 
                              (N13)? dma_data_i[124] : 
                              (N12)? dma_data_i[188] : 
                              (N14)? dma_data_i[252] : 1'b0;
  assign app_wdf_data_o[59] = (N11)? dma_data_i[59] : 
                              (N13)? dma_data_i[123] : 
                              (N12)? dma_data_i[187] : 
                              (N14)? dma_data_i[251] : 1'b0;
  assign app_wdf_data_o[58] = (N11)? dma_data_i[58] : 
                              (N13)? dma_data_i[122] : 
                              (N12)? dma_data_i[186] : 
                              (N14)? dma_data_i[250] : 1'b0;
  assign app_wdf_data_o[57] = (N11)? dma_data_i[57] : 
                              (N13)? dma_data_i[121] : 
                              (N12)? dma_data_i[185] : 
                              (N14)? dma_data_i[249] : 1'b0;
  assign app_wdf_data_o[56] = (N11)? dma_data_i[56] : 
                              (N13)? dma_data_i[120] : 
                              (N12)? dma_data_i[184] : 
                              (N14)? dma_data_i[248] : 1'b0;
  assign app_wdf_data_o[55] = (N11)? dma_data_i[55] : 
                              (N13)? dma_data_i[119] : 
                              (N12)? dma_data_i[183] : 
                              (N14)? dma_data_i[247] : 1'b0;
  assign app_wdf_data_o[54] = (N11)? dma_data_i[54] : 
                              (N13)? dma_data_i[118] : 
                              (N12)? dma_data_i[182] : 
                              (N14)? dma_data_i[246] : 1'b0;
  assign app_wdf_data_o[53] = (N11)? dma_data_i[53] : 
                              (N13)? dma_data_i[117] : 
                              (N12)? dma_data_i[181] : 
                              (N14)? dma_data_i[245] : 1'b0;
  assign app_wdf_data_o[52] = (N11)? dma_data_i[52] : 
                              (N13)? dma_data_i[116] : 
                              (N12)? dma_data_i[180] : 
                              (N14)? dma_data_i[244] : 1'b0;
  assign app_wdf_data_o[51] = (N11)? dma_data_i[51] : 
                              (N13)? dma_data_i[115] : 
                              (N12)? dma_data_i[179] : 
                              (N14)? dma_data_i[243] : 1'b0;
  assign app_wdf_data_o[50] = (N11)? dma_data_i[50] : 
                              (N13)? dma_data_i[114] : 
                              (N12)? dma_data_i[178] : 
                              (N14)? dma_data_i[242] : 1'b0;
  assign app_wdf_data_o[49] = (N11)? dma_data_i[49] : 
                              (N13)? dma_data_i[113] : 
                              (N12)? dma_data_i[177] : 
                              (N14)? dma_data_i[241] : 1'b0;
  assign app_wdf_data_o[48] = (N11)? dma_data_i[48] : 
                              (N13)? dma_data_i[112] : 
                              (N12)? dma_data_i[176] : 
                              (N14)? dma_data_i[240] : 1'b0;
  assign app_wdf_data_o[47] = (N11)? dma_data_i[47] : 
                              (N13)? dma_data_i[111] : 
                              (N12)? dma_data_i[175] : 
                              (N14)? dma_data_i[239] : 1'b0;
  assign app_wdf_data_o[46] = (N11)? dma_data_i[46] : 
                              (N13)? dma_data_i[110] : 
                              (N12)? dma_data_i[174] : 
                              (N14)? dma_data_i[238] : 1'b0;
  assign app_wdf_data_o[45] = (N11)? dma_data_i[45] : 
                              (N13)? dma_data_i[109] : 
                              (N12)? dma_data_i[173] : 
                              (N14)? dma_data_i[237] : 1'b0;
  assign app_wdf_data_o[44] = (N11)? dma_data_i[44] : 
                              (N13)? dma_data_i[108] : 
                              (N12)? dma_data_i[172] : 
                              (N14)? dma_data_i[236] : 1'b0;
  assign app_wdf_data_o[43] = (N11)? dma_data_i[43] : 
                              (N13)? dma_data_i[107] : 
                              (N12)? dma_data_i[171] : 
                              (N14)? dma_data_i[235] : 1'b0;
  assign app_wdf_data_o[42] = (N11)? dma_data_i[42] : 
                              (N13)? dma_data_i[106] : 
                              (N12)? dma_data_i[170] : 
                              (N14)? dma_data_i[234] : 1'b0;
  assign app_wdf_data_o[41] = (N11)? dma_data_i[41] : 
                              (N13)? dma_data_i[105] : 
                              (N12)? dma_data_i[169] : 
                              (N14)? dma_data_i[233] : 1'b0;
  assign app_wdf_data_o[40] = (N11)? dma_data_i[40] : 
                              (N13)? dma_data_i[104] : 
                              (N12)? dma_data_i[168] : 
                              (N14)? dma_data_i[232] : 1'b0;
  assign app_wdf_data_o[39] = (N11)? dma_data_i[39] : 
                              (N13)? dma_data_i[103] : 
                              (N12)? dma_data_i[167] : 
                              (N14)? dma_data_i[231] : 1'b0;
  assign app_wdf_data_o[38] = (N11)? dma_data_i[38] : 
                              (N13)? dma_data_i[102] : 
                              (N12)? dma_data_i[166] : 
                              (N14)? dma_data_i[230] : 1'b0;
  assign app_wdf_data_o[37] = (N11)? dma_data_i[37] : 
                              (N13)? dma_data_i[101] : 
                              (N12)? dma_data_i[165] : 
                              (N14)? dma_data_i[229] : 1'b0;
  assign app_wdf_data_o[36] = (N11)? dma_data_i[36] : 
                              (N13)? dma_data_i[100] : 
                              (N12)? dma_data_i[164] : 
                              (N14)? dma_data_i[228] : 1'b0;
  assign app_wdf_data_o[35] = (N11)? dma_data_i[35] : 
                              (N13)? dma_data_i[99] : 
                              (N12)? dma_data_i[163] : 
                              (N14)? dma_data_i[227] : 1'b0;
  assign app_wdf_data_o[34] = (N11)? dma_data_i[34] : 
                              (N13)? dma_data_i[98] : 
                              (N12)? dma_data_i[162] : 
                              (N14)? dma_data_i[226] : 1'b0;
  assign app_wdf_data_o[33] = (N11)? dma_data_i[33] : 
                              (N13)? dma_data_i[97] : 
                              (N12)? dma_data_i[161] : 
                              (N14)? dma_data_i[225] : 1'b0;
  assign app_wdf_data_o[32] = (N11)? dma_data_i[32] : 
                              (N13)? dma_data_i[96] : 
                              (N12)? dma_data_i[160] : 
                              (N14)? dma_data_i[224] : 1'b0;
  assign app_wdf_data_o[31] = (N11)? dma_data_i[31] : 
                              (N13)? dma_data_i[95] : 
                              (N12)? dma_data_i[159] : 
                              (N14)? dma_data_i[223] : 1'b0;
  assign app_wdf_data_o[30] = (N11)? dma_data_i[30] : 
                              (N13)? dma_data_i[94] : 
                              (N12)? dma_data_i[158] : 
                              (N14)? dma_data_i[222] : 1'b0;
  assign app_wdf_data_o[29] = (N11)? dma_data_i[29] : 
                              (N13)? dma_data_i[93] : 
                              (N12)? dma_data_i[157] : 
                              (N14)? dma_data_i[221] : 1'b0;
  assign app_wdf_data_o[28] = (N11)? dma_data_i[28] : 
                              (N13)? dma_data_i[92] : 
                              (N12)? dma_data_i[156] : 
                              (N14)? dma_data_i[220] : 1'b0;
  assign app_wdf_data_o[27] = (N11)? dma_data_i[27] : 
                              (N13)? dma_data_i[91] : 
                              (N12)? dma_data_i[155] : 
                              (N14)? dma_data_i[219] : 1'b0;
  assign app_wdf_data_o[26] = (N11)? dma_data_i[26] : 
                              (N13)? dma_data_i[90] : 
                              (N12)? dma_data_i[154] : 
                              (N14)? dma_data_i[218] : 1'b0;
  assign app_wdf_data_o[25] = (N11)? dma_data_i[25] : 
                              (N13)? dma_data_i[89] : 
                              (N12)? dma_data_i[153] : 
                              (N14)? dma_data_i[217] : 1'b0;
  assign app_wdf_data_o[24] = (N11)? dma_data_i[24] : 
                              (N13)? dma_data_i[88] : 
                              (N12)? dma_data_i[152] : 
                              (N14)? dma_data_i[216] : 1'b0;
  assign app_wdf_data_o[23] = (N11)? dma_data_i[23] : 
                              (N13)? dma_data_i[87] : 
                              (N12)? dma_data_i[151] : 
                              (N14)? dma_data_i[215] : 1'b0;
  assign app_wdf_data_o[22] = (N11)? dma_data_i[22] : 
                              (N13)? dma_data_i[86] : 
                              (N12)? dma_data_i[150] : 
                              (N14)? dma_data_i[214] : 1'b0;
  assign app_wdf_data_o[21] = (N11)? dma_data_i[21] : 
                              (N13)? dma_data_i[85] : 
                              (N12)? dma_data_i[149] : 
                              (N14)? dma_data_i[213] : 1'b0;
  assign app_wdf_data_o[20] = (N11)? dma_data_i[20] : 
                              (N13)? dma_data_i[84] : 
                              (N12)? dma_data_i[148] : 
                              (N14)? dma_data_i[212] : 1'b0;
  assign app_wdf_data_o[19] = (N11)? dma_data_i[19] : 
                              (N13)? dma_data_i[83] : 
                              (N12)? dma_data_i[147] : 
                              (N14)? dma_data_i[211] : 1'b0;
  assign app_wdf_data_o[18] = (N11)? dma_data_i[18] : 
                              (N13)? dma_data_i[82] : 
                              (N12)? dma_data_i[146] : 
                              (N14)? dma_data_i[210] : 1'b0;
  assign app_wdf_data_o[17] = (N11)? dma_data_i[17] : 
                              (N13)? dma_data_i[81] : 
                              (N12)? dma_data_i[145] : 
                              (N14)? dma_data_i[209] : 1'b0;
  assign app_wdf_data_o[16] = (N11)? dma_data_i[16] : 
                              (N13)? dma_data_i[80] : 
                              (N12)? dma_data_i[144] : 
                              (N14)? dma_data_i[208] : 1'b0;
  assign app_wdf_data_o[15] = (N11)? dma_data_i[15] : 
                              (N13)? dma_data_i[79] : 
                              (N12)? dma_data_i[143] : 
                              (N14)? dma_data_i[207] : 1'b0;
  assign app_wdf_data_o[14] = (N11)? dma_data_i[14] : 
                              (N13)? dma_data_i[78] : 
                              (N12)? dma_data_i[142] : 
                              (N14)? dma_data_i[206] : 1'b0;
  assign app_wdf_data_o[13] = (N11)? dma_data_i[13] : 
                              (N13)? dma_data_i[77] : 
                              (N12)? dma_data_i[141] : 
                              (N14)? dma_data_i[205] : 1'b0;
  assign app_wdf_data_o[12] = (N11)? dma_data_i[12] : 
                              (N13)? dma_data_i[76] : 
                              (N12)? dma_data_i[140] : 
                              (N14)? dma_data_i[204] : 1'b0;
  assign app_wdf_data_o[11] = (N11)? dma_data_i[11] : 
                              (N13)? dma_data_i[75] : 
                              (N12)? dma_data_i[139] : 
                              (N14)? dma_data_i[203] : 1'b0;
  assign app_wdf_data_o[10] = (N11)? dma_data_i[10] : 
                              (N13)? dma_data_i[74] : 
                              (N12)? dma_data_i[138] : 
                              (N14)? dma_data_i[202] : 1'b0;
  assign app_wdf_data_o[9] = (N11)? dma_data_i[9] : 
                             (N13)? dma_data_i[73] : 
                             (N12)? dma_data_i[137] : 
                             (N14)? dma_data_i[201] : 1'b0;
  assign app_wdf_data_o[8] = (N11)? dma_data_i[8] : 
                             (N13)? dma_data_i[72] : 
                             (N12)? dma_data_i[136] : 
                             (N14)? dma_data_i[200] : 1'b0;
  assign app_wdf_data_o[7] = (N11)? dma_data_i[7] : 
                             (N13)? dma_data_i[71] : 
                             (N12)? dma_data_i[135] : 
                             (N14)? dma_data_i[199] : 1'b0;
  assign app_wdf_data_o[6] = (N11)? dma_data_i[6] : 
                             (N13)? dma_data_i[70] : 
                             (N12)? dma_data_i[134] : 
                             (N14)? dma_data_i[198] : 1'b0;
  assign app_wdf_data_o[5] = (N11)? dma_data_i[5] : 
                             (N13)? dma_data_i[69] : 
                             (N12)? dma_data_i[133] : 
                             (N14)? dma_data_i[197] : 1'b0;
  assign app_wdf_data_o[4] = (N11)? dma_data_i[4] : 
                             (N13)? dma_data_i[68] : 
                             (N12)? dma_data_i[132] : 
                             (N14)? dma_data_i[196] : 1'b0;
  assign app_wdf_data_o[3] = (N11)? dma_data_i[3] : 
                             (N13)? dma_data_i[67] : 
                             (N12)? dma_data_i[131] : 
                             (N14)? dma_data_i[195] : 1'b0;
  assign app_wdf_data_o[2] = (N11)? dma_data_i[2] : 
                             (N13)? dma_data_i[66] : 
                             (N12)? dma_data_i[130] : 
                             (N14)? dma_data_i[194] : 1'b0;
  assign app_wdf_data_o[1] = (N11)? dma_data_i[1] : 
                             (N13)? dma_data_i[65] : 
                             (N12)? dma_data_i[129] : 
                             (N14)? dma_data_i[193] : 1'b0;
  assign app_wdf_data_o[0] = (N11)? dma_data_i[0] : 
                             (N13)? dma_data_i[64] : 
                             (N12)? dma_data_i[128] : 
                             (N14)? dma_data_i[192] : 1'b0;
  assign N15 = ~count_lo[0];
  assign clear_li = (N0)? take_word : 
                    (N1)? 1'b0 : 1'b0;
  assign N0 = N15;
  assign N1 = count_lo[0];
  assign up_li = (N0)? 1'b0 : 
                 (N1)? take_word : 1'b0;
  assign app_wdf_end_o = (N0)? take_word : 
                         (N1)? 1'b0 : 1'b0;
  assign tag_fifo_yumi_li = (N0)? take_word : 
                            (N1)? 1'b0 : 1'b0;
  assign dma_data_yumi_o[3] = N16 & app_wdf_rdy_i;
  assign N16 = cache_sel[3] & dma_data_v_i[3];
  assign dma_data_yumi_o[2] = N17 & app_wdf_rdy_i;
  assign N17 = cache_sel[2] & dma_data_v_i[2];
  assign dma_data_yumi_o[1] = N18 & app_wdf_rdy_i;
  assign N18 = cache_sel[1] & dma_data_v_i[1];
  assign dma_data_yumi_o[0] = N19 & app_wdf_rdy_i;
  assign N19 = cache_sel[0] & dma_data_v_i[0];
  assign N2 = ~tag_fifo_data_lo[0];
  assign N3 = ~tag_fifo_data_lo[1];
  assign N4 = N2 & N3;
  assign N5 = N2 & tag_fifo_data_lo[1];
  assign N6 = tag_fifo_data_lo[0] & N3;
  assign N7 = tag_fifo_data_lo[0] & tag_fifo_data_lo[1];
  assign app_wdf_wren_o = tag_fifo_v_lo & N8;
  assign take_word = app_wdf_wren_o & app_wdf_rdy_i;
  assign N9 = ~tag_fifo_data_lo[0];
  assign N10 = ~tag_fifo_data_lo[1];
  assign N11 = N9 & N10;
  assign N12 = N9 & tag_fifo_data_lo[1];
  assign N13 = tag_fifo_data_lo[0] & N10;
  assign N14 = tag_fifo_data_lo[0] & tag_fifo_data_lo[1];

endmodule



module bsg_cache_to_dram_ctrl
(
  clk_i,
  reset_i,
  dma_pkt_i,
  dma_pkt_v_i,
  dma_pkt_yumi_o,
  dma_data_o,
  dma_data_v_o,
  dma_data_ready_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  app_en_o,
  app_rdy_i,
  app_cmd_o,
  app_addr_o,
  app_wdf_wren_o,
  app_wdf_rdy_i,
  app_wdf_data_o,
  app_wdf_mask_o,
  app_wdf_end_o,
  app_rd_data_valid_i,
  app_rd_data_i,
  app_rd_data_end_i
);

  input [159:0] dma_pkt_i;
  input [3:0] dma_pkt_v_i;
  output [3:0] dma_pkt_yumi_o;
  output [255:0] dma_data_o;
  output [3:0] dma_data_v_o;
  input [3:0] dma_data_ready_i;
  input [255:0] dma_data_i;
  input [3:0] dma_data_v_i;
  output [3:0] dma_data_yumi_o;
  output [2:0] app_cmd_o;
  output [40:0] app_addr_o;
  output [63:0] app_wdf_data_o;
  output [7:0] app_wdf_mask_o;
  input [63:0] app_rd_data_i;
  input clk_i;
  input reset_i;
  input app_rdy_i;
  input app_wdf_rdy_i;
  input app_rd_data_valid_i;
  input app_rd_data_end_i;
  output app_en_o;
  output app_wdf_wren_o;
  output app_wdf_end_o;
  wire [3:0] dma_pkt_yumi_o,dma_data_v_o,dma_data_yumi_o;
  wire [255:0] dma_data_o;
  wire [2:0] app_cmd_o,req_cnt_n;
  wire [63:0] app_wdf_data_o;
  wire [7:0] app_wdf_mask_o;
  wire app_en_o,app_wdf_wren_o,app_wdf_end_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,rr_v_lo,
  rr_yumi_li,rx_v_li,rx_ready_lo,tx_v_li,tx_ready_lo,req_state_n,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,
  N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,
  N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,
  N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,
  N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,
  N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,
  N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,
  N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,
  N160,N161,N162,N163,N164,N165,N166,N167;
  wire [39:0] dma_pkt;
  wire [1:0] rr_tag_lo;
  reg [38:0] addr_n;
  reg write_not_read_r,req_state_r;
  reg [40:0] app_addr_o;
  reg [2:0] req_cnt_r;
  assign app_cmd_o[1] = 1'b0;
  assign app_cmd_o[2] = 1'b0;

  bsg_round_robin_n_to_1_width_p40_num_in_p4_strict_p0
  cache_rr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(dma_pkt_i),
    .v_i(dma_pkt_v_i),
    .yumi_o(dma_pkt_yumi_o),
    .v_o(rr_v_lo),
    .data_o(dma_pkt),
    .tag_o(rr_tag_lo),
    .yumi_i(rr_yumi_li)
  );


  bsg_cache_to_dram_ctrl_rx_num_cache_p4_data_width_p64_block_size_in_words_p8_dram_ctrl_burst_len_p1
  rx
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(rx_v_li),
    .tag_i(app_addr_o[40:39]),
    .ready_o(rx_ready_lo),
    .dma_data_o(dma_data_o),
    .dma_data_v_o(dma_data_v_o),
    .dma_data_ready_i(dma_data_ready_i),
    .app_rd_data_valid_i(app_rd_data_valid_i),
    .app_rd_data_end_i(app_rd_data_end_i),
    .app_rd_data_i(app_rd_data_i)
  );


  bsg_cache_to_dram_ctrl_tx_num_cache_p4_data_width_p64_block_size_in_words_p8_dram_ctrl_burst_len_p1
  tx
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(tx_v_li),
    .tag_i(app_addr_o[40:39]),
    .ready_o(tx_ready_lo),
    .dma_data_i(dma_data_i),
    .dma_data_v_i(dma_data_v_i),
    .dma_data_yumi_o(dma_data_yumi_o),
    .app_wdf_wren_o(app_wdf_wren_o),
    .app_wdf_data_o(app_wdf_data_o),
    .app_wdf_mask_o(app_wdf_mask_o),
    .app_wdf_end_o(app_wdf_end_o),
    .app_wdf_rdy_i(app_wdf_rdy_i)
  );

  assign N163 = req_cnt_r[1] & req_cnt_r[2];
  assign N164 = req_cnt_r[0] & N163;
  assign { N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26 } = app_addr_o[38:0] + { N23, 1'b0, 1'b0, 1'b0 };
  assign { N67, N66, N65 } = req_cnt_r + 1'b1;
  assign { N12, N11 } = (N0)? rr_tag_lo : 
                        (N1)? app_addr_o[40:39] : 1'b0;
  assign N0 = rr_v_lo;
  assign N1 = N10;
  assign N13 = (N0)? dma_pkt[39] : 
               (N1)? write_not_read_r : 1'b0;
  assign { N16, N15, N14 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                             (N1)? req_cnt_r : 1'b0;
  assign N17 = (N0)? 1'b1 : 
               (N1)? req_state_r : 1'b0;
  assign N20 = (N2)? tx_ready_lo : 
               (N3)? rx_ready_lo : 1'b0;
  assign N2 = write_not_read_r;
  assign N3 = N19;
  assign { N70, N69, N68 } = (N4)? { N67, N66, N65 } : 
                             (N24)? req_cnt_r : 1'b0;
  assign N4 = N23;
  assign N72 = ~N71;
  assign req_state_n = (N5)? N17 : 
                       (N6)? N72 : 1'b0;
  assign N5 = N9;
  assign N6 = req_state_r;
  assign rr_yumi_li = (N5)? rr_v_lo : 
                      (N6)? 1'b0 : 1'b0;
  assign N73 = (N5)? rr_v_lo : 
               (N6)? 1'b1 : 1'b0;
  assign { N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74 } = (N5)? dma_pkt[38:0] : 
                                                                                                                                                                                                                              (N6)? { N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26 } : 1'b0;
  assign req_cnt_n = (N5)? { N16, N15, N14 } : 
                     (N6)? { N70, N69, N68 } : 1'b0;
  assign app_en_o = (N5)? 1'b0 : 
                    (N6)? N20 : 1'b0;
  assign app_cmd_o[0] = (N5)? 1'b0 : 
                        (N6)? N19 : 1'b0;
  assign rx_v_li = (N5)? 1'b0 : 
                   (N6)? N21 : 1'b0;
  assign tx_v_li = (N5)? 1'b0 : 
                   (N6)? N22 : 1'b0;
  assign N115 = (N7)? 1'b0 : 
                (N8)? req_state_n : 1'b0;
  assign N7 = N114;
  assign N8 = N113;
  assign { N117, N116 } = (N7)? { 1'b0, 1'b0 } : 
                          (N8)? { N12, N11 } : 1'b0;
  assign { N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118 } = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                        (N8)? addr_n : 1'b0;
  assign { N159, N158, N157 } = (N7)? { 1'b0, 1'b0, 1'b0 } : 
                                (N8)? req_cnt_n : 1'b0;
  assign N160 = (N7)? 1'b0 : 
                (N8)? N13 : 1'b0;
  assign N9 = ~req_state_r;
  assign N10 = ~rr_v_lo;
  assign N18 = req_state_r;
  assign N19 = ~write_not_read_r;
  assign N21 = N165 & app_rdy_i;
  assign N165 = N19 & rx_ready_lo;
  assign N22 = N166 & app_rdy_i;
  assign N166 = write_not_read_r & tx_ready_lo;
  assign N23 = app_rdy_i & N20;
  assign N24 = ~N23;
  assign N25 = N18 & N23;
  assign N71 = N167 & N164;
  assign N167 = app_rdy_i & N20;
  assign N113 = ~reset_i;
  assign N114 = reset_i;
  assign N161 = req_state_r & N113;
  assign N162 = ~N161;

  always @(N112 or N73) begin
    if(N73) begin
      { addr_n[38:38] } <= { N112 };
    end 
  end


  always @(N111 or N73) begin
    if(N73) begin
      { addr_n[37:37] } <= { N111 };
    end 
  end


  always @(N110 or N73) begin
    if(N73) begin
      { addr_n[36:36] } <= { N110 };
    end 
  end


  always @(N109 or N73) begin
    if(N73) begin
      { addr_n[35:35] } <= { N109 };
    end 
  end


  always @(N108 or N73) begin
    if(N73) begin
      { addr_n[34:34] } <= { N108 };
    end 
  end


  always @(N107 or N73) begin
    if(N73) begin
      { addr_n[33:33] } <= { N107 };
    end 
  end


  always @(N106 or N73) begin
    if(N73) begin
      { addr_n[32:32] } <= { N106 };
    end 
  end


  always @(N105 or N73) begin
    if(N73) begin
      { addr_n[31:31] } <= { N105 };
    end 
  end


  always @(N104 or N73) begin
    if(N73) begin
      { addr_n[30:30] } <= { N104 };
    end 
  end


  always @(N103 or N73) begin
    if(N73) begin
      { addr_n[29:29] } <= { N103 };
    end 
  end


  always @(N102 or N73) begin
    if(N73) begin
      { addr_n[28:28] } <= { N102 };
    end 
  end


  always @(N101 or N73) begin
    if(N73) begin
      { addr_n[27:27] } <= { N101 };
    end 
  end


  always @(N100 or N73) begin
    if(N73) begin
      { addr_n[26:26] } <= { N100 };
    end 
  end


  always @(N99 or N73) begin
    if(N73) begin
      { addr_n[25:25] } <= { N99 };
    end 
  end


  always @(N98 or N73) begin
    if(N73) begin
      { addr_n[24:24] } <= { N98 };
    end 
  end


  always @(N97 or N73) begin
    if(N73) begin
      { addr_n[23:23] } <= { N97 };
    end 
  end


  always @(N96 or N73) begin
    if(N73) begin
      { addr_n[22:22] } <= { N96 };
    end 
  end


  always @(N95 or N73) begin
    if(N73) begin
      { addr_n[21:21] } <= { N95 };
    end 
  end


  always @(N94 or N73) begin
    if(N73) begin
      { addr_n[20:20] } <= { N94 };
    end 
  end


  always @(N93 or N73) begin
    if(N73) begin
      { addr_n[19:19] } <= { N93 };
    end 
  end


  always @(N92 or N73) begin
    if(N73) begin
      { addr_n[18:18] } <= { N92 };
    end 
  end


  always @(N91 or N73) begin
    if(N73) begin
      { addr_n[17:17] } <= { N91 };
    end 
  end


  always @(N90 or N73) begin
    if(N73) begin
      { addr_n[16:16] } <= { N90 };
    end 
  end


  always @(N89 or N73) begin
    if(N73) begin
      { addr_n[15:15] } <= { N89 };
    end 
  end


  always @(N88 or N73) begin
    if(N73) begin
      { addr_n[14:14] } <= { N88 };
    end 
  end


  always @(N87 or N73) begin
    if(N73) begin
      { addr_n[13:13] } <= { N87 };
    end 
  end


  always @(N86 or N73) begin
    if(N73) begin
      { addr_n[12:12] } <= { N86 };
    end 
  end


  always @(N85 or N73) begin
    if(N73) begin
      { addr_n[11:11] } <= { N85 };
    end 
  end


  always @(N84 or N73) begin
    if(N73) begin
      { addr_n[10:10] } <= { N84 };
    end 
  end


  always @(N83 or N73) begin
    if(N73) begin
      { addr_n[9:9] } <= { N83 };
    end 
  end


  always @(N82 or N73) begin
    if(N73) begin
      { addr_n[8:8] } <= { N82 };
    end 
  end


  always @(N81 or N73) begin
    if(N73) begin
      { addr_n[7:7] } <= { N81 };
    end 
  end


  always @(N80 or N73) begin
    if(N73) begin
      { addr_n[6:6] } <= { N80 };
    end 
  end


  always @(N79 or N73) begin
    if(N73) begin
      { addr_n[5:5] } <= { N79 };
    end 
  end


  always @(N78 or N73) begin
    if(N73) begin
      { addr_n[4:4] } <= { N78 };
    end 
  end


  always @(N77 or N73) begin
    if(N73) begin
      { addr_n[3:3] } <= { N77 };
    end 
  end


  always @(N76 or N73) begin
    if(N73) begin
      { addr_n[2:2] } <= { N76 };
    end 
  end


  always @(N75 or N73) begin
    if(N73) begin
      { addr_n[1:1] } <= { N75 };
    end 
  end


  always @(N74 or N73) begin
    if(N73) begin
      { addr_n[0:0] } <= { N74 };
    end 
  end


  always @(posedge clk_i) begin
    if(N162) begin
      write_not_read_r <= N160;
      { app_addr_o[40:39] } <= { N117, N116 };
    end 
    if(1'b1) begin
      req_state_r <= N115;
      { app_addr_o[38:0] } <= { N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118 };
      { req_cnt_r[2:0] } <= { N159, N158, N157 };
    end 
  end


endmodule

