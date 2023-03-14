

module top
(
  a_i,
  num_zero_o
);

  input [15:0] a_i;
  output [4:0] num_zero_o;

  bsg_counting_leading_zeros
  wrapper
  (
    .a_i(a_i),
    .num_zero_o(num_zero_o)
  );


endmodule



module bsg_scan_width_p17_or_p1_lo_to_hi_p1
(
  i,
  o
);

  input [16:0] i;
  output [16:0] o;
  wire [16:0] o;
  wire t_4__16_,t_4__15_,t_4__14_,t_4__13_,t_4__12_,t_4__11_,t_4__10_,t_4__9_,t_4__8_,
  t_4__7_,t_4__6_,t_4__5_,t_4__4_,t_4__3_,t_4__2_,t_4__1_,t_4__0_,t_3__16_,
  t_3__15_,t_3__14_,t_3__13_,t_3__12_,t_3__11_,t_3__10_,t_3__9_,t_3__8_,t_3__7_,t_3__6_,
  t_3__5_,t_3__4_,t_3__3_,t_3__2_,t_3__1_,t_3__0_,t_2__16_,t_2__15_,t_2__14_,
  t_2__13_,t_2__12_,t_2__11_,t_2__10_,t_2__9_,t_2__8_,t_2__7_,t_2__6_,t_2__5_,t_2__4_,
  t_2__3_,t_2__2_,t_2__1_,t_2__0_,t_1__16_,t_1__15_,t_1__14_,t_1__13_,t_1__12_,
  t_1__11_,t_1__10_,t_1__9_,t_1__8_,t_1__7_,t_1__6_,t_1__5_,t_1__4_,t_1__3_,t_1__2_,
  t_1__1_,t_1__0_;
  assign t_1__16_ = i[0] | 1'b0;
  assign t_1__15_ = i[1] | i[0];
  assign t_1__14_ = i[2] | i[1];
  assign t_1__13_ = i[3] | i[2];
  assign t_1__12_ = i[4] | i[3];
  assign t_1__11_ = i[5] | i[4];
  assign t_1__10_ = i[6] | i[5];
  assign t_1__9_ = i[7] | i[6];
  assign t_1__8_ = i[8] | i[7];
  assign t_1__7_ = i[9] | i[8];
  assign t_1__6_ = i[10] | i[9];
  assign t_1__5_ = i[11] | i[10];
  assign t_1__4_ = i[12] | i[11];
  assign t_1__3_ = i[13] | i[12];
  assign t_1__2_ = i[14] | i[13];
  assign t_1__1_ = i[15] | i[14];
  assign t_1__0_ = i[16] | i[15];
  assign t_2__16_ = t_1__16_ | 1'b0;
  assign t_2__15_ = t_1__15_ | 1'b0;
  assign t_2__14_ = t_1__14_ | t_1__16_;
  assign t_2__13_ = t_1__13_ | t_1__15_;
  assign t_2__12_ = t_1__12_ | t_1__14_;
  assign t_2__11_ = t_1__11_ | t_1__13_;
  assign t_2__10_ = t_1__10_ | t_1__12_;
  assign t_2__9_ = t_1__9_ | t_1__11_;
  assign t_2__8_ = t_1__8_ | t_1__10_;
  assign t_2__7_ = t_1__7_ | t_1__9_;
  assign t_2__6_ = t_1__6_ | t_1__8_;
  assign t_2__5_ = t_1__5_ | t_1__7_;
  assign t_2__4_ = t_1__4_ | t_1__6_;
  assign t_2__3_ = t_1__3_ | t_1__5_;
  assign t_2__2_ = t_1__2_ | t_1__4_;
  assign t_2__1_ = t_1__1_ | t_1__3_;
  assign t_2__0_ = t_1__0_ | t_1__2_;
  assign t_3__16_ = t_2__16_ | 1'b0;
  assign t_3__15_ = t_2__15_ | 1'b0;
  assign t_3__14_ = t_2__14_ | 1'b0;
  assign t_3__13_ = t_2__13_ | 1'b0;
  assign t_3__12_ = t_2__12_ | t_2__16_;
  assign t_3__11_ = t_2__11_ | t_2__15_;
  assign t_3__10_ = t_2__10_ | t_2__14_;
  assign t_3__9_ = t_2__9_ | t_2__13_;
  assign t_3__8_ = t_2__8_ | t_2__12_;
  assign t_3__7_ = t_2__7_ | t_2__11_;
  assign t_3__6_ = t_2__6_ | t_2__10_;
  assign t_3__5_ = t_2__5_ | t_2__9_;
  assign t_3__4_ = t_2__4_ | t_2__8_;
  assign t_3__3_ = t_2__3_ | t_2__7_;
  assign t_3__2_ = t_2__2_ | t_2__6_;
  assign t_3__1_ = t_2__1_ | t_2__5_;
  assign t_3__0_ = t_2__0_ | t_2__4_;
  assign t_4__16_ = t_3__16_ | 1'b0;
  assign t_4__15_ = t_3__15_ | 1'b0;
  assign t_4__14_ = t_3__14_ | 1'b0;
  assign t_4__13_ = t_3__13_ | 1'b0;
  assign t_4__12_ = t_3__12_ | 1'b0;
  assign t_4__11_ = t_3__11_ | 1'b0;
  assign t_4__10_ = t_3__10_ | 1'b0;
  assign t_4__9_ = t_3__9_ | 1'b0;
  assign t_4__8_ = t_3__8_ | t_3__16_;
  assign t_4__7_ = t_3__7_ | t_3__15_;
  assign t_4__6_ = t_3__6_ | t_3__14_;
  assign t_4__5_ = t_3__5_ | t_3__13_;
  assign t_4__4_ = t_3__4_ | t_3__12_;
  assign t_4__3_ = t_3__3_ | t_3__11_;
  assign t_4__2_ = t_3__2_ | t_3__10_;
  assign t_4__1_ = t_3__1_ | t_3__9_;
  assign t_4__0_ = t_3__0_ | t_3__8_;
  assign o[0] = t_4__16_ | 1'b0;
  assign o[1] = t_4__15_ | 1'b0;
  assign o[2] = t_4__14_ | 1'b0;
  assign o[3] = t_4__13_ | 1'b0;
  assign o[4] = t_4__12_ | 1'b0;
  assign o[5] = t_4__11_ | 1'b0;
  assign o[6] = t_4__10_ | 1'b0;
  assign o[7] = t_4__9_ | 1'b0;
  assign o[8] = t_4__8_ | 1'b0;
  assign o[9] = t_4__7_ | 1'b0;
  assign o[10] = t_4__6_ | 1'b0;
  assign o[11] = t_4__5_ | 1'b0;
  assign o[12] = t_4__4_ | 1'b0;
  assign o[13] = t_4__3_ | 1'b0;
  assign o[14] = t_4__2_ | 1'b0;
  assign o[15] = t_4__1_ | 1'b0;
  assign o[16] = t_4__0_ | t_4__16_;

