

module top
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  v_o,
  credit_i
);

  input clk_i;
  input reset_i;
  input v_i;
  input credit_i;
  output ready_o;
  output v_o;

  bsg_ready_to_credit_flow_converter
  wrapper
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .credit_i(credit_i),
    .ready_o(ready_o),
    .v_o(v_o)
  );


endmodule



module bsg_counter_up_down_variable_max_val_p50_init_val_p1_max_step_p1
(
  clk_i,
  reset_i,
  up_i,
  down_i,
  count_o
);

  input [0:0] up_i;
  input [0:0] down_i;
  output [5:0] count_o;
  input clk_i;
  input reset_i;
  wire [5:0] count_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12;
  reg count_o_5_sv2v_reg,count_o_4_sv2v_reg,count_o_3_sv2v_reg,count_o_2_sv2v_reg,
  count_o_1_sv2v_reg,count_o_0_sv2v_reg;
  assign count_o[5] = count_o_5_sv2v_reg;
  assign count_o[4] = count_o_4_sv2v_reg;
  assign count_o[3] = count_o_3_sv2v_reg;
  assign count_o[2] = count_o_2_sv2v_reg;
  assign count_o[1] = count_o_1_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;
  assign { N6, N5, N4, N3, N2, N1 } = count_o - down_i[0];
  assign { N12, N11, N10, N9, N8, N7 } = { N6, N5, N4, N3, N2, N1 } + up_i[0];
  assign N0 = ~reset_i;

  always @(posedge clk_i) begin
    if(reset_i) begin
      count_o_5_sv2v_reg <= 1'b0;
      count_o_4_sv2v_reg <= 1'b0;
      count_o_3_sv2v_reg <= 1'b0;
      count_o_2_sv2v_reg <= 1'b0;
      count_o_1_sv2v_reg <= 1'b0;
      count_o_0_sv2v_reg <= 1'b1;
    end else if(1'b1) begin
      count_o_5_sv2v_reg <= N12;
      count_o_4_sv2v_reg <= N11;
      count_o_3_sv2v_reg <= N10;
      count_o_2_sv2v_reg <= N9;
      count_o_1_sv2v_reg <= N8;
      count_o_0_sv2v_reg <= N7;
    end 
  end


endmodule



module bsg_ready_to_credit_flow_converter
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  v_o,
  credit_i
);

  input clk_i;
  input reset_i;
  input v_i;
  input credit_i;
  output ready_o;
  output v_o;
  wire ready_o,v_o,N0,N1,N2,N3;
  wire [5:0] credit_cnt;
  wire [0:0] up;

  bsg_counter_up_down_variable_max_val_p50_init_val_p1_max_step_p1
  credit_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .up_i(up[0]),
    .down_i(v_o),
    .count_o(credit_cnt)
  );

  assign N0 = credit_cnt[4] | credit_cnt[5];
  assign N1 = credit_cnt[3] | N0;
  assign N2 = credit_cnt[2] | N1;
  assign N3 = credit_cnt[1] | N2;
  assign ready_o = credit_cnt[0] | N3;
  assign v_o = v_i & ready_o;
  assign up[0] = credit_i;

endmodule

