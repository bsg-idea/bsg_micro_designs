

module top
(
  i,
  o
);

  input [63:0] i;
  output [63:0] o;

  bsg_scan
  wrapper
  (
    .i(i),
    .o(o)
  );


endmodule



module bsg_scan
(
  i,
  o
);

  input [63:0] i;
  output [63:0] o;
  wire [63:0] o;

endmodule

