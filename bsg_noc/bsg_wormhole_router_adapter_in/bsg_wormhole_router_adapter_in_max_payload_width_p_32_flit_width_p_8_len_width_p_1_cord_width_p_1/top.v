

module top
(
  clk_i,
  reset_i,
  packet_i,
  v_i,
  ready_o,
  link_o,
  link_i
);

  input [33:0] packet_i;
  output [9:0] link_o;
  input [9:0] link_i;
  input clk_i;
  input reset_i;
  input v_i;
  output ready_o;

  bsg_wormhole_router_adapter_in
  wrapper
  (
    .packet_i(packet_i),
    .link_o(link_o),
    .link_i(link_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o)
  );


endmodule



module bsg_mem_1r1w_synth_width_p3_els_p2_read_write_same_addr_p0_harden_p0
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
  input [2:0] w_data_i;
  input [0:0] r_addr_i;
  output [2:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [2:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [5:0] mem;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[5] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[4] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[3] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[5:3] } <= { w_data_i[2:0] };
    end 
    if(N7) begin
      { mem[2:0] } <= { w_data_i[2:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p3_els_p2_read_write_same_addr_p0
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
  input [2:0] w_data_i;
  input [0:0] r_addr_i;
  output [2:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [2:0] r_data_o;

  bsg_mem_1r1w_synth_width_p3_els_p2_read_write_same_addr_p0_harden_p0
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



module bsg_two_fifo_width_p3
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

  input [2:0] data_i;
  output [2:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [2:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p3_els_p2_read_write_same_addr_p0
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



module bsg_mem_1r1w_synth_width_p40_els_p2_read_write_same_addr_p0_harden_p0
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
  input [39:0] w_data_i;
  input [0:0] r_addr_i;
  output [39:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [39:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [79:0] mem;
  assign r_data_o[39] = (N3)? mem[39] : 
                        (N0)? mem[79] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[38] = (N3)? mem[38] : 
                        (N0)? mem[78] : 1'b0;
  assign r_data_o[37] = (N3)? mem[37] : 
                        (N0)? mem[77] : 1'b0;
  assign r_data_o[36] = (N3)? mem[36] : 
                        (N0)? mem[76] : 1'b0;
  assign r_data_o[35] = (N3)? mem[35] : 
                        (N0)? mem[75] : 1'b0;
  assign r_data_o[34] = (N3)? mem[34] : 
                        (N0)? mem[74] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] : 
                        (N0)? mem[73] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] : 
                        (N0)? mem[72] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[71] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[70] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[69] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[68] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[67] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[66] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[65] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[64] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[63] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[62] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[61] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[60] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[59] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[58] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[57] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[56] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[55] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[54] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[53] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[52] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[51] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[50] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[49] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[48] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[47] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[46] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[45] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[44] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[43] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[42] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[41] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[40] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[79:40] } <= { w_data_i[39:0] };
    end 
    if(N7) begin
      { mem[39:0] } <= { w_data_i[39:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p40_els_p2_read_write_same_addr_p0
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
  input [39:0] w_data_i;
  input [0:0] r_addr_i;
  output [39:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [39:0] r_data_o;

  bsg_mem_1r1w_synth_width_p40_els_p2_read_write_same_addr_p0_harden_p0
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



module bsg_two_fifo_width_p40
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

  input [39:0] data_i;
  output [39:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [39:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p40_els_p2_read_write_same_addr_p0
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



module bsg_counter_clear_up_max_val_p4_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [2:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14;
  reg [2:0] count_o;
  assign { N8, N7, N6 } = { N14, N13, N12 } + up_i;
  assign { N11, N10, N9 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                            (N1)? { N8, N7, N6 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign { N14, N13, N12 } = count_o * N4;
  assign N2 = ~reset_i;
  assign N3 = N2;
  assign N4 = ~clear_i;
  assign N5 = N3 & N4;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_o[2:0] } <= { N11, N10, N9 };
    end 
  end


endmodule



module bsg_mux_width_p8_els_p5
(
  data_i,
  sel_i,
  data_o
);

  input [39:0] data_i;
  input [2:0] sel_i;
  output [7:0] data_o;
  wire [7:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13;
  assign N10 = N0 & N1 & N2;
  assign N0 = ~sel_i[2];
  assign N1 = ~sel_i[0];
  assign N2 = ~sel_i[1];
  assign N11 = sel_i[0] & N3;
  assign N3 = ~sel_i[1];
  assign N12 = N4 & sel_i[1];
  assign N4 = ~sel_i[0];
  assign N13 = sel_i[0] & sel_i[1];
  assign data_o[7] = (N5)? data_i[7] : 
                     (N6)? data_i[15] : 
                     (N7)? data_i[23] : 
                     (N8)? data_i[31] : 
                     (N9)? data_i[39] : 1'b0;
  assign N5 = N10;
  assign N6 = N11;
  assign N7 = N12;
  assign N8 = N13;
  assign N9 = sel_i[2];
  assign data_o[6] = (N5)? data_i[6] : 
                     (N6)? data_i[14] : 
                     (N7)? data_i[22] : 
                     (N8)? data_i[30] : 
                     (N9)? data_i[38] : 1'b0;
  assign data_o[5] = (N5)? data_i[5] : 
                     (N6)? data_i[13] : 
                     (N7)? data_i[21] : 
                     (N8)? data_i[29] : 
                     (N9)? data_i[37] : 1'b0;
  assign data_o[4] = (N5)? data_i[4] : 
                     (N6)? data_i[12] : 
                     (N7)? data_i[20] : 
                     (N8)? data_i[28] : 
                     (N9)? data_i[36] : 1'b0;
  assign data_o[3] = (N5)? data_i[3] : 
                     (N6)? data_i[11] : 
                     (N7)? data_i[19] : 
                     (N8)? data_i[27] : 
                     (N9)? data_i[35] : 1'b0;
  assign data_o[2] = (N5)? data_i[2] : 
                     (N6)? data_i[10] : 
                     (N7)? data_i[18] : 
                     (N8)? data_i[26] : 
                     (N9)? data_i[34] : 1'b0;
  assign data_o[1] = (N5)? data_i[1] : 
                     (N6)? data_i[9] : 
                     (N7)? data_i[17] : 
                     (N8)? data_i[25] : 
                     (N9)? data_i[33] : 1'b0;
  assign data_o[0] = (N5)? data_i[0] : 
                     (N6)? data_i[8] : 
                     (N7)? data_i[16] : 
                     (N8)? data_i[24] : 
                     (N9)? data_i[32] : 1'b0;

endmodule



module bsg_parallel_in_serial_out_dynamic_width_p8_max_els_p5
(
  clk_i,
  reset_i,
  v_i,
  len_i,
  data_i,
  ready_o,
  v_o,
  len_v_o,
  data_o,
  yumi_i
);

  input [2:0] len_i;
  input [39:0] data_i;
  output [7:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  output len_v_o;
  wire [7:0] data_o;
  wire ready_o,v_o,len_v_o,count_r_is_last,up_li,clear_li,N0,N1,N3;
  wire [2:0] len_lo,count_lo;
  wire [39:0] fifo_data_lo;

  bsg_two_fifo_width_p3
  go_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_o),
    .data_i(len_i),
    .v_i(v_i),
    .v_o(v_o),
    .data_o(len_lo),
    .yumi_i(clear_li)
  );


  bsg_two_fifo_width_p40
  data_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(v_i),
    .data_o(fifo_data_lo),
    .yumi_i(clear_li)
  );

  assign count_r_is_last = count_lo == len_lo;

  bsg_counter_clear_up_max_val_p4_init_val_p0
  ctr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_li),
    .up_i(up_li),
    .count_o(count_lo)
  );


  bsg_mux_width_p8_els_p5
  data_mux
  (
    .data_i(fifo_data_lo),
    .sel_i(count_lo),
    .data_o(data_o)
  );

  assign N0 = count_lo[1] | count_lo[2];
  assign N1 = count_lo[0] | N0;
  assign len_v_o = ~N1;
  assign up_li = yumi_i & N3;
  assign N3 = ~count_r_is_last;
  assign clear_li = yumi_i & count_r_is_last;

endmodule



module bsg_wormhole_router_adapter_in
(
  clk_i,
  reset_i,
  packet_i,
  v_i,
  ready_o,
  link_o,
  link_i
);

  input [33:0] packet_i;
  output [9:0] link_o;
  input [9:0] link_i;
  input clk_i;
  input reset_i;
  input v_i;
  output ready_o;
  wire [9:0] link_o;
  wire ready_o,n_3_net_;
  assign link_o[8] = 1'b0;

  bsg_parallel_in_serial_out_dynamic_width_p8_max_els_p5
  piso
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .len_i({ 1'b0, 1'b0, packet_i[1:1] }),
    .data_i({ 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, packet_i }),
    .ready_o(ready_o),
    .v_o(link_o[9]),
    .data_o(link_o[7:0]),
    .yumi_i(n_3_net_)
  );

  assign n_3_net_ = link_i[8] & link_o[9];

endmodule

