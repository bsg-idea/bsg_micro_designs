

module top
(
  clk_i,
  reset_i,
  en_i,
  v_i,
  a_i,
  b_i,
  sub_i,
  ready_o,
  v_o,
  z_o,
  unimplemented_o,
  invalid_o,
  overflow_o,
  underflow_o,
  yumi_i
);

  input [15:0] a_i;
  input [15:0] b_i;
  output [15:0] z_o;
  input clk_i;
  input reset_i;
  input en_i;
  input v_i;
  input sub_i;
  input yumi_i;
  output ready_o;
  output v_o;
  output unimplemented_o;
  output invalid_o;
  output overflow_o;
  output underflow_o;

  bsg_fpu_add_sub
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .z_o(z_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .en_i(en_i),
    .v_i(v_i),
    .sub_i(sub_i),
    .yumi_i(yumi_i),
    .ready_o(ready_o),
    .v_o(v_o),
    .unimplemented_o(unimplemented_o),
    .invalid_o(invalid_o),
    .overflow_o(overflow_o),
    .underflow_o(underflow_o)
  );


endmodule



module bsg_fpu_preprocess_e_p5_m_p10
(
  a_i,
  zero_o,
  nan_o,
  sig_nan_o,
  infty_o,
  exp_zero_o,
  man_zero_o,
  denormal_o,
  sign_o,
  exp_o,
  man_o
);

  input [15:0] a_i;
  output [4:0] exp_o;
  output [9:0] man_o;
  output zero_o;
  output nan_o;
  output sig_nan_o;
  output infty_o;
  output exp_zero_o;
  output man_zero_o;
  output denormal_o;
  output sign_o;
  wire [4:0] exp_o;
  wire [9:0] man_o;
  wire zero_o,nan_o,sig_nan_o,infty_o,exp_zero_o,man_zero_o,denormal_o,sign_o,a_i_15_,
  N0,N1,N2,N3,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N19;
  assign a_i_15_ = a_i[15];
  assign sign_o = a_i_15_;
  assign exp_o[4] = a_i[14];
  assign exp_o[3] = a_i[13];
  assign exp_o[2] = a_i[12];
  assign exp_o[1] = a_i[11];
  assign exp_o[0] = a_i[10];
  assign man_o[9] = a_i[9];
  assign man_o[8] = a_i[8];
  assign man_o[7] = a_i[7];
  assign man_o[6] = a_i[6];
  assign man_o[5] = a_i[5];
  assign man_o[4] = a_i[4];
  assign man_o[3] = a_i[3];
  assign man_o[2] = a_i[2];
  assign man_o[1] = a_i[1];
  assign man_o[0] = a_i[0];
  assign N0 = exp_o[3] | exp_o[4];
  assign N1 = exp_o[2] | N0;
  assign N2 = exp_o[1] | N1;
  assign N3 = exp_o[0] | N2;
  assign exp_zero_o = ~N3;
  assign N5 = exp_o[3] & exp_o[4];
  assign N6 = exp_o[2] & N5;
  assign N7 = exp_o[1] & N6;
  assign N8 = exp_o[0] & N7;
  assign N9 = man_o[8] | man_o[9];
  assign N10 = man_o[7] | N9;
  assign N11 = man_o[6] | N10;
  assign N12 = man_o[5] | N11;
  assign N13 = man_o[4] | N12;
  assign N14 = man_o[3] | N13;
  assign N15 = man_o[2] | N14;
  assign N16 = man_o[1] | N15;
  assign N17 = man_o[0] | N16;
  assign man_zero_o = ~N17;
  assign zero_o = exp_zero_o & man_zero_o;
  assign nan_o = N8 & N17;
  assign sig_nan_o = nan_o & N19;
  assign N19 = ~man_o[9];
  assign infty_o = N8 & man_zero_o;
  assign denormal_o = exp_zero_o & N17;

endmodule



module bsg_less_than_width_p5
(
  a_i,
  b_i,
  o
);

  input [4:0] a_i;
  input [4:0] b_i;
  output o;
  wire o;
  assign o = a_i < b_i;

endmodule



module bsg_scan_width_p13_or_p1_lo_to_hi_p1
(
  i,
  o
);

  input [12:0] i;
  output [12:0] o;
  wire [12:0] o;
  wire t_3__12_,t_3__11_,t_3__10_,t_3__9_,t_3__8_,t_3__7_,t_3__6_,t_3__5_,t_3__4_,
  t_3__3_,t_3__2_,t_3__1_,t_3__0_,t_2__12_,t_2__11_,t_2__10_,t_2__9_,t_2__8_,t_2__7_,
  t_2__6_,t_2__5_,t_2__4_,t_2__3_,t_2__2_,t_2__1_,t_2__0_,t_1__12_,t_1__11_,
  t_1__10_,t_1__9_,t_1__8_,t_1__7_,t_1__6_,t_1__5_,t_1__4_,t_1__3_,t_1__2_,t_1__1_,
  t_1__0_;
  assign t_1__12_ = i[0] | 1'b0;
  assign t_1__11_ = i[1] | i[0];
  assign t_1__10_ = i[2] | i[1];
  assign t_1__9_ = i[3] | i[2];
  assign t_1__8_ = i[4] | i[3];
  assign t_1__7_ = i[5] | i[4];
  assign t_1__6_ = i[6] | i[5];
  assign t_1__5_ = i[7] | i[6];
  assign t_1__4_ = i[8] | i[7];
  assign t_1__3_ = i[9] | i[8];
  assign t_1__2_ = i[10] | i[9];
  assign t_1__1_ = i[11] | i[10];
  assign t_1__0_ = i[12] | i[11];
  assign t_2__12_ = t_1__12_ | 1'b0;
  assign t_2__11_ = t_1__11_ | 1'b0;
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
  assign t_3__12_ = t_2__12_ | 1'b0;
  assign t_3__11_ = t_2__11_ | 1'b0;
  assign t_3__10_ = t_2__10_ | 1'b0;
  assign t_3__9_ = t_2__9_ | 1'b0;
  assign t_3__8_ = t_2__8_ | t_2__12_;
  assign t_3__7_ = t_2__7_ | t_2__11_;
  assign t_3__6_ = t_2__6_ | t_2__10_;
  assign t_3__5_ = t_2__5_ | t_2__9_;
  assign t_3__4_ = t_2__4_ | t_2__8_;
  assign t_3__3_ = t_2__3_ | t_2__7_;
  assign t_3__2_ = t_2__2_ | t_2__6_;
  assign t_3__1_ = t_2__1_ | t_2__5_;
  assign t_3__0_ = t_2__0_ | t_2__4_;
  assign o[0] = t_3__12_ | 1'b0;
  assign o[1] = t_3__11_ | 1'b0;
  assign o[2] = t_3__10_ | 1'b0;
  assign o[3] = t_3__9_ | 1'b0;
  assign o[4] = t_3__8_ | 1'b0;
  assign o[5] = t_3__7_ | 1'b0;
  assign o[6] = t_3__6_ | 1'b0;
  assign o[7] = t_3__5_ | 1'b0;
  assign o[8] = t_3__4_ | t_3__12_;
  assign o[9] = t_3__3_ | t_3__11_;
  assign o[10] = t_3__2_ | t_3__10_;
  assign o[11] = t_3__1_ | t_3__9_;
  assign o[12] = t_3__0_ | t_3__8_;

endmodule



