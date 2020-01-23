

module top
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [63:0] data0_i;
  input [63:0] data1_i;
  input [63:0] sel_i;
  output [63:0] data_o;

  bsg_mux_bitwise
  wrapper
  (
    .data0_i(data0_i),
    .data1_i(data1_i),
    .sel_i(sel_i),
    .data_o(data_o)
  );


endmodule



module bsg_mux_segmented_segments_p64_segment_width_p1
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [63:0] data0_i;
  input [63:0] data1_i;
  input [63:0] sel_i;
  output [63:0] data_o;
  wire [63:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127;
  assign data_o[0] = (N0)? data1_i[0] : 
                     (N64)? data0_i[0] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[1] = (N1)? data1_i[1] : 
                     (N65)? data0_i[1] : 1'b0;
  assign N1 = sel_i[1];
  assign data_o[2] = (N2)? data1_i[2] : 
                     (N66)? data0_i[2] : 1'b0;
  assign N2 = sel_i[2];
  assign data_o[3] = (N3)? data1_i[3] : 
                     (N67)? data0_i[3] : 1'b0;
  assign N3 = sel_i[3];
  assign data_o[4] = (N4)? data1_i[4] : 
                     (N68)? data0_i[4] : 1'b0;
  assign N4 = sel_i[4];
  assign data_o[5] = (N5)? data1_i[5] : 
                     (N69)? data0_i[5] : 1'b0;
  assign N5 = sel_i[5];
  assign data_o[6] = (N6)? data1_i[6] : 
                     (N70)? data0_i[6] : 1'b0;
  assign N6 = sel_i[6];
  assign data_o[7] = (N7)? data1_i[7] : 
                     (N71)? data0_i[7] : 1'b0;
  assign N7 = sel_i[7];
  assign data_o[8] = (N8)? data1_i[8] : 
                     (N72)? data0_i[8] : 1'b0;
  assign N8 = sel_i[8];
  assign data_o[9] = (N9)? data1_i[9] : 
                     (N73)? data0_i[9] : 1'b0;
  assign N9 = sel_i[9];
  assign data_o[10] = (N10)? data1_i[10] : 
                      (N74)? data0_i[10] : 1'b0;
  assign N10 = sel_i[10];
  assign data_o[11] = (N11)? data1_i[11] : 
                      (N75)? data0_i[11] : 1'b0;
  assign N11 = sel_i[11];
  assign data_o[12] = (N12)? data1_i[12] : 
                      (N76)? data0_i[12] : 1'b0;
  assign N12 = sel_i[12];
  assign data_o[13] = (N13)? data1_i[13] : 
                      (N77)? data0_i[13] : 1'b0;
  assign N13 = sel_i[13];
  assign data_o[14] = (N14)? data1_i[14] : 
                      (N78)? data0_i[14] : 1'b0;
  assign N14 = sel_i[14];
  assign data_o[15] = (N15)? data1_i[15] : 
                      (N79)? data0_i[15] : 1'b0;
  assign N15 = sel_i[15];
  assign data_o[16] = (N16)? data1_i[16] : 
                      (N80)? data0_i[16] : 1'b0;
  assign N16 = sel_i[16];
  assign data_o[17] = (N17)? data1_i[17] : 
                      (N81)? data0_i[17] : 1'b0;
  assign N17 = sel_i[17];
  assign data_o[18] = (N18)? data1_i[18] : 
                      (N82)? data0_i[18] : 1'b0;
  assign N18 = sel_i[18];
  assign data_o[19] = (N19)? data1_i[19] : 
                      (N83)? data0_i[19] : 1'b0;
  assign N19 = sel_i[19];
  assign data_o[20] = (N20)? data1_i[20] : 
                      (N84)? data0_i[20] : 1'b0;
  assign N20 = sel_i[20];
  assign data_o[21] = (N21)? data1_i[21] : 
                      (N85)? data0_i[21] : 1'b0;
  assign N21 = sel_i[21];
  assign data_o[22] = (N22)? data1_i[22] : 
                      (N86)? data0_i[22] : 1'b0;
  assign N22 = sel_i[22];
  assign data_o[23] = (N23)? data1_i[23] : 
                      (N87)? data0_i[23] : 1'b0;
  assign N23 = sel_i[23];
  assign data_o[24] = (N24)? data1_i[24] : 
                      (N88)? data0_i[24] : 1'b0;
  assign N24 = sel_i[24];
  assign data_o[25] = (N25)? data1_i[25] : 
                      (N89)? data0_i[25] : 1'b0;
  assign N25 = sel_i[25];
  assign data_o[26] = (N26)? data1_i[26] : 
                      (N90)? data0_i[26] : 1'b0;
  assign N26 = sel_i[26];
  assign data_o[27] = (N27)? data1_i[27] : 
                      (N91)? data0_i[27] : 1'b0;
  assign N27 = sel_i[27];
  assign data_o[28] = (N28)? data1_i[28] : 
                      (N92)? data0_i[28] : 1'b0;
  assign N28 = sel_i[28];
  assign data_o[29] = (N29)? data1_i[29] : 
                      (N93)? data0_i[29] : 1'b0;
  assign N29 = sel_i[29];
  assign data_o[30] = (N30)? data1_i[30] : 
                      (N94)? data0_i[30] : 1'b0;
  assign N30 = sel_i[30];
  assign data_o[31] = (N31)? data1_i[31] : 
                      (N95)? data0_i[31] : 1'b0;
  assign N31 = sel_i[31];
  assign data_o[32] = (N32)? data1_i[32] : 
                      (N96)? data0_i[32] : 1'b0;
  assign N32 = sel_i[32];
  assign data_o[33] = (N33)? data1_i[33] : 
                      (N97)? data0_i[33] : 1'b0;
  assign N33 = sel_i[33];
  assign data_o[34] = (N34)? data1_i[34] : 
                      (N98)? data0_i[34] : 1'b0;
  assign N34 = sel_i[34];
  assign data_o[35] = (N35)? data1_i[35] : 
                      (N99)? data0_i[35] : 1'b0;
  assign N35 = sel_i[35];
  assign data_o[36] = (N36)? data1_i[36] : 
                      (N100)? data0_i[36] : 1'b0;
  assign N36 = sel_i[36];
  assign data_o[37] = (N37)? data1_i[37] : 
                      (N101)? data0_i[37] : 1'b0;
  assign N37 = sel_i[37];
  assign data_o[38] = (N38)? data1_i[38] : 
                      (N102)? data0_i[38] : 1'b0;
  assign N38 = sel_i[38];
  assign data_o[39] = (N39)? data1_i[39] : 
                      (N103)? data0_i[39] : 1'b0;
  assign N39 = sel_i[39];
  assign data_o[40] = (N40)? data1_i[40] : 
                      (N104)? data0_i[40] : 1'b0;
  assign N40 = sel_i[40];
  assign data_o[41] = (N41)? data1_i[41] : 
                      (N105)? data0_i[41] : 1'b0;
  assign N41 = sel_i[41];
  assign data_o[42] = (N42)? data1_i[42] : 
                      (N106)? data0_i[42] : 1'b0;
  assign N42 = sel_i[42];
  assign data_o[43] = (N43)? data1_i[43] : 
                      (N107)? data0_i[43] : 1'b0;
  assign N43 = sel_i[43];
  assign data_o[44] = (N44)? data1_i[44] : 
                      (N108)? data0_i[44] : 1'b0;
  assign N44 = sel_i[44];
  assign data_o[45] = (N45)? data1_i[45] : 
                      (N109)? data0_i[45] : 1'b0;
  assign N45 = sel_i[45];
  assign data_o[46] = (N46)? data1_i[46] : 
                      (N110)? data0_i[46] : 1'b0;
  assign N46 = sel_i[46];
  assign data_o[47] = (N47)? data1_i[47] : 
                      (N111)? data0_i[47] : 1'b0;
  assign N47 = sel_i[47];
  assign data_o[48] = (N48)? data1_i[48] : 
                      (N112)? data0_i[48] : 1'b0;
  assign N48 = sel_i[48];
  assign data_o[49] = (N49)? data1_i[49] : 
                      (N113)? data0_i[49] : 1'b0;
  assign N49 = sel_i[49];
  assign data_o[50] = (N50)? data1_i[50] : 
                      (N114)? data0_i[50] : 1'b0;
  assign N50 = sel_i[50];
  assign data_o[51] = (N51)? data1_i[51] : 
                      (N115)? data0_i[51] : 1'b0;
  assign N51 = sel_i[51];
  assign data_o[52] = (N52)? data1_i[52] : 
                      (N116)? data0_i[52] : 1'b0;
  assign N52 = sel_i[52];
  assign data_o[53] = (N53)? data1_i[53] : 
                      (N117)? data0_i[53] : 1'b0;
  assign N53 = sel_i[53];
  assign data_o[54] = (N54)? data1_i[54] : 
                      (N118)? data0_i[54] : 1'b0;
  assign N54 = sel_i[54];
  assign data_o[55] = (N55)? data1_i[55] : 
                      (N119)? data0_i[55] : 1'b0;
  assign N55 = sel_i[55];
  assign data_o[56] = (N56)? data1_i[56] : 
                      (N120)? data0_i[56] : 1'b0;
  assign N56 = sel_i[56];
  assign data_o[57] = (N57)? data1_i[57] : 
                      (N121)? data0_i[57] : 1'b0;
  assign N57 = sel_i[57];
  assign data_o[58] = (N58)? data1_i[58] : 
                      (N122)? data0_i[58] : 1'b0;
  assign N58 = sel_i[58];
  assign data_o[59] = (N59)? data1_i[59] : 
                      (N123)? data0_i[59] : 1'b0;
  assign N59 = sel_i[59];
  assign data_o[60] = (N60)? data1_i[60] : 
                      (N124)? data0_i[60] : 1'b0;
  assign N60 = sel_i[60];
  assign data_o[61] = (N61)? data1_i[61] : 
                      (N125)? data0_i[61] : 1'b0;
  assign N61 = sel_i[61];
  assign data_o[62] = (N62)? data1_i[62] : 
                      (N126)? data0_i[62] : 1'b0;
  assign N62 = sel_i[62];
  assign data_o[63] = (N63)? data1_i[63] : 
                      (N127)? data0_i[63] : 1'b0;
  assign N63 = sel_i[63];
  assign N64 = ~sel_i[0];
  assign N65 = ~sel_i[1];
  assign N66 = ~sel_i[2];
  assign N67 = ~sel_i[3];
  assign N68 = ~sel_i[4];
  assign N69 = ~sel_i[5];
  assign N70 = ~sel_i[6];
  assign N71 = ~sel_i[7];
  assign N72 = ~sel_i[8];
  assign N73 = ~sel_i[9];
  assign N74 = ~sel_i[10];
  assign N75 = ~sel_i[11];
  assign N76 = ~sel_i[12];
  assign N77 = ~sel_i[13];
  assign N78 = ~sel_i[14];
  assign N79 = ~sel_i[15];
  assign N80 = ~sel_i[16];
  assign N81 = ~sel_i[17];
  assign N82 = ~sel_i[18];
  assign N83 = ~sel_i[19];
  assign N84 = ~sel_i[20];
  assign N85 = ~sel_i[21];
  assign N86 = ~sel_i[22];
  assign N87 = ~sel_i[23];
  assign N88 = ~sel_i[24];
  assign N89 = ~sel_i[25];
  assign N90 = ~sel_i[26];
  assign N91 = ~sel_i[27];
  assign N92 = ~sel_i[28];
  assign N93 = ~sel_i[29];
  assign N94 = ~sel_i[30];
  assign N95 = ~sel_i[31];
  assign N96 = ~sel_i[32];
  assign N97 = ~sel_i[33];
  assign N98 = ~sel_i[34];
  assign N99 = ~sel_i[35];
  assign N100 = ~sel_i[36];
  assign N101 = ~sel_i[37];
  assign N102 = ~sel_i[38];
  assign N103 = ~sel_i[39];
  assign N104 = ~sel_i[40];
  assign N105 = ~sel_i[41];
  assign N106 = ~sel_i[42];
  assign N107 = ~sel_i[43];
  assign N108 = ~sel_i[44];
  assign N109 = ~sel_i[45];
  assign N110 = ~sel_i[46];
  assign N111 = ~sel_i[47];
  assign N112 = ~sel_i[48];
  assign N113 = ~sel_i[49];
  assign N114 = ~sel_i[50];
  assign N115 = ~sel_i[51];
  assign N116 = ~sel_i[52];
  assign N117 = ~sel_i[53];
  assign N118 = ~sel_i[54];
  assign N119 = ~sel_i[55];
  assign N120 = ~sel_i[56];
  assign N121 = ~sel_i[57];
  assign N122 = ~sel_i[58];
  assign N123 = ~sel_i[59];
  assign N124 = ~sel_i[60];
  assign N125 = ~sel_i[61];
  assign N126 = ~sel_i[62];
  assign N127 = ~sel_i[63];

endmodule



module bsg_mux_bitwise
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [63:0] data0_i;
  input [63:0] data1_i;
  input [63:0] sel_i;
  output [63:0] data_o;
  wire [63:0] data_o;

  bsg_mux_segmented_segments_p64_segment_width_p1
  mux_segmented
  (
    .data0_i(data0_i),
    .data1_i(data1_i),
    .sel_i(sel_i),
    .data_o(data_o)
  );


endmodule

