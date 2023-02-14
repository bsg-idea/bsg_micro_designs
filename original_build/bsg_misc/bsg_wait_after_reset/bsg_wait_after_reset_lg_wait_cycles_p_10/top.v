

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
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36;
  reg ready_r_o;
  reg [9:0] counter_r;
  assign N27 = counter_r[8] | counter_r[9];
  assign N28 = counter_r[7] | N27;
  assign N29 = counter_r[6] | N28;
  assign N30 = counter_r[5] | N29;
  assign N31 = counter_r[4] | N30;
  assign N32 = counter_r[3] | N31;
  assign N33 = counter_r[2] | N32;
  assign N34 = counter_r[1] | N33;
  assign N35 = counter_r[0] | N34;
  assign N36 = ~N35;
  assign { N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = counter_r + 1'b1;
  assign N13 = (N0)? 1'b1 : 
               (N25)? 1'b0 : 
               (N2)? 1'b1 : 1'b0;
  assign N0 = reset_i;
  assign { N23, N22, N21, N20, N19, N18, N17, N16, N15, N14 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                (N2)? { N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } : 1'b0;
  assign N24 = (N0)? 1'b1 : 
               (N25)? 1'b1 : 
               (N2)? 1'b0 : 1'b0;
  assign N1 = N36 | reset_i;
  assign N2 = ~N1;
  assign N26 = ~reset_i;
  assign N25 = N36 & N26;

  always @(posedge clk_i) begin
    if(N24) begin
      ready_r_o <= N25;
    end 
    if(N13) begin
      { counter_r[9:0] } <= { N23, N22, N21, N20, N19, N18, N17, N16, N15, N14 };
    end 
  end


endmodule

