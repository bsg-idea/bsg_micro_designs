

module top
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  yumi_o,
  v_o,
  data_o,
  ready_i
);

  input [1:0] v_i;
  input [127:0] data_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input ready_i;
  output ready_o;
  output yumi_o;
  output v_o;

  bsg_front_side_bus_hop_out
  wrapper
  (
    .v_i(v_i),
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_i(ready_i),
    .ready_o(ready_o),
    .yumi_o(yumi_o),
    .v_o(v_o)
  );


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



module bsg_front_side_bus_hop_out
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  yumi_o,
  v_o,
  data_o,
  ready_i
);

  input [1:0] v_i;
  input [127:0] data_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input ready_i;
  output ready_o;
  output yumi_o;
  output v_o;
  wire [63:0] data_o;
  wire ready_o,yumi_o,v_o,N0,N1,N2,N3,N4,source_sel,fifo_ready,N5,N6,N7,N8,N9,N10,
  n_0_net__63_,n_0_net__62_,n_0_net__61_,n_0_net__60_,n_0_net__59_,n_0_net__58_,
  n_0_net__57_,n_0_net__56_,n_0_net__55_,n_0_net__54_,n_0_net__53_,n_0_net__52_,
  n_0_net__51_,n_0_net__50_,n_0_net__49_,n_0_net__48_,n_0_net__47_,n_0_net__46_,
  n_0_net__45_,n_0_net__44_,n_0_net__43_,n_0_net__42_,n_0_net__41_,n_0_net__40_,n_0_net__39_,
  n_0_net__38_,n_0_net__37_,n_0_net__36_,n_0_net__35_,n_0_net__34_,n_0_net__33_,
  n_0_net__32_,n_0_net__31_,n_0_net__30_,n_0_net__29_,n_0_net__28_,n_0_net__27_,
  n_0_net__26_,n_0_net__25_,n_0_net__24_,n_0_net__23_,n_0_net__22_,n_0_net__21_,
  n_0_net__20_,n_0_net__19_,n_0_net__18_,n_0_net__17_,n_0_net__16_,n_0_net__15_,
  n_0_net__14_,n_0_net__13_,n_0_net__12_,n_0_net__11_,n_0_net__10_,n_0_net__9_,
  n_0_net__8_,n_0_net__7_,n_0_net__6_,n_0_net__5_,n_0_net__4_,n_0_net__3_,n_0_net__2_,
  n_0_net__1_,n_0_net__0_,n_1_net_,n_2_net_,N11,N12,N13,N14,N15;
  reg v1_blocked_r;

  bsg_two_fifo_width_p64
  fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready),
    .data_i({ n_0_net__63_, n_0_net__62_, n_0_net__61_, n_0_net__60_, n_0_net__59_, n_0_net__58_, n_0_net__57_, n_0_net__56_, n_0_net__55_, n_0_net__54_, n_0_net__53_, n_0_net__52_, n_0_net__51_, n_0_net__50_, n_0_net__49_, n_0_net__48_, n_0_net__47_, n_0_net__46_, n_0_net__45_, n_0_net__44_, n_0_net__43_, n_0_net__42_, n_0_net__41_, n_0_net__40_, n_0_net__39_, n_0_net__38_, n_0_net__37_, n_0_net__36_, n_0_net__35_, n_0_net__34_, n_0_net__33_, n_0_net__32_, n_0_net__31_, n_0_net__30_, n_0_net__29_, n_0_net__28_, n_0_net__27_, n_0_net__26_, n_0_net__25_, n_0_net__24_, n_0_net__23_, n_0_net__22_, n_0_net__21_, n_0_net__20_, n_0_net__19_, n_0_net__18_, n_0_net__17_, n_0_net__16_, n_0_net__15_, n_0_net__14_, n_0_net__13_, n_0_net__12_, n_0_net__11_, n_0_net__10_, n_0_net__9_, n_0_net__8_, n_0_net__7_, n_0_net__6_, n_0_net__5_, n_0_net__4_, n_0_net__3_, n_0_net__2_, n_0_net__1_, n_0_net__0_ }),
    .v_i(n_2_net_),
    .v_o(v_o),
    .data_o(data_o),
    .yumi_i(n_1_net_)
  );

  assign n_0_net__63_ = (N11)? data_i[63] : 
                        (N0)? data_i[127] : 1'b0;
  assign N0 = source_sel;
  assign n_0_net__62_ = (N11)? data_i[62] : 
                        (N0)? data_i[126] : 1'b0;
  assign n_0_net__61_ = (N11)? data_i[61] : 
                        (N0)? data_i[125] : 1'b0;
  assign n_0_net__60_ = (N11)? data_i[60] : 
                        (N0)? data_i[124] : 1'b0;
  assign n_0_net__59_ = (N11)? data_i[59] : 
                        (N0)? data_i[123] : 1'b0;
  assign n_0_net__58_ = (N11)? data_i[58] : 
                        (N0)? data_i[122] : 1'b0;
  assign n_0_net__57_ = (N11)? data_i[57] : 
                        (N0)? data_i[121] : 1'b0;
  assign n_0_net__56_ = (N11)? data_i[56] : 
                        (N0)? data_i[120] : 1'b0;
  assign n_0_net__55_ = (N11)? data_i[55] : 
                        (N0)? data_i[119] : 1'b0;
  assign n_0_net__54_ = (N11)? data_i[54] : 
                        (N0)? data_i[118] : 1'b0;
  assign n_0_net__53_ = (N11)? data_i[53] : 
                        (N0)? data_i[117] : 1'b0;
  assign n_0_net__52_ = (N11)? data_i[52] : 
                        (N0)? data_i[116] : 1'b0;
  assign n_0_net__51_ = (N11)? data_i[51] : 
                        (N0)? data_i[115] : 1'b0;
  assign n_0_net__50_ = (N11)? data_i[50] : 
                        (N0)? data_i[114] : 1'b0;
  assign n_0_net__49_ = (N11)? data_i[49] : 
                        (N0)? data_i[113] : 1'b0;
  assign n_0_net__48_ = (N11)? data_i[48] : 
                        (N0)? data_i[112] : 1'b0;
  assign n_0_net__47_ = (N11)? data_i[47] : 
                        (N0)? data_i[111] : 1'b0;
  assign n_0_net__46_ = (N11)? data_i[46] : 
                        (N0)? data_i[110] : 1'b0;
  assign n_0_net__45_ = (N11)? data_i[45] : 
                        (N0)? data_i[109] : 1'b0;
  assign n_0_net__44_ = (N11)? data_i[44] : 
                        (N0)? data_i[108] : 1'b0;
  assign n_0_net__43_ = (N11)? data_i[43] : 
                        (N0)? data_i[107] : 1'b0;
  assign n_0_net__42_ = (N11)? data_i[42] : 
                        (N0)? data_i[106] : 1'b0;
  assign n_0_net__41_ = (N11)? data_i[41] : 
                        (N0)? data_i[105] : 1'b0;
  assign n_0_net__40_ = (N11)? data_i[40] : 
                        (N0)? data_i[104] : 1'b0;
  assign n_0_net__39_ = (N11)? data_i[39] : 
                        (N0)? data_i[103] : 1'b0;
  assign n_0_net__38_ = (N11)? data_i[38] : 
                        (N0)? data_i[102] : 1'b0;
  assign n_0_net__37_ = (N11)? data_i[37] : 
                        (N0)? data_i[101] : 1'b0;
  assign n_0_net__36_ = (N11)? data_i[36] : 
                        (N0)? data_i[100] : 1'b0;
  assign n_0_net__35_ = (N11)? data_i[35] : 
                        (N0)? data_i[99] : 1'b0;
  assign n_0_net__34_ = (N11)? data_i[34] : 
                        (N0)? data_i[98] : 1'b0;
  assign n_0_net__33_ = (N11)? data_i[33] : 
                        (N0)? data_i[97] : 1'b0;
  assign n_0_net__32_ = (N11)? data_i[32] : 
                        (N0)? data_i[96] : 1'b0;
  assign n_0_net__31_ = (N11)? data_i[31] : 
                        (N0)? data_i[95] : 1'b0;
  assign n_0_net__30_ = (N11)? data_i[30] : 
                        (N0)? data_i[94] : 1'b0;
  assign n_0_net__29_ = (N11)? data_i[29] : 
                        (N0)? data_i[93] : 1'b0;
  assign n_0_net__28_ = (N11)? data_i[28] : 
                        (N0)? data_i[92] : 1'b0;
  assign n_0_net__27_ = (N11)? data_i[27] : 
                        (N0)? data_i[91] : 1'b0;
  assign n_0_net__26_ = (N11)? data_i[26] : 
                        (N0)? data_i[90] : 1'b0;
  assign n_0_net__25_ = (N11)? data_i[25] : 
                        (N0)? data_i[89] : 1'b0;
  assign n_0_net__24_ = (N11)? data_i[24] : 
                        (N0)? data_i[88] : 1'b0;
  assign n_0_net__23_ = (N11)? data_i[23] : 
                        (N0)? data_i[87] : 1'b0;
  assign n_0_net__22_ = (N11)? data_i[22] : 
                        (N0)? data_i[86] : 1'b0;
  assign n_0_net__21_ = (N11)? data_i[21] : 
                        (N0)? data_i[85] : 1'b0;
  assign n_0_net__20_ = (N11)? data_i[20] : 
                        (N0)? data_i[84] : 1'b0;
  assign n_0_net__19_ = (N11)? data_i[19] : 
                        (N0)? data_i[83] : 1'b0;
  assign n_0_net__18_ = (N11)? data_i[18] : 
                        (N0)? data_i[82] : 1'b0;
  assign n_0_net__17_ = (N11)? data_i[17] : 
                        (N0)? data_i[81] : 1'b0;
  assign n_0_net__16_ = (N11)? data_i[16] : 
                        (N0)? data_i[80] : 1'b0;
  assign n_0_net__15_ = (N11)? data_i[15] : 
                        (N0)? data_i[79] : 1'b0;
  assign n_0_net__14_ = (N11)? data_i[14] : 
                        (N0)? data_i[78] : 1'b0;
  assign n_0_net__13_ = (N11)? data_i[13] : 
                        (N0)? data_i[77] : 1'b0;
  assign n_0_net__12_ = (N11)? data_i[12] : 
                        (N0)? data_i[76] : 1'b0;
  assign n_0_net__11_ = (N11)? data_i[11] : 
                        (N0)? data_i[75] : 1'b0;
  assign n_0_net__10_ = (N11)? data_i[10] : 
                        (N0)? data_i[74] : 1'b0;
  assign n_0_net__9_ = (N11)? data_i[9] : 
                       (N0)? data_i[73] : 1'b0;
  assign n_0_net__8_ = (N11)? data_i[8] : 
                       (N0)? data_i[72] : 1'b0;
  assign n_0_net__7_ = (N11)? data_i[7] : 
                       (N0)? data_i[71] : 1'b0;
  assign n_0_net__6_ = (N11)? data_i[6] : 
                       (N0)? data_i[70] : 1'b0;
  assign n_0_net__5_ = (N11)? data_i[5] : 
                       (N0)? data_i[69] : 1'b0;
  assign n_0_net__4_ = (N11)? data_i[4] : 
                       (N0)? data_i[68] : 1'b0;
  assign n_0_net__3_ = (N11)? data_i[3] : 
                       (N0)? data_i[67] : 1'b0;
  assign n_0_net__2_ = (N11)? data_i[2] : 
                       (N0)? data_i[66] : 1'b0;
  assign n_0_net__1_ = (N11)? data_i[1] : 
                       (N0)? data_i[65] : 1'b0;
  assign n_0_net__0_ = (N11)? data_i[0] : 
                       (N0)? data_i[64] : 1'b0;
  assign N9 = (N1)? N8 : 
              (N2)? v1_blocked_r : 1'b0;
  assign N1 = fifo_ready;
  assign N2 = N7;
  assign N10 = (N3)? 1'b0 : 
               (N4)? N9 : 1'b0;
  assign N3 = N6;
  assign N4 = N5;
  assign source_sel = N12 | v1_blocked_r;
  assign N12 = ~v_i[0];
  assign yumi_o = N13 & source_sel;
  assign N13 = fifo_ready & v_i[1];
  assign N5 = ~reset_i;
  assign N6 = reset_i;
  assign N7 = ~fifo_ready;
  assign N8 = v_i[1] & N14;
  assign N14 = ~source_sel;
  assign n_2_net_ = v_i[1] | v_i[0];
  assign n_1_net_ = v_o & ready_i;
  assign N11 = ~source_sel;
  assign ready_o = fifo_ready & N15;
  assign N15 = ~v1_blocked_r;

  always @(posedge clk_i) begin
    if(1'b1) begin
      v1_blocked_r <= N10;
    end 
  end


endmodule

