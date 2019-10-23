

module bsg_mul_pipelined_width_p128_pipeline_p0_harden_p1
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



module bsg_mul_width_p128
(
  x_i,
  y_i,
  signed_i,
  z_o
);

  input [127:0] x_i;
  input [127:0] y_i;
  output [255:0] z_o;
  input signed_i;
  wire [255:0] z_o;

  bsg_mul_pipelined_width_p128_pipeline_p0_harden_p1
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

