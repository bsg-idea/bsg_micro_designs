

module top
(
  clk_i,
  reset_i,
  set_i,
  en_i,
  val_i,
  count_o
);

  input [5:0] val_i;
  output [5:0] count_o;
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

  input [5:0] val_i;
  output [5:0] count_o;
  input clk_i;
  input reset_i;
  input set_i;
  input en_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22;
  reg [5:0] count_o;
  assign { N10, N9, N8, N7, N6, N5 } = count_o + 1'b1;
  assign N11 = (N0)? 1'b1 : 
               (N19)? 1'b1 : 
               (N22)? 1'b1 : 
               (N3)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N17, N16, N15, N14, N13, N12 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                            (N19)? val_i : 
                                            (N22)? { N10, N9, N8, N7, N6, N5 } : 1'b0;
  assign N1 = set_i | reset_i;
  assign N2 = en_i | N1;
  assign N3 = ~N2;
  assign N4 = N22;
  assign N18 = ~reset_i;
  assign N19 = set_i & N18;
  assign N20 = ~set_i;
  assign N21 = N18 & N20;
  assign N22 = en_i & N21;

  always @(posedge clk_i) begin
    if(N11) begin
      { count_o[5:0] } <= { N17, N16, N15, N14, N13, N12 };
    end 
  end


endmodule

