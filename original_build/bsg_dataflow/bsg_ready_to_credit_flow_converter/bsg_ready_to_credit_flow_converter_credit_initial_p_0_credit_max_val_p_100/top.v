

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



module bsg_counter_up_down_variable_max_val_p100_init_val_p0_max_step_p1
(
  clk_i,
  reset_i,
  up_i,
  down_i,
  count_o
);

  input [0:0] up_i;
  input [0:0] down_i;
  output [6:0] count_o;
  input clk_i;
  input reset_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23;
  reg [6:0] count_o;
  assign { N9, N8, N7, N6, N5, N4, N3 } = count_o - down_i[0];
  assign { N16, N15, N14, N13, N12, N11, N10 } = { N9, N8, N7, N6, N5, N4, N3 } + up_i[0];
  assign { N23, N22, N21, N20, N19, N18, N17 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                 (N1)? { N16, N15, N14, N13, N12, N11, N10 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_o[6:0] } <= { N23, N22, N21, N20, N19, N18, N17 };
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
  wire ready_o,v_o,N0,N1,N2,N3,N4;
  wire [6:0] credit_cnt;
  wire [0:0] up;

  bsg_counter_up_down_variable_max_val_p100_init_val_p0_max_step_p1
  credit_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .up_i(up[0]),
    .down_i(v_o),
    .count_o(credit_cnt)
  );

  assign N0 = credit_cnt[5] | credit_cnt[6];
  assign N1 = credit_cnt[4] | N0;
  assign N2 = credit_cnt[3] | N1;
  assign N3 = credit_cnt[2] | N2;
  assign N4 = credit_cnt[1] | N3;
  assign ready_o = credit_cnt[0] | N4;
  assign v_o = v_i & ready_o;
  assign up[0] = credit_i;

endmodule