endmodule



module bsg_priority_encode_one_hot_out_width_p17_lo_to_hi_p1
(
  i,
  o,
  v_o
);

  input [16:0] i;
  output [16:0] o;
  output v_o;
  wire [16:0] o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15;
  wire [15:1] scan_lo;

  bsg_scan_width_p17_or_p1_lo_to_hi_p1
  \nw1.scan 
  (
    .i(i),
    .o({ v_o, scan_lo, o[0:0] })
  );

  assign o[16] = v_o & N0;
  assign N0 = ~scan_lo[15];
  assign o[15] = scan_lo[15] & N1;
  assign N1 = ~scan_lo[14];
  assign o[14] = scan_lo[14] & N2;
  assign N2 = ~scan_lo[13];
  assign o[13] = scan_lo[13] & N3;
  assign N3 = ~scan_lo[12];
  assign o[12] = scan_lo[12] & N4;
  assign N4 = ~scan_lo[11];
  assign o[11] = scan_lo[11] & N5;
  assign N5 = ~scan_lo[10];
  assign o[10] = scan_lo[10] & N6;
  assign N6 = ~scan_lo[9];
  assign o[9] = scan_lo[9] & N7;
  assign N7 = ~scan_lo[8];
  assign o[8] = scan_lo[8] & N8;
  assign N8 = ~scan_lo[7];
  assign o[7] = scan_lo[7] & N9;
  assign N9 = ~scan_lo[6];
  assign o[6] = scan_lo[6] & N10;
  assign N10 = ~scan_lo[5];
  assign o[5] = scan_lo[5] & N11;
  assign N11 = ~scan_lo[4];
  assign o[4] = scan_lo[4] & N12;
  assign N12 = ~scan_lo[3];
  assign o[3] = scan_lo[3] & N13;
  assign N13 = ~scan_lo[2];
  assign o[2] = scan_lo[2] & N14;
  assign N14 = ~scan_lo[1];
  assign o[1] = scan_lo[1] & N15;
  assign N15 = ~o[0];

endmodule



