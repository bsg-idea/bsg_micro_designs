

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
  wire [79:0] mem;
  reg mem_79_sv2v_reg,mem_78_sv2v_reg,mem_77_sv2v_reg,mem_76_sv2v_reg,mem_75_sv2v_reg,
  mem_74_sv2v_reg,mem_73_sv2v_reg,mem_72_sv2v_reg,mem_71_sv2v_reg,mem_70_sv2v_reg,
  mem_69_sv2v_reg,mem_68_sv2v_reg,mem_67_sv2v_reg,mem_66_sv2v_reg,mem_65_sv2v_reg,
  mem_64_sv2v_reg,mem_63_sv2v_reg,mem_62_sv2v_reg,mem_61_sv2v_reg,mem_60_sv2v_reg,
  mem_59_sv2v_reg,mem_58_sv2v_reg,mem_57_sv2v_reg,mem_56_sv2v_reg,mem_55_sv2v_reg,
  mem_54_sv2v_reg,mem_53_sv2v_reg,mem_52_sv2v_reg,mem_51_sv2v_reg,mem_50_sv2v_reg,
  mem_49_sv2v_reg,mem_48_sv2v_reg,mem_47_sv2v_reg,mem_46_sv2v_reg,mem_45_sv2v_reg,
  mem_44_sv2v_reg,mem_43_sv2v_reg,mem_42_sv2v_reg,mem_41_sv2v_reg,mem_40_sv2v_reg,
  mem_39_sv2v_reg,mem_38_sv2v_reg,mem_37_sv2v_reg,mem_36_sv2v_reg,mem_35_sv2v_reg,
  mem_34_sv2v_reg,mem_33_sv2v_reg,mem_32_sv2v_reg,mem_31_sv2v_reg,mem_30_sv2v_reg,
  mem_29_sv2v_reg,mem_28_sv2v_reg,mem_27_sv2v_reg,mem_26_sv2v_reg,mem_25_sv2v_reg,
  mem_24_sv2v_reg,mem_23_sv2v_reg,mem_22_sv2v_reg,mem_21_sv2v_reg,mem_20_sv2v_reg,
  mem_19_sv2v_reg,mem_18_sv2v_reg,mem_17_sv2v_reg,mem_16_sv2v_reg,mem_15_sv2v_reg,
  mem_14_sv2v_reg,mem_13_sv2v_reg,mem_12_sv2v_reg,mem_11_sv2v_reg,mem_10_sv2v_reg,
  mem_9_sv2v_reg,mem_8_sv2v_reg,mem_7_sv2v_reg,mem_6_sv2v_reg,mem_5_sv2v_reg,
  mem_4_sv2v_reg,mem_3_sv2v_reg,mem_2_sv2v_reg,mem_1_sv2v_reg,mem_0_sv2v_reg;
  assign mem[79] = mem_79_sv2v_reg;
  assign mem[78] = mem_78_sv2v_reg;
  assign mem[77] = mem_77_sv2v_reg;
  assign mem[76] = mem_76_sv2v_reg;
  assign mem[75] = mem_75_sv2v_reg;
  assign mem[74] = mem_74_sv2v_reg;
  assign mem[73] = mem_73_sv2v_reg;
  assign mem[72] = mem_72_sv2v_reg;
  assign mem[71] = mem_71_sv2v_reg;
  assign mem[70] = mem_70_sv2v_reg;
  assign mem[69] = mem_69_sv2v_reg;
  assign mem[68] = mem_68_sv2v_reg;
  assign mem[67] = mem_67_sv2v_reg;
  assign mem[66] = mem_66_sv2v_reg;
  assign mem[65] = mem_65_sv2v_reg;
  assign mem[64] = mem_64_sv2v_reg;
  assign mem[63] = mem_63_sv2v_reg;
  assign mem[62] = mem_62_sv2v_reg;
  assign mem[61] = mem_61_sv2v_reg;
  assign mem[60] = mem_60_sv2v_reg;
  assign mem[59] = mem_59_sv2v_reg;
  assign mem[58] = mem_58_sv2v_reg;
  assign mem[57] = mem_57_sv2v_reg;
  assign mem[56] = mem_56_sv2v_reg;
  assign mem[55] = mem_55_sv2v_reg;
  assign mem[54] = mem_54_sv2v_reg;
  assign mem[53] = mem_53_sv2v_reg;
  assign mem[52] = mem_52_sv2v_reg;
  assign mem[51] = mem_51_sv2v_reg;
  assign mem[50] = mem_50_sv2v_reg;
  assign mem[49] = mem_49_sv2v_reg;
  assign mem[48] = mem_48_sv2v_reg;
  assign mem[47] = mem_47_sv2v_reg;
  assign mem[46] = mem_46_sv2v_reg;
  assign mem[45] = mem_45_sv2v_reg;
  assign mem[44] = mem_44_sv2v_reg;
  assign mem[43] = mem_43_sv2v_reg;
  assign mem[42] = mem_42_sv2v_reg;
  assign mem[41] = mem_41_sv2v_reg;
  assign mem[40] = mem_40_sv2v_reg;
  assign mem[39] = mem_39_sv2v_reg;
  assign mem[38] = mem_38_sv2v_reg;
  assign mem[37] = mem_37_sv2v_reg;
  assign mem[36] = mem_36_sv2v_reg;
  assign mem[35] = mem_35_sv2v_reg;
  assign mem[34] = mem_34_sv2v_reg;
  assign mem[33] = mem_33_sv2v_reg;
  assign mem[32] = mem_32_sv2v_reg;
  assign mem[31] = mem_31_sv2v_reg;
  assign mem[30] = mem_30_sv2v_reg;
  assign mem[29] = mem_29_sv2v_reg;
  assign mem[28] = mem_28_sv2v_reg;
  assign mem[27] = mem_27_sv2v_reg;
  assign mem[26] = mem_26_sv2v_reg;
  assign mem[25] = mem_25_sv2v_reg;
  assign mem[24] = mem_24_sv2v_reg;
  assign mem[23] = mem_23_sv2v_reg;
  assign mem[22] = mem_22_sv2v_reg;
  assign mem[21] = mem_21_sv2v_reg;
  assign mem[20] = mem_20_sv2v_reg;
  assign mem[19] = mem_19_sv2v_reg;
  assign mem[18] = mem_18_sv2v_reg;
  assign mem[17] = mem_17_sv2v_reg;
  assign mem[16] = mem_16_sv2v_reg;
  assign mem[15] = mem_15_sv2v_reg;
  assign mem[14] = mem_14_sv2v_reg;
  assign mem[13] = mem_13_sv2v_reg;
  assign mem[12] = mem_12_sv2v_reg;
  assign mem[11] = mem_11_sv2v_reg;
  assign mem[10] = mem_10_sv2v_reg;
  assign mem[9] = mem_9_sv2v_reg;
  assign mem[8] = mem_8_sv2v_reg;
  assign mem[7] = mem_7_sv2v_reg;
  assign mem[6] = mem_6_sv2v_reg;
  assign mem[5] = mem_5_sv2v_reg;
  assign mem[4] = mem_4_sv2v_reg;
  assign mem[3] = mem_3_sv2v_reg;
  assign mem[2] = mem_2_sv2v_reg;
  assign mem[1] = mem_1_sv2v_reg;
  assign mem[0] = mem_0_sv2v_reg;
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
      mem_79_sv2v_reg <= w_data_i[4];
      mem_78_sv2v_reg <= w_data_i[3];
      mem_77_sv2v_reg <= w_data_i[2];
      mem_76_sv2v_reg <= w_data_i[1];
      mem_75_sv2v_reg <= w_data_i[0];
    end 
    if(N73) begin
      mem_74_sv2v_reg <= w_data_i[4];
      mem_73_sv2v_reg <= w_data_i[3];
      mem_72_sv2v_reg <= w_data_i[2];
      mem_71_sv2v_reg <= w_data_i[1];
      mem_70_sv2v_reg <= w_data_i[0];
    end 
    if(N72) begin
      mem_69_sv2v_reg <= w_data_i[4];
      mem_68_sv2v_reg <= w_data_i[3];
      mem_67_sv2v_reg <= w_data_i[2];
      mem_66_sv2v_reg <= w_data_i[1];
      mem_65_sv2v_reg <= w_data_i[0];
    end 
    if(N71) begin
      mem_64_sv2v_reg <= w_data_i[4];
      mem_63_sv2v_reg <= w_data_i[3];
      mem_62_sv2v_reg <= w_data_i[2];
      mem_61_sv2v_reg <= w_data_i[1];
      mem_60_sv2v_reg <= w_data_i[0];
    end 
    if(N70) begin
      mem_59_sv2v_reg <= w_data_i[4];
      mem_58_sv2v_reg <= w_data_i[3];
      mem_57_sv2v_reg <= w_data_i[2];
      mem_56_sv2v_reg <= w_data_i[1];
      mem_55_sv2v_reg <= w_data_i[0];
    end 
    if(N69) begin
      mem_54_sv2v_reg <= w_data_i[4];
      mem_53_sv2v_reg <= w_data_i[3];
      mem_52_sv2v_reg <= w_data_i[2];
      mem_51_sv2v_reg <= w_data_i[1];
      mem_50_sv2v_reg <= w_data_i[0];
    end 
    if(N68) begin
      mem_49_sv2v_reg <= w_data_i[4];
      mem_48_sv2v_reg <= w_data_i[3];
      mem_47_sv2v_reg <= w_data_i[2];
      mem_46_sv2v_reg <= w_data_i[1];
      mem_45_sv2v_reg <= w_data_i[0];
    end 
    if(N67) begin
      mem_44_sv2v_reg <= w_data_i[4];
      mem_43_sv2v_reg <= w_data_i[3];
      mem_42_sv2v_reg <= w_data_i[2];
      mem_41_sv2v_reg <= w_data_i[1];
      mem_40_sv2v_reg <= w_data_i[0];
    end 
    if(N66) begin
      mem_39_sv2v_reg <= w_data_i[4];
      mem_38_sv2v_reg <= w_data_i[3];
      mem_37_sv2v_reg <= w_data_i[2];
      mem_36_sv2v_reg <= w_data_i[1];
      mem_35_sv2v_reg <= w_data_i[0];
    end 
    if(N65) begin
      mem_34_sv2v_reg <= w_data_i[4];
      mem_33_sv2v_reg <= w_data_i[3];
      mem_32_sv2v_reg <= w_data_i[2];
      mem_31_sv2v_reg <= w_data_i[1];
      mem_30_sv2v_reg <= w_data_i[0];
    end 
    if(N64) begin
      mem_29_sv2v_reg <= w_data_i[4];
      mem_28_sv2v_reg <= w_data_i[3];
      mem_27_sv2v_reg <= w_data_i[2];
      mem_26_sv2v_reg <= w_data_i[1];
      mem_25_sv2v_reg <= w_data_i[0];
    end 
    if(N63) begin
      mem_24_sv2v_reg <= w_data_i[4];
      mem_23_sv2v_reg <= w_data_i[3];
      mem_22_sv2v_reg <= w_data_i[2];
      mem_21_sv2v_reg <= w_data_i[1];
      mem_20_sv2v_reg <= w_data_i[0];
    end 
    if(N62) begin
      mem_19_sv2v_reg <= w_data_i[4];
      mem_18_sv2v_reg <= w_data_i[3];
      mem_17_sv2v_reg <= w_data_i[2];
      mem_16_sv2v_reg <= w_data_i[1];
      mem_15_sv2v_reg <= w_data_i[0];
    end 
    if(N61) begin
      mem_14_sv2v_reg <= w_data_i[4];
      mem_13_sv2v_reg <= w_data_i[3];
      mem_12_sv2v_reg <= w_data_i[2];
      mem_11_sv2v_reg <= w_data_i[1];
      mem_10_sv2v_reg <= w_data_i[0];
    end 
    if(N60) begin
      mem_9_sv2v_reg <= w_data_i[4];
      mem_8_sv2v_reg <= w_data_i[3];
      mem_7_sv2v_reg <= w_data_i[2];
      mem_6_sv2v_reg <= w_data_i[1];
      mem_5_sv2v_reg <= w_data_i[0];
    end 
    if(N59) begin
      mem_4_sv2v_reg <= w_data_i[4];
      mem_3_sv2v_reg <= w_data_i[3];
      mem_2_sv2v_reg <= w_data_i[2];
      mem_1_sv2v_reg <= w_data_i[1];
      mem_0_sv2v_reg <= w_data_i[0];
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
  wire [4:0] iclk_data_o,oclk_data_o,bsg_SYNC_1_r;
  reg iclk_data_o_4_sv2v_reg,iclk_data_o_3_sv2v_reg,iclk_data_o_2_sv2v_reg,
  iclk_data_o_1_sv2v_reg,iclk_data_o_0_sv2v_reg,bsg_SYNC_1_r_4_sv2v_reg,
  bsg_SYNC_1_r_3_sv2v_reg,bsg_SYNC_1_r_2_sv2v_reg,bsg_SYNC_1_r_1_sv2v_reg,bsg_SYNC_1_r_0_sv2v_reg,
  oclk_data_o_4_sv2v_reg,oclk_data_o_3_sv2v_reg,oclk_data_o_2_sv2v_reg,
  oclk_data_o_1_sv2v_reg,oclk_data_o_0_sv2v_reg;
  assign iclk_data_o[4] = iclk_data_o_4_sv2v_reg;
  assign iclk_data_o[3] = iclk_data_o_3_sv2v_reg;
  assign iclk_data_o[2] = iclk_data_o_2_sv2v_reg;
  assign iclk_data_o[1] = iclk_data_o_1_sv2v_reg;
  assign iclk_data_o[0] = iclk_data_o_0_sv2v_reg;
  assign bsg_SYNC_1_r[4] = bsg_SYNC_1_r_4_sv2v_reg;
  assign bsg_SYNC_1_r[3] = bsg_SYNC_1_r_3_sv2v_reg;
  assign bsg_SYNC_1_r[2] = bsg_SYNC_1_r_2_sv2v_reg;
  assign bsg_SYNC_1_r[1] = bsg_SYNC_1_r_1_sv2v_reg;
  assign bsg_SYNC_1_r[0] = bsg_SYNC_1_r_0_sv2v_reg;
  assign oclk_data_o[4] = oclk_data_o_4_sv2v_reg;
  assign oclk_data_o[3] = oclk_data_o_3_sv2v_reg;
  assign oclk_data_o[2] = oclk_data_o_2_sv2v_reg;
  assign oclk_data_o[1] = oclk_data_o_1_sv2v_reg;
  assign oclk_data_o[0] = oclk_data_o_0_sv2v_reg;

  always @(posedge iclk_i) begin
    if(iclk_reset_i) begin
      iclk_data_o_4_sv2v_reg <= 1'b0;
      iclk_data_o_3_sv2v_reg <= 1'b0;
      iclk_data_o_2_sv2v_reg <= 1'b0;
      iclk_data_o_1_sv2v_reg <= 1'b0;
      iclk_data_o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      iclk_data_o_4_sv2v_reg <= iclk_data_i[4];
      iclk_data_o_3_sv2v_reg <= iclk_data_i[3];
      iclk_data_o_2_sv2v_reg <= iclk_data_i[2];
      iclk_data_o_1_sv2v_reg <= iclk_data_i[1];
      iclk_data_o_0_sv2v_reg <= iclk_data_i[0];
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      bsg_SYNC_1_r_4_sv2v_reg <= iclk_data_o[4];
      bsg_SYNC_1_r_3_sv2v_reg <= iclk_data_o[3];
      bsg_SYNC_1_r_2_sv2v_reg <= iclk_data_o[2];
      bsg_SYNC_1_r_1_sv2v_reg <= iclk_data_o[1];
      bsg_SYNC_1_r_0_sv2v_reg <= iclk_data_o[0];
      oclk_data_o_4_sv2v_reg <= bsg_SYNC_1_r[4];
      oclk_data_o_3_sv2v_reg <= bsg_SYNC_1_r[3];
      oclk_data_o_2_sv2v_reg <= bsg_SYNC_1_r[2];
      oclk_data_o_1_sv2v_reg <= bsg_SYNC_1_r[1];
      oclk_data_o_0_sv2v_reg <= bsg_SYNC_1_r[0];
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
  wire [4:0] w_ptr_binary_r_o,w_ptr_gray_r_o,w_ptr_gray_r_rsync_o,w_ptr_p1_r,w_ptr_p2,
  w_ptr_gray_n;
  wire N0,N1,N2,N3,N4,N5,N6;
  reg w_ptr_p1_r_4_sv2v_reg,w_ptr_p1_r_3_sv2v_reg,w_ptr_p1_r_2_sv2v_reg,
  w_ptr_p1_r_1_sv2v_reg,w_ptr_p1_r_0_sv2v_reg,w_ptr_binary_r_o_4_sv2v_reg,
  w_ptr_binary_r_o_3_sv2v_reg,w_ptr_binary_r_o_2_sv2v_reg,w_ptr_binary_r_o_1_sv2v_reg,
  w_ptr_binary_r_o_0_sv2v_reg;
  assign w_ptr_p1_r[4] = w_ptr_p1_r_4_sv2v_reg;
  assign w_ptr_p1_r[3] = w_ptr_p1_r_3_sv2v_reg;
  assign w_ptr_p1_r[2] = w_ptr_p1_r_2_sv2v_reg;
  assign w_ptr_p1_r[1] = w_ptr_p1_r_1_sv2v_reg;
  assign w_ptr_p1_r[0] = w_ptr_p1_r_0_sv2v_reg;
  assign w_ptr_binary_r_o[4] = w_ptr_binary_r_o_4_sv2v_reg;
  assign w_ptr_binary_r_o[3] = w_ptr_binary_r_o_3_sv2v_reg;
  assign w_ptr_binary_r_o[2] = w_ptr_binary_r_o_2_sv2v_reg;
  assign w_ptr_binary_r_o[1] = w_ptr_binary_r_o_1_sv2v_reg;
  assign w_ptr_binary_r_o[0] = w_ptr_binary_r_o_0_sv2v_reg;

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
      w_ptr_p1_r_4_sv2v_reg <= 1'b0;
      w_ptr_p1_r_3_sv2v_reg <= 1'b0;
      w_ptr_p1_r_2_sv2v_reg <= 1'b0;
      w_ptr_p1_r_1_sv2v_reg <= 1'b0;
      w_ptr_p1_r_0_sv2v_reg <= 1'b1;
      w_ptr_binary_r_o_4_sv2v_reg <= 1'b0;
      w_ptr_binary_r_o_3_sv2v_reg <= 1'b0;
      w_ptr_binary_r_o_2_sv2v_reg <= 1'b0;
      w_ptr_binary_r_o_1_sv2v_reg <= 1'b0;
      w_ptr_binary_r_o_0_sv2v_reg <= 1'b0;
    end else if(w_inc_i) begin
      w_ptr_p1_r_4_sv2v_reg <= w_ptr_p2[4];
      w_ptr_p1_r_3_sv2v_reg <= w_ptr_p2[3];
      w_ptr_p1_r_2_sv2v_reg <= w_ptr_p2[2];
      w_ptr_p1_r_1_sv2v_reg <= w_ptr_p2[1];
      w_ptr_p1_r_0_sv2v_reg <= w_ptr_p2[0];
      w_ptr_binary_r_o_4_sv2v_reg <= w_ptr_p1_r[4];
      w_ptr_binary_r_o_3_sv2v_reg <= w_ptr_p1_r[3];
      w_ptr_binary_r_o_2_sv2v_reg <= w_ptr_p1_r[2];
      w_ptr_binary_r_o_1_sv2v_reg <= w_ptr_p1_r[1];
      w_ptr_binary_r_o_0_sv2v_reg <= w_ptr_p1_r[0];
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
  wire [0:0] oclk_data_o,bsg_SYNC_1_r;
  reg bsg_SYNC_1_r_0_sv2v_reg,oclk_data_o_0_sv2v_reg;
  assign bsg_SYNC_1_r[0] = bsg_SYNC_1_r_0_sv2v_reg;
  assign oclk_data_o[0] = oclk_data_o_0_sv2v_reg;

  always @(posedge oclk_i) begin
    if(1'b1) begin
      bsg_SYNC_1_r_0_sv2v_reg <= iclk_data_i[0];
      oclk_data_o_0_sv2v_reg <= bsg_SYNC_1_r[0];
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
  \z.bss 
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
  wire L_en_o,L_v_o,L_yumi_o,R_ready_o,R_v_o,R_w_full_lo,_0_net_,_1_net_,L_w_full_lo,
  N0,N1;

  bsg_async_fifo_lg_size_p4_width_p5
  r2l_fifo
  (
    .w_clk_i(R_clk_i),
    .w_reset_i(R_reset_i),
    .w_enq_i(_0_net_),
    .w_data_i(R_data_i),
    .w_full_o(R_w_full_lo),
    .r_clk_i(L_clk_i),
    .r_reset_i(L_reset_i),
    .r_deq_i(_1_net_),
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
  assign _1_net_ = L_v_o & L_ready_i;
  assign _0_net_ = N0 & R_v_i;
  assign N0 = ~R_w_full_lo;
  assign L_yumi_o = N1 & L_v_i;
  assign N1 = ~L_w_full_lo;

endmodule

