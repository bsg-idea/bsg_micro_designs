

module bsg_mul_SDN_width_p16
(
  x_i,
  signed_i,
  SDN_o
);

  input [15:0] x_i;
  output [26:0] SDN_o;
  input signed_i;
  wire [26:0] SDN_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54;
  wire [1:0] rof_8__trip;
  assign SDN_o[21] = x_i[15];
  assign SDN_o[18] = x_i[13];
  assign SDN_o[15] = x_i[11];
  assign SDN_o[12] = x_i[9];
  assign SDN_o[9] = x_i[7];
  assign SDN_o[6] = x_i[5];
  assign SDN_o[3] = x_i[3];
  assign SDN_o[0] = x_i[1];
  assign SDN_o[1] = N2 | N5;
  assign N2 = N0 & N1;
  assign N0 = x_i[0] & 1'b0;
  assign N1 = ~x_i[1];
  assign N5 = N4 & x_i[1];
  assign N4 = ~N3;
  assign N3 = x_i[0] | 1'b0;
  assign SDN_o[2] = 1'b0 ^ x_i[0];
  assign SDN_o[4] = N8 | N11;
  assign N8 = N6 & N7;
  assign N6 = x_i[2] & x_i[1];
  assign N7 = ~x_i[3];
  assign N11 = N10 & x_i[3];
  assign N10 = ~N9;
  assign N9 = x_i[2] | x_i[1];
  assign SDN_o[5] = x_i[1] ^ x_i[2];
  assign SDN_o[7] = N14 | N17;
  assign N14 = N12 & N13;
  assign N12 = x_i[4] & x_i[3];
  assign N13 = ~x_i[5];
  assign N17 = N16 & x_i[5];
  assign N16 = ~N15;
  assign N15 = x_i[4] | x_i[3];
  assign SDN_o[8] = x_i[3] ^ x_i[4];
  assign SDN_o[10] = N20 | N23;
  assign N20 = N18 & N19;
  assign N18 = x_i[6] & x_i[5];
  assign N19 = ~x_i[7];
  assign N23 = N22 & x_i[7];
  assign N22 = ~N21;
  assign N21 = x_i[6] | x_i[5];
  assign SDN_o[11] = x_i[5] ^ x_i[6];
  assign SDN_o[13] = N26 | N29;
  assign N26 = N24 & N25;
  assign N24 = x_i[8] & x_i[7];
  assign N25 = ~x_i[9];
  assign N29 = N28 & x_i[9];
  assign N28 = ~N27;
  assign N27 = x_i[8] | x_i[7];
  assign SDN_o[14] = x_i[7] ^ x_i[8];
  assign SDN_o[16] = N32 | N35;
  assign N32 = N30 & N31;
  assign N30 = x_i[10] & x_i[9];
  assign N31 = ~x_i[11];
  assign N35 = N34 & x_i[11];
  assign N34 = ~N33;
  assign N33 = x_i[10] | x_i[9];
  assign SDN_o[17] = x_i[9] ^ x_i[10];
  assign SDN_o[19] = N38 | N41;
  assign N38 = N36 & N37;
  assign N36 = x_i[12] & x_i[11];
  assign N37 = ~x_i[13];
  assign N41 = N40 & x_i[13];
  assign N40 = ~N39;
  assign N39 = x_i[12] | x_i[11];
  assign SDN_o[20] = x_i[11] ^ x_i[12];
  assign SDN_o[22] = N44 | N47;
  assign N44 = N42 & N43;
  assign N42 = x_i[14] & x_i[13];
  assign N43 = ~x_i[15];
  assign N47 = N46 & x_i[15];
  assign N46 = ~N45;
  assign N45 = x_i[14] | x_i[13];
  assign SDN_o[23] = x_i[13] ^ x_i[14];
  assign SDN_o[24] = 1'b0 & N48;
  assign N48 = ~signed_i;
  assign rof_8__trip[1] = 1'b0 & N48;
  assign rof_8__trip[0] = x_i[15] & N48;
  assign SDN_o[25] = N51 | N54;
  assign N51 = N49 & N50;
  assign N49 = rof_8__trip[1] & rof_8__trip[0];
  assign N50 = ~SDN_o[24];
  assign N54 = N53 & SDN_o[24];
  assign N53 = ~N52;
  assign N52 = rof_8__trip[1] | rof_8__trip[0];
  assign SDN_o[26] = rof_8__trip[0] ^ rof_8__trip[1];

