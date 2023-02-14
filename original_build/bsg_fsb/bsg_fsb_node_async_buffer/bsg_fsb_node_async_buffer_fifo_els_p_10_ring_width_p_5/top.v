

module top
(
  L_clk_i,
  L_reset_i,
  L_en_o,
  L_v_o,
  L_data_o,
  L_ready_i,
  L_v_i,
  L_data_i,
  L_yumi_o,
  R_clk_i,
  R_reset_i,
  R_en_i,
  R_v_i,
  R_data_i,
  R_ready_o,
  R_v_o,
  R_data_o,
  R_yumi_i
);

  output [4:0] L_data_o;
  input [4:0] L_data_i;
  input [4:0] R_data_i;
  output [4:0] R_data_o;
  input L_clk_i;
  input L_reset_i;
  input L_ready_i;
  input L_v_i;
  input R_clk_i;
  input R_reset_i;
  input R_en_i;
  input R_v_i;
  input R_yumi_i;
  output L_en_o;
  output L_v_o;
  output L_yumi_o;
  output R_ready_o;
  output R_v_o;

  bsg_fsb_node_async_buffer
  wrapper
  (
    .L_data_o(L_data_o),
    .L_data_i(L_data_i),
    .R_data_i(R_data_i),
    .R_data_o(R_data_o),
    .L_clk_i(L_clk_i),
    .L_reset_i(L_reset_i),
    .L_ready_i(L_ready_i),
    .L_v_i(L_v_i),
    .R_clk_i(R_clk_i),
    .R_reset_i(R_reset_i),
    .R_en_i(R_en_i),
    .R_v_i(R_v_i),
    .R_yumi_i(R_yumi_i),
    .L_en_o(L_en_o),
    .L_v_o(L_v_o),
    .L_yumi_o(L_yumi_o),
    .R_ready_o(R_ready_o),
    .R_v_o(R_v_o)
  );


endmodule



