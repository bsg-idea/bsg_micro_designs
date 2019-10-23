

module top
(
  i,
  o
);

  input [23:0] i;
  output [31:0] o;

  bsg_unconcentrate_static
  wrapper
  (
    .i(i),
    .o(o)
  );


endmodule



module bsg_unconcentrate_static
(
  i,
  o
);

  input [23:0] i;
  output [31:0] o;
  wire [31:0] o;
  assign o[1] = 1'b0;
  assign o[2] = 1'b0;
  assign o[6] = 1'b0;
  assign o[9] = 1'b0;
  assign o[12] = 1'b0;
  assign o[22] = 1'b0;
  assign o[25] = 1'b0;
  assign o[28] = 1'b0;
  assign o[31] = i[23];
  assign o[30] = i[22];
  assign o[29] = i[21];
  assign o[27] = i[20];
  assign o[26] = i[19];
  assign o[24] = i[18];
  assign o[23] = i[17];
  assign o[21] = i[16];
  assign o[20] = i[15];
  assign o[19] = i[14];
  assign o[18] = i[13];
  assign o[17] = i[12];
  assign o[16] = i[11];
  assign o[15] = i[10];
  assign o[14] = i[9];
  assign o[13] = i[8];
  assign o[11] = i[7];
  assign o[10] = i[6];
  assign o[8] = i[5];
  assign o[7] = i[4];
  assign o[5] = i[3];
  assign o[4] = i[2];
  assign o[3] = i[1];
  assign o[0] = i[0];

endmodule