endmodule



module bsg_mul_B4B_rep_00000006_0000000000_16_080402_000000_80c8ec_000000_1
(
  SDN_i,
  cr_i,
  y_i,
  signed_i,
  cl_o,
  c_o,
  s_o
);

  input [14:0] SDN_i;
  input [15:0] y_i;
  output [5:0] c_o;
  output [5:0] s_o;
  input cr_i;
  input signed_i;
  output cl_o;
  wire [5:0] c_o,s_o;
  wire cl_o;

  bsg_mul_booth_4_block_rep
  bb4bh
  (
    .SDN_i(SDN_i),
    .cr_i(cr_i),
    .y_vec_i({ 1'b0, 1'b0, y_i[1:0], y_i[3:2], y_i[5:4], 1'b0, 1'b0, y_i[0:0], 1'b0, y_i[2:1], y_i[4:3], 1'b0, 1'b0, 1'b0, 1'b0, y_i[1:0], y_i[3:2], 1'b0, 1'b0, 1'b0, 1'b0, y_i[0:0], 1'b0, y_i[2:1], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, y_i[1:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, y_i[0:0], 1'b0 }),
    .cl_o(cl_o),
    .c_o(c_o),
    .s_o(s_o)
  );


endmodule



module bsg_mul_B4B_rep_00000008_0000000006_16_00000000_00000000_00000000_00000000_1
(
  SDN_i,
  cr_i,
  y_i,
  signed_i,
  cl_o,
  c_o,
  s_o
);

  input [14:0] SDN_i;
  input [15:0] y_i;
  output [7:0] c_o;
  output [7:0] s_o;
  input cr_i;
  input signed_i;
  output cl_o;
  wire [7:0] c_o,s_o;
  wire cl_o;

  bsg_mul_booth_4_block_rep
  bb4bh
  (
    .SDN_i(SDN_i),
    .cr_i(cr_i),
    .y_vec_i({ y_i[7:6], y_i[9:8], y_i[11:10], y_i[13:12], y_i[6:5], y_i[8:7], y_i[10:9], y_i[12:11], y_i[5:4], y_i[7:6], y_i[9:8], y_i[11:10], y_i[4:3], y_i[6:5], y_i[8:7], y_i[10:9], y_i[3:2], y_i[5:4], y_i[7:6], y_i[9:8], y_i[2:1], y_i[4:3], y_i[6:5], y_i[8:7], y_i[1:0], y_i[3:2], y_i[5:4], y_i[7:6], y_i[0:0], 1'b0, y_i[2:1], y_i[4:3], y_i[6:5] }),
    .cl_o(cl_o),
    .c_o(c_o),
    .s_o(s_o)
  );


endmodule



module bsg_mul_B4B_rep_00000006_000000000e_16_000000_300000_000000_000000_1
(
  SDN_i,
  cr_i,
  y_i,
  signed_i,
  cl_o,
  c_o,
  s_o
);

  input [14:0] SDN_i;
  input [15:0] y_i;
  output [5:0] c_o;
  output [5:0] s_o;
  input cr_i;
  input signed_i;
  output cl_o;
  wire [5:0] c_o,s_o;
  wire cl_o;
  wire [28:25] y_pad;

  bsg_mul_booth_4_block_rep
  bb4bh
  (
    .SDN_i(SDN_i),
    .cr_i(cr_i),
    .y_vec_i({ y_i[13:12], y_i[15:14], y_pad[26:25], y_pad[28:27], y_i[12:11], y_i[14:13], y_pad[25:25], y_i[15:15], y_pad[27:26], y_i[11:10], y_i[13:12], y_i[15:14], y_pad[26:25], y_i[10:9], y_i[12:11], y_i[14:13], y_pad[25:25], y_i[15:15], y_i[9:8], y_i[11:10], y_i[13:12], y_i[15:14], y_i[8:7], y_i[10:9], y_i[12:11], y_i[14:13] }),
    .cl_o(cl_o),
    .c_o(c_o),
    .s_o(s_o)
  );

  assign y_pad[28] = y_i[15] & signed_i;
  assign y_pad[27] = y_i[15] & signed_i;
  assign y_pad[26] = y_i[15] & signed_i;
  assign y_pad[25] = y_i[15] & signed_i;

endmodule



module bsg_mul_B4B_rep_00000005_0000000014_16_00000_08040_77331_80402_1
(
  SDN_i,
  cr_i,
  y_i,
  signed_i,
  cl_o,
  c_o,
  s_o
);

  input [14:0] SDN_i;
  input [15:0] y_i;
  output [4:0] c_o;
  output [4:0] s_o;
  input cr_i;
  input signed_i;
  output cl_o;
  wire [4:0] c_o,s_o;
  wire cl_o;
  wire [32:25] y_pad;

  bsg_mul_booth_4_block_rep
  bb4bh
  (
    .SDN_i(SDN_i),
    .cr_i(cr_i),
    .y_vec_i({ y_pad[27:26], y_pad[29:28], y_pad[31:30], 1'b0, y_pad[32:32], y_pad[26:25], y_pad[28:27], y_pad[30:29], y_pad[32:31], y_pad[25:25], y_i[15:15], y_pad[27:26], y_pad[29:28], y_pad[31:30], y_i[15:14], y_pad[26:25], y_pad[28:27], y_pad[30:29], y_i[14:13], y_pad[25:25], y_i[15:15], y_pad[27:26], y_pad[29:28] }),
    .cl_o(cl_o),
    .c_o(c_o),
    .s_o(s_o)
  );

  assign y_pad[32] = y_i[15] & signed_i;
  assign y_pad[31] = y_i[15] & signed_i;
  assign y_pad[30] = y_i[15] & signed_i;
  assign y_pad[29] = y_i[15] & signed_i;
  assign y_pad[28] = y_i[15] & signed_i;
  assign y_pad[27] = y_i[15] & signed_i;
  assign y_pad[26] = y_i[15] & signed_i;
  assign y_pad[25] = y_i[15] & signed_i;

endmodule



module bsg_mul_B4B_rep_rep_4_25_19140e0600_0_16_1
(
  SDN_i,
  cr_i,
  y_i,
  signed_i,
  cl_o,
  c_o,
  s_o
);

  input [14:0] SDN_i;
  input [15:0] y_i;
  output [24:0] c_o;
  output [24:0] s_o;
  input cr_i;
  input signed_i;
  output cl_o;
  wire [24:0] c_o,s_o;
  wire cl_o;
  wire [3:1] carries;

  bsg_mul_B4B_rep_00000006_0000000000_16_080402_000000_80c8ec_000000_1
  rof_0__br
  (
    .SDN_i(SDN_i),
    .cr_i(cr_i),
    .y_i(y_i),
    .signed_i(signed_i),
    .cl_o(carries[1]),
    .c_o(c_o[5:0]),
    .s_o(s_o[5:0])
  );


  bsg_mul_B4B_rep_00000008_0000000006_16_00000000_00000000_00000000_00000000_1
  rof_1__br
  (
    .SDN_i(SDN_i),
    .cr_i(carries[1]),
    .y_i(y_i),
    .signed_i(signed_i),
    .cl_o(carries[2]),
    .c_o(c_o[13:6]),
    .s_o(s_o[13:6])
  );


  bsg_mul_B4B_rep_00000006_000000000e_16_000000_300000_000000_000000_1
  rof_2__br
  (
    .SDN_i(SDN_i),
    .cr_i(carries[2]),
    .y_i(y_i),
    .signed_i(signed_i),
    .cl_o(carries[3]),
    .c_o(c_o[19:14]),
    .s_o(s_o[19:14])
  );


  bsg_mul_B4B_rep_00000005_0000000014_16_00000_08040_77331_80402_1
  rof_3__br
  (
    .SDN_i(SDN_i),
    .cr_i(carries[3]),
    .y_i(y_i),
    .signed_i(signed_i),
    .cl_o(cl_o),
    .c_o(c_o[24:20]),
    .s_o(s_o[24:20])
  );


endmodule



module bsg_mul_B4B_rep_00000008_00fffffffe_16_08040201_00000000_80c8ecfe_00000000_1
(
  SDN_i,
  cr_i,
  y_i,
  signed_i,
  cl_o,
  c_o,
  s_o
);

  input [14:0] SDN_i;
  input [15:0] y_i;
  output [7:0] c_o;
  output [7:0] s_o;
  input cr_i;
  input signed_i;
  output cl_o;
  wire [7:0] c_o,s_o;
  wire cl_o;

  bsg_mul_booth_4_block_rep
  bb4bh
  (
    .SDN_i(SDN_i),
    .cr_i(cr_i),
    .y_vec_i({ 1'b0, 1'b0, y_i[1:0], y_i[3:2], y_i[5:4], 1'b0, 1'b0, y_i[0:0], 1'b0, y_i[2:1], y_i[4:3], 1'b0, 1'b0, 1'b0, 1'b0, y_i[1:0], y_i[3:2], 1'b0, 1'b0, 1'b0, 1'b0, y_i[0:0], 1'b0, y_i[2:1], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, y_i[1:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, y_i[0:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }),
    .cl_o(cl_o),
    .c_o(c_o),
    .s_o(s_o)
  );


endmodule



module bsg_mul_B4B_rep_00000006_0100000006_16_000000_000000_000000_000000_1
(
  SDN_i,
  cr_i,
  y_i,
  signed_i,
  cl_o,
  c_o,
  s_o
);

  input [14:0] SDN_i;
  input [15:0] y_i;
  output [5:0] c_o;
  output [5:0] s_o;
  input cr_i;
  input signed_i;
  output cl_o;
  wire [5:0] c_o,s_o;
  wire cl_o;

  bsg_mul_booth_4_block_rep
  bb4bh
  (
    .SDN_i(SDN_i),
    .cr_i(cr_i),
    .y_vec_i({ y_i[5:4], y_i[7:6], y_i[9:8], y_i[11:10], y_i[4:3], y_i[6:5], y_i[8:7], y_i[10:9], y_i[3:2], y_i[5:4], y_i[7:6], y_i[9:8], y_i[2:1], y_i[4:3], y_i[6:5], y_i[8:7], y_i[1:0], y_i[3:2], y_i[5:4], y_i[7:6], y_i[0:0], 1'b0, y_i[2:1], y_i[4:3], y_i[6:5] }),
    .cl_o(cl_o),
    .c_o(c_o),
    .s_o(s_o)
  );


endmodule



module bsg_mul_B4B_rep_00000006_010000000c_16_000000_100000_000000_000000_1
(
  SDN_i,
  cr_i,
  y_i,
  signed_i,
  cl_o,
  c_o,
  s_o
);

  input [14:0] SDN_i;
  input [15:0] y_i;
  output [5:0] c_o;
  output [5:0] s_o;
  input cr_i;
  input signed_i;
  output cl_o;
  wire [5:0] c_o,s_o;
  wire cl_o;
  wire [26:25] y_pad;

  bsg_mul_booth_4_block_rep
  bb4bh
  (
    .SDN_i(SDN_i),
    .cr_i(cr_i),
    .y_vec_i({ y_i[11:10], y_i[13:12], y_i[15:14], y_pad, y_i[10:9], y_i[12:11], y_i[14:13], y_pad[25:25], y_i[15:15], y_i[9:8], y_i[11:10], y_i[13:12], y_i[15:14], y_i[8:7], y_i[10:9], y_i[12:11], y_i[14:13], y_i[7:6], y_i[9:8], y_i[11:10], y_i[13:12], y_i[6:5], y_i[8:7], y_i[10:9], y_i[12:11] }),
    .cl_o(cl_o),
    .c_o(c_o),
    .s_o(s_o)
  );

  assign y_pad[26] = y_i[15] & signed_i;
  assign y_pad[25] = y_i[15] & signed_i;

endmodule



module bsg_mul_B4B_rep_00000006_0100000012_16_000000_804020_733110_040201_1
(
  SDN_i,
  cr_i,
  y_i,
  signed_i,
  cl_o,
  c_o,
  s_o
);

  input [14:0] SDN_i;
  input [15:0] y_i;
  output [5:0] c_o;
  output [5:0] s_o;
  input cr_i;
  input signed_i;
  output cl_o;
  wire [5:0] c_o,s_o;
  wire cl_o;
  wire [32:25] y_pad;

  bsg_mul_booth_4_block_rep
  bb4bh
  (
    .SDN_i(SDN_i),
    .cr_i(cr_i),
    .y_vec_i({ y_pad[26:25], y_pad[28:27], y_pad[30:29], y_pad[32:31], y_pad[25:25], y_i[15:15], y_pad[27:26], y_pad[29:28], y_pad[31:30], y_i[15:14], y_pad[26:25], y_pad[28:27], y_pad[30:29], y_i[14:13], y_pad[25:25], y_i[15:15], y_pad[27:26], y_pad[29:28], y_i[13:12], y_i[15:14], y_pad[26:25], y_pad[28:27], y_i[12:11], y_i[14:13], y_pad[25:25], y_i[15:15], y_pad[27:26] }),
    .cl_o(cl_o),
    .c_o(c_o),
    .s_o(s_o)
  );

  assign y_pad[32] = y_i[15] & signed_i;
  assign y_pad[31] = y_i[15] & signed_i;
  assign y_pad[30] = y_i[15] & signed_i;
  assign y_pad[29] = y_i[15] & signed_i;
  assign y_pad[28] = y_i[15] & signed_i;
  assign y_pad[27] = y_i[15] & signed_i;
  assign y_pad[26] = y_i[15] & signed_i;
  assign y_pad[25] = y_i[15] & signed_i;

endmodule



module bsg_mul_B4B_rep_rep_4_26_1a140e0800_n2_16_1
(
  SDN_i,
  cr_i,
  y_i,
  signed_i,
  cl_o,
  c_o,
  s_o
);

  input [14:0] SDN_i;
  input [15:0] y_i;
  output [25:0] c_o;
  output [25:0] s_o;
  input cr_i;
  input signed_i;
  output cl_o;
  wire [25:0] c_o,s_o;
  wire cl_o;
  wire [3:1] carries;

  bsg_mul_B4B_rep_00000008_00fffffffe_16_08040201_00000000_80c8ecfe_00000000_1
  rof_0__br
  (
    .SDN_i(SDN_i),
    .cr_i(cr_i),
    .y_i(y_i),
    .signed_i(signed_i),
    .cl_o(carries[1]),
    .c_o(c_o[7:0]),
    .s_o(s_o[7:0])
  );


  bsg_mul_B4B_rep_00000006_0100000006_16_000000_000000_000000_000000_1
  rof_1__br
  (
    .SDN_i(SDN_i),
    .cr_i(carries[1]),
    .y_i(y_i),
    .signed_i(signed_i),
    .cl_o(carries[2]),
    .c_o(c_o[13:8]),
    .s_o(s_o[13:8])
  );


  bsg_mul_B4B_rep_00000006_010000000c_16_000000_100000_000000_000000_1
  rof_2__br
  (
    .SDN_i(SDN_i),
    .cr_i(carries[2]),
    .y_i(y_i),
    .signed_i(signed_i),
    .cl_o(carries[3]),
    .c_o(c_o[19:14]),
    .s_o(s_o[19:14])
  );


  bsg_mul_B4B_rep_00000006_0100000012_16_000000_804020_733110_040201_1
  rof_3__br
  (
    .SDN_i(SDN_i),
    .cr_i(carries[3]),
    .y_i(y_i),
    .signed_i(signed_i),
    .cl_o(cl_o),
    .c_o(c_o[25:20]),
    .s_o(s_o[25:20])
  );


endmodule



module bsg_mul_comp42_rep_rep_4_26_1a140e0800
(
  i,
  cr_i,
  cl_o,
  c_o,
  s_o
);

  input [103:0] i;
  output [25:0] c_o;
  output [25:0] s_o;
  input cr_i;
  output cl_o;
  wire [25:0] c_o,s_o;
  wire cl_o;
  wire [3:1] carries;

  bsg_mul_comp42_rep
  rof_0__cr
  (
    .i({ i[85:78], i[59:52], i[33:26], i[7:0] }),
    .cr_i(cr_i),
    .cl_o(carries[1]),
    .c_o(c_o[7:0]),
    .s_o(s_o[7:0])
  );


  bsg_mul_comp42_rep
  rof_1__cr
  (
    .i({ i[91:86], i[65:60], i[39:34], i[13:8] }),
    .cr_i(carries[1]),
    .cl_o(carries[2]),
    .c_o(c_o[13:8]),
    .s_o(s_o[13:8])
  );


  bsg_mul_comp42_rep
  rof_2__cr
  (
    .i({ i[97:92], i[71:66], i[45:40], i[19:14] }),
    .cr_i(carries[2]),
    .cl_o(carries[3]),
    .c_o(c_o[19:14]),
    .s_o(s_o[19:14])
  );


  bsg_mul_comp42_rep
  rof_3__cr
  (
    .i({ i[103:98], i[77:72], i[51:46], i[25:20] }),
    .cr_i(carries[3]),
    .cl_o(cl_o),
    .c_o(c_o[25:20]),
    .s_o(s_o[25:20])
  );


endmodule



module bsg_mul_16_16_harden_p1
(
  x_i,
  y_i,
  signed_i,
  z_o
);

  input [15:0] x_i;
  input [15:0] y_i;
  output [31:0] z_o;
  input signed_i;
  wire [31:0] z_o;
  wire [26:0] SDN;
  wire [2:0] verify_zero;
  wire [24:0] c30,s30;
  wire [25:0] c74,s74,c42_c,c42_s;
  wire [17:0] gb_c,gb_s;

  bsg_mul_SDN_width_p16
  sdn
  (
    .x_i(x_i),
    .signed_i(signed_i),
    .SDN_o(SDN)
  );


  bsg_mul_B4B_rep_rep_4_25_19140e0600_0_16_1
  brr0
  (
    .SDN_i({ SDN[11:0], 1'b0, 1'b0, 1'b0 }),
    .cr_i(1'b0),
    .y_i(y_i),
    .signed_i(signed_i),
    .cl_o(verify_zero[0]),
    .c_o(c30),
    .s_o(s30)
  );


  bsg_mul_B4B_rep_rep_4_26_1a140e0800_n2_16_1
  brr1
  (
    .SDN_i(SDN[23:9]),
    .cr_i(1'b0),
    .y_i(y_i),
    .signed_i(signed_i),
    .cl_o(verify_zero[1]),
    .c_o(c74),
    .s_o(s74)
  );


  bsg_mul_comp42_rep_rep_4_26_1a140e0800
  crr
  (
    .i({ c74[24:0], 1'b0, s74, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, c30[24:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, s30[24:6] }),
    .cr_i(1'b0),
    .cl_o(verify_zero[2]),
    .c_o(c42_c),
    .s_o(c42_s)
  );


  bsg_mul_green_block
  gb
  (
    .SDN_i(SDN[26:21]),
    .y_i(y_i),
    .s_i(c42_s[25:8]),
    .s2_i(c42_c[24:7]),
    .c_o(gb_c),
    .s_o(gb_s)
  );

  assign z_o = { gb_s, c42_s[7:0], s30[5:0] } + { gb_c[16:0], 1'b0, c42_c[6:0], 1'b0, c30[4:0], 1'b0 };

endmodule



module bsg_mul_pipelined_width_p16_pipeline_p0_harden_p1
(
  clock_i,
  en_i,
  x_i,
  y_i,
  signed_i,
  z_o
);

  input [15:0] x_i;
  input [15:0] y_i;
  output [31:0] z_o;
  input clock_i;
  input en_i;
  input signed_i;
  wire [31:0] z_o;

  bsg_mul_16_16_harden_p1
  fi16_m16
  (
    .x_i(x_i),
    .y_i(y_i),
    .signed_i(signed_i),
    .z_o(z_o)
  );


endmodule



module bsg_mul_width_p16
(
  x_i,
  y_i,
  signed_i,
  z_o
);

  input [15:0] x_i;
  input [15:0] y_i;
  output [31:0] z_o;
  input signed_i;
  wire [31:0] z_o;

  bsg_mul_pipelined_width_p16_pipeline_p0_harden_p1
  bmp
  (
    .clock_i(1'b0),
    .en_i(1'b0),
    .x_i(x_i),
    .y_i(y_i),
    .signed_i(signed_i),
    .z_o(z_o)
  );


endmodule

