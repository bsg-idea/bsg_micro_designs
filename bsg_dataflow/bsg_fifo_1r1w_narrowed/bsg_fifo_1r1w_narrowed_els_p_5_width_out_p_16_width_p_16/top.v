

module top
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  v_o,
  data_o,
  yumi_i
);

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;

  bsg_fifo_1r1w_narrowed
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .yumi_i(yumi_i),
    .ready_o(ready_o),
    .v_o(v_o)
  );


endmodule



module bsg_circular_ptr_slots_p5_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [2:0] o;
  output [2:0] n_o;
  input clk;
  input reset_i;
  wire [2:0] o,n_o,ptr_nowrap;
  wire N0,N1,N2,N3,N4,N5,N6;
  wire [3:0] ptr_wrap;
  reg o_2_sv2v_reg,o_1_sv2v_reg,o_0_sv2v_reg;
  assign o[2] = o_2_sv2v_reg;
  assign o[1] = o_1_sv2v_reg;
  assign o[0] = o_0_sv2v_reg;
  assign ptr_nowrap = o + add_i[0];
  assign { N5, N4, N3, N2 } = o - { 1'b1, 1'b0, 1'b1 };
  assign ptr_wrap = { N5, N4, N3, N2 } + add_i[0];
  assign n_o = (N0)? ptr_wrap[2:0] : 
               (N1)? ptr_nowrap : 1'b0;
  assign N0 = N6;
  assign N1 = ptr_wrap[3];
  assign N6 = ~ptr_wrap[3];

  always @(posedge clk) begin
    if(reset_i) begin
      o_2_sv2v_reg <= 1'b0;
      o_1_sv2v_reg <= 1'b0;
      o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_2_sv2v_reg <= n_o[2];
      o_1_sv2v_reg <= n_o[1];
      o_0_sv2v_reg <= n_o[0];
    end 
  end


endmodule



module bsg_fifo_tracker_els_p5
(
  clk_i,
  reset_i,
  enq_i,
  deq_i,
  wptr_r_o,
  rptr_r_o,
  rptr_n_o,
  full_o,
  empty_o
);

  output [2:0] wptr_r_o;
  output [2:0] rptr_r_o;
  output [2:0] rptr_n_o;
  input clk_i;
  input reset_i;
  input enq_i;
  input deq_i;
  output full_o;
  output empty_o;
  wire [2:0] wptr_r_o,rptr_r_o,rptr_n_o;
  wire full_o,empty_o,N0,N1,N2,enq_r,deq_r,N3,equal_ptrs,sv2v_dc_1,sv2v_dc_2,sv2v_dc_3;
  reg deq_r_sv2v_reg,enq_r_sv2v_reg;
  assign deq_r = deq_r_sv2v_reg;
  assign enq_r = enq_r_sv2v_reg;

  bsg_circular_ptr_slots_p5_max_add_p1
  rptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(deq_i),
    .o(rptr_r_o),
    .n_o(rptr_n_o)
  );


  bsg_circular_ptr_slots_p5_max_add_p1
  wptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(enq_i),
    .o(wptr_r_o),
    .n_o({ sv2v_dc_1, sv2v_dc_2, sv2v_dc_3 })
  );

  assign equal_ptrs = rptr_r_o == wptr_r_o;
  assign N3 = (N0)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = N1;
  assign N1 = enq_i | deq_i;
  assign N2 = ~N1;
  assign empty_o = equal_ptrs & deq_r;
  assign full_o = equal_ptrs & enq_r;

  always @(posedge clk_i) begin
    if(reset_i) begin
      deq_r_sv2v_reg <= 1'b1;
      enq_r_sv2v_reg <= 1'b0;
    end else if(N3) begin
      deq_r_sv2v_reg <= deq_i;
      enq_r_sv2v_reg <= enq_i;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p16_els_p5_read_write_same_addr_p0_harden_p0
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

  input [2:0] w_addr_i;
  input [15:0] w_data_i;
  input [2:0] r_addr_i;
  output [15:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [15:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38;
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
  assign N35 = N0 & N1;
  assign N0 = ~w_addr_i[0];
  assign N1 = ~w_addr_i[1];
  assign N29 = N35 & w_addr_i[2];
  assign N36 = w_addr_i[0] & w_addr_i[1];
  assign N28 = N36 & N2;
  assign N2 = ~w_addr_i[2];
  assign N37 = N3 & w_addr_i[1];
  assign N3 = ~w_addr_i[0];
  assign N27 = N37 & N4;
  assign N4 = ~w_addr_i[2];
  assign N38 = w_addr_i[0] & N5;
  assign N5 = ~w_addr_i[1];
  assign N26 = N38 & N6;
  assign N6 = ~w_addr_i[2];
  assign N25 = N35 & N7;
  assign N7 = ~w_addr_i[2];
  assign N20 = N8 & N9 & N10;
  assign N8 = ~r_addr_i[2];
  assign N9 = ~r_addr_i[0];
  assign N10 = ~r_addr_i[1];
  assign N21 = r_addr_i[0] & N11;
  assign N11 = ~r_addr_i[1];
  assign N22 = N12 & r_addr_i[1];
  assign N12 = ~r_addr_i[0];
  assign N23 = r_addr_i[0] & r_addr_i[1];
  assign { N34, N33, N32, N31, N30 } = (N13)? { N29, N28, N27, N26, N25 } : 
                                       (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N13 = w_v_i;
  assign N14 = N24;
  assign r_data_o[15] = (N15)? mem[15] : 
                        (N16)? mem[31] : 
                        (N17)? mem[47] : 
                        (N18)? mem[63] : 
                        (N19)? mem[79] : 1'b0;
  assign N15 = N20;
  assign N16 = N21;
  assign N17 = N22;
  assign N18 = N23;
  assign N19 = r_addr_i[2];
  assign r_data_o[14] = (N15)? mem[14] : 
                        (N16)? mem[30] : 
                        (N17)? mem[46] : 
                        (N18)? mem[62] : 
                        (N19)? mem[78] : 1'b0;
  assign r_data_o[13] = (N15)? mem[13] : 
                        (N16)? mem[29] : 
                        (N17)? mem[45] : 
                        (N18)? mem[61] : 
                        (N19)? mem[77] : 1'b0;
  assign r_data_o[12] = (N15)? mem[12] : 
                        (N16)? mem[28] : 
                        (N17)? mem[44] : 
                        (N18)? mem[60] : 
                        (N19)? mem[76] : 1'b0;
  assign r_data_o[11] = (N15)? mem[11] : 
                        (N16)? mem[27] : 
                        (N17)? mem[43] : 
                        (N18)? mem[59] : 
                        (N19)? mem[75] : 1'b0;
  assign r_data_o[10] = (N15)? mem[10] : 
                        (N16)? mem[26] : 
                        (N17)? mem[42] : 
                        (N18)? mem[58] : 
                        (N19)? mem[74] : 1'b0;
  assign r_data_o[9] = (N15)? mem[9] : 
                       (N16)? mem[25] : 
                       (N17)? mem[41] : 
                       (N18)? mem[57] : 
                       (N19)? mem[73] : 1'b0;
  assign r_data_o[8] = (N15)? mem[8] : 
                       (N16)? mem[24] : 
                       (N17)? mem[40] : 
                       (N18)? mem[56] : 
                       (N19)? mem[72] : 1'b0;
  assign r_data_o[7] = (N15)? mem[7] : 
                       (N16)? mem[23] : 
                       (N17)? mem[39] : 
                       (N18)? mem[55] : 
                       (N19)? mem[71] : 1'b0;
  assign r_data_o[6] = (N15)? mem[6] : 
                       (N16)? mem[22] : 
                       (N17)? mem[38] : 
                       (N18)? mem[54] : 
                       (N19)? mem[70] : 1'b0;
  assign r_data_o[5] = (N15)? mem[5] : 
                       (N16)? mem[21] : 
                       (N17)? mem[37] : 
                       (N18)? mem[53] : 
                       (N19)? mem[69] : 1'b0;
  assign r_data_o[4] = (N15)? mem[4] : 
                       (N16)? mem[20] : 
                       (N17)? mem[36] : 
                       (N18)? mem[52] : 
                       (N19)? mem[68] : 1'b0;
  assign r_data_o[3] = (N15)? mem[3] : 
                       (N16)? mem[19] : 
                       (N17)? mem[35] : 
                       (N18)? mem[51] : 
                       (N19)? mem[67] : 1'b0;
  assign r_data_o[2] = (N15)? mem[2] : 
                       (N16)? mem[18] : 
                       (N17)? mem[34] : 
                       (N18)? mem[50] : 
                       (N19)? mem[66] : 1'b0;
  assign r_data_o[1] = (N15)? mem[1] : 
                       (N16)? mem[17] : 
                       (N17)? mem[33] : 
                       (N18)? mem[49] : 
                       (N19)? mem[65] : 1'b0;
  assign r_data_o[0] = (N15)? mem[0] : 
                       (N16)? mem[16] : 
                       (N17)? mem[32] : 
                       (N18)? mem[48] : 
                       (N19)? mem[64] : 1'b0;
  assign N24 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_79_sv2v_reg <= w_data_i[15];
      mem_78_sv2v_reg <= w_data_i[14];
      mem_77_sv2v_reg <= w_data_i[13];
      mem_76_sv2v_reg <= w_data_i[12];
      mem_75_sv2v_reg <= w_data_i[11];
      mem_74_sv2v_reg <= w_data_i[10];
      mem_73_sv2v_reg <= w_data_i[9];
      mem_72_sv2v_reg <= w_data_i[8];
      mem_71_sv2v_reg <= w_data_i[7];
      mem_70_sv2v_reg <= w_data_i[6];
      mem_69_sv2v_reg <= w_data_i[5];
      mem_68_sv2v_reg <= w_data_i[4];
      mem_67_sv2v_reg <= w_data_i[3];
      mem_66_sv2v_reg <= w_data_i[2];
      mem_65_sv2v_reg <= w_data_i[1];
      mem_64_sv2v_reg <= w_data_i[0];
    end 
    if(N33) begin
      mem_63_sv2v_reg <= w_data_i[15];
      mem_62_sv2v_reg <= w_data_i[14];
      mem_61_sv2v_reg <= w_data_i[13];
      mem_60_sv2v_reg <= w_data_i[12];
      mem_59_sv2v_reg <= w_data_i[11];
      mem_58_sv2v_reg <= w_data_i[10];
      mem_57_sv2v_reg <= w_data_i[9];
      mem_56_sv2v_reg <= w_data_i[8];
      mem_55_sv2v_reg <= w_data_i[7];
      mem_54_sv2v_reg <= w_data_i[6];
      mem_53_sv2v_reg <= w_data_i[5];
      mem_52_sv2v_reg <= w_data_i[4];
      mem_51_sv2v_reg <= w_data_i[3];
      mem_50_sv2v_reg <= w_data_i[2];
      mem_49_sv2v_reg <= w_data_i[1];
      mem_48_sv2v_reg <= w_data_i[0];
    end 
    if(N32) begin
      mem_47_sv2v_reg <= w_data_i[15];
      mem_46_sv2v_reg <= w_data_i[14];
      mem_45_sv2v_reg <= w_data_i[13];
      mem_44_sv2v_reg <= w_data_i[12];
      mem_43_sv2v_reg <= w_data_i[11];
      mem_42_sv2v_reg <= w_data_i[10];
      mem_41_sv2v_reg <= w_data_i[9];
      mem_40_sv2v_reg <= w_data_i[8];
      mem_39_sv2v_reg <= w_data_i[7];
      mem_38_sv2v_reg <= w_data_i[6];
      mem_37_sv2v_reg <= w_data_i[5];
      mem_36_sv2v_reg <= w_data_i[4];
      mem_35_sv2v_reg <= w_data_i[3];
      mem_34_sv2v_reg <= w_data_i[2];
      mem_33_sv2v_reg <= w_data_i[1];
      mem_32_sv2v_reg <= w_data_i[0];
    end 
    if(N31) begin
      mem_31_sv2v_reg <= w_data_i[15];
      mem_30_sv2v_reg <= w_data_i[14];
      mem_29_sv2v_reg <= w_data_i[13];
      mem_28_sv2v_reg <= w_data_i[12];
      mem_27_sv2v_reg <= w_data_i[11];
      mem_26_sv2v_reg <= w_data_i[10];
      mem_25_sv2v_reg <= w_data_i[9];
      mem_24_sv2v_reg <= w_data_i[8];
      mem_23_sv2v_reg <= w_data_i[7];
      mem_22_sv2v_reg <= w_data_i[6];
      mem_21_sv2v_reg <= w_data_i[5];
      mem_20_sv2v_reg <= w_data_i[4];
      mem_19_sv2v_reg <= w_data_i[3];
      mem_18_sv2v_reg <= w_data_i[2];
      mem_17_sv2v_reg <= w_data_i[1];
      mem_16_sv2v_reg <= w_data_i[0];
    end 
    if(N30) begin
      mem_15_sv2v_reg <= w_data_i[15];
      mem_14_sv2v_reg <= w_data_i[14];
      mem_13_sv2v_reg <= w_data_i[13];
      mem_12_sv2v_reg <= w_data_i[12];
      mem_11_sv2v_reg <= w_data_i[11];
      mem_10_sv2v_reg <= w_data_i[10];
      mem_9_sv2v_reg <= w_data_i[9];
      mem_8_sv2v_reg <= w_data_i[8];
      mem_7_sv2v_reg <= w_data_i[7];
      mem_6_sv2v_reg <= w_data_i[6];
      mem_5_sv2v_reg <= w_data_i[5];
      mem_4_sv2v_reg <= w_data_i[4];
      mem_3_sv2v_reg <= w_data_i[3];
      mem_2_sv2v_reg <= w_data_i[2];
      mem_1_sv2v_reg <= w_data_i[1];
      mem_0_sv2v_reg <= w_data_i[0];
    end 
  end


endmodule



module bsg_mem_1r1w_width_p16_els_p5_read_write_same_addr_p0
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

  input [2:0] w_addr_i;
  input [15:0] w_data_i;
  input [2:0] r_addr_i;
  output [15:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [15:0] r_data_o;

  bsg_mem_1r1w_synth_width_p16_els_p5_read_write_same_addr_p0_harden_p0
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



module bsg_fifo_1r1w_small_unhardened_width_p16_els_p5_ready_THEN_valid_p0
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  data_i,
  v_o,
  data_o,
  yumi_i
);

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [15:0] data_o;
  wire ready_o,v_o,enque,full,empty,sv2v_dc_1,sv2v_dc_2,sv2v_dc_3;
  wire [2:0] wptr_r,rptr_r;

  bsg_fifo_tracker_els_p5
  ft
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .enq_i(enque),
    .deq_i(yumi_i),
    .wptr_r_o(wptr_r),
    .rptr_r_o(rptr_r),
    .rptr_n_o({ sv2v_dc_1, sv2v_dc_2, sv2v_dc_3 }),
    .full_o(full),
    .empty_o(empty)
  );


  bsg_mem_1r1w_width_p16_els_p5_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enque),
    .w_addr_i(wptr_r),
    .w_data_i(data_i),
    .r_v_i(v_o),
    .r_addr_i(rptr_r),
    .r_data_o(data_o)
  );

  assign enque = v_i & ready_o;
  assign ready_o = ~full;
  assign v_o = ~empty;

