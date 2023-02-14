

module top
(
  i,
  o
);

  input [31:0] i;
  output [31:0] o;

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

  input [31:0] i;
  output [31:0] o;
  wire [31:0] o;

endmodule

