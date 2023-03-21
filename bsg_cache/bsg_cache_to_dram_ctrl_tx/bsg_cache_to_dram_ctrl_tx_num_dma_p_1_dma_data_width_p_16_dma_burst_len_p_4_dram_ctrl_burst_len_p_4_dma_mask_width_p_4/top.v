

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

  input [3:0] dma_mask_i;
  input [15:0] dma_data_i;
  output [15:0] app_wdf_data_o;
  output [1:0] app_wdf_mask_o;
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



module bsg_counter_clear_up_max_val_p3_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [1:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire [1:0] count_o;
  wire N0,N1,N4,N5,N6,N8,N9,N10,N11,N12,N13,N14,N2,N3,N7,N30,N15;
  reg count_o_1_sv2v_reg,count_o_0_sv2v_reg;
  assign count_o[1] = count_o_1_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;
  assign N15 = reset_i | clear_i;
  assign { N6, N5 } = count_o + 1'b1;
  assign N8 = (N0)? 1'b1 : 
              (N7)? 1'b1 : 
              (N3)? 1'b0 : 1'b0;
  assign N0 = clear_i;
  assign N10 = (N1)? 1'b1 : 
               (N30)? 1'b0 : 1'b0;
  assign N1 = up_i;
  assign N9 = (N0)? up_i : 
              (N7)? N5 : 1'b0;
  assign N4 = N14;
  assign N11 = ~reset_i;
  assign N12 = ~clear_i;
  assign N13 = N11 & N12;
  assign N14 = up_i & N13;
  assign N2 = up_i | clear_i;
  assign N3 = ~N2;
  assign N7 = up_i & N12;
  assign N30 = ~up_i;

  always @(posedge clk_i) begin
    if(N15) begin
      count_o_1_sv2v_reg <= 1'b0;
    end else if(N10) begin
      count_o_1_sv2v_reg <= N6;
    end 
    if(reset_i) begin
      count_o_0_sv2v_reg <= 1'b0;
    end else if(N8) begin
      count_o_0_sv2v_reg <= N9;
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

  input [3:0] dma_mask_i;
  input [15:0] dma_data_i;
  output [15:0] app_wdf_data_o;
  output [1:0] app_wdf_mask_o;
  input clk_i;
  input reset_i;
  input dma_data_v_i;
  input app_wdf_rdy_i;
  output dma_data_yumi_o;
  output app_wdf_wren_o;
  output app_wdf_end_o;
  wire [15:0] app_wdf_data_o;
  wire [1:0] app_wdf_mask_o,count_lo;
  wire dma_data_yumi_o,app_wdf_wren_o,app_wdf_end_o,N0,clear_li,up_li,_0_net__7_,
  _0_net__6_,_0_net__5_,_0_net__4_,_0_net__3_,_0_net__2_,_0_net__1_,_0_net__0_,
  take_word,N1,N2;
  wire [7:0] byte_mask_lo;
  assign app_wdf_wren_o = dma_data_v_i;
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

  bsg_counter_clear_up_max_val_p3_init_val_p0
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
    .data_i({ _0_net__7_, _0_net__6_, _0_net__5_, _0_net__4_, _0_net__3_, _0_net__2_, _0_net__1_, _0_net__0_ }),
    .sel_i(count_lo),
    .data_o(app_wdf_mask_o)
  );

  assign N2 = count_lo[0] & count_lo[1];
  assign clear_li = (N0)? take_word : 
                    (N1)? 1'b0 : 1'b0;
  assign N0 = N2;
  assign up_li = (N0)? 1'b0 : 
                 (N1)? take_word : 1'b0;
  assign app_wdf_end_o = (N0)? take_word : 
                         (N1)? 1'b0 : 1'b0;
  assign dma_data_yumi_o = app_wdf_wren_o & app_wdf_rdy_i;
  assign _0_net__7_ = ~byte_mask_lo[7];
  assign _0_net__6_ = ~byte_mask_lo[6];
  assign _0_net__5_ = ~byte_mask_lo[5];
  assign _0_net__4_ = ~byte_mask_lo[4];
  assign _0_net__3_ = ~byte_mask_lo[3];
  assign _0_net__2_ = ~byte_mask_lo[2];
  assign _0_net__1_ = ~byte_mask_lo[1];
  assign _0_net__0_ = ~byte_mask_lo[0];
  assign take_word = app_wdf_wren_o & app_wdf_rdy_i;
  assign N1 = ~N2;

endmodule