module bsg_encode_one_hot_width_p17_lo_to_hi_p1
(
  i,
  addr_o,
  v_o
);

  input [16:0] i;
  output [4:0] addr_o;
  output v_o;
  wire [4:0] addr_o;
  wire v_o,v_4__0_,v_3__24_,v_3__16_,v_3__8_,v_3__0_,v_2__28_,v_2__24_,v_2__20_,
  v_2__16_,v_2__12_,v_2__8_,v_2__4_,v_2__0_,v_1__30_,v_1__28_,v_1__26_,v_1__24_,v_1__22_,
  v_1__20_,v_1__18_,v_1__16_,v_1__14_,v_1__12_,v_1__10_,v_1__8_,v_1__6_,v_1__4_,
  v_1__2_,v_1__0_,addr_4__18_,addr_4__17_,addr_4__16_,addr_4__2_,addr_4__1_,
  addr_4__0_,addr_3__25_,addr_3__24_,addr_3__17_,addr_3__16_,addr_3__9_,addr_3__8_,
  addr_3__1_,addr_3__0_,addr_2__28_,addr_2__24_,addr_2__20_,addr_2__16_,addr_2__12_,
  addr_2__8_,addr_2__4_,addr_2__0_;
  assign v_1__0_ = i[1] | i[0];
  assign v_1__2_ = i[3] | i[2];
  assign v_1__4_ = i[5] | i[4];
  assign v_1__6_ = i[7] | i[6];
  assign v_1__8_ = i[9] | i[8];
  assign v_1__10_ = i[11] | i[10];
  assign v_1__12_ = i[13] | i[12];
  assign v_1__14_ = i[15] | i[14];
  assign v_1__16_ = 1'b0 | i[16];
  assign v_1__18_ = 1'b0 | 1'b0;
  assign v_1__20_ = 1'b0 | 1'b0;
  assign v_1__22_ = 1'b0 | 1'b0;
  assign v_1__24_ = 1'b0 | 1'b0;
  assign v_1__26_ = 1'b0 | 1'b0;
  assign v_1__28_ = 1'b0 | 1'b0;
  assign v_1__30_ = 1'b0 | 1'b0;
  assign v_2__0_ = v_1__2_ | v_1__0_;
  assign addr_2__0_ = i[1] | i[3];
  assign v_2__4_ = v_1__6_ | v_1__4_;
  assign addr_2__4_ = i[5] | i[7];
  assign v_2__8_ = v_1__10_ | v_1__8_;
  assign addr_2__8_ = i[9] | i[11];
  assign v_2__12_ = v_1__14_ | v_1__12_;
  assign addr_2__12_ = i[13] | i[15];
  assign v_2__16_ = v_1__18_ | v_1__16_;
  assign addr_2__16_ = 1'b0 | 1'b0;
  assign v_2__20_ = v_1__22_ | v_1__20_;
  assign addr_2__20_ = 1'b0 | 1'b0;
  assign v_2__24_ = v_1__26_ | v_1__24_;
  assign addr_2__24_ = 1'b0 | 1'b0;
  assign v_2__28_ = v_1__30_ | v_1__28_;
  assign addr_2__28_ = 1'b0 | 1'b0;
  assign v_3__0_ = v_2__4_ | v_2__0_;
  assign addr_3__1_ = v_1__2_ | v_1__6_;
  assign addr_3__0_ = addr_2__0_ | addr_2__4_;
  assign v_3__8_ = v_2__12_ | v_2__8_;
  assign addr_3__9_ = v_1__10_ | v_1__14_;
  assign addr_3__8_ = addr_2__8_ | addr_2__12_;
  assign v_3__16_ = v_2__20_ | v_2__16_;
  assign addr_3__17_ = v_1__18_ | v_1__22_;
  assign addr_3__16_ = addr_2__16_ | addr_2__20_;
  assign v_3__24_ = v_2__28_ | v_2__24_;
  assign addr_3__25_ = v_1__26_ | v_1__30_;
  assign addr_3__24_ = addr_2__24_ | addr_2__28_;
  assign v_4__0_ = v_3__8_ | v_3__0_;
  assign addr_4__2_ = v_2__4_ | v_2__12_;
  assign addr_4__1_ = addr_3__1_ | addr_3__9_;
  assign addr_4__0_ = addr_3__0_ | addr_3__8_;
  assign addr_o[4] = v_3__24_ | v_3__16_;
  assign addr_4__18_ = v_2__20_ | v_2__28_;
  assign addr_4__17_ = addr_3__17_ | addr_3__25_;
  assign addr_4__16_ = addr_3__16_ | addr_3__24_;
  assign v_o = addr_o[4] | v_4__0_;
  assign addr_o[3] = v_3__8_ | v_3__24_;
  assign addr_o[2] = addr_4__2_ | addr_4__18_;
  assign addr_o[1] = addr_4__1_ | addr_4__17_;
  assign addr_o[0] = addr_4__0_ | addr_4__16_;

endmodule



module bsg_priority_encode_width_p17_lo_to_hi_p1
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
  wire [16:0] enc_lo;

  bsg_priority_encode_one_hot_out_width_p17_lo_to_hi_p1
  a
  (
    .i(i),
    .o(enc_lo),
    .v_o(v_o)
  );


  bsg_encode_one_hot_width_p17_lo_to_hi_p1
  b
  (
    .i(enc_lo),
    .addr_o(addr_o)
  );


endmodule



module bsg_counting_leading_zeros
(
  a_i,
  num_zero_o
);

  input [15:0] a_i;
  output [4:0] num_zero_o;
  wire [4:0] num_zero_o;

  bsg_priority_encode_width_p17_lo_to_hi_p1
  pe0
  (
    .i({ 1'b1, a_i[0:0], a_i[1:1], a_i[2:2], a_i[3:3], a_i[4:4], a_i[5:5], a_i[6:6], a_i[7:7], a_i[8:8], a_i[9:9], a_i[10:10], a_i[11:11], a_i[12:12], a_i[13:13], a_i[14:14], a_i[15:15] }),
    .addr_o(num_zero_o)
  );


endmodule

