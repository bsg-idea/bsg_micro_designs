

module top
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_r_o
);

  output [16:0] count_r_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;

  bsg_counter_clear_up_one_hot
  wrapper
  (
    .count_r_o(count_r_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_i),
    .up_i(up_i)
  );


endmodule



module bsg_counter_clear_up_one_hot
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_r_o
);

  output [16:0] count_r_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44;
  wire [16:0] bits_n;
  reg [16:0] count_r_o;
  assign { N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                                                (N1)? count_r_o : 1'b0;
  assign N0 = clear_i;
  assign N1 = N6;
  assign { N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25 } = (N2)? { N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N23 } : 
                                                                                                   (N3)? { N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7 } : 1'b0;
  assign N2 = up_i;
  assign N3 = N24;
  assign bits_n = (N4)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                  (N5)? { N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25 } : 1'b0;
  assign N4 = reset_i;
  assign N5 = N42;
  assign N6 = ~clear_i;
  assign N24 = ~up_i;
  assign N42 = ~reset_i;
  assign N43 = N44 | clear_i;
  assign N44 = reset_i | up_i;

  always @(posedge clk_i) begin
    if(N43) begin
      { count_r_o[16:0] } <= { bits_n[16:0] };
    end 
  end


endmodule

