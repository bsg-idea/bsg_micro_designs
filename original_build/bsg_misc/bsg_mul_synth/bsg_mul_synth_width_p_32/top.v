

module top
(
  a_i,
  b_i,
  o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [63:0] o;

  bsg_mul_synth
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .o(o)
  );


endmodule



module bsg_mul_synth
(
  a_i,
  b_i,
  o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [63:0] o;
  wire [63:0] o;
  assign o = a_i * b_i;

endmodule

