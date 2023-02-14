

module top
(
  clk_i,
  reset_i,
  activate_i,
  ready_r_o
);

  input clk_i;
  input reset_i;
  input activate_i;
  output ready_r_o;

  bsg_wait_cycles
  wrapper
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .activate_i(activate_i),
    .ready_r_o(ready_r_o)
  );


endmodule



module bsg_wait_cycles
(
  clk_i,
  reset_i,
  activate_i,
  ready_r_o
);

  input clk_i;
  input reset_i;
  input activate_i;
  output ready_r_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34;
  wire [7:0] ctr_n;
  reg [7:0] ctr_r;
  reg ready_r_o;
  assign N18 = ~ctr_n[7];
  assign N19 = ctr_n[6] | N18;
  assign N20 = ctr_n[5] | N19;
  assign N21 = ctr_n[4] | N20;
  assign N22 = ctr_n[3] | N21;
  assign N23 = ctr_n[2] | N22;
  assign N24 = ctr_n[1] | N23;
  assign N25 = ctr_n[0] | N24;
  assign N26 = ~N25;
  assign N27 = ~ctr_r[7];
  assign N28 = ctr_r[6] | N27;
  assign N29 = ctr_r[5] | N28;
  assign N30 = ctr_r[4] | N29;
  assign N31 = ctr_r[3] | N30;
  assign N32 = ctr_r[2] | N31;
  assign N33 = ctr_r[1] | N32;
  assign N34 = ctr_r[0] | N33;
  assign { N12, N11, N10, N9, N8, N7, N6, N5 } = ctr_r + 1'b1;
  assign ctr_n = (N0)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                 (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                 (N17)? { N12, N11, N10, N9, N8, N7, N6, N5 } : 
                 (N3)? ctr_r : 1'b0;
  assign N0 = reset_i;
  assign N1 = activate_i | reset_i;
  assign N2 = N34 | N1;
  assign N3 = ~N2;
  assign N4 = N17;
  assign N13 = ~reset_i;
  assign N14 = activate_i & N13;
  assign N15 = ~activate_i;
  assign N16 = N13 & N15;
  assign N17 = N34 & N16;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { ctr_r[7:0] } <= { ctr_n[7:0] };
      ready_r_o <= N26;
    end 
  end


endmodule

