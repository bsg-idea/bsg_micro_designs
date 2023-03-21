

module top
(
  i,
  o
);

  input [31:0] i;
  output [5:0] o;

  bsg_thermometer_count
  wrapper
  (
    .i(i),
    .o(o)
  );


endmodule



module bsg_encode_one_hot_width_p33
(
  i,
  addr_o,
  v_o
);

  input [32:0] i;
  output [5:0] addr_o;
  output v_o;
  wire [5:0] addr_o;
  wire v_o,v_5__0_,v_4__48_,v_4__32_,v_4__16_,v_4__0_,v_3__56_,v_3__48_,v_3__40_,
  v_3__32_,v_3__24_,v_3__16_,v_3__8_,v_3__0_,v_2__60_,v_2__56_,v_2__52_,v_2__48_,
  v_2__44_,v_2__40_,v_2__36_,v_2__32_,v_2__28_,v_2__24_,v_2__20_,v_2__16_,v_2__12_,
  v_2__8_,v_2__4_,v_2__0_,v_1__62_,v_1__60_,v_1__58_,v_1__56_,v_1__54_,v_1__52_,
  v_1__50_,v_1__48_,v_1__46_,v_1__44_,v_1__42_,v_1__40_,v_1__38_,v_1__36_,v_1__34_,
  v_1__32_,v_1__30_,v_1__28_,v_1__26_,v_1__24_,v_1__22_,v_1__20_,v_1__18_,v_1__16_,
  v_1__14_,v_1__12_,v_1__10_,v_1__8_,v_1__6_,v_1__4_,v_1__2_,v_1__0_,addr_5__35_,
  addr_5__34_,addr_5__33_,addr_5__32_,addr_5__3_,addr_5__2_,addr_5__1_,addr_5__0_,
  addr_4__50_,addr_4__49_,addr_4__48_,addr_4__34_,addr_4__33_,addr_4__32_,addr_4__18_,
  addr_4__17_,addr_4__16_,addr_4__2_,addr_4__1_,addr_4__0_,addr_3__57_,addr_3__56_,
  addr_3__49_,addr_3__48_,addr_3__41_,addr_3__40_,addr_3__33_,addr_3__32_,
  addr_3__25_,addr_3__24_,addr_3__17_,addr_3__16_,addr_3__9_,addr_3__8_,addr_3__1_,
  addr_3__0_,addr_2__60_,addr_2__56_,addr_2__52_,addr_2__48_,addr_2__44_,addr_2__40_,
  addr_2__36_,addr_2__32_,addr_2__28_,addr_2__24_,addr_2__20_,addr_2__16_,addr_2__12_,
  addr_2__8_,addr_2__4_,addr_2__0_;
  assign v_1__0_ = i[1] | i[0];
  assign v_1__2_ = i[3] | i[2];
  assign v_1__4_ = i[5] | i[4];
  assign v_1__6_ = i[7] | i[6];
  assign v_1__8_ = i[9] | i[8];
  assign v_1__10_ = i[11] | i[10];
  assign v_1__12_ = i[13] | i[12];
  assign v_1__14_ = i[15] | i[14];
  assign v_1__16_ = i[17] | i[16];
  assign v_1__18_ = i[19] | i[18];
  assign v_1__20_ = i[21] | i[20];
  assign v_1__22_ = i[23] | i[22];
  assign v_1__24_ = i[25] | i[24];
  assign v_1__26_ = i[27] | i[26];
  assign v_1__28_ = i[29] | i[28];
  assign v_1__30_ = i[31] | i[30];
  assign v_1__32_ = 1'b0 | i[32];
  assign v_1__34_ = 1'b0 | 1'b0;
  assign v_1__36_ = 1'b0 | 1'b0;
  assign v_1__38_ = 1'b0 | 1'b0;
  assign v_1__40_ = 1'b0 | 1'b0;
  assign v_1__42_ = 1'b0 | 1'b0;
  assign v_1__44_ = 1'b0 | 1'b0;
  assign v_1__46_ = 1'b0 | 1'b0;
  assign v_1__48_ = 1'b0 | 1'b0;
  assign v_1__50_ = 1'b0 | 1'b0;
  assign v_1__52_ = 1'b0 | 1'b0;
  assign v_1__54_ = 1'b0 | 1'b0;
  assign v_1__56_ = 1'b0 | 1'b0;
  assign v_1__58_ = 1'b0 | 1'b0;
  assign v_1__60_ = 1'b0 | 1'b0;
  assign v_1__62_ = 1'b0 | 1'b0;
  assign v_2__0_ = v_1__2_ | v_1__0_;
  assign addr_2__0_ = i[1] | i[3];
  assign v_2__4_ = v_1__6_ | v_1__4_;
  assign addr_2__4_ = i[5] | i[7];
  assign v_2__8_ = v_1__10_ | v_1__8_;
  assign addr_2__8_ = i[9] | i[11];
  assign v_2__12_ = v_1__14_ | v_1__12_;
  assign addr_2__12_ = i[13] | i[15];
  assign v_2__16_ = v_1__18_ | v_1__16_;
  assign addr_2__16_ = i[17] | i[19];
  assign v_2__20_ = v_1__22_ | v_1__20_;
  assign addr_2__20_ = i[21] | i[23];
  assign v_2__24_ = v_1__26_ | v_1__24_;
  assign addr_2__24_ = i[25] | i[27];
  assign v_2__28_ = v_1__30_ | v_1__28_;
  assign addr_2__28_ = i[29] | i[31];
  assign v_2__32_ = v_1__34_ | v_1__32_;
  assign addr_2__32_ = 1'b0 | 1'b0;
  assign v_2__36_ = v_1__38_ | v_1__36_;
  assign addr_2__36_ = 1'b0 | 1'b0;
  assign v_2__40_ = v_1__42_ | v_1__40_;
  assign addr_2__40_ = 1'b0 | 1'b0;
  assign v_2__44_ = v_1__46_ | v_1__44_;
  assign addr_2__44_ = 1'b0 | 1'b0;
  assign v_2__48_ = v_1__50_ | v_1__48_;
  assign addr_2__48_ = 1'b0 | 1'b0;
  assign v_2__52_ = v_1__54_ | v_1__52_;
  assign addr_2__52_ = 1'b0 | 1'b0;
  assign v_2__56_ = v_1__58_ | v_1__56_;
  assign addr_2__56_ = 1'b0 | 1'b0;
  assign v_2__60_ = v_1__62_ | v_1__60_;
  assign addr_2__60_ = 1'b0 | 1'b0;
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
  assign v_3__32_ = v_2__36_ | v_2__32_;
  assign addr_3__33_ = v_1__34_ | v_1__38_;
  assign addr_3__32_ = addr_2__32_ | addr_2__36_;
  assign v_3__40_ = v_2__44_ | v_2__40_;
  assign addr_3__41_ = v_1__42_ | v_1__46_;
  assign addr_3__40_ = addr_2__40_ | addr_2__44_;
  assign v_3__48_ = v_2__52_ | v_2__48_;
  assign addr_3__49_ = v_1__50_ | v_1__54_;
  assign addr_3__48_ = addr_2__48_ | addr_2__52_;
  assign v_3__56_ = v_2__60_ | v_2__56_;
  assign addr_3__57_ = v_1__58_ | v_1__62_;
  assign addr_3__56_ = addr_2__56_ | addr_2__60_;
  assign v_4__0_ = v_3__8_ | v_3__0_;
  assign addr_4__2_ = v_2__4_ | v_2__12_;
  assign addr_4__1_ = addr_3__1_ | addr_3__9_;
  assign addr_4__0_ = addr_3__0_ | addr_3__8_;
  assign v_4__16_ = v_3__24_ | v_3__16_;
  assign addr_4__18_ = v_2__20_ | v_2__28_;
  assign addr_4__17_ = addr_3__17_ | addr_3__25_;
  assign addr_4__16_ = addr_3__16_ | addr_3__24_;
  assign v_4__32_ = v_3__40_ | v_3__32_;
  assign addr_4__34_ = v_2__36_ | v_2__44_;
  assign addr_4__33_ = addr_3__33_ | addr_3__41_;
  assign addr_4__32_ = addr_3__32_ | addr_3__40_;
  assign v_4__48_ = v_3__56_ | v_3__48_;
  assign addr_4__50_ = v_2__52_ | v_2__60_;
  assign addr_4__49_ = addr_3__49_ | addr_3__57_;
  assign addr_4__48_ = addr_3__48_ | addr_3__56_;
  assign v_5__0_ = v_4__16_ | v_4__0_;
  assign addr_5__3_ = v_3__8_ | v_3__24_;
  assign addr_5__2_ = addr_4__2_ | addr_4__18_;
  assign addr_5__1_ = addr_4__1_ | addr_4__17_;
  assign addr_5__0_ = addr_4__0_ | addr_4__16_;
  assign addr_o[5] = v_4__48_ | v_4__32_;
  assign addr_5__35_ = v_3__40_ | v_3__56_;
  assign addr_5__34_ = addr_4__34_ | addr_4__50_;
  assign addr_5__33_ = addr_4__33_ | addr_4__49_;
  assign addr_5__32_ = addr_4__32_ | addr_4__48_;
  assign v_o = addr_o[5] | v_5__0_;
  assign addr_o[4] = v_4__16_ | v_4__48_;
  assign addr_o[3] = addr_5__3_ | addr_5__35_;
  assign addr_o[2] = addr_5__2_ | addr_5__34_;
  assign addr_o[1] = addr_5__1_ | addr_5__33_;
  assign addr_o[0] = addr_5__0_ | addr_5__32_;

