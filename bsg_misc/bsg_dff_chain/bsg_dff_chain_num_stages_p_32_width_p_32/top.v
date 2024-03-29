

module top
(
  clk_i,
  data_i,
  data_o
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;

  bsg_dff_chain
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i)
  );


endmodule



module bsg_dff_width_p32
(
  clk_i,
  data_i,
  data_o
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  wire [31:0] data_o;
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

  always @(posedge clk_i) begin
    if(1'b1) begin
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



module bsg_dff_chain
(
  clk_i,
  data_i,
  data_o
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  wire [31:0] data_o;
  wire \chained.data_delayed_31__31_ ,\chained.data_delayed_31__30_ ,
  \chained.data_delayed_31__29_ ,\chained.data_delayed_31__28_ ,\chained.data_delayed_31__27_ ,
  \chained.data_delayed_31__26_ ,\chained.data_delayed_31__25_ ,
  \chained.data_delayed_31__24_ ,\chained.data_delayed_31__23_ ,\chained.data_delayed_31__22_ ,
  \chained.data_delayed_31__21_ ,\chained.data_delayed_31__20_ ,
  \chained.data_delayed_31__19_ ,\chained.data_delayed_31__18_ ,\chained.data_delayed_31__17_ ,
  \chained.data_delayed_31__16_ ,\chained.data_delayed_31__15_ ,\chained.data_delayed_31__14_ ,
  \chained.data_delayed_31__13_ ,\chained.data_delayed_31__12_ ,
  \chained.data_delayed_31__11_ ,\chained.data_delayed_31__10_ ,\chained.data_delayed_31__9_ ,
  \chained.data_delayed_31__8_ ,\chained.data_delayed_31__7_ ,
  \chained.data_delayed_31__6_ ,\chained.data_delayed_31__5_ ,\chained.data_delayed_31__4_ ,
  \chained.data_delayed_31__3_ ,\chained.data_delayed_31__2_ ,\chained.data_delayed_31__1_ ,
  \chained.data_delayed_31__0_ ,\chained.data_delayed_30__31_ ,
  \chained.data_delayed_30__30_ ,\chained.data_delayed_30__29_ ,\chained.data_delayed_30__28_ ,
  \chained.data_delayed_30__27_ ,\chained.data_delayed_30__26_ ,\chained.data_delayed_30__25_ ,
  \chained.data_delayed_30__24_ ,\chained.data_delayed_30__23_ ,
  \chained.data_delayed_30__22_ ,\chained.data_delayed_30__21_ ,\chained.data_delayed_30__20_ ,
  \chained.data_delayed_30__19_ ,\chained.data_delayed_30__18_ ,
  \chained.data_delayed_30__17_ ,\chained.data_delayed_30__16_ ,\chained.data_delayed_30__15_ ,
  \chained.data_delayed_30__14_ ,\chained.data_delayed_30__13_ ,
  \chained.data_delayed_30__12_ ,\chained.data_delayed_30__11_ ,\chained.data_delayed_30__10_ ,
  \chained.data_delayed_30__9_ ,\chained.data_delayed_30__8_ ,\chained.data_delayed_30__7_ ,
  \chained.data_delayed_30__6_ ,\chained.data_delayed_30__5_ ,
  \chained.data_delayed_30__4_ ,\chained.data_delayed_30__3_ ,\chained.data_delayed_30__2_ ,
  \chained.data_delayed_30__1_ ,\chained.data_delayed_30__0_ ,\chained.data_delayed_29__31_ ,
  \chained.data_delayed_29__30_ ,\chained.data_delayed_29__29_ ,
  \chained.data_delayed_29__28_ ,\chained.data_delayed_29__27_ ,\chained.data_delayed_29__26_ ,
  \chained.data_delayed_29__25_ ,\chained.data_delayed_29__24_ ,
  \chained.data_delayed_29__23_ ,\chained.data_delayed_29__22_ ,\chained.data_delayed_29__21_ ,
  \chained.data_delayed_29__20_ ,\chained.data_delayed_29__19_ ,\chained.data_delayed_29__18_ ,
  \chained.data_delayed_29__17_ ,\chained.data_delayed_29__16_ ,
  \chained.data_delayed_29__15_ ,\chained.data_delayed_29__14_ ,\chained.data_delayed_29__13_ ,
  \chained.data_delayed_29__12_ ,\chained.data_delayed_29__11_ ,
  \chained.data_delayed_29__10_ ,\chained.data_delayed_29__9_ ,\chained.data_delayed_29__8_ ,
  \chained.data_delayed_29__7_ ,\chained.data_delayed_29__6_ ,\chained.data_delayed_29__5_ ,
  \chained.data_delayed_29__4_ ,\chained.data_delayed_29__3_ ,
  \chained.data_delayed_29__2_ ,\chained.data_delayed_29__1_ ,\chained.data_delayed_29__0_ ,
  \chained.data_delayed_28__31_ ,\chained.data_delayed_28__30_ ,\chained.data_delayed_28__29_ ,
  \chained.data_delayed_28__28_ ,\chained.data_delayed_28__27_ ,
  \chained.data_delayed_28__26_ ,\chained.data_delayed_28__25_ ,\chained.data_delayed_28__24_ ,
  \chained.data_delayed_28__23_ ,\chained.data_delayed_28__22_ ,
  \chained.data_delayed_28__21_ ,\chained.data_delayed_28__20_ ,\chained.data_delayed_28__19_ ,
  \chained.data_delayed_28__18_ ,\chained.data_delayed_28__17_ ,
  \chained.data_delayed_28__16_ ,\chained.data_delayed_28__15_ ,\chained.data_delayed_28__14_ ,
  \chained.data_delayed_28__13_ ,\chained.data_delayed_28__12_ ,\chained.data_delayed_28__11_ ,
  \chained.data_delayed_28__10_ ,\chained.data_delayed_28__9_ ,
  \chained.data_delayed_28__8_ ,\chained.data_delayed_28__7_ ,\chained.data_delayed_28__6_ ,
  \chained.data_delayed_28__5_ ,\chained.data_delayed_28__4_ ,\chained.data_delayed_28__3_ ,
  \chained.data_delayed_28__2_ ,\chained.data_delayed_28__1_ ,
  \chained.data_delayed_28__0_ ,\chained.data_delayed_27__31_ ,\chained.data_delayed_27__30_ ,
  \chained.data_delayed_27__29_ ,\chained.data_delayed_27__28_ ,
  \chained.data_delayed_27__27_ ,\chained.data_delayed_27__26_ ,\chained.data_delayed_27__25_ ,
  \chained.data_delayed_27__24_ ,\chained.data_delayed_27__23_ ,\chained.data_delayed_27__22_ ,
  \chained.data_delayed_27__21_ ,\chained.data_delayed_27__20_ ,
  \chained.data_delayed_27__19_ ,\chained.data_delayed_27__18_ ,\chained.data_delayed_27__17_ ,
  \chained.data_delayed_27__16_ ,\chained.data_delayed_27__15_ ,
  \chained.data_delayed_27__14_ ,\chained.data_delayed_27__13_ ,\chained.data_delayed_27__12_ ,
  \chained.data_delayed_27__11_ ,\chained.data_delayed_27__10_ ,\chained.data_delayed_27__9_ ,
  \chained.data_delayed_27__8_ ,\chained.data_delayed_27__7_ ,
  \chained.data_delayed_27__6_ ,\chained.data_delayed_27__5_ ,\chained.data_delayed_27__4_ ,
  \chained.data_delayed_27__3_ ,\chained.data_delayed_27__2_ ,\chained.data_delayed_27__1_ ,
  \chained.data_delayed_27__0_ ,\chained.data_delayed_26__31_ ,
  \chained.data_delayed_26__30_ ,\chained.data_delayed_26__29_ ,\chained.data_delayed_26__28_ ,
  \chained.data_delayed_26__27_ ,\chained.data_delayed_26__26_ ,
  \chained.data_delayed_26__25_ ,\chained.data_delayed_26__24_ ,\chained.data_delayed_26__23_ ,
  \chained.data_delayed_26__22_ ,\chained.data_delayed_26__21_ ,
  \chained.data_delayed_26__20_ ,\chained.data_delayed_26__19_ ,\chained.data_delayed_26__18_ ,
  \chained.data_delayed_26__17_ ,\chained.data_delayed_26__16_ ,\chained.data_delayed_26__15_ ,
  \chained.data_delayed_26__14_ ,\chained.data_delayed_26__13_ ,
  \chained.data_delayed_26__12_ ,\chained.data_delayed_26__11_ ,\chained.data_delayed_26__10_ ,
  \chained.data_delayed_26__9_ ,\chained.data_delayed_26__8_ ,
  \chained.data_delayed_26__7_ ,\chained.data_delayed_26__6_ ,\chained.data_delayed_26__5_ ,
  \chained.data_delayed_26__4_ ,\chained.data_delayed_26__3_ ,\chained.data_delayed_26__2_ ,
  \chained.data_delayed_26__1_ ,\chained.data_delayed_26__0_ ,
  \chained.data_delayed_25__31_ ,\chained.data_delayed_25__30_ ,\chained.data_delayed_25__29_ ,
  \chained.data_delayed_25__28_ ,\chained.data_delayed_25__27_ ,\chained.data_delayed_25__26_ ,
  \chained.data_delayed_25__25_ ,\chained.data_delayed_25__24_ ,
  \chained.data_delayed_25__23_ ,\chained.data_delayed_25__22_ ,\chained.data_delayed_25__21_ ,
  \chained.data_delayed_25__20_ ,\chained.data_delayed_25__19_ ,
  \chained.data_delayed_25__18_ ,\chained.data_delayed_25__17_ ,\chained.data_delayed_25__16_ ,
  \chained.data_delayed_25__15_ ,\chained.data_delayed_25__14_ ,
  \chained.data_delayed_25__13_ ,\chained.data_delayed_25__12_ ,\chained.data_delayed_25__11_ ,
  \chained.data_delayed_25__10_ ,\chained.data_delayed_25__9_ ,\chained.data_delayed_25__8_ ,
  \chained.data_delayed_25__7_ ,\chained.data_delayed_25__6_ ,
  \chained.data_delayed_25__5_ ,\chained.data_delayed_25__4_ ,\chained.data_delayed_25__3_ ,
  \chained.data_delayed_25__2_ ,\chained.data_delayed_25__1_ ,\chained.data_delayed_25__0_ ,
  \chained.data_delayed_24__31_ ,\chained.data_delayed_24__30_ ,
  \chained.data_delayed_24__29_ ,\chained.data_delayed_24__28_ ,\chained.data_delayed_24__27_ ,
  \chained.data_delayed_24__26_ ,\chained.data_delayed_24__25_ ,
  \chained.data_delayed_24__24_ ,\chained.data_delayed_24__23_ ,\chained.data_delayed_24__22_ ,
  \chained.data_delayed_24__21_ ,\chained.data_delayed_24__20_ ,\chained.data_delayed_24__19_ ,
  \chained.data_delayed_24__18_ ,\chained.data_delayed_24__17_ ,
  \chained.data_delayed_24__16_ ,\chained.data_delayed_24__15_ ,\chained.data_delayed_24__14_ ,
  \chained.data_delayed_24__13_ ,\chained.data_delayed_24__12_ ,
  \chained.data_delayed_24__11_ ,\chained.data_delayed_24__10_ ,\chained.data_delayed_24__9_ ,
  \chained.data_delayed_24__8_ ,\chained.data_delayed_24__7_ ,\chained.data_delayed_24__6_ ,
  \chained.data_delayed_24__5_ ,\chained.data_delayed_24__4_ ,
  \chained.data_delayed_24__3_ ,\chained.data_delayed_24__2_ ,\chained.data_delayed_24__1_ ,
  \chained.data_delayed_24__0_ ,\chained.data_delayed_23__31_ ,\chained.data_delayed_23__30_ ,
  \chained.data_delayed_23__29_ ,\chained.data_delayed_23__28_ ,
  \chained.data_delayed_23__27_ ,\chained.data_delayed_23__26_ ,\chained.data_delayed_23__25_ ,
  \chained.data_delayed_23__24_ ,\chained.data_delayed_23__23_ ,
  \chained.data_delayed_23__22_ ,\chained.data_delayed_23__21_ ,\chained.data_delayed_23__20_ ,
  \chained.data_delayed_23__19_ ,\chained.data_delayed_23__18_ ,
  \chained.data_delayed_23__17_ ,\chained.data_delayed_23__16_ ,\chained.data_delayed_23__15_ ,
  \chained.data_delayed_23__14_ ,\chained.data_delayed_23__13_ ,\chained.data_delayed_23__12_ ,
  \chained.data_delayed_23__11_ ,\chained.data_delayed_23__10_ ,
  \chained.data_delayed_23__9_ ,\chained.data_delayed_23__8_ ,\chained.data_delayed_23__7_ ,
  \chained.data_delayed_23__6_ ,\chained.data_delayed_23__5_ ,\chained.data_delayed_23__4_ ,
  \chained.data_delayed_23__3_ ,\chained.data_delayed_23__2_ ,
  \chained.data_delayed_23__1_ ,\chained.data_delayed_23__0_ ,\chained.data_delayed_22__31_ ,
  \chained.data_delayed_22__30_ ,\chained.data_delayed_22__29_ ,
  \chained.data_delayed_22__28_ ,\chained.data_delayed_22__27_ ,\chained.data_delayed_22__26_ ,
  \chained.data_delayed_22__25_ ,\chained.data_delayed_22__24_ ,\chained.data_delayed_22__23_ ,
  \chained.data_delayed_22__22_ ,\chained.data_delayed_22__21_ ,
  \chained.data_delayed_22__20_ ,\chained.data_delayed_22__19_ ,\chained.data_delayed_22__18_ ,
  \chained.data_delayed_22__17_ ,\chained.data_delayed_22__16_ ,
  \chained.data_delayed_22__15_ ,\chained.data_delayed_22__14_ ,\chained.data_delayed_22__13_ ,
  \chained.data_delayed_22__12_ ,\chained.data_delayed_22__11_ ,\chained.data_delayed_22__10_ ,
  \chained.data_delayed_22__9_ ,\chained.data_delayed_22__8_ ,
  \chained.data_delayed_22__7_ ,\chained.data_delayed_22__6_ ,\chained.data_delayed_22__5_ ,
  \chained.data_delayed_22__4_ ,\chained.data_delayed_22__3_ ,\chained.data_delayed_22__2_ ,
  \chained.data_delayed_22__1_ ,\chained.data_delayed_22__0_ ,
  \chained.data_delayed_21__31_ ,\chained.data_delayed_21__30_ ,\chained.data_delayed_21__29_ ,
  \chained.data_delayed_21__28_ ,\chained.data_delayed_21__27_ ,
  \chained.data_delayed_21__26_ ,\chained.data_delayed_21__25_ ,\chained.data_delayed_21__24_ ,
  \chained.data_delayed_21__23_ ,\chained.data_delayed_21__22_ ,
  \chained.data_delayed_21__21_ ,\chained.data_delayed_21__20_ ,\chained.data_delayed_21__19_ ,
  \chained.data_delayed_21__18_ ,\chained.data_delayed_21__17_ ,\chained.data_delayed_21__16_ ,
  \chained.data_delayed_21__15_ ,\chained.data_delayed_21__14_ ,
  \chained.data_delayed_21__13_ ,\chained.data_delayed_21__12_ ,\chained.data_delayed_21__11_ ,
  \chained.data_delayed_21__10_ ,\chained.data_delayed_21__9_ ,
  \chained.data_delayed_21__8_ ,\chained.data_delayed_21__7_ ,\chained.data_delayed_21__6_ ,
  \chained.data_delayed_21__5_ ,\chained.data_delayed_21__4_ ,\chained.data_delayed_21__3_ ,
  \chained.data_delayed_21__2_ ,\chained.data_delayed_21__1_ ,
  \chained.data_delayed_21__0_ ,\chained.data_delayed_20__31_ ,\chained.data_delayed_20__30_ ,
  \chained.data_delayed_20__29_ ,\chained.data_delayed_20__28_ ,\chained.data_delayed_20__27_ ,
  \chained.data_delayed_20__26_ ,\chained.data_delayed_20__25_ ,
  \chained.data_delayed_20__24_ ,\chained.data_delayed_20__23_ ,\chained.data_delayed_20__22_ ,
  \chained.data_delayed_20__21_ ,\chained.data_delayed_20__20_ ,
  \chained.data_delayed_20__19_ ,\chained.data_delayed_20__18_ ,\chained.data_delayed_20__17_ ,
  \chained.data_delayed_20__16_ ,\chained.data_delayed_20__15_ ,\chained.data_delayed_20__14_ ,
  \chained.data_delayed_20__13_ ,\chained.data_delayed_20__12_ ,
  \chained.data_delayed_20__11_ ,\chained.data_delayed_20__10_ ,\chained.data_delayed_20__9_ ,
  \chained.data_delayed_20__8_ ,\chained.data_delayed_20__7_ ,
  \chained.data_delayed_20__6_ ,\chained.data_delayed_20__5_ ,\chained.data_delayed_20__4_ ,
  \chained.data_delayed_20__3_ ,\chained.data_delayed_20__2_ ,\chained.data_delayed_20__1_ ,
  \chained.data_delayed_20__0_ ,\chained.data_delayed_19__31_ ,
  \chained.data_delayed_19__30_ ,\chained.data_delayed_19__29_ ,\chained.data_delayed_19__28_ ,
  \chained.data_delayed_19__27_ ,\chained.data_delayed_19__26_ ,
  \chained.data_delayed_19__25_ ,\chained.data_delayed_19__24_ ,\chained.data_delayed_19__23_ ,
  \chained.data_delayed_19__22_ ,\chained.data_delayed_19__21_ ,\chained.data_delayed_19__20_ ,
  \chained.data_delayed_19__19_ ,\chained.data_delayed_19__18_ ,
  \chained.data_delayed_19__17_ ,\chained.data_delayed_19__16_ ,\chained.data_delayed_19__15_ ,
  \chained.data_delayed_19__14_ ,\chained.data_delayed_19__13_ ,
  \chained.data_delayed_19__12_ ,\chained.data_delayed_19__11_ ,\chained.data_delayed_19__10_ ,
  \chained.data_delayed_19__9_ ,\chained.data_delayed_19__8_ ,\chained.data_delayed_19__7_ ,
  \chained.data_delayed_19__6_ ,\chained.data_delayed_19__5_ ,
  \chained.data_delayed_19__4_ ,\chained.data_delayed_19__3_ ,\chained.data_delayed_19__2_ ,
  \chained.data_delayed_19__1_ ,\chained.data_delayed_19__0_ ,\chained.data_delayed_18__31_ ,
  \chained.data_delayed_18__30_ ,\chained.data_delayed_18__29_ ,
  \chained.data_delayed_18__28_ ,\chained.data_delayed_18__27_ ,\chained.data_delayed_18__26_ ,
  \chained.data_delayed_18__25_ ,\chained.data_delayed_18__24_ ,
  \chained.data_delayed_18__23_ ,\chained.data_delayed_18__22_ ,\chained.data_delayed_18__21_ ,
  \chained.data_delayed_18__20_ ,\chained.data_delayed_18__19_ ,\chained.data_delayed_18__18_ ,
  \chained.data_delayed_18__17_ ,\chained.data_delayed_18__16_ ,
  \chained.data_delayed_18__15_ ,\chained.data_delayed_18__14_ ,\chained.data_delayed_18__13_ ,
  \chained.data_delayed_18__12_ ,\chained.data_delayed_18__11_ ,
  \chained.data_delayed_18__10_ ,\chained.data_delayed_18__9_ ,\chained.data_delayed_18__8_ ,
  \chained.data_delayed_18__7_ ,\chained.data_delayed_18__6_ ,\chained.data_delayed_18__5_ ,
  \chained.data_delayed_18__4_ ,\chained.data_delayed_18__3_ ,
  \chained.data_delayed_18__2_ ,\chained.data_delayed_18__1_ ,\chained.data_delayed_18__0_ ,
  \chained.data_delayed_17__31_ ,\chained.data_delayed_17__30_ ,
  \chained.data_delayed_17__29_ ,\chained.data_delayed_17__28_ ,\chained.data_delayed_17__27_ ,
  \chained.data_delayed_17__26_ ,\chained.data_delayed_17__25_ ,\chained.data_delayed_17__24_ ,
  \chained.data_delayed_17__23_ ,\chained.data_delayed_17__22_ ,
  \chained.data_delayed_17__21_ ,\chained.data_delayed_17__20_ ,\chained.data_delayed_17__19_ ,
  \chained.data_delayed_17__18_ ,\chained.data_delayed_17__17_ ,
  \chained.data_delayed_17__16_ ,\chained.data_delayed_17__15_ ,\chained.data_delayed_17__14_ ,
  \chained.data_delayed_17__13_ ,\chained.data_delayed_17__12_ ,\chained.data_delayed_17__11_ ,
  \chained.data_delayed_17__10_ ,\chained.data_delayed_17__9_ ,
  \chained.data_delayed_17__8_ ,\chained.data_delayed_17__7_ ,\chained.data_delayed_17__6_ ,
  \chained.data_delayed_17__5_ ,\chained.data_delayed_17__4_ ,\chained.data_delayed_17__3_ ,
  \chained.data_delayed_17__2_ ,\chained.data_delayed_17__1_ ,
  \chained.data_delayed_17__0_ ,\chained.data_delayed_16__31_ ,\chained.data_delayed_16__30_ ,
  \chained.data_delayed_16__29_ ,\chained.data_delayed_16__28_ ,
  \chained.data_delayed_16__27_ ,\chained.data_delayed_16__26_ ,\chained.data_delayed_16__25_ ,
  \chained.data_delayed_16__24_ ,\chained.data_delayed_16__23_ ,\chained.data_delayed_16__22_ ,
  \chained.data_delayed_16__21_ ,\chained.data_delayed_16__20_ ,
  \chained.data_delayed_16__19_ ,\chained.data_delayed_16__18_ ,\chained.data_delayed_16__17_ ,
  \chained.data_delayed_16__16_ ,\chained.data_delayed_16__15_ ,
  \chained.data_delayed_16__14_ ,\chained.data_delayed_16__13_ ,\chained.data_delayed_16__12_ ,
  \chained.data_delayed_16__11_ ,\chained.data_delayed_16__10_ ,
  \chained.data_delayed_16__9_ ,\chained.data_delayed_16__8_ ,\chained.data_delayed_16__7_ ,
  \chained.data_delayed_16__6_ ,\chained.data_delayed_16__5_ ,\chained.data_delayed_16__4_ ,
  \chained.data_delayed_16__3_ ,\chained.data_delayed_16__2_ ,
  \chained.data_delayed_16__1_ ,\chained.data_delayed_16__0_ ,\chained.data_delayed_15__31_ ,
  \chained.data_delayed_15__30_ ,\chained.data_delayed_15__29_ ,\chained.data_delayed_15__28_ ,
  \chained.data_delayed_15__27_ ,\chained.data_delayed_15__26_ ,
  \chained.data_delayed_15__25_ ,\chained.data_delayed_15__24_ ,\chained.data_delayed_15__23_ ,
  \chained.data_delayed_15__22_ ,\chained.data_delayed_15__21_ ,
  \chained.data_delayed_15__20_ ,\chained.data_delayed_15__19_ ,\chained.data_delayed_15__18_ ,
  \chained.data_delayed_15__17_ ,\chained.data_delayed_15__16_ ,\chained.data_delayed_15__15_ ,
  \chained.data_delayed_15__14_ ,\chained.data_delayed_15__13_ ,
  \chained.data_delayed_15__12_ ,\chained.data_delayed_15__11_ ,\chained.data_delayed_15__10_ ,
  \chained.data_delayed_15__9_ ,\chained.data_delayed_15__8_ ,
  \chained.data_delayed_15__7_ ,\chained.data_delayed_15__6_ ,\chained.data_delayed_15__5_ ,
  \chained.data_delayed_15__4_ ,\chained.data_delayed_15__3_ ,\chained.data_delayed_15__2_ ,
  \chained.data_delayed_15__1_ ,\chained.data_delayed_15__0_ ,
  \chained.data_delayed_14__31_ ,\chained.data_delayed_14__30_ ,\chained.data_delayed_14__29_ ,
  \chained.data_delayed_14__28_ ,\chained.data_delayed_14__27_ ,\chained.data_delayed_14__26_ ,
  \chained.data_delayed_14__25_ ,\chained.data_delayed_14__24_ ,
  \chained.data_delayed_14__23_ ,\chained.data_delayed_14__22_ ,\chained.data_delayed_14__21_ ,
  \chained.data_delayed_14__20_ ,\chained.data_delayed_14__19_ ,
  \chained.data_delayed_14__18_ ,\chained.data_delayed_14__17_ ,\chained.data_delayed_14__16_ ,
  \chained.data_delayed_14__15_ ,\chained.data_delayed_14__14_ ,
  \chained.data_delayed_14__13_ ,\chained.data_delayed_14__12_ ,\chained.data_delayed_14__11_ ,
  \chained.data_delayed_14__10_ ,\chained.data_delayed_14__9_ ,\chained.data_delayed_14__8_ ,
  \chained.data_delayed_14__7_ ,\chained.data_delayed_14__6_ ,
  \chained.data_delayed_14__5_ ,\chained.data_delayed_14__4_ ,\chained.data_delayed_14__3_ ,
  \chained.data_delayed_14__2_ ,\chained.data_delayed_14__1_ ,\chained.data_delayed_14__0_ ,
  \chained.data_delayed_13__31_ ,\chained.data_delayed_13__30_ ,
  \chained.data_delayed_13__29_ ,\chained.data_delayed_13__28_ ,\chained.data_delayed_13__27_ ,
  \chained.data_delayed_13__26_ ,\chained.data_delayed_13__25_ ,
  \chained.data_delayed_13__24_ ,\chained.data_delayed_13__23_ ,\chained.data_delayed_13__22_ ,
  \chained.data_delayed_13__21_ ,\chained.data_delayed_13__20_ ,\chained.data_delayed_13__19_ ,
  \chained.data_delayed_13__18_ ,\chained.data_delayed_13__17_ ,
  \chained.data_delayed_13__16_ ,\chained.data_delayed_13__15_ ,\chained.data_delayed_13__14_ ,
  \chained.data_delayed_13__13_ ,\chained.data_delayed_13__12_ ,
  \chained.data_delayed_13__11_ ,\chained.data_delayed_13__10_ ,\chained.data_delayed_13__9_ ,
  \chained.data_delayed_13__8_ ,\chained.data_delayed_13__7_ ,\chained.data_delayed_13__6_ ,
  \chained.data_delayed_13__5_ ,\chained.data_delayed_13__4_ ,
  \chained.data_delayed_13__3_ ,\chained.data_delayed_13__2_ ,\chained.data_delayed_13__1_ ,
  \chained.data_delayed_13__0_ ,\chained.data_delayed_12__31_ ,\chained.data_delayed_12__30_ ,
  \chained.data_delayed_12__29_ ,\chained.data_delayed_12__28_ ,
  \chained.data_delayed_12__27_ ,\chained.data_delayed_12__26_ ,\chained.data_delayed_12__25_ ,
  \chained.data_delayed_12__24_ ,\chained.data_delayed_12__23_ ,
  \chained.data_delayed_12__22_ ,\chained.data_delayed_12__21_ ,\chained.data_delayed_12__20_ ,
  \chained.data_delayed_12__19_ ,\chained.data_delayed_12__18_ ,
  \chained.data_delayed_12__17_ ,\chained.data_delayed_12__16_ ,\chained.data_delayed_12__15_ ,
  \chained.data_delayed_12__14_ ,\chained.data_delayed_12__13_ ,\chained.data_delayed_12__12_ ,
  \chained.data_delayed_12__11_ ,\chained.data_delayed_12__10_ ,
  \chained.data_delayed_12__9_ ,\chained.data_delayed_12__8_ ,\chained.data_delayed_12__7_ ,
  \chained.data_delayed_12__6_ ,\chained.data_delayed_12__5_ ,\chained.data_delayed_12__4_ ,
  \chained.data_delayed_12__3_ ,\chained.data_delayed_12__2_ ,
  \chained.data_delayed_12__1_ ,\chained.data_delayed_12__0_ ,\chained.data_delayed_11__31_ ,
  \chained.data_delayed_11__30_ ,\chained.data_delayed_11__29_ ,
  \chained.data_delayed_11__28_ ,\chained.data_delayed_11__27_ ,\chained.data_delayed_11__26_ ,
  \chained.data_delayed_11__25_ ,\chained.data_delayed_11__24_ ,\chained.data_delayed_11__23_ ,
  \chained.data_delayed_11__22_ ,\chained.data_delayed_11__21_ ,
  \chained.data_delayed_11__20_ ,\chained.data_delayed_11__19_ ,\chained.data_delayed_11__18_ ,
  \chained.data_delayed_11__17_ ,\chained.data_delayed_11__16_ ,
  \chained.data_delayed_11__15_ ,\chained.data_delayed_11__14_ ,\chained.data_delayed_11__13_ ,
  \chained.data_delayed_11__12_ ,\chained.data_delayed_11__11_ ,
  \chained.data_delayed_11__10_ ,\chained.data_delayed_11__9_ ,\chained.data_delayed_11__8_ ,
  \chained.data_delayed_11__7_ ,\chained.data_delayed_11__6_ ,\chained.data_delayed_11__5_ ,
  \chained.data_delayed_11__4_ ,\chained.data_delayed_11__3_ ,
  \chained.data_delayed_11__2_ ,\chained.data_delayed_11__1_ ,\chained.data_delayed_11__0_ ,
  \chained.data_delayed_10__31_ ,\chained.data_delayed_10__30_ ,\chained.data_delayed_10__29_ ,
  \chained.data_delayed_10__28_ ,\chained.data_delayed_10__27_ ,
  \chained.data_delayed_10__26_ ,\chained.data_delayed_10__25_ ,\chained.data_delayed_10__24_ ,
  \chained.data_delayed_10__23_ ,\chained.data_delayed_10__22_ ,
  \chained.data_delayed_10__21_ ,\chained.data_delayed_10__20_ ,\chained.data_delayed_10__19_ ,
  \chained.data_delayed_10__18_ ,\chained.data_delayed_10__17_ ,\chained.data_delayed_10__16_ ,
  \chained.data_delayed_10__15_ ,\chained.data_delayed_10__14_ ,
  \chained.data_delayed_10__13_ ,\chained.data_delayed_10__12_ ,\chained.data_delayed_10__11_ ,
  \chained.data_delayed_10__10_ ,\chained.data_delayed_10__9_ ,
  \chained.data_delayed_10__8_ ,\chained.data_delayed_10__7_ ,\chained.data_delayed_10__6_ ,
  \chained.data_delayed_10__5_ ,\chained.data_delayed_10__4_ ,\chained.data_delayed_10__3_ ,
  \chained.data_delayed_10__2_ ,\chained.data_delayed_10__1_ ,
  \chained.data_delayed_10__0_ ,\chained.data_delayed_9__31_ ,\chained.data_delayed_9__30_ ,
  \chained.data_delayed_9__29_ ,\chained.data_delayed_9__28_ ,\chained.data_delayed_9__27_ ,
  \chained.data_delayed_9__26_ ,\chained.data_delayed_9__25_ ,
  \chained.data_delayed_9__24_ ,\chained.data_delayed_9__23_ ,\chained.data_delayed_9__22_ ,
  \chained.data_delayed_9__21_ ,\chained.data_delayed_9__20_ ,\chained.data_delayed_9__19_ ,
  \chained.data_delayed_9__18_ ,\chained.data_delayed_9__17_ ,
  \chained.data_delayed_9__16_ ,\chained.data_delayed_9__15_ ,\chained.data_delayed_9__14_ ,
  \chained.data_delayed_9__13_ ,\chained.data_delayed_9__12_ ,\chained.data_delayed_9__11_ ,
  \chained.data_delayed_9__10_ ,\chained.data_delayed_9__9_ ,
  \chained.data_delayed_9__8_ ,\chained.data_delayed_9__7_ ,\chained.data_delayed_9__6_ ,
  \chained.data_delayed_9__5_ ,\chained.data_delayed_9__4_ ,\chained.data_delayed_9__3_ ,
  \chained.data_delayed_9__2_ ,\chained.data_delayed_9__1_ ,\chained.data_delayed_9__0_ ,
  \chained.data_delayed_8__31_ ,\chained.data_delayed_8__30_ ,
  \chained.data_delayed_8__29_ ,\chained.data_delayed_8__28_ ,\chained.data_delayed_8__27_ ,
  \chained.data_delayed_8__26_ ,\chained.data_delayed_8__25_ ,\chained.data_delayed_8__24_ ,
  \chained.data_delayed_8__23_ ,\chained.data_delayed_8__22_ ,
  \chained.data_delayed_8__21_ ,\chained.data_delayed_8__20_ ,\chained.data_delayed_8__19_ ,
  \chained.data_delayed_8__18_ ,\chained.data_delayed_8__17_ ,\chained.data_delayed_8__16_ ,
  \chained.data_delayed_8__15_ ,\chained.data_delayed_8__14_ ,
  \chained.data_delayed_8__13_ ,\chained.data_delayed_8__12_ ,\chained.data_delayed_8__11_ ,
  \chained.data_delayed_8__10_ ,\chained.data_delayed_8__9_ ,\chained.data_delayed_8__8_ ,
  \chained.data_delayed_8__7_ ,\chained.data_delayed_8__6_ ,\chained.data_delayed_8__5_ ,
  \chained.data_delayed_8__4_ ,\chained.data_delayed_8__3_ ,
  \chained.data_delayed_8__2_ ,\chained.data_delayed_8__1_ ,\chained.data_delayed_8__0_ ,
  \chained.data_delayed_7__31_ ,\chained.data_delayed_7__30_ ,\chained.data_delayed_7__29_ ,
  \chained.data_delayed_7__28_ ,\chained.data_delayed_7__27_ ,
  \chained.data_delayed_7__26_ ,\chained.data_delayed_7__25_ ,\chained.data_delayed_7__24_ ,
  \chained.data_delayed_7__23_ ,\chained.data_delayed_7__22_ ,\chained.data_delayed_7__21_ ,
  \chained.data_delayed_7__20_ ,\chained.data_delayed_7__19_ ,
  \chained.data_delayed_7__18_ ,\chained.data_delayed_7__17_ ,\chained.data_delayed_7__16_ ,
  \chained.data_delayed_7__15_ ,\chained.data_delayed_7__14_ ,\chained.data_delayed_7__13_ ,
  \chained.data_delayed_7__12_ ,\chained.data_delayed_7__11_ ,
  \chained.data_delayed_7__10_ ,\chained.data_delayed_7__9_ ,\chained.data_delayed_7__8_ ,
  \chained.data_delayed_7__7_ ,\chained.data_delayed_7__6_ ,\chained.data_delayed_7__5_ ,
  \chained.data_delayed_7__4_ ,\chained.data_delayed_7__3_ ,\chained.data_delayed_7__2_ ,
  \chained.data_delayed_7__1_ ,\chained.data_delayed_7__0_ ,
  \chained.data_delayed_6__31_ ,\chained.data_delayed_6__30_ ,\chained.data_delayed_6__29_ ,
  \chained.data_delayed_6__28_ ,\chained.data_delayed_6__27_ ,\chained.data_delayed_6__26_ ,
  \chained.data_delayed_6__25_ ,\chained.data_delayed_6__24_ ,
  \chained.data_delayed_6__23_ ,\chained.data_delayed_6__22_ ,\chained.data_delayed_6__21_ ,
  \chained.data_delayed_6__20_ ,\chained.data_delayed_6__19_ ,\chained.data_delayed_6__18_ ,
  \chained.data_delayed_6__17_ ,\chained.data_delayed_6__16_ ,
  \chained.data_delayed_6__15_ ,\chained.data_delayed_6__14_ ,\chained.data_delayed_6__13_ ,
  \chained.data_delayed_6__12_ ,\chained.data_delayed_6__11_ ,\chained.data_delayed_6__10_ ,
  \chained.data_delayed_6__9_ ,\chained.data_delayed_6__8_ ,
  \chained.data_delayed_6__7_ ,\chained.data_delayed_6__6_ ,\chained.data_delayed_6__5_ ,
  \chained.data_delayed_6__4_ ,\chained.data_delayed_6__3_ ,\chained.data_delayed_6__2_ ,
  \chained.data_delayed_6__1_ ,\chained.data_delayed_6__0_ ,\chained.data_delayed_5__31_ ,
  \chained.data_delayed_5__30_ ,\chained.data_delayed_5__29_ ,
  \chained.data_delayed_5__28_ ,\chained.data_delayed_5__27_ ,\chained.data_delayed_5__26_ ,
  \chained.data_delayed_5__25_ ,\chained.data_delayed_5__24_ ,\chained.data_delayed_5__23_ ,
  \chained.data_delayed_5__22_ ,\chained.data_delayed_5__21_ ,
  \chained.data_delayed_5__20_ ,\chained.data_delayed_5__19_ ,\chained.data_delayed_5__18_ ,
  \chained.data_delayed_5__17_ ,\chained.data_delayed_5__16_ ,\chained.data_delayed_5__15_ ,
  \chained.data_delayed_5__14_ ,\chained.data_delayed_5__13_ ,
  \chained.data_delayed_5__12_ ,\chained.data_delayed_5__11_ ,\chained.data_delayed_5__10_ ,
  \chained.data_delayed_5__9_ ,\chained.data_delayed_5__8_ ,\chained.data_delayed_5__7_ ,
  \chained.data_delayed_5__6_ ,\chained.data_delayed_5__5_ ,\chained.data_delayed_5__4_ ,
  \chained.data_delayed_5__3_ ,\chained.data_delayed_5__2_ ,
  \chained.data_delayed_5__1_ ,\chained.data_delayed_5__0_ ,\chained.data_delayed_4__31_ ,
  \chained.data_delayed_4__30_ ,\chained.data_delayed_4__29_ ,\chained.data_delayed_4__28_ ,
  \chained.data_delayed_4__27_ ,\chained.data_delayed_4__26_ ,
  \chained.data_delayed_4__25_ ,\chained.data_delayed_4__24_ ,\chained.data_delayed_4__23_ ,
  \chained.data_delayed_4__22_ ,\chained.data_delayed_4__21_ ,\chained.data_delayed_4__20_ ,
  \chained.data_delayed_4__19_ ,\chained.data_delayed_4__18_ ,
  \chained.data_delayed_4__17_ ,\chained.data_delayed_4__16_ ,\chained.data_delayed_4__15_ ,
  \chained.data_delayed_4__14_ ,\chained.data_delayed_4__13_ ,\chained.data_delayed_4__12_ ,
  \chained.data_delayed_4__11_ ,\chained.data_delayed_4__10_ ,
  \chained.data_delayed_4__9_ ,\chained.data_delayed_4__8_ ,\chained.data_delayed_4__7_ ,
  \chained.data_delayed_4__6_ ,\chained.data_delayed_4__5_ ,\chained.data_delayed_4__4_ ,
  \chained.data_delayed_4__3_ ,\chained.data_delayed_4__2_ ,\chained.data_delayed_4__1_ ,
  \chained.data_delayed_4__0_ ,\chained.data_delayed_3__31_ ,
  \chained.data_delayed_3__30_ ,\chained.data_delayed_3__29_ ,\chained.data_delayed_3__28_ ,
  \chained.data_delayed_3__27_ ,\chained.data_delayed_3__26_ ,\chained.data_delayed_3__25_ ,
  \chained.data_delayed_3__24_ ,\chained.data_delayed_3__23_ ,
  \chained.data_delayed_3__22_ ,\chained.data_delayed_3__21_ ,\chained.data_delayed_3__20_ ,
  \chained.data_delayed_3__19_ ,\chained.data_delayed_3__18_ ,\chained.data_delayed_3__17_ ,
  \chained.data_delayed_3__16_ ,\chained.data_delayed_3__15_ ,
  \chained.data_delayed_3__14_ ,\chained.data_delayed_3__13_ ,\chained.data_delayed_3__12_ ,
  \chained.data_delayed_3__11_ ,\chained.data_delayed_3__10_ ,\chained.data_delayed_3__9_ ,
  \chained.data_delayed_3__8_ ,\chained.data_delayed_3__7_ ,\chained.data_delayed_3__6_ ,
  \chained.data_delayed_3__5_ ,\chained.data_delayed_3__4_ ,
  \chained.data_delayed_3__3_ ,\chained.data_delayed_3__2_ ,\chained.data_delayed_3__1_ ,
  \chained.data_delayed_3__0_ ,\chained.data_delayed_2__31_ ,\chained.data_delayed_2__30_ ,
  \chained.data_delayed_2__29_ ,\chained.data_delayed_2__28_ ,
  \chained.data_delayed_2__27_ ,\chained.data_delayed_2__26_ ,\chained.data_delayed_2__25_ ,
  \chained.data_delayed_2__24_ ,\chained.data_delayed_2__23_ ,\chained.data_delayed_2__22_ ,
  \chained.data_delayed_2__21_ ,\chained.data_delayed_2__20_ ,
  \chained.data_delayed_2__19_ ,\chained.data_delayed_2__18_ ,\chained.data_delayed_2__17_ ,
  \chained.data_delayed_2__16_ ,\chained.data_delayed_2__15_ ,\chained.data_delayed_2__14_ ,
  \chained.data_delayed_2__13_ ,\chained.data_delayed_2__12_ ,
  \chained.data_delayed_2__11_ ,\chained.data_delayed_2__10_ ,\chained.data_delayed_2__9_ ,
  \chained.data_delayed_2__8_ ,\chained.data_delayed_2__7_ ,\chained.data_delayed_2__6_ ,
  \chained.data_delayed_2__5_ ,\chained.data_delayed_2__4_ ,\chained.data_delayed_2__3_ ,
  \chained.data_delayed_2__2_ ,\chained.data_delayed_2__1_ ,
  \chained.data_delayed_2__0_ ,\chained.data_delayed_1__31_ ,\chained.data_delayed_1__30_ ,
  \chained.data_delayed_1__29_ ,\chained.data_delayed_1__28_ ,\chained.data_delayed_1__27_ ,
  \chained.data_delayed_1__26_ ,\chained.data_delayed_1__25_ ,
  \chained.data_delayed_1__24_ ,\chained.data_delayed_1__23_ ,\chained.data_delayed_1__22_ ,
  \chained.data_delayed_1__21_ ,\chained.data_delayed_1__20_ ,\chained.data_delayed_1__19_ ,
  \chained.data_delayed_1__18_ ,\chained.data_delayed_1__17_ ,
  \chained.data_delayed_1__16_ ,\chained.data_delayed_1__15_ ,\chained.data_delayed_1__14_ ,
  \chained.data_delayed_1__13_ ,\chained.data_delayed_1__12_ ,\chained.data_delayed_1__11_ ,
  \chained.data_delayed_1__10_ ,\chained.data_delayed_1__9_ ,
  \chained.data_delayed_1__8_ ,\chained.data_delayed_1__7_ ,\chained.data_delayed_1__6_ ,
  \chained.data_delayed_1__5_ ,\chained.data_delayed_1__4_ ,\chained.data_delayed_1__3_ ,
  \chained.data_delayed_1__2_ ,\chained.data_delayed_1__1_ ,\chained.data_delayed_1__0_ ;

  bsg_dff_width_p32
  \chained.genblk1_1_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i(data_i),
    .data_o({ \chained.data_delayed_1__31_ , \chained.data_delayed_1__30_ , \chained.data_delayed_1__29_ , \chained.data_delayed_1__28_ , \chained.data_delayed_1__27_ , \chained.data_delayed_1__26_ , \chained.data_delayed_1__25_ , \chained.data_delayed_1__24_ , \chained.data_delayed_1__23_ , \chained.data_delayed_1__22_ , \chained.data_delayed_1__21_ , \chained.data_delayed_1__20_ , \chained.data_delayed_1__19_ , \chained.data_delayed_1__18_ , \chained.data_delayed_1__17_ , \chained.data_delayed_1__16_ , \chained.data_delayed_1__15_ , \chained.data_delayed_1__14_ , \chained.data_delayed_1__13_ , \chained.data_delayed_1__12_ , \chained.data_delayed_1__11_ , \chained.data_delayed_1__10_ , \chained.data_delayed_1__9_ , \chained.data_delayed_1__8_ , \chained.data_delayed_1__7_ , \chained.data_delayed_1__6_ , \chained.data_delayed_1__5_ , \chained.data_delayed_1__4_ , \chained.data_delayed_1__3_ , \chained.data_delayed_1__2_ , \chained.data_delayed_1__1_ , \chained.data_delayed_1__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_2_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_1__31_ , \chained.data_delayed_1__30_ , \chained.data_delayed_1__29_ , \chained.data_delayed_1__28_ , \chained.data_delayed_1__27_ , \chained.data_delayed_1__26_ , \chained.data_delayed_1__25_ , \chained.data_delayed_1__24_ , \chained.data_delayed_1__23_ , \chained.data_delayed_1__22_ , \chained.data_delayed_1__21_ , \chained.data_delayed_1__20_ , \chained.data_delayed_1__19_ , \chained.data_delayed_1__18_ , \chained.data_delayed_1__17_ , \chained.data_delayed_1__16_ , \chained.data_delayed_1__15_ , \chained.data_delayed_1__14_ , \chained.data_delayed_1__13_ , \chained.data_delayed_1__12_ , \chained.data_delayed_1__11_ , \chained.data_delayed_1__10_ , \chained.data_delayed_1__9_ , \chained.data_delayed_1__8_ , \chained.data_delayed_1__7_ , \chained.data_delayed_1__6_ , \chained.data_delayed_1__5_ , \chained.data_delayed_1__4_ , \chained.data_delayed_1__3_ , \chained.data_delayed_1__2_ , \chained.data_delayed_1__1_ , \chained.data_delayed_1__0_  }),
    .data_o({ \chained.data_delayed_2__31_ , \chained.data_delayed_2__30_ , \chained.data_delayed_2__29_ , \chained.data_delayed_2__28_ , \chained.data_delayed_2__27_ , \chained.data_delayed_2__26_ , \chained.data_delayed_2__25_ , \chained.data_delayed_2__24_ , \chained.data_delayed_2__23_ , \chained.data_delayed_2__22_ , \chained.data_delayed_2__21_ , \chained.data_delayed_2__20_ , \chained.data_delayed_2__19_ , \chained.data_delayed_2__18_ , \chained.data_delayed_2__17_ , \chained.data_delayed_2__16_ , \chained.data_delayed_2__15_ , \chained.data_delayed_2__14_ , \chained.data_delayed_2__13_ , \chained.data_delayed_2__12_ , \chained.data_delayed_2__11_ , \chained.data_delayed_2__10_ , \chained.data_delayed_2__9_ , \chained.data_delayed_2__8_ , \chained.data_delayed_2__7_ , \chained.data_delayed_2__6_ , \chained.data_delayed_2__5_ , \chained.data_delayed_2__4_ , \chained.data_delayed_2__3_ , \chained.data_delayed_2__2_ , \chained.data_delayed_2__1_ , \chained.data_delayed_2__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_3_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_2__31_ , \chained.data_delayed_2__30_ , \chained.data_delayed_2__29_ , \chained.data_delayed_2__28_ , \chained.data_delayed_2__27_ , \chained.data_delayed_2__26_ , \chained.data_delayed_2__25_ , \chained.data_delayed_2__24_ , \chained.data_delayed_2__23_ , \chained.data_delayed_2__22_ , \chained.data_delayed_2__21_ , \chained.data_delayed_2__20_ , \chained.data_delayed_2__19_ , \chained.data_delayed_2__18_ , \chained.data_delayed_2__17_ , \chained.data_delayed_2__16_ , \chained.data_delayed_2__15_ , \chained.data_delayed_2__14_ , \chained.data_delayed_2__13_ , \chained.data_delayed_2__12_ , \chained.data_delayed_2__11_ , \chained.data_delayed_2__10_ , \chained.data_delayed_2__9_ , \chained.data_delayed_2__8_ , \chained.data_delayed_2__7_ , \chained.data_delayed_2__6_ , \chained.data_delayed_2__5_ , \chained.data_delayed_2__4_ , \chained.data_delayed_2__3_ , \chained.data_delayed_2__2_ , \chained.data_delayed_2__1_ , \chained.data_delayed_2__0_  }),
    .data_o({ \chained.data_delayed_3__31_ , \chained.data_delayed_3__30_ , \chained.data_delayed_3__29_ , \chained.data_delayed_3__28_ , \chained.data_delayed_3__27_ , \chained.data_delayed_3__26_ , \chained.data_delayed_3__25_ , \chained.data_delayed_3__24_ , \chained.data_delayed_3__23_ , \chained.data_delayed_3__22_ , \chained.data_delayed_3__21_ , \chained.data_delayed_3__20_ , \chained.data_delayed_3__19_ , \chained.data_delayed_3__18_ , \chained.data_delayed_3__17_ , \chained.data_delayed_3__16_ , \chained.data_delayed_3__15_ , \chained.data_delayed_3__14_ , \chained.data_delayed_3__13_ , \chained.data_delayed_3__12_ , \chained.data_delayed_3__11_ , \chained.data_delayed_3__10_ , \chained.data_delayed_3__9_ , \chained.data_delayed_3__8_ , \chained.data_delayed_3__7_ , \chained.data_delayed_3__6_ , \chained.data_delayed_3__5_ , \chained.data_delayed_3__4_ , \chained.data_delayed_3__3_ , \chained.data_delayed_3__2_ , \chained.data_delayed_3__1_ , \chained.data_delayed_3__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_4_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_3__31_ , \chained.data_delayed_3__30_ , \chained.data_delayed_3__29_ , \chained.data_delayed_3__28_ , \chained.data_delayed_3__27_ , \chained.data_delayed_3__26_ , \chained.data_delayed_3__25_ , \chained.data_delayed_3__24_ , \chained.data_delayed_3__23_ , \chained.data_delayed_3__22_ , \chained.data_delayed_3__21_ , \chained.data_delayed_3__20_ , \chained.data_delayed_3__19_ , \chained.data_delayed_3__18_ , \chained.data_delayed_3__17_ , \chained.data_delayed_3__16_ , \chained.data_delayed_3__15_ , \chained.data_delayed_3__14_ , \chained.data_delayed_3__13_ , \chained.data_delayed_3__12_ , \chained.data_delayed_3__11_ , \chained.data_delayed_3__10_ , \chained.data_delayed_3__9_ , \chained.data_delayed_3__8_ , \chained.data_delayed_3__7_ , \chained.data_delayed_3__6_ , \chained.data_delayed_3__5_ , \chained.data_delayed_3__4_ , \chained.data_delayed_3__3_ , \chained.data_delayed_3__2_ , \chained.data_delayed_3__1_ , \chained.data_delayed_3__0_  }),
    .data_o({ \chained.data_delayed_4__31_ , \chained.data_delayed_4__30_ , \chained.data_delayed_4__29_ , \chained.data_delayed_4__28_ , \chained.data_delayed_4__27_ , \chained.data_delayed_4__26_ , \chained.data_delayed_4__25_ , \chained.data_delayed_4__24_ , \chained.data_delayed_4__23_ , \chained.data_delayed_4__22_ , \chained.data_delayed_4__21_ , \chained.data_delayed_4__20_ , \chained.data_delayed_4__19_ , \chained.data_delayed_4__18_ , \chained.data_delayed_4__17_ , \chained.data_delayed_4__16_ , \chained.data_delayed_4__15_ , \chained.data_delayed_4__14_ , \chained.data_delayed_4__13_ , \chained.data_delayed_4__12_ , \chained.data_delayed_4__11_ , \chained.data_delayed_4__10_ , \chained.data_delayed_4__9_ , \chained.data_delayed_4__8_ , \chained.data_delayed_4__7_ , \chained.data_delayed_4__6_ , \chained.data_delayed_4__5_ , \chained.data_delayed_4__4_ , \chained.data_delayed_4__3_ , \chained.data_delayed_4__2_ , \chained.data_delayed_4__1_ , \chained.data_delayed_4__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_5_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_4__31_ , \chained.data_delayed_4__30_ , \chained.data_delayed_4__29_ , \chained.data_delayed_4__28_ , \chained.data_delayed_4__27_ , \chained.data_delayed_4__26_ , \chained.data_delayed_4__25_ , \chained.data_delayed_4__24_ , \chained.data_delayed_4__23_ , \chained.data_delayed_4__22_ , \chained.data_delayed_4__21_ , \chained.data_delayed_4__20_ , \chained.data_delayed_4__19_ , \chained.data_delayed_4__18_ , \chained.data_delayed_4__17_ , \chained.data_delayed_4__16_ , \chained.data_delayed_4__15_ , \chained.data_delayed_4__14_ , \chained.data_delayed_4__13_ , \chained.data_delayed_4__12_ , \chained.data_delayed_4__11_ , \chained.data_delayed_4__10_ , \chained.data_delayed_4__9_ , \chained.data_delayed_4__8_ , \chained.data_delayed_4__7_ , \chained.data_delayed_4__6_ , \chained.data_delayed_4__5_ , \chained.data_delayed_4__4_ , \chained.data_delayed_4__3_ , \chained.data_delayed_4__2_ , \chained.data_delayed_4__1_ , \chained.data_delayed_4__0_  }),
    .data_o({ \chained.data_delayed_5__31_ , \chained.data_delayed_5__30_ , \chained.data_delayed_5__29_ , \chained.data_delayed_5__28_ , \chained.data_delayed_5__27_ , \chained.data_delayed_5__26_ , \chained.data_delayed_5__25_ , \chained.data_delayed_5__24_ , \chained.data_delayed_5__23_ , \chained.data_delayed_5__22_ , \chained.data_delayed_5__21_ , \chained.data_delayed_5__20_ , \chained.data_delayed_5__19_ , \chained.data_delayed_5__18_ , \chained.data_delayed_5__17_ , \chained.data_delayed_5__16_ , \chained.data_delayed_5__15_ , \chained.data_delayed_5__14_ , \chained.data_delayed_5__13_ , \chained.data_delayed_5__12_ , \chained.data_delayed_5__11_ , \chained.data_delayed_5__10_ , \chained.data_delayed_5__9_ , \chained.data_delayed_5__8_ , \chained.data_delayed_5__7_ , \chained.data_delayed_5__6_ , \chained.data_delayed_5__5_ , \chained.data_delayed_5__4_ , \chained.data_delayed_5__3_ , \chained.data_delayed_5__2_ , \chained.data_delayed_5__1_ , \chained.data_delayed_5__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_6_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_5__31_ , \chained.data_delayed_5__30_ , \chained.data_delayed_5__29_ , \chained.data_delayed_5__28_ , \chained.data_delayed_5__27_ , \chained.data_delayed_5__26_ , \chained.data_delayed_5__25_ , \chained.data_delayed_5__24_ , \chained.data_delayed_5__23_ , \chained.data_delayed_5__22_ , \chained.data_delayed_5__21_ , \chained.data_delayed_5__20_ , \chained.data_delayed_5__19_ , \chained.data_delayed_5__18_ , \chained.data_delayed_5__17_ , \chained.data_delayed_5__16_ , \chained.data_delayed_5__15_ , \chained.data_delayed_5__14_ , \chained.data_delayed_5__13_ , \chained.data_delayed_5__12_ , \chained.data_delayed_5__11_ , \chained.data_delayed_5__10_ , \chained.data_delayed_5__9_ , \chained.data_delayed_5__8_ , \chained.data_delayed_5__7_ , \chained.data_delayed_5__6_ , \chained.data_delayed_5__5_ , \chained.data_delayed_5__4_ , \chained.data_delayed_5__3_ , \chained.data_delayed_5__2_ , \chained.data_delayed_5__1_ , \chained.data_delayed_5__0_  }),
    .data_o({ \chained.data_delayed_6__31_ , \chained.data_delayed_6__30_ , \chained.data_delayed_6__29_ , \chained.data_delayed_6__28_ , \chained.data_delayed_6__27_ , \chained.data_delayed_6__26_ , \chained.data_delayed_6__25_ , \chained.data_delayed_6__24_ , \chained.data_delayed_6__23_ , \chained.data_delayed_6__22_ , \chained.data_delayed_6__21_ , \chained.data_delayed_6__20_ , \chained.data_delayed_6__19_ , \chained.data_delayed_6__18_ , \chained.data_delayed_6__17_ , \chained.data_delayed_6__16_ , \chained.data_delayed_6__15_ , \chained.data_delayed_6__14_ , \chained.data_delayed_6__13_ , \chained.data_delayed_6__12_ , \chained.data_delayed_6__11_ , \chained.data_delayed_6__10_ , \chained.data_delayed_6__9_ , \chained.data_delayed_6__8_ , \chained.data_delayed_6__7_ , \chained.data_delayed_6__6_ , \chained.data_delayed_6__5_ , \chained.data_delayed_6__4_ , \chained.data_delayed_6__3_ , \chained.data_delayed_6__2_ , \chained.data_delayed_6__1_ , \chained.data_delayed_6__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_7_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_6__31_ , \chained.data_delayed_6__30_ , \chained.data_delayed_6__29_ , \chained.data_delayed_6__28_ , \chained.data_delayed_6__27_ , \chained.data_delayed_6__26_ , \chained.data_delayed_6__25_ , \chained.data_delayed_6__24_ , \chained.data_delayed_6__23_ , \chained.data_delayed_6__22_ , \chained.data_delayed_6__21_ , \chained.data_delayed_6__20_ , \chained.data_delayed_6__19_ , \chained.data_delayed_6__18_ , \chained.data_delayed_6__17_ , \chained.data_delayed_6__16_ , \chained.data_delayed_6__15_ , \chained.data_delayed_6__14_ , \chained.data_delayed_6__13_ , \chained.data_delayed_6__12_ , \chained.data_delayed_6__11_ , \chained.data_delayed_6__10_ , \chained.data_delayed_6__9_ , \chained.data_delayed_6__8_ , \chained.data_delayed_6__7_ , \chained.data_delayed_6__6_ , \chained.data_delayed_6__5_ , \chained.data_delayed_6__4_ , \chained.data_delayed_6__3_ , \chained.data_delayed_6__2_ , \chained.data_delayed_6__1_ , \chained.data_delayed_6__0_  }),
    .data_o({ \chained.data_delayed_7__31_ , \chained.data_delayed_7__30_ , \chained.data_delayed_7__29_ , \chained.data_delayed_7__28_ , \chained.data_delayed_7__27_ , \chained.data_delayed_7__26_ , \chained.data_delayed_7__25_ , \chained.data_delayed_7__24_ , \chained.data_delayed_7__23_ , \chained.data_delayed_7__22_ , \chained.data_delayed_7__21_ , \chained.data_delayed_7__20_ , \chained.data_delayed_7__19_ , \chained.data_delayed_7__18_ , \chained.data_delayed_7__17_ , \chained.data_delayed_7__16_ , \chained.data_delayed_7__15_ , \chained.data_delayed_7__14_ , \chained.data_delayed_7__13_ , \chained.data_delayed_7__12_ , \chained.data_delayed_7__11_ , \chained.data_delayed_7__10_ , \chained.data_delayed_7__9_ , \chained.data_delayed_7__8_ , \chained.data_delayed_7__7_ , \chained.data_delayed_7__6_ , \chained.data_delayed_7__5_ , \chained.data_delayed_7__4_ , \chained.data_delayed_7__3_ , \chained.data_delayed_7__2_ , \chained.data_delayed_7__1_ , \chained.data_delayed_7__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_8_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_7__31_ , \chained.data_delayed_7__30_ , \chained.data_delayed_7__29_ , \chained.data_delayed_7__28_ , \chained.data_delayed_7__27_ , \chained.data_delayed_7__26_ , \chained.data_delayed_7__25_ , \chained.data_delayed_7__24_ , \chained.data_delayed_7__23_ , \chained.data_delayed_7__22_ , \chained.data_delayed_7__21_ , \chained.data_delayed_7__20_ , \chained.data_delayed_7__19_ , \chained.data_delayed_7__18_ , \chained.data_delayed_7__17_ , \chained.data_delayed_7__16_ , \chained.data_delayed_7__15_ , \chained.data_delayed_7__14_ , \chained.data_delayed_7__13_ , \chained.data_delayed_7__12_ , \chained.data_delayed_7__11_ , \chained.data_delayed_7__10_ , \chained.data_delayed_7__9_ , \chained.data_delayed_7__8_ , \chained.data_delayed_7__7_ , \chained.data_delayed_7__6_ , \chained.data_delayed_7__5_ , \chained.data_delayed_7__4_ , \chained.data_delayed_7__3_ , \chained.data_delayed_7__2_ , \chained.data_delayed_7__1_ , \chained.data_delayed_7__0_  }),
    .data_o({ \chained.data_delayed_8__31_ , \chained.data_delayed_8__30_ , \chained.data_delayed_8__29_ , \chained.data_delayed_8__28_ , \chained.data_delayed_8__27_ , \chained.data_delayed_8__26_ , \chained.data_delayed_8__25_ , \chained.data_delayed_8__24_ , \chained.data_delayed_8__23_ , \chained.data_delayed_8__22_ , \chained.data_delayed_8__21_ , \chained.data_delayed_8__20_ , \chained.data_delayed_8__19_ , \chained.data_delayed_8__18_ , \chained.data_delayed_8__17_ , \chained.data_delayed_8__16_ , \chained.data_delayed_8__15_ , \chained.data_delayed_8__14_ , \chained.data_delayed_8__13_ , \chained.data_delayed_8__12_ , \chained.data_delayed_8__11_ , \chained.data_delayed_8__10_ , \chained.data_delayed_8__9_ , \chained.data_delayed_8__8_ , \chained.data_delayed_8__7_ , \chained.data_delayed_8__6_ , \chained.data_delayed_8__5_ , \chained.data_delayed_8__4_ , \chained.data_delayed_8__3_ , \chained.data_delayed_8__2_ , \chained.data_delayed_8__1_ , \chained.data_delayed_8__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_9_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_8__31_ , \chained.data_delayed_8__30_ , \chained.data_delayed_8__29_ , \chained.data_delayed_8__28_ , \chained.data_delayed_8__27_ , \chained.data_delayed_8__26_ , \chained.data_delayed_8__25_ , \chained.data_delayed_8__24_ , \chained.data_delayed_8__23_ , \chained.data_delayed_8__22_ , \chained.data_delayed_8__21_ , \chained.data_delayed_8__20_ , \chained.data_delayed_8__19_ , \chained.data_delayed_8__18_ , \chained.data_delayed_8__17_ , \chained.data_delayed_8__16_ , \chained.data_delayed_8__15_ , \chained.data_delayed_8__14_ , \chained.data_delayed_8__13_ , \chained.data_delayed_8__12_ , \chained.data_delayed_8__11_ , \chained.data_delayed_8__10_ , \chained.data_delayed_8__9_ , \chained.data_delayed_8__8_ , \chained.data_delayed_8__7_ , \chained.data_delayed_8__6_ , \chained.data_delayed_8__5_ , \chained.data_delayed_8__4_ , \chained.data_delayed_8__3_ , \chained.data_delayed_8__2_ , \chained.data_delayed_8__1_ , \chained.data_delayed_8__0_  }),
    .data_o({ \chained.data_delayed_9__31_ , \chained.data_delayed_9__30_ , \chained.data_delayed_9__29_ , \chained.data_delayed_9__28_ , \chained.data_delayed_9__27_ , \chained.data_delayed_9__26_ , \chained.data_delayed_9__25_ , \chained.data_delayed_9__24_ , \chained.data_delayed_9__23_ , \chained.data_delayed_9__22_ , \chained.data_delayed_9__21_ , \chained.data_delayed_9__20_ , \chained.data_delayed_9__19_ , \chained.data_delayed_9__18_ , \chained.data_delayed_9__17_ , \chained.data_delayed_9__16_ , \chained.data_delayed_9__15_ , \chained.data_delayed_9__14_ , \chained.data_delayed_9__13_ , \chained.data_delayed_9__12_ , \chained.data_delayed_9__11_ , \chained.data_delayed_9__10_ , \chained.data_delayed_9__9_ , \chained.data_delayed_9__8_ , \chained.data_delayed_9__7_ , \chained.data_delayed_9__6_ , \chained.data_delayed_9__5_ , \chained.data_delayed_9__4_ , \chained.data_delayed_9__3_ , \chained.data_delayed_9__2_ , \chained.data_delayed_9__1_ , \chained.data_delayed_9__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_10_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_9__31_ , \chained.data_delayed_9__30_ , \chained.data_delayed_9__29_ , \chained.data_delayed_9__28_ , \chained.data_delayed_9__27_ , \chained.data_delayed_9__26_ , \chained.data_delayed_9__25_ , \chained.data_delayed_9__24_ , \chained.data_delayed_9__23_ , \chained.data_delayed_9__22_ , \chained.data_delayed_9__21_ , \chained.data_delayed_9__20_ , \chained.data_delayed_9__19_ , \chained.data_delayed_9__18_ , \chained.data_delayed_9__17_ , \chained.data_delayed_9__16_ , \chained.data_delayed_9__15_ , \chained.data_delayed_9__14_ , \chained.data_delayed_9__13_ , \chained.data_delayed_9__12_ , \chained.data_delayed_9__11_ , \chained.data_delayed_9__10_ , \chained.data_delayed_9__9_ , \chained.data_delayed_9__8_ , \chained.data_delayed_9__7_ , \chained.data_delayed_9__6_ , \chained.data_delayed_9__5_ , \chained.data_delayed_9__4_ , \chained.data_delayed_9__3_ , \chained.data_delayed_9__2_ , \chained.data_delayed_9__1_ , \chained.data_delayed_9__0_  }),
    .data_o({ \chained.data_delayed_10__31_ , \chained.data_delayed_10__30_ , \chained.data_delayed_10__29_ , \chained.data_delayed_10__28_ , \chained.data_delayed_10__27_ , \chained.data_delayed_10__26_ , \chained.data_delayed_10__25_ , \chained.data_delayed_10__24_ , \chained.data_delayed_10__23_ , \chained.data_delayed_10__22_ , \chained.data_delayed_10__21_ , \chained.data_delayed_10__20_ , \chained.data_delayed_10__19_ , \chained.data_delayed_10__18_ , \chained.data_delayed_10__17_ , \chained.data_delayed_10__16_ , \chained.data_delayed_10__15_ , \chained.data_delayed_10__14_ , \chained.data_delayed_10__13_ , \chained.data_delayed_10__12_ , \chained.data_delayed_10__11_ , \chained.data_delayed_10__10_ , \chained.data_delayed_10__9_ , \chained.data_delayed_10__8_ , \chained.data_delayed_10__7_ , \chained.data_delayed_10__6_ , \chained.data_delayed_10__5_ , \chained.data_delayed_10__4_ , \chained.data_delayed_10__3_ , \chained.data_delayed_10__2_ , \chained.data_delayed_10__1_ , \chained.data_delayed_10__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_11_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_10__31_ , \chained.data_delayed_10__30_ , \chained.data_delayed_10__29_ , \chained.data_delayed_10__28_ , \chained.data_delayed_10__27_ , \chained.data_delayed_10__26_ , \chained.data_delayed_10__25_ , \chained.data_delayed_10__24_ , \chained.data_delayed_10__23_ , \chained.data_delayed_10__22_ , \chained.data_delayed_10__21_ , \chained.data_delayed_10__20_ , \chained.data_delayed_10__19_ , \chained.data_delayed_10__18_ , \chained.data_delayed_10__17_ , \chained.data_delayed_10__16_ , \chained.data_delayed_10__15_ , \chained.data_delayed_10__14_ , \chained.data_delayed_10__13_ , \chained.data_delayed_10__12_ , \chained.data_delayed_10__11_ , \chained.data_delayed_10__10_ , \chained.data_delayed_10__9_ , \chained.data_delayed_10__8_ , \chained.data_delayed_10__7_ , \chained.data_delayed_10__6_ , \chained.data_delayed_10__5_ , \chained.data_delayed_10__4_ , \chained.data_delayed_10__3_ , \chained.data_delayed_10__2_ , \chained.data_delayed_10__1_ , \chained.data_delayed_10__0_  }),
    .data_o({ \chained.data_delayed_11__31_ , \chained.data_delayed_11__30_ , \chained.data_delayed_11__29_ , \chained.data_delayed_11__28_ , \chained.data_delayed_11__27_ , \chained.data_delayed_11__26_ , \chained.data_delayed_11__25_ , \chained.data_delayed_11__24_ , \chained.data_delayed_11__23_ , \chained.data_delayed_11__22_ , \chained.data_delayed_11__21_ , \chained.data_delayed_11__20_ , \chained.data_delayed_11__19_ , \chained.data_delayed_11__18_ , \chained.data_delayed_11__17_ , \chained.data_delayed_11__16_ , \chained.data_delayed_11__15_ , \chained.data_delayed_11__14_ , \chained.data_delayed_11__13_ , \chained.data_delayed_11__12_ , \chained.data_delayed_11__11_ , \chained.data_delayed_11__10_ , \chained.data_delayed_11__9_ , \chained.data_delayed_11__8_ , \chained.data_delayed_11__7_ , \chained.data_delayed_11__6_ , \chained.data_delayed_11__5_ , \chained.data_delayed_11__4_ , \chained.data_delayed_11__3_ , \chained.data_delayed_11__2_ , \chained.data_delayed_11__1_ , \chained.data_delayed_11__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_12_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_11__31_ , \chained.data_delayed_11__30_ , \chained.data_delayed_11__29_ , \chained.data_delayed_11__28_ , \chained.data_delayed_11__27_ , \chained.data_delayed_11__26_ , \chained.data_delayed_11__25_ , \chained.data_delayed_11__24_ , \chained.data_delayed_11__23_ , \chained.data_delayed_11__22_ , \chained.data_delayed_11__21_ , \chained.data_delayed_11__20_ , \chained.data_delayed_11__19_ , \chained.data_delayed_11__18_ , \chained.data_delayed_11__17_ , \chained.data_delayed_11__16_ , \chained.data_delayed_11__15_ , \chained.data_delayed_11__14_ , \chained.data_delayed_11__13_ , \chained.data_delayed_11__12_ , \chained.data_delayed_11__11_ , \chained.data_delayed_11__10_ , \chained.data_delayed_11__9_ , \chained.data_delayed_11__8_ , \chained.data_delayed_11__7_ , \chained.data_delayed_11__6_ , \chained.data_delayed_11__5_ , \chained.data_delayed_11__4_ , \chained.data_delayed_11__3_ , \chained.data_delayed_11__2_ , \chained.data_delayed_11__1_ , \chained.data_delayed_11__0_  }),
    .data_o({ \chained.data_delayed_12__31_ , \chained.data_delayed_12__30_ , \chained.data_delayed_12__29_ , \chained.data_delayed_12__28_ , \chained.data_delayed_12__27_ , \chained.data_delayed_12__26_ , \chained.data_delayed_12__25_ , \chained.data_delayed_12__24_ , \chained.data_delayed_12__23_ , \chained.data_delayed_12__22_ , \chained.data_delayed_12__21_ , \chained.data_delayed_12__20_ , \chained.data_delayed_12__19_ , \chained.data_delayed_12__18_ , \chained.data_delayed_12__17_ , \chained.data_delayed_12__16_ , \chained.data_delayed_12__15_ , \chained.data_delayed_12__14_ , \chained.data_delayed_12__13_ , \chained.data_delayed_12__12_ , \chained.data_delayed_12__11_ , \chained.data_delayed_12__10_ , \chained.data_delayed_12__9_ , \chained.data_delayed_12__8_ , \chained.data_delayed_12__7_ , \chained.data_delayed_12__6_ , \chained.data_delayed_12__5_ , \chained.data_delayed_12__4_ , \chained.data_delayed_12__3_ , \chained.data_delayed_12__2_ , \chained.data_delayed_12__1_ , \chained.data_delayed_12__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_13_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_12__31_ , \chained.data_delayed_12__30_ , \chained.data_delayed_12__29_ , \chained.data_delayed_12__28_ , \chained.data_delayed_12__27_ , \chained.data_delayed_12__26_ , \chained.data_delayed_12__25_ , \chained.data_delayed_12__24_ , \chained.data_delayed_12__23_ , \chained.data_delayed_12__22_ , \chained.data_delayed_12__21_ , \chained.data_delayed_12__20_ , \chained.data_delayed_12__19_ , \chained.data_delayed_12__18_ , \chained.data_delayed_12__17_ , \chained.data_delayed_12__16_ , \chained.data_delayed_12__15_ , \chained.data_delayed_12__14_ , \chained.data_delayed_12__13_ , \chained.data_delayed_12__12_ , \chained.data_delayed_12__11_ , \chained.data_delayed_12__10_ , \chained.data_delayed_12__9_ , \chained.data_delayed_12__8_ , \chained.data_delayed_12__7_ , \chained.data_delayed_12__6_ , \chained.data_delayed_12__5_ , \chained.data_delayed_12__4_ , \chained.data_delayed_12__3_ , \chained.data_delayed_12__2_ , \chained.data_delayed_12__1_ , \chained.data_delayed_12__0_  }),
    .data_o({ \chained.data_delayed_13__31_ , \chained.data_delayed_13__30_ , \chained.data_delayed_13__29_ , \chained.data_delayed_13__28_ , \chained.data_delayed_13__27_ , \chained.data_delayed_13__26_ , \chained.data_delayed_13__25_ , \chained.data_delayed_13__24_ , \chained.data_delayed_13__23_ , \chained.data_delayed_13__22_ , \chained.data_delayed_13__21_ , \chained.data_delayed_13__20_ , \chained.data_delayed_13__19_ , \chained.data_delayed_13__18_ , \chained.data_delayed_13__17_ , \chained.data_delayed_13__16_ , \chained.data_delayed_13__15_ , \chained.data_delayed_13__14_ , \chained.data_delayed_13__13_ , \chained.data_delayed_13__12_ , \chained.data_delayed_13__11_ , \chained.data_delayed_13__10_ , \chained.data_delayed_13__9_ , \chained.data_delayed_13__8_ , \chained.data_delayed_13__7_ , \chained.data_delayed_13__6_ , \chained.data_delayed_13__5_ , \chained.data_delayed_13__4_ , \chained.data_delayed_13__3_ , \chained.data_delayed_13__2_ , \chained.data_delayed_13__1_ , \chained.data_delayed_13__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_14_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_13__31_ , \chained.data_delayed_13__30_ , \chained.data_delayed_13__29_ , \chained.data_delayed_13__28_ , \chained.data_delayed_13__27_ , \chained.data_delayed_13__26_ , \chained.data_delayed_13__25_ , \chained.data_delayed_13__24_ , \chained.data_delayed_13__23_ , \chained.data_delayed_13__22_ , \chained.data_delayed_13__21_ , \chained.data_delayed_13__20_ , \chained.data_delayed_13__19_ , \chained.data_delayed_13__18_ , \chained.data_delayed_13__17_ , \chained.data_delayed_13__16_ , \chained.data_delayed_13__15_ , \chained.data_delayed_13__14_ , \chained.data_delayed_13__13_ , \chained.data_delayed_13__12_ , \chained.data_delayed_13__11_ , \chained.data_delayed_13__10_ , \chained.data_delayed_13__9_ , \chained.data_delayed_13__8_ , \chained.data_delayed_13__7_ , \chained.data_delayed_13__6_ , \chained.data_delayed_13__5_ , \chained.data_delayed_13__4_ , \chained.data_delayed_13__3_ , \chained.data_delayed_13__2_ , \chained.data_delayed_13__1_ , \chained.data_delayed_13__0_  }),
    .data_o({ \chained.data_delayed_14__31_ , \chained.data_delayed_14__30_ , \chained.data_delayed_14__29_ , \chained.data_delayed_14__28_ , \chained.data_delayed_14__27_ , \chained.data_delayed_14__26_ , \chained.data_delayed_14__25_ , \chained.data_delayed_14__24_ , \chained.data_delayed_14__23_ , \chained.data_delayed_14__22_ , \chained.data_delayed_14__21_ , \chained.data_delayed_14__20_ , \chained.data_delayed_14__19_ , \chained.data_delayed_14__18_ , \chained.data_delayed_14__17_ , \chained.data_delayed_14__16_ , \chained.data_delayed_14__15_ , \chained.data_delayed_14__14_ , \chained.data_delayed_14__13_ , \chained.data_delayed_14__12_ , \chained.data_delayed_14__11_ , \chained.data_delayed_14__10_ , \chained.data_delayed_14__9_ , \chained.data_delayed_14__8_ , \chained.data_delayed_14__7_ , \chained.data_delayed_14__6_ , \chained.data_delayed_14__5_ , \chained.data_delayed_14__4_ , \chained.data_delayed_14__3_ , \chained.data_delayed_14__2_ , \chained.data_delayed_14__1_ , \chained.data_delayed_14__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_15_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_14__31_ , \chained.data_delayed_14__30_ , \chained.data_delayed_14__29_ , \chained.data_delayed_14__28_ , \chained.data_delayed_14__27_ , \chained.data_delayed_14__26_ , \chained.data_delayed_14__25_ , \chained.data_delayed_14__24_ , \chained.data_delayed_14__23_ , \chained.data_delayed_14__22_ , \chained.data_delayed_14__21_ , \chained.data_delayed_14__20_ , \chained.data_delayed_14__19_ , \chained.data_delayed_14__18_ , \chained.data_delayed_14__17_ , \chained.data_delayed_14__16_ , \chained.data_delayed_14__15_ , \chained.data_delayed_14__14_ , \chained.data_delayed_14__13_ , \chained.data_delayed_14__12_ , \chained.data_delayed_14__11_ , \chained.data_delayed_14__10_ , \chained.data_delayed_14__9_ , \chained.data_delayed_14__8_ , \chained.data_delayed_14__7_ , \chained.data_delayed_14__6_ , \chained.data_delayed_14__5_ , \chained.data_delayed_14__4_ , \chained.data_delayed_14__3_ , \chained.data_delayed_14__2_ , \chained.data_delayed_14__1_ , \chained.data_delayed_14__0_  }),
    .data_o({ \chained.data_delayed_15__31_ , \chained.data_delayed_15__30_ , \chained.data_delayed_15__29_ , \chained.data_delayed_15__28_ , \chained.data_delayed_15__27_ , \chained.data_delayed_15__26_ , \chained.data_delayed_15__25_ , \chained.data_delayed_15__24_ , \chained.data_delayed_15__23_ , \chained.data_delayed_15__22_ , \chained.data_delayed_15__21_ , \chained.data_delayed_15__20_ , \chained.data_delayed_15__19_ , \chained.data_delayed_15__18_ , \chained.data_delayed_15__17_ , \chained.data_delayed_15__16_ , \chained.data_delayed_15__15_ , \chained.data_delayed_15__14_ , \chained.data_delayed_15__13_ , \chained.data_delayed_15__12_ , \chained.data_delayed_15__11_ , \chained.data_delayed_15__10_ , \chained.data_delayed_15__9_ , \chained.data_delayed_15__8_ , \chained.data_delayed_15__7_ , \chained.data_delayed_15__6_ , \chained.data_delayed_15__5_ , \chained.data_delayed_15__4_ , \chained.data_delayed_15__3_ , \chained.data_delayed_15__2_ , \chained.data_delayed_15__1_ , \chained.data_delayed_15__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_16_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_15__31_ , \chained.data_delayed_15__30_ , \chained.data_delayed_15__29_ , \chained.data_delayed_15__28_ , \chained.data_delayed_15__27_ , \chained.data_delayed_15__26_ , \chained.data_delayed_15__25_ , \chained.data_delayed_15__24_ , \chained.data_delayed_15__23_ , \chained.data_delayed_15__22_ , \chained.data_delayed_15__21_ , \chained.data_delayed_15__20_ , \chained.data_delayed_15__19_ , \chained.data_delayed_15__18_ , \chained.data_delayed_15__17_ , \chained.data_delayed_15__16_ , \chained.data_delayed_15__15_ , \chained.data_delayed_15__14_ , \chained.data_delayed_15__13_ , \chained.data_delayed_15__12_ , \chained.data_delayed_15__11_ , \chained.data_delayed_15__10_ , \chained.data_delayed_15__9_ , \chained.data_delayed_15__8_ , \chained.data_delayed_15__7_ , \chained.data_delayed_15__6_ , \chained.data_delayed_15__5_ , \chained.data_delayed_15__4_ , \chained.data_delayed_15__3_ , \chained.data_delayed_15__2_ , \chained.data_delayed_15__1_ , \chained.data_delayed_15__0_  }),
    .data_o({ \chained.data_delayed_16__31_ , \chained.data_delayed_16__30_ , \chained.data_delayed_16__29_ , \chained.data_delayed_16__28_ , \chained.data_delayed_16__27_ , \chained.data_delayed_16__26_ , \chained.data_delayed_16__25_ , \chained.data_delayed_16__24_ , \chained.data_delayed_16__23_ , \chained.data_delayed_16__22_ , \chained.data_delayed_16__21_ , \chained.data_delayed_16__20_ , \chained.data_delayed_16__19_ , \chained.data_delayed_16__18_ , \chained.data_delayed_16__17_ , \chained.data_delayed_16__16_ , \chained.data_delayed_16__15_ , \chained.data_delayed_16__14_ , \chained.data_delayed_16__13_ , \chained.data_delayed_16__12_ , \chained.data_delayed_16__11_ , \chained.data_delayed_16__10_ , \chained.data_delayed_16__9_ , \chained.data_delayed_16__8_ , \chained.data_delayed_16__7_ , \chained.data_delayed_16__6_ , \chained.data_delayed_16__5_ , \chained.data_delayed_16__4_ , \chained.data_delayed_16__3_ , \chained.data_delayed_16__2_ , \chained.data_delayed_16__1_ , \chained.data_delayed_16__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_17_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_16__31_ , \chained.data_delayed_16__30_ , \chained.data_delayed_16__29_ , \chained.data_delayed_16__28_ , \chained.data_delayed_16__27_ , \chained.data_delayed_16__26_ , \chained.data_delayed_16__25_ , \chained.data_delayed_16__24_ , \chained.data_delayed_16__23_ , \chained.data_delayed_16__22_ , \chained.data_delayed_16__21_ , \chained.data_delayed_16__20_ , \chained.data_delayed_16__19_ , \chained.data_delayed_16__18_ , \chained.data_delayed_16__17_ , \chained.data_delayed_16__16_ , \chained.data_delayed_16__15_ , \chained.data_delayed_16__14_ , \chained.data_delayed_16__13_ , \chained.data_delayed_16__12_ , \chained.data_delayed_16__11_ , \chained.data_delayed_16__10_ , \chained.data_delayed_16__9_ , \chained.data_delayed_16__8_ , \chained.data_delayed_16__7_ , \chained.data_delayed_16__6_ , \chained.data_delayed_16__5_ , \chained.data_delayed_16__4_ , \chained.data_delayed_16__3_ , \chained.data_delayed_16__2_ , \chained.data_delayed_16__1_ , \chained.data_delayed_16__0_  }),
    .data_o({ \chained.data_delayed_17__31_ , \chained.data_delayed_17__30_ , \chained.data_delayed_17__29_ , \chained.data_delayed_17__28_ , \chained.data_delayed_17__27_ , \chained.data_delayed_17__26_ , \chained.data_delayed_17__25_ , \chained.data_delayed_17__24_ , \chained.data_delayed_17__23_ , \chained.data_delayed_17__22_ , \chained.data_delayed_17__21_ , \chained.data_delayed_17__20_ , \chained.data_delayed_17__19_ , \chained.data_delayed_17__18_ , \chained.data_delayed_17__17_ , \chained.data_delayed_17__16_ , \chained.data_delayed_17__15_ , \chained.data_delayed_17__14_ , \chained.data_delayed_17__13_ , \chained.data_delayed_17__12_ , \chained.data_delayed_17__11_ , \chained.data_delayed_17__10_ , \chained.data_delayed_17__9_ , \chained.data_delayed_17__8_ , \chained.data_delayed_17__7_ , \chained.data_delayed_17__6_ , \chained.data_delayed_17__5_ , \chained.data_delayed_17__4_ , \chained.data_delayed_17__3_ , \chained.data_delayed_17__2_ , \chained.data_delayed_17__1_ , \chained.data_delayed_17__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_18_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_17__31_ , \chained.data_delayed_17__30_ , \chained.data_delayed_17__29_ , \chained.data_delayed_17__28_ , \chained.data_delayed_17__27_ , \chained.data_delayed_17__26_ , \chained.data_delayed_17__25_ , \chained.data_delayed_17__24_ , \chained.data_delayed_17__23_ , \chained.data_delayed_17__22_ , \chained.data_delayed_17__21_ , \chained.data_delayed_17__20_ , \chained.data_delayed_17__19_ , \chained.data_delayed_17__18_ , \chained.data_delayed_17__17_ , \chained.data_delayed_17__16_ , \chained.data_delayed_17__15_ , \chained.data_delayed_17__14_ , \chained.data_delayed_17__13_ , \chained.data_delayed_17__12_ , \chained.data_delayed_17__11_ , \chained.data_delayed_17__10_ , \chained.data_delayed_17__9_ , \chained.data_delayed_17__8_ , \chained.data_delayed_17__7_ , \chained.data_delayed_17__6_ , \chained.data_delayed_17__5_ , \chained.data_delayed_17__4_ , \chained.data_delayed_17__3_ , \chained.data_delayed_17__2_ , \chained.data_delayed_17__1_ , \chained.data_delayed_17__0_  }),
    .data_o({ \chained.data_delayed_18__31_ , \chained.data_delayed_18__30_ , \chained.data_delayed_18__29_ , \chained.data_delayed_18__28_ , \chained.data_delayed_18__27_ , \chained.data_delayed_18__26_ , \chained.data_delayed_18__25_ , \chained.data_delayed_18__24_ , \chained.data_delayed_18__23_ , \chained.data_delayed_18__22_ , \chained.data_delayed_18__21_ , \chained.data_delayed_18__20_ , \chained.data_delayed_18__19_ , \chained.data_delayed_18__18_ , \chained.data_delayed_18__17_ , \chained.data_delayed_18__16_ , \chained.data_delayed_18__15_ , \chained.data_delayed_18__14_ , \chained.data_delayed_18__13_ , \chained.data_delayed_18__12_ , \chained.data_delayed_18__11_ , \chained.data_delayed_18__10_ , \chained.data_delayed_18__9_ , \chained.data_delayed_18__8_ , \chained.data_delayed_18__7_ , \chained.data_delayed_18__6_ , \chained.data_delayed_18__5_ , \chained.data_delayed_18__4_ , \chained.data_delayed_18__3_ , \chained.data_delayed_18__2_ , \chained.data_delayed_18__1_ , \chained.data_delayed_18__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_19_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_18__31_ , \chained.data_delayed_18__30_ , \chained.data_delayed_18__29_ , \chained.data_delayed_18__28_ , \chained.data_delayed_18__27_ , \chained.data_delayed_18__26_ , \chained.data_delayed_18__25_ , \chained.data_delayed_18__24_ , \chained.data_delayed_18__23_ , \chained.data_delayed_18__22_ , \chained.data_delayed_18__21_ , \chained.data_delayed_18__20_ , \chained.data_delayed_18__19_ , \chained.data_delayed_18__18_ , \chained.data_delayed_18__17_ , \chained.data_delayed_18__16_ , \chained.data_delayed_18__15_ , \chained.data_delayed_18__14_ , \chained.data_delayed_18__13_ , \chained.data_delayed_18__12_ , \chained.data_delayed_18__11_ , \chained.data_delayed_18__10_ , \chained.data_delayed_18__9_ , \chained.data_delayed_18__8_ , \chained.data_delayed_18__7_ , \chained.data_delayed_18__6_ , \chained.data_delayed_18__5_ , \chained.data_delayed_18__4_ , \chained.data_delayed_18__3_ , \chained.data_delayed_18__2_ , \chained.data_delayed_18__1_ , \chained.data_delayed_18__0_  }),
    .data_o({ \chained.data_delayed_19__31_ , \chained.data_delayed_19__30_ , \chained.data_delayed_19__29_ , \chained.data_delayed_19__28_ , \chained.data_delayed_19__27_ , \chained.data_delayed_19__26_ , \chained.data_delayed_19__25_ , \chained.data_delayed_19__24_ , \chained.data_delayed_19__23_ , \chained.data_delayed_19__22_ , \chained.data_delayed_19__21_ , \chained.data_delayed_19__20_ , \chained.data_delayed_19__19_ , \chained.data_delayed_19__18_ , \chained.data_delayed_19__17_ , \chained.data_delayed_19__16_ , \chained.data_delayed_19__15_ , \chained.data_delayed_19__14_ , \chained.data_delayed_19__13_ , \chained.data_delayed_19__12_ , \chained.data_delayed_19__11_ , \chained.data_delayed_19__10_ , \chained.data_delayed_19__9_ , \chained.data_delayed_19__8_ , \chained.data_delayed_19__7_ , \chained.data_delayed_19__6_ , \chained.data_delayed_19__5_ , \chained.data_delayed_19__4_ , \chained.data_delayed_19__3_ , \chained.data_delayed_19__2_ , \chained.data_delayed_19__1_ , \chained.data_delayed_19__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_20_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_19__31_ , \chained.data_delayed_19__30_ , \chained.data_delayed_19__29_ , \chained.data_delayed_19__28_ , \chained.data_delayed_19__27_ , \chained.data_delayed_19__26_ , \chained.data_delayed_19__25_ , \chained.data_delayed_19__24_ , \chained.data_delayed_19__23_ , \chained.data_delayed_19__22_ , \chained.data_delayed_19__21_ , \chained.data_delayed_19__20_ , \chained.data_delayed_19__19_ , \chained.data_delayed_19__18_ , \chained.data_delayed_19__17_ , \chained.data_delayed_19__16_ , \chained.data_delayed_19__15_ , \chained.data_delayed_19__14_ , \chained.data_delayed_19__13_ , \chained.data_delayed_19__12_ , \chained.data_delayed_19__11_ , \chained.data_delayed_19__10_ , \chained.data_delayed_19__9_ , \chained.data_delayed_19__8_ , \chained.data_delayed_19__7_ , \chained.data_delayed_19__6_ , \chained.data_delayed_19__5_ , \chained.data_delayed_19__4_ , \chained.data_delayed_19__3_ , \chained.data_delayed_19__2_ , \chained.data_delayed_19__1_ , \chained.data_delayed_19__0_  }),
    .data_o({ \chained.data_delayed_20__31_ , \chained.data_delayed_20__30_ , \chained.data_delayed_20__29_ , \chained.data_delayed_20__28_ , \chained.data_delayed_20__27_ , \chained.data_delayed_20__26_ , \chained.data_delayed_20__25_ , \chained.data_delayed_20__24_ , \chained.data_delayed_20__23_ , \chained.data_delayed_20__22_ , \chained.data_delayed_20__21_ , \chained.data_delayed_20__20_ , \chained.data_delayed_20__19_ , \chained.data_delayed_20__18_ , \chained.data_delayed_20__17_ , \chained.data_delayed_20__16_ , \chained.data_delayed_20__15_ , \chained.data_delayed_20__14_ , \chained.data_delayed_20__13_ , \chained.data_delayed_20__12_ , \chained.data_delayed_20__11_ , \chained.data_delayed_20__10_ , \chained.data_delayed_20__9_ , \chained.data_delayed_20__8_ , \chained.data_delayed_20__7_ , \chained.data_delayed_20__6_ , \chained.data_delayed_20__5_ , \chained.data_delayed_20__4_ , \chained.data_delayed_20__3_ , \chained.data_delayed_20__2_ , \chained.data_delayed_20__1_ , \chained.data_delayed_20__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_21_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_20__31_ , \chained.data_delayed_20__30_ , \chained.data_delayed_20__29_ , \chained.data_delayed_20__28_ , \chained.data_delayed_20__27_ , \chained.data_delayed_20__26_ , \chained.data_delayed_20__25_ , \chained.data_delayed_20__24_ , \chained.data_delayed_20__23_ , \chained.data_delayed_20__22_ , \chained.data_delayed_20__21_ , \chained.data_delayed_20__20_ , \chained.data_delayed_20__19_ , \chained.data_delayed_20__18_ , \chained.data_delayed_20__17_ , \chained.data_delayed_20__16_ , \chained.data_delayed_20__15_ , \chained.data_delayed_20__14_ , \chained.data_delayed_20__13_ , \chained.data_delayed_20__12_ , \chained.data_delayed_20__11_ , \chained.data_delayed_20__10_ , \chained.data_delayed_20__9_ , \chained.data_delayed_20__8_ , \chained.data_delayed_20__7_ , \chained.data_delayed_20__6_ , \chained.data_delayed_20__5_ , \chained.data_delayed_20__4_ , \chained.data_delayed_20__3_ , \chained.data_delayed_20__2_ , \chained.data_delayed_20__1_ , \chained.data_delayed_20__0_  }),
    .data_o({ \chained.data_delayed_21__31_ , \chained.data_delayed_21__30_ , \chained.data_delayed_21__29_ , \chained.data_delayed_21__28_ , \chained.data_delayed_21__27_ , \chained.data_delayed_21__26_ , \chained.data_delayed_21__25_ , \chained.data_delayed_21__24_ , \chained.data_delayed_21__23_ , \chained.data_delayed_21__22_ , \chained.data_delayed_21__21_ , \chained.data_delayed_21__20_ , \chained.data_delayed_21__19_ , \chained.data_delayed_21__18_ , \chained.data_delayed_21__17_ , \chained.data_delayed_21__16_ , \chained.data_delayed_21__15_ , \chained.data_delayed_21__14_ , \chained.data_delayed_21__13_ , \chained.data_delayed_21__12_ , \chained.data_delayed_21__11_ , \chained.data_delayed_21__10_ , \chained.data_delayed_21__9_ , \chained.data_delayed_21__8_ , \chained.data_delayed_21__7_ , \chained.data_delayed_21__6_ , \chained.data_delayed_21__5_ , \chained.data_delayed_21__4_ , \chained.data_delayed_21__3_ , \chained.data_delayed_21__2_ , \chained.data_delayed_21__1_ , \chained.data_delayed_21__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_22_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_21__31_ , \chained.data_delayed_21__30_ , \chained.data_delayed_21__29_ , \chained.data_delayed_21__28_ , \chained.data_delayed_21__27_ , \chained.data_delayed_21__26_ , \chained.data_delayed_21__25_ , \chained.data_delayed_21__24_ , \chained.data_delayed_21__23_ , \chained.data_delayed_21__22_ , \chained.data_delayed_21__21_ , \chained.data_delayed_21__20_ , \chained.data_delayed_21__19_ , \chained.data_delayed_21__18_ , \chained.data_delayed_21__17_ , \chained.data_delayed_21__16_ , \chained.data_delayed_21__15_ , \chained.data_delayed_21__14_ , \chained.data_delayed_21__13_ , \chained.data_delayed_21__12_ , \chained.data_delayed_21__11_ , \chained.data_delayed_21__10_ , \chained.data_delayed_21__9_ , \chained.data_delayed_21__8_ , \chained.data_delayed_21__7_ , \chained.data_delayed_21__6_ , \chained.data_delayed_21__5_ , \chained.data_delayed_21__4_ , \chained.data_delayed_21__3_ , \chained.data_delayed_21__2_ , \chained.data_delayed_21__1_ , \chained.data_delayed_21__0_  }),
    .data_o({ \chained.data_delayed_22__31_ , \chained.data_delayed_22__30_ , \chained.data_delayed_22__29_ , \chained.data_delayed_22__28_ , \chained.data_delayed_22__27_ , \chained.data_delayed_22__26_ , \chained.data_delayed_22__25_ , \chained.data_delayed_22__24_ , \chained.data_delayed_22__23_ , \chained.data_delayed_22__22_ , \chained.data_delayed_22__21_ , \chained.data_delayed_22__20_ , \chained.data_delayed_22__19_ , \chained.data_delayed_22__18_ , \chained.data_delayed_22__17_ , \chained.data_delayed_22__16_ , \chained.data_delayed_22__15_ , \chained.data_delayed_22__14_ , \chained.data_delayed_22__13_ , \chained.data_delayed_22__12_ , \chained.data_delayed_22__11_ , \chained.data_delayed_22__10_ , \chained.data_delayed_22__9_ , \chained.data_delayed_22__8_ , \chained.data_delayed_22__7_ , \chained.data_delayed_22__6_ , \chained.data_delayed_22__5_ , \chained.data_delayed_22__4_ , \chained.data_delayed_22__3_ , \chained.data_delayed_22__2_ , \chained.data_delayed_22__1_ , \chained.data_delayed_22__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_23_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_22__31_ , \chained.data_delayed_22__30_ , \chained.data_delayed_22__29_ , \chained.data_delayed_22__28_ , \chained.data_delayed_22__27_ , \chained.data_delayed_22__26_ , \chained.data_delayed_22__25_ , \chained.data_delayed_22__24_ , \chained.data_delayed_22__23_ , \chained.data_delayed_22__22_ , \chained.data_delayed_22__21_ , \chained.data_delayed_22__20_ , \chained.data_delayed_22__19_ , \chained.data_delayed_22__18_ , \chained.data_delayed_22__17_ , \chained.data_delayed_22__16_ , \chained.data_delayed_22__15_ , \chained.data_delayed_22__14_ , \chained.data_delayed_22__13_ , \chained.data_delayed_22__12_ , \chained.data_delayed_22__11_ , \chained.data_delayed_22__10_ , \chained.data_delayed_22__9_ , \chained.data_delayed_22__8_ , \chained.data_delayed_22__7_ , \chained.data_delayed_22__6_ , \chained.data_delayed_22__5_ , \chained.data_delayed_22__4_ , \chained.data_delayed_22__3_ , \chained.data_delayed_22__2_ , \chained.data_delayed_22__1_ , \chained.data_delayed_22__0_  }),
    .data_o({ \chained.data_delayed_23__31_ , \chained.data_delayed_23__30_ , \chained.data_delayed_23__29_ , \chained.data_delayed_23__28_ , \chained.data_delayed_23__27_ , \chained.data_delayed_23__26_ , \chained.data_delayed_23__25_ , \chained.data_delayed_23__24_ , \chained.data_delayed_23__23_ , \chained.data_delayed_23__22_ , \chained.data_delayed_23__21_ , \chained.data_delayed_23__20_ , \chained.data_delayed_23__19_ , \chained.data_delayed_23__18_ , \chained.data_delayed_23__17_ , \chained.data_delayed_23__16_ , \chained.data_delayed_23__15_ , \chained.data_delayed_23__14_ , \chained.data_delayed_23__13_ , \chained.data_delayed_23__12_ , \chained.data_delayed_23__11_ , \chained.data_delayed_23__10_ , \chained.data_delayed_23__9_ , \chained.data_delayed_23__8_ , \chained.data_delayed_23__7_ , \chained.data_delayed_23__6_ , \chained.data_delayed_23__5_ , \chained.data_delayed_23__4_ , \chained.data_delayed_23__3_ , \chained.data_delayed_23__2_ , \chained.data_delayed_23__1_ , \chained.data_delayed_23__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_24_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_23__31_ , \chained.data_delayed_23__30_ , \chained.data_delayed_23__29_ , \chained.data_delayed_23__28_ , \chained.data_delayed_23__27_ , \chained.data_delayed_23__26_ , \chained.data_delayed_23__25_ , \chained.data_delayed_23__24_ , \chained.data_delayed_23__23_ , \chained.data_delayed_23__22_ , \chained.data_delayed_23__21_ , \chained.data_delayed_23__20_ , \chained.data_delayed_23__19_ , \chained.data_delayed_23__18_ , \chained.data_delayed_23__17_ , \chained.data_delayed_23__16_ , \chained.data_delayed_23__15_ , \chained.data_delayed_23__14_ , \chained.data_delayed_23__13_ , \chained.data_delayed_23__12_ , \chained.data_delayed_23__11_ , \chained.data_delayed_23__10_ , \chained.data_delayed_23__9_ , \chained.data_delayed_23__8_ , \chained.data_delayed_23__7_ , \chained.data_delayed_23__6_ , \chained.data_delayed_23__5_ , \chained.data_delayed_23__4_ , \chained.data_delayed_23__3_ , \chained.data_delayed_23__2_ , \chained.data_delayed_23__1_ , \chained.data_delayed_23__0_  }),
    .data_o({ \chained.data_delayed_24__31_ , \chained.data_delayed_24__30_ , \chained.data_delayed_24__29_ , \chained.data_delayed_24__28_ , \chained.data_delayed_24__27_ , \chained.data_delayed_24__26_ , \chained.data_delayed_24__25_ , \chained.data_delayed_24__24_ , \chained.data_delayed_24__23_ , \chained.data_delayed_24__22_ , \chained.data_delayed_24__21_ , \chained.data_delayed_24__20_ , \chained.data_delayed_24__19_ , \chained.data_delayed_24__18_ , \chained.data_delayed_24__17_ , \chained.data_delayed_24__16_ , \chained.data_delayed_24__15_ , \chained.data_delayed_24__14_ , \chained.data_delayed_24__13_ , \chained.data_delayed_24__12_ , \chained.data_delayed_24__11_ , \chained.data_delayed_24__10_ , \chained.data_delayed_24__9_ , \chained.data_delayed_24__8_ , \chained.data_delayed_24__7_ , \chained.data_delayed_24__6_ , \chained.data_delayed_24__5_ , \chained.data_delayed_24__4_ , \chained.data_delayed_24__3_ , \chained.data_delayed_24__2_ , \chained.data_delayed_24__1_ , \chained.data_delayed_24__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_25_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_24__31_ , \chained.data_delayed_24__30_ , \chained.data_delayed_24__29_ , \chained.data_delayed_24__28_ , \chained.data_delayed_24__27_ , \chained.data_delayed_24__26_ , \chained.data_delayed_24__25_ , \chained.data_delayed_24__24_ , \chained.data_delayed_24__23_ , \chained.data_delayed_24__22_ , \chained.data_delayed_24__21_ , \chained.data_delayed_24__20_ , \chained.data_delayed_24__19_ , \chained.data_delayed_24__18_ , \chained.data_delayed_24__17_ , \chained.data_delayed_24__16_ , \chained.data_delayed_24__15_ , \chained.data_delayed_24__14_ , \chained.data_delayed_24__13_ , \chained.data_delayed_24__12_ , \chained.data_delayed_24__11_ , \chained.data_delayed_24__10_ , \chained.data_delayed_24__9_ , \chained.data_delayed_24__8_ , \chained.data_delayed_24__7_ , \chained.data_delayed_24__6_ , \chained.data_delayed_24__5_ , \chained.data_delayed_24__4_ , \chained.data_delayed_24__3_ , \chained.data_delayed_24__2_ , \chained.data_delayed_24__1_ , \chained.data_delayed_24__0_  }),
    .data_o({ \chained.data_delayed_25__31_ , \chained.data_delayed_25__30_ , \chained.data_delayed_25__29_ , \chained.data_delayed_25__28_ , \chained.data_delayed_25__27_ , \chained.data_delayed_25__26_ , \chained.data_delayed_25__25_ , \chained.data_delayed_25__24_ , \chained.data_delayed_25__23_ , \chained.data_delayed_25__22_ , \chained.data_delayed_25__21_ , \chained.data_delayed_25__20_ , \chained.data_delayed_25__19_ , \chained.data_delayed_25__18_ , \chained.data_delayed_25__17_ , \chained.data_delayed_25__16_ , \chained.data_delayed_25__15_ , \chained.data_delayed_25__14_ , \chained.data_delayed_25__13_ , \chained.data_delayed_25__12_ , \chained.data_delayed_25__11_ , \chained.data_delayed_25__10_ , \chained.data_delayed_25__9_ , \chained.data_delayed_25__8_ , \chained.data_delayed_25__7_ , \chained.data_delayed_25__6_ , \chained.data_delayed_25__5_ , \chained.data_delayed_25__4_ , \chained.data_delayed_25__3_ , \chained.data_delayed_25__2_ , \chained.data_delayed_25__1_ , \chained.data_delayed_25__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_26_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_25__31_ , \chained.data_delayed_25__30_ , \chained.data_delayed_25__29_ , \chained.data_delayed_25__28_ , \chained.data_delayed_25__27_ , \chained.data_delayed_25__26_ , \chained.data_delayed_25__25_ , \chained.data_delayed_25__24_ , \chained.data_delayed_25__23_ , \chained.data_delayed_25__22_ , \chained.data_delayed_25__21_ , \chained.data_delayed_25__20_ , \chained.data_delayed_25__19_ , \chained.data_delayed_25__18_ , \chained.data_delayed_25__17_ , \chained.data_delayed_25__16_ , \chained.data_delayed_25__15_ , \chained.data_delayed_25__14_ , \chained.data_delayed_25__13_ , \chained.data_delayed_25__12_ , \chained.data_delayed_25__11_ , \chained.data_delayed_25__10_ , \chained.data_delayed_25__9_ , \chained.data_delayed_25__8_ , \chained.data_delayed_25__7_ , \chained.data_delayed_25__6_ , \chained.data_delayed_25__5_ , \chained.data_delayed_25__4_ , \chained.data_delayed_25__3_ , \chained.data_delayed_25__2_ , \chained.data_delayed_25__1_ , \chained.data_delayed_25__0_  }),
    .data_o({ \chained.data_delayed_26__31_ , \chained.data_delayed_26__30_ , \chained.data_delayed_26__29_ , \chained.data_delayed_26__28_ , \chained.data_delayed_26__27_ , \chained.data_delayed_26__26_ , \chained.data_delayed_26__25_ , \chained.data_delayed_26__24_ , \chained.data_delayed_26__23_ , \chained.data_delayed_26__22_ , \chained.data_delayed_26__21_ , \chained.data_delayed_26__20_ , \chained.data_delayed_26__19_ , \chained.data_delayed_26__18_ , \chained.data_delayed_26__17_ , \chained.data_delayed_26__16_ , \chained.data_delayed_26__15_ , \chained.data_delayed_26__14_ , \chained.data_delayed_26__13_ , \chained.data_delayed_26__12_ , \chained.data_delayed_26__11_ , \chained.data_delayed_26__10_ , \chained.data_delayed_26__9_ , \chained.data_delayed_26__8_ , \chained.data_delayed_26__7_ , \chained.data_delayed_26__6_ , \chained.data_delayed_26__5_ , \chained.data_delayed_26__4_ , \chained.data_delayed_26__3_ , \chained.data_delayed_26__2_ , \chained.data_delayed_26__1_ , \chained.data_delayed_26__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_27_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_26__31_ , \chained.data_delayed_26__30_ , \chained.data_delayed_26__29_ , \chained.data_delayed_26__28_ , \chained.data_delayed_26__27_ , \chained.data_delayed_26__26_ , \chained.data_delayed_26__25_ , \chained.data_delayed_26__24_ , \chained.data_delayed_26__23_ , \chained.data_delayed_26__22_ , \chained.data_delayed_26__21_ , \chained.data_delayed_26__20_ , \chained.data_delayed_26__19_ , \chained.data_delayed_26__18_ , \chained.data_delayed_26__17_ , \chained.data_delayed_26__16_ , \chained.data_delayed_26__15_ , \chained.data_delayed_26__14_ , \chained.data_delayed_26__13_ , \chained.data_delayed_26__12_ , \chained.data_delayed_26__11_ , \chained.data_delayed_26__10_ , \chained.data_delayed_26__9_ , \chained.data_delayed_26__8_ , \chained.data_delayed_26__7_ , \chained.data_delayed_26__6_ , \chained.data_delayed_26__5_ , \chained.data_delayed_26__4_ , \chained.data_delayed_26__3_ , \chained.data_delayed_26__2_ , \chained.data_delayed_26__1_ , \chained.data_delayed_26__0_  }),
    .data_o({ \chained.data_delayed_27__31_ , \chained.data_delayed_27__30_ , \chained.data_delayed_27__29_ , \chained.data_delayed_27__28_ , \chained.data_delayed_27__27_ , \chained.data_delayed_27__26_ , \chained.data_delayed_27__25_ , \chained.data_delayed_27__24_ , \chained.data_delayed_27__23_ , \chained.data_delayed_27__22_ , \chained.data_delayed_27__21_ , \chained.data_delayed_27__20_ , \chained.data_delayed_27__19_ , \chained.data_delayed_27__18_ , \chained.data_delayed_27__17_ , \chained.data_delayed_27__16_ , \chained.data_delayed_27__15_ , \chained.data_delayed_27__14_ , \chained.data_delayed_27__13_ , \chained.data_delayed_27__12_ , \chained.data_delayed_27__11_ , \chained.data_delayed_27__10_ , \chained.data_delayed_27__9_ , \chained.data_delayed_27__8_ , \chained.data_delayed_27__7_ , \chained.data_delayed_27__6_ , \chained.data_delayed_27__5_ , \chained.data_delayed_27__4_ , \chained.data_delayed_27__3_ , \chained.data_delayed_27__2_ , \chained.data_delayed_27__1_ , \chained.data_delayed_27__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_28_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_27__31_ , \chained.data_delayed_27__30_ , \chained.data_delayed_27__29_ , \chained.data_delayed_27__28_ , \chained.data_delayed_27__27_ , \chained.data_delayed_27__26_ , \chained.data_delayed_27__25_ , \chained.data_delayed_27__24_ , \chained.data_delayed_27__23_ , \chained.data_delayed_27__22_ , \chained.data_delayed_27__21_ , \chained.data_delayed_27__20_ , \chained.data_delayed_27__19_ , \chained.data_delayed_27__18_ , \chained.data_delayed_27__17_ , \chained.data_delayed_27__16_ , \chained.data_delayed_27__15_ , \chained.data_delayed_27__14_ , \chained.data_delayed_27__13_ , \chained.data_delayed_27__12_ , \chained.data_delayed_27__11_ , \chained.data_delayed_27__10_ , \chained.data_delayed_27__9_ , \chained.data_delayed_27__8_ , \chained.data_delayed_27__7_ , \chained.data_delayed_27__6_ , \chained.data_delayed_27__5_ , \chained.data_delayed_27__4_ , \chained.data_delayed_27__3_ , \chained.data_delayed_27__2_ , \chained.data_delayed_27__1_ , \chained.data_delayed_27__0_  }),
    .data_o({ \chained.data_delayed_28__31_ , \chained.data_delayed_28__30_ , \chained.data_delayed_28__29_ , \chained.data_delayed_28__28_ , \chained.data_delayed_28__27_ , \chained.data_delayed_28__26_ , \chained.data_delayed_28__25_ , \chained.data_delayed_28__24_ , \chained.data_delayed_28__23_ , \chained.data_delayed_28__22_ , \chained.data_delayed_28__21_ , \chained.data_delayed_28__20_ , \chained.data_delayed_28__19_ , \chained.data_delayed_28__18_ , \chained.data_delayed_28__17_ , \chained.data_delayed_28__16_ , \chained.data_delayed_28__15_ , \chained.data_delayed_28__14_ , \chained.data_delayed_28__13_ , \chained.data_delayed_28__12_ , \chained.data_delayed_28__11_ , \chained.data_delayed_28__10_ , \chained.data_delayed_28__9_ , \chained.data_delayed_28__8_ , \chained.data_delayed_28__7_ , \chained.data_delayed_28__6_ , \chained.data_delayed_28__5_ , \chained.data_delayed_28__4_ , \chained.data_delayed_28__3_ , \chained.data_delayed_28__2_ , \chained.data_delayed_28__1_ , \chained.data_delayed_28__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_29_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_28__31_ , \chained.data_delayed_28__30_ , \chained.data_delayed_28__29_ , \chained.data_delayed_28__28_ , \chained.data_delayed_28__27_ , \chained.data_delayed_28__26_ , \chained.data_delayed_28__25_ , \chained.data_delayed_28__24_ , \chained.data_delayed_28__23_ , \chained.data_delayed_28__22_ , \chained.data_delayed_28__21_ , \chained.data_delayed_28__20_ , \chained.data_delayed_28__19_ , \chained.data_delayed_28__18_ , \chained.data_delayed_28__17_ , \chained.data_delayed_28__16_ , \chained.data_delayed_28__15_ , \chained.data_delayed_28__14_ , \chained.data_delayed_28__13_ , \chained.data_delayed_28__12_ , \chained.data_delayed_28__11_ , \chained.data_delayed_28__10_ , \chained.data_delayed_28__9_ , \chained.data_delayed_28__8_ , \chained.data_delayed_28__7_ , \chained.data_delayed_28__6_ , \chained.data_delayed_28__5_ , \chained.data_delayed_28__4_ , \chained.data_delayed_28__3_ , \chained.data_delayed_28__2_ , \chained.data_delayed_28__1_ , \chained.data_delayed_28__0_  }),
    .data_o({ \chained.data_delayed_29__31_ , \chained.data_delayed_29__30_ , \chained.data_delayed_29__29_ , \chained.data_delayed_29__28_ , \chained.data_delayed_29__27_ , \chained.data_delayed_29__26_ , \chained.data_delayed_29__25_ , \chained.data_delayed_29__24_ , \chained.data_delayed_29__23_ , \chained.data_delayed_29__22_ , \chained.data_delayed_29__21_ , \chained.data_delayed_29__20_ , \chained.data_delayed_29__19_ , \chained.data_delayed_29__18_ , \chained.data_delayed_29__17_ , \chained.data_delayed_29__16_ , \chained.data_delayed_29__15_ , \chained.data_delayed_29__14_ , \chained.data_delayed_29__13_ , \chained.data_delayed_29__12_ , \chained.data_delayed_29__11_ , \chained.data_delayed_29__10_ , \chained.data_delayed_29__9_ , \chained.data_delayed_29__8_ , \chained.data_delayed_29__7_ , \chained.data_delayed_29__6_ , \chained.data_delayed_29__5_ , \chained.data_delayed_29__4_ , \chained.data_delayed_29__3_ , \chained.data_delayed_29__2_ , \chained.data_delayed_29__1_ , \chained.data_delayed_29__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_30_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_29__31_ , \chained.data_delayed_29__30_ , \chained.data_delayed_29__29_ , \chained.data_delayed_29__28_ , \chained.data_delayed_29__27_ , \chained.data_delayed_29__26_ , \chained.data_delayed_29__25_ , \chained.data_delayed_29__24_ , \chained.data_delayed_29__23_ , \chained.data_delayed_29__22_ , \chained.data_delayed_29__21_ , \chained.data_delayed_29__20_ , \chained.data_delayed_29__19_ , \chained.data_delayed_29__18_ , \chained.data_delayed_29__17_ , \chained.data_delayed_29__16_ , \chained.data_delayed_29__15_ , \chained.data_delayed_29__14_ , \chained.data_delayed_29__13_ , \chained.data_delayed_29__12_ , \chained.data_delayed_29__11_ , \chained.data_delayed_29__10_ , \chained.data_delayed_29__9_ , \chained.data_delayed_29__8_ , \chained.data_delayed_29__7_ , \chained.data_delayed_29__6_ , \chained.data_delayed_29__5_ , \chained.data_delayed_29__4_ , \chained.data_delayed_29__3_ , \chained.data_delayed_29__2_ , \chained.data_delayed_29__1_ , \chained.data_delayed_29__0_  }),
    .data_o({ \chained.data_delayed_30__31_ , \chained.data_delayed_30__30_ , \chained.data_delayed_30__29_ , \chained.data_delayed_30__28_ , \chained.data_delayed_30__27_ , \chained.data_delayed_30__26_ , \chained.data_delayed_30__25_ , \chained.data_delayed_30__24_ , \chained.data_delayed_30__23_ , \chained.data_delayed_30__22_ , \chained.data_delayed_30__21_ , \chained.data_delayed_30__20_ , \chained.data_delayed_30__19_ , \chained.data_delayed_30__18_ , \chained.data_delayed_30__17_ , \chained.data_delayed_30__16_ , \chained.data_delayed_30__15_ , \chained.data_delayed_30__14_ , \chained.data_delayed_30__13_ , \chained.data_delayed_30__12_ , \chained.data_delayed_30__11_ , \chained.data_delayed_30__10_ , \chained.data_delayed_30__9_ , \chained.data_delayed_30__8_ , \chained.data_delayed_30__7_ , \chained.data_delayed_30__6_ , \chained.data_delayed_30__5_ , \chained.data_delayed_30__4_ , \chained.data_delayed_30__3_ , \chained.data_delayed_30__2_ , \chained.data_delayed_30__1_ , \chained.data_delayed_30__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_31_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_30__31_ , \chained.data_delayed_30__30_ , \chained.data_delayed_30__29_ , \chained.data_delayed_30__28_ , \chained.data_delayed_30__27_ , \chained.data_delayed_30__26_ , \chained.data_delayed_30__25_ , \chained.data_delayed_30__24_ , \chained.data_delayed_30__23_ , \chained.data_delayed_30__22_ , \chained.data_delayed_30__21_ , \chained.data_delayed_30__20_ , \chained.data_delayed_30__19_ , \chained.data_delayed_30__18_ , \chained.data_delayed_30__17_ , \chained.data_delayed_30__16_ , \chained.data_delayed_30__15_ , \chained.data_delayed_30__14_ , \chained.data_delayed_30__13_ , \chained.data_delayed_30__12_ , \chained.data_delayed_30__11_ , \chained.data_delayed_30__10_ , \chained.data_delayed_30__9_ , \chained.data_delayed_30__8_ , \chained.data_delayed_30__7_ , \chained.data_delayed_30__6_ , \chained.data_delayed_30__5_ , \chained.data_delayed_30__4_ , \chained.data_delayed_30__3_ , \chained.data_delayed_30__2_ , \chained.data_delayed_30__1_ , \chained.data_delayed_30__0_  }),
    .data_o({ \chained.data_delayed_31__31_ , \chained.data_delayed_31__30_ , \chained.data_delayed_31__29_ , \chained.data_delayed_31__28_ , \chained.data_delayed_31__27_ , \chained.data_delayed_31__26_ , \chained.data_delayed_31__25_ , \chained.data_delayed_31__24_ , \chained.data_delayed_31__23_ , \chained.data_delayed_31__22_ , \chained.data_delayed_31__21_ , \chained.data_delayed_31__20_ , \chained.data_delayed_31__19_ , \chained.data_delayed_31__18_ , \chained.data_delayed_31__17_ , \chained.data_delayed_31__16_ , \chained.data_delayed_31__15_ , \chained.data_delayed_31__14_ , \chained.data_delayed_31__13_ , \chained.data_delayed_31__12_ , \chained.data_delayed_31__11_ , \chained.data_delayed_31__10_ , \chained.data_delayed_31__9_ , \chained.data_delayed_31__8_ , \chained.data_delayed_31__7_ , \chained.data_delayed_31__6_ , \chained.data_delayed_31__5_ , \chained.data_delayed_31__4_ , \chained.data_delayed_31__3_ , \chained.data_delayed_31__2_ , \chained.data_delayed_31__1_ , \chained.data_delayed_31__0_  })
  );


  bsg_dff_width_p32
  \chained.genblk1_32_.ch_reg 
  (
    .clk_i(clk_i),
    .data_i({ \chained.data_delayed_31__31_ , \chained.data_delayed_31__30_ , \chained.data_delayed_31__29_ , \chained.data_delayed_31__28_ , \chained.data_delayed_31__27_ , \chained.data_delayed_31__26_ , \chained.data_delayed_31__25_ , \chained.data_delayed_31__24_ , \chained.data_delayed_31__23_ , \chained.data_delayed_31__22_ , \chained.data_delayed_31__21_ , \chained.data_delayed_31__20_ , \chained.data_delayed_31__19_ , \chained.data_delayed_31__18_ , \chained.data_delayed_31__17_ , \chained.data_delayed_31__16_ , \chained.data_delayed_31__15_ , \chained.data_delayed_31__14_ , \chained.data_delayed_31__13_ , \chained.data_delayed_31__12_ , \chained.data_delayed_31__11_ , \chained.data_delayed_31__10_ , \chained.data_delayed_31__9_ , \chained.data_delayed_31__8_ , \chained.data_delayed_31__7_ , \chained.data_delayed_31__6_ , \chained.data_delayed_31__5_ , \chained.data_delayed_31__4_ , \chained.data_delayed_31__3_ , \chained.data_delayed_31__2_ , \chained.data_delayed_31__1_ , \chained.data_delayed_31__0_  }),
    .data_o(data_o)
  );


endmodule

