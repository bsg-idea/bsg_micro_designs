

module top
(
  clk_i,
  reset_i,
  v_i,
  ready_i,
  yumi_i,
  count_o
);

  output [8:0] count_o;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  input yumi_i;

  bsg_flow_counter
  wrapper
  (
    .count_o(count_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_i(ready_i),
    .yumi_i(yumi_i)
  );


endmodule



module bsg_counter_up_down_max_val_p256_init_val_p256_max_step_p1
(
  clk_i,
  reset_i,
  up_i,
  down_i,
  count_o
);

  input [0:0] up_i;
  input [0:0] down_i;
  output [8:0] count_o;
  input clk_i;
  input reset_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29;
  reg [8:0] count_o;
  assign { N11, N10, N9, N8, N7, N6, N5, N4, N3 } = count_o - down_i[0];
  assign { N20, N19, N18, N17, N16, N15, N14, N13, N12 } = { N11, N10, N9, N8, N7, N6, N5, N4, N3 } + up_i[0];
  assign { N29, N28, N27, N26, N25, N24, N23, N22, N21 } = (N0)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                           (N1)? { N20, N19, N18, N17, N16, N15, N14, N13, N12 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_o[8:0] } <= { N29, N28, N27, N26, N25, N24, N23, N22, N21 };
    end 
  end


endmodule



module bsg_flow_counter
(
  clk_i,
  reset_i,
  v_i,
  ready_i,
  yumi_i,
  count_o
);

  output [8:0] count_o;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  input yumi_i;
  wire [8:0] count_o;
  wire enque;

  bsg_counter_up_down_max_val_p256_init_val_p256_max_step_p1
  gen_blk_0_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .up_i(yumi_i),
    .down_i(enque),
    .count_o(count_o)
  );

  assign enque = v_i & ready_i;

endmodule

