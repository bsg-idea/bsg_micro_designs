

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

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;

  bsg_fifo_1r1w_pseudo_large
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



module bsg_two_fifo_width_p32_verbose_p0_allow_enq_deq_on_full_p1
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

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [31:0] data_o;
  wire ready_o,v_o,N0,N1,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,
  N17,N18,N19,N20,N21,N22,N23,N24,N25,N26;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(v_i),
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
  assign N2 = ~reset_i;
  assign N3 = reset_i;
  assign N5 = v_i;
  assign N4 = ~tail_r;
  assign N6 = ~head_r;
  assign N7 = N16 | N19;
  assign N16 = empty_r & N15;
  assign N15 = ~v_i;
  assign N19 = N18 & N15;
  assign N18 = N17 & yumi_i;
  assign N17 = ~full_r;
  assign N8 = N23 | N26;
  assign N23 = N21 & N22;
  assign N21 = N20 & v_i;
  assign N20 = ~empty_r;
  assign N22 = ~yumi_i;
  assign N26 = full_r & N25;
  assign N25 = ~N24;
  assign N24 = yumi_i ^ v_i;

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



module bsg_fifo_1r1w_pseudo_large
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

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [31:0] data_o,little_data,big_data_lo;
  wire ready_o,v_o,N0,N1,N2,N3,little_ready_lo,little_will_have_space,N4,N5,big_deq,N6,
  big_full_lo,big_empty_lo,N7,N8,little_valid,big_enq,N9,N10,N11,N12,N13,
  big_valid,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23;
  reg big_deq_r;

  bsg_fifo_1rw_large
  big1p
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(big_valid),
    .enq_not_deq_i(big_enq),
    .full_o(big_full_lo),
    .empty_o(big_empty_lo),
    .data_o(big_data_lo)
  );


  bsg_two_fifo_width_p32_verbose_p0_allow_enq_deq_on_full_p1
  little2p
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(little_ready_lo),
    .data_i(little_data),
    .v_i(little_valid),
    .v_o(v_o),
    .data_o(data_o),
    .yumi_i(yumi_i)
  );

  assign N6 = (N0)? 1'b0 : 
              (N1)? big_deq : 1'b0;
  assign N0 = N5;
  assign N1 = N4;
  assign little_valid = (N2)? 1'b1 : 
                        (N15)? N10 : 
                        (N8)? 1'b0 : 1'b0;
  assign N2 = big_deq_r;
  assign big_enq = (N2)? v_i : 
                   (N15)? N11 : 
                   (N8)? N12 : 1'b0;
  assign big_deq = (N2)? N9 : 
                   (N15)? 1'b0 : 
                   (N8)? N13 : 1'b0;
  assign little_data = (N2)? big_data_lo : 
                       (N3)? data_i : 1'b0;
  assign N3 = N16;
  assign little_will_have_space = little_ready_lo | yumi_i;
  assign N4 = ~reset_i;
  assign N5 = reset_i;
  assign ready_o = ~big_full_lo;
  assign N7 = big_empty_lo | big_deq_r;
  assign N8 = ~N7;
  assign N9 = N19 & N20;
  assign N19 = N17 & N18;
  assign N17 = ~big_empty_lo;
  assign N18 = ~v_i;
  assign N20 = ~v_o;
  assign N10 = v_i & little_will_have_space;
  assign N11 = v_i & N21;
  assign N21 = ~little_will_have_space;
  assign N12 = v_i & N22;
  assign N22 = ~big_full_lo;
  assign N13 = N23 & little_will_have_space;
  assign N23 = ~N12;
  assign big_valid = big_enq | big_deq;
  assign N14 = ~big_deq_r;
  assign N15 = big_empty_lo & N14;
  assign N16 = ~big_deq_r;

  always @(posedge clk_i) begin
    if(1'b1) begin
      big_deq_r <= N6;
    end 
  end


endmodule

