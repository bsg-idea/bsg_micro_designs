

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
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21;
  reg ready_r_o;
  reg [4:0] counter_r;
  assign N17 = counter_r[3] | counter_r[4];
  assign N18 = counter_r[2] | N17;
  assign N19 = counter_r[1] | N18;
  assign N20 = counter_r[0] | N19;
  assign N21 = ~N20;
  assign { N7, N6, N5, N4, N3 } = counter_r + 1'b1;
  assign N8 = (N0)? 1'b1 : 
              (N15)? 1'b0 : 
              (N2)? 1'b1 : 1'b0;
  assign N0 = reset_i;
  assign { N13, N12, N11, N10, N9 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                      (N2)? { N7, N6, N5, N4, N3 } : 1'b0;
  assign N14 = (N0)? 1'b1 : 
               (N15)? 1'b1 : 
               (N2)? 1'b0 : 1'b0;
  assign N1 = N21 | reset_i;
  assign N2 = ~N1;
  assign N16 = ~reset_i;
  assign N15 = N21 & N16;

  always @(posedge clk_i) begin
    if(N14) begin
      ready_r_o <= N15;
    end 
    if(N8) begin
      { counter_r[4:0] } <= { N13, N12, N11, N10, N9 };
    end 
  end


endmodule

