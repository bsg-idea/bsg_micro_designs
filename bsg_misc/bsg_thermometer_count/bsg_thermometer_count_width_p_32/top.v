

module top
(
  i,
  o
);

  input [31:0] i;
  output [5:0] o;

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



module bsg_encode_one_hot_width_p64
(
  i,
  addr_o,
  v_o
);

  input [63:0] i;
  output [5:0] addr_o;
  output v_o;
  wire [5:0] addr_o;
  wire v_o;
  wire [9:0] aligned_addrs;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p32
  aligned_left
  (
    .i(i[31:0]),
    .addr_o(aligned_addrs[4:0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p32
  aligned_right
  (
    .i(i[63:32]),
    .addr_o(aligned_addrs[9:5]),
    .v_o(addr_o[5])
  );

  assign v_o = addr_o[5] | aligned_vs[0];
  assign addr_o[4] = aligned_addrs[4] | aligned_addrs[9];
  assign addr_o[3] = aligned_addrs[3] | aligned_addrs[8];
  assign addr_o[2] = aligned_addrs[2] | aligned_addrs[7];
  assign addr_o[1] = aligned_addrs[1] | aligned_addrs[6];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[5];

endmodule



module bsg_encode_one_hot_width_p33
(
  i,
  addr_o,
  v_o
);

  input [32:0] i;
  output [5:0] addr_o;
  output v_o;
  wire [5:0] addr_o;
  wire v_o;

  bsg_encode_one_hot_width_p64
  unaligned_align
  (
    .i({ 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, i }),
    .addr_o(addr_o),
    .v_o(v_o)
  );


endmodule



module bsg_thermometer_count
(
  i,
  o
);

  input [31:0] i;
  output [5:0] o;
  wire [5:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30;
  wire [31:0] big_one_hot;

  bsg_encode_one_hot_width_p33
  big_encode_one_hot
  (
    .i({ i[31:31], big_one_hot }),
    .addr_o(o)
  );

  assign big_one_hot[31] = N0 & i[30];
  assign N0 = ~i[31];
  assign big_one_hot[30] = N1 & i[29];
  assign N1 = ~i[30];
  assign big_one_hot[29] = N2 & i[28];
  assign N2 = ~i[29];
  assign big_one_hot[28] = N3 & i[27];
  assign N3 = ~i[28];
  assign big_one_hot[27] = N4 & i[26];
  assign N4 = ~i[27];
  assign big_one_hot[26] = N5 & i[25];
  assign N5 = ~i[26];
  assign big_one_hot[25] = N6 & i[24];
  assign N6 = ~i[25];
  assign big_one_hot[24] = N7 & i[23];
  assign N7 = ~i[24];
  assign big_one_hot[23] = N8 & i[22];
  assign N8 = ~i[23];
  assign big_one_hot[22] = N9 & i[21];
  assign N9 = ~i[22];
  assign big_one_hot[21] = N10 & i[20];
  assign N10 = ~i[21];
  assign big_one_hot[20] = N11 & i[19];
  assign N11 = ~i[20];
  assign big_one_hot[19] = N12 & i[18];
  assign N12 = ~i[19];
  assign big_one_hot[18] = N13 & i[17];
  assign N13 = ~i[18];
  assign big_one_hot[17] = N14 & i[16];
  assign N14 = ~i[17];
  assign big_one_hot[16] = N15 & i[15];
  assign N15 = ~i[16];
  assign big_one_hot[15] = N16 & i[14];
  assign N16 = ~i[15];
  assign big_one_hot[14] = N17 & i[13];
  assign N17 = ~i[14];
  assign big_one_hot[13] = N18 & i[12];
  assign N18 = ~i[13];
  assign big_one_hot[12] = N19 & i[11];
  assign N19 = ~i[12];
  assign big_one_hot[11] = N20 & i[10];
  assign N20 = ~i[11];
  assign big_one_hot[10] = N21 & i[9];
  assign N21 = ~i[10];
  assign big_one_hot[9] = N22 & i[8];
  assign N22 = ~i[9];
  assign big_one_hot[8] = N23 & i[7];
  assign N23 = ~i[8];
  assign big_one_hot[7] = N24 & i[6];
  assign N24 = ~i[7];
  assign big_one_hot[6] = N25 & i[5];
  assign N25 = ~i[6];
  assign big_one_hot[5] = N26 & i[4];
  assign N26 = ~i[5];
  assign big_one_hot[4] = N27 & i[3];
  assign N27 = ~i[4];
  assign big_one_hot[3] = N28 & i[2];
  assign N28 = ~i[3];
  assign big_one_hot[2] = N29 & i[1];
  assign N29 = ~i[2];
  assign big_one_hot[1] = N30 & i[0];
  assign N30 = ~i[1];
  assign big_one_hot[0] = ~i[0];

endmodule

