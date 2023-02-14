

module top
(
  clk_i,
  reset_i,
  sbuf_entry_i,
  v_i,
  sbuf_entry_o,
  v_o,
  yumi_i,
  empty_o,
  bypass_addr_i,
  bypass_v_i,
  bypass_data_o,
  bypass_mask_o
);

  input [113:0] sbuf_entry_i;
  output [113:0] sbuf_entry_o;
  input [38:0] bypass_addr_i;
  output [63:0] bypass_data_o;
  output [7:0] bypass_mask_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  input bypass_v_i;
  output v_o;
  output empty_o;

  bsg_cache_sbuf
  wrapper
  (
    .sbuf_entry_i(sbuf_entry_i),
    .sbuf_entry_o(sbuf_entry_o),
    .bypass_addr_i(bypass_addr_i),
    .bypass_data_o(bypass_data_o),
    .bypass_mask_o(bypass_mask_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .yumi_i(yumi_i),
    .bypass_v_i(bypass_v_i),
    .v_o(v_o),
    .empty_o(empty_o)
  );


endmodule



module bsg_cache_sbuf_queue_width_p114
(
  clk_i,
  data_i,
  el0_en_i,
  el1_en_i,
  mux0_sel_i,
  mux1_sel_i,
  el0_snoop_o,
  el1_snoop_o,
  data_o
);

  input [113:0] data_i;
  output [113:0] el0_snoop_o;
  output [113:0] el1_snoop_o;
  output [113:0] data_o;
  input clk_i;
  input el0_en_i;
  input el1_en_i;
  input mux0_sel_i;
  input mux1_sel_i;
  wire [113:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119;
  reg [113:0] el0_snoop_o,el1_snoop_o;
  assign { N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } = (N0)? el0_snoop_o : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      (N1)? data_i : 1'b0;
  assign N0 = mux0_sel_i;
  assign N1 = N4;
  assign data_o = (N2)? el1_snoop_o : 
                  (N3)? data_i : 1'b0;
  assign N2 = mux1_sel_i;
  assign N3 = N119;
  assign N4 = ~mux0_sel_i;
  assign N119 = ~mux1_sel_i;

  always @(posedge clk_i) begin
    if(el0_en_i) begin
      { el0_snoop_o[113:0] } <= { data_i[113:0] };
    end 
    if(el1_en_i) begin
      { el1_snoop_o[113:0] } <= { N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 };
    end 
  end


endmodule



module bsg_mux_segmented_segments_p8_segment_width_p8
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [63:0] data0_i;
  input [63:0] data1_i;
  input [7:0] sel_i;
  output [63:0] data_o;
  wire [63:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15;
  assign data_o[7:0] = (N0)? data1_i[7:0] : 
                       (N8)? data0_i[7:0] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[15:8] = (N1)? data1_i[15:8] : 
                        (N9)? data0_i[15:8] : 1'b0;
  assign N1 = sel_i[1];
  assign data_o[23:16] = (N2)? data1_i[23:16] : 
                         (N10)? data0_i[23:16] : 1'b0;
  assign N2 = sel_i[2];
  assign data_o[31:24] = (N3)? data1_i[31:24] : 
                         (N11)? data0_i[31:24] : 1'b0;
  assign N3 = sel_i[3];
  assign data_o[39:32] = (N4)? data1_i[39:32] : 
                         (N12)? data0_i[39:32] : 1'b0;
  assign N4 = sel_i[4];
  assign data_o[47:40] = (N5)? data1_i[47:40] : 
                         (N13)? data0_i[47:40] : 1'b0;
  assign N5 = sel_i[5];
  assign data_o[55:48] = (N6)? data1_i[55:48] : 
                         (N14)? data0_i[55:48] : 1'b0;
  assign N6 = sel_i[6];
  assign data_o[63:56] = (N7)? data1_i[63:56] : 
                         (N15)? data0_i[63:56] : 1'b0;
  assign N7 = sel_i[7];
  assign N8 = ~sel_i[0];
  assign N9 = ~sel_i[1];
  assign N10 = ~sel_i[2];
  assign N11 = ~sel_i[3];
  assign N12 = ~sel_i[4];
  assign N13 = ~sel_i[5];
  assign N14 = ~sel_i[6];
  assign N15 = ~sel_i[7];

endmodule



module bsg_cache_sbuf
(
  clk_i,
  reset_i,
  sbuf_entry_i,
  v_i,
  sbuf_entry_o,
  v_o,
  yumi_i,
  empty_o,
  bypass_addr_i,
  bypass_v_i,
  bypass_data_o,
  bypass_mask_o
);

  input [113:0] sbuf_entry_i;
  output [113:0] sbuf_entry_o;
  input [38:0] bypass_addr_i;
  output [63:0] bypass_data_o;
  output [7:0] bypass_mask_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  input bypass_v_i;
  output v_o;
  output empty_o;
  wire [113:0] sbuf_entry_o,el0,el1;
  wire v_o,empty_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,el0_valid,el1_valid,
  el0_enable,N14,el1_enable,mux0_sel,mux1_sel,N15,N16,N17,N18,N19,N20,N21,N22,N23,
  N24,N25,tag_hit0_n,tag_hit1_n,tag_hit2_n,n_2_net__7_,n_2_net__6_,n_2_net__5_,
  n_2_net__4_,n_2_net__3_,n_2_net__2_,n_2_net__1_,n_2_net__0_,n_4_net__7_,n_4_net__6_,
  n_4_net__5_,n_4_net__4_,n_4_net__3_,n_4_net__2_,n_4_net__1_,n_4_net__0_,N26,N27,
  N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,
  N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,
  N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,
  N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,
  N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,
  N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135;
  wire [7:7] tag_hit0x4,tag_hit1x4,tag_hit2x4;
  wire [7:0] bypass_mask_n;
  wire [63:0] el0or1_data,bypass_data_n;
  reg [1:0] num_els_r;
  reg [63:0] bypass_data_o;
  reg [7:0] bypass_mask_o;
  assign N8 = N6 & N7;
  assign N9 = num_els_r[1] | N7;
  assign N11 = N6 | num_els_r[0];
  assign N13 = num_els_r[1] & num_els_r[0];

  bsg_cache_sbuf_queue_width_p114
  sbq
  (
    .clk_i(clk_i),
    .data_i(sbuf_entry_i),
    .el0_en_i(el0_enable),
    .el1_en_i(el1_enable),
    .mux0_sel_i(mux0_sel),
    .mux1_sel_i(mux1_sel),
    .el0_snoop_o(el0),
    .el1_snoop_o(el1),
    .data_o(sbuf_entry_o)
  );

  assign tag_hit0_n = bypass_addr_i[38:3] == el0[113:78];
  assign tag_hit1_n = bypass_addr_i[38:3] == el1[113:78];
  assign tag_hit2_n = bypass_addr_i[38:3] == sbuf_entry_i[113:78];

  bsg_mux_segmented_segments_p8_segment_width_p8
  mux_segmented_merge0
  (
    .data0_i(el1[74:11]),
    .data1_i(el0[74:11]),
    .sel_i({ n_2_net__7_, n_2_net__6_, n_2_net__5_, n_2_net__4_, n_2_net__3_, n_2_net__2_, n_2_net__1_, n_2_net__0_ }),
    .data_o(el0or1_data)
  );


  bsg_mux_segmented_segments_p8_segment_width_p8
  mux_segmented_merge1
  (
    .data0_i(el0or1_data),
    .data1_i(sbuf_entry_i[74:11]),
    .sel_i({ n_4_net__7_, n_4_net__6_, n_4_net__5_, n_4_net__4_, n_4_net__3_, n_4_net__2_, n_4_net__1_, n_4_net__0_ }),
    .data_o(bypass_data_n)
  );

  assign { N20, N19 } = num_els_r + v_i;
  assign { N23, N22 } = { N20, N19 } - N21;
  assign v_o = (N0)? v_i : 
               (N1)? 1'b1 : 
               (N2)? 1'b1 : 
               (N3)? 1'b0 : 1'b0;
  assign N0 = N8;
  assign N1 = N10;
  assign N2 = N12;
  assign N3 = N13;
  assign empty_o = (N0)? 1'b1 : 
                   (N1)? 1'b0 : 
                   (N2)? 1'b0 : 
                   (N3)? 1'b0 : 1'b0;
  assign el0_valid = (N0)? 1'b0 : 
                     (N1)? 1'b0 : 
                     (N2)? 1'b1 : 
                     (N3)? 1'b0 : 1'b0;
  assign el1_valid = (N0)? 1'b0 : 
                     (N1)? 1'b1 : 
                     (N2)? 1'b1 : 
                     (N3)? 1'b0 : 1'b0;
  assign el0_enable = (N0)? 1'b0 : 
                      (N1)? N15 : 
                      (N2)? N17 : 
                      (N3)? 1'b0 : 1'b0;
  assign el1_enable = (N0)? N14 : 
                      (N1)? N16 : 
                      (N2)? yumi_i : 
                      (N3)? 1'b0 : 1'b0;
  assign mux0_sel = (N0)? 1'b0 : 
                    (N1)? 1'b0 : 
                    (N2)? 1'b1 : 
                    (N3)? 1'b0 : 1'b0;
  assign mux1_sel = (N0)? 1'b0 : 
                    (N1)? 1'b1 : 
                    (N2)? 1'b1 : 
                    (N3)? 1'b0 : 1'b0;
  assign { N25, N24 } = (N4)? { 1'b0, 1'b0 } : 
                        (N5)? { N23, N22 } : 1'b0;
  assign N4 = reset_i;
  assign N5 = N18;
  assign N28 = (N4)? 1'b1 : 
               (N102)? 1'b1 : 
               (N27)? 1'b0 : 1'b0;
  assign { N36, N35, N34, N33, N32, N31, N30, N29 } = (N4)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                      (N102)? bypass_mask_n : 1'b0;
  assign { N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37 } = (N4)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                               (N102)? bypass_data_n : 1'b0;
  assign N6 = ~num_els_r[1];
  assign N7 = ~num_els_r[0];
  assign N10 = ~N9;
  assign N12 = ~N11;
  assign N14 = v_i & N103;
  assign N103 = ~yumi_i;
  assign N15 = v_i & N103;
  assign N16 = v_i & yumi_i;
  assign N17 = v_i & yumi_i;
  assign N18 = ~reset_i;
  assign N21 = v_o & yumi_i;
  assign tag_hit0x4[7] = tag_hit0_n & el0_valid;
  assign tag_hit1x4[7] = tag_hit1_n & el1_valid;
  assign tag_hit2x4[7] = tag_hit2_n & v_i;
  assign bypass_mask_n[7] = N106 | N107;
  assign N106 = N104 | N105;
  assign N104 = tag_hit0x4[7] & el0[10];
  assign N105 = tag_hit1x4[7] & el1[10];
  assign N107 = tag_hit2x4[7] & sbuf_entry_i[10];
  assign bypass_mask_n[6] = N110 | N111;
  assign N110 = N108 | N109;
  assign N108 = tag_hit0x4[7] & el0[9];
  assign N109 = tag_hit1x4[7] & el1[9];
  assign N111 = tag_hit2x4[7] & sbuf_entry_i[9];
  assign bypass_mask_n[5] = N114 | N115;
  assign N114 = N112 | N113;
  assign N112 = tag_hit0x4[7] & el0[8];
  assign N113 = tag_hit1x4[7] & el1[8];
  assign N115 = tag_hit2x4[7] & sbuf_entry_i[8];
  assign bypass_mask_n[4] = N118 | N119;
  assign N118 = N116 | N117;
  assign N116 = tag_hit0x4[7] & el0[7];
  assign N117 = tag_hit1x4[7] & el1[7];
  assign N119 = tag_hit2x4[7] & sbuf_entry_i[7];
  assign bypass_mask_n[3] = N122 | N123;
  assign N122 = N120 | N121;
  assign N120 = tag_hit0x4[7] & el0[6];
  assign N121 = tag_hit1x4[7] & el1[6];
  assign N123 = tag_hit2x4[7] & sbuf_entry_i[6];
  assign bypass_mask_n[2] = N126 | N127;
  assign N126 = N124 | N125;
  assign N124 = tag_hit0x4[7] & el0[5];
  assign N125 = tag_hit1x4[7] & el1[5];
  assign N127 = tag_hit2x4[7] & sbuf_entry_i[5];
  assign bypass_mask_n[1] = N130 | N131;
  assign N130 = N128 | N129;
  assign N128 = tag_hit0x4[7] & el0[4];
  assign N129 = tag_hit1x4[7] & el1[4];
  assign N131 = tag_hit2x4[7] & sbuf_entry_i[4];
  assign bypass_mask_n[0] = N134 | N135;
  assign N134 = N132 | N133;
  assign N132 = tag_hit0x4[7] & el0[3];
  assign N133 = tag_hit1x4[7] & el1[3];
  assign N135 = tag_hit2x4[7] & sbuf_entry_i[3];
  assign n_2_net__7_ = tag_hit0x4[7] & el0[10];
  assign n_2_net__6_ = tag_hit0x4[7] & el0[9];
  assign n_2_net__5_ = tag_hit0x4[7] & el0[8];
  assign n_2_net__4_ = tag_hit0x4[7] & el0[7];
  assign n_2_net__3_ = tag_hit0x4[7] & el0[6];
  assign n_2_net__2_ = tag_hit0x4[7] & el0[5];
  assign n_2_net__1_ = tag_hit0x4[7] & el0[4];
  assign n_2_net__0_ = tag_hit0x4[7] & el0[3];
  assign n_4_net__7_ = tag_hit2x4[7] & sbuf_entry_i[10];
  assign n_4_net__6_ = tag_hit2x4[7] & sbuf_entry_i[9];
  assign n_4_net__5_ = tag_hit2x4[7] & sbuf_entry_i[8];
  assign n_4_net__4_ = tag_hit2x4[7] & sbuf_entry_i[7];
  assign n_4_net__3_ = tag_hit2x4[7] & sbuf_entry_i[6];
  assign n_4_net__2_ = tag_hit2x4[7] & sbuf_entry_i[5];
  assign n_4_net__1_ = tag_hit2x4[7] & sbuf_entry_i[4];
  assign n_4_net__0_ = tag_hit2x4[7] & sbuf_entry_i[3];
  assign N26 = bypass_v_i | reset_i;
  assign N27 = ~N26;
  assign N101 = ~reset_i;
  assign N102 = bypass_v_i & N101;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { num_els_r[1:0] } <= { N25, N24 };
    end 
    if(N28) begin
      { bypass_data_o[63:0] } <= { N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37 };
      { bypass_mask_o[7:0] } <= { N36, N35, N34, N33, N32, N31, N30, N29 };
    end 
  end


endmodule

