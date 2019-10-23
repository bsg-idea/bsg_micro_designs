

module top
(
  binary_i,
  gray_o
);

  input [31:0] binary_i;
  output [31:0] gray_o;

  bsg_binary_plus_one_to_gray
  wrapper
  (
    .binary_i(binary_i),
    .gray_o(gray_o)
  );


endmodule



module bsg_scan_width_p32_and_p1_lo_to_hi_p1
(
  i,
  o
);

  input [31:0] i;
  output [31:0] o;
  wire [31:0] o;
  wire t_4__31_,t_4__30_,t_4__29_,t_4__28_,t_4__27_,t_4__26_,t_4__25_,t_4__24_,
  t_4__23_,t_4__22_,t_4__21_,t_4__20_,t_4__19_,t_4__18_,t_4__17_,t_4__16_,t_4__15_,
  t_4__14_,t_4__13_,t_4__12_,t_4__11_,t_4__10_,t_4__9_,t_4__8_,t_4__7_,t_4__6_,t_4__5_,
  t_4__4_,t_4__3_,t_4__2_,t_4__1_,t_4__0_,t_3__31_,t_3__30_,t_3__29_,t_3__28_,
  t_3__27_,t_3__26_,t_3__25_,t_3__24_,t_3__23_,t_3__22_,t_3__21_,t_3__20_,t_3__19_,
  t_3__18_,t_3__17_,t_3__16_,t_3__15_,t_3__14_,t_3__13_,t_3__12_,t_3__11_,t_3__10_,
  t_3__9_,t_3__8_,t_3__7_,t_3__6_,t_3__5_,t_3__4_,t_3__3_,t_3__2_,t_3__1_,t_3__0_,
  t_2__31_,t_2__30_,t_2__29_,t_2__28_,t_2__27_,t_2__26_,t_2__25_,t_2__24_,t_2__23_,
  t_2__22_,t_2__21_,t_2__20_,t_2__19_,t_2__18_,t_2__17_,t_2__16_,t_2__15_,t_2__14_,
  t_2__13_,t_2__12_,t_2__11_,t_2__10_,t_2__9_,t_2__8_,t_2__7_,t_2__6_,t_2__5_,
  t_2__4_,t_2__3_,t_2__2_,t_2__1_,t_2__0_,t_1__31_,t_1__30_,t_1__29_,t_1__28_,t_1__27_,
  t_1__26_,t_1__25_,t_1__24_,t_1__23_,t_1__22_,t_1__21_,t_1__20_,t_1__19_,t_1__18_,
  t_1__17_,t_1__16_,t_1__15_,t_1__14_,t_1__13_,t_1__12_,t_1__11_,t_1__10_,t_1__9_,
  t_1__8_,t_1__7_,t_1__6_,t_1__5_,t_1__4_,t_1__3_,t_1__2_,t_1__1_,t_1__0_;
  assign t_1__31_ = i[0] & 1'b1;
  assign t_1__30_ = i[1] & i[0];
  assign t_1__29_ = i[2] & i[1];
  assign t_1__28_ = i[3] & i[2];
  assign t_1__27_ = i[4] & i[3];
  assign t_1__26_ = i[5] & i[4];
  assign t_1__25_ = i[6] & i[5];
  assign t_1__24_ = i[7] & i[6];
  assign t_1__23_ = i[8] & i[7];
  assign t_1__22_ = i[9] & i[8];
  assign t_1__21_ = i[10] & i[9];
  assign t_1__20_ = i[11] & i[10];
  assign t_1__19_ = i[12] & i[11];
  assign t_1__18_ = i[13] & i[12];
  assign t_1__17_ = i[14] & i[13];
  assign t_1__16_ = i[15] & i[14];
  assign t_1__15_ = i[16] & i[15];
  assign t_1__14_ = i[17] & i[16];
  assign t_1__13_ = i[18] & i[17];
  assign t_1__12_ = i[19] & i[18];
  assign t_1__11_ = i[20] & i[19];
  assign t_1__10_ = i[21] & i[20];
  assign t_1__9_ = i[22] & i[21];
  assign t_1__8_ = i[23] & i[22];
  assign t_1__7_ = i[24] & i[23];
  assign t_1__6_ = i[25] & i[24];
  assign t_1__5_ = i[26] & i[25];
  assign t_1__4_ = i[27] & i[26];
  assign t_1__3_ = i[28] & i[27];
  assign t_1__2_ = i[29] & i[28];
  assign t_1__1_ = i[30] & i[29];
  assign t_1__0_ = i[31] & i[30];
  assign t_2__31_ = t_1__31_ & 1'b1;
  assign t_2__30_ = t_1__30_ & 1'b1;
  assign t_2__29_ = t_1__29_ & t_1__31_;
  assign t_2__28_ = t_1__28_ & t_1__30_;
  assign t_2__27_ = t_1__27_ & t_1__29_;
  assign t_2__26_ = t_1__26_ & t_1__28_;
  assign t_2__25_ = t_1__25_ & t_1__27_;
  assign t_2__24_ = t_1__24_ & t_1__26_;
  assign t_2__23_ = t_1__23_ & t_1__25_;
  assign t_2__22_ = t_1__22_ & t_1__24_;
  assign t_2__21_ = t_1__21_ & t_1__23_;
  assign t_2__20_ = t_1__20_ & t_1__22_;
  assign t_2__19_ = t_1__19_ & t_1__21_;
  assign t_2__18_ = t_1__18_ & t_1__20_;
  assign t_2__17_ = t_1__17_ & t_1__19_;
  assign t_2__16_ = t_1__16_ & t_1__18_;
  assign t_2__15_ = t_1__15_ & t_1__17_;
  assign t_2__14_ = t_1__14_ & t_1__16_;
  assign t_2__13_ = t_1__13_ & t_1__15_;
  assign t_2__12_ = t_1__12_ & t_1__14_;
  assign t_2__11_ = t_1__11_ & t_1__13_;
  assign t_2__10_ = t_1__10_ & t_1__12_;
  assign t_2__9_ = t_1__9_ & t_1__11_;
  assign t_2__8_ = t_1__8_ & t_1__10_;
  assign t_2__7_ = t_1__7_ & t_1__9_;
  assign t_2__6_ = t_1__6_ & t_1__8_;
  assign t_2__5_ = t_1__5_ & t_1__7_;
  assign t_2__4_ = t_1__4_ & t_1__6_;
  assign t_2__3_ = t_1__3_ & t_1__5_;
  assign t_2__2_ = t_1__2_ & t_1__4_;
  assign t_2__1_ = t_1__1_ & t_1__3_;
  assign t_2__0_ = t_1__0_ & t_1__2_;
  assign t_3__31_ = t_2__31_ & 1'b1;
  assign t_3__30_ = t_2__30_ & 1'b1;
  assign t_3__29_ = t_2__29_ & 1'b1;
  assign t_3__28_ = t_2__28_ & 1'b1;
  assign t_3__27_ = t_2__27_ & t_2__31_;
  assign t_3__26_ = t_2__26_ & t_2__30_;
  assign t_3__25_ = t_2__25_ & t_2__29_;
  assign t_3__24_ = t_2__24_ & t_2__28_;
  assign t_3__23_ = t_2__23_ & t_2__27_;
  assign t_3__22_ = t_2__22_ & t_2__26_;
  assign t_3__21_ = t_2__21_ & t_2__25_;
  assign t_3__20_ = t_2__20_ & t_2__24_;
  assign t_3__19_ = t_2__19_ & t_2__23_;
  assign t_3__18_ = t_2__18_ & t_2__22_;
  assign t_3__17_ = t_2__17_ & t_2__21_;
  assign t_3__16_ = t_2__16_ & t_2__20_;
  assign t_3__15_ = t_2__15_ & t_2__19_;
  assign t_3__14_ = t_2__14_ & t_2__18_;
  assign t_3__13_ = t_2__13_ & t_2__17_;
  assign t_3__12_ = t_2__12_ & t_2__16_;
  assign t_3__11_ = t_2__11_ & t_2__15_;
  assign t_3__10_ = t_2__10_ & t_2__14_;
  assign t_3__9_ = t_2__9_ & t_2__13_;
  assign t_3__8_ = t_2__8_ & t_2__12_;
  assign t_3__7_ = t_2__7_ & t_2__11_;
  assign t_3__6_ = t_2__6_ & t_2__10_;
  assign t_3__5_ = t_2__5_ & t_2__9_;
  assign t_3__4_ = t_2__4_ & t_2__8_;
  assign t_3__3_ = t_2__3_ & t_2__7_;
  assign t_3__2_ = t_2__2_ & t_2__6_;
  assign t_3__1_ = t_2__1_ & t_2__5_;
  assign t_3__0_ = t_2__0_ & t_2__4_;
  assign t_4__31_ = t_3__31_ & 1'b1;
  assign t_4__30_ = t_3__30_ & 1'b1;
  assign t_4__29_ = t_3__29_ & 1'b1;
  assign t_4__28_ = t_3__28_ & 1'b1;
  assign t_4__27_ = t_3__27_ & 1'b1;
  assign t_4__26_ = t_3__26_ & 1'b1;
  assign t_4__25_ = t_3__25_ & 1'b1;
  assign t_4__24_ = t_3__24_ & 1'b1;
  assign t_4__23_ = t_3__23_ & t_3__31_;
  assign t_4__22_ = t_3__22_ & t_3__30_;
  assign t_4__21_ = t_3__21_ & t_3__29_;
  assign t_4__20_ = t_3__20_ & t_3__28_;
  assign t_4__19_ = t_3__19_ & t_3__27_;
  assign t_4__18_ = t_3__18_ & t_3__26_;
  assign t_4__17_ = t_3__17_ & t_3__25_;
  assign t_4__16_ = t_3__16_ & t_3__24_;
  assign t_4__15_ = t_3__15_ & t_3__23_;
  assign t_4__14_ = t_3__14_ & t_3__22_;
  assign t_4__13_ = t_3__13_ & t_3__21_;
  assign t_4__12_ = t_3__12_ & t_3__20_;
  assign t_4__11_ = t_3__11_ & t_3__19_;
  assign t_4__10_ = t_3__10_ & t_3__18_;
  assign t_4__9_ = t_3__9_ & t_3__17_;
  assign t_4__8_ = t_3__8_ & t_3__16_;
  assign t_4__7_ = t_3__7_ & t_3__15_;
  assign t_4__6_ = t_3__6_ & t_3__14_;
  assign t_4__5_ = t_3__5_ & t_3__13_;
  assign t_4__4_ = t_3__4_ & t_3__12_;
  assign t_4__3_ = t_3__3_ & t_3__11_;
  assign t_4__2_ = t_3__2_ & t_3__10_;
  assign t_4__1_ = t_3__1_ & t_3__9_;
  assign t_4__0_ = t_3__0_ & t_3__8_;
  assign o[0] = t_4__31_ & 1'b1;
  assign o[1] = t_4__30_ & 1'b1;
  assign o[2] = t_4__29_ & 1'b1;
  assign o[3] = t_4__28_ & 1'b1;
  assign o[4] = t_4__27_ & 1'b1;
  assign o[5] = t_4__26_ & 1'b1;
  assign o[6] = t_4__25_ & 1'b1;
  assign o[7] = t_4__24_ & 1'b1;
  assign o[8] = t_4__23_ & 1'b1;
  assign o[9] = t_4__22_ & 1'b1;
  assign o[10] = t_4__21_ & 1'b1;
  assign o[11] = t_4__20_ & 1'b1;
  assign o[12] = t_4__19_ & 1'b1;
  assign o[13] = t_4__18_ & 1'b1;
  assign o[14] = t_4__17_ & 1'b1;
  assign o[15] = t_4__16_ & 1'b1;
  assign o[16] = t_4__15_ & t_4__31_;
  assign o[17] = t_4__14_ & t_4__30_;
  assign o[18] = t_4__13_ & t_4__29_;
  assign o[19] = t_4__12_ & t_4__28_;
  assign o[20] = t_4__11_ & t_4__27_;
  assign o[21] = t_4__10_ & t_4__26_;
  assign o[22] = t_4__9_ & t_4__25_;
  assign o[23] = t_4__8_ & t_4__24_;
  assign o[24] = t_4__7_ & t_4__23_;
  assign o[25] = t_4__6_ & t_4__22_;
  assign o[26] = t_4__5_ & t_4__21_;
  assign o[27] = t_4__4_ & t_4__20_;
  assign o[28] = t_4__3_ & t_4__19_;
  assign o[29] = t_4__2_ & t_4__18_;
  assign o[30] = t_4__1_ & t_4__17_;
  assign o[31] = t_4__0_ & t_4__16_;

