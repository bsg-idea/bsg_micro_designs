

module top
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  data_o,
  v_o,
  local_accept_i
);

  input [31:0] data_i;
  output [63:0] data_o;
  output [1:0] v_o;
  input clk_i;
  input reset_i;
  input v_i;
  input local_accept_i;

  bsg_front_side_bus_hop_in_no_fc
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .v_o(v_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .local_accept_i(local_accept_i)
  );


endmodule



module bsg_dff_reset_width_p1
(
  clk_i,
  reset_i,
  data_i,
  data_o
);

  input [0:0] data_i;
  output [0:0] data_o;
  input clk_i;
  input reset_i;
  wire [0:0] data_o;
  reg data_o_0_sv2v_reg;
  assign data_o[0] = data_o_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(reset_i) begin
      data_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      data_o_0_sv2v_reg <= data_i[0];
    end 
  end


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



module bsg_front_side_bus_hop_in_no_fc
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  data_o,
  v_o,
  local_accept_i
);

  input [31:0] data_i;
  output [63:0] data_o;
  output [1:0] v_o;
  input clk_i;
  input reset_i;
  input v_i;
  input local_accept_i;
  wire [63:0] data_o;
  wire [1:0] v_o;
  wire data_o_0__31_,data_o_0__30_,data_o_0__29_,data_o_0__28_,data_o_0__27_,
  data_o_0__26_,data_o_0__25_,data_o_0__24_,data_o_0__23_,data_o_0__22_,data_o_0__21_,
  data_o_0__20_,data_o_0__19_,data_o_0__18_,data_o_0__17_,data_o_0__16_,data_o_0__15_,
  data_o_0__14_,data_o_0__13_,data_o_0__12_,data_o_0__11_,data_o_0__10_,
  data_o_0__9_,data_o_0__8_,data_o_0__7_,data_o_0__6_,data_o_0__5_,data_o_0__4_,data_o_0__3_,
  data_o_0__2_,data_o_0__1_,data_o_0__0_;
  assign data_o[31] = data_o_0__31_;
  assign data_o[63] = data_o_0__31_;
  assign data_o[30] = data_o_0__30_;
  assign data_o[62] = data_o_0__30_;
  assign data_o[29] = data_o_0__29_;
  assign data_o[61] = data_o_0__29_;
  assign data_o[28] = data_o_0__28_;
  assign data_o[60] = data_o_0__28_;
  assign data_o[27] = data_o_0__27_;
  assign data_o[59] = data_o_0__27_;
  assign data_o[26] = data_o_0__26_;
  assign data_o[58] = data_o_0__26_;
  assign data_o[25] = data_o_0__25_;
  assign data_o[57] = data_o_0__25_;
  assign data_o[24] = data_o_0__24_;
  assign data_o[56] = data_o_0__24_;
  assign data_o[23] = data_o_0__23_;
  assign data_o[55] = data_o_0__23_;
  assign data_o[22] = data_o_0__22_;
  assign data_o[54] = data_o_0__22_;
  assign data_o[21] = data_o_0__21_;
  assign data_o[53] = data_o_0__21_;
  assign data_o[20] = data_o_0__20_;
  assign data_o[52] = data_o_0__20_;
  assign data_o[19] = data_o_0__19_;
  assign data_o[51] = data_o_0__19_;
  assign data_o[18] = data_o_0__18_;
  assign data_o[50] = data_o_0__18_;
  assign data_o[17] = data_o_0__17_;
  assign data_o[49] = data_o_0__17_;
  assign data_o[16] = data_o_0__16_;
  assign data_o[48] = data_o_0__16_;
  assign data_o[15] = data_o_0__15_;
  assign data_o[47] = data_o_0__15_;
  assign data_o[14] = data_o_0__14_;
  assign data_o[46] = data_o_0__14_;
  assign data_o[13] = data_o_0__13_;
  assign data_o[45] = data_o_0__13_;
  assign data_o[12] = data_o_0__12_;
  assign data_o[44] = data_o_0__12_;
  assign data_o[11] = data_o_0__11_;
  assign data_o[43] = data_o_0__11_;
  assign data_o[10] = data_o_0__10_;
  assign data_o[42] = data_o_0__10_;
  assign data_o[9] = data_o_0__9_;
  assign data_o[41] = data_o_0__9_;
  assign data_o[8] = data_o_0__8_;
  assign data_o[40] = data_o_0__8_;
  assign data_o[7] = data_o_0__7_;
  assign data_o[39] = data_o_0__7_;
  assign data_o[6] = data_o_0__6_;
  assign data_o[38] = data_o_0__6_;
  assign data_o[5] = data_o_0__5_;
  assign data_o[37] = data_o_0__5_;
  assign data_o[4] = data_o_0__4_;
  assign data_o[36] = data_o_0__4_;
  assign data_o[3] = data_o_0__3_;
  assign data_o[35] = data_o_0__3_;
  assign data_o[2] = data_o_0__2_;
  assign data_o[34] = data_o_0__2_;
  assign data_o[1] = data_o_0__1_;
  assign data_o[33] = data_o_0__1_;
  assign data_o[0] = data_o_0__0_;
  assign data_o[32] = data_o_0__0_;

  bsg_dff_reset_width_p1
  v_reg
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(v_i),
    .data_o(v_o[0])
  );


  bsg_dff_width_p32
  data_reg
  (
    .clk_i(clk_i),
    .data_i(data_i),
    .data_o({ data_o_0__31_, data_o_0__30_, data_o_0__29_, data_o_0__28_, data_o_0__27_, data_o_0__26_, data_o_0__25_, data_o_0__24_, data_o_0__23_, data_o_0__22_, data_o_0__21_, data_o_0__20_, data_o_0__19_, data_o_0__18_, data_o_0__17_, data_o_0__16_, data_o_0__15_, data_o_0__14_, data_o_0__13_, data_o_0__12_, data_o_0__11_, data_o_0__10_, data_o_0__9_, data_o_0__8_, data_o_0__7_, data_o_0__6_, data_o_0__5_, data_o_0__4_, data_o_0__3_, data_o_0__2_, data_o_0__1_, data_o_0__0_ })
  );

  assign v_o[1] = v_o[0] & local_accept_i;

endmodule

