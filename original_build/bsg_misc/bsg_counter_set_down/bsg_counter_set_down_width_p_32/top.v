

module top
(
  clk_i,
  reset_i,
  set_i,
  val_i,
  down_i,
  count_r_o
);

  input [31:0] val_i;
  output [31:0] count_r_o;
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

  input [31:0] val_i;
  output [31:0] count_r_o;
  input clk_i;
  input reset_i;
  input set_i;
  input down_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71;
  wire [31:0] ctr_n;
  reg [31:0] count_r_o;
  assign ctr_n = { N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38 } - down_i;
  assign { N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                         (N1)? ctr_n : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign { N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38 } = (N2)? val_i : 
                                                                                                                                                                              (N3)? count_r_o : 1'b0;
  assign N2 = set_i;
  assign N3 = N37;
  assign N4 = ~reset_i;
  assign N37 = ~set_i;
  assign N70 = ~down_i;
  assign N71 = down_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_r_o[31:0] } <= { N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 };
    end 
  end


endmodule

