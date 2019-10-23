

module top
(
  clk_i,
  reset_i,
  data_i,
  data_o
);

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;

  bsg_dff_reset
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i)
  );


endmodule



module bsg_dff_reset
(
  clk_i,
  reset_i,
  data_i,
  data_o
);

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18;
  reg [15:0] data_o;
  assign { N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                       (N1)? data_i : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[15:0] } <= { N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 };
    end 
  end


endmodule

