

module top
(
  w_clk_i,
  w_inc_token_i,
  w_reset_i,
  r_clk_i,
  r_reset_i,
  r_dec_credit_i,
  r_infinite_credits_i,
  r_credits_avail_o
);

  input w_clk_i;
  input w_inc_token_i;
  input w_reset_i;
  input r_clk_i;
  input r_reset_i;
  input r_dec_credit_i;
  input r_infinite_credits_i;
  output r_credits_avail_o;

  bsg_async_credit_counter
  wrapper
  (
    .w_clk_i(w_clk_i),
    .w_inc_token_i(w_inc_token_i),
    .w_reset_i(w_reset_i),
    .r_clk_i(r_clk_i),
    .r_reset_i(r_reset_i),
    .r_dec_credit_i(r_dec_credit_i),
    .r_infinite_credits_i(r_infinite_credits_i),
    .r_credits_avail_o(r_credits_avail_o)
  );


endmodule



module bsg_launch_sync_sync_posedge_2_unit
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [1:0] iclk_data_i;
  output [1:0] iclk_data_o;
  output [1:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire [1:0] iclk_data_o,oclk_data_o,bsg_SYNC_1_r;
  reg iclk_data_o_1_sv2v_reg,iclk_data_o_0_sv2v_reg,bsg_SYNC_1_r_1_sv2v_reg,
  bsg_SYNC_1_r_0_sv2v_reg,oclk_data_o_1_sv2v_reg,oclk_data_o_0_sv2v_reg;
  assign iclk_data_o[1] = iclk_data_o_1_sv2v_reg;
  assign iclk_data_o[0] = iclk_data_o_0_sv2v_reg;
  assign bsg_SYNC_1_r[1] = bsg_SYNC_1_r_1_sv2v_reg;
  assign bsg_SYNC_1_r[0] = bsg_SYNC_1_r_0_sv2v_reg;
  assign oclk_data_o[1] = oclk_data_o_1_sv2v_reg;
  assign oclk_data_o[0] = oclk_data_o_0_sv2v_reg;

  always @(posedge iclk_i) begin
    if(iclk_reset_i) begin
      iclk_data_o_1_sv2v_reg <= 1'b0;
      iclk_data_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      iclk_data_o_1_sv2v_reg <= iclk_data_i[1];
      iclk_data_o_0_sv2v_reg <= iclk_data_i[0];
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      bsg_SYNC_1_r_1_sv2v_reg <= iclk_data_o[1];
      bsg_SYNC_1_r_0_sv2v_reg <= iclk_data_o[0];
      oclk_data_o_1_sv2v_reg <= bsg_SYNC_1_r[1];
      oclk_data_o_0_sv2v_reg <= bsg_SYNC_1_r[0];
    end 
  end


endmodule



module bsg_launch_sync_sync_width_p2_use_negedge_for_launch_p0_use_async_reset_p0
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [1:0] iclk_data_i;
  output [1:0] iclk_data_o;
  output [1:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire [1:0] iclk_data_o,oclk_data_o;

  bsg_launch_sync_sync_posedge_2_unit
  \sync.p.z.blss 
  (
    .iclk_i(iclk_i),
    .iclk_reset_i(iclk_reset_i),
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i),
    .iclk_data_o(iclk_data_o),
    .oclk_data_o(oclk_data_o)
  );


endmodule



module bsg_async_ptr_gray_lg_size_p2_use_negedge_for_launch_p0_use_async_reset_p0
(
  w_clk_i,
  w_reset_i,
  w_inc_i,
  r_clk_i,
  w_ptr_binary_r_o,
  w_ptr_gray_r_o,
  w_ptr_gray_r_rsync_o
);

  output [1:0] w_ptr_binary_r_o;
  output [1:0] w_ptr_gray_r_o;
  output [1:0] w_ptr_gray_r_rsync_o;
  input w_clk_i;
  input w_reset_i;
  input w_inc_i;
  input r_clk_i;
  wire [1:0] w_ptr_binary_r_o,w_ptr_gray_r_o,w_ptr_gray_r_rsync_o,w_ptr_p1_r,w_ptr_p2,
  w_ptr_gray_n;
  wire N0,N1,N2,N3;
  reg w_ptr_p1_r_1_sv2v_reg,w_ptr_p1_r_0_sv2v_reg,w_ptr_binary_r_o_1_sv2v_reg,
  w_ptr_binary_r_o_0_sv2v_reg;
  assign w_ptr_p1_r[1] = w_ptr_p1_r_1_sv2v_reg;
  assign w_ptr_p1_r[0] = w_ptr_p1_r_0_sv2v_reg;
  assign w_ptr_binary_r_o[1] = w_ptr_binary_r_o_1_sv2v_reg;
  assign w_ptr_binary_r_o[0] = w_ptr_binary_r_o_0_sv2v_reg;

  bsg_launch_sync_sync_width_p2_use_negedge_for_launch_p0_use_async_reset_p0
  ptr_sync
  (
    .iclk_i(w_clk_i),
    .iclk_reset_i(w_reset_i),
    .oclk_i(r_clk_i),
    .iclk_data_i(w_ptr_gray_n),
    .iclk_data_o(w_ptr_gray_r_o),
    .oclk_data_o(w_ptr_gray_r_rsync_o)
  );

  assign w_ptr_p2 = w_ptr_p1_r + 1'b1;
  assign w_ptr_gray_n = (N0)? { w_ptr_p1_r[1:1], N3 } : 
                        (N1)? w_ptr_gray_r_o : 1'b0;
  assign N0 = w_inc_i;
  assign N1 = N2;
  assign N2 = ~w_inc_i;
  assign N3 = w_ptr_p1_r[1] ^ w_ptr_p1_r[0];

  always @(posedge w_clk_i) begin
    if(w_reset_i) begin
      w_ptr_p1_r_1_sv2v_reg <= 1'b0;
      w_ptr_p1_r_0_sv2v_reg <= 1'b1;
      w_ptr_binary_r_o_1_sv2v_reg <= 1'b0;
      w_ptr_binary_r_o_0_sv2v_reg <= 1'b0;
    end else if(w_inc_i) begin
      w_ptr_p1_r_1_sv2v_reg <= w_ptr_p2[1];
      w_ptr_p1_r_0_sv2v_reg <= w_ptr_p2[0];
      w_ptr_binary_r_o_1_sv2v_reg <= w_ptr_p1_r[1];
      w_ptr_binary_r_o_0_sv2v_reg <= w_ptr_p1_r[0];
    end 
  end


endmodule



module bsg_async_credit_counter
(
  w_clk_i,
  w_inc_token_i,
  w_reset_i,
  r_clk_i,
  r_reset_i,
  r_dec_credit_i,
  r_infinite_credits_i,
  r_credits_avail_o
);

  input w_clk_i;
  input w_inc_token_i;
  input w_reset_i;
  input r_clk_i;
  input r_reset_i;
  input r_dec_credit_i;
  input r_infinite_credits_i;
  output r_credits_avail_o;
  wire r_credits_avail_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,r_counter_r_lo_bits_nonzero,
  N11,N12,N13,N14,N15,N16,N17,N18,sv2v_dc_1,sv2v_dc_2;
  wire [9:0] r_counter_r;
  wire [1:0] w_counter_gray_r,w_counter_gray_r_rsync;
  wire [0:0] r_counter_r_hi_bits_gray;
  reg r_counter_r_9_sv2v_reg,r_counter_r_8_sv2v_reg,r_counter_r_7_sv2v_reg,
  r_counter_r_6_sv2v_reg,r_counter_r_5_sv2v_reg,r_counter_r_4_sv2v_reg,
  r_counter_r_3_sv2v_reg,r_counter_r_2_sv2v_reg,r_counter_r_1_sv2v_reg,r_counter_r_0_sv2v_reg;
  assign r_counter_r[9] = r_counter_r_9_sv2v_reg;
  assign r_counter_r[8] = r_counter_r_8_sv2v_reg;
  assign r_counter_r[7] = r_counter_r_7_sv2v_reg;
  assign r_counter_r[6] = r_counter_r_6_sv2v_reg;
  assign r_counter_r[5] = r_counter_r_5_sv2v_reg;
  assign r_counter_r[4] = r_counter_r_4_sv2v_reg;
  assign r_counter_r[3] = r_counter_r_3_sv2v_reg;
  assign r_counter_r[2] = r_counter_r_2_sv2v_reg;
  assign r_counter_r[1] = r_counter_r_1_sv2v_reg;
  assign r_counter_r[0] = r_counter_r_0_sv2v_reg;

  bsg_async_ptr_gray_lg_size_p2_use_negedge_for_launch_p0_use_async_reset_p0
  bapg
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_inc_i(w_inc_token_i),
    .r_clk_i(r_clk_i),
    .w_ptr_binary_r_o({ sv2v_dc_1, sv2v_dc_2 }),
    .w_ptr_gray_r_o(w_counter_gray_r),
    .w_ptr_gray_r_rsync_o(w_counter_gray_r_rsync)
  );

  assign N11 = { r_counter_r[9:9], r_counter_r_hi_bits_gray[0:0] } != w_counter_gray_r_rsync;
  assign { N10, N9, N8, N7, N6, N5, N4, N3, N2, N1 } = r_counter_r + r_dec_credit_i;
  assign N0 = ~r_reset_i;
  assign r_counter_r_lo_bits_nonzero = N17 | r_counter_r[0];
  assign N17 = N16 | r_counter_r[1];
  assign N16 = N15 | r_counter_r[2];
  assign N15 = N14 | r_counter_r[3];
  assign N14 = N13 | r_counter_r[4];
  assign N13 = N12 | r_counter_r[5];
  assign N12 = r_counter_r[7] | r_counter_r[6];
  assign r_counter_r_hi_bits_gray[0] = r_counter_r[9] ^ r_counter_r[8];
  assign r_credits_avail_o = N18 | N11;
  assign N18 = r_infinite_credits_i | r_counter_r_lo_bits_nonzero;

  always @(posedge r_clk_i) begin
    if(r_reset_i) begin
      r_counter_r_9_sv2v_reg <= 1'b0;
      r_counter_r_8_sv2v_reg <= 1'b1;
      r_counter_r_7_sv2v_reg <= 1'b0;
      r_counter_r_6_sv2v_reg <= 1'b0;
      r_counter_r_5_sv2v_reg <= 1'b0;
      r_counter_r_4_sv2v_reg <= 1'b0;
      r_counter_r_3_sv2v_reg <= 1'b0;
      r_counter_r_2_sv2v_reg <= 1'b0;
      r_counter_r_1_sv2v_reg <= 1'b0;
      r_counter_r_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      r_counter_r_9_sv2v_reg <= N10;
      r_counter_r_8_sv2v_reg <= N9;
      r_counter_r_7_sv2v_reg <= N8;
      r_counter_r_6_sv2v_reg <= N7;
      r_counter_r_5_sv2v_reg <= N6;
      r_counter_r_4_sv2v_reg <= N5;
      r_counter_r_3_sv2v_reg <= N4;
      r_counter_r_2_sv2v_reg <= N3;
      r_counter_r_1_sv2v_reg <= N2;
      r_counter_r_0_sv2v_reg <= N1;
    end 
  end


endmodule

