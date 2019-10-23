

module top
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

  input [31:0] data_i;
  input [1:0] v_i;
  output [1:0] yumi_o;
  output [15:0] data_o;
  output [0:0] tag_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;

  bsg_round_robin_n_to_1
  wrapper
  (
    .data_i(data_i),
    .v_i(v_i),
    .yumi_o(yumi_o),
    .data_o(data_o),
    .tag_o(tag_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .yumi_i(yumi_i),
    .v_o(v_o)
  );


endmodule



module bsg_round_robin_arb_inputs_p2
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

  input [1:0] reqs_i;
  output [1:0] grants_o;
  output [1:0] sel_one_hot_o;
  output [0:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [1:0] grants_o,sel_one_hot_o;
  wire [0:0] tag_o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22;
  reg [0:0] last_r;
  assign N13 = N0 & N1;
  assign N0 = ~reqs_i[1];
  assign N1 = ~reqs_i[0];
  assign N14 = reqs_i[1] & N2;
  assign N2 = ~last_r[0];
  assign N15 = N3 & reqs_i[0] & N4;
  assign N3 = ~reqs_i[1];
  assign N4 = ~last_r[0];
  assign N16 = reqs_i[0] & last_r[0];
  assign N17 = reqs_i[1] & N5 & last_r[0];
  assign N5 = ~reqs_i[0];
  assign sel_one_hot_o = (N6)? { 1'b0, 1'b0 } : 
                         (N7)? { 1'b1, 1'b0 } : 
                         (N8)? { 1'b0, 1'b1 } : 
                         (N9)? { 1'b0, 1'b1 } : 
                         (N10)? { 1'b1, 1'b0 } : 1'b0;
  assign N6 = N13;
  assign N7 = N14;
  assign N8 = N15;
  assign N9 = N16;
  assign N10 = N17;
  assign tag_o[0] = (N6)? 1'b0 : 
                    (N7)? 1'b1 : 
                    (N8)? 1'b0 : 
                    (N9)? 1'b0 : 
                    (N10)? 1'b1 : 1'b0;
  assign N20 = (N11)? 1'b0 : 
               (N12)? tag_o[0] : 1'b0;
  assign N11 = reset_i;
  assign N12 = N19;
  assign grants_o[1] = sel_one_hot_o[1] & grants_en_i;
  assign grants_o[0] = sel_one_hot_o[0] & grants_en_i;
  assign v_o = reqs_i[1] | reqs_i[0];
  assign N18 = ~yumi_i;
  assign N19 = ~reset_i;
  assign N21 = N18 & N19;
  assign N22 = ~N21;

  always @(posedge clk_i) begin
    if(N22) begin
      { last_r[0:0] } <= { N20 };
    end 
  end


endmodule



module bsg_mux_one_hot_width_p16_els_p2
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [31:0] data_i;
  input [1:0] sel_one_hot_i;
  output [15:0] data_o;
  wire [15:0] data_o;
  wire [31:0] data_masked;
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
  assign data_masked[31] = data_i[31] & sel_one_hot_i[1];
  assign data_masked[30] = data_i[30] & sel_one_hot_i[1];
  assign data_masked[29] = data_i[29] & sel_one_hot_i[1];
  assign data_masked[28] = data_i[28] & sel_one_hot_i[1];
  assign data_masked[27] = data_i[27] & sel_one_hot_i[1];
  assign data_masked[26] = data_i[26] & sel_one_hot_i[1];
  assign data_masked[25] = data_i[25] & sel_one_hot_i[1];
  assign data_masked[24] = data_i[24] & sel_one_hot_i[1];
  assign data_masked[23] = data_i[23] & sel_one_hot_i[1];
  assign data_masked[22] = data_i[22] & sel_one_hot_i[1];
  assign data_masked[21] = data_i[21] & sel_one_hot_i[1];
  assign data_masked[20] = data_i[20] & sel_one_hot_i[1];
  assign data_masked[19] = data_i[19] & sel_one_hot_i[1];
  assign data_masked[18] = data_i[18] & sel_one_hot_i[1];
  assign data_masked[17] = data_i[17] & sel_one_hot_i[1];
  assign data_masked[16] = data_i[16] & sel_one_hot_i[1];
  assign data_o[0] = data_masked[16] | data_masked[0];
  assign data_o[1] = data_masked[17] | data_masked[1];
  assign data_o[2] = data_masked[18] | data_masked[2];
  assign data_o[3] = data_masked[19] | data_masked[3];
  assign data_o[4] = data_masked[20] | data_masked[4];
  assign data_o[5] = data_masked[21] | data_masked[5];
  assign data_o[6] = data_masked[22] | data_masked[6];
  assign data_o[7] = data_masked[23] | data_masked[7];
  assign data_o[8] = data_masked[24] | data_masked[8];
  assign data_o[9] = data_masked[25] | data_masked[9];
  assign data_o[10] = data_masked[26] | data_masked[10];
  assign data_o[11] = data_masked[27] | data_masked[11];
  assign data_o[12] = data_masked[28] | data_masked[12];
  assign data_o[13] = data_masked[29] | data_masked[13];
  assign data_o[14] = data_masked[30] | data_masked[14];
  assign data_o[15] = data_masked[31] | data_masked[15];

endmodule



module bsg_crossbar_o_by_i_i_els_p2_o_els_p1_width_p16
(
  i,
  sel_oi_one_hot_i,
  o
);

  input [31:0] i;
  input [1:0] sel_oi_one_hot_i;
  output [15:0] o;
  wire [15:0] o;

  bsg_mux_one_hot_width_p16_els_p2
  genblk1_0__mux_one_hot
  (
    .data_i(i),
    .sel_one_hot_i(sel_oi_one_hot_i),
    .data_o(o)
  );


endmodule



module bsg_round_robin_n_to_1
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

  input [31:0] data_i;
  input [1:0] v_i;
  output [1:0] yumi_o;
  output [15:0] data_o;
  output [0:0] tag_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;
  wire [1:0] yumi_o,greedy_grants_lo;
  wire [15:0] data_o;
  wire [0:0] tag_o;
  wire v_o,n_1_net_,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2;

  bsg_round_robin_arb_inputs_p2
  greedy_rr_arb_ctrl
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .grants_en_i(1'b1),
    .reqs_i(v_i),
    .grants_o(greedy_grants_lo),
    .sel_one_hot_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2 }),
    .v_o(v_o),
    .tag_o(tag_o[0]),
    .yumi_i(n_1_net_)
  );


  bsg_crossbar_o_by_i_i_els_p2_o_els_p1_width_p16
  greedy_xbar
  (
    .i(data_i),
    .sel_oi_one_hot_i(greedy_grants_lo),
    .o(data_o)
  );

  assign n_1_net_ = yumi_i & v_o;
  assign yumi_o[1] = greedy_grants_lo[1] & yumi_i;
  assign yumi_o[0] = greedy_grants_lo[0] & yumi_i;

endmodule

