

module top
(
  clk_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input en_i;

  bsg_dff_reset_en
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .en_i(en_i)
  );


endmodule



module bsg_dff_reset_en
(
  clk_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input en_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37;
  reg [31:0] data_o;
  assign N3 = (N0)? 1'b1 : 
              (N37)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                        (N37)? data_i : 1'b0;
  assign N1 = en_i | reset_i;
  assign N2 = ~N1;
  assign N36 = ~reset_i;
  assign N37 = en_i & N36;

  always @(posedge clk_i) begin
    if(N3) begin
      { data_o[31:0] } <= { N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4 };
    end 
  end


endmodule

