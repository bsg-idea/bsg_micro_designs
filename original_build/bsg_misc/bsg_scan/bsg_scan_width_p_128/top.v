

module top
(
  i,
  o
);

  input [127:0] i;
  output [127:0] o;

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

  input [127:0] i;
  output [127:0] o;
  wire [127:0] o;

endmodule