endmodule



module bsg_binary_plus_one_to_gray
(
  binary_i,
  gray_o
);

  input [31:0] binary_i;
  output [31:0] gray_o;
  wire [31:0] gray_o,binary_scan,edge_detect;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62;

  bsg_scan_width_p32_and_p1_lo_to_hi_p1
  scan_and
  (
    .i(binary_i),
    .o(binary_scan)
  );

  assign edge_detect[31] = N0 & binary_scan[30];
  assign N0 = ~1'b0;
  assign edge_detect[30] = N1 & binary_scan[29];
  assign N1 = ~binary_scan[30];
  assign edge_detect[29] = N2 & binary_scan[28];
  assign N2 = ~binary_scan[29];
  assign edge_detect[28] = N3 & binary_scan[27];
  assign N3 = ~binary_scan[28];
  assign edge_detect[27] = N4 & binary_scan[26];
  assign N4 = ~binary_scan[27];
  assign edge_detect[26] = N5 & binary_scan[25];
  assign N5 = ~binary_scan[26];
  assign edge_detect[25] = N6 & binary_scan[24];
  assign N6 = ~binary_scan[25];
  assign edge_detect[24] = N7 & binary_scan[23];
  assign N7 = ~binary_scan[24];
  assign edge_detect[23] = N8 & binary_scan[22];
  assign N8 = ~binary_scan[23];
  assign edge_detect[22] = N9 & binary_scan[21];
  assign N9 = ~binary_scan[22];
  assign edge_detect[21] = N10 & binary_scan[20];
  assign N10 = ~binary_scan[21];
  assign edge_detect[20] = N11 & binary_scan[19];
  assign N11 = ~binary_scan[20];
  assign edge_detect[19] = N12 & binary_scan[18];
  assign N12 = ~binary_scan[19];
  assign edge_detect[18] = N13 & binary_scan[17];
  assign N13 = ~binary_scan[18];
  assign edge_detect[17] = N14 & binary_scan[16];
  assign N14 = ~binary_scan[17];
  assign edge_detect[16] = N15 & binary_scan[15];
  assign N15 = ~binary_scan[16];
  assign edge_detect[15] = N16 & binary_scan[14];
  assign N16 = ~binary_scan[15];
  assign edge_detect[14] = N17 & binary_scan[13];
  assign N17 = ~binary_scan[14];
  assign edge_detect[13] = N18 & binary_scan[12];
  assign N18 = ~binary_scan[13];
  assign edge_detect[12] = N19 & binary_scan[11];
  assign N19 = ~binary_scan[12];
  assign edge_detect[11] = N20 & binary_scan[10];
  assign N20 = ~binary_scan[11];
  assign edge_detect[10] = N21 & binary_scan[9];
  assign N21 = ~binary_scan[10];
  assign edge_detect[9] = N22 & binary_scan[8];
  assign N22 = ~binary_scan[9];
  assign edge_detect[8] = N23 & binary_scan[7];
  assign N23 = ~binary_scan[8];
  assign edge_detect[7] = N24 & binary_scan[6];
  assign N24 = ~binary_scan[7];
  assign edge_detect[6] = N25 & binary_scan[5];
  assign N25 = ~binary_scan[6];
  assign edge_detect[5] = N26 & binary_scan[4];
  assign N26 = ~binary_scan[5];
  assign edge_detect[4] = N27 & binary_scan[3];
  assign N27 = ~binary_scan[4];
  assign edge_detect[3] = N28 & binary_scan[2];
  assign N28 = ~binary_scan[3];
  assign edge_detect[2] = N29 & binary_scan[1];
  assign N29 = ~binary_scan[2];
  assign edge_detect[1] = N30 & binary_scan[0];
  assign N30 = ~binary_scan[1];
  assign edge_detect[0] = N31 & 1'b1;
  assign N31 = ~binary_scan[0];
  assign gray_o[31] = binary_i[31] ^ edge_detect[31];
  assign gray_o[30] = N32 ^ edge_detect[30];
  assign N32 = binary_i[31] ^ binary_i[30];
  assign gray_o[29] = N33 ^ edge_detect[29];
  assign N33 = binary_i[30] ^ binary_i[29];
  assign gray_o[28] = N34 ^ edge_detect[28];
  assign N34 = binary_i[29] ^ binary_i[28];
  assign gray_o[27] = N35 ^ edge_detect[27];
  assign N35 = binary_i[28] ^ binary_i[27];
  assign gray_o[26] = N36 ^ edge_detect[26];
  assign N36 = binary_i[27] ^ binary_i[26];
  assign gray_o[25] = N37 ^ edge_detect[25];
  assign N37 = binary_i[26] ^ binary_i[25];
  assign gray_o[24] = N38 ^ edge_detect[24];
  assign N38 = binary_i[25] ^ binary_i[24];
  assign gray_o[23] = N39 ^ edge_detect[23];
  assign N39 = binary_i[24] ^ binary_i[23];
  assign gray_o[22] = N40 ^ edge_detect[22];
  assign N40 = binary_i[23] ^ binary_i[22];
  assign gray_o[21] = N41 ^ edge_detect[21];
  assign N41 = binary_i[22] ^ binary_i[21];
  assign gray_o[20] = N42 ^ edge_detect[20];
  assign N42 = binary_i[21] ^ binary_i[20];
  assign gray_o[19] = N43 ^ edge_detect[19];
  assign N43 = binary_i[20] ^ binary_i[19];
  assign gray_o[18] = N44 ^ edge_detect[18];
  assign N44 = binary_i[19] ^ binary_i[18];
  assign gray_o[17] = N45 ^ edge_detect[17];
  assign N45 = binary_i[18] ^ binary_i[17];
  assign gray_o[16] = N46 ^ edge_detect[16];
  assign N46 = binary_i[17] ^ binary_i[16];
  assign gray_o[15] = N47 ^ edge_detect[15];
  assign N47 = binary_i[16] ^ binary_i[15];
  assign gray_o[14] = N48 ^ edge_detect[14];
  assign N48 = binary_i[15] ^ binary_i[14];
  assign gray_o[13] = N49 ^ edge_detect[13];
  assign N49 = binary_i[14] ^ binary_i[13];
  assign gray_o[12] = N50 ^ edge_detect[12];
  assign N50 = binary_i[13] ^ binary_i[12];
  assign gray_o[11] = N51 ^ edge_detect[11];
  assign N51 = binary_i[12] ^ binary_i[11];
  assign gray_o[10] = N52 ^ edge_detect[10];
  assign N52 = binary_i[11] ^ binary_i[10];
  assign gray_o[9] = N53 ^ edge_detect[9];
  assign N53 = binary_i[10] ^ binary_i[9];
  assign gray_o[8] = N54 ^ edge_detect[8];
  assign N54 = binary_i[9] ^ binary_i[8];
  assign gray_o[7] = N55 ^ edge_detect[7];
  assign N55 = binary_i[8] ^ binary_i[7];
  assign gray_o[6] = N56 ^ edge_detect[6];
  assign N56 = binary_i[7] ^ binary_i[6];
  assign gray_o[5] = N57 ^ edge_detect[5];
  assign N57 = binary_i[6] ^ binary_i[5];
  assign gray_o[4] = N58 ^ edge_detect[4];
  assign N58 = binary_i[5] ^ binary_i[4];
  assign gray_o[3] = N59 ^ edge_detect[3];
  assign N59 = binary_i[4] ^ binary_i[3];
  assign gray_o[2] = N60 ^ edge_detect[2];
  assign N60 = binary_i[3] ^ binary_i[2];
  assign gray_o[1] = N61 ^ edge_detect[1];
  assign N61 = binary_i[2] ^ binary_i[1];
  assign gray_o[0] = N62 ^ edge_detect[0];
  assign N62 = binary_i[1] ^ binary_i[0];

endmodule

