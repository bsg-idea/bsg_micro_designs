

module top
(
  clk_i,
  reset_i,
  en_i,
  limit_i,
  counter_o,
  overflowed_o
);

  input [31:0] limit_i;
  output [31:0] counter_o;
  input clk_i;
  input reset_i;
  input en_i;
  output overflowed_o;

  bsg_counter_dynamic_limit_en
  wrapper
  (
    .limit_i(limit_i),
    .counter_o(counter_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .en_i(en_i),
    .overflowed_o(overflowed_o)
  );


endmodule



module bsg_counter_dynamic_limit_en
(
  clk_i,
  reset_i,
  en_i,
  limit_i,
  counter_o,
  overflowed_o
);

  input [31:0] limit_i;
  output [31:0] counter_o;
  input clk_i;
  input reset_i;
  input en_i;
  output overflowed_o;
  wire overflowed_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,
  N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,
  N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,
  N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72;
  wire [31:0] counter_plus_1;
  reg [31:0] counter_o;
  assign overflowed_o = counter_plus_1 == limit_i;
  assign counter_plus_1 = counter_o + 1'b1;
  assign { N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                          (N1)? counter_plus_1 : 1'b0;
  assign N0 = overflowed_o;
  assign N1 = N5;
  assign N38 = (N2)? 1'b1 : 
               (N72)? 1'b1 : 
               (N4)? 1'b0 : 1'b0;
  assign N2 = reset_i;
  assign { N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39 } = (N2)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N72)? { N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6 } : 1'b0;
  assign N3 = en_i | reset_i;
  assign N4 = ~N3;
  assign N5 = ~overflowed_o;
  assign N71 = ~reset_i;
  assign N72 = en_i & N71;

  always @(posedge clk_i) begin
    if(N38) begin
      { counter_o[31:0] } <= { N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39 };
    end 
  end


endmodule

