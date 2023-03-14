

module top
(
  clk_i,
  reset_i,
  dma_mask_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  app_wdf_wren_o,
  app_wdf_data_o,
  app_wdf_mask_o,
  app_wdf_end_o,
  app_wdf_rdy_i
);

  input [7:0] dma_mask_i;
  input [31:0] dma_data_i;
  output [31:0] app_wdf_data_o;
  output [3:0] app_wdf_mask_o;
  input clk_i;
  input reset_i;
  input dma_data_v_i;
  input app_wdf_rdy_i;
  output dma_data_yumi_o;
  output app_wdf_wren_o;
  output app_wdf_end_o;

  bsg_cache_to_dram_ctrl_tx
  wrapper
  (
    .dma_mask_i(dma_mask_i),
    .dma_data_i(dma_data_i),
    .app_wdf_data_o(app_wdf_data_o),
    .app_wdf_mask_o(app_wdf_mask_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .dma_data_v_i(dma_data_v_i),
    .app_wdf_rdy_i(app_wdf_rdy_i),
    .dma_data_yumi_o(dma_data_yumi_o),
    .app_wdf_wren_o(app_wdf_wren_o),
    .app_wdf_end_o(app_wdf_end_o)
  );


endmodule



module bsg_counter_clear_up_max_val_p7_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [2:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire [2:0] count_o;
  wire N0,N1,N4,N5,N6,N8,N9,N10,N11,N12,N13,N14,N15,N2,N3,N7,N30,N16;
  reg count_o_2_sv2v_reg,count_o_1_sv2v_reg,count_o_0_sv2v_reg;
  assign count_o[2] = count_o_2_sv2v_reg;
  assign count_o[1] = count_o_1_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;
  assign N16 = reset_i | clear_i;
  assign { N8, N6, N5 } = count_o + 1'b1;
  assign N9 = (N0)? 1'b1 : 
              (N7)? 1'b1 : 
              (N3)? 1'b0 : 1'b0;
  assign N0 = clear_i;
  assign N11 = (N1)? 1'b1 : 
               (N30)? 1'b0 : 1'b0;
  assign N1 = up_i;
  assign N10 = (N0)? up_i : 
               (N7)? N5 : 1'b0;
  assign N4 = N15;
  assign N12 = ~reset_i;
  assign N13 = ~clear_i;
  assign N14 = N12 & N13;
  assign N15 = up_i & N14;
  assign N2 = up_i | clear_i;
  assign N3 = ~N2;
  assign N7 = up_i & N13;
  assign N30 = ~up_i;

  always @(posedge clk_i) begin
    if(N16) begin
      count_o_2_sv2v_reg <= 1'b0;
      count_o_1_sv2v_reg <= 1'b0;
    end else if(N11) begin
      count_o_2_sv2v_reg <= N8;
      count_o_1_sv2v_reg <= N6;
    end 
    if(reset_i) begin
      count_o_0_sv2v_reg <= 1'b0;
    end else if(N9) begin
      count_o_0_sv2v_reg <= N10;
    end 
  end


endmodule



module bsg_cache_to_dram_ctrl_tx
(
  clk_i,
  reset_i,
  dma_mask_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  app_wdf_wren_o,
  app_wdf_data_o,
  app_wdf_mask_o,
  app_wdf_end_o,
  app_wdf_rdy_i
);

  input [7:0] dma_mask_i;
  input [31:0] dma_data_i;
  output [31:0] app_wdf_data_o;
  output [3:0] app_wdf_mask_o;
  input clk_i;
  input reset_i;
  input dma_data_v_i;
  input app_wdf_rdy_i;
  output dma_data_yumi_o;
  output app_wdf_wren_o;
  output app_wdf_end_o;
  wire [31:0] app_wdf_data_o,byte_mask_lo;
  wire [3:0] app_wdf_mask_o;
  wire dma_data_yumi_o,app_wdf_wren_o,app_wdf_end_o,N0,clear_li,up_li,_0_net__31_,
  _0_net__30_,_0_net__29_,_0_net__28_,_0_net__27_,_0_net__26_,_0_net__25_,_0_net__24_,
  _0_net__23_,_0_net__22_,_0_net__21_,_0_net__20_,_0_net__19_,_0_net__18_,
  _0_net__17_,_0_net__16_,_0_net__15_,_0_net__14_,_0_net__13_,_0_net__12_,_0_net__11_,
  _0_net__10_,_0_net__9_,_0_net__8_,_0_net__7_,_0_net__6_,_0_net__5_,_0_net__4_,
  _0_net__3_,_0_net__2_,_0_net__1_,_0_net__0_,take_word,N1,N2,N3;
  wire [2:0] count_lo;
  assign app_wdf_wren_o = dma_data_v_i;
  assign app_wdf_data_o[31] = dma_data_i[31];
  assign app_wdf_data_o[30] = dma_data_i[30];
  assign app_wdf_data_o[29] = dma_data_i[29];
  assign app_wdf_data_o[28] = dma_data_i[28];
  assign app_wdf_data_o[27] = dma_data_i[27];
  assign app_wdf_data_o[26] = dma_data_i[26];
  assign app_wdf_data_o[25] = dma_data_i[25];
  assign app_wdf_data_o[24] = dma_data_i[24];
  assign app_wdf_data_o[23] = dma_data_i[23];
  assign app_wdf_data_o[22] = dma_data_i[22];
  assign app_wdf_data_o[21] = dma_data_i[21];
  assign app_wdf_data_o[20] = dma_data_i[20];
  assign app_wdf_data_o[19] = dma_data_i[19];
  assign app_wdf_data_o[18] = dma_data_i[18];
  assign app_wdf_data_o[17] = dma_data_i[17];
  assign app_wdf_data_o[16] = dma_data_i[16];
  assign app_wdf_data_o[15] = dma_data_i[15];
  assign app_wdf_data_o[14] = dma_data_i[14];
  assign app_wdf_data_o[13] = dma_data_i[13];
  assign app_wdf_data_o[12] = dma_data_i[12];
  assign app_wdf_data_o[11] = dma_data_i[11];
  assign app_wdf_data_o[10] = dma_data_i[10];
  assign app_wdf_data_o[9] = dma_data_i[9];
  assign app_wdf_data_o[8] = dma_data_i[8];
  assign app_wdf_data_o[7] = dma_data_i[7];
  assign app_wdf_data_o[6] = dma_data_i[6];
  assign app_wdf_data_o[5] = dma_data_i[5];
  assign app_wdf_data_o[4] = dma_data_i[4];
  assign app_wdf_data_o[3] = dma_data_i[3];
  assign app_wdf_data_o[2] = dma_data_i[2];
  assign app_wdf_data_o[1] = dma_data_i[1];
  assign app_wdf_data_o[0] = dma_data_i[0];

  bsg_counter_clear_up_max_val_p7_init_val_p0
  word_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_li),
    .up_i(up_li),
    .count_o(count_lo)
  );


  bsg_expand_bitmask
  expand
  (
    .i(dma_mask_i),
    .o(byte_mask_lo)
  );


  bsg_mux
  wdf_mask_mux
  (
    .data_i({ _0_net__31_, _0_net__30_, _0_net__29_, _0_net__28_, _0_net__27_, _0_net__26_, _0_net__25_, _0_net__24_, _0_net__23_, _0_net__22_, _0_net__21_, _0_net__20_, _0_net__19_, _0_net__18_, _0_net__17_, _0_net__16_, _0_net__15_, _0_net__14_, _0_net__13_, _0_net__12_, _0_net__11_, _0_net__10_, _0_net__9_, _0_net__8_, _0_net__7_, _0_net__6_, _0_net__5_, _0_net__4_, _0_net__3_, _0_net__2_, _0_net__1_, _0_net__0_ }),
    .sel_i(count_lo),
    .data_o(app_wdf_mask_o)
  );

  assign N2 = count_lo[1] & count_lo[2];
  assign N3 = count_lo[0] & N2;
  assign clear_li = (N0)? take_word : 
                    (N1)? 1'b0 : 1'b0;
  assign N0 = N3;
  assign up_li = (N0)? 1'b0 : 
                 (N1)? take_word : 1'b0;
  assign app_wdf_end_o = (N0)? take_word : 
                         (N1)? 1'b0 : 1'b0;
  assign dma_data_yumi_o = app_wdf_wren_o & app_wdf_rdy_i;
  assign _0_net__31_ = ~byte_mask_lo[31];
  assign _0_net__30_ = ~byte_mask_lo[30];
  assign _0_net__29_ = ~byte_mask_lo[29];
  assign _0_net__28_ = ~byte_mask_lo[28];
  assign _0_net__27_ = ~byte_mask_lo[27];
  assign _0_net__26_ = ~byte_mask_lo[26];
  assign _0_net__25_ = ~byte_mask_lo[25];
  assign _0_net__24_ = ~byte_mask_lo[24];
  assign _0_net__23_ = ~byte_mask_lo[23];
  assign _0_net__22_ = ~byte_mask_lo[22];
  assign _0_net__21_ = ~byte_mask_lo[21];
  assign _0_net__20_ = ~byte_mask_lo[20];
  assign _0_net__19_ = ~byte_mask_lo[19];
  assign _0_net__18_ = ~byte_mask_lo[18];
  assign _0_net__17_ = ~byte_mask_lo[17];
  assign _0_net__16_ = ~byte_mask_lo[16];
  assign _0_net__15_ = ~byte_mask_lo[15];
  assign _0_net__14_ = ~byte_mask_lo[14];
  assign _0_net__13_ = ~byte_mask_lo[13];
  assign _0_net__12_ = ~byte_mask_lo[12];
  assign _0_net__11_ = ~byte_mask_lo[11];
  assign _0_net__10_ = ~byte_mask_lo[10];
  assign _0_net__9_ = ~byte_mask_lo[9];
  assign _0_net__8_ = ~byte_mask_lo[8];
  assign _0_net__7_ = ~byte_mask_lo[7];
  assign _0_net__6_ = ~byte_mask_lo[6];
  assign _0_net__5_ = ~byte_mask_lo[5];
  assign _0_net__4_ = ~byte_mask_lo[4];
  assign _0_net__3_ = ~byte_mask_lo[3];
  assign _0_net__2_ = ~byte_mask_lo[2];
  assign _0_net__1_ = ~byte_mask_lo[1];
  assign _0_net__0_ = ~byte_mask_lo[0];
  assign take_word = app_wdf_wren_o & app_wdf_rdy_i;
  assign N1 = ~N3;

endmodule

