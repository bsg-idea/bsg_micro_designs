

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
  wire [8:0] count_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18;
  reg count_o_8_sv2v_reg,count_o_7_sv2v_reg,count_o_6_sv2v_reg,count_o_5_sv2v_reg,
  count_o_4_sv2v_reg,count_o_3_sv2v_reg,count_o_2_sv2v_reg,count_o_1_sv2v_reg,
  count_o_0_sv2v_reg;
  assign count_o[8] = count_o_8_sv2v_reg;
  assign count_o[7] = count_o_7_sv2v_reg;
  assign count_o[6] = count_o_6_sv2v_reg;
  assign count_o[5] = count_o_5_sv2v_reg;
  assign count_o[4] = count_o_4_sv2v_reg;
  assign count_o[3] = count_o_3_sv2v_reg;
  assign count_o[2] = count_o_2_sv2v_reg;
  assign count_o[1] = count_o_1_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;
  assign { N9, N8, N7, N6, N5, N4, N3, N2, N1 } = count_o - down_i[0];
  assign { N18, N17, N16, N15, N14, N13, N12, N11, N10 } = { N9, N8, N7, N6, N5, N4, N3, N2, N1 } + up_i[0];
  assign N0 = ~reset_i;

  always @(posedge clk_i) begin
    if(reset_i) begin
      count_o_8_sv2v_reg <= 1'b1;
      count_o_7_sv2v_reg <= 1'b0;
      count_o_6_sv2v_reg <= 1'b0;
      count_o_5_sv2v_reg <= 1'b0;
      count_o_4_sv2v_reg <= 1'b0;
      count_o_3_sv2v_reg <= 1'b0;
      count_o_2_sv2v_reg <= 1'b0;
      count_o_1_sv2v_reg <= 1'b0;
      count_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      count_o_8_sv2v_reg <= N18;
      count_o_7_sv2v_reg <= N17;
      count_o_6_sv2v_reg <= N16;
      count_o_5_sv2v_reg <= N15;
      count_o_4_sv2v_reg <= N14;
      count_o_3_sv2v_reg <= N13;
      count_o_2_sv2v_reg <= N12;
      count_o_1_sv2v_reg <= N11;
      count_o_0_sv2v_reg <= N10;
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
  \gen_blk_0.counter 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .up_i(yumi_i),
    .down_i(enque),
    .count_o(count_o)
  );

  assign enque = v_i & ready_i;

endmodule

