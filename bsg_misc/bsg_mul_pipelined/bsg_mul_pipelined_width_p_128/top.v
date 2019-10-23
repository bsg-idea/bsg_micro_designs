

module top
(
  clock_i,
  en_i,
  x_i,
  y_i,
  signed_i,
  z_o
);

  input [127:0] x_i;
  input [127:0] y_i;
  output [255:0] z_o;
  input clock_i;
  input en_i;
  input signed_i;

  bsg_mul_pipelined
  wrapper
  (
    .x_i(x_i),
    .y_i(y_i),
    .z_o(z_o),
    .clock_i(clock_i),
    .en_i(en_i),
    .signed_i(signed_i)
  );


endmodule



module bsg_mul_pipelined
(
  clock_i,
  en_i,
  x_i,
  y_i,
  signed_i,
  z_o
);

  input [127:0] x_i;
  input [127:0] y_i;
  output [255:0] z_o;
  input clock_i;
  input en_i;
  input signed_i;
  wire [255:0] z_o;

endmodule

