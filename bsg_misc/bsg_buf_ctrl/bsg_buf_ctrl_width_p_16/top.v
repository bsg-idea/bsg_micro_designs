

module top
(
  i,
  o
);

  output [15:0] o;
  input i;

  bsg_buf_ctrl
  wrapper
  (
    .o(o),
    .i(i)
  );


endmodule



module bsg_buf_ctrl
(
  i,
  o
);

  output [15:0] o;
  input i;
  wire [15:0] o;
  wire i;
  assign o[0] = i;
  assign o[1] = i;
  assign o[2] = i;
  assign o[3] = i;
  assign o[4] = i;
  assign o[5] = i;
  assign o[6] = i;
  assign o[7] = i;
  assign o[8] = i;
  assign o[9] = i;
  assign o[10] = i;
  assign o[11] = i;
  assign o[12] = i;
  assign o[13] = i;
  assign o[14] = i;
  assign o[15] = i;

endmodule

