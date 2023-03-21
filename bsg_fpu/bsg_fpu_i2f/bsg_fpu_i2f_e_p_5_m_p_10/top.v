

module top
(
  clk_i,
  reset_i,
  en_i,
  v_i,
  signed_i,
  a_i,
  ready_o,
  v_o,
  z_o,
  yumi_i
);

  input [15:0] a_i;
  output [15:0] z_o;
  input clk_i;
  input reset_i;
  input en_i;
  input v_i;
  input signed_i;
  input yumi_i;
  output ready_o;
  output v_o;

  bsg_fpu_i2f
  wrapper
  (
    .a_i(a_i),
    .z_o(z_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .en_i(en_i),
    .v_i(v_i),
    .signed_i(signed_i),
    .yumi_i(yumi_i),
    .ready_o(ready_o),
    .v_o(v_o)
  );


endmodule



module bsg_abs_width_p16
(
  a_i,
  o
);

  input [15:0] a_i;
  output [15:0] o;
  wire [15:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33;
  assign { N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17 } = { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } - a_i;
  assign { N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18 } = { N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17 } + 1'b1;
  assign o = (N0)? { N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18 } : 
             (N1)? a_i : 1'b0;
  assign N0 = a_i[15];
  assign N1 = ~a_i[15];

endmodule



module bsg_scan_width_p16_or_p1_lo_to_hi_p1
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
  assign t_1__15_ = i[0] | 1'b0;
  assign t_1__14_ = i[1] | i[0];
  assign t_1__13_ = i[2] | i[1];
  assign t_1__12_ = i[3] | i[2];
  assign t_1__11_ = i[4] | i[3];
  assign t_1__10_ = i[5] | i[4];
  assign t_1__9_ = i[6] | i[5];
  assign t_1__8_ = i[7] | i[6];
  assign t_1__7_ = i[8] | i[7];
  assign t_1__6_ = i[9] | i[8];
  assign t_1__5_ = i[10] | i[9];
  assign t_1__4_ = i[11] | i[10];
  assign t_1__3_ = i[12] | i[11];
  assign t_1__2_ = i[13] | i[12];
  assign t_1__1_ = i[14] | i[13];
  assign t_1__0_ = i[15] | i[14];
  assign t_2__15_ = t_1__15_ | 1'b0;
  assign t_2__14_ = t_1__14_ | 1'b0;
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
  assign t_3__15_ = t_2__15_ | 1'b0;
  assign t_3__14_ = t_2__14_ | 1'b0;
  assign t_3__13_ = t_2__13_ | 1'b0;
  assign t_3__12_ = t_2__12_ | 1'b0;
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
  assign o[0] = t_3__15_ | 1'b0;
  assign o[1] = t_3__14_ | 1'b0;
  assign o[2] = t_3__13_ | 1'b0;
  assign o[3] = t_3__12_ | 1'b0;
  assign o[4] = t_3__11_ | 1'b0;
  assign o[5] = t_3__10_ | 1'b0;
  assign o[6] = t_3__9_ | 1'b0;
  assign o[7] = t_3__8_ | 1'b0;
  assign o[8] = t_3__7_ | t_3__15_;
  assign o[9] = t_3__6_ | t_3__14_;
  assign o[10] = t_3__5_ | t_3__13_;
  assign o[11] = t_3__4_ | t_3__12_;
  assign o[12] = t_3__3_ | t_3__11_;
  assign o[13] = t_3__2_ | t_3__10_;
  assign o[14] = t_3__1_ | t_3__9_;
  assign o[15] = t_3__0_ | t_3__8_;

endmodule



module bsg_priority_encode_one_hot_out_width_p16_lo_to_hi_p1
(
  i,
  o,
  v_o
);

  input [15:0] i;
  output [15:0] o;
  output v_o;
  wire [15:0] o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14;
  wire [14:1] scan_lo;

  bsg_scan_width_p16_or_p1_lo_to_hi_p1
  \nw1.scan 
  (
    .i(i),
    .o({ v_o, scan_lo, o[0:0] })
  );

  assign o[15] = v_o & N0;
  assign N0 = ~scan_lo[14];
  assign o[14] = scan_lo[14] & N1;
  assign N1 = ~scan_lo[13];
  assign o[13] = scan_lo[13] & N2;
  assign N2 = ~scan_lo[12];
  assign o[12] = scan_lo[12] & N3;
  assign N3 = ~scan_lo[11];
  assign o[11] = scan_lo[11] & N4;
  assign N4 = ~scan_lo[10];
  assign o[10] = scan_lo[10] & N5;
  assign N5 = ~scan_lo[9];
  assign o[9] = scan_lo[9] & N6;
  assign N6 = ~scan_lo[8];
  assign o[8] = scan_lo[8] & N7;
  assign N7 = ~scan_lo[7];
  assign o[7] = scan_lo[7] & N8;
  assign N8 = ~scan_lo[6];
  assign o[6] = scan_lo[6] & N9;
  assign N9 = ~scan_lo[5];
  assign o[5] = scan_lo[5] & N10;
  assign N10 = ~scan_lo[4];
  assign o[4] = scan_lo[4] & N11;
  assign N11 = ~scan_lo[3];
  assign o[3] = scan_lo[3] & N12;
  assign N12 = ~scan_lo[2];
  assign o[2] = scan_lo[2] & N13;
  assign N13 = ~scan_lo[1];
  assign o[1] = scan_lo[1] & N14;
  assign N14 = ~o[0];

endmodule



module bsg_encode_one_hot_width_p16_lo_to_hi_p1
(
  i,
  addr_o,
  v_o
);

  input [15:0] i;
  output [3:0] addr_o;
  output v_o;
  wire [3:0] addr_o;
  wire v_o,v_3__0_,v_2__12_,v_2__8_,v_2__4_,v_2__0_,v_1__14_,v_1__12_,v_1__10_,v_1__8_,
  v_1__6_,v_1__4_,v_1__2_,v_1__0_,addr_3__9_,addr_3__8_,addr_3__1_,addr_3__0_,
  addr_2__12_,addr_2__8_,addr_2__4_,addr_2__0_;
  assign v_1__0_ = i[1] | i[0];
  assign v_1__2_ = i[3] | i[2];
  assign v_1__4_ = i[5] | i[4];
  assign v_1__6_ = i[7] | i[6];
  assign v_1__8_ = i[9] | i[8];
  assign v_1__10_ = i[11] | i[10];
  assign v_1__12_ = i[13] | i[12];
  assign v_1__14_ = i[15] | i[14];
  assign v_2__0_ = v_1__2_ | v_1__0_;
  assign addr_2__0_ = i[1] | i[3];
  assign v_2__4_ = v_1__6_ | v_1__4_;
  assign addr_2__4_ = i[5] | i[7];
  assign v_2__8_ = v_1__10_ | v_1__8_;
  assign addr_2__8_ = i[9] | i[11];
  assign v_2__12_ = v_1__14_ | v_1__12_;
  assign addr_2__12_ = i[13] | i[15];
  assign v_3__0_ = v_2__4_ | v_2__0_;
  assign addr_3__1_ = v_1__2_ | v_1__6_;
  assign addr_3__0_ = addr_2__0_ | addr_2__4_;
  assign addr_o[3] = v_2__12_ | v_2__8_;
  assign addr_3__9_ = v_1__10_ | v_1__14_;
  assign addr_3__8_ = addr_2__8_ | addr_2__12_;
  assign v_o = addr_o[3] | v_3__0_;
  assign addr_o[2] = v_2__4_ | v_2__12_;
  assign addr_o[1] = addr_3__1_ | addr_3__9_;
  assign addr_o[0] = addr_3__0_ | addr_3__8_;

endmodule



module bsg_priority_encode_width_p16_lo_to_hi_p1
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
  wire [15:0] enc_lo;

  bsg_priority_encode_one_hot_out_width_p16_lo_to_hi_p1
  a
  (
    .i(i),
    .o(enc_lo),
    .v_o(v_o)
  );


  bsg_encode_one_hot_width_p16_lo_to_hi_p1
  b
  (
    .i(enc_lo),
    .addr_o(addr_o)
  );


endmodule



module bsg_fpu_clz_width_p16
(
  i,
  num_zero_o
);

  input [15:0] i;
  output [3:0] num_zero_o;
  wire [3:0] num_zero_o;

  bsg_priority_encode_width_p16_lo_to_hi_p1
  pe0
  (
    .i({ i[0:0], i[1:1], i[2:2], i[3:3], i[4:4], i[5:5], i[6:6], i[7:7], i[8:8], i[9:9], i[10:10], i[11:11], i[12:12], i[13:13], i[14:14], i[15:15] }),
    .addr_o(num_zero_o)
  );


endmodule



module bsg_fpu_i2f
(
  clk_i,
  reset_i,
  en_i,
  v_i,
  signed_i,
  a_i,
  ready_o,
  v_o,
  z_o,
  yumi_i
);

  input [15:0] a_i;
  output [15:0] z_o;
  input clk_i;
  input reset_i;
  input en_i;
  input v_i;
  input signed_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [15:0] z_o,abs,chosen_abs;
  wire ready_o,v_o,N0,N1,N3,N4,N5,N6,stall,N7,sign,all_zero,N8,N9,N10,sign_1_r,
  all_zero_1_r,N11,N12,N13,N14,sticky,round_up,N15,N2,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35;
  wire [3:0] shamt,shamt_1_r;
  wire [14:0] chosen_abs_1_r,shifted,rounded;
  wire [4:0] exp;
  reg sign_1_r_sv2v_reg,v_o_sv2v_reg,all_zero_1_r_sv2v_reg,chosen_abs_1_r_14_sv2v_reg,
  chosen_abs_1_r_13_sv2v_reg,chosen_abs_1_r_12_sv2v_reg,
  chosen_abs_1_r_11_sv2v_reg,chosen_abs_1_r_10_sv2v_reg,chosen_abs_1_r_9_sv2v_reg,chosen_abs_1_r_8_sv2v_reg,
  chosen_abs_1_r_7_sv2v_reg,chosen_abs_1_r_6_sv2v_reg,chosen_abs_1_r_5_sv2v_reg,
  chosen_abs_1_r_4_sv2v_reg,chosen_abs_1_r_3_sv2v_reg,chosen_abs_1_r_2_sv2v_reg,
  chosen_abs_1_r_1_sv2v_reg,chosen_abs_1_r_0_sv2v_reg,shamt_1_r_3_sv2v_reg,
  shamt_1_r_2_sv2v_reg,shamt_1_r_1_sv2v_reg,shamt_1_r_0_sv2v_reg;
  assign sign_1_r = sign_1_r_sv2v_reg;
  assign v_o = v_o_sv2v_reg;
  assign all_zero_1_r = all_zero_1_r_sv2v_reg;
  assign chosen_abs_1_r[14] = chosen_abs_1_r_14_sv2v_reg;
  assign chosen_abs_1_r[13] = chosen_abs_1_r_13_sv2v_reg;
  assign chosen_abs_1_r[12] = chosen_abs_1_r_12_sv2v_reg;
  assign chosen_abs_1_r[11] = chosen_abs_1_r_11_sv2v_reg;
  assign chosen_abs_1_r[10] = chosen_abs_1_r_10_sv2v_reg;
  assign chosen_abs_1_r[9] = chosen_abs_1_r_9_sv2v_reg;
  assign chosen_abs_1_r[8] = chosen_abs_1_r_8_sv2v_reg;
  assign chosen_abs_1_r[7] = chosen_abs_1_r_7_sv2v_reg;
  assign chosen_abs_1_r[6] = chosen_abs_1_r_6_sv2v_reg;
  assign chosen_abs_1_r[5] = chosen_abs_1_r_5_sv2v_reg;
  assign chosen_abs_1_r[4] = chosen_abs_1_r_4_sv2v_reg;
  assign chosen_abs_1_r[3] = chosen_abs_1_r_3_sv2v_reg;
  assign chosen_abs_1_r[2] = chosen_abs_1_r_2_sv2v_reg;
  assign chosen_abs_1_r[1] = chosen_abs_1_r_1_sv2v_reg;
  assign chosen_abs_1_r[0] = chosen_abs_1_r_0_sv2v_reg;
  assign shamt_1_r[3] = shamt_1_r_3_sv2v_reg;
  assign shamt_1_r[2] = shamt_1_r_2_sv2v_reg;
  assign shamt_1_r[1] = shamt_1_r_1_sv2v_reg;
  assign shamt_1_r[0] = shamt_1_r_0_sv2v_reg;

  bsg_abs_width_p16
  abs0
  (
    .a_i(a_i),
    .o(abs)
  );


  bsg_fpu_clz_width_p16
  clz
  (
    .i(chosen_abs),
    .num_zero_o(shamt)
  );

  assign shifted = chosen_abs_1_r << shamt_1_r;
  assign exp = { 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 } - shamt_1_r;
  assign rounded = { exp, shifted[14:5] } + round_up;
  assign sign = (N0)? a_i[15] : 
                (N1)? 1'b0 : 1'b0;
  assign N0 = signed_i;
  assign N1 = N7;
  assign chosen_abs = (N0)? abs : 
                      (N1)? a_i : 1'b0;
  assign N11 = (N3)? 1'b1 : 
               (N2)? 1'b0 : 1'b0;
  assign N3 = N8;
  assign N12 = (N4)? 1'b0 : 
               (N14)? v_i : 
               (N10)? 1'b0 : 1'b0;
  assign N4 = reset_i;
  assign z_o = (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N6)? { sign_1_r, rounded } : 1'b0;
  assign N5 = all_zero_1_r;
  assign N6 = N15;
  assign stall = v_o & N16;
  assign N16 = ~yumi_i;
  assign ready_o = N17 & en_i;
  assign N17 = ~stall;
  assign N7 = ~signed_i;
  assign all_zero = ~N32;
  assign N32 = N31 | chosen_abs[0];
  assign N31 = N30 | chosen_abs[1];
  assign N30 = N29 | chosen_abs[2];
  assign N29 = N28 | chosen_abs[3];
  assign N28 = N27 | chosen_abs[4];
  assign N27 = N26 | chosen_abs[5];
  assign N26 = N25 | chosen_abs[6];
  assign N25 = N24 | chosen_abs[7];
  assign N24 = N23 | chosen_abs[8];
  assign N23 = N22 | chosen_abs[9];
  assign N22 = N21 | chosen_abs[10];
  assign N21 = N20 | chosen_abs[11];
  assign N20 = N19 | chosen_abs[12];
  assign N19 = N18 | chosen_abs[13];
  assign N18 = chosen_abs[15] | chosen_abs[14];
  assign N8 = N17 & en_i;
  assign N9 = N8 | reset_i;
  assign N10 = ~N9;
  assign N13 = ~reset_i;
  assign N14 = N8 & N13;
  assign sticky = N34 | shifted[0];
  assign N34 = N33 | shifted[1];
  assign N33 = shifted[3] | shifted[2];
  assign round_up = shifted[4] & N35;
  assign N35 = shifted[5] | sticky;
  assign N15 = ~all_zero_1_r;
  assign N2 = ~N8;

  always @(posedge clk_i) begin
    if(N12) begin
      sign_1_r_sv2v_reg <= sign;
      all_zero_1_r_sv2v_reg <= all_zero;
      chosen_abs_1_r_14_sv2v_reg <= chosen_abs[14];
      chosen_abs_1_r_13_sv2v_reg <= chosen_abs[13];
      chosen_abs_1_r_12_sv2v_reg <= chosen_abs[12];
      chosen_abs_1_r_11_sv2v_reg <= chosen_abs[11];
      chosen_abs_1_r_10_sv2v_reg <= chosen_abs[10];
      chosen_abs_1_r_9_sv2v_reg <= chosen_abs[9];
      chosen_abs_1_r_8_sv2v_reg <= chosen_abs[8];
      chosen_abs_1_r_7_sv2v_reg <= chosen_abs[7];
      chosen_abs_1_r_6_sv2v_reg <= chosen_abs[6];
      chosen_abs_1_r_5_sv2v_reg <= chosen_abs[5];
      chosen_abs_1_r_4_sv2v_reg <= chosen_abs[4];
      chosen_abs_1_r_3_sv2v_reg <= chosen_abs[3];
      chosen_abs_1_r_2_sv2v_reg <= chosen_abs[2];
      chosen_abs_1_r_1_sv2v_reg <= chosen_abs[1];
      chosen_abs_1_r_0_sv2v_reg <= chosen_abs[0];
      shamt_1_r_3_sv2v_reg <= shamt[3];
      shamt_1_r_2_sv2v_reg <= shamt[2];
      shamt_1_r_1_sv2v_reg <= shamt[1];
      shamt_1_r_0_sv2v_reg <= shamt[0];
    end 
    if(reset_i) begin
      v_o_sv2v_reg <= 1'b0;
    end else if(N11) begin
      v_o_sv2v_reg <= v_i;
    end 
  end


endmodule

