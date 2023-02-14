

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
  input [31:0] data_i;
  output [15:0] data_o;
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



module bsg_mem_1r1w_synth_width_p16_els_p2_read_write_same_addr_p0_harden_p0
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
  input [15:0] w_data_i;
  input [0:0] r_addr_i;
  output [15:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [15:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [31:0] mem;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[31] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[30] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[29] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[28] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[27] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[26] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[25] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[24] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[23] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[22] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[21] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[20] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[19] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[18] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[17] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[16] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[31:16] } <= { w_data_i[15:0] };
    end 
    if(N7) begin
      { mem[15:0] } <= { w_data_i[15:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p16_els_p2_read_write_same_addr_p0
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
  input [15:0] w_data_i;
  input [0:0] r_addr_i;
  output [15:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [15:0] r_data_o;

  bsg_mem_1r1w_synth_width_p16_els_p2_read_write_same_addr_p0_harden_p0
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



module bsg_two_fifo_width_p16
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

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [15:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p16_els_p2_read_write_same_addr_p0
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
  input [31:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input ready_i;
  output ready_o;
  output yumi_o;
  output v_o;
  wire [15:0] data_o;
  wire ready_o,yumi_o,v_o,N0,N1,N2,N3,N4,source_sel,fifo_ready,N5,N6,N7,N8,N9,N10,
  n_0_net__15_,n_0_net__14_,n_0_net__13_,n_0_net__12_,n_0_net__11_,n_0_net__10_,
  n_0_net__9_,n_0_net__8_,n_0_net__7_,n_0_net__6_,n_0_net__5_,n_0_net__4_,n_0_net__3_,
  n_0_net__2_,n_0_net__1_,n_0_net__0_,n_1_net_,n_2_net_,N11,N12,N13,N14,N15;
  reg v1_blocked_r;

  bsg_two_fifo_width_p16
  fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready),
    .data_i({ n_0_net__15_, n_0_net__14_, n_0_net__13_, n_0_net__12_, n_0_net__11_, n_0_net__10_, n_0_net__9_, n_0_net__8_, n_0_net__7_, n_0_net__6_, n_0_net__5_, n_0_net__4_, n_0_net__3_, n_0_net__2_, n_0_net__1_, n_0_net__0_ }),
    .v_i(n_2_net_),
    .v_o(v_o),
    .data_o(data_o),
    .yumi_i(n_1_net_)
  );

  assign n_0_net__15_ = (N11)? data_i[15] : 
                        (N0)? data_i[31] : 1'b0;
  assign N0 = source_sel;
  assign n_0_net__14_ = (N11)? data_i[14] : 
                        (N0)? data_i[30] : 1'b0;
  assign n_0_net__13_ = (N11)? data_i[13] : 
                        (N0)? data_i[29] : 1'b0;
  assign n_0_net__12_ = (N11)? data_i[12] : 
                        (N0)? data_i[28] : 1'b0;
  assign n_0_net__11_ = (N11)? data_i[11] : 
                        (N0)? data_i[27] : 1'b0;
  assign n_0_net__10_ = (N11)? data_i[10] : 
                        (N0)? data_i[26] : 1'b0;
  assign n_0_net__9_ = (N11)? data_i[9] : 
                       (N0)? data_i[25] : 1'b0;
  assign n_0_net__8_ = (N11)? data_i[8] : 
                       (N0)? data_i[24] : 1'b0;
  assign n_0_net__7_ = (N11)? data_i[7] : 
                       (N0)? data_i[23] : 1'b0;
  assign n_0_net__6_ = (N11)? data_i[6] : 
                       (N0)? data_i[22] : 1'b0;
  assign n_0_net__5_ = (N11)? data_i[5] : 
                       (N0)? data_i[21] : 1'b0;
  assign n_0_net__4_ = (N11)? data_i[4] : 
                       (N0)? data_i[20] : 1'b0;
  assign n_0_net__3_ = (N11)? data_i[3] : 
                       (N0)? data_i[19] : 1'b0;
  assign n_0_net__2_ = (N11)? data_i[2] : 
                       (N0)? data_i[18] : 1'b0;
  assign n_0_net__1_ = (N11)? data_i[1] : 
                       (N0)? data_i[17] : 1'b0;
  assign n_0_net__0_ = (N11)? data_i[0] : 
                       (N0)? data_i[16] : 1'b0;
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

