

module top
(
  clk_i,
  reset_i,
  link_i,
  link_o,
  packet_o,
  v_o,
  yumi_i
);

  input [65:0] link_i;
  output [65:0] link_o;
  output [527:0] packet_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;

  bsg_wormhole_router_adapter_out
  wrapper
  (
    .link_i(link_i),
    .link_o(link_o),
    .packet_o(packet_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .yumi_i(yumi_i),
    .v_o(v_o)
  );


endmodule



module bsg_counter_clear_up_max_val_p8_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [3:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17;
  reg [3:0] count_o;
  assign { N9, N8, N7, N6 } = { N17, N16, N15, N14 } + up_i;
  assign { N13, N12, N11, N10 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                  (N1)? { N9, N8, N7, N6 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign { N17, N16, N15, N14 } = count_o * N4;
  assign N2 = ~reset_i;
  assign N3 = N2;
  assign N4 = ~clear_i;
  assign N5 = N3 & N4;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_o[3:0] } <= { N13, N12, N11, N10 };
    end 
  end


endmodule



module bsg_dff_reset_en_width_p4_reset_val_p0
(
  clk_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [3:0] data_i;
  output [3:0] data_o;
  input clk_i;
  input reset_i;
  input en_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
  reg [3:0] data_o;
  assign N3 = (N0)? 1'b1 : 
              (N9)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N7, N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N9)? data_i : 1'b0;
  assign N1 = en_i | reset_i;
  assign N2 = ~N1;
  assign N8 = ~reset_i;
  assign N9 = en_i & N8;

  always @(posedge clk_i) begin
    if(N3) begin
      { data_o[3:0] } <= { N7, N6, N5, N4 };
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p1_els_p2_read_write_same_addr_p0_harden_p0
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
  input [0:0] w_data_i;
  input [0:0] r_addr_i;
  output [0:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [0:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [1:0] mem;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[1] : 1'b0;
  assign N0 = r_addr_i[0];
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[1:1] } <= { w_data_i[0:0] };
    end 
    if(N7) begin
      { mem[0:0] } <= { w_data_i[0:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p1_els_p2_read_write_same_addr_p0
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
  input [0:0] w_data_i;
  input [0:0] r_addr_i;
  output [0:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [0:0] r_data_o;

  bsg_mem_1r1w_synth_width_p1_els_p2_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i[0]),
    .w_data_i(w_data_i[0]),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i[0]),
    .r_data_o(r_data_o[0])
  );


endmodule



module bsg_two_fifo_width_p1
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

  input [0:0] data_i;
  output [0:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [0:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p1_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i[0]),
    .r_v_i(n_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o[0])
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



module bsg_decode_num_out_p9
(
  i,
  o
);

  input [3:0] i;
  output [8:0] o;
  wire [8:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule



module bsg_decode_with_v_num_out_p9
(
  i,
  v_i,
  o
);

  input [3:0] i;
  output [8:0] o;
  input v_i;
  wire [8:0] o,lo;

  bsg_decode_num_out_p9
  bd
  (
    .i(i),
    .o(lo)
  );

  assign o[8] = v_i & lo[8];
  assign o[7] = v_i & lo[7];
  assign o[6] = v_i & lo[6];
  assign o[5] = v_i & lo[5];
  assign o[4] = v_i & lo[4];
  assign o[3] = v_i & lo[3];
  assign o[2] = v_i & lo[2];
  assign o[1] = v_i & lo[1];
  assign o[0] = v_i & lo[0];

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



module bsg_serial_in_parallel_out_dynamic_width_p64_max_els_p9
(
  clk_i,
  reset_i,
  v_i,
  len_i,
  data_i,
  ready_o,
  len_ready_o,
  v_o,
  data_o,
  yumi_i
);

  input [3:0] len_i;
  input [63:0] data_i;
  output [575:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output len_ready_o;
  output v_o;
  wire [575:0] data_o;
  wire ready_o,len_ready_o,v_o,N0,N1,yumi_lo,N2,N3,count_r_is_last,up_li,clear_li,
  dff_en_li,one_word_lo,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42;
  wire [3:0] count_lo,len_lo,len_r;
  wire [8:0] fifo_ready_lo,fifo_valid_lo,fifo_valid_li;
  wire [8:1] fifo_yumi_li;
  assign count_r_is_last = count_lo == len_lo;

  bsg_counter_clear_up_max_val_p8_init_val_p0
  ctr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_li),
    .up_i(up_li),
    .count_o(count_lo)
  );


  bsg_dff_reset_en_width_p4_reset_val_p0
  dff_len
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .en_i(dff_en_li),
    .data_i(len_i),
    .data_o(len_r)
  );


  bsg_two_fifo_width_p1
  go_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(len_ready_o),
    .v_i(clear_li),
    .v_o(v_o),
    .data_o(one_word_lo),
    .yumi_i(yumi_i)
  );


  bsg_decode_with_v_num_out_p9
  bdwv
  (
    .i(count_lo),
    .v_i(v_i),
    .o(fifo_valid_li)
  );


  bsg_two_fifo_width_p64
  fifos_0__twofifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[0]),
    .data_i(data_i),
    .v_i(fifo_valid_li[0]),
    .v_o(fifo_valid_lo[0]),
    .data_o(data_o[63:0]),
    .yumi_i(yumi_i)
  );


  bsg_one_fifo
  fifos_1__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[1]),
    .data_i(data_i),
    .v_i(fifo_valid_li[1]),
    .v_o(fifo_valid_lo[1]),
    .data_o(data_o[127:64]),
    .yumi_i(fifo_yumi_li[1])
  );


  bsg_one_fifo
  fifos_2__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[2]),
    .data_i(data_i),
    .v_i(fifo_valid_li[2]),
    .v_o(fifo_valid_lo[2]),
    .data_o(data_o[191:128]),
    .yumi_i(fifo_yumi_li[2])
  );


  bsg_one_fifo
  fifos_3__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[3]),
    .data_i(data_i),
    .v_i(fifo_valid_li[3]),
    .v_o(fifo_valid_lo[3]),
    .data_o(data_o[255:192]),
    .yumi_i(fifo_yumi_li[3])
  );


  bsg_one_fifo
  fifos_4__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[4]),
    .data_i(data_i),
    .v_i(fifo_valid_li[4]),
    .v_o(fifo_valid_lo[4]),
    .data_o(data_o[319:256]),
    .yumi_i(fifo_yumi_li[4])
  );


  bsg_one_fifo
  fifos_5__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[5]),
    .data_i(data_i),
    .v_i(fifo_valid_li[5]),
    .v_o(fifo_valid_lo[5]),
    .data_o(data_o[383:320]),
    .yumi_i(fifo_yumi_li[5])
  );


  bsg_one_fifo
  fifos_6__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[6]),
    .data_i(data_i),
    .v_i(fifo_valid_li[6]),
    .v_o(fifo_valid_lo[6]),
    .data_o(data_o[447:384]),
    .yumi_i(fifo_yumi_li[6])
  );


  bsg_one_fifo
  fifos_7__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[7]),
    .data_i(data_i),
    .v_i(fifo_valid_li[7]),
    .v_o(fifo_valid_lo[7]),
    .data_o(data_o[511:448]),
    .yumi_i(fifo_yumi_li[7])
  );


  bsg_one_fifo
  fifos_8__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[8]),
    .data_i(data_i),
    .v_i(fifo_valid_li[8]),
    .v_o(fifo_valid_lo[8]),
    .data_o(data_o[575:512]),
    .yumi_i(fifo_yumi_li[8])
  );

  assign N29 = count_lo[2] | count_lo[3];
  assign N30 = count_lo[1] | N29;
  assign N31 = count_lo[0] | N30;
  assign len_ready_o = ~N31;
  assign len_lo = (N0)? len_i : 
                  (N1)? len_r : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign ready_o = (N20)? fifo_ready_lo[0] : 
                   (N22)? fifo_ready_lo[1] : 
                   (N23)? fifo_ready_lo[2] : 
                   (N24)? fifo_ready_lo[3] : 
                   (N25)? fifo_ready_lo[4] : 
                   (N26)? fifo_ready_lo[5] : 
                   (N27)? fifo_ready_lo[6] : 
                   (N28)? fifo_ready_lo[7] : 
                   (N21)? fifo_ready_lo[8] : 1'b0;
  assign yumi_lo = v_i & ready_o;
  assign N2 = ~len_ready_o;
  assign N3 = len_ready_o;
  assign up_li = yumi_lo & N33;
  assign N33 = ~count_r_is_last;
  assign clear_li = yumi_lo & count_r_is_last;
  assign dff_en_li = yumi_lo & len_ready_o;
  assign N4 = ~count_lo[0];
  assign N5 = ~count_lo[1];
  assign N6 = N4 & N5;
  assign N7 = N4 & count_lo[1];
  assign N8 = count_lo[0] & N5;
  assign N9 = count_lo[0] & count_lo[1];
  assign N10 = ~count_lo[2];
  assign N11 = N6 & N10;
  assign N12 = N6 & count_lo[2];
  assign N13 = N8 & N10;
  assign N14 = N8 & count_lo[2];
  assign N15 = N7 & N10;
  assign N16 = N7 & count_lo[2];
  assign N17 = N9 & N10;
  assign N18 = N9 & count_lo[2];
  assign N19 = ~count_lo[3];
  assign N20 = N11 & N19;
  assign N21 = N11 & count_lo[3];
  assign N22 = N13 & N19;
  assign N23 = N15 & N19;
  assign N24 = N17 & N19;
  assign N25 = N12 & N19;
  assign N26 = N14 & N19;
  assign N27 = N16 & N19;
  assign N28 = N18 & N19;
  assign fifo_yumi_li[1] = N34 & N35;
  assign N34 = fifo_valid_lo[1] & yumi_i;
  assign N35 = ~one_word_lo;
  assign fifo_yumi_li[2] = N36 & N35;
  assign N36 = fifo_valid_lo[2] & yumi_i;
  assign fifo_yumi_li[3] = N37 & N35;
  assign N37 = fifo_valid_lo[3] & yumi_i;
  assign fifo_yumi_li[4] = N38 & N35;
  assign N38 = fifo_valid_lo[4] & yumi_i;
  assign fifo_yumi_li[5] = N39 & N35;
  assign N39 = fifo_valid_lo[5] & yumi_i;
  assign fifo_yumi_li[6] = N40 & N35;
  assign N40 = fifo_valid_lo[6] & yumi_i;
  assign fifo_yumi_li[7] = N41 & N35;
  assign N41 = fifo_valid_lo[7] & yumi_i;
  assign fifo_yumi_li[8] = N42 & N35;
  assign N42 = fifo_valid_lo[8] & yumi_i;

