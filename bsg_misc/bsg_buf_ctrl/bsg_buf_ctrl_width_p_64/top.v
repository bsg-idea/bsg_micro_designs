

module top
(
  i,
  o
);

  output [63:0] o;
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

  output [63:0] o;
  input i;
  wire [63:0] o;
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
  assign o[16] = i;
  assign o[17] = i;
  assign o[18] = i;
  assign o[19] = i;
  assign o[20] = i;
  assign o[21] = i;
  assign o[22] = i;
  assign o[23] = i;
  assign o[24] = i;
  assign o[25] = i;
  assign o[26] = i;
  assign o[27] = i;
  assign o[28] = i;
  assign o[29] = i;
  assign o[30] = i;
  assign o[31] = i;
  assign o[32] = i;
  assign o[33] = i;
  assign o[34] = i;
  assign o[35] = i;
  assign o[36] = i;
  assign o[37] = i;
  assign o[38] = i;
  assign o[39] = i;
  assign o[40] = i;
  assign o[41] = i;
  assign o[42] = i;
  assign o[43] = i;
  assign o[44] = i;
  assign o[45] = i;
  assign o[46] = i;
  assign o[47] = i;
  assign o[48] = i;
  assign o[49] = i;
  assign o[50] = i;
  assign o[51] = i;
  assign o[52] = i;
  assign o[53] = i;
  assign o[54] = i;
  assign o[55] = i;
  assign o[56] = i;
  assign o[57] = i;
  assign o[58] = i;
  assign o[59] = i;
  assign o[60] = i;
  assign o[61] = i;
  assign o[62] = i;
  assign o[63] = i;

endmodule

