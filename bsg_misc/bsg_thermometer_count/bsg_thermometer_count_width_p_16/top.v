

module top
(
  i,
  o
);

  input [15:0] i;
  output [4:0] o;

  bsg_thermometer_count
  wrapper
  (
    .i(i),
    .o(o)
  );


endmodule



module bsg_encode_one_hot_width_p1
(
  i,
  addr_o,
  v_o
);

  input [0:0] i;
  output [0:0] addr_o;
  output v_o;
  wire [0:0] addr_o;
  wire v_o;
  assign v_o = i[0];
  assign addr_o[0] = 1'b0;

endmodule



module bsg_encode_one_hot_width_p2
(
  i,
  addr_o,
  v_o
);

  input [1:0] i;
  output [0:0] addr_o;
  output v_o;
  wire [0:0] addr_o,aligned_vs;
  wire v_o;
  wire [1:0] aligned_addrs;

  bsg_encode_one_hot_width_p1
  aligned_left
  (
    .i(i[0]),
    .addr_o(aligned_addrs[0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p1
  aligned_right
  (
    .i(i[1]),
    .addr_o(aligned_addrs[1]),
    .v_o(addr_o[0])
  );

  assign v_o = addr_o[0] | aligned_vs[0];

endmodule



module bsg_encode_one_hot_width_p4
(
  i,
  addr_o,
  v_o
);

  input [3:0] i;
  output [1:0] addr_o;
  output v_o;
  wire [1:0] addr_o,aligned_addrs;
  wire v_o;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p2
  aligned_left
  (
    .i(i[1:0]),
    .addr_o(aligned_addrs[0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p2
  aligned_right
  (
    .i(i[3:2]),
    .addr_o(aligned_addrs[1]),
    .v_o(addr_o[1])
  );

  assign v_o = addr_o[1] | aligned_vs[0];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[1];

endmodule



module bsg_encode_one_hot_width_p8
(
  i,
  addr_o,
  v_o
);

  input [7:0] i;
  output [2:0] addr_o;
  output v_o;
  wire [2:0] addr_o;
  wire v_o;
  wire [3:0] aligned_addrs;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p4
  aligned_left
  (
    .i(i[3:0]),
    .addr_o(aligned_addrs[1:0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p4
  aligned_right
  (
    .i(i[7:4]),
    .addr_o(aligned_addrs[3:2]),
    .v_o(addr_o[2])
  );

  assign v_o = addr_o[2] | aligned_vs[0];
  assign addr_o[1] = aligned_addrs[1] | aligned_addrs[3];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[2];

endmodule



module bsg_encode_one_hot_width_p16
(
  i,
  addr_o,
  v_o
);

  input [15:0] i;
  output [3:0] addr_o;
  output v_o;
  wire [3:0] addr_o;
  wire v_o;
  wire [5:0] aligned_addrs;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p8
  aligned_left
  (
    .i(i[7:0]),
    .addr_o(aligned_addrs[2:0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p8
  aligned_right
  (
    .i(i[15:8]),
    .addr_o(aligned_addrs[5:3]),
    .v_o(addr_o[3])
  );

  assign v_o = addr_o[3] | aligned_vs[0];
  assign addr_o[2] = aligned_addrs[2] | aligned_addrs[5];
  assign addr_o[1] = aligned_addrs[1] | aligned_addrs[4];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[3];

endmodule



module bsg_encode_one_hot_width_p32
(
  i,
  addr_o,
  v_o
);

  input [31:0] i;
  output [4:0] addr_o;
  output v_o;
  wire [4:0] addr_o;
  wire v_o;
  wire [7:0] aligned_addrs;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p16
  aligned_left
  (
    .i(i[15:0]),
    .addr_o(aligned_addrs[3:0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p16
  aligned_right
  (
    .i(i[31:16]),
    .addr_o(aligned_addrs[7:4]),
    .v_o(addr_o[4])
  );

  assign v_o = addr_o[4] | aligned_vs[0];
  assign addr_o[3] = aligned_addrs[3] | aligned_addrs[7];
  assign addr_o[2] = aligned_addrs[2] | aligned_addrs[6];
  assign addr_o[1] = aligned_addrs[1] | aligned_addrs[5];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[4];

endmodule



module bsg_encode_one_hot_width_p17
(
  i,
  addr_o,
  v_o
);

  input [16:0] i;
  output [4:0] addr_o;
  output v_o;
  wire [4:0] addr_o;
  wire v_o;

  bsg_encode_one_hot_width_p32
  unaligned_align
  (
    .i({ 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, i }),
    .addr_o(addr_o),
    .v_o(v_o)
  );


endmodule



module bsg_thermometer_count
(
  i,
  o
);

  input [15:0] i;
  output [4:0] o;
  wire [4:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14;
  wire [15:0] big_one_hot;

  bsg_encode_one_hot_width_p17
  big_encode_one_hot
  (
    .i({ i[15:15], big_one_hot }),
    .addr_o(o)
  );

  assign big_one_hot[15] = N0 & i[14];
  assign N0 = ~i[15];
  assign big_one_hot[14] = N1 & i[13];
  assign N1 = ~i[14];
  assign big_one_hot[13] = N2 & i[12];
  assign N2 = ~i[13];
  assign big_one_hot[12] = N3 & i[11];
  assign N3 = ~i[12];
  assign big_one_hot[11] = N4 & i[10];
  assign N4 = ~i[11];
  assign big_one_hot[10] = N5 & i[9];
  assign N5 = ~i[10];
  assign big_one_hot[9] = N6 & i[8];
  assign N6 = ~i[9];
  assign big_one_hot[8] = N7 & i[7];
  assign N7 = ~i[8];
  assign big_one_hot[7] = N8 & i[6];
  assign N8 = ~i[7];
  assign big_one_hot[6] = N9 & i[5];
  assign N9 = ~i[6];
  assign big_one_hot[5] = N10 & i[4];
  assign N10 = ~i[5];
  assign big_one_hot[4] = N11 & i[3];
  assign N11 = ~i[4];
  assign big_one_hot[3] = N12 & i[2];
  assign N12 = ~i[3];
  assign big_one_hot[2] = N13 & i[1];
  assign N13 = ~i[2];
  assign big_one_hot[1] = N14 & i[0];
  assign N14 = ~i[1];
  assign big_one_hot[0] = ~i[0];

endmodule

