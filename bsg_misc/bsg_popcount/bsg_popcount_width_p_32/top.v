

module bsg_popcount_width_p4
(
  i,
  o
);

  input [3:0] i;
  output [2:0] o;
  wire [2:0] o;
  wire N0,N1;
  wire [1:0] four_s0,four_c0;
  assign four_s0[1] = i[3] ^ i[2];
  assign four_s0[0] = i[1] ^ i[0];
  assign four_c0[1] = i[3] & i[2];
  assign four_c0[0] = i[1] & i[0];
  assign o[0] = four_s0[1] ^ four_s0[0];
  assign o[1] = N0 | N1;
  assign N0 = four_c0[1] ^ four_c0[0];
  assign N1 = four_s0[1] & four_s0[0];
  assign o[2] = four_c0[1] & four_c0[0];

endmodule



module bsg_popcount_width_p8
(
  i,
  o
);

  input [7:0] i;
  output [3:0] o;
  wire [3:0] o;
  wire [2:0] recurse_lo,recurse_hi;

  bsg_popcount_width_p4
  recurse_left
  (
    .i(i[3:0]),
    .o(recurse_lo)
  );


  bsg_popcount_width_p4
  recurse_right
  (
    .i(i[7:4]),
    .o(recurse_hi)
  );

  assign o = recurse_lo + recurse_hi;

endmodule



module bsg_popcount_width_p16
(
  i,
  o
);

  input [15:0] i;
  output [4:0] o;
  wire [4:0] o;
  wire [3:0] recurse_lo,recurse_hi;

  bsg_popcount_width_p8
  recurse_left
  (
    .i(i[7:0]),
    .o(recurse_lo)
  );


  bsg_popcount_width_p8
  recurse_right
  (
    .i(i[15:8]),
    .o(recurse_hi)
  );

  assign o = recurse_lo + recurse_hi;

endmodule



module bsg_popcount_width_p32
(
  i,
  o
);

  input [31:0] i;
  output [5:0] o;
  wire [5:0] o;
  wire [4:0] recurse_lo,recurse_hi;

  bsg_popcount_width_p16
  recurse_left
  (
    .i(i[15:0]),
    .o(recurse_lo)
  );


  bsg_popcount_width_p16
  recurse_right
  (
    .i(i[31:16]),
    .o(recurse_hi)
  );

  assign o = recurse_lo + recurse_hi;

endmodule

