

module top
(
  clk_i,
  data_i,
  data_o
);

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;

  bsg_dff
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i)
  );


endmodule



module bsg_dff
(
  clk_i,
  data_i,
  data_o
);

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;
  reg [15:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[15:0] } <= { data_i[15:0] };
    end 
  end


endmodule