endmodule



module bsg_thermometer_count
(
  i,
  o
);

  input [31:0] i;
  output [5:0] o;
  wire [5:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30;
  wire [31:0] \big.one_hot ;

  bsg_encode_one_hot_width_p33
  \big.encode_one_hot 
  (
    .i({ i[31:31], \big.one_hot  }),
    .addr_o(o)
  );

  assign \big.one_hot [31] = N0 & i[30];
  assign N0 = ~i[31];
  assign \big.one_hot [30] = N1 & i[29];
  assign N1 = ~i[30];
  assign \big.one_hot [29] = N2 & i[28];
  assign N2 = ~i[29];
  assign \big.one_hot [28] = N3 & i[27];
  assign N3 = ~i[28];
  assign \big.one_hot [27] = N4 & i[26];
  assign N4 = ~i[27];
  assign \big.one_hot [26] = N5 & i[25];
  assign N5 = ~i[26];
  assign \big.one_hot [25] = N6 & i[24];
  assign N6 = ~i[25];
  assign \big.one_hot [24] = N7 & i[23];
  assign N7 = ~i[24];
  assign \big.one_hot [23] = N8 & i[22];
  assign N8 = ~i[23];
  assign \big.one_hot [22] = N9 & i[21];
  assign N9 = ~i[22];
  assign \big.one_hot [21] = N10 & i[20];
  assign N10 = ~i[21];
  assign \big.one_hot [20] = N11 & i[19];
  assign N11 = ~i[20];
  assign \big.one_hot [19] = N12 & i[18];
  assign N12 = ~i[19];
  assign \big.one_hot [18] = N13 & i[17];
  assign N13 = ~i[18];
  assign \big.one_hot [17] = N14 & i[16];
  assign N14 = ~i[17];
  assign \big.one_hot [16] = N15 & i[15];
  assign N15 = ~i[16];
  assign \big.one_hot [15] = N16 & i[14];
  assign N16 = ~i[15];
  assign \big.one_hot [14] = N17 & i[13];
  assign N17 = ~i[14];
  assign \big.one_hot [13] = N18 & i[12];
  assign N18 = ~i[13];
  assign \big.one_hot [12] = N19 & i[11];
  assign N19 = ~i[12];
  assign \big.one_hot [11] = N20 & i[10];
  assign N20 = ~i[11];
  assign \big.one_hot [10] = N21 & i[9];
  assign N21 = ~i[10];
  assign \big.one_hot [9] = N22 & i[8];
  assign N22 = ~i[9];
  assign \big.one_hot [8] = N23 & i[7];
  assign N23 = ~i[8];
  assign \big.one_hot [7] = N24 & i[6];
  assign N24 = ~i[7];
  assign \big.one_hot [6] = N25 & i[5];
  assign N25 = ~i[6];
  assign \big.one_hot [5] = N26 & i[4];
  assign N26 = ~i[5];
  assign \big.one_hot [4] = N27 & i[3];
  assign N27 = ~i[4];
  assign \big.one_hot [3] = N28 & i[2];
  assign N28 = ~i[3];
  assign \big.one_hot [2] = N29 & i[1];
  assign N29 = ~i[2];
  assign \big.one_hot [1] = N30 & i[0];
  assign N30 = ~i[1];
  assign \big.one_hot [0] = ~i[0];

endmodule

