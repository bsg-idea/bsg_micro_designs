

module top
(
  clk_i,
  en_i,
  x_i,
  y_i,
  signed_i,
  z_o
);

  input [63:0] x_i;
  input [63:0] y_i;
  output [127:0] z_o;
  input clk_i;
  input en_i;
  input signed_i;

  bsg_mul_pipelined
  wrapper
  (
    .x_i(x_i),
    .y_i(y_i),
    .z_o(z_o),
    .clk_i(clk_i),
    .en_i(en_i),
    .signed_i(signed_i)
  );


endmodule



module bsg_mul_pipelined
(
  clk_i,
  en_i,
  x_i,
  y_i,
  signed_i,
  z_o
);

  input [63:0] x_i;
  input [63:0] y_i;
  output [127:0] z_o;
  input clk_i;
  input en_i;
  input signed_i;
  wire [127:0] z_o;

endmodule

