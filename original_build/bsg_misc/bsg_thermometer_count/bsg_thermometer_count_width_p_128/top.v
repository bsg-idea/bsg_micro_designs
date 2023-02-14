

module top
(
  i,
  o
);

  input [127:0] i;
  output [7:0] o;

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



module bsg_encode_one_hot_width_p256
(
  i,
  addr_o,
  v_o
);

  input [255:0] i;
  output [7:0] addr_o;
  output v_o;
  wire [7:0] addr_o;
  wire v_o;
  wire [13:0] aligned_addrs;
  wire [0:0] aligned_vs;

  bsg_encode_one_hot_width_p128
  aligned_left
  (
    .i(i[127:0]),
    .addr_o(aligned_addrs[6:0]),
    .v_o(aligned_vs[0])
  );


  bsg_encode_one_hot_width_p128
  aligned_right
  (
    .i(i[255:128]),
    .addr_o(aligned_addrs[13:7]),
    .v_o(addr_o[7])
  );

  assign v_o = addr_o[7] | aligned_vs[0];
  assign addr_o[6] = aligned_addrs[6] | aligned_addrs[13];
  assign addr_o[5] = aligned_addrs[5] | aligned_addrs[12];
  assign addr_o[4] = aligned_addrs[4] | aligned_addrs[11];
  assign addr_o[3] = aligned_addrs[3] | aligned_addrs[10];
  assign addr_o[2] = aligned_addrs[2] | aligned_addrs[9];
  assign addr_o[1] = aligned_addrs[1] | aligned_addrs[8];
  assign addr_o[0] = aligned_addrs[0] | aligned_addrs[7];

endmodule



module bsg_encode_one_hot_width_p129
(
  i,
  addr_o,
  v_o
);

  input [128:0] i;
  output [7:0] addr_o;
  output v_o;
  wire [7:0] addr_o;
  wire v_o;

  bsg_encode_one_hot_width_p256
  unaligned_align
  (
    .i({ 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, i }),
    .addr_o(addr_o),
    .v_o(v_o)
  );


endmodule



