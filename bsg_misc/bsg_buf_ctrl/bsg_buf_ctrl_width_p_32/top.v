

module top
(
  i,
  o
);

  output [31:0] o;
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

  output [31:0] o;
  input i;
  wire [31:0] o;
  wire o_31_;
  assign o_31_ = i;
  assign o[0] = o_31_;
  assign o[1] = o_31_;
  assign o[2] = o_31_;
  assign o[3] = o_31_;
  assign o[4] = o_31_;
  assign o[5] = o_31_;
  assign o[6] = o_31_;
  assign o[7] = o_31_;
  assign o[8] = o_31_;
  assign o[9] = o_31_;
  assign o[10] = o_31_;
  assign o[11] = o_31_;
  assign o[12] = o_31_;
  assign o[13] = o_31_;
  assign o[14] = o_31_;
  assign o[15] = o_31_;
  assign o[16] = o_31_;
  assign o[17] = o_31_;
  assign o[18] = o_31_;
  assign o[19] = o_31_;
  assign o[20] = o_31_;
  assign o[21] = o_31_;
  assign o[22] = o_31_;
  assign o[23] = o_31_;
  assign o[24] = o_31_;
  assign o[25] = o_31_;
  assign o[26] = o_31_;
  assign o[27] = o_31_;
  assign o[28] = o_31_;
  assign o[29] = o_31_;
  assign o[30] = o_31_;
  assign o[31] = o_31_;

endmodule

