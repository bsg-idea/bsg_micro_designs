

module top
(
  clk_i,
  ready_i,
  unlock_i,
  reqs_i,
  grants_o
);

  input [31:0] reqs_i;
  output [31:0] grants_o;
  input clk_i;
  input ready_i;
  input unlock_i;

  bsg_locking_arb_fixed
  wrapper
  (
    .reqs_i(reqs_i),
    .grants_o(grants_o),
    .clk_i(clk_i),
    .ready_i(ready_i),
    .unlock_i(unlock_i)
  );


endmodule



module bsg_dff_reset_en_width_p32
(
  clk_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input en_i;
  wire [31:0] data_o;
  wire N0,N1,N2;
  reg data_o_31_sv2v_reg,data_o_30_sv2v_reg,data_o_29_sv2v_reg,data_o_28_sv2v_reg,
  data_o_27_sv2v_reg,data_o_26_sv2v_reg,data_o_25_sv2v_reg,data_o_24_sv2v_reg,
  data_o_23_sv2v_reg,data_o_22_sv2v_reg,data_o_21_sv2v_reg,data_o_20_sv2v_reg,
  data_o_19_sv2v_reg,data_o_18_sv2v_reg,data_o_17_sv2v_reg,data_o_16_sv2v_reg,
  data_o_15_sv2v_reg,data_o_14_sv2v_reg,data_o_13_sv2v_reg,data_o_12_sv2v_reg,data_o_11_sv2v_reg,
  data_o_10_sv2v_reg,data_o_9_sv2v_reg,data_o_8_sv2v_reg,data_o_7_sv2v_reg,
  data_o_6_sv2v_reg,data_o_5_sv2v_reg,data_o_4_sv2v_reg,data_o_3_sv2v_reg,
  data_o_2_sv2v_reg,data_o_1_sv2v_reg,data_o_0_sv2v_reg;
  assign data_o[31] = data_o_31_sv2v_reg;
  assign data_o[30] = data_o_30_sv2v_reg;
  assign data_o[29] = data_o_29_sv2v_reg;
  assign data_o[28] = data_o_28_sv2v_reg;
  assign data_o[27] = data_o_27_sv2v_reg;
  assign data_o[26] = data_o_26_sv2v_reg;
  assign data_o[25] = data_o_25_sv2v_reg;
  assign data_o[24] = data_o_24_sv2v_reg;
  assign data_o[23] = data_o_23_sv2v_reg;
  assign data_o[22] = data_o_22_sv2v_reg;
  assign data_o[21] = data_o_21_sv2v_reg;
  assign data_o[20] = data_o_20_sv2v_reg;
  assign data_o[19] = data_o_19_sv2v_reg;
  assign data_o[18] = data_o_18_sv2v_reg;
  assign data_o[17] = data_o_17_sv2v_reg;
  assign data_o[16] = data_o_16_sv2v_reg;
  assign data_o[15] = data_o_15_sv2v_reg;
  assign data_o[14] = data_o_14_sv2v_reg;
  assign data_o[13] = data_o_13_sv2v_reg;
  assign data_o[12] = data_o_12_sv2v_reg;
  assign data_o[11] = data_o_11_sv2v_reg;
  assign data_o[10] = data_o_10_sv2v_reg;
  assign data_o[9] = data_o_9_sv2v_reg;
  assign data_o[8] = data_o_8_sv2v_reg;
  assign data_o[7] = data_o_7_sv2v_reg;
  assign data_o[6] = data_o_6_sv2v_reg;
  assign data_o[5] = data_o_5_sv2v_reg;
  assign data_o[4] = data_o_4_sv2v_reg;
  assign data_o[3] = data_o_3_sv2v_reg;
  assign data_o[2] = data_o_2_sv2v_reg;
  assign data_o[1] = data_o_1_sv2v_reg;
  assign data_o[0] = data_o_0_sv2v_reg;
  assign N2 = (N0)? 1'b1 : 
              (N1)? 1'b0 : 1'b0;
  assign N0 = en_i;
  assign N1 = ~en_i;

  always @(posedge clk_i) begin
    if(reset_i) begin
      data_o_31_sv2v_reg <= 1'b0;
      data_o_30_sv2v_reg <= 1'b0;
      data_o_29_sv2v_reg <= 1'b0;
      data_o_28_sv2v_reg <= 1'b0;
      data_o_27_sv2v_reg <= 1'b0;
      data_o_26_sv2v_reg <= 1'b0;
      data_o_25_sv2v_reg <= 1'b0;
      data_o_24_sv2v_reg <= 1'b0;
      data_o_23_sv2v_reg <= 1'b0;
      data_o_22_sv2v_reg <= 1'b0;
      data_o_21_sv2v_reg <= 1'b0;
      data_o_20_sv2v_reg <= 1'b0;
      data_o_19_sv2v_reg <= 1'b0;
      data_o_18_sv2v_reg <= 1'b0;
      data_o_17_sv2v_reg <= 1'b0;
      data_o_16_sv2v_reg <= 1'b0;
      data_o_15_sv2v_reg <= 1'b0;
      data_o_14_sv2v_reg <= 1'b0;
      data_o_13_sv2v_reg <= 1'b0;
      data_o_12_sv2v_reg <= 1'b0;
      data_o_11_sv2v_reg <= 1'b0;
      data_o_10_sv2v_reg <= 1'b0;
      data_o_9_sv2v_reg <= 1'b0;
      data_o_8_sv2v_reg <= 1'b0;
      data_o_7_sv2v_reg <= 1'b0;
      data_o_6_sv2v_reg <= 1'b0;
      data_o_5_sv2v_reg <= 1'b0;
      data_o_4_sv2v_reg <= 1'b0;
      data_o_3_sv2v_reg <= 1'b0;
      data_o_2_sv2v_reg <= 1'b0;
      data_o_1_sv2v_reg <= 1'b0;
      data_o_0_sv2v_reg <= 1'b0;
    end else if(N2) begin
      data_o_31_sv2v_reg <= data_i[31];
      data_o_30_sv2v_reg <= data_i[30];
      data_o_29_sv2v_reg <= data_i[29];
      data_o_28_sv2v_reg <= data_i[28];
      data_o_27_sv2v_reg <= data_i[27];
      data_o_26_sv2v_reg <= data_i[26];
      data_o_25_sv2v_reg <= data_i[25];
      data_o_24_sv2v_reg <= data_i[24];
      data_o_23_sv2v_reg <= data_i[23];
      data_o_22_sv2v_reg <= data_i[22];
      data_o_21_sv2v_reg <= data_i[21];
      data_o_20_sv2v_reg <= data_i[20];
      data_o_19_sv2v_reg <= data_i[19];
      data_o_18_sv2v_reg <= data_i[18];
      data_o_17_sv2v_reg <= data_i[17];
      data_o_16_sv2v_reg <= data_i[16];
      data_o_15_sv2v_reg <= data_i[15];
      data_o_14_sv2v_reg <= data_i[14];
      data_o_13_sv2v_reg <= data_i[13];
      data_o_12_sv2v_reg <= data_i[12];
      data_o_11_sv2v_reg <= data_i[11];
      data_o_10_sv2v_reg <= data_i[10];
      data_o_9_sv2v_reg <= data_i[9];
      data_o_8_sv2v_reg <= data_i[8];
      data_o_7_sv2v_reg <= data_i[7];
      data_o_6_sv2v_reg <= data_i[6];
      data_o_5_sv2v_reg <= data_i[5];
      data_o_4_sv2v_reg <= data_i[4];
      data_o_3_sv2v_reg <= data_i[3];
      data_o_2_sv2v_reg <= data_i[2];
      data_o_1_sv2v_reg <= data_i[1];
      data_o_0_sv2v_reg <= data_i[0];
    end 
  end


endmodule



module bsg_scan_width_p32_or_p1_lo_to_hi_p0
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
  assign t_1__31_ = i[31] | 1'b0;
  assign t_1__30_ = i[30] | i[31];
  assign t_1__29_ = i[29] | i[30];
  assign t_1__28_ = i[28] | i[29];
  assign t_1__27_ = i[27] | i[28];
  assign t_1__26_ = i[26] | i[27];
  assign t_1__25_ = i[25] | i[26];
  assign t_1__24_ = i[24] | i[25];
  assign t_1__23_ = i[23] | i[24];
  assign t_1__22_ = i[22] | i[23];
  assign t_1__21_ = i[21] | i[22];
  assign t_1__20_ = i[20] | i[21];
  assign t_1__19_ = i[19] | i[20];
  assign t_1__18_ = i[18] | i[19];
  assign t_1__17_ = i[17] | i[18];
  assign t_1__16_ = i[16] | i[17];
  assign t_1__15_ = i[15] | i[16];
  assign t_1__14_ = i[14] | i[15];
  assign t_1__13_ = i[13] | i[14];
  assign t_1__12_ = i[12] | i[13];
  assign t_1__11_ = i[11] | i[12];
  assign t_1__10_ = i[10] | i[11];
  assign t_1__9_ = i[9] | i[10];
  assign t_1__8_ = i[8] | i[9];
  assign t_1__7_ = i[7] | i[8];
  assign t_1__6_ = i[6] | i[7];
  assign t_1__5_ = i[5] | i[6];
  assign t_1__4_ = i[4] | i[5];
  assign t_1__3_ = i[3] | i[4];
  assign t_1__2_ = i[2] | i[3];
  assign t_1__1_ = i[1] | i[2];
  assign t_1__0_ = i[0] | i[1];
  assign t_2__31_ = t_1__31_ | 1'b0;
  assign t_2__30_ = t_1__30_ | 1'b0;
  assign t_2__29_ = t_1__29_ | t_1__31_;
  assign t_2__28_ = t_1__28_ | t_1__30_;
  assign t_2__27_ = t_1__27_ | t_1__29_;
  assign t_2__26_ = t_1__26_ | t_1__28_;
  assign t_2__25_ = t_1__25_ | t_1__27_;
  assign t_2__24_ = t_1__24_ | t_1__26_;
  assign t_2__23_ = t_1__23_ | t_1__25_;
  assign t_2__22_ = t_1__22_ | t_1__24_;
  assign t_2__21_ = t_1__21_ | t_1__23_;
  assign t_2__20_ = t_1__20_ | t_1__22_;
  assign t_2__19_ = t_1__19_ | t_1__21_;
  assign t_2__18_ = t_1__18_ | t_1__20_;
  assign t_2__17_ = t_1__17_ | t_1__19_;
  assign t_2__16_ = t_1__16_ | t_1__18_;
  assign t_2__15_ = t_1__15_ | t_1__17_;
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
  assign t_3__31_ = t_2__31_ | 1'b0;
  assign t_3__30_ = t_2__30_ | 1'b0;
  assign t_3__29_ = t_2__29_ | 1'b0;
  assign t_3__28_ = t_2__28_ | 1'b0;
  assign t_3__27_ = t_2__27_ | t_2__31_;
  assign t_3__26_ = t_2__26_ | t_2__30_;
  assign t_3__25_ = t_2__25_ | t_2__29_;
  assign t_3__24_ = t_2__24_ | t_2__28_;
  assign t_3__23_ = t_2__23_ | t_2__27_;
  assign t_3__22_ = t_2__22_ | t_2__26_;
  assign t_3__21_ = t_2__21_ | t_2__25_;
  assign t_3__20_ = t_2__20_ | t_2__24_;
  assign t_3__19_ = t_2__19_ | t_2__23_;
  assign t_3__18_ = t_2__18_ | t_2__22_;
  assign t_3__17_ = t_2__17_ | t_2__21_;
  assign t_3__16_ = t_2__16_ | t_2__20_;
  assign t_3__15_ = t_2__15_ | t_2__19_;
  assign t_3__14_ = t_2__14_ | t_2__18_;
  assign t_3__13_ = t_2__13_ | t_2__17_;
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
  assign t_4__31_ = t_3__31_ | 1'b0;
  assign t_4__30_ = t_3__30_ | 1'b0;
  assign t_4__29_ = t_3__29_ | 1'b0;
  assign t_4__28_ = t_3__28_ | 1'b0;
  assign t_4__27_ = t_3__27_ | 1'b0;
  assign t_4__26_ = t_3__26_ | 1'b0;
  assign t_4__25_ = t_3__25_ | 1'b0;
  assign t_4__24_ = t_3__24_ | 1'b0;
  assign t_4__23_ = t_3__23_ | t_3__31_;
  assign t_4__22_ = t_3__22_ | t_3__30_;
  assign t_4__21_ = t_3__21_ | t_3__29_;
  assign t_4__20_ = t_3__20_ | t_3__28_;
  assign t_4__19_ = t_3__19_ | t_3__27_;
  assign t_4__18_ = t_3__18_ | t_3__26_;
  assign t_4__17_ = t_3__17_ | t_3__25_;
  assign t_4__16_ = t_3__16_ | t_3__24_;
  assign t_4__15_ = t_3__15_ | t_3__23_;
  assign t_4__14_ = t_3__14_ | t_3__22_;
  assign t_4__13_ = t_3__13_ | t_3__21_;
  assign t_4__12_ = t_3__12_ | t_3__20_;
  assign t_4__11_ = t_3__11_ | t_3__19_;
  assign t_4__10_ = t_3__10_ | t_3__18_;
  assign t_4__9_ = t_3__9_ | t_3__17_;
  assign t_4__8_ = t_3__8_ | t_3__16_;
  assign t_4__7_ = t_3__7_ | t_3__15_;
  assign t_4__6_ = t_3__6_ | t_3__14_;
  assign t_4__5_ = t_3__5_ | t_3__13_;
  assign t_4__4_ = t_3__4_ | t_3__12_;
  assign t_4__3_ = t_3__3_ | t_3__11_;
  assign t_4__2_ = t_3__2_ | t_3__10_;
  assign t_4__1_ = t_3__1_ | t_3__9_;
  assign t_4__0_ = t_3__0_ | t_3__8_;
  assign o[31] = t_4__31_ | 1'b0;
  assign o[30] = t_4__30_ | 1'b0;
  assign o[29] = t_4__29_ | 1'b0;
  assign o[28] = t_4__28_ | 1'b0;
  assign o[27] = t_4__27_ | 1'b0;
  assign o[26] = t_4__26_ | 1'b0;
  assign o[25] = t_4__25_ | 1'b0;
  assign o[24] = t_4__24_ | 1'b0;
  assign o[23] = t_4__23_ | 1'b0;
  assign o[22] = t_4__22_ | 1'b0;
  assign o[21] = t_4__21_ | 1'b0;
  assign o[20] = t_4__20_ | 1'b0;
  assign o[19] = t_4__19_ | 1'b0;
  assign o[18] = t_4__18_ | 1'b0;
  assign o[17] = t_4__17_ | 1'b0;
  assign o[16] = t_4__16_ | 1'b0;
  assign o[15] = t_4__15_ | t_4__31_;
  assign o[14] = t_4__14_ | t_4__30_;
  assign o[13] = t_4__13_ | t_4__29_;
  assign o[12] = t_4__12_ | t_4__28_;
  assign o[11] = t_4__11_ | t_4__27_;
  assign o[10] = t_4__10_ | t_4__26_;
  assign o[9] = t_4__9_ | t_4__25_;
  assign o[8] = t_4__8_ | t_4__24_;
  assign o[7] = t_4__7_ | t_4__23_;
  assign o[6] = t_4__6_ | t_4__22_;
  assign o[5] = t_4__5_ | t_4__21_;
  assign o[4] = t_4__4_ | t_4__20_;
  assign o[3] = t_4__3_ | t_4__19_;
  assign o[2] = t_4__2_ | t_4__18_;
  assign o[1] = t_4__1_ | t_4__17_;
  assign o[0] = t_4__0_ | t_4__16_;

endmodule



module bsg_priority_encode_one_hot_out_width_p32_lo_to_hi_p0
(
  i,
  o
);

  input [31:0] i;
  output [31:0] o;
  wire [31:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30;
  wire [30:0] scan_lo;

  bsg_scan_width_p32_or_p1_lo_to_hi_p0
  \genblk1.scan 
  (
    .i(i),
    .o({ o[31:31], scan_lo })
  );

  assign o[30] = scan_lo[30] & N0;
  assign N0 = ~o[31];
  assign o[29] = scan_lo[29] & N1;
  assign N1 = ~scan_lo[30];
  assign o[28] = scan_lo[28] & N2;
  assign N2 = ~scan_lo[29];
  assign o[27] = scan_lo[27] & N3;
  assign N3 = ~scan_lo[28];
  assign o[26] = scan_lo[26] & N4;
  assign N4 = ~scan_lo[27];
  assign o[25] = scan_lo[25] & N5;
  assign N5 = ~scan_lo[26];
  assign o[24] = scan_lo[24] & N6;
  assign N6 = ~scan_lo[25];
  assign o[23] = scan_lo[23] & N7;
  assign N7 = ~scan_lo[24];
  assign o[22] = scan_lo[22] & N8;
  assign N8 = ~scan_lo[23];
  assign o[21] = scan_lo[21] & N9;
  assign N9 = ~scan_lo[22];
  assign o[20] = scan_lo[20] & N10;
  assign N10 = ~scan_lo[21];
  assign o[19] = scan_lo[19] & N11;
  assign N11 = ~scan_lo[20];
  assign o[18] = scan_lo[18] & N12;
  assign N12 = ~scan_lo[19];
  assign o[17] = scan_lo[17] & N13;
  assign N13 = ~scan_lo[18];
  assign o[16] = scan_lo[16] & N14;
  assign N14 = ~scan_lo[17];
  assign o[15] = scan_lo[15] & N15;
  assign N15 = ~scan_lo[16];
  assign o[14] = scan_lo[14] & N16;
  assign N16 = ~scan_lo[15];
  assign o[13] = scan_lo[13] & N17;
  assign N17 = ~scan_lo[14];
  assign o[12] = scan_lo[12] & N18;
  assign N18 = ~scan_lo[13];
  assign o[11] = scan_lo[11] & N19;
  assign N19 = ~scan_lo[12];
  assign o[10] = scan_lo[10] & N20;
  assign N20 = ~scan_lo[11];
  assign o[9] = scan_lo[9] & N21;
  assign N21 = ~scan_lo[10];
  assign o[8] = scan_lo[8] & N22;
  assign N22 = ~scan_lo[9];
  assign o[7] = scan_lo[7] & N23;
  assign N23 = ~scan_lo[8];
  assign o[6] = scan_lo[6] & N24;
  assign N24 = ~scan_lo[7];
  assign o[5] = scan_lo[5] & N25;
  assign N25 = ~scan_lo[6];
  assign o[4] = scan_lo[4] & N26;
  assign N26 = ~scan_lo[5];
  assign o[3] = scan_lo[3] & N27;
  assign N27 = ~scan_lo[4];
  assign o[2] = scan_lo[2] & N28;
  assign N28 = ~scan_lo[3];
  assign o[1] = scan_lo[1] & N29;
  assign N29 = ~scan_lo[2];
  assign o[0] = scan_lo[0] & N30;
  assign N30 = ~scan_lo[1];

endmodule



module bsg_arb_fixed_inputs_p32_lo_to_hi_p0
(
  ready_i,
  reqs_i,
  grants_o
);

  input [31:0] reqs_i;
  output [31:0] grants_o;
  input ready_i;
  wire [31:0] grants_o,grants_unmasked_lo;

  bsg_priority_encode_one_hot_out_width_p32_lo_to_hi_p0
  enc
  (
    .i(reqs_i),
    .o(grants_unmasked_lo)
  );

  assign grants_o[31] = grants_unmasked_lo[31] & ready_i;
  assign grants_o[30] = grants_unmasked_lo[30] & ready_i;
  assign grants_o[29] = grants_unmasked_lo[29] & ready_i;
  assign grants_o[28] = grants_unmasked_lo[28] & ready_i;
  assign grants_o[27] = grants_unmasked_lo[27] & ready_i;
  assign grants_o[26] = grants_unmasked_lo[26] & ready_i;
  assign grants_o[25] = grants_unmasked_lo[25] & ready_i;
  assign grants_o[24] = grants_unmasked_lo[24] & ready_i;
  assign grants_o[23] = grants_unmasked_lo[23] & ready_i;
  assign grants_o[22] = grants_unmasked_lo[22] & ready_i;
  assign grants_o[21] = grants_unmasked_lo[21] & ready_i;
  assign grants_o[20] = grants_unmasked_lo[20] & ready_i;
  assign grants_o[19] = grants_unmasked_lo[19] & ready_i;
  assign grants_o[18] = grants_unmasked_lo[18] & ready_i;
  assign grants_o[17] = grants_unmasked_lo[17] & ready_i;
  assign grants_o[16] = grants_unmasked_lo[16] & ready_i;
  assign grants_o[15] = grants_unmasked_lo[15] & ready_i;
  assign grants_o[14] = grants_unmasked_lo[14] & ready_i;
  assign grants_o[13] = grants_unmasked_lo[13] & ready_i;
  assign grants_o[12] = grants_unmasked_lo[12] & ready_i;
  assign grants_o[11] = grants_unmasked_lo[11] & ready_i;
  assign grants_o[10] = grants_unmasked_lo[10] & ready_i;
  assign grants_o[9] = grants_unmasked_lo[9] & ready_i;
  assign grants_o[8] = grants_unmasked_lo[8] & ready_i;
  assign grants_o[7] = grants_unmasked_lo[7] & ready_i;
  assign grants_o[6] = grants_unmasked_lo[6] & ready_i;
  assign grants_o[5] = grants_unmasked_lo[5] & ready_i;
  assign grants_o[4] = grants_unmasked_lo[4] & ready_i;
  assign grants_o[3] = grants_unmasked_lo[3] & ready_i;
  assign grants_o[2] = grants_unmasked_lo[2] & ready_i;
  assign grants_o[1] = grants_unmasked_lo[1] & ready_i;
  assign grants_o[0] = grants_unmasked_lo[0] & ready_i;

endmodule



module bsg_locking_arb_fixed
(
  clk_i,
  ready_i,
  unlock_i,
  reqs_i,
  grants_o
);

  input [31:0] reqs_i;
  output [31:0] grants_o;
  input clk_i;
  input ready_i;
  input unlock_i;
  wire [31:0] grants_o,not_req_mask_r,req_mask_r;
  wire _0_net_,_1_net__31_,_1_net__30_,_1_net__29_,_1_net__28_,_1_net__27_,_1_net__26_,
  _1_net__25_,_1_net__24_,_1_net__23_,_1_net__22_,_1_net__21_,_1_net__20_,
  _1_net__19_,_1_net__18_,_1_net__17_,_1_net__16_,_1_net__15_,_1_net__14_,_1_net__13_,
  _1_net__12_,_1_net__11_,_1_net__10_,_1_net__9_,_1_net__8_,_1_net__7_,_1_net__6_,
  _1_net__5_,_1_net__4_,_1_net__3_,_1_net__2_,_1_net__1_,_1_net__0_,_2_net__31_,
  _2_net__30_,_2_net__29_,_2_net__28_,_2_net__27_,_2_net__26_,_2_net__25_,_2_net__24_,
  _2_net__23_,_2_net__22_,_2_net__21_,_2_net__20_,_2_net__19_,_2_net__18_,
  _2_net__17_,_2_net__16_,_2_net__15_,_2_net__14_,_2_net__13_,_2_net__12_,_2_net__11_,
  _2_net__10_,_2_net__9_,_2_net__8_,_2_net__7_,_2_net__6_,_2_net__5_,_2_net__4_,
  _2_net__3_,_2_net__2_,_2_net__1_,_2_net__0_,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,
  N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,
  N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,
  N53,N54,N55,N56,N57,N58,N59,N60,N61;

  bsg_dff_reset_en_width_p32
  req_words_reg
  (
    .clk_i(clk_i),
    .reset_i(unlock_i),
    .en_i(_0_net_),
    .data_i({ _1_net__31_, _1_net__30_, _1_net__29_, _1_net__28_, _1_net__27_, _1_net__26_, _1_net__25_, _1_net__24_, _1_net__23_, _1_net__22_, _1_net__21_, _1_net__20_, _1_net__19_, _1_net__18_, _1_net__17_, _1_net__16_, _1_net__15_, _1_net__14_, _1_net__13_, _1_net__12_, _1_net__11_, _1_net__10_, _1_net__9_, _1_net__8_, _1_net__7_, _1_net__6_, _1_net__5_, _1_net__4_, _1_net__3_, _1_net__2_, _1_net__1_, _1_net__0_ }),
    .data_o(not_req_mask_r)
  );


  bsg_arb_fixed_inputs_p32_lo_to_hi_p0
  fixed_arb
  (
    .ready_i(ready_i),
    .reqs_i({ _2_net__31_, _2_net__30_, _2_net__29_, _2_net__28_, _2_net__27_, _2_net__26_, _2_net__25_, _2_net__24_, _2_net__23_, _2_net__22_, _2_net__21_, _2_net__20_, _2_net__19_, _2_net__18_, _2_net__17_, _2_net__16_, _2_net__15_, _2_net__14_, _2_net__13_, _2_net__12_, _2_net__11_, _2_net__10_, _2_net__9_, _2_net__8_, _2_net__7_, _2_net__6_, _2_net__5_, _2_net__4_, _2_net__3_, _2_net__2_, _2_net__1_, _2_net__0_ }),
    .grants_o(grants_o)
  );

  assign _1_net__31_ = ~grants_o[31];
  assign _1_net__30_ = ~grants_o[30];
  assign _1_net__29_ = ~grants_o[29];
  assign _1_net__28_ = ~grants_o[28];
  assign _1_net__27_ = ~grants_o[27];
  assign _1_net__26_ = ~grants_o[26];
  assign _1_net__25_ = ~grants_o[25];
  assign _1_net__24_ = ~grants_o[24];
  assign _1_net__23_ = ~grants_o[23];
  assign _1_net__22_ = ~grants_o[22];
  assign _1_net__21_ = ~grants_o[21];
  assign _1_net__20_ = ~grants_o[20];
  assign _1_net__19_ = ~grants_o[19];
  assign _1_net__18_ = ~grants_o[18];
  assign _1_net__17_ = ~grants_o[17];
  assign _1_net__16_ = ~grants_o[16];
  assign _1_net__15_ = ~grants_o[15];
  assign _1_net__14_ = ~grants_o[14];
  assign _1_net__13_ = ~grants_o[13];
  assign _1_net__12_ = ~grants_o[12];
  assign _1_net__11_ = ~grants_o[11];
  assign _1_net__10_ = ~grants_o[10];
  assign _1_net__9_ = ~grants_o[9];
  assign _1_net__8_ = ~grants_o[8];
  assign _1_net__7_ = ~grants_o[7];
  assign _1_net__6_ = ~grants_o[6];
  assign _1_net__5_ = ~grants_o[5];
  assign _1_net__4_ = ~grants_o[4];
  assign _1_net__3_ = ~grants_o[3];
  assign _1_net__2_ = ~grants_o[2];
  assign _1_net__1_ = ~grants_o[1];
  assign _1_net__0_ = ~grants_o[0];
  assign _0_net_ = N30 & N61;
  assign N30 = N29 & req_mask_r[0];
  assign N29 = N28 & req_mask_r[1];
  assign N28 = N27 & req_mask_r[2];
  assign N27 = N26 & req_mask_r[3];
  assign N26 = N25 & req_mask_r[4];
  assign N25 = N24 & req_mask_r[5];
  assign N24 = N23 & req_mask_r[6];
  assign N23 = N22 & req_mask_r[7];
  assign N22 = N21 & req_mask_r[8];
  assign N21 = N20 & req_mask_r[9];
  assign N20 = N19 & req_mask_r[10];
  assign N19 = N18 & req_mask_r[11];
  assign N18 = N17 & req_mask_r[12];
  assign N17 = N16 & req_mask_r[13];
  assign N16 = N15 & req_mask_r[14];
  assign N15 = N14 & req_mask_r[15];
  assign N14 = N13 & req_mask_r[16];
  assign N13 = N12 & req_mask_r[17];
  assign N12 = N11 & req_mask_r[18];
  assign N11 = N10 & req_mask_r[19];
  assign N10 = N9 & req_mask_r[20];
  assign N9 = N8 & req_mask_r[21];
  assign N8 = N7 & req_mask_r[22];
  assign N7 = N6 & req_mask_r[23];
  assign N6 = N5 & req_mask_r[24];
  assign N5 = N4 & req_mask_r[25];
  assign N4 = N3 & req_mask_r[26];
  assign N3 = N2 & req_mask_r[27];
  assign N2 = N1 & req_mask_r[28];
  assign N1 = N0 & req_mask_r[29];
  assign N0 = req_mask_r[31] & req_mask_r[30];
  assign N61 = N60 | grants_o[0];
  assign N60 = N59 | grants_o[1];
  assign N59 = N58 | grants_o[2];
  assign N58 = N57 | grants_o[3];
  assign N57 = N56 | grants_o[4];
  assign N56 = N55 | grants_o[5];
  assign N55 = N54 | grants_o[6];
  assign N54 = N53 | grants_o[7];
  assign N53 = N52 | grants_o[8];
  assign N52 = N51 | grants_o[9];
  assign N51 = N50 | grants_o[10];
  assign N50 = N49 | grants_o[11];
  assign N49 = N48 | grants_o[12];
  assign N48 = N47 | grants_o[13];
  assign N47 = N46 | grants_o[14];
  assign N46 = N45 | grants_o[15];
  assign N45 = N44 | grants_o[16];
  assign N44 = N43 | grants_o[17];
  assign N43 = N42 | grants_o[18];
  assign N42 = N41 | grants_o[19];
  assign N41 = N40 | grants_o[20];
  assign N40 = N39 | grants_o[21];
  assign N39 = N38 | grants_o[22];
  assign N38 = N37 | grants_o[23];
  assign N37 = N36 | grants_o[24];
  assign N36 = N35 | grants_o[25];
  assign N35 = N34 | grants_o[26];
  assign N34 = N33 | grants_o[27];
  assign N33 = N32 | grants_o[28];
  assign N32 = N31 | grants_o[29];
  assign N31 = grants_o[31] | grants_o[30];
  assign req_mask_r[31] = ~not_req_mask_r[31];
  assign req_mask_r[30] = ~not_req_mask_r[30];
  assign req_mask_r[29] = ~not_req_mask_r[29];
  assign req_mask_r[28] = ~not_req_mask_r[28];
  assign req_mask_r[27] = ~not_req_mask_r[27];
  assign req_mask_r[26] = ~not_req_mask_r[26];
  assign req_mask_r[25] = ~not_req_mask_r[25];
  assign req_mask_r[24] = ~not_req_mask_r[24];
  assign req_mask_r[23] = ~not_req_mask_r[23];
  assign req_mask_r[22] = ~not_req_mask_r[22];
  assign req_mask_r[21] = ~not_req_mask_r[21];
  assign req_mask_r[20] = ~not_req_mask_r[20];
  assign req_mask_r[19] = ~not_req_mask_r[19];
  assign req_mask_r[18] = ~not_req_mask_r[18];
  assign req_mask_r[17] = ~not_req_mask_r[17];
  assign req_mask_r[16] = ~not_req_mask_r[16];
  assign req_mask_r[15] = ~not_req_mask_r[15];
  assign req_mask_r[14] = ~not_req_mask_r[14];
  assign req_mask_r[13] = ~not_req_mask_r[13];
  assign req_mask_r[12] = ~not_req_mask_r[12];
  assign req_mask_r[11] = ~not_req_mask_r[11];
  assign req_mask_r[10] = ~not_req_mask_r[10];
  assign req_mask_r[9] = ~not_req_mask_r[9];
  assign req_mask_r[8] = ~not_req_mask_r[8];
  assign req_mask_r[7] = ~not_req_mask_r[7];
  assign req_mask_r[6] = ~not_req_mask_r[6];
  assign req_mask_r[5] = ~not_req_mask_r[5];
  assign req_mask_r[4] = ~not_req_mask_r[4];
  assign req_mask_r[3] = ~not_req_mask_r[3];
  assign req_mask_r[2] = ~not_req_mask_r[2];
  assign req_mask_r[1] = ~not_req_mask_r[1];
  assign req_mask_r[0] = ~not_req_mask_r[0];
  assign _2_net__31_ = reqs_i[31] & req_mask_r[31];
  assign _2_net__30_ = reqs_i[30] & req_mask_r[30];
  assign _2_net__29_ = reqs_i[29] & req_mask_r[29];
  assign _2_net__28_ = reqs_i[28] & req_mask_r[28];
  assign _2_net__27_ = reqs_i[27] & req_mask_r[27];
  assign _2_net__26_ = reqs_i[26] & req_mask_r[26];
  assign _2_net__25_ = reqs_i[25] & req_mask_r[25];
  assign _2_net__24_ = reqs_i[24] & req_mask_r[24];
  assign _2_net__23_ = reqs_i[23] & req_mask_r[23];
  assign _2_net__22_ = reqs_i[22] & req_mask_r[22];
  assign _2_net__21_ = reqs_i[21] & req_mask_r[21];
  assign _2_net__20_ = reqs_i[20] & req_mask_r[20];
  assign _2_net__19_ = reqs_i[19] & req_mask_r[19];
  assign _2_net__18_ = reqs_i[18] & req_mask_r[18];
  assign _2_net__17_ = reqs_i[17] & req_mask_r[17];
  assign _2_net__16_ = reqs_i[16] & req_mask_r[16];
  assign _2_net__15_ = reqs_i[15] & req_mask_r[15];
  assign _2_net__14_ = reqs_i[14] & req_mask_r[14];
  assign _2_net__13_ = reqs_i[13] & req_mask_r[13];
  assign _2_net__12_ = reqs_i[12] & req_mask_r[12];
  assign _2_net__11_ = reqs_i[11] & req_mask_r[11];
  assign _2_net__10_ = reqs_i[10] & req_mask_r[10];
  assign _2_net__9_ = reqs_i[9] & req_mask_r[9];
  assign _2_net__8_ = reqs_i[8] & req_mask_r[8];
  assign _2_net__7_ = reqs_i[7] & req_mask_r[7];
  assign _2_net__6_ = reqs_i[6] & req_mask_r[6];
  assign _2_net__5_ = reqs_i[5] & req_mask_r[5];
  assign _2_net__4_ = reqs_i[4] & req_mask_r[4];
  assign _2_net__3_ = reqs_i[3] & req_mask_r[3];
  assign _2_net__2_ = reqs_i[2] & req_mask_r[2];
  assign _2_net__1_ = reqs_i[1] & req_mask_r[1];
  assign _2_net__0_ = reqs_i[0] & req_mask_r[0];

endmodule