module bsg_thermometer_count
(
  i,
  o
);

  input [127:0] i;
  output [7:0] o;
  wire [7:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126;
  wire [127:0] big_one_hot;

  bsg_encode_one_hot_width_p129
  big_encode_one_hot
  (
    .i({ i[127:127], big_one_hot }),
    .addr_o(o)
  );

  assign big_one_hot[127] = N0 & i[126];
  assign N0 = ~i[127];
  assign big_one_hot[126] = N1 & i[125];
  assign N1 = ~i[126];
  assign big_one_hot[125] = N2 & i[124];
  assign N2 = ~i[125];
  assign big_one_hot[124] = N3 & i[123];
  assign N3 = ~i[124];
  assign big_one_hot[123] = N4 & i[122];
  assign N4 = ~i[123];
  assign big_one_hot[122] = N5 & i[121];
  assign N5 = ~i[122];
  assign big_one_hot[121] = N6 & i[120];
  assign N6 = ~i[121];
  assign big_one_hot[120] = N7 & i[119];
  assign N7 = ~i[120];
  assign big_one_hot[119] = N8 & i[118];
  assign N8 = ~i[119];
  assign big_one_hot[118] = N9 & i[117];
  assign N9 = ~i[118];
  assign big_one_hot[117] = N10 & i[116];
  assign N10 = ~i[117];
  assign big_one_hot[116] = N11 & i[115];
  assign N11 = ~i[116];
  assign big_one_hot[115] = N12 & i[114];
  assign N12 = ~i[115];
  assign big_one_hot[114] = N13 & i[113];
  assign N13 = ~i[114];
  assign big_one_hot[113] = N14 & i[112];
  assign N14 = ~i[113];
  assign big_one_hot[112] = N15 & i[111];
  assign N15 = ~i[112];
  assign big_one_hot[111] = N16 & i[110];
  assign N16 = ~i[111];
  assign big_one_hot[110] = N17 & i[109];
  assign N17 = ~i[110];
  assign big_one_hot[109] = N18 & i[108];
  assign N18 = ~i[109];
  assign big_one_hot[108] = N19 & i[107];
  assign N19 = ~i[108];
  assign big_one_hot[107] = N20 & i[106];
  assign N20 = ~i[107];
  assign big_one_hot[106] = N21 & i[105];
  assign N21 = ~i[106];
  assign big_one_hot[105] = N22 & i[104];
  assign N22 = ~i[105];
  assign big_one_hot[104] = N23 & i[103];
  assign N23 = ~i[104];
  assign big_one_hot[103] = N24 & i[102];
  assign N24 = ~i[103];
  assign big_one_hot[102] = N25 & i[101];
  assign N25 = ~i[102];
  assign big_one_hot[101] = N26 & i[100];
  assign N26 = ~i[101];
  assign big_one_hot[100] = N27 & i[99];
  assign N27 = ~i[100];
  assign big_one_hot[99] = N28 & i[98];
  assign N28 = ~i[99];
  assign big_one_hot[98] = N29 & i[97];
  assign N29 = ~i[98];
  assign big_one_hot[97] = N30 & i[96];
  assign N30 = ~i[97];
  assign big_one_hot[96] = N31 & i[95];
  assign N31 = ~i[96];
  assign big_one_hot[95] = N32 & i[94];
  assign N32 = ~i[95];
  assign big_one_hot[94] = N33 & i[93];
  assign N33 = ~i[94];
  assign big_one_hot[93] = N34 & i[92];
  assign N34 = ~i[93];
  assign big_one_hot[92] = N35 & i[91];
  assign N35 = ~i[92];
  assign big_one_hot[91] = N36 & i[90];
  assign N36 = ~i[91];
  assign big_one_hot[90] = N37 & i[89];
  assign N37 = ~i[90];
  assign big_one_hot[89] = N38 & i[88];
  assign N38 = ~i[89];
  assign big_one_hot[88] = N39 & i[87];
  assign N39 = ~i[88];
  assign big_one_hot[87] = N40 & i[86];
  assign N40 = ~i[87];
  assign big_one_hot[86] = N41 & i[85];
  assign N41 = ~i[86];
  assign big_one_hot[85] = N42 & i[84];
  assign N42 = ~i[85];
  assign big_one_hot[84] = N43 & i[83];
  assign N43 = ~i[84];
  assign big_one_hot[83] = N44 & i[82];
  assign N44 = ~i[83];
  assign big_one_hot[82] = N45 & i[81];
  assign N45 = ~i[82];
  assign big_one_hot[81] = N46 & i[80];
  assign N46 = ~i[81];
  assign big_one_hot[80] = N47 & i[79];
  assign N47 = ~i[80];
  assign big_one_hot[79] = N48 & i[78];
  assign N48 = ~i[79];
  assign big_one_hot[78] = N49 & i[77];
  assign N49 = ~i[78];
  assign big_one_hot[77] = N50 & i[76];
  assign N50 = ~i[77];
  assign big_one_hot[76] = N51 & i[75];
  assign N51 = ~i[76];
  assign big_one_hot[75] = N52 & i[74];
  assign N52 = ~i[75];
  assign big_one_hot[74] = N53 & i[73];
  assign N53 = ~i[74];
  assign big_one_hot[73] = N54 & i[72];
  assign N54 = ~i[73];
  assign big_one_hot[72] = N55 & i[71];
  assign N55 = ~i[72];
  assign big_one_hot[71] = N56 & i[70];
  assign N56 = ~i[71];
  assign big_one_hot[70] = N57 & i[69];
  assign N57 = ~i[70];
  assign big_one_hot[69] = N58 & i[68];
  assign N58 = ~i[69];
  assign big_one_hot[68] = N59 & i[67];
  assign N59 = ~i[68];
  assign big_one_hot[67] = N60 & i[66];
  assign N60 = ~i[67];
  assign big_one_hot[66] = N61 & i[65];
  assign N61 = ~i[66];
  assign big_one_hot[65] = N62 & i[64];
  assign N62 = ~i[65];
  assign big_one_hot[64] = N63 & i[63];
  assign N63 = ~i[64];
  assign big_one_hot[63] = N64 & i[62];
  assign N64 = ~i[63];
  assign big_one_hot[62] = N65 & i[61];
  assign N65 = ~i[62];
  assign big_one_hot[61] = N66 & i[60];
  assign N66 = ~i[61];
  assign big_one_hot[60] = N67 & i[59];
  assign N67 = ~i[60];
  assign big_one_hot[59] = N68 & i[58];
  assign N68 = ~i[59];
  assign big_one_hot[58] = N69 & i[57];
  assign N69 = ~i[58];
  assign big_one_hot[57] = N70 & i[56];
  assign N70 = ~i[57];
  assign big_one_hot[56] = N71 & i[55];
  assign N71 = ~i[56];
  assign big_one_hot[55] = N72 & i[54];
  assign N72 = ~i[55];
  assign big_one_hot[54] = N73 & i[53];
  assign N73 = ~i[54];
  assign big_one_hot[53] = N74 & i[52];
  assign N74 = ~i[53];
  assign big_one_hot[52] = N75 & i[51];
  assign N75 = ~i[52];
  assign big_one_hot[51] = N76 & i[50];
  assign N76 = ~i[51];
  assign big_one_hot[50] = N77 & i[49];
  assign N77 = ~i[50];
  assign big_one_hot[49] = N78 & i[48];
  assign N78 = ~i[49];
  assign big_one_hot[48] = N79 & i[47];
  assign N79 = ~i[48];
  assign big_one_hot[47] = N80 & i[46];
  assign N80 = ~i[47];
  assign big_one_hot[46] = N81 & i[45];
  assign N81 = ~i[46];
  assign big_one_hot[45] = N82 & i[44];
  assign N82 = ~i[45];
  assign big_one_hot[44] = N83 & i[43];
  assign N83 = ~i[44];
  assign big_one_hot[43] = N84 & i[42];
  assign N84 = ~i[43];
  assign big_one_hot[42] = N85 & i[41];
  assign N85 = ~i[42];
  assign big_one_hot[41] = N86 & i[40];
  assign N86 = ~i[41];
  assign big_one_hot[40] = N87 & i[39];
  assign N87 = ~i[40];
  assign big_one_hot[39] = N88 & i[38];
  assign N88 = ~i[39];
  assign big_one_hot[38] = N89 & i[37];
  assign N89 = ~i[38];
  assign big_one_hot[37] = N90 & i[36];
  assign N90 = ~i[37];
  assign big_one_hot[36] = N91 & i[35];
  assign N91 = ~i[36];
  assign big_one_hot[35] = N92 & i[34];
  assign N92 = ~i[35];
  assign big_one_hot[34] = N93 & i[33];
  assign N93 = ~i[34];
  assign big_one_hot[33] = N94 & i[32];
  assign N94 = ~i[33];
  assign big_one_hot[32] = N95 & i[31];
  assign N95 = ~i[32];
  assign big_one_hot[31] = N96 & i[30];
  assign N96 = ~i[31];
  assign big_one_hot[30] = N97 & i[29];
  assign N97 = ~i[30];
  assign big_one_hot[29] = N98 & i[28];
  assign N98 = ~i[29];
  assign big_one_hot[28] = N99 & i[27];
  assign N99 = ~i[28];
  assign big_one_hot[27] = N100 & i[26];
  assign N100 = ~i[27];
  assign big_one_hot[26] = N101 & i[25];
  assign N101 = ~i[26];
  assign big_one_hot[25] = N102 & i[24];
  assign N102 = ~i[25];
  assign big_one_hot[24] = N103 & i[23];
  assign N103 = ~i[24];
  assign big_one_hot[23] = N104 & i[22];
  assign N104 = ~i[23];
  assign big_one_hot[22] = N105 & i[21];
  assign N105 = ~i[22];
  assign big_one_hot[21] = N106 & i[20];
  assign N106 = ~i[21];
  assign big_one_hot[20] = N107 & i[19];
  assign N107 = ~i[20];
  assign big_one_hot[19] = N108 & i[18];
  assign N108 = ~i[19];
  assign big_one_hot[18] = N109 & i[17];
  assign N109 = ~i[18];
  assign big_one_hot[17] = N110 & i[16];
  assign N110 = ~i[17];
  assign big_one_hot[16] = N111 & i[15];
  assign N111 = ~i[16];
  assign big_one_hot[15] = N112 & i[14];
  assign N112 = ~i[15];
  assign big_one_hot[14] = N113 & i[13];
  assign N113 = ~i[14];
  assign big_one_hot[13] = N114 & i[12];
  assign N114 = ~i[13];
  assign big_one_hot[12] = N115 & i[11];
  assign N115 = ~i[12];
  assign big_one_hot[11] = N116 & i[10];
  assign N116 = ~i[11];
  assign big_one_hot[10] = N117 & i[9];
  assign N117 = ~i[10];
  assign big_one_hot[9] = N118 & i[8];
  assign N118 = ~i[9];
  assign big_one_hot[8] = N119 & i[7];
  assign N119 = ~i[8];
  assign big_one_hot[7] = N120 & i[6];
  assign N120 = ~i[7];
  assign big_one_hot[6] = N121 & i[5];
  assign N121 = ~i[6];
  assign big_one_hot[5] = N122 & i[4];
  assign N122 = ~i[5];
  assign big_one_hot[4] = N123 & i[3];
  assign N123 = ~i[4];
  assign big_one_hot[3] = N124 & i[2];
  assign N124 = ~i[3];
  assign big_one_hot[2] = N125 & i[1];
  assign N125 = ~i[2];
  assign big_one_hot[1] = N126 & i[0];
  assign N126 = ~i[1];
  assign big_one_hot[0] = ~i[0];

endmodule

