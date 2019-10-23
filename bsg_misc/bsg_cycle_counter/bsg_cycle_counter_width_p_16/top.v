

module top
(
  clk_i,
  reset_i,
  ctr_r_o
);

  output [15:0] ctr_r_o;
  input clk_i;
  input reset_i;

  bsg_cycle_counter
  wrapper
  (
    .ctr_r_o(ctr_r_o),
    .clk_i(clk_i),
    .reset_i(reset_i)
  );


endmodule



module bsg_cycle_counter
(
  clk_i,
  reset_i,
  ctr_r_o
);

  output [15:0] ctr_r_o;
  input clk_i;
  input reset_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34;
  reg [15:0] ctr_r_o;
  assign { N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = ctr_r_o + 1'b1;
  assign { N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                              (N1)? { N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { ctr_r_o[15:0] } <= { N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19 };
    end 
  end


endmodule

