

module top
(
  i,
  o
);

  input [63:0] i;
  output [6:0] o;

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



module bsg_encode_one_hot_width_p128
(
  i,
  addr_o,
  v_o
);

  input [127:0] i;
  output [6:0] addr_o;
  output v_o;
  wire [6:0] addr_o;
  wire v_o;
  wire [11:0] aligned_addrs;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p64
  aligned_left
  (
    .i(i[63:0]),
    .addr_o(aligned_addrs[5:0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p64
  aligned_right
  (
    .i(i[127:64]),
    .addr_o(aligned_addrs[11:6]),
    .v_o(addr_o[6])
  );

  assign v_o = addr_o[6] | aligned_vs[0];
  assign addr_o[5] = aligned_addrs[5] | aligned_addrs[11];
  assign addr_o[4] = aligned_addrs[4] | aligned_addrs[10];
  assign addr_o[3] = aligned_addrs[3] | aligned_addrs[9];
  assign addr_o[2] = aligned_addrs[2] | aligned_addrs[8];
  assign addr_o[1] = aligned_addrs[1] | aligned_addrs[7];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[6];

endmodule



module bsg_encode_one_hot_width_p65
(
  i,
  addr_o,
  v_o
);

  input [64:0] i;
  output [6:0] addr_o;
  output v_o;
  wire [6:0] addr_o;
  wire v_o;

  bsg_encode_one_hot_width_p128
  unaligned_align
  (
    .i({ 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, i }),
    .addr_o(addr_o),
    .v_o(v_o)
  );


endmodule



module bsg_thermometer_count
(
  i,
  o
);

  input [63:0] i;
  output [6:0] o;
  wire [6:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62;
  wire [63:0] big_one_hot;

  bsg_encode_one_hot_width_p65
  big_encode_one_hot
  (
    .i({ i[63:63], big_one_hot }),
    .addr_o(o)
  );

  assign big_one_hot[63] = N0 & i[62];
  assign N0 = ~i[63];
  assign big_one_hot[62] = N1 & i[61];
  assign N1 = ~i[62];
  assign big_one_hot[61] = N2 & i[60];
  assign N2 = ~i[61];
  assign big_one_hot[60] = N3 & i[59];
  assign N3 = ~i[60];
  assign big_one_hot[59] = N4 & i[58];
  assign N4 = ~i[59];
  assign big_one_hot[58] = N5 & i[57];
  assign N5 = ~i[58];
  assign big_one_hot[57] = N6 & i[56];
  assign N6 = ~i[57];
  assign big_one_hot[56] = N7 & i[55];
  assign N7 = ~i[56];
  assign big_one_hot[55] = N8 & i[54];
  assign N8 = ~i[55];
  assign big_one_hot[54] = N9 & i[53];
  assign N9 = ~i[54];
  assign big_one_hot[53] = N10 & i[52];
  assign N10 = ~i[53];
  assign big_one_hot[52] = N11 & i[51];
  assign N11 = ~i[52];
  assign big_one_hot[51] = N12 & i[50];
  assign N12 = ~i[51];
  assign big_one_hot[50] = N13 & i[49];
  assign N13 = ~i[50];
  assign big_one_hot[49] = N14 & i[48];
  assign N14 = ~i[49];
  assign big_one_hot[48] = N15 & i[47];
  assign N15 = ~i[48];
  assign big_one_hot[47] = N16 & i[46];
  assign N16 = ~i[47];
  assign big_one_hot[46] = N17 & i[45];
  assign N17 = ~i[46];
  assign big_one_hot[45] = N18 & i[44];
  assign N18 = ~i[45];
  assign big_one_hot[44] = N19 & i[43];
  assign N19 = ~i[44];
  assign big_one_hot[43] = N20 & i[42];
  assign N20 = ~i[43];
  assign big_one_hot[42] = N21 & i[41];
  assign N21 = ~i[42];
  assign big_one_hot[41] = N22 & i[40];
  assign N22 = ~i[41];
  assign big_one_hot[40] = N23 & i[39];
  assign N23 = ~i[40];
  assign big_one_hot[39] = N24 & i[38];
  assign N24 = ~i[39];
  assign big_one_hot[38] = N25 & i[37];
  assign N25 = ~i[38];
  assign big_one_hot[37] = N26 & i[36];
  assign N26 = ~i[37];
  assign big_one_hot[36] = N27 & i[35];
  assign N27 = ~i[36];
  assign big_one_hot[35] = N28 & i[34];
  assign N28 = ~i[35];
  assign big_one_hot[34] = N29 & i[33];
  assign N29 = ~i[34];
  assign big_one_hot[33] = N30 & i[32];
  assign N30 = ~i[33];
  assign big_one_hot[32] = N31 & i[31];
  assign N31 = ~i[32];
  assign big_one_hot[31] = N32 & i[30];
  assign N32 = ~i[31];
  assign big_one_hot[30] = N33 & i[29];
  assign N33 = ~i[30];
  assign big_one_hot[29] = N34 & i[28];
  assign N34 = ~i[29];
  assign big_one_hot[28] = N35 & i[27];
  assign N35 = ~i[28];
  assign big_one_hot[27] = N36 & i[26];
  assign N36 = ~i[27];
  assign big_one_hot[26] = N37 & i[25];
  assign N37 = ~i[26];
  assign big_one_hot[25] = N38 & i[24];
  assign N38 = ~i[25];
  assign big_one_hot[24] = N39 & i[23];
  assign N39 = ~i[24];
  assign big_one_hot[23] = N40 & i[22];
  assign N40 = ~i[23];
  assign big_one_hot[22] = N41 & i[21];
  assign N41 = ~i[22];
  assign big_one_hot[21] = N42 & i[20];
  assign N42 = ~i[21];
  assign big_one_hot[20] = N43 & i[19];
  assign N43 = ~i[20];
  assign big_one_hot[19] = N44 & i[18];
  assign N44 = ~i[19];
  assign big_one_hot[18] = N45 & i[17];
  assign N45 = ~i[18];
  assign big_one_hot[17] = N46 & i[16];
  assign N46 = ~i[17];
  assign big_one_hot[16] = N47 & i[15];
  assign N47 = ~i[16];
  assign big_one_hot[15] = N48 & i[14];
  assign N48 = ~i[15];
  assign big_one_hot[14] = N49 & i[13];
  assign N49 = ~i[14];
  assign big_one_hot[13] = N50 & i[12];
  assign N50 = ~i[13];
  assign big_one_hot[12] = N51 & i[11];
  assign N51 = ~i[12];
  assign big_one_hot[11] = N52 & i[10];
  assign N52 = ~i[11];
  assign big_one_hot[10] = N53 & i[9];
  assign N53 = ~i[10];
  assign big_one_hot[9] = N54 & i[8];
  assign N54 = ~i[9];
  assign big_one_hot[8] = N55 & i[7];
  assign N55 = ~i[8];
  assign big_one_hot[7] = N56 & i[6];
  assign N56 = ~i[7];
  assign big_one_hot[6] = N57 & i[5];
  assign N57 = ~i[6];
  assign big_one_hot[5] = N58 & i[4];
  assign N58 = ~i[5];
  assign big_one_hot[4] = N59 & i[3];
  assign N59 = ~i[4];
  assign big_one_hot[3] = N60 & i[2];
  assign N60 = ~i[3];
  assign big_one_hot[2] = N61 & i[1];
  assign N61 = ~i[2];
  assign big_one_hot[1] = N62 & i[0];
  assign N62 = ~i[1];
  assign big_one_hot[0] = ~i[0];

endmodule

