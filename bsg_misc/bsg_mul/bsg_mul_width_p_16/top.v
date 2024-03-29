

module top
(
  x_i,
  y_i,
  signed_i,
  z_o
);

  input [15:0] x_i;
  input [15:0] y_i;
  output [31:0] z_o;
  input signed_i;

  bsg_mul
  wrapper
  (
    .x_i(x_i),
    .y_i(y_i),
    .z_o(z_o),
    .signed_i(signed_i)
  );


endmodule



module bsg_mul
(
  x_i,
  y_i,
  signed_i,
  z_o
);

  input [15:0] x_i;
  input [15:0] y_i;
  output [31:0] z_o;
  input signed_i;
  wire [31:0] z_o;

  bsg_mul_pipelined
  bmp
  (
    .clock_i(1'b0),
    .en_i(1'b0),
    .x_i(x_i),
    .y_i(y_i),
    .signed_i(signed_i),
    .z_o(z_o)
  );


endmodule

