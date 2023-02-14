

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



module bsg_launch_sync_sync_posedge_3_unit
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [2:0] iclk_data_i;
  output [2:0] iclk_data_o;
  output [2:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire N0,N1,N2,N3,N4,N5;
  reg [2:0] iclk_data_o,bsg_SYNC_1_r,oclk_data_o;
  assign { N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                          (N1)? iclk_data_i : 1'b0;
  assign N0 = iclk_reset_i;
  assign N1 = N2;
  assign N2 = ~iclk_reset_i;

  always @(posedge iclk_i) begin
    if(1'b1) begin
      { iclk_data_o[2:0] } <= { N5, N4, N3 };
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      { bsg_SYNC_1_r[2:0] } <= { iclk_data_o[2:0] };
      { oclk_data_o[2:0] } <= { bsg_SYNC_1_r[2:0] };
    end 
  end


endmodule



module bsg_launch_sync_sync_width_p3_use_negedge_for_launch_p0_use_async_reset_p0
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [2:0] iclk_data_i;
  output [2:0] iclk_data_o;
  output [2:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire [2:0] iclk_data_o,oclk_data_o;

  bsg_launch_sync_sync_posedge_3_unit
  sync_p_z_blss
  (
    .iclk_i(iclk_i),
    .iclk_reset_i(iclk_reset_i),
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i),
    .iclk_data_o(iclk_data_o),
    .oclk_data_o(oclk_data_o)
  );


endmodule



module bsg_async_ptr_gray_lg_size_p3_use_negedge_for_launch_p0_use_async_reset_p0
(
  w_clk_i,
  w_reset_i,
  w_inc_i,
  r_clk_i,
  w_ptr_binary_r_o,
  w_ptr_gray_r_o,
  w_ptr_gray_r_rsync_o
);

  output [2:0] w_ptr_binary_r_o;
  output [2:0] w_ptr_gray_r_o;
  output [2:0] w_ptr_gray_r_rsync_o;
  input w_clk_i;
  input w_reset_i;
  input w_inc_i;
  input r_clk_i;
  wire [2:0] w_ptr_gray_r_o,w_ptr_gray_r_rsync_o,w_ptr_p2,w_ptr_gray_n;
  wire N0,N1,N2,N3,N4;
  reg [2:0] w_ptr_p1_r,w_ptr_binary_r_o;

  bsg_launch_sync_sync_width_p3_use_negedge_for_launch_p0_use_async_reset_p0
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
  assign w_ptr_gray_n = (N0)? { w_ptr_p1_r[2:2], N3, N4 } : 
                        (N1)? w_ptr_gray_r_o : 1'b0;
  assign N0 = w_inc_i;
  assign N1 = N2;
  assign N2 = ~w_inc_i;
  assign N3 = w_ptr_p1_r[2] ^ w_ptr_p1_r[1];
  assign N4 = w_ptr_p1_r[1] ^ w_ptr_p1_r[0];

  always @(posedge w_clk_i) begin
    if(w_reset_i) begin
      { w_ptr_p1_r[2:0] } <= { 1'b0, 1'b0, 1'b1 };
      { w_ptr_binary_r_o[2:0] } <= { 1'b0, 1'b0, 1'b0 };
    end else if(w_inc_i) begin
      { w_ptr_p1_r[2:0] } <= { w_ptr_p2[2:0] };
      { w_ptr_binary_r_o[2:0] } <= { w_ptr_p1_r[2:0] };
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
  wire r_credits_avail_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,
  N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,
  N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,
  N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,
  r_counter_r_lo_bits_nonzero,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,
  N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,
  SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3;
  wire [2:0] w_counter_gray_r,w_counter_gray_r_rsync;
  wire [1:0] r_counter_r_hi_bits_gray;
  reg [34:0] r_counter_r;

  bsg_async_ptr_gray_lg_size_p3_use_negedge_for_launch_p0_use_async_reset_p0
  bapg
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_inc_i(w_inc_token_i),
    .r_clk_i(r_clk_i),
    .w_ptr_binary_r_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3 }),
    .w_ptr_gray_r_o(w_counter_gray_r),
    .w_ptr_gray_r_rsync_o(w_counter_gray_r_rsync)
  );

  assign N73 = { r_counter_r[34:34], r_counter_r_hi_bits_gray } != w_counter_gray_r_rsync;
  assign { N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = r_counter_r + r_dec_credit_i;
  assign { N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38 } = (N0)? { 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                             (N1)? { N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } : 1'b0;
  assign N0 = r_reset_i;
  assign N1 = N2;
  assign N2 = ~r_reset_i;
  assign r_counter_r_lo_bits_nonzero = N103 | r_counter_r[0];
  assign N103 = N102 | r_counter_r[1];
  assign N102 = N101 | r_counter_r[2];
  assign N101 = N100 | r_counter_r[3];
  assign N100 = N99 | r_counter_r[4];
  assign N99 = N98 | r_counter_r[5];
  assign N98 = N97 | r_counter_r[6];
  assign N97 = N96 | r_counter_r[7];
  assign N96 = N95 | r_counter_r[8];
  assign N95 = N94 | r_counter_r[9];
  assign N94 = N93 | r_counter_r[10];
  assign N93 = N92 | r_counter_r[11];
  assign N92 = N91 | r_counter_r[12];
  assign N91 = N90 | r_counter_r[13];
  assign N90 = N89 | r_counter_r[14];
  assign N89 = N88 | r_counter_r[15];
  assign N88 = N87 | r_counter_r[16];
  assign N87 = N86 | r_counter_r[17];
  assign N86 = N85 | r_counter_r[18];
  assign N85 = N84 | r_counter_r[19];
  assign N84 = N83 | r_counter_r[20];
  assign N83 = N82 | r_counter_r[21];
  assign N82 = N81 | r_counter_r[22];
  assign N81 = N80 | r_counter_r[23];
  assign N80 = N79 | r_counter_r[24];
  assign N79 = N78 | r_counter_r[25];
  assign N78 = N77 | r_counter_r[26];
  assign N77 = N76 | r_counter_r[27];
  assign N76 = N75 | r_counter_r[28];
  assign N75 = N74 | r_counter_r[29];
  assign N74 = r_counter_r[31] | r_counter_r[30];
  assign r_counter_r_hi_bits_gray[1] = r_counter_r[34] ^ r_counter_r[33];
  assign r_counter_r_hi_bits_gray[0] = r_counter_r[33] ^ r_counter_r[32];
  assign r_credits_avail_o = N104 | N73;
  assign N104 = r_infinite_credits_i | r_counter_r_lo_bits_nonzero;

  always @(posedge r_clk_i) begin
    if(1'b1) begin
      { r_counter_r[34:0] } <= { N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38 };
    end 
  end


endmodule