module bsg_mem_1r1w_synth_width_p5_els_p16_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [3:0] w_addr_i;
  input [4:0] w_data_i;
  input [3:0] r_addr_i;
  output [4:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [4:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82;
  reg [79:0] mem;
  assign r_data_o[4] = (N26)? mem[4] : 
                       (N28)? mem[9] : 
                       (N30)? mem[14] : 
                       (N32)? mem[19] : 
                       (N34)? mem[24] : 
                       (N36)? mem[29] : 
                       (N38)? mem[34] : 
                       (N40)? mem[39] : 
                       (N27)? mem[44] : 
                       (N29)? mem[49] : 
                       (N31)? mem[54] : 
                       (N33)? mem[59] : 
                       (N35)? mem[64] : 
                       (N37)? mem[69] : 
                       (N39)? mem[74] : 
                       (N41)? mem[79] : 1'b0;
  assign r_data_o[3] = (N26)? mem[3] : 
                       (N28)? mem[8] : 
                       (N30)? mem[13] : 
                       (N32)? mem[18] : 
                       (N34)? mem[23] : 
                       (N36)? mem[28] : 
                       (N38)? mem[33] : 
                       (N40)? mem[38] : 
                       (N27)? mem[43] : 
                       (N29)? mem[48] : 
                       (N31)? mem[53] : 
                       (N33)? mem[58] : 
                       (N35)? mem[63] : 
                       (N37)? mem[68] : 
                       (N39)? mem[73] : 
                       (N41)? mem[78] : 1'b0;
  assign r_data_o[2] = (N26)? mem[2] : 
                       (N28)? mem[7] : 
                       (N30)? mem[12] : 
                       (N32)? mem[17] : 
                       (N34)? mem[22] : 
                       (N36)? mem[27] : 
                       (N38)? mem[32] : 
                       (N40)? mem[37] : 
                       (N27)? mem[42] : 
                       (N29)? mem[47] : 
                       (N31)? mem[52] : 
                       (N33)? mem[57] : 
                       (N35)? mem[62] : 
                       (N37)? mem[67] : 
                       (N39)? mem[72] : 
                       (N41)? mem[77] : 1'b0;
  assign r_data_o[1] = (N26)? mem[1] : 
                       (N28)? mem[6] : 
                       (N30)? mem[11] : 
                       (N32)? mem[16] : 
                       (N34)? mem[21] : 
                       (N36)? mem[26] : 
                       (N38)? mem[31] : 
                       (N40)? mem[36] : 
                       (N27)? mem[41] : 
                       (N29)? mem[46] : 
                       (N31)? mem[51] : 
                       (N33)? mem[56] : 
                       (N35)? mem[61] : 
                       (N37)? mem[66] : 
                       (N39)? mem[71] : 
                       (N41)? mem[76] : 1'b0;
  assign r_data_o[0] = (N26)? mem[0] : 
                       (N28)? mem[5] : 
                       (N30)? mem[10] : 
                       (N32)? mem[15] : 
                       (N34)? mem[20] : 
                       (N36)? mem[25] : 
                       (N38)? mem[30] : 
                       (N40)? mem[35] : 
                       (N27)? mem[40] : 
                       (N29)? mem[45] : 
                       (N31)? mem[50] : 
                       (N33)? mem[55] : 
                       (N35)? mem[60] : 
                       (N37)? mem[65] : 
                       (N39)? mem[70] : 
                       (N41)? mem[75] : 1'b0;
  assign N75 = w_addr_i[2] & w_addr_i[3];
  assign N76 = N0 & w_addr_i[3];
  assign N0 = ~w_addr_i[2];
  assign N77 = w_addr_i[2] & N1;
  assign N1 = ~w_addr_i[3];
  assign N78 = N2 & N3;
  assign N2 = ~w_addr_i[2];
  assign N3 = ~w_addr_i[3];
  assign N79 = w_addr_i[0] & w_addr_i[1];
  assign N80 = N4 & w_addr_i[1];
  assign N4 = ~w_addr_i[0];
  assign N81 = w_addr_i[0] & N5;
  assign N5 = ~w_addr_i[1];
  assign N82 = N6 & N7;
  assign N6 = ~w_addr_i[0];
  assign N7 = ~w_addr_i[1];
  assign N58 = N75 & N79;
  assign N57 = N75 & N80;
  assign N56 = N75 & N81;
  assign N55 = N75 & N82;
  assign N54 = N76 & N79;
  assign N53 = N76 & N80;
  assign N52 = N76 & N81;
  assign N51 = N76 & N82;
  assign N50 = N77 & N79;
  assign N49 = N77 & N80;
  assign N48 = N77 & N81;
  assign N47 = N77 & N82;
  assign N46 = N78 & N79;
  assign N45 = N78 & N80;
  assign N44 = N78 & N81;
  assign N43 = N78 & N82;
  assign { N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59 } = (N8)? { N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43 } : 
                                                                                              (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N8 = w_v_i;
  assign N9 = N42;
  assign N10 = ~r_addr_i[0];
  assign N11 = ~r_addr_i[1];
  assign N12 = N10 & N11;
  assign N13 = N10 & r_addr_i[1];
  assign N14 = r_addr_i[0] & N11;
  assign N15 = r_addr_i[0] & r_addr_i[1];
  assign N16 = ~r_addr_i[2];
  assign N17 = N12 & N16;
  assign N18 = N12 & r_addr_i[2];
  assign N19 = N14 & N16;
  assign N20 = N14 & r_addr_i[2];
  assign N21 = N13 & N16;
  assign N22 = N13 & r_addr_i[2];
  assign N23 = N15 & N16;
  assign N24 = N15 & r_addr_i[2];
  assign N25 = ~r_addr_i[3];
  assign N26 = N17 & N25;
  assign N27 = N17 & r_addr_i[3];
  assign N28 = N19 & N25;
  assign N29 = N19 & r_addr_i[3];
  assign N30 = N21 & N25;
  assign N31 = N21 & r_addr_i[3];
  assign N32 = N23 & N25;
  assign N33 = N23 & r_addr_i[3];
  assign N34 = N18 & N25;
  assign N35 = N18 & r_addr_i[3];
  assign N36 = N20 & N25;
  assign N37 = N20 & r_addr_i[3];
  assign N38 = N22 & N25;
  assign N39 = N22 & r_addr_i[3];
  assign N40 = N24 & N25;
  assign N41 = N24 & r_addr_i[3];
  assign N42 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N74) begin
      { mem[79:75] } <= { w_data_i[4:0] };
    end 
    if(N73) begin
      { mem[74:70] } <= { w_data_i[4:0] };
    end 
    if(N72) begin
      { mem[69:65] } <= { w_data_i[4:0] };
    end 
    if(N71) begin
      { mem[64:60] } <= { w_data_i[4:0] };
    end 
    if(N70) begin
      { mem[59:55] } <= { w_data_i[4:0] };
    end 
    if(N69) begin
      { mem[54:50] } <= { w_data_i[4:0] };
    end 
    if(N68) begin
      { mem[49:45] } <= { w_data_i[4:0] };
    end 
    if(N67) begin
      { mem[44:40] } <= { w_data_i[4:0] };
    end 
    if(N66) begin
      { mem[39:35] } <= { w_data_i[4:0] };
    end 
    if(N65) begin
      { mem[34:30] } <= { w_data_i[4:0] };
    end 
    if(N64) begin
      { mem[29:25] } <= { w_data_i[4:0] };
    end 
    if(N63) begin
      { mem[24:20] } <= { w_data_i[4:0] };
    end 
    if(N62) begin
      { mem[19:15] } <= { w_data_i[4:0] };
    end 
    if(N61) begin
      { mem[14:10] } <= { w_data_i[4:0] };
    end 
    if(N60) begin
      { mem[9:5] } <= { w_data_i[4:0] };
    end 
    if(N59) begin
      { mem[4:0] } <= { w_data_i[4:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p5_els_p16_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [3:0] w_addr_i;
  input [4:0] w_data_i;
  input [3:0] r_addr_i;
  output [4:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [4:0] r_data_o;

  bsg_mem_1r1w_synth_width_p5_els_p16_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i),
    .w_data_i(w_data_i),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i),
    .r_data_o(r_data_o)
  );


endmodule



module bsg_launch_sync_sync_posedge_5_unit
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [4:0] iclk_data_i;
  output [4:0] iclk_data_o;
  output [4:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7;
  reg [4:0] iclk_data_o,bsg_SYNC_1_r,oclk_data_o;
  assign { N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                  (N1)? iclk_data_i : 1'b0;
  assign N0 = iclk_reset_i;
  assign N1 = N2;
  assign N2 = ~iclk_reset_i;

  always @(posedge iclk_i) begin
    if(1'b1) begin
      { iclk_data_o[4:0] } <= { N7, N6, N5, N4, N3 };
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      { bsg_SYNC_1_r[4:0] } <= { iclk_data_o[4:0] };
      { oclk_data_o[4:0] } <= { bsg_SYNC_1_r[4:0] };
    end 
  end


endmodule



module bsg_launch_sync_sync_width_p5_use_negedge_for_launch_p0_use_async_reset_p0
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [4:0] iclk_data_i;
  output [4:0] iclk_data_o;
  output [4:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire [4:0] iclk_data_o,oclk_data_o;

  bsg_launch_sync_sync_posedge_5_unit
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



module bsg_async_ptr_gray_lg_size_p5
(
  w_clk_i,
  w_reset_i,
  w_inc_i,
  r_clk_i,
  w_ptr_binary_r_o,
  w_ptr_gray_r_o,
  w_ptr_gray_r_rsync_o
);

  output [4:0] w_ptr_binary_r_o;
  output [4:0] w_ptr_gray_r_o;
  output [4:0] w_ptr_gray_r_rsync_o;
  input w_clk_i;
  input w_reset_i;
  input w_inc_i;
  input r_clk_i;
  wire [4:0] w_ptr_gray_r_o,w_ptr_gray_r_rsync_o,w_ptr_p2,w_ptr_gray_n;
  wire N0,N1,N2,N3,N4,N5,N6;
  reg [4:0] w_ptr_p1_r,w_ptr_binary_r_o;

  bsg_launch_sync_sync_width_p5_use_negedge_for_launch_p0_use_async_reset_p0
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
  assign w_ptr_gray_n = (N0)? { w_ptr_p1_r[4:4], N3, N4, N5, N6 } : 
                        (N1)? w_ptr_gray_r_o : 1'b0;
  assign N0 = w_inc_i;
  assign N1 = N2;
  assign N2 = ~w_inc_i;
  assign N3 = w_ptr_p1_r[4] ^ w_ptr_p1_r[3];
  assign N4 = w_ptr_p1_r[3] ^ w_ptr_p1_r[2];
  assign N5 = w_ptr_p1_r[2] ^ w_ptr_p1_r[1];
  assign N6 = w_ptr_p1_r[1] ^ w_ptr_p1_r[0];

  always @(posedge w_clk_i) begin
    if(w_reset_i) begin
      { w_ptr_p1_r[4:0] } <= { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 };
      { w_ptr_binary_r_o[4:0] } <= { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 };
    end else if(w_inc_i) begin
      { w_ptr_p1_r[4:0] } <= { w_ptr_p2[4:0] };
      { w_ptr_binary_r_o[4:0] } <= { w_ptr_p1_r[4:0] };
    end 
  end


endmodule



module bsg_async_fifo_lg_size_p4_width_p5
(
  w_clk_i,
  w_reset_i,
  w_enq_i,
  w_data_i,
  w_full_o,
  r_clk_i,
  r_reset_i,
  r_deq_i,
  r_data_o,
  r_valid_o
);

  input [4:0] w_data_i;
  output [4:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_enq_i;
  input r_clk_i;
  input r_reset_i;
  input r_deq_i;
  output w_full_o;
  output r_valid_o;
  wire [4:0] r_data_o,w_ptr_binary_r,r_ptr_binary_r,w_ptr_gray_r,w_ptr_gray_r_rsync,
  r_ptr_gray_r,r_ptr_gray_r_wsync;
  wire w_full_o,r_valid_o,N0,N1;

  bsg_mem_1r1w_width_p5_els_p16_read_write_same_addr_p0
  MSYNC_1r1w
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_enq_i),
    .w_addr_i(w_ptr_binary_r[3:0]),
    .w_data_i(w_data_i),
    .r_v_i(r_valid_o),
    .r_addr_i(r_ptr_binary_r[3:0]),
    .r_data_o(r_data_o)
  );


  bsg_async_ptr_gray_lg_size_p5
  bapg_wr
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_inc_i(w_enq_i),
    .r_clk_i(r_clk_i),
    .w_ptr_binary_r_o(w_ptr_binary_r),
    .w_ptr_gray_r_o(w_ptr_gray_r),
    .w_ptr_gray_r_rsync_o(w_ptr_gray_r_rsync)
  );


  bsg_async_ptr_gray_lg_size_p5
  bapg_rd
  (
    .w_clk_i(r_clk_i),
    .w_reset_i(r_reset_i),
    .w_inc_i(r_deq_i),
    .r_clk_i(w_clk_i),
    .w_ptr_binary_r_o(r_ptr_binary_r),
    .w_ptr_gray_r_o(r_ptr_gray_r),
    .w_ptr_gray_r_rsync_o(r_ptr_gray_r_wsync)
  );

  assign r_valid_o = r_ptr_gray_r != w_ptr_gray_r_rsync;
  assign w_full_o = w_ptr_gray_r == { N0, N1, r_ptr_gray_r_wsync[2:0] };
  assign N0 = ~r_ptr_gray_r_wsync[4];
  assign N1 = ~r_ptr_gray_r_wsync[3];

endmodule



module bsg_sync_sync_1_unit
(
  oclk_i,
  iclk_data_i,
  oclk_data_o
);

  input [0:0] iclk_data_i;
  output [0:0] oclk_data_o;
  input oclk_i;
  reg [0:0] bsg_SYNC_1_r,oclk_data_o;

  always @(posedge oclk_i) begin
    if(1'b1) begin
      { bsg_SYNC_1_r[0:0] } <= { iclk_data_i[0:0] };
      { oclk_data_o[0:0] } <= { bsg_SYNC_1_r[0:0] };
    end 
  end


endmodule



module bsg_sync_sync_width_p1
(
  oclk_i,
  iclk_data_i,
  oclk_data_o
);

  input [0:0] iclk_data_i;
  output [0:0] oclk_data_o;
  input oclk_i;
  wire [0:0] oclk_data_o;

  bsg_sync_sync_1_unit
  z_bss
  (
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i[0]),
    .oclk_data_o(oclk_data_o[0])
  );


endmodule



module bsg_fsb_node_async_buffer
(
  L_clk_i,
  L_reset_i,
  L_en_o,
  L_v_o,
  L_data_o,
  L_ready_i,
  L_v_i,
  L_data_i,
  L_yumi_o,
  R_clk_i,
  R_reset_i,
  R_en_i,
  R_v_i,
  R_data_i,
  R_ready_o,
  R_v_o,
  R_data_o,
  R_yumi_i
);

  output [4:0] L_data_o;
  input [4:0] L_data_i;
  input [4:0] R_data_i;
  output [4:0] R_data_o;
  input L_clk_i;
  input L_reset_i;
  input L_ready_i;
  input L_v_i;
  input R_clk_i;
  input R_reset_i;
  input R_en_i;
  input R_v_i;
  input R_yumi_i;
  output L_en_o;
  output L_v_o;
  output L_yumi_o;
  output R_ready_o;
  output R_v_o;
  wire [4:0] L_data_o,R_data_o;
  wire L_en_o,L_v_o,L_yumi_o,R_ready_o,R_v_o,R_w_full_lo,n_0_net_,n_1_net_,L_w_full_lo,
  N0,N1;

  bsg_async_fifo_lg_size_p4_width_p5
  r2l_fifo
  (
    .w_clk_i(R_clk_i),
    .w_reset_i(R_reset_i),
    .w_enq_i(n_0_net_),
    .w_data_i(R_data_i),
    .w_full_o(R_w_full_lo),
    .r_clk_i(L_clk_i),
    .r_reset_i(L_reset_i),
    .r_deq_i(n_1_net_),
    .r_data_o(L_data_o),
    .r_valid_o(L_v_o)
  );


  bsg_async_fifo_lg_size_p4_width_p5
  l2r_fifo
  (
    .w_clk_i(L_clk_i),
    .w_reset_i(L_reset_i),
    .w_enq_i(L_yumi_o),
    .w_data_i(L_data_i),
    .w_full_o(L_w_full_lo),
    .r_clk_i(R_clk_i),
    .r_reset_i(R_reset_i),
    .r_deq_i(R_yumi_i),
    .r_data_o(R_data_o),
    .r_valid_o(R_v_o)
  );


  bsg_sync_sync_width_p1
  fsb_en_sync
  (
    .oclk_i(L_clk_i),
    .iclk_data_i(R_en_i),
    .oclk_data_o(L_en_o)
  );

  assign R_ready_o = ~R_w_full_lo;
  assign n_1_net_ = L_v_o & L_ready_i;
  assign n_0_net_ = N0 & R_v_i;
  assign N0 = ~R_w_full_lo;
  assign L_yumi_o = N1 & L_v_i;
  assign N1 = ~L_w_full_lo;

endmodule