module bsg_fpu_sticky_width_p13
(
  i,
  shamt_i,
  sticky_o
);

  input [12:0] i;
  input [3:0] shamt_i;
  output sticky_o;
  wire sticky_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56;
  wire [12:0] scan_out;

  bsg_scan_width_p13_or_p1_lo_to_hi_p1
  scan0
  (
    .i(i),
    .o(scan_out)
  );

  assign N40 = shamt_i > { 1'b1, 1'b1, 1'b0, 1'b1 };
  assign N42 = N0 & N1 & (N2 & N3);
  assign N0 = ~shamt_i[3];
  assign N1 = ~shamt_i[2];
  assign N2 = ~shamt_i[0];
  assign N3 = ~shamt_i[1];
  assign N43 = shamt_i[3] & N4 & (N5 & N6);
  assign N4 = ~shamt_i[2];
  assign N5 = ~shamt_i[0];
  assign N6 = ~shamt_i[1];
  assign N44 = N7 & N8 & (shamt_i[0] & N9);
  assign N7 = ~shamt_i[3];
  assign N8 = ~shamt_i[2];
  assign N9 = ~shamt_i[1];
  assign N46 = N10 & N11 & (N12 & shamt_i[1]);
  assign N10 = ~shamt_i[3];
  assign N11 = ~shamt_i[2];
  assign N12 = ~shamt_i[0];
  assign N48 = N13 & N14 & (shamt_i[0] & shamt_i[1]);
  assign N13 = ~shamt_i[3];
  assign N14 = ~shamt_i[2];
  assign N50 = N15 & shamt_i[2] & (N16 & N17);
  assign N15 = ~shamt_i[3];
  assign N16 = ~shamt_i[0];
  assign N17 = ~shamt_i[1];
  assign N52 = N18 & shamt_i[2] & (shamt_i[0] & N19);
  assign N18 = ~shamt_i[3];
  assign N19 = ~shamt_i[1];
  assign N54 = shamt_i[2] & N20 & shamt_i[1];
  assign N20 = ~shamt_i[0];
  assign N55 = shamt_i[2] & shamt_i[0] & shamt_i[1];
  assign N45 = shamt_i[3] & N21 & (shamt_i[0] & N22);
  assign N21 = ~shamt_i[2];
  assign N22 = ~shamt_i[1];
  assign N47 = shamt_i[3] & N23 & shamt_i[1];
  assign N23 = ~shamt_i[0];
  assign N49 = shamt_i[3] & shamt_i[0] & shamt_i[1];
  assign N51 = shamt_i[3] & shamt_i[2] & N24;
  assign N24 = ~shamt_i[0];
  assign N53 = shamt_i[3] & shamt_i[2] & shamt_i[0];
  assign sticky_o = (N25)? scan_out[12] : 
                    (N41)? N56 : 1'b0;
  assign N25 = N40;
  assign N56 = (N26)? 1'b0 : 
               (N27)? scan_out[0] : 
               (N28)? scan_out[1] : 
               (N29)? scan_out[2] : 
               (N30)? scan_out[3] : 
               (N31)? scan_out[4] : 
               (N32)? scan_out[5] : 
               (N33)? scan_out[6] : 
               (N34)? scan_out[7] : 
               (N35)? scan_out[8] : 
               (N36)? scan_out[9] : 
               (N37)? scan_out[10] : 
               (N38)? scan_out[11] : 
               (N39)? scan_out[12] : 1'b0;
  assign N26 = N42;
  assign N27 = N44;
  assign N28 = N46;
  assign N29 = N48;
  assign N30 = N50;
  assign N31 = N52;
  assign N32 = N54;
  assign N33 = N55;
  assign N34 = N43;
  assign N35 = N45;
  assign N36 = N47;
  assign N37 = N49;
  assign N38 = N51;
  assign N39 = N53;
  assign N41 = ~N40;

endmodule



module bsg_less_than_width_p15
(
  a_i,
  b_i,
  o
);

  input [14:0] a_i;
  input [14:0] b_i;
  output o;
  wire o;
  assign o = a_i < b_i;

endmodule



module bsg_less_than_width_p14
(
  a_i,
  b_i,
  o
);

  input [13:0] a_i;
  input [13:0] b_i;
  output o;
  wire o;
  assign o = a_i < b_i;

endmodule



module bsg_scan_width_p15_or_p1_lo_to_hi_p1
(
  i,
  o
);

  input [14:0] i;
  output [14:0] o;
  wire [14:0] o;
  wire t_3__14_,t_3__13_,t_3__12_,t_3__11_,t_3__10_,t_3__9_,t_3__8_,t_3__7_,t_3__6_,
  t_3__5_,t_3__4_,t_3__3_,t_3__2_,t_3__1_,t_3__0_,t_2__14_,t_2__13_,t_2__12_,
  t_2__11_,t_2__10_,t_2__9_,t_2__8_,t_2__7_,t_2__6_,t_2__5_,t_2__4_,t_2__3_,t_2__2_,
  t_2__1_,t_2__0_,t_1__14_,t_1__13_,t_1__12_,t_1__11_,t_1__10_,t_1__9_,t_1__8_,t_1__7_,
  t_1__6_,t_1__5_,t_1__4_,t_1__3_,t_1__2_,t_1__1_,t_1__0_;
  assign t_1__14_ = i[0] | 1'b0;
  assign t_1__13_ = i[1] | i[0];
  assign t_1__12_ = i[2] | i[1];
  assign t_1__11_ = i[3] | i[2];
  assign t_1__10_ = i[4] | i[3];
  assign t_1__9_ = i[5] | i[4];
  assign t_1__8_ = i[6] | i[5];
  assign t_1__7_ = i[7] | i[6];
  assign t_1__6_ = i[8] | i[7];
  assign t_1__5_ = i[9] | i[8];
  assign t_1__4_ = i[10] | i[9];
  assign t_1__3_ = i[11] | i[10];
  assign t_1__2_ = i[12] | i[11];
  assign t_1__1_ = i[13] | i[12];
  assign t_1__0_ = i[14] | i[13];
  assign t_2__14_ = t_1__14_ | 1'b0;
  assign t_2__13_ = t_1__13_ | 1'b0;
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
  assign t_3__14_ = t_2__14_ | 1'b0;
  assign t_3__13_ = t_2__13_ | 1'b0;
  assign t_3__12_ = t_2__12_ | 1'b0;
  assign t_3__11_ = t_2__11_ | 1'b0;
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
  assign o[0] = t_3__14_ | 1'b0;
  assign o[1] = t_3__13_ | 1'b0;
  assign o[2] = t_3__12_ | 1'b0;
  assign o[3] = t_3__11_ | 1'b0;
  assign o[4] = t_3__10_ | 1'b0;
  assign o[5] = t_3__9_ | 1'b0;
  assign o[6] = t_3__8_ | 1'b0;
  assign o[7] = t_3__7_ | 1'b0;
  assign o[8] = t_3__6_ | t_3__14_;
  assign o[9] = t_3__5_ | t_3__13_;
  assign o[10] = t_3__4_ | t_3__12_;
  assign o[11] = t_3__3_ | t_3__11_;
  assign o[12] = t_3__2_ | t_3__10_;
  assign o[13] = t_3__1_ | t_3__9_;
  assign o[14] = t_3__0_ | t_3__8_;

endmodule



