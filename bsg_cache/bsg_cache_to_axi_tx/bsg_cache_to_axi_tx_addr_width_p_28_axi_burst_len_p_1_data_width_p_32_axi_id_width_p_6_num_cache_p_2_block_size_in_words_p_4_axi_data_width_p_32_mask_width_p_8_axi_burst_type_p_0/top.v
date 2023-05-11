

module top
(
  clk_i,
  reset_i,
  v_i,
  yumi_o,
  cache_id_i,
  addr_i,
  mask_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  axi_awid_o,
  axi_awaddr_addr_o,
  axi_awaddr_cache_id_o,
  axi_awlen_o,
  axi_awsize_o,
  axi_awburst_o,
  axi_awcache_o,
  axi_awprot_o,
  axi_awlock_o,
  axi_awvalid_o,
  axi_awready_i,
  axi_wdata_o,
  axi_wstrb_o,
  axi_wlast_o,
  axi_wvalid_o,
  axi_wready_i,
  axi_bid_i,
  axi_bresp_i,
  axi_bvalid_i,
  axi_bready_o
);

  input [0:0] cache_id_i;
  input [27:0] addr_i;
  input [7:0] mask_i;
  input [63:0] dma_data_i;
  input [1:0] dma_data_v_i;
  output [1:0] dma_data_yumi_o;
  output [5:0] axi_awid_o;
  output [27:0] axi_awaddr_addr_o;
  output [0:0] axi_awaddr_cache_id_o;
  output [7:0] axi_awlen_o;
  output [2:0] axi_awsize_o;
  output [1:0] axi_awburst_o;
  output [3:0] axi_awcache_o;
  output [2:0] axi_awprot_o;
  output [31:0] axi_wdata_o;
  output [3:0] axi_wstrb_o;
  input [5:0] axi_bid_i;
  input [1:0] axi_bresp_i;
  input clk_i;
  input reset_i;
  input v_i;
  input axi_awready_i;
  input axi_wready_i;
  input axi_bvalid_i;
  output yumi_o;
  output axi_awlock_o;
  output axi_awvalid_o;
  output axi_wlast_o;
  output axi_wvalid_o;
  output axi_bready_o;

  bsg_cache_to_axi_tx
  wrapper
  (
    .cache_id_i(cache_id_i),
    .addr_i(addr_i),
    .mask_i(mask_i),
    .dma_data_i(dma_data_i),
    .dma_data_v_i(dma_data_v_i),
    .dma_data_yumi_o(dma_data_yumi_o),
    .axi_awid_o(axi_awid_o),
    .axi_awaddr_addr_o(axi_awaddr_addr_o),
    .axi_awaddr_cache_id_o(axi_awaddr_cache_id_o),
    .axi_awlen_o(axi_awlen_o),
    .axi_awsize_o(axi_awsize_o),
    .axi_awburst_o(axi_awburst_o),
    .axi_awcache_o(axi_awcache_o),
    .axi_awprot_o(axi_awprot_o),
    .axi_wdata_o(axi_wdata_o),
    .axi_wstrb_o(axi_wstrb_o),
    .axi_bid_i(axi_bid_i),
    .axi_bresp_i(axi_bresp_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .axi_awready_i(axi_awready_i),
    .axi_wready_i(axi_wready_i),
    .axi_bvalid_i(axi_bvalid_i),
    .yumi_o(yumi_o),
    .axi_awlock_o(axi_awlock_o),
    .axi_awvalid_o(axi_awvalid_o),
    .axi_wlast_o(axi_wlast_o),
    .axi_wvalid_o(axi_wvalid_o),
    .axi_bready_o(axi_bready_o)
  );


endmodule



module bsg_decode_num_out_p2
(
  i,
  o
);

  input [0:0] i;
  output [1:0] o;
  wire [1:0] o;
  assign o = { 1'b0, 1'b1 } << i[0];

endmodule



module bsg_decode_with_v_num_out_p2
(
  i,
  v_i,
  o
);

  input [0:0] i;
  output [1:0] o;
  input v_i;
  wire [1:0] o,lo;

  bsg_decode_num_out_p2
  bd
  (
    .i(i[0]),
    .o(lo)
  );

  assign o[1] = v_i & lo[1];
  assign o[0] = v_i & lo[0];

endmodule



module bsg_expand_bitmask_in_width_p8_expand_p2
(
  i,
  o
);

  input [7:0] i;
  output [15:0] o;
  wire [15:0] o;
  wire o_15_,o_13_,o_11_,o_9_,o_7_,o_5_,o_3_,o_1_;
  assign o_15_ = i[7];
  assign o[14] = o_15_;
  assign o[15] = o_15_;
  assign o_13_ = i[6];
  assign o[12] = o_13_;
  assign o[13] = o_13_;
  assign o_11_ = i[5];
  assign o[10] = o_11_;
  assign o[11] = o_11_;
  assign o_9_ = i[4];
  assign o[8] = o_9_;
  assign o[9] = o_9_;
  assign o_7_ = i[3];
  assign o[6] = o_7_;
  assign o[7] = o_7_;
  assign o_5_ = i[2];
  assign o[4] = o_5_;
  assign o[5] = o_5_;
  assign o_3_ = i[1];
  assign o[2] = o_3_;
  assign o[3] = o_3_;
  assign o_1_ = i[0];
  assign o[0] = o_1_;
  assign o[1] = o_1_;

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



module bsg_counter_clear_up_max_val_p0_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [0:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire [0:0] count_o;
  wire N0,N1,N4,N5,N6,N2,N3,N7;
  reg count_o_0_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;
  assign N1 = count_o[0] ^ 1'b1;
  assign N4 = (N0)? 1'b1 : 
              (N7)? 1'b1 : 
              (N3)? 1'b0 : 1'b0;
  assign N0 = clear_i;
  assign N5 = (N0)? up_i : 
              (N7)? N1 : 1'b0;
  assign N6 = ~clear_i;
  assign N2 = up_i | clear_i;
  assign N3 = ~N2;
  assign N7 = up_i & N6;

  always @(posedge clk_i) begin
    if(reset_i) begin
      count_o_0_sv2v_reg <= 1'b0;
    end else if(N4) begin
      count_o_0_sv2v_reg <= N5;
    end 
  end


endmodule



module bsg_cache_to_axi_tx
(
  clk_i,
  reset_i,
  v_i,
  yumi_o,
  cache_id_i,
  addr_i,
  mask_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  axi_awid_o,
  axi_awaddr_addr_o,
  axi_awaddr_cache_id_o,
  axi_awlen_o,
  axi_awsize_o,
  axi_awburst_o,
  axi_awcache_o,
  axi_awprot_o,
  axi_awlock_o,
  axi_awvalid_o,
  axi_awready_i,
  axi_wdata_o,
  axi_wstrb_o,
  axi_wlast_o,
  axi_wvalid_o,
  axi_wready_i,
  axi_bid_i,
  axi_bresp_i,
  axi_bvalid_i,
  axi_bready_o
);

  input [0:0] cache_id_i;
  input [27:0] addr_i;
  input [7:0] mask_i;
  input [63:0] dma_data_i;
  input [1:0] dma_data_v_i;
  output [1:0] dma_data_yumi_o;
  output [5:0] axi_awid_o;
  output [27:0] axi_awaddr_addr_o;
  output [0:0] axi_awaddr_cache_id_o;
  output [7:0] axi_awlen_o;
  output [2:0] axi_awsize_o;
  output [1:0] axi_awburst_o;
  output [3:0] axi_awcache_o;
  output [2:0] axi_awprot_o;
  output [31:0] axi_wdata_o;
  output [3:0] axi_wstrb_o;
  input [5:0] axi_bid_i;
  input [1:0] axi_bresp_i;
  input clk_i;
  input reset_i;
  input v_i;
  input axi_awready_i;
  input axi_wready_i;
  input axi_bvalid_i;
  output yumi_o;
  output axi_awlock_o;
  output axi_awvalid_o;
  output axi_wlast_o;
  output axi_wvalid_o;
  output axi_bready_o;
  wire [1:0] dma_data_yumi_o,axi_awburst_o,cache_sel,word_count_lo;
  wire [5:0] axi_awid_o;
  wire [27:0] axi_awaddr_addr_o;
  wire [0:0] axi_awaddr_cache_id_o,tag_lo,burst_count_lo;
  wire [7:0] axi_awlen_o,mask_lo;
  wire [2:0] axi_awsize_o,axi_awprot_o;
  wire [3:0] axi_awcache_o,axi_wstrb_o,sipo_strb_li;
  wire [31:0] axi_wdata_o,sipo_data_li;
  wire yumi_o,axi_awlock_o,axi_awvalid_o,axi_wlast_o,axi_wvalid_o,axi_bready_o,N0,N1,
  N2,N3,tag_fifo_v_li,tag_fifo_ready_lo,tag_fifo_v_lo,tag_fifo_yumi_li,N4,
  sipo_ready_lo,sipo_v_li,sipo_yumi_li,N5,N6,word_clear_li,word_up_li,N7,N8,N9,N10,pop_word,
  N11,burst_clear_li,burst_up_li,N12,N13,N14,N15,N16,N17,N18,N19;
  wire [15:0] byte_mask_lo;
  assign axi_bready_o = 1'b1;
  assign axi_awsize_o[1] = 1'b1;
  assign axi_awlock_o = 1'b0;
  assign axi_awprot_o[0] = 1'b0;
  assign axi_awprot_o[1] = 1'b0;
  assign axi_awprot_o[2] = 1'b0;
  assign axi_awcache_o[0] = 1'b0;
  assign axi_awcache_o[1] = 1'b0;
  assign axi_awcache_o[2] = 1'b0;
  assign axi_awcache_o[3] = 1'b0;
  assign axi_awburst_o[0] = 1'b0;
  assign axi_awburst_o[1] = 1'b0;
  assign axi_awsize_o[0] = 1'b0;
  assign axi_awsize_o[2] = 1'b0;
  assign axi_awlen_o[0] = 1'b0;
  assign axi_awlen_o[1] = 1'b0;
  assign axi_awlen_o[2] = 1'b0;
  assign axi_awlen_o[3] = 1'b0;
  assign axi_awlen_o[4] = 1'b0;
  assign axi_awlen_o[5] = 1'b0;
  assign axi_awlen_o[6] = 1'b0;
  assign axi_awlen_o[7] = 1'b0;
  assign axi_awid_o[0] = 1'b0;
  assign axi_awid_o[1] = 1'b0;
  assign axi_awid_o[2] = 1'b0;
  assign axi_awid_o[3] = 1'b0;
  assign axi_awid_o[4] = 1'b0;
  assign axi_awid_o[5] = 1'b0;
  assign axi_awaddr_addr_o[27] = addr_i[27];
  assign axi_awaddr_addr_o[26] = addr_i[26];
  assign axi_awaddr_addr_o[25] = addr_i[25];
  assign axi_awaddr_addr_o[24] = addr_i[24];
  assign axi_awaddr_addr_o[23] = addr_i[23];
  assign axi_awaddr_addr_o[22] = addr_i[22];
  assign axi_awaddr_addr_o[21] = addr_i[21];
  assign axi_awaddr_addr_o[20] = addr_i[20];
  assign axi_awaddr_addr_o[19] = addr_i[19];
  assign axi_awaddr_addr_o[18] = addr_i[18];
  assign axi_awaddr_addr_o[17] = addr_i[17];
  assign axi_awaddr_addr_o[16] = addr_i[16];
  assign axi_awaddr_addr_o[15] = addr_i[15];
  assign axi_awaddr_addr_o[14] = addr_i[14];
  assign axi_awaddr_addr_o[13] = addr_i[13];
  assign axi_awaddr_addr_o[12] = addr_i[12];
  assign axi_awaddr_addr_o[11] = addr_i[11];
  assign axi_awaddr_addr_o[10] = addr_i[10];
  assign axi_awaddr_addr_o[9] = addr_i[9];
  assign axi_awaddr_addr_o[8] = addr_i[8];
  assign axi_awaddr_addr_o[7] = addr_i[7];
  assign axi_awaddr_addr_o[6] = addr_i[6];
  assign axi_awaddr_addr_o[5] = addr_i[5];
  assign axi_awaddr_addr_o[4] = addr_i[4];
  assign axi_awaddr_addr_o[3] = addr_i[3];
  assign axi_awaddr_addr_o[2] = addr_i[2];
  assign axi_awaddr_addr_o[1] = addr_i[1];
  assign axi_awaddr_addr_o[0] = addr_i[0];
  assign axi_awaddr_cache_id_o[0] = cache_id_i[0];

  bsg_fifo_1r1w_small
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(tag_fifo_v_li),
    .ready_o(tag_fifo_ready_lo),
    .data_i({ mask_i, axi_awaddr_cache_id_o[0:0] }),
    .v_o(tag_fifo_v_lo),
    .data_o({ mask_lo, tag_lo[0:0] }),
    .yumi_i(tag_fifo_yumi_li)
  );


  bsg_decode_with_v_num_out_p2
  demux
  (
    .i(tag_lo[0]),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel)
  );


  bsg_expand_bitmask_in_width_p8_expand_p2
  expand
  (
    .i(mask_lo),
    .o(byte_mask_lo)
  );

  assign sipo_data_li[31] = (N4)? dma_data_i[31] : 
                            (N0)? dma_data_i[63] : 1'b0;
  assign N0 = tag_lo[0];
  assign sipo_data_li[30] = (N4)? dma_data_i[30] : 
                            (N0)? dma_data_i[62] : 1'b0;
  assign sipo_data_li[29] = (N4)? dma_data_i[29] : 
                            (N0)? dma_data_i[61] : 1'b0;
  assign sipo_data_li[28] = (N4)? dma_data_i[28] : 
                            (N0)? dma_data_i[60] : 1'b0;
  assign sipo_data_li[27] = (N4)? dma_data_i[27] : 
                            (N0)? dma_data_i[59] : 1'b0;
  assign sipo_data_li[26] = (N4)? dma_data_i[26] : 
                            (N0)? dma_data_i[58] : 1'b0;
  assign sipo_data_li[25] = (N4)? dma_data_i[25] : 
                            (N0)? dma_data_i[57] : 1'b0;
  assign sipo_data_li[24] = (N4)? dma_data_i[24] : 
                            (N0)? dma_data_i[56] : 1'b0;
  assign sipo_data_li[23] = (N4)? dma_data_i[23] : 
                            (N0)? dma_data_i[55] : 1'b0;
  assign sipo_data_li[22] = (N4)? dma_data_i[22] : 
                            (N0)? dma_data_i[54] : 1'b0;
  assign sipo_data_li[21] = (N4)? dma_data_i[21] : 
                            (N0)? dma_data_i[53] : 1'b0;
  assign sipo_data_li[20] = (N4)? dma_data_i[20] : 
                            (N0)? dma_data_i[52] : 1'b0;
  assign sipo_data_li[19] = (N4)? dma_data_i[19] : 
                            (N0)? dma_data_i[51] : 1'b0;
  assign sipo_data_li[18] = (N4)? dma_data_i[18] : 
                            (N0)? dma_data_i[50] : 1'b0;
  assign sipo_data_li[17] = (N4)? dma_data_i[17] : 
                            (N0)? dma_data_i[49] : 1'b0;
  assign sipo_data_li[16] = (N4)? dma_data_i[16] : 
                            (N0)? dma_data_i[48] : 1'b0;
  assign sipo_data_li[15] = (N4)? dma_data_i[15] : 
                            (N0)? dma_data_i[47] : 1'b0;
  assign sipo_data_li[14] = (N4)? dma_data_i[14] : 
                            (N0)? dma_data_i[46] : 1'b0;
  assign sipo_data_li[13] = (N4)? dma_data_i[13] : 
                            (N0)? dma_data_i[45] : 1'b0;
  assign sipo_data_li[12] = (N4)? dma_data_i[12] : 
                            (N0)? dma_data_i[44] : 1'b0;
  assign sipo_data_li[11] = (N4)? dma_data_i[11] : 
                            (N0)? dma_data_i[43] : 1'b0;
  assign sipo_data_li[10] = (N4)? dma_data_i[10] : 
                            (N0)? dma_data_i[42] : 1'b0;
  assign sipo_data_li[9] = (N4)? dma_data_i[9] : 
                           (N0)? dma_data_i[41] : 1'b0;
  assign sipo_data_li[8] = (N4)? dma_data_i[8] : 
                           (N0)? dma_data_i[40] : 1'b0;
  assign sipo_data_li[7] = (N4)? dma_data_i[7] : 
                           (N0)? dma_data_i[39] : 1'b0;
  assign sipo_data_li[6] = (N4)? dma_data_i[6] : 
                           (N0)? dma_data_i[38] : 1'b0;
  assign sipo_data_li[5] = (N4)? dma_data_i[5] : 
                           (N0)? dma_data_i[37] : 1'b0;
  assign sipo_data_li[4] = (N4)? dma_data_i[4] : 
                           (N0)? dma_data_i[36] : 1'b0;
  assign sipo_data_li[3] = (N4)? dma_data_i[3] : 
                           (N0)? dma_data_i[35] : 1'b0;
  assign sipo_data_li[2] = (N4)? dma_data_i[2] : 
                           (N0)? dma_data_i[34] : 1'b0;
  assign sipo_data_li[1] = (N4)? dma_data_i[1] : 
                           (N0)? dma_data_i[33] : 1'b0;
  assign sipo_data_li[0] = (N4)? dma_data_i[0] : 
                           (N0)? dma_data_i[32] : 1'b0;

  bsg_serial_in_parallel_out_full
  sipo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(sipo_v_li),
    .data_i(sipo_data_li),
    .ready_o(sipo_ready_lo),
    .v_o(axi_wvalid_o),
    .data_o(axi_wdata_o),
    .yumi_i(sipo_yumi_li)
  );


  bsg_serial_in_parallel_out_full
  strb_sipo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(sipo_v_li),
    .data_i(sipo_strb_li),
    .data_o(axi_wstrb_o),
    .yumi_i(sipo_yumi_li)
  );

  assign N6 = (N5)? dma_data_v_i[0] : 
              (N0)? dma_data_v_i[1] : 1'b0;

  bsg_counter_clear_up_max_val_p3_init_val_p0
  word_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(word_clear_li),
    .up_i(word_up_li),
    .count_o(word_count_lo)
  );


  bsg_mux
  wstrb_mux
  (
    .data_i(byte_mask_lo),
    .sel_i(word_count_lo),
    .data_o(sipo_strb_li)
  );

  assign N8 = (N7)? dma_data_v_i[0] : 
              (N0)? dma_data_v_i[1] : 1'b0;
  assign N10 = (N9)? dma_data_yumi_o[0] : 
               (N0)? dma_data_yumi_o[1] : 1'b0;

  bsg_counter_clear_up_max_val_p0_init_val_p0
  burst_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(burst_clear_li),
    .up_i(burst_up_li),
    .count_o(burst_count_lo[0])
  );

  assign N14 = ~burst_count_lo[0];
  assign N15 = word_count_lo[0] & word_count_lo[1];
  assign word_clear_li = (N1)? pop_word : 
                         (N11)? 1'b0 : 1'b0;
  assign N1 = N15;
  assign word_up_li = (N1)? 1'b0 : 
                      (N11)? pop_word : 1'b0;
  assign tag_fifo_yumi_li = (N1)? pop_word : 
                            (N11)? 1'b0 : 1'b0;
  assign burst_clear_li = (N2)? N12 : 
                          (N3)? 1'b0 : 1'b0;
  assign N2 = N14;
  assign N3 = burst_count_lo[0];
  assign burst_up_li = (N2)? 1'b0 : 
                       (N3)? N13 : 1'b0;
  assign axi_wlast_o = (N2)? axi_wvalid_o : 
                       (N3)? 1'b0 : 1'b0;
  assign yumi_o = N16 & tag_fifo_ready_lo;
  assign N16 = v_i & axi_awready_i;
  assign tag_fifo_v_li = v_i & axi_awready_i;
  assign axi_awvalid_o = v_i & tag_fifo_ready_lo;
  assign N4 = ~tag_lo[0];
  assign dma_data_yumi_o[1] = N17 & sipo_ready_lo;
  assign N17 = cache_sel[1] & dma_data_v_i[1];
  assign dma_data_yumi_o[0] = N18 & sipo_ready_lo;
  assign N18 = cache_sel[0] & dma_data_v_i[0];
  assign N5 = ~tag_lo[0];
  assign sipo_v_li = tag_fifo_v_lo & N6;
  assign sipo_yumi_li = axi_wvalid_o & axi_wready_i;
  assign N7 = ~tag_lo[0];
  assign N9 = ~tag_lo[0];
  assign pop_word = N19 & tag_fifo_v_lo;
  assign N19 = N8 & N10;
  assign N11 = ~N15;
  assign N12 = axi_wvalid_o & axi_wready_i;
  assign N13 = axi_wvalid_o & axi_wready_i;

endmodule

