

module top
(
  i,
  o
);

  input [4:0] i;
  output [31:0] o;

  bsg_decode
  wrapper
  (
    .i(i),
    .o(o)
  );


endmodule



module bsg_decode
(
  i,
  o
);

  input [4:0] i;
  output [31:0] o;
  wire [31:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule

