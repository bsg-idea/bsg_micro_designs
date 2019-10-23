

module top
(
  o
);

  output [31:0] o;

  bsg_tiehi
  wrapper
  (
    .o(o)
  );


endmodule



module bsg_tiehi
(
  o
);

  output [31:0] o;
  wire [31:0] o;
  assign o[0] = 1'b1;
  assign o[1] = 1'b1;
  assign o[2] = 1'b1;
  assign o[3] = 1'b1;
  assign o[4] = 1'b1;
  assign o[5] = 1'b1;
  assign o[6] = 1'b1;
  assign o[7] = 1'b1;
  assign o[8] = 1'b1;
  assign o[9] = 1'b1;
  assign o[10] = 1'b1;
  assign o[11] = 1'b1;
  assign o[12] = 1'b1;
  assign o[13] = 1'b1;
  assign o[14] = 1'b1;
  assign o[15] = 1'b1;
  assign o[16] = 1'b1;
  assign o[17] = 1'b1;
  assign o[18] = 1'b1;
  assign o[19] = 1'b1;
  assign o[20] = 1'b1;
  assign o[21] = 1'b1;
  assign o[22] = 1'b1;
  assign o[23] = 1'b1;
  assign o[24] = 1'b1;
  assign o[25] = 1'b1;
  assign o[26] = 1'b1;
  assign o[27] = 1'b1;
  assign o[28] = 1'b1;
  assign o[29] = 1'b1;
  assign o[30] = 1'b1;
  assign o[31] = 1'b1;

endmodule

