

module top
(
  i,
  o
);

  input [15:0] i;
  output [15:0] o;

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

  input [15:0] i;
  output [15:0] o;
  wire [15:0] o;

endmodule

