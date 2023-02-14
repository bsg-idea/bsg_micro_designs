

module top
(
  clk_i,
  reset_i,
  set_i,
  val_i,
  down_i,
  count_r_o
);

  input [15:0] val_i;
  output [15:0] count_r_o;
  input clk_i;
  input reset_i;
  input set_i;
  input down_i;

  bsg_counter_set_down
  wrapper
  (
    .val_i(val_i),
    .count_r_o(count_r_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .set_i(set_i),
    .down_i(down_i)
  );


endmodule



module bsg_counter_set_down
(
  clk_i,
  reset_i,
  set_i,
  val_i,
  down_i,
  count_r_o
);

  input [15:0] val_i;
  output [15:0] count_r_o;
  input clk_i;
  input reset_i;
  input set_i;
  input down_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39;
  wire [15:0] ctr_n;
  reg [15:0] count_r_o;
  assign ctr_n = { N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22 } - down_i;
  assign { N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                         (N1)? ctr_n : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign { N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22 } = (N2)? val_i : 
                                                                                              (N3)? count_r_o : 1'b0;
  assign N2 = set_i;
  assign N3 = N21;
  assign N4 = ~reset_i;
  assign N21 = ~set_i;
  assign N38 = ~down_i;
  assign N39 = down_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_r_o[15:0] } <= { N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 };
    end 
  end


endmodule

