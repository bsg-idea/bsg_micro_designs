

module top
(
  binary_i,
  gray_o
);

  input [15:0] binary_i;
  output [15:0] gray_o;

  bsg_binary_plus_one_to_gray
  wrapper
  (
    .binary_i(binary_i),
    .gray_o(gray_o)
  );


endmodule



module bsg_scan_width_p16_and_p1_lo_to_hi_p1
(
  i,
  o
);

  input [15:0] i;
  output [15:0] o;
  wire [15:0] o;
  wire t_3__15_,t_3__14_,t_3__13_,t_3__12_,t_3__11_,t_3__10_,t_3__9_,t_3__8_,t_3__7_,
  t_3__6_,t_3__5_,t_3__4_,t_3__3_,t_3__2_,t_3__1_,t_3__0_,t_2__15_,t_2__14_,
  t_2__13_,t_2__12_,t_2__11_,t_2__10_,t_2__9_,t_2__8_,t_2__7_,t_2__6_,t_2__5_,t_2__4_,
  t_2__3_,t_2__2_,t_2__1_,t_2__0_,t_1__15_,t_1__14_,t_1__13_,t_1__12_,t_1__11_,
  t_1__10_,t_1__9_,t_1__8_,t_1__7_,t_1__6_,t_1__5_,t_1__4_,t_1__3_,t_1__2_,t_1__1_,
  t_1__0_;
  assign t_1__15_ = i[0] & 1'b1;
  assign t_1__14_ = i[1] & i[0];
  assign t_1__13_ = i[2] & i[1];
  assign t_1__12_ = i[3] & i[2];
  assign t_1__11_ = i[4] & i[3];
  assign t_1__10_ = i[5] & i[4];
  assign t_1__9_ = i[6] & i[5];
  assign t_1__8_ = i[7] & i[6];
  assign t_1__7_ = i[8] & i[7];
  assign t_1__6_ = i[9] & i[8];
  assign t_1__5_ = i[10] & i[9];
  assign t_1__4_ = i[11] & i[10];
  assign t_1__3_ = i[12] & i[11];
  assign t_1__2_ = i[13] & i[12];
  assign t_1__1_ = i[14] & i[13];
  assign t_1__0_ = i[15] & i[14];
  assign t_2__15_ = t_1__15_ & 1'b1;
  assign t_2__14_ = t_1__14_ & 1'b1;
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
  assign t_3__15_ = t_2__15_ & 1'b1;
  assign t_3__14_ = t_2__14_ & 1'b1;
  assign t_3__13_ = t_2__13_ & 1'b1;
  assign t_3__12_ = t_2__12_ & 1'b1;
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
  assign o[0] = t_3__15_ & 1'b1;
  assign o[1] = t_3__14_ & 1'b1;
  assign o[2] = t_3__13_ & 1'b1;
  assign o[3] = t_3__12_ & 1'b1;
  assign o[4] = t_3__11_ & 1'b1;
  assign o[5] = t_3__10_ & 1'b1;
  assign o[6] = t_3__9_ & 1'b1;
  assign o[7] = t_3__8_ & 1'b1;
  assign o[8] = t_3__7_ & t_3__15_;
  assign o[9] = t_3__6_ & t_3__14_;
  assign o[10] = t_3__5_ & t_3__13_;
  assign o[11] = t_3__4_ & t_3__12_;
  assign o[12] = t_3__3_ & t_3__11_;
  assign o[13] = t_3__2_ & t_3__10_;
  assign o[14] = t_3__1_ & t_3__9_;
  assign o[15] = t_3__0_ & t_3__8_;

endmodule



module bsg_binary_plus_one_to_gray
(
  binary_i,
  gray_o
);

  input [15:0] binary_i;
  output [15:0] gray_o;
  wire [15:0] gray_o,binary_scan,edge_detect;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30;

  bsg_scan_width_p16_and_p1_lo_to_hi_p1
  scan_and
  (
    .i(binary_i),
    .o(binary_scan)
  );

  assign edge_detect[15] = N0 & binary_scan[14];
  assign N0 = ~1'b0;
  assign edge_detect[14] = N1 & binary_scan[13];
  assign N1 = ~binary_scan[14];
  assign edge_detect[13] = N2 & binary_scan[12];
  assign N2 = ~binary_scan[13];
  assign edge_detect[12] = N3 & binary_scan[11];
  assign N3 = ~binary_scan[12];
  assign edge_detect[11] = N4 & binary_scan[10];
  assign N4 = ~binary_scan[11];
  assign edge_detect[10] = N5 & binary_scan[9];
  assign N5 = ~binary_scan[10];
  assign edge_detect[9] = N6 & binary_scan[8];
  assign N6 = ~binary_scan[9];
  assign edge_detect[8] = N7 & binary_scan[7];
  assign N7 = ~binary_scan[8];
  assign edge_detect[7] = N8 & binary_scan[6];
  assign N8 = ~binary_scan[7];
  assign edge_detect[6] = N9 & binary_scan[5];
  assign N9 = ~binary_scan[6];
  assign edge_detect[5] = N10 & binary_scan[4];
  assign N10 = ~binary_scan[5];
  assign edge_detect[4] = N11 & binary_scan[3];
  assign N11 = ~binary_scan[4];
  assign edge_detect[3] = N12 & binary_scan[2];
  assign N12 = ~binary_scan[3];
  assign edge_detect[2] = N13 & binary_scan[1];
  assign N13 = ~binary_scan[2];
  assign edge_detect[1] = N14 & binary_scan[0];
  assign N14 = ~binary_scan[1];
  assign edge_detect[0] = N15 & 1'b1;
  assign N15 = ~binary_scan[0];
  assign gray_o[15] = binary_i[15] ^ edge_detect[15];
  assign gray_o[14] = N16 ^ edge_detect[14];
  assign N16 = binary_i[15] ^ binary_i[14];
  assign gray_o[13] = N17 ^ edge_detect[13];
  assign N17 = binary_i[14] ^ binary_i[13];
  assign gray_o[12] = N18 ^ edge_detect[12];
  assign N18 = binary_i[13] ^ binary_i[12];
  assign gray_o[11] = N19 ^ edge_detect[11];
  assign N19 = binary_i[12] ^ binary_i[11];
  assign gray_o[10] = N20 ^ edge_detect[10];
  assign N20 = binary_i[11] ^ binary_i[10];
  assign gray_o[9] = N21 ^ edge_detect[9];
  assign N21 = binary_i[10] ^ binary_i[9];
  assign gray_o[8] = N22 ^ edge_detect[8];
  assign N22 = binary_i[9] ^ binary_i[8];
  assign gray_o[7] = N23 ^ edge_detect[7];
  assign N23 = binary_i[8] ^ binary_i[7];
  assign gray_o[6] = N24 ^ edge_detect[6];
  assign N24 = binary_i[7] ^ binary_i[6];
  assign gray_o[5] = N25 ^ edge_detect[5];
  assign N25 = binary_i[6] ^ binary_i[5];
  assign gray_o[4] = N26 ^ edge_detect[4];
  assign N26 = binary_i[5] ^ binary_i[4];
  assign gray_o[3] = N27 ^ edge_detect[3];
  assign N27 = binary_i[4] ^ binary_i[3];
  assign gray_o[2] = N28 ^ edge_detect[2];
  assign N28 = binary_i[3] ^ binary_i[2];
  assign gray_o[1] = N29 ^ edge_detect[1];
  assign N29 = binary_i[2] ^ binary_i[1];
  assign gray_o[0] = N30 ^ edge_detect[0];
  assign N30 = binary_i[1] ^ binary_i[0];

endmodule

