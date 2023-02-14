

module top
(
  clk_i,
  reset_i,
  set_i,
  en_i,
  val_i,
  count_o
);

  input [8:0] val_i;
  output [8:0] count_o;
  input clk_i;
  input reset_i;
  input set_i;
  input en_i;

  bsg_counter_set_en
  wrapper
  (
    .val_i(val_i),
    .count_o(count_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .set_i(set_i),
    .en_i(en_i)
  );


endmodule



module bsg_counter_set_en
(
  clk_i,
  reset_i,
  set_i,
  en_i,
  val_i,
  count_o
);

  input [8:0] val_i;
  output [8:0] count_o;
  input clk_i;
  input reset_i;
  input set_i;
  input en_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28;
  reg [8:0] count_o;
  assign { N13, N12, N11, N10, N9, N8, N7, N6, N5 } = count_o + 1'b1;
  assign N14 = (N0)? 1'b1 : 
               (N25)? 1'b1 : 
               (N28)? 1'b1 : 
               (N3)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N23, N22, N21, N20, N19, N18, N17, N16, N15 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                           (N25)? val_i : 
                                                           (N28)? { N13, N12, N11, N10, N9, N8, N7, N6, N5 } : 1'b0;
  assign N1 = set_i | reset_i;
  assign N2 = en_i | N1;
  assign N3 = ~N2;
  assign N4 = N28;
  assign N24 = ~reset_i;
  assign N25 = set_i & N24;
  assign N26 = ~set_i;
  assign N27 = N24 & N26;
  assign N28 = en_i & N27;

  always @(posedge clk_i) begin
    if(N14) begin
      { count_o[8:0] } <= { N23, N22, N21, N20, N19, N18, N17, N16, N15 };
    end 
  end


endmodule