endmodule



module bsg_fifo_1r1w_small_width_p16_els_p5_ready_THEN_valid_p0
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  data_i,
  v_o,
  data_o,
  yumi_i
);

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [15:0] data_o;
  wire ready_o,v_o;

  bsg_fifo_1r1w_small_unhardened_width_p16_els_p5_ready_THEN_valid_p0
  \unhardened.fifo 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_i(data_i),
    .v_o(v_o),
    .data_o(data_o),
    .yumi_i(yumi_i)
  );


endmodule



module bsg_channel_narrow_width_in_p16_width_out_p16_lsb_to_msb_p1
(
  clk_i,
  reset_i,
  data_i,
  deque_o,
  data_o,
  deque_i
);

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input deque_i;
  output deque_o;
  wire [15:0] data_o;
  wire deque_o;
  assign deque_o = deque_i;
  assign data_o[15] = data_i[15];
  assign data_o[14] = data_i[14];
  assign data_o[13] = data_i[13];
  assign data_o[12] = data_i[12];
  assign data_o[11] = data_i[11];
  assign data_o[10] = data_i[10];
  assign data_o[9] = data_i[9];
  assign data_o[8] = data_i[8];
  assign data_o[7] = data_i[7];
  assign data_o[6] = data_i[6];
  assign data_o[5] = data_i[5];
  assign data_o[4] = data_i[4];
  assign data_o[3] = data_i[3];
  assign data_o[2] = data_i[2];
  assign data_o[1] = data_i[1];
  assign data_o[0] = data_i[0];

endmodule



module bsg_fifo_1r1w_narrowed
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  v_o,
  data_o,
  yumi_i
);

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [15:0] data_o,data;
  wire ready_o,v_o,yumi;

  bsg_fifo_1r1w_small_width_p16_els_p5_ready_THEN_valid_p0
  main_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_i(data_i),
    .v_o(v_o),
    .data_o(data),
    .yumi_i(yumi)
  );


  bsg_channel_narrow_width_in_p16_width_out_p16_lsb_to_msb_p1
  output_narrower
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data),
    .deque_o(yumi),
    .data_o(data_o),
    .deque_i(yumi_i)
  );


endmodule