module bsg_priority_encode_one_hot_out_width_p15_lo_to_hi_p1
(
  i,
  o
);

  input [14:0] i;
  output [14:0] o;
  wire [14:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13;
  wire [14:1] scan_lo;

  bsg_scan_width_p15_or_p1_lo_to_hi_p1
  \genblk1.scan 
  (
    .i(i),
    .o({ scan_lo, o[0:0] })
  );

  assign o[14] = scan_lo[14] & N0;
  assign N0 = ~scan_lo[13];
  assign o[13] = scan_lo[13] & N1;
  assign N1 = ~scan_lo[12];
  assign o[12] = scan_lo[12] & N2;
  assign N2 = ~scan_lo[11];
  assign o[11] = scan_lo[11] & N3;
  assign N3 = ~scan_lo[10];
  assign o[10] = scan_lo[10] & N4;
  assign N4 = ~scan_lo[9];
  assign o[9] = scan_lo[9] & N5;
  assign N5 = ~scan_lo[8];
  assign o[8] = scan_lo[8] & N6;
  assign N6 = ~scan_lo[7];
  assign o[7] = scan_lo[7] & N7;
  assign N7 = ~scan_lo[6];
  assign o[6] = scan_lo[6] & N8;
  assign N8 = ~scan_lo[5];
  assign o[5] = scan_lo[5] & N9;
  assign N9 = ~scan_lo[4];
  assign o[4] = scan_lo[4] & N10;
  assign N10 = ~scan_lo[3];
  assign o[3] = scan_lo[3] & N11;
  assign N11 = ~scan_lo[2];
  assign o[2] = scan_lo[2] & N12;
  assign N12 = ~scan_lo[1];
  assign o[1] = scan_lo[1] & N13;
  assign N13 = ~o[0];

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
  wire [0:0] addr_o,\aligned.vs ;
  wire v_o;
  wire [1:0] \aligned.addrs ;

  bsg_encode_one_hot_width_p1
  \aligned.left 
  (
    .i(i[0]),
    .addr_o(\aligned.addrs [0]),
    .v_o(\aligned.vs [0])
  );


  bsg_encode_one_hot_width_p1
  \aligned.right 
  (
    .i(i[1]),
    .addr_o(\aligned.addrs [1]),
    .v_o(addr_o[0])
  );

  assign v_o = addr_o[0] | \aligned.vs [0];

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
  wire [1:0] addr_o,\aligned.addrs ;
  wire v_o;
  wire [0:0] \aligned.vs ;

  bsg_encode_one_hot_width_p2
  \aligned.left 
  (
    .i(i[1:0]),
    .addr_o(\aligned.addrs [0]),
    .v_o(\aligned.vs [0])
  );


  bsg_encode_one_hot_width_p2
  \aligned.right 
  (
    .i(i[3:2]),
    .addr_o(\aligned.addrs [1]),
    .v_o(addr_o[1])
  );

  assign v_o = addr_o[1] | \aligned.vs [0];
  assign addr_o[0] = \aligned.addrs [0] | \aligned.addrs [1];

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
  wire [3:0] \aligned.addrs ;
  wire [0:0] \aligned.vs ;

  bsg_encode_one_hot_width_p4
  \aligned.left 
  (
    .i(i[3:0]),
    .addr_o(\aligned.addrs [1:0]),
    .v_o(\aligned.vs [0])
  );


  bsg_encode_one_hot_width_p4
  \aligned.right 
  (
    .i(i[7:4]),
    .addr_o(\aligned.addrs [3:2]),
    .v_o(addr_o[2])
  );

  assign v_o = addr_o[2] | \aligned.vs [0];
  assign addr_o[1] = \aligned.addrs [1] | \aligned.addrs [3];
  assign addr_o[0] = \aligned.addrs [0] | \aligned.addrs [2];

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
  wire [5:0] \aligned.addrs ;
  wire [0:0] \aligned.vs ;

  bsg_encode_one_hot_width_p8
  \aligned.left 
  (
    .i(i[7:0]),
    .addr_o(\aligned.addrs [2:0]),
    .v_o(\aligned.vs [0])
  );


  bsg_encode_one_hot_width_p8
  \aligned.right 
  (
    .i(i[15:8]),
    .addr_o(\aligned.addrs [5:3]),
    .v_o(addr_o[3])
  );

  assign v_o = addr_o[3] | \aligned.vs [0];
  assign addr_o[2] = \aligned.addrs [2] | \aligned.addrs [5];
  assign addr_o[1] = \aligned.addrs [1] | \aligned.addrs [4];
  assign addr_o[0] = \aligned.addrs [0] | \aligned.addrs [3];

endmodule



module bsg_encode_one_hot_width_p15_lo_to_hi_p1
(
  i,
  addr_o,
  v_o
);

  input [14:0] i;
  output [3:0] addr_o;
  output v_o;
  wire [3:0] addr_o;
  wire v_o;

  bsg_encode_one_hot_width_p16
  \unaligned.align 
  (
    .i({ 1'b0, i }),
    .addr_o(addr_o),
    .v_o(v_o)
  );


endmodule



module bsg_priority_encode_width_p15_lo_to_hi_p1
(
  i,
  addr_o,
  v_o
);

  input [14:0] i;
  output [3:0] addr_o;
  output v_o;
  wire [3:0] addr_o;
  wire v_o;
  wire [14:0] enc_lo;

  bsg_priority_encode_one_hot_out_width_p15_lo_to_hi_p1
  a
  (
    .i(i),
    .o(enc_lo)
  );


  bsg_encode_one_hot_width_p15_lo_to_hi_p1
  b
  (
    .i(enc_lo),
    .addr_o(addr_o),
    .v_o(v_o)
  );


endmodule



module bsg_fpu_clz_width_p15
(
  i,
  num_zero_o
);

  input [14:0] i;
  output [3:0] num_zero_o;
  wire [3:0] num_zero_o;

  bsg_priority_encode_width_p15_lo_to_hi_p1
  pe0
  (
    .i({ i[0:0], i[1:1], i[2:2], i[3:3], i[4:4], i[5:5], i[6:6], i[7:7], i[8:8], i[9:9], i[10:10], i[11:11], i[12:12], i[13:13], i[14:14] }),
    .addr_o(num_zero_o)
  );


endmodule



module bsg_fpu_add_sub
(
  clk_i,
  reset_i,
  en_i,
  v_i,
  a_i,
  b_i,
  sub_i,
  ready_o,
  v_o,
  z_o,
  unimplemented_o,
  invalid_o,
  overflow_o,
  underflow_o,
  yumi_i
);

  input [15:0] a_i;
  input [15:0] b_i;
  output [15:0] z_o;
  input clk_i;
  input reset_i;
  input en_i;
  input v_i;
  input sub_i;
  input yumi_i;
  output ready_o;
  output v_o;
  output unimplemented_o;
  output invalid_o;
  output overflow_o;
  output underflow_o;
  wire [15:0] z_o;
  wire ready_o,v_o,unimplemented_o,invalid_o,overflow_o,underflow_o,N0,N1,N3,N4,N5,N6,
  N7,N9,N10,N11,N12,N13,N15,stall,a_zero,a_nan,a_sig_nan,a_infty,exp_a_zero,
  a_denormal,sign_a,b_zero,b_nan,b_sig_nan,b_infty,exp_b_zero,b_denormal,sign_b,
  exp_a_less,N16,N17,N18,N19,N20,N21,mag_a_less,final_sign,do_sub,N22,N23,N24,v_1_r,
  final_sign_1_r,do_sub_1_r,a_sig_nan_1_r,b_sig_nan_1_r,a_nan_1_r,b_nan_1_r,a_infty_1_r,
  b_infty_1_r,a_denormal_1_r,b_denormal_1_r,N25,N26,N27,N28,larger_exp_man_less,
  N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,
  N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,v_2_r,final_sign_2_r,
  do_sub_2_r,a_sig_nan_2_r,b_sig_nan_2_r,a_nan_2_r,b_nan_2_r,a_infty_2_r,b_infty_2_r,
  a_denormal_2_r,b_denormal_2_r,N62,N63,N64,reduce_o,all_zero,N65,N66,N67,N68,N69,N70,
  N71,N72,N73,N74,N75,N76,N77,N78,N79,adjusted_exp_cout,round_up,N80,N81,N82,
  round_up_3_r,all_zero_3_r,a_sig_nan_3_r,b_sig_nan_3_r,a_nan_3_r,b_nan_3_r,a_infty_3_r,
  b_infty_3_r,do_sub_3_r,a_denormal_3_r,b_denormal_3_r,adjusted_exp_cout_3_r,
  final_sign_3_r,N83,N84,N85,carry_into_exp,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,
  N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,
  N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,
  N129,N130,N131,N2,N8,N14,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,
  N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,
  N159,N160,N161,N162,N163,N164,N165,N166,N167,N168;
  wire [4:0] exp_a,exp_b,larger_exp,diff_ab,diff_ba,exp_diff,larger_exp_1_r,larger_exp_2_r,
  adjusted_exp;
  wire [9:0] man_a,man_b,larger_exp_man,smaller_exp_man;
  wire [13:0] smaller_exp_man_shifted,smaller_exp_man_shifted_1_r,larger_exp_man_padded_1_r,
  larger_mag_man,smaller_mag_man,shifted_adder_output;
  wire [14:0] adder_output,adder_output_2_r,pre_roundup_3_r,rounded;
  wire [3:0] num_zero;
  reg a_denormal_1_r_sv2v_reg,v_1_r_sv2v_reg,b_denormal_1_r_sv2v_reg,
  final_sign_1_r_sv2v_reg,do_sub_1_r_sv2v_reg,larger_exp_1_r_4_sv2v_reg,larger_exp_1_r_3_sv2v_reg,
  larger_exp_1_r_2_sv2v_reg,larger_exp_1_r_1_sv2v_reg,larger_exp_1_r_0_sv2v_reg,
  smaller_exp_man_shifted_1_r_13_sv2v_reg,smaller_exp_man_shifted_1_r_12_sv2v_reg,
  smaller_exp_man_shifted_1_r_11_sv2v_reg,smaller_exp_man_shifted_1_r_10_sv2v_reg,
  smaller_exp_man_shifted_1_r_9_sv2v_reg,smaller_exp_man_shifted_1_r_8_sv2v_reg,
  smaller_exp_man_shifted_1_r_7_sv2v_reg,smaller_exp_man_shifted_1_r_6_sv2v_reg,
  smaller_exp_man_shifted_1_r_5_sv2v_reg,smaller_exp_man_shifted_1_r_4_sv2v_reg,
  smaller_exp_man_shifted_1_r_3_sv2v_reg,smaller_exp_man_shifted_1_r_2_sv2v_reg,
  smaller_exp_man_shifted_1_r_1_sv2v_reg,smaller_exp_man_shifted_1_r_0_sv2v_reg,
  larger_exp_man_padded_1_r_13_sv2v_reg,larger_exp_man_padded_1_r_12_sv2v_reg,
  larger_exp_man_padded_1_r_11_sv2v_reg,larger_exp_man_padded_1_r_10_sv2v_reg,
  larger_exp_man_padded_1_r_9_sv2v_reg,larger_exp_man_padded_1_r_8_sv2v_reg,
  larger_exp_man_padded_1_r_7_sv2v_reg,larger_exp_man_padded_1_r_6_sv2v_reg,
  larger_exp_man_padded_1_r_5_sv2v_reg,larger_exp_man_padded_1_r_4_sv2v_reg,larger_exp_man_padded_1_r_3_sv2v_reg,
  larger_exp_man_padded_1_r_2_sv2v_reg,larger_exp_man_padded_1_r_1_sv2v_reg,
  larger_exp_man_padded_1_r_0_sv2v_reg,a_sig_nan_1_r_sv2v_reg,b_sig_nan_1_r_sv2v_reg,
  a_nan_1_r_sv2v_reg,b_nan_1_r_sv2v_reg,a_infty_1_r_sv2v_reg,b_infty_1_r_sv2v_reg,
  a_denormal_2_r_sv2v_reg,v_2_r_sv2v_reg,b_denormal_2_r_sv2v_reg,
  larger_exp_2_r_4_sv2v_reg,larger_exp_2_r_3_sv2v_reg,larger_exp_2_r_2_sv2v_reg,
  larger_exp_2_r_1_sv2v_reg,larger_exp_2_r_0_sv2v_reg,adder_output_2_r_14_sv2v_reg,
  adder_output_2_r_13_sv2v_reg,adder_output_2_r_12_sv2v_reg,adder_output_2_r_11_sv2v_reg,
  adder_output_2_r_10_sv2v_reg,adder_output_2_r_9_sv2v_reg,adder_output_2_r_8_sv2v_reg,
  adder_output_2_r_7_sv2v_reg,adder_output_2_r_6_sv2v_reg,adder_output_2_r_5_sv2v_reg,
  adder_output_2_r_4_sv2v_reg,adder_output_2_r_3_sv2v_reg,adder_output_2_r_2_sv2v_reg,
  adder_output_2_r_1_sv2v_reg,adder_output_2_r_0_sv2v_reg,final_sign_2_r_sv2v_reg,
  do_sub_2_r_sv2v_reg,a_sig_nan_2_r_sv2v_reg,b_sig_nan_2_r_sv2v_reg,
  a_nan_2_r_sv2v_reg,b_nan_2_r_sv2v_reg,a_infty_2_r_sv2v_reg,b_infty_2_r_sv2v_reg,
  adjusted_exp_cout_3_r_sv2v_reg,v_o_sv2v_reg,final_sign_3_r_sv2v_reg,pre_roundup_3_r_14_sv2v_reg,
  pre_roundup_3_r_13_sv2v_reg,pre_roundup_3_r_12_sv2v_reg,
  pre_roundup_3_r_11_sv2v_reg,pre_roundup_3_r_10_sv2v_reg,pre_roundup_3_r_9_sv2v_reg,
  pre_roundup_3_r_8_sv2v_reg,pre_roundup_3_r_7_sv2v_reg,pre_roundup_3_r_6_sv2v_reg,
  pre_roundup_3_r_5_sv2v_reg,pre_roundup_3_r_4_sv2v_reg,pre_roundup_3_r_3_sv2v_reg,
  pre_roundup_3_r_2_sv2v_reg,pre_roundup_3_r_1_sv2v_reg,pre_roundup_3_r_0_sv2v_reg,
  round_up_3_r_sv2v_reg,all_zero_3_r_sv2v_reg,a_sig_nan_3_r_sv2v_reg,b_sig_nan_3_r_sv2v_reg,
  a_nan_3_r_sv2v_reg,b_nan_3_r_sv2v_reg,a_infty_3_r_sv2v_reg,b_infty_3_r_sv2v_reg,
  do_sub_3_r_sv2v_reg,a_denormal_3_r_sv2v_reg,b_denormal_3_r_sv2v_reg;
  assign a_denormal_1_r = a_denormal_1_r_sv2v_reg;
  assign v_1_r = v_1_r_sv2v_reg;
  assign b_denormal_1_r = b_denormal_1_r_sv2v_reg;
  assign final_sign_1_r = final_sign_1_r_sv2v_reg;
  assign do_sub_1_r = do_sub_1_r_sv2v_reg;
  assign larger_exp_1_r[4] = larger_exp_1_r_4_sv2v_reg;
  assign larger_exp_1_r[3] = larger_exp_1_r_3_sv2v_reg;
  assign larger_exp_1_r[2] = larger_exp_1_r_2_sv2v_reg;
  assign larger_exp_1_r[1] = larger_exp_1_r_1_sv2v_reg;
  assign larger_exp_1_r[0] = larger_exp_1_r_0_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[13] = smaller_exp_man_shifted_1_r_13_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[12] = smaller_exp_man_shifted_1_r_12_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[11] = smaller_exp_man_shifted_1_r_11_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[10] = smaller_exp_man_shifted_1_r_10_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[9] = smaller_exp_man_shifted_1_r_9_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[8] = smaller_exp_man_shifted_1_r_8_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[7] = smaller_exp_man_shifted_1_r_7_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[6] = smaller_exp_man_shifted_1_r_6_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[5] = smaller_exp_man_shifted_1_r_5_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[4] = smaller_exp_man_shifted_1_r_4_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[3] = smaller_exp_man_shifted_1_r_3_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[2] = smaller_exp_man_shifted_1_r_2_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[1] = smaller_exp_man_shifted_1_r_1_sv2v_reg;
  assign smaller_exp_man_shifted_1_r[0] = smaller_exp_man_shifted_1_r_0_sv2v_reg;
  assign larger_exp_man_padded_1_r[13] = larger_exp_man_padded_1_r_13_sv2v_reg;
  assign larger_exp_man_padded_1_r[12] = larger_exp_man_padded_1_r_12_sv2v_reg;
  assign larger_exp_man_padded_1_r[11] = larger_exp_man_padded_1_r_11_sv2v_reg;
  assign larger_exp_man_padded_1_r[10] = larger_exp_man_padded_1_r_10_sv2v_reg;
  assign larger_exp_man_padded_1_r[9] = larger_exp_man_padded_1_r_9_sv2v_reg;
  assign larger_exp_man_padded_1_r[8] = larger_exp_man_padded_1_r_8_sv2v_reg;
  assign larger_exp_man_padded_1_r[7] = larger_exp_man_padded_1_r_7_sv2v_reg;
  assign larger_exp_man_padded_1_r[6] = larger_exp_man_padded_1_r_6_sv2v_reg;
  assign larger_exp_man_padded_1_r[5] = larger_exp_man_padded_1_r_5_sv2v_reg;
  assign larger_exp_man_padded_1_r[4] = larger_exp_man_padded_1_r_4_sv2v_reg;
  assign larger_exp_man_padded_1_r[3] = larger_exp_man_padded_1_r_3_sv2v_reg;
  assign larger_exp_man_padded_1_r[2] = larger_exp_man_padded_1_r_2_sv2v_reg;
  assign larger_exp_man_padded_1_r[1] = larger_exp_man_padded_1_r_1_sv2v_reg;
  assign larger_exp_man_padded_1_r[0] = larger_exp_man_padded_1_r_0_sv2v_reg;
  assign a_sig_nan_1_r = a_sig_nan_1_r_sv2v_reg;
  assign b_sig_nan_1_r = b_sig_nan_1_r_sv2v_reg;
  assign a_nan_1_r = a_nan_1_r_sv2v_reg;
  assign b_nan_1_r = b_nan_1_r_sv2v_reg;
  assign a_infty_1_r = a_infty_1_r_sv2v_reg;
  assign b_infty_1_r = b_infty_1_r_sv2v_reg;
  assign a_denormal_2_r = a_denormal_2_r_sv2v_reg;
  assign v_2_r = v_2_r_sv2v_reg;
  assign b_denormal_2_r = b_denormal_2_r_sv2v_reg;
  assign larger_exp_2_r[4] = larger_exp_2_r_4_sv2v_reg;
  assign larger_exp_2_r[3] = larger_exp_2_r_3_sv2v_reg;
  assign larger_exp_2_r[2] = larger_exp_2_r_2_sv2v_reg;
  assign larger_exp_2_r[1] = larger_exp_2_r_1_sv2v_reg;
  assign larger_exp_2_r[0] = larger_exp_2_r_0_sv2v_reg;
  assign adder_output_2_r[14] = adder_output_2_r_14_sv2v_reg;
  assign adder_output_2_r[13] = adder_output_2_r_13_sv2v_reg;
  assign adder_output_2_r[12] = adder_output_2_r_12_sv2v_reg;
  assign adder_output_2_r[11] = adder_output_2_r_11_sv2v_reg;
  assign adder_output_2_r[10] = adder_output_2_r_10_sv2v_reg;
  assign adder_output_2_r[9] = adder_output_2_r_9_sv2v_reg;
  assign adder_output_2_r[8] = adder_output_2_r_8_sv2v_reg;
  assign adder_output_2_r[7] = adder_output_2_r_7_sv2v_reg;
  assign adder_output_2_r[6] = adder_output_2_r_6_sv2v_reg;
  assign adder_output_2_r[5] = adder_output_2_r_5_sv2v_reg;
  assign adder_output_2_r[4] = adder_output_2_r_4_sv2v_reg;
  assign adder_output_2_r[3] = adder_output_2_r_3_sv2v_reg;
  assign adder_output_2_r[2] = adder_output_2_r_2_sv2v_reg;
  assign adder_output_2_r[1] = adder_output_2_r_1_sv2v_reg;
  assign adder_output_2_r[0] = adder_output_2_r_0_sv2v_reg;
  assign final_sign_2_r = final_sign_2_r_sv2v_reg;
  assign do_sub_2_r = do_sub_2_r_sv2v_reg;
  assign a_sig_nan_2_r = a_sig_nan_2_r_sv2v_reg;
  assign b_sig_nan_2_r = b_sig_nan_2_r_sv2v_reg;
  assign a_nan_2_r = a_nan_2_r_sv2v_reg;
  assign b_nan_2_r = b_nan_2_r_sv2v_reg;
  assign a_infty_2_r = a_infty_2_r_sv2v_reg;
  assign b_infty_2_r = b_infty_2_r_sv2v_reg;
  assign adjusted_exp_cout_3_r = adjusted_exp_cout_3_r_sv2v_reg;
  assign v_o = v_o_sv2v_reg;
  assign final_sign_3_r = final_sign_3_r_sv2v_reg;
  assign pre_roundup_3_r[14] = pre_roundup_3_r_14_sv2v_reg;
  assign pre_roundup_3_r[13] = pre_roundup_3_r_13_sv2v_reg;
  assign pre_roundup_3_r[12] = pre_roundup_3_r_12_sv2v_reg;
  assign pre_roundup_3_r[11] = pre_roundup_3_r_11_sv2v_reg;
  assign pre_roundup_3_r[10] = pre_roundup_3_r_10_sv2v_reg;
  assign pre_roundup_3_r[9] = pre_roundup_3_r_9_sv2v_reg;
  assign pre_roundup_3_r[8] = pre_roundup_3_r_8_sv2v_reg;
  assign pre_roundup_3_r[7] = pre_roundup_3_r_7_sv2v_reg;
  assign pre_roundup_3_r[6] = pre_roundup_3_r_6_sv2v_reg;
  assign pre_roundup_3_r[5] = pre_roundup_3_r_5_sv2v_reg;
  assign pre_roundup_3_r[4] = pre_roundup_3_r_4_sv2v_reg;
  assign pre_roundup_3_r[3] = pre_roundup_3_r_3_sv2v_reg;
  assign pre_roundup_3_r[2] = pre_roundup_3_r_2_sv2v_reg;
  assign pre_roundup_3_r[1] = pre_roundup_3_r_1_sv2v_reg;
  assign pre_roundup_3_r[0] = pre_roundup_3_r_0_sv2v_reg;
  assign round_up_3_r = round_up_3_r_sv2v_reg;
  assign all_zero_3_r = all_zero_3_r_sv2v_reg;
  assign a_sig_nan_3_r = a_sig_nan_3_r_sv2v_reg;
  assign b_sig_nan_3_r = b_sig_nan_3_r_sv2v_reg;
  assign a_nan_3_r = a_nan_3_r_sv2v_reg;
  assign b_nan_3_r = b_nan_3_r_sv2v_reg;
  assign a_infty_3_r = a_infty_3_r_sv2v_reg;
  assign b_infty_3_r = b_infty_3_r_sv2v_reg;
  assign do_sub_3_r = do_sub_3_r_sv2v_reg;
  assign a_denormal_3_r = a_denormal_3_r_sv2v_reg;
  assign b_denormal_3_r = b_denormal_3_r_sv2v_reg;

  bsg_fpu_preprocess_e_p5_m_p10
  a_preprocess
  (
    .a_i(a_i),
    .zero_o(a_zero),
    .nan_o(a_nan),
    .sig_nan_o(a_sig_nan),
    .infty_o(a_infty),
    .exp_zero_o(exp_a_zero),
    .denormal_o(a_denormal),
    .sign_o(sign_a),
    .exp_o(exp_a),
    .man_o(man_a)
  );


  bsg_fpu_preprocess_e_p5_m_p10
  b_preprocess
  (
    .a_i(b_i),
    .zero_o(b_zero),
    .nan_o(b_nan),
    .sig_nan_o(b_sig_nan),
    .infty_o(b_infty),
    .exp_zero_o(exp_b_zero),
    .denormal_o(b_denormal),
    .sign_o(sign_b),
    .exp_o(exp_b),
    .man_o(man_b)
  );


  bsg_less_than_width_p5
  lt_exp
  (
    .a_i(exp_a),
    .b_i(exp_b),
    .o(exp_a_less)
  );


  bsg_fpu_sticky_width_p13
  sticky0
  (
    .i({ 1'b1, smaller_exp_man, 1'b0, 1'b0 }),
    .shamt_i(exp_diff[3:0]),
    .sticky_o(smaller_exp_man_shifted[0])
  );


  bsg_less_than_width_p15
  lt_mag
  (
    .a_i(a_i[14:0]),
    .b_i(b_i[14:0]),
    .o(mag_a_less)
  );

  assign smaller_exp_man_shifted[13:1] = { 1'b1, smaller_exp_man, 1'b0, 1'b0 } >> exp_diff;

  bsg_less_than_width_p14
  lt_man_norm
  (
    .a_i(larger_exp_man_padded_1_r),
    .b_i(smaller_exp_man_shifted_1_r),
    .o(larger_exp_man_less)
  );


  bsg_fpu_clz_width_p15
  clz
  (
    .i(adder_output_2_r),
    .num_zero_o(num_zero)
  );


  bsg_reduce
  reduce0
  (
    .i(adder_output_2_r),
    .o(reduce_o)
  );

  assign N132 = pre_roundup_3_r[13] | pre_roundup_3_r[14];
  assign N133 = pre_roundup_3_r[12] | N132;
  assign N134 = pre_roundup_3_r[11] | N133;
  assign N135 = pre_roundup_3_r[10] | N134;
  assign N136 = ~N135;
  assign { N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66 } = adder_output_2_r[13:0] << num_zero;
  assign N137 = pre_roundup_3_r[13] & pre_roundup_3_r[14];
  assign N138 = pre_roundup_3_r[12] & N137;
  assign N139 = pre_roundup_3_r[11] & N138;
  assign N140 = pre_roundup_3_r[10] & N139;
  assign rounded = pre_roundup_3_r + round_up_3_r;
  assign { adjusted_exp_cout, adjusted_exp } = larger_exp_2_r - num_zero;
  assign diff_ba = exp_b - exp_a;
  assign diff_ab = exp_a - exp_b;
  assign larger_exp = { N21, N20, N19, N18, N17 } + 1'b1;
  assign { N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44 } = larger_mag_man + { do_sub_1_r, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43 };
  assign adder_output = { N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44 } + do_sub_1_r;
  assign { N21, N20, N19, N18, N17 } = (N0)? exp_b : 
                                       (N1)? exp_a : 1'b0;
  assign N0 = exp_a_less;
  assign N1 = N16;
  assign exp_diff = (N0)? diff_ba : 
                    (N1)? diff_ab : 1'b0;
  assign larger_exp_man = (N0)? man_b : 
                          (N1)? man_a : 1'b0;
  assign smaller_exp_man = (N0)? man_a : 
                           (N1)? man_b : 1'b0;
  assign N25 = (N3)? 1'b1 : 
               (N2)? 1'b0 : 1'b0;
  assign N3 = N22;
  assign N26 = (N4)? 1'b0 : 
               (N28)? v_i : 
               (N24)? 1'b0 : 1'b0;
  assign N4 = reset_i;
  assign larger_mag_man = (N5)? smaller_exp_man_shifted_1_r : 
                          (N6)? larger_exp_man_padded_1_r : 1'b0;
  assign N5 = larger_exp_man_less;
  assign N6 = N29;
  assign smaller_mag_man = (N5)? larger_exp_man_padded_1_r : 
                           (N6)? smaller_exp_man_shifted_1_r : 1'b0;
  assign N62 = (N7)? 1'b1 : 
               (N8)? 1'b0 : 1'b0;
  assign N7 = N59;
  assign N63 = (N4)? 1'b0 : 
               (N64)? v_1_r : 
               (N61)? 1'b0 : 1'b0;
  assign shifted_adder_output = (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                (N10)? { N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66 } : 1'b0;
  assign N9 = all_zero;
  assign N10 = N65;
  assign N83 = (N11)? 1'b1 : 
               (N14)? 1'b0 : 1'b0;
  assign N11 = N80;
  assign N84 = (N4)? 1'b0 : 
               (N85)? v_2_r : 
               (N82)? 1'b0 : 1'b0;
  assign N105 = (N12)? 1'b0 : 
                (N13)? final_sign_3_r : 1'b0;
  assign N12 = do_sub_3_r;
  assign N13 = N104;
  assign unimplemented_o = (N15)? 1'b0 : 
                           (N107)? 1'b0 : 
                           (N110)? 1'b0 : 
                           (N113)? 1'b0 : 
                           (N116)? 1'b0 : 
                           (N119)? 1'b1 : 
                           (N122)? 1'b0 : 
                           (N125)? 1'b0 : 
                           (N128)? 1'b0 : 
                           (N131)? 1'b0 : 
                           (N103)? 1'b0 : 1'b0;
  assign N15 = N86;
  assign invalid_o = (N15)? 1'b1 : 
                     (N107)? 1'b0 : 
                     (N110)? do_sub_3_r : 
                     (N113)? 1'b0 : 
                     (N116)? 1'b0 : 
                     (N119)? 1'b0 : 
                     (N122)? 1'b0 : 
                     (N125)? 1'b0 : 
                     (N128)? 1'b0 : 
                     (N131)? 1'b0 : 
                     (N103)? 1'b0 : 1'b0;
  assign overflow_o = (N15)? 1'b0 : 
                      (N107)? 1'b0 : 
                      (N110)? 1'b0 : 
                      (N113)? 1'b0 : 
                      (N116)? 1'b0 : 
                      (N119)? 1'b0 : 
                      (N122)? 1'b0 : 
                      (N125)? 1'b0 : 
                      (N128)? 1'b1 : 
                      (N131)? 1'b0 : 
                      (N103)? 1'b0 : 1'b0;
  assign underflow_o = (N15)? 1'b0 : 
                       (N107)? 1'b0 : 
                       (N110)? 1'b0 : 
                       (N113)? 1'b0 : 
                       (N116)? 1'b0 : 
                       (N119)? 1'b0 : 
                       (N122)? 1'b0 : 
                       (N125)? 1'b1 : 
                       (N128)? 1'b0 : 
                       (N131)? 1'b1 : 
                       (N103)? 1'b0 : 1'b0;
  assign z_o = (N15)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N107)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N110)? { N105, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, do_sub_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N113)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N116)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N119)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N122)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N125)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N128)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N131)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N103)? { final_sign_3_r, rounded } : 1'b0;
  assign stall = v_o & N141;
  assign N141 = ~yumi_i;
  assign ready_o = N142 & en_i;
  assign N142 = ~stall;
  assign N16 = ~exp_a_less;
  assign final_sign = N148 | N151;
  assign N148 = N144 | N147;
  assign N144 = sign_a & N143;
  assign N143 = ~mag_a_less;
  assign N147 = N146 & sub_i;
  assign N146 = N145 & mag_a_less;
  assign N145 = ~sign_b;
  assign N151 = N149 & N150;
  assign N149 = sign_b & mag_a_less;
  assign N150 = ~sub_i;
  assign do_sub = N152 ^ sign_b;
  assign N152 = sub_i ^ sign_a;
  assign N22 = N142 & en_i;
  assign N23 = N22 | reset_i;
  assign N24 = ~N23;
  assign N27 = ~reset_i;
  assign N28 = N22 & N27;
  assign N29 = ~larger_exp_man_less;
  assign N30 = do_sub_1_r ^ smaller_mag_man[13];
  assign N31 = do_sub_1_r ^ smaller_mag_man[12];
  assign N32 = do_sub_1_r ^ smaller_mag_man[11];
  assign N33 = do_sub_1_r ^ smaller_mag_man[10];
  assign N34 = do_sub_1_r ^ smaller_mag_man[9];
  assign N35 = do_sub_1_r ^ smaller_mag_man[8];
  assign N36 = do_sub_1_r ^ smaller_mag_man[7];
  assign N37 = do_sub_1_r ^ smaller_mag_man[6];
  assign N38 = do_sub_1_r ^ smaller_mag_man[5];
  assign N39 = do_sub_1_r ^ smaller_mag_man[4];
  assign N40 = do_sub_1_r ^ smaller_mag_man[3];
  assign N41 = do_sub_1_r ^ smaller_mag_man[2];
  assign N42 = do_sub_1_r ^ smaller_mag_man[1];
  assign N43 = do_sub_1_r ^ smaller_mag_man[0];
  assign N59 = N142 & en_i;
  assign N60 = N59 | reset_i;
  assign N61 = ~N60;
  assign N64 = N59 & N27;
  assign all_zero = ~reduce_o;
  assign N65 = ~all_zero;
  assign round_up = shifted_adder_output[3] & N155;
  assign N155 = N154 | shifted_adder_output[4];
  assign N154 = N153 | shifted_adder_output[0];
  assign N153 = shifted_adder_output[2] | shifted_adder_output[1];
  assign N80 = N142 & en_i;
  assign N81 = N80 | reset_i;
  assign N82 = ~N81;
  assign N85 = N80 & N27;
  assign carry_into_exp = N164 & pre_roundup_3_r[0];
  assign N164 = N163 & pre_roundup_3_r[1];
  assign N163 = N162 & pre_roundup_3_r[2];
  assign N162 = N161 & pre_roundup_3_r[3];
  assign N161 = N160 & pre_roundup_3_r[4];
  assign N160 = N159 & pre_roundup_3_r[5];
  assign N159 = N158 & pre_roundup_3_r[6];
  assign N158 = N157 & pre_roundup_3_r[7];
  assign N157 = N156 & pre_roundup_3_r[8];
  assign N156 = round_up_3_r & pre_roundup_3_r[9];
  assign N86 = a_sig_nan_3_r | b_sig_nan_3_r;
  assign N87 = a_nan_3_r | b_nan_3_r;
  assign N88 = a_infty_3_r & b_infty_3_r;
  assign N89 = a_infty_3_r & N165;
  assign N165 = ~b_infty_3_r;
  assign N90 = N166 & b_infty_3_r;
  assign N166 = ~a_infty_3_r;
  assign N91 = a_denormal_3_r | b_denormal_3_r;
  assign N92 = N140 & N167;
  assign N167 = pre_roundup_3_r[10] | carry_into_exp;
  assign N93 = N136 & N168;
  assign N168 = ~carry_into_exp;
  assign N94 = N87 | N86;
  assign N95 = N88 | N94;
  assign N96 = N89 | N95;
  assign N97 = N90 | N96;
  assign N98 = N91 | N97;
  assign N99 = all_zero_3_r | N98;
  assign N100 = adjusted_exp_cout_3_r | N99;
  assign N101 = N92 | N100;
  assign N102 = N93 | N101;
  assign N103 = ~N102;
  assign N104 = ~do_sub_3_r;
  assign N106 = ~N86;
  assign N107 = N87 & N106;
  assign N108 = ~N87;
  assign N109 = N106 & N108;
  assign N110 = N88 & N109;
  assign N111 = ~N88;
  assign N112 = N109 & N111;
  assign N113 = N89 & N112;
  assign N114 = ~N89;
  assign N115 = N112 & N114;
  assign N116 = N90 & N115;
  assign N117 = ~N90;
  assign N118 = N115 & N117;
  assign N119 = N91 & N118;
  assign N120 = ~N91;
  assign N121 = N118 & N120;
  assign N122 = all_zero_3_r & N121;
  assign N123 = ~all_zero_3_r;
  assign N124 = N121 & N123;
  assign N125 = adjusted_exp_cout_3_r & N124;
  assign N126 = ~adjusted_exp_cout_3_r;
  assign N127 = N124 & N126;
  assign N128 = N92 & N127;
  assign N129 = ~N92;
  assign N130 = N127 & N129;
  assign N131 = N93 & N130;
  assign N2 = ~N22;
  assign N8 = ~N59;
  assign N14 = ~N80;

  always @(posedge clk_i) begin
    if(N26) begin
      a_denormal_1_r_sv2v_reg <= a_denormal;
      b_denormal_1_r_sv2v_reg <= b_denormal;
      final_sign_1_r_sv2v_reg <= final_sign;
      do_sub_1_r_sv2v_reg <= do_sub;
      larger_exp_1_r_4_sv2v_reg <= larger_exp[4];
      larger_exp_1_r_3_sv2v_reg <= larger_exp[3];
      larger_exp_1_r_2_sv2v_reg <= larger_exp[2];
      larger_exp_1_r_1_sv2v_reg <= larger_exp[1];
      larger_exp_1_r_0_sv2v_reg <= larger_exp[0];
      smaller_exp_man_shifted_1_r_13_sv2v_reg <= smaller_exp_man_shifted[13];
      smaller_exp_man_shifted_1_r_12_sv2v_reg <= smaller_exp_man_shifted[12];
      smaller_exp_man_shifted_1_r_11_sv2v_reg <= smaller_exp_man_shifted[11];
      smaller_exp_man_shifted_1_r_10_sv2v_reg <= smaller_exp_man_shifted[10];
      smaller_exp_man_shifted_1_r_9_sv2v_reg <= smaller_exp_man_shifted[9];
      smaller_exp_man_shifted_1_r_8_sv2v_reg <= smaller_exp_man_shifted[8];
      smaller_exp_man_shifted_1_r_7_sv2v_reg <= smaller_exp_man_shifted[7];
      smaller_exp_man_shifted_1_r_6_sv2v_reg <= smaller_exp_man_shifted[6];
      smaller_exp_man_shifted_1_r_5_sv2v_reg <= smaller_exp_man_shifted[5];
      smaller_exp_man_shifted_1_r_4_sv2v_reg <= smaller_exp_man_shifted[4];
      smaller_exp_man_shifted_1_r_3_sv2v_reg <= smaller_exp_man_shifted[3];
      smaller_exp_man_shifted_1_r_2_sv2v_reg <= smaller_exp_man_shifted[2];
      smaller_exp_man_shifted_1_r_1_sv2v_reg <= smaller_exp_man_shifted[1];
      smaller_exp_man_shifted_1_r_0_sv2v_reg <= smaller_exp_man_shifted[0];
      larger_exp_man_padded_1_r_13_sv2v_reg <= 1'b1;
      larger_exp_man_padded_1_r_12_sv2v_reg <= larger_exp_man[9];
      larger_exp_man_padded_1_r_11_sv2v_reg <= larger_exp_man[8];
      larger_exp_man_padded_1_r_10_sv2v_reg <= larger_exp_man[7];
      larger_exp_man_padded_1_r_9_sv2v_reg <= larger_exp_man[6];
      larger_exp_man_padded_1_r_8_sv2v_reg <= larger_exp_man[5];
      larger_exp_man_padded_1_r_7_sv2v_reg <= larger_exp_man[4];
      larger_exp_man_padded_1_r_6_sv2v_reg <= larger_exp_man[3];
      larger_exp_man_padded_1_r_5_sv2v_reg <= larger_exp_man[2];
      larger_exp_man_padded_1_r_4_sv2v_reg <= larger_exp_man[1];
      larger_exp_man_padded_1_r_3_sv2v_reg <= larger_exp_man[0];
      larger_exp_man_padded_1_r_2_sv2v_reg <= 1'b0;
      larger_exp_man_padded_1_r_1_sv2v_reg <= 1'b0;
      larger_exp_man_padded_1_r_0_sv2v_reg <= 1'b0;
      a_sig_nan_1_r_sv2v_reg <= a_sig_nan;
      b_sig_nan_1_r_sv2v_reg <= b_sig_nan;
      a_nan_1_r_sv2v_reg <= a_nan;
      b_nan_1_r_sv2v_reg <= b_nan;
      a_infty_1_r_sv2v_reg <= a_infty;
      b_infty_1_r_sv2v_reg <= b_infty;
    end 
    if(reset_i) begin
      v_1_r_sv2v_reg <= 1'b0;
    end else if(N25) begin
      v_1_r_sv2v_reg <= v_i;
    end 
    if(N63) begin
      a_denormal_2_r_sv2v_reg <= a_denormal_1_r;
      b_denormal_2_r_sv2v_reg <= b_denormal_1_r;
      larger_exp_2_r_4_sv2v_reg <= larger_exp_1_r[4];
      larger_exp_2_r_3_sv2v_reg <= larger_exp_1_r[3];
      larger_exp_2_r_2_sv2v_reg <= larger_exp_1_r[2];
      larger_exp_2_r_1_sv2v_reg <= larger_exp_1_r[1];
      larger_exp_2_r_0_sv2v_reg <= larger_exp_1_r[0];
      adder_output_2_r_14_sv2v_reg <= adder_output[14];
      adder_output_2_r_13_sv2v_reg <= adder_output[13];
      adder_output_2_r_12_sv2v_reg <= adder_output[12];
      adder_output_2_r_11_sv2v_reg <= adder_output[11];
      adder_output_2_r_10_sv2v_reg <= adder_output[10];
      adder_output_2_r_9_sv2v_reg <= adder_output[9];
      adder_output_2_r_8_sv2v_reg <= adder_output[8];
      adder_output_2_r_7_sv2v_reg <= adder_output[7];
      adder_output_2_r_6_sv2v_reg <= adder_output[6];
      adder_output_2_r_5_sv2v_reg <= adder_output[5];
      adder_output_2_r_4_sv2v_reg <= adder_output[4];
      adder_output_2_r_3_sv2v_reg <= adder_output[3];
      adder_output_2_r_2_sv2v_reg <= adder_output[2];
      adder_output_2_r_1_sv2v_reg <= adder_output[1];
      adder_output_2_r_0_sv2v_reg <= adder_output[0];
      final_sign_2_r_sv2v_reg <= final_sign_1_r;
      do_sub_2_r_sv2v_reg <= do_sub_1_r;
      a_sig_nan_2_r_sv2v_reg <= a_sig_nan_1_r;
      b_sig_nan_2_r_sv2v_reg <= b_sig_nan_1_r;
      a_nan_2_r_sv2v_reg <= a_nan_1_r;
      b_nan_2_r_sv2v_reg <= b_nan_1_r;
      a_infty_2_r_sv2v_reg <= a_infty_1_r;
      b_infty_2_r_sv2v_reg <= b_infty_1_r;
    end 
    if(reset_i) begin
      v_2_r_sv2v_reg <= 1'b0;
    end else if(N62) begin
      v_2_r_sv2v_reg <= v_1_r;
    end 
    if(N84) begin
      adjusted_exp_cout_3_r_sv2v_reg <= adjusted_exp_cout;
      final_sign_3_r_sv2v_reg <= final_sign_2_r;
      pre_roundup_3_r_14_sv2v_reg <= adjusted_exp[4];
      pre_roundup_3_r_13_sv2v_reg <= adjusted_exp[3];
      pre_roundup_3_r_12_sv2v_reg <= adjusted_exp[2];
      pre_roundup_3_r_11_sv2v_reg <= adjusted_exp[1];
      pre_roundup_3_r_10_sv2v_reg <= adjusted_exp[0];
      pre_roundup_3_r_9_sv2v_reg <= shifted_adder_output[13];
      pre_roundup_3_r_8_sv2v_reg <= shifted_adder_output[12];
      pre_roundup_3_r_7_sv2v_reg <= shifted_adder_output[11];
      pre_roundup_3_r_6_sv2v_reg <= shifted_adder_output[10];
      pre_roundup_3_r_5_sv2v_reg <= shifted_adder_output[9];
      pre_roundup_3_r_4_sv2v_reg <= shifted_adder_output[8];
      pre_roundup_3_r_3_sv2v_reg <= shifted_adder_output[7];
      pre_roundup_3_r_2_sv2v_reg <= shifted_adder_output[6];
      pre_roundup_3_r_1_sv2v_reg <= shifted_adder_output[5];
      pre_roundup_3_r_0_sv2v_reg <= shifted_adder_output[4];
      round_up_3_r_sv2v_reg <= round_up;
      all_zero_3_r_sv2v_reg <= all_zero;
      a_sig_nan_3_r_sv2v_reg <= a_sig_nan_2_r;
      b_sig_nan_3_r_sv2v_reg <= b_sig_nan_2_r;
      a_nan_3_r_sv2v_reg <= a_nan_2_r;
      b_nan_3_r_sv2v_reg <= b_nan_2_r;
      a_infty_3_r_sv2v_reg <= a_infty_2_r;
      b_infty_3_r_sv2v_reg <= b_infty_2_r;
      do_sub_3_r_sv2v_reg <= do_sub_2_r;
      a_denormal_3_r_sv2v_reg <= a_denormal_2_r;
      b_denormal_3_r_sv2v_reg <= b_denormal_2_r;
    end 
    if(reset_i) begin
      v_o_sv2v_reg <= 1'b0;
    end else if(N83) begin
      v_o_sv2v_reg <= v_2_r;
    end 
  end


endmodule

