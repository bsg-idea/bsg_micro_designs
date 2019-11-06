

module top
(
  clk_i,
  reset_i,
  reqs_i,
  release_i,
  valid_i,
  yumi_o,
  ready_i,
  valid_o,
  data_sel_o
);

  input [2:0] reqs_i;
  input [2:0] release_i;
  input [2:0] valid_i;
  output [2:0] yumi_o;
  output [2:0] data_sel_o;
  input clk_i;
  input reset_i;
  input ready_i;
  output valid_o;

  bsg_wormhole_router_output_control
  wrapper
  (
    .reqs_i(reqs_i),
    .release_i(release_i),
    .valid_i(valid_i),
    .yumi_o(yumi_o),
    .data_sel_o(data_sel_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_i(ready_i),
    .valid_o(valid_o)
  );


endmodule



module bsg_dff_reset_width_p3
(
  clk_i,
  reset_i,
  data_i,
  data_o
);

  input [2:0] data_i;
  output [2:0] data_o;
  input clk_i;
  input reset_i;
  wire N0,N1,N2,N3,N4,N5;
  reg [2:0] data_o;
  assign { N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                          (N1)? data_i : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[2:0] } <= { N5, N4, N3 };
    end 
  end


endmodule



module bsg_round_robin_arb_inputs_p3
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

  input [2:0] reqs_i;
  output [2:0] grants_o;
  output [2:0] sel_one_hot_o;
  output [1:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [2:0] grants_o,sel_one_hot_o;
  wire [1:0] tag_o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59;
  reg [1:0] last_r;
  assign N10 = N7 & N8;
  assign N11 = N10 & N9;
  assign N14 = N12 & N13;
  assign N15 = N14 & reqs_i[1];
  assign N16 = last_r[1] | last_r[0];
  assign N17 = N7 | reqs_i[1];
  assign N18 = N16 | N17;
  assign N20 = last_r[1] | last_r[0];
  assign N21 = reqs_i[2] | reqs_i[1];
  assign N22 = N20 | N21;
  assign N23 = N22 | N9;
  assign N25 = last_r[1] | N13;
  assign N26 = N25 | N7;
  assign N28 = N12 & last_r[0];
  assign N29 = N7 & reqs_i[0];
  assign N30 = N28 & N29;
  assign N31 = last_r[1] | N13;
  assign N32 = reqs_i[2] | N8;
  assign N33 = N31 | N32;
  assign N34 = N33 | reqs_i[0];
  assign N36 = last_r[1] & N13;
  assign N37 = N36 & reqs_i[0];
  assign N38 = last_r[1] & N13;
  assign N39 = reqs_i[1] & N9;
  assign N40 = N38 & N39;
  assign N41 = N12 | last_r[0];
  assign N42 = N41 | N17;
  assign N43 = N42 | reqs_i[0];
  assign N45 = last_r[1] & last_r[0];
  assign N46 = N45 & reqs_i[2];
  assign N47 = last_r[1] & last_r[0];
  assign N48 = N47 & reqs_i[0];
  assign N49 = last_r[1] & last_r[0];
  assign N50 = N49 & reqs_i[1];
  assign sel_one_hot_o = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                         (N1)? { 1'b0, 1'b1, 1'b0 } : 
                         (N19)? { 1'b1, 1'b0, 1'b0 } : 
                         (N24)? { 1'b0, 1'b0, 1'b1 } : 
                         (N27)? { 1'b1, 1'b0, 1'b0 } : 
                         (N2)? { 1'b0, 1'b0, 1'b1 } : 
                         (N35)? { 1'b0, 1'b1, 1'b0 } : 
                         (N3)? { 1'b0, 1'b0, 1'b1 } : 
                         (N4)? { 1'b0, 1'b1, 1'b0 } : 
                         (N44)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N11;
  assign N1 = N15;
  assign N2 = N30;
  assign N3 = N37;
  assign N4 = N40;
  assign tag_o = (N0)? { 1'b0, 1'b0 } : 
                 (N1)? { 1'b0, 1'b1 } : 
                 (N19)? { 1'b1, 1'b0 } : 
                 (N24)? { 1'b0, 1'b0 } : 
                 (N27)? { 1'b1, 1'b0 } : 
                 (N2)? { 1'b0, 1'b0 } : 
                 (N35)? { 1'b0, 1'b1 } : 
                 (N3)? { 1'b0, 1'b0 } : 
                 (N4)? { 1'b0, 1'b1 } : 
                 (N44)? { 1'b1, 1'b0 } : 
                 (N51)? { 1'b0, 1'b0 } : 1'b0;
  assign { N55, N54 } = (N5)? { 1'b0, 1'b0 } : 
                        (N6)? tag_o : 1'b0;
  assign N5 = reset_i;
  assign N6 = N53;
  assign N7 = ~reqs_i[2];
  assign N8 = ~reqs_i[1];
  assign N9 = ~reqs_i[0];
  assign N12 = ~last_r[1];
  assign N13 = ~last_r[0];
  assign N19 = ~N18;
  assign N24 = ~N23;
  assign N27 = ~N26;
  assign N35 = ~N34;
  assign N44 = ~N43;
  assign N51 = N46 | N58;
  assign N58 = N48 | N50;
  assign grants_o[2] = sel_one_hot_o[2] & grants_en_i;
  assign grants_o[1] = sel_one_hot_o[1] & grants_en_i;
  assign grants_o[0] = sel_one_hot_o[0] & grants_en_i;
  assign v_o = N59 | reqs_i[0];
  assign N59 = reqs_i[2] | reqs_i[1];
  assign N52 = ~yumi_i;
  assign N53 = ~reset_i;
  assign N56 = N52 & N53;
  assign N57 = ~N56;

  always @(posedge clk_i) begin
    if(N57) begin
      { last_r[1:0] } <= { N55, N54 };
    end 
  end


endmodule



module bsg_wormhole_router_output_control
(
  clk_i,
  reset_i,
  reqs_i,
  release_i,
  valid_i,
  yumi_o,
  ready_i,
  valid_o,
  data_sel_o
);

  input [2:0] reqs_i;
  input [2:0] release_i;
  input [2:0] valid_i;
  output [2:0] yumi_o;
  output [2:0] data_sel_o;
  input clk_i;
  input reset_i;
  input ready_i;
  output valid_o;
  wire [2:0] yumi_o,data_sel_o,scheduled_r,scheduled_with_release,grants_lo;
  wire valid_o,N0,N1,free_to_schedule,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,
  N14,N15,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,
  SYNOPSYS_UNCONNECTED_4,SYNOPSYS_UNCONNECTED_5;

  bsg_dff_reset_width_p3
  scheduled_reg
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_sel_o),
    .data_o(scheduled_r)
  );


  bsg_round_robin_arb_inputs_p3
  brr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .grants_en_i(free_to_schedule),
    .reqs_i(reqs_i),
    .grants_o(grants_lo),
    .sel_one_hot_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3 }),
    .tag_o({ SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5 }),
    .yumi_i(n_0_net_)
  );

  assign yumi_o = (N0)? { N3, N4, N5 } : 
                  (N1)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N0 = ready_i;
  assign N1 = N2;
  assign scheduled_with_release[2] = scheduled_r[2] & N6;
  assign N6 = ~release_i[2];
  assign scheduled_with_release[1] = scheduled_r[1] & N7;
  assign N7 = ~release_i[1];
  assign scheduled_with_release[0] = scheduled_r[0] & N8;
  assign N8 = ~release_i[0];
  assign free_to_schedule = ~N10;
  assign N10 = N9 | scheduled_with_release[0];
  assign N9 = scheduled_with_release[2] | scheduled_with_release[1];
  assign n_0_net_ = free_to_schedule & valid_o;
  assign data_sel_o[2] = grants_lo[2] | scheduled_with_release[2];
  assign data_sel_o[1] = grants_lo[1] | scheduled_with_release[1];
  assign data_sel_o[0] = grants_lo[0] | scheduled_with_release[0];
  assign valid_o = ready_i & N15;
  assign N15 = N13 | N14;
  assign N13 = N11 | N12;
  assign N11 = data_sel_o[2] & valid_i[2];
  assign N12 = data_sel_o[1] & valid_i[1];
  assign N14 = data_sel_o[0] & valid_i[0];
  assign N2 = ~ready_i;
  assign N3 = data_sel_o[2] & valid_i[2];
  assign N4 = data_sel_o[1] & valid_i[1];
  assign N5 = data_sel_o[0] & valid_i[0];

endmodule

