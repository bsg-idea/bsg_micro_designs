

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

  input [9:0] link_i;
  output [9:0] link_o;
  output [33:0] packet_o;
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



module bsg_dff_reset_en_width_p3_reset_val_p0
(
  clk_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [2:0] data_i;
  output [2:0] data_o;
  input clk_i;
  input reset_i;
  input en_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8;
  reg [2:0] data_o;
  assign N3 = (N0)? 1'b1 : 
              (N8)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                          (N8)? data_i : 1'b0;
  assign N1 = en_i | reset_i;
  assign N2 = ~N1;
  assign N7 = ~reset_i;
  assign N8 = en_i & N7;

  always @(posedge clk_i) begin
    if(N3) begin
      { data_o[2:0] } <= { N6, N5, N4 };
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



module bsg_decode_num_out_p5
(
  i,
  o
);

  input [2:0] i;
  output [4:0] o;
  wire [4:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule



module bsg_decode_with_v_num_out_p5
(
  i,
  v_i,
  o
);

  input [2:0] i;
  output [4:0] o;
  input v_i;
  wire [4:0] o,lo;

  bsg_decode_num_out_p5
  bd
  (
    .i(i),
    .o(lo)
  );

  assign o[4] = v_i & lo[4];
  assign o[3] = v_i & lo[3];
  assign o[2] = v_i & lo[2];
  assign o[1] = v_i & lo[1];
  assign o[0] = v_i & lo[0];

endmodule



module bsg_mem_1r1w_synth_width_p8_els_p2_read_write_same_addr_p0_harden_p0
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
  input [7:0] w_data_i;
  input [0:0] r_addr_i;
  output [7:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [7:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [15:0] mem;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[15] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[14] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[13] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[12] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[11] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[10] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[9] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[8] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[15:8] } <= { w_data_i[7:0] };
    end 
    if(N7) begin
      { mem[7:0] } <= { w_data_i[7:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p8_els_p2_read_write_same_addr_p0
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
  input [7:0] w_data_i;
  input [0:0] r_addr_i;
  output [7:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [7:0] r_data_o;

  bsg_mem_1r1w_synth_width_p8_els_p2_read_write_same_addr_p0_harden_p0
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



module bsg_two_fifo_width_p8
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

  input [7:0] data_i;
  output [7:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [7:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p8_els_p2_read_write_same_addr_p0
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



module bsg_serial_in_parallel_out_dynamic_width_p8_max_els_p5
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

  input [2:0] len_i;
  input [7:0] data_i;
  output [39:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output len_ready_o;
  output v_o;
  wire [39:0] data_o;
  wire ready_o,len_ready_o,v_o,N0,N1,yumi_lo,N2,N3,count_r_is_last,up_li,clear_li,
  dff_en_li,one_word_lo,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N19,N20,N21,
  N22,N23,N24;
  wire [2:0] count_lo,len_lo,len_r;
  wire [4:0] fifo_ready_lo,fifo_valid_lo,fifo_valid_li;
  wire [4:1] fifo_yumi_li;
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


  bsg_dff_reset_en_width_p3_reset_val_p0
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


  bsg_decode_with_v_num_out_p5
  bdwv
  (
    .i(count_lo),
    .v_i(v_i),
    .o(fifo_valid_li)
  );


  bsg_two_fifo_width_p8
  fifos_0__twofifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[0]),
    .data_i(data_i),
    .v_i(fifo_valid_li[0]),
    .v_o(fifo_valid_lo[0]),
    .data_o(data_o[7:0]),
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
    .data_o(data_o[15:8]),
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
    .data_o(data_o[23:16]),
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
    .data_o(data_o[31:24]),
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
    .data_o(data_o[39:32]),
    .yumi_i(fifo_yumi_li[4])
  );

  assign N16 = count_lo[1] | count_lo[2];
  assign N17 = count_lo[0] | N16;
  assign len_ready_o = ~N17;
  assign len_lo = (N0)? len_i : 
                  (N1)? len_r : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign ready_o = (N11)? fifo_ready_lo[0] : 
                   (N13)? fifo_ready_lo[1] : 
                   (N14)? fifo_ready_lo[2] : 
                   (N15)? fifo_ready_lo[3] : 
                   (N12)? fifo_ready_lo[4] : 1'b0;
  assign yumi_lo = v_i & ready_o;
  assign N2 = ~len_ready_o;
  assign N3 = len_ready_o;
  assign up_li = yumi_lo & N19;
  assign N19 = ~count_r_is_last;
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
  assign N14 = N7 & N10;
  assign N15 = N9 & N10;
  assign fifo_yumi_li[1] = N20 & N21;
  assign N20 = fifo_valid_lo[1] & yumi_i;
  assign N21 = ~one_word_lo;
  assign fifo_yumi_li[2] = N22 & N21;
  assign N22 = fifo_valid_lo[2] & yumi_i;
  assign fifo_yumi_li[3] = N23 & N21;
  assign N23 = fifo_valid_lo[3] & yumi_i;
  assign fifo_yumi_li[4] = N24 & N21;
  assign N24 = fifo_valid_lo[4] & yumi_i;

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

  input [9:0] link_i;
  output [9:0] link_o;
  output [33:0] packet_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;
  wire [9:0] link_o;
  wire [33:0] packet_o;
  wire v_o;
  wire [39:34] packet_padded_lo;
  assign link_o[0] = 1'b0;
  assign link_o[1] = 1'b0;
  assign link_o[2] = 1'b0;
  assign link_o[3] = 1'b0;
  assign link_o[4] = 1'b0;
  assign link_o[5] = 1'b0;
  assign link_o[6] = 1'b0;
  assign link_o[7] = 1'b0;
  assign link_o[9] = 1'b0;

  bsg_serial_in_parallel_out_dynamic_width_p8_max_els_p5
  sipo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(link_i[9]),
    .len_i({ 1'b0, 1'b0, link_i[1:1] }),
    .data_i(link_i[7:0]),
    .ready_o(link_o[8]),
    .v_o(v_o),
    .data_o({ packet_padded_lo, packet_o }),
    .yumi_i(yumi_i)
  );


endmodule

