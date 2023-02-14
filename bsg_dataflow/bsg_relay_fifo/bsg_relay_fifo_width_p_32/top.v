

module top
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  ready_i
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;

  bsg_relay_fifo
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_i(ready_i),
    .ready_o(ready_o),
    .v_o(v_o)
  );


endmodule



module bsg_mem_1r1w_synth_width_p32_els_p2_read_write_same_addr_p0_harden_p0
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

  input [0:0] w_addr_i;
  input [31:0] w_data_i;
  input [0:0] r_addr_i;
  output [31:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [31:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  wire [63:0] mem;
  reg mem_63_sv2v_reg,mem_62_sv2v_reg,mem_61_sv2v_reg,mem_60_sv2v_reg,mem_59_sv2v_reg,
  mem_58_sv2v_reg,mem_57_sv2v_reg,mem_56_sv2v_reg,mem_55_sv2v_reg,mem_54_sv2v_reg,
  mem_53_sv2v_reg,mem_52_sv2v_reg,mem_51_sv2v_reg,mem_50_sv2v_reg,mem_49_sv2v_reg,
  mem_48_sv2v_reg,mem_47_sv2v_reg,mem_46_sv2v_reg,mem_45_sv2v_reg,mem_44_sv2v_reg,
  mem_43_sv2v_reg,mem_42_sv2v_reg,mem_41_sv2v_reg,mem_40_sv2v_reg,mem_39_sv2v_reg,
  mem_38_sv2v_reg,mem_37_sv2v_reg,mem_36_sv2v_reg,mem_35_sv2v_reg,mem_34_sv2v_reg,
  mem_33_sv2v_reg,mem_32_sv2v_reg,mem_31_sv2v_reg,mem_30_sv2v_reg,mem_29_sv2v_reg,
  mem_28_sv2v_reg,mem_27_sv2v_reg,mem_26_sv2v_reg,mem_25_sv2v_reg,mem_24_sv2v_reg,
  mem_23_sv2v_reg,mem_22_sv2v_reg,mem_21_sv2v_reg,mem_20_sv2v_reg,mem_19_sv2v_reg,
  mem_18_sv2v_reg,mem_17_sv2v_reg,mem_16_sv2v_reg,mem_15_sv2v_reg,mem_14_sv2v_reg,
  mem_13_sv2v_reg,mem_12_sv2v_reg,mem_11_sv2v_reg,mem_10_sv2v_reg,mem_9_sv2v_reg,
  mem_8_sv2v_reg,mem_7_sv2v_reg,mem_6_sv2v_reg,mem_5_sv2v_reg,mem_4_sv2v_reg,
  mem_3_sv2v_reg,mem_2_sv2v_reg,mem_1_sv2v_reg,mem_0_sv2v_reg;
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
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[63] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[62] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[61] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[60] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[59] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[58] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[57] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[56] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[55] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[54] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[53] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[52] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[51] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[50] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[49] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[48] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[47] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[46] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[45] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[44] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[43] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[42] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[41] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[40] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[39] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[38] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[37] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[36] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[35] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[34] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[33] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[32] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_63_sv2v_reg <= w_data_i[31];
      mem_62_sv2v_reg <= w_data_i[30];
      mem_61_sv2v_reg <= w_data_i[29];
      mem_60_sv2v_reg <= w_data_i[28];
      mem_59_sv2v_reg <= w_data_i[27];
      mem_58_sv2v_reg <= w_data_i[26];
      mem_57_sv2v_reg <= w_data_i[25];
      mem_56_sv2v_reg <= w_data_i[24];
      mem_55_sv2v_reg <= w_data_i[23];
      mem_54_sv2v_reg <= w_data_i[22];
      mem_53_sv2v_reg <= w_data_i[21];
      mem_52_sv2v_reg <= w_data_i[20];
      mem_51_sv2v_reg <= w_data_i[19];
      mem_50_sv2v_reg <= w_data_i[18];
      mem_49_sv2v_reg <= w_data_i[17];
      mem_48_sv2v_reg <= w_data_i[16];
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
    if(N7) begin
      mem_31_sv2v_reg <= w_data_i[31];
      mem_30_sv2v_reg <= w_data_i[30];
      mem_29_sv2v_reg <= w_data_i[29];
      mem_28_sv2v_reg <= w_data_i[28];
      mem_27_sv2v_reg <= w_data_i[27];
      mem_26_sv2v_reg <= w_data_i[26];
      mem_25_sv2v_reg <= w_data_i[25];
      mem_24_sv2v_reg <= w_data_i[24];
      mem_23_sv2v_reg <= w_data_i[23];
      mem_22_sv2v_reg <= w_data_i[22];
      mem_21_sv2v_reg <= w_data_i[21];
      mem_20_sv2v_reg <= w_data_i[20];
      mem_19_sv2v_reg <= w_data_i[19];
      mem_18_sv2v_reg <= w_data_i[18];
      mem_17_sv2v_reg <= w_data_i[17];
      mem_16_sv2v_reg <= w_data_i[16];
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



module bsg_mem_1r1w_width_p32_els_p2_read_write_same_addr_p0
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

  input [0:0] w_addr_i;
  input [31:0] w_data_i;
  input [0:0] r_addr_i;
  output [31:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [31:0] r_data_o;

  bsg_mem_1r1w_synth_width_p32_els_p2_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i[0]),
    .w_data_i(w_data_i),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i[0]),
    .r_data_o(r_data_o)
  );