endmodule



module bsg_wormhole_router_adapter_out
(
  clk_i,
  reset_i,
  link_i,
  link_o,
  packet_o,
  v_o,
  yumi_i
);

  input [65:0] link_i;
  output [65:0] link_o;
  output [527:0] packet_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;
  wire [65:0] link_o;
  wire [527:0] packet_o;
  wire v_o;
  wire [575:528] packet_padded_lo;
  assign link_o[0] = 1'b0;
  assign link_o[1] = 1'b0;
  assign link_o[2] = 1'b0;
  assign link_o[3] = 1'b0;
  assign link_o[4] = 1'b0;
  assign link_o[5] = 1'b0;
  assign link_o[6] = 1'b0;
  assign link_o[7] = 1'b0;
  assign link_o[8] = 1'b0;
  assign link_o[9] = 1'b0;
  assign link_o[10] = 1'b0;
  assign link_o[11] = 1'b0;
  assign link_o[12] = 1'b0;
  assign link_o[13] = 1'b0;
  assign link_o[14] = 1'b0;
  assign link_o[15] = 1'b0;
  assign link_o[16] = 1'b0;
  assign link_o[17] = 1'b0;
  assign link_o[18] = 1'b0;
  assign link_o[19] = 1'b0;
  assign link_o[20] = 1'b0;
  assign link_o[21] = 1'b0;
  assign link_o[22] = 1'b0;
  assign link_o[23] = 1'b0;
  assign link_o[24] = 1'b0;
  assign link_o[25] = 1'b0;
  assign link_o[26] = 1'b0;
  assign link_o[27] = 1'b0;
  assign link_o[28] = 1'b0;
  assign link_o[29] = 1'b0;
  assign link_o[30] = 1'b0;
  assign link_o[31] = 1'b0;
  assign link_o[32] = 1'b0;
  assign link_o[33] = 1'b0;
  assign link_o[34] = 1'b0;
  assign link_o[35] = 1'b0;
  assign link_o[36] = 1'b0;
  assign link_o[37] = 1'b0;
  assign link_o[38] = 1'b0;
  assign link_o[39] = 1'b0;
  assign link_o[40] = 1'b0;
  assign link_o[41] = 1'b0;
  assign link_o[42] = 1'b0;
  assign link_o[43] = 1'b0;
  assign link_o[44] = 1'b0;
  assign link_o[45] = 1'b0;
  assign link_o[46] = 1'b0;
  assign link_o[47] = 1'b0;
  assign link_o[48] = 1'b0;
  assign link_o[49] = 1'b0;
  assign link_o[50] = 1'b0;
  assign link_o[51] = 1'b0;
  assign link_o[52] = 1'b0;
  assign link_o[53] = 1'b0;
  assign link_o[54] = 1'b0;
  assign link_o[55] = 1'b0;
  assign link_o[56] = 1'b0;
  assign link_o[57] = 1'b0;
  assign link_o[58] = 1'b0;
  assign link_o[59] = 1'b0;
  assign link_o[60] = 1'b0;
  assign link_o[61] = 1'b0;
  assign link_o[62] = 1'b0;
  assign link_o[63] = 1'b0;
  assign link_o[65] = 1'b0;

  bsg_serial_in_parallel_out_dynamic_width_p64_max_els_p9
  sipo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(link_i[65]),
    .len_i(link_i[11:8]),
    .data_i(link_i[63:0]),
    .ready_o(link_o[64]),
    .v_o(v_o),
    .data_o({ packet_padded_lo, packet_o }),
    .yumi_i(yumi_i)
  );


endmodule

