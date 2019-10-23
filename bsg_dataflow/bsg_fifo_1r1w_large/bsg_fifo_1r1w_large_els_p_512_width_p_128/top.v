

module top
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

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;

  bsg_fifo_1r1w_large
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .yumi_i(yumi_i),
    .ready_o(ready_o),
    .v_o(v_o)
  );


endmodule



module bsg_two_fifo_width_p128
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

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [127:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w
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



module bsg_fifo_1r1w_large
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

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [127:0] data_o;
  wire ready_o,v_o,N0,N1,N2,N3,big_deq,big_valid,big_full_lo,big_empty_lo,bypass_mode,
  can_spill,emergency,will_spill,N4,N5,N6,n_0_net__1_,n_0_net__0_,N7,N8,N9,N10,N11,
  N12,N13,N14,N15,N16,N17,N18,N19,N20,N21;
  wire [1:0] valid_sipo,yumi_cnt_sipo,little_ready,little_ready_rot,valid_int,bypass_vector,
  little_valid,cnt,little_valid_rot,yumi_int;
  wire [255:0] data_sipo,big_data_lo,little_data,little_data_rot,data_int;
  reg big_deq_r;

  bsg_serial_in_parallel_out
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


  bsg_fifo_1rw_large
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


  bsg_thermometer_count
  thermo
  (
    .i({ n_0_net__1_, n_0_net__0_ }),
    .o(cnt)
  );


  bsg_round_robin_2_to_2
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


  bsg_two_fifo_width_p128
  twofer_0__little
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(little_ready_rot[0]),
    .data_i(little_data_rot[127:0]),
    .v_i(little_valid_rot[0]),
    .v_o(valid_int[0]),
    .data_o(data_int[127:0]),
    .yumi_i(yumi_int[0])
  );


  bsg_two_fifo_width_p128
  twofer_1__little
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(little_ready_rot[1]),
    .data_i(little_data_rot[255:128]),
    .v_i(little_valid_rot[1]),
    .v_o(valid_int[1]),
    .data_o(data_int[255:128]),
    .yumi_i(yumi_int[1])
  );


  bsg_round_robin_n_to_1
  round_robin_n_to_1
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_int),
    .v_i(valid_int),
    .yumi_o(yumi_int),
    .data_o(data_o),
    .v_o(v_o),
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

