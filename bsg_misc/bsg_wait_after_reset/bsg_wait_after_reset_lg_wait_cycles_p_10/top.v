

module top
(
  reset_i,
  clk_i,
  ready_r_o
);

  input reset_i;
  input clk_i;
  output ready_r_o;

  bsg_wait_after_reset
  wrapper
  (
    .reset_i(reset_i),
    .clk_i(clk_i),
    .ready_r_o(ready_r_o)
  );


endmodule



module bsg_wait_after_reset
(
  reset_i,
  clk_i,
  ready_r_o
);

  input reset_i;
  input clk_i;
  output ready_r_o;
  wire ready_r_o,N0,N1,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26;
  wire [9:0] counter_r;
  reg ready_r_o_sv2v_reg,counter_r_9_sv2v_reg,counter_r_8_sv2v_reg,
  counter_r_7_sv2v_reg,counter_r_6_sv2v_reg,counter_r_5_sv2v_reg,counter_r_4_sv2v_reg,
  counter_r_3_sv2v_reg,counter_r_2_sv2v_reg,counter_r_1_sv2v_reg,counter_r_0_sv2v_reg;
  assign ready_r_o = ready_r_o_sv2v_reg;
  assign counter_r[9] = counter_r_9_sv2v_reg;
  assign counter_r[8] = counter_r_8_sv2v_reg;
  assign counter_r[7] = counter_r_7_sv2v_reg;
  assign counter_r[6] = counter_r_6_sv2v_reg;
  assign counter_r[5] = counter_r_5_sv2v_reg;
  assign counter_r[4] = counter_r_4_sv2v_reg;
  assign counter_r[3] = counter_r_3_sv2v_reg;
  assign counter_r[2] = counter_r_2_sv2v_reg;
  assign counter_r[1] = counter_r_1_sv2v_reg;
  assign counter_r[0] = counter_r_0_sv2v_reg;
  assign N17 = counter_r[8] | counter_r[9];
  assign N18 = counter_r[7] | N17;
  assign N19 = counter_r[6] | N18;
  assign N20 = counter_r[5] | N19;
  assign N21 = counter_r[4] | N20;
  assign N22 = counter_r[3] | N21;
  assign N23 = counter_r[2] | N22;
  assign N24 = counter_r[1] | N23;
  assign N25 = counter_r[0] | N24;
  assign N26 = ~N25;
  assign { N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } = counter_r + 1'b1;
  assign N15 = (N0)? 1'b0 : 
               (N1)? 1'b1 : 1'b0;
  assign N0 = N26;
  assign N1 = N25;
  assign N16 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 1'b0;
  assign N3 = N26 | reset_i;
  assign N4 = ~N3;

  always @(posedge clk_i) begin
    if(reset_i) begin
      ready_r_o_sv2v_reg <= 1'b0;
    end else if(N16) begin
      ready_r_o_sv2v_reg <= 1'b1;
    end 
    if(reset_i) begin
      counter_r_9_sv2v_reg <= 1'b0;
      counter_r_8_sv2v_reg <= 1'b0;
      counter_r_7_sv2v_reg <= 1'b0;
      counter_r_6_sv2v_reg <= 1'b0;
      counter_r_5_sv2v_reg <= 1'b0;
      counter_r_4_sv2v_reg <= 1'b0;
      counter_r_3_sv2v_reg <= 1'b0;
      counter_r_2_sv2v_reg <= 1'b0;
      counter_r_1_sv2v_reg <= 1'b0;
      counter_r_0_sv2v_reg <= 1'b1;
    end else if(N15) begin
      counter_r_9_sv2v_reg <= N14;
      counter_r_8_sv2v_reg <= N13;
      counter_r_7_sv2v_reg <= N12;
      counter_r_6_sv2v_reg <= N11;
      counter_r_5_sv2v_reg <= N10;
      counter_r_4_sv2v_reg <= N9;
      counter_r_3_sv2v_reg <= N8;
      counter_r_2_sv2v_reg <= N7;
      counter_r_1_sv2v_reg <= N6;
      counter_r_0_sv2v_reg <= N5;
    end 
  end


endmodule

