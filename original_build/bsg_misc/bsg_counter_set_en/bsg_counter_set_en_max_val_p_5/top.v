

module top
(
  clk_i,
  reset_i,
  set_i,
  en_i,
  val_i,
  count_o
);

  input [2:0] val_i;
  output [2:0] count_o;
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

  input [2:0] val_i;
  output [2:0] count_o;
  input clk_i;
  input reset_i;
  input set_i;
  input en_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16;
  reg [2:0] count_o;
  assign { N7, N6, N5 } = count_o + 1'b1;
  assign N8 = (N0)? 1'b1 : 
              (N13)? 1'b1 : 
              (N16)? 1'b1 : 
              (N3)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N11, N10, N9 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                            (N13)? val_i : 
                            (N16)? { N7, N6, N5 } : 1'b0;
  assign N1 = set_i | reset_i;
  assign N2 = en_i | N1;
  assign N3 = ~N2;
  assign N4 = N16;
  assign N12 = ~reset_i;
  assign N13 = set_i & N12;
  assign N14 = ~set_i;
  assign N15 = N12 & N14;
  assign N16 = en_i & N15;

  always @(posedge clk_i) begin
    if(N8) begin
      { count_o[2:0] } <= { N11, N10, N9 };
    end 
  end


endmodule