endmodule



module bsg_two_fifo_width_p32
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  yumi_i
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [31:0] data_o;
  wire ready_o,v_o,enq_i,tail_r,_0_net_,head_r,empty_r,full_r,N0,N1,N2,N3,N4,N5,N6,N7,
  N8,N9,N10,N11,N12,N13,N14;
  reg full_r_sv2v_reg,tail_r_sv2v_reg,head_r_sv2v_reg,empty_r_sv2v_reg;
  assign full_r = full_r_sv2v_reg;
  assign tail_r = tail_r_sv2v_reg;
  assign head_r = head_r_sv2v_reg;
  assign empty_r = empty_r_sv2v_reg;

  bsg_mem_1r1w_width_p32_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i),
    .r_v_i(_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o)
  );

  assign _0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N5;
  assign N5 = ~full_r;
  assign N1 = enq_i;
  assign N0 = ~tail_r;
  assign N2 = ~head_r;
  assign N3 = N7 | N9;
  assign N7 = empty_r & N6;
  assign N6 = ~enq_i;
  assign N9 = N8 & N6;
  assign N8 = N5 & yumi_i;
  assign N4 = N13 | N14;
  assign N13 = N11 & N12;
  assign N11 = N10 & enq_i;
  assign N10 = ~empty_r;
  assign N12 = ~yumi_i;
  assign N14 = full_r & N12;

  always @(posedge clk_i) begin
    if(reset_i) begin
      full_r_sv2v_reg <= 1'b0;
      empty_r_sv2v_reg <= 1'b1;
    end else if(1'b1) begin
      full_r_sv2v_reg <= N4;
      empty_r_sv2v_reg <= N3;
    end 
    if(reset_i) begin
      tail_r_sv2v_reg <= 1'b0;
    end else if(N1) begin
      tail_r_sv2v_reg <= N0;
    end 
    if(reset_i) begin
      head_r_sv2v_reg <= 1'b0;
    end else if(yumi_i) begin
      head_r_sv2v_reg <= N2;
    end 
  end


endmodule



module bsg_relay_fifo
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  ready_i
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  wire [31:0] data_o;
  wire ready_o,v_o,yumi;

  bsg_two_fifo_width_p32
  two_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_o),
    .data_i(data_i),
    .v_i(v_i),
    .v_o(v_o),
    .data_o(data_o),
    .yumi_i(yumi)
  );

  assign yumi = ready_i & v_o;

endmodule

