

module top
(
  clk_i,
  reset_i,
  asm_v_i,
  asm_data_i,
  asm_yumi_o,
  asm_v_o,
  asm_data_o,
  asm_ready_i,
  node_v_o,
  node_data_o,
  node_ready_i,
  node_en_r_o,
  node_reset_r_o,
  node_v_i,
  node_data_i,
  node_yumi_o
);

  input [31:0] asm_data_i;
  output [31:0] asm_data_o;
  output [49:0] node_v_o;
  output [1599:0] node_data_o;
  input [49:0] node_ready_i;
  output [49:0] node_en_r_o;
  output [49:0] node_reset_r_o;
  input [49:0] node_v_i;
  input [1599:0] node_data_i;
  output [49:0] node_yumi_o;
  input clk_i;
  input reset_i;
  input asm_v_i;
  input asm_ready_i;
  output asm_yumi_o;
  output asm_v_o;

  bsg_fsb
  wrapper
  (
    .asm_data_i(asm_data_i),
    .asm_data_o(asm_data_o),
    .node_v_o(node_v_o),
    .node_data_o(node_data_o),
    .node_ready_i(node_ready_i),
    .node_en_r_o(node_en_r_o),
    .node_reset_r_o(node_reset_r_o),
    .node_v_i(node_v_i),
    .node_data_i(node_data_i),
    .node_yumi_o(node_yumi_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .asm_v_i(asm_v_i),
    .asm_ready_i(asm_ready_i),
    .asm_yumi_o(asm_yumi_o),
    .asm_v_o(asm_v_o)
  );


endmodule



module bsg_mem_1r1w_synth_width_p32_els_p2_read_write_same_addr_p0
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
  wire [63:0] \nz.mem ;
  reg \nz.mem_63_sv2v_reg ,\nz.mem_62_sv2v_reg ,\nz.mem_61_sv2v_reg ,
  \nz.mem_60_sv2v_reg ,\nz.mem_59_sv2v_reg ,\nz.mem_58_sv2v_reg ,\nz.mem_57_sv2v_reg ,
  \nz.mem_56_sv2v_reg ,\nz.mem_55_sv2v_reg ,\nz.mem_54_sv2v_reg ,\nz.mem_53_sv2v_reg ,
  \nz.mem_52_sv2v_reg ,\nz.mem_51_sv2v_reg ,\nz.mem_50_sv2v_reg ,\nz.mem_49_sv2v_reg ,
  \nz.mem_48_sv2v_reg ,\nz.mem_47_sv2v_reg ,\nz.mem_46_sv2v_reg ,\nz.mem_45_sv2v_reg ,
  \nz.mem_44_sv2v_reg ,\nz.mem_43_sv2v_reg ,\nz.mem_42_sv2v_reg ,
  \nz.mem_41_sv2v_reg ,\nz.mem_40_sv2v_reg ,\nz.mem_39_sv2v_reg ,\nz.mem_38_sv2v_reg ,
  \nz.mem_37_sv2v_reg ,\nz.mem_36_sv2v_reg ,\nz.mem_35_sv2v_reg ,\nz.mem_34_sv2v_reg ,
  \nz.mem_33_sv2v_reg ,\nz.mem_32_sv2v_reg ,\nz.mem_31_sv2v_reg ,\nz.mem_30_sv2v_reg ,
  \nz.mem_29_sv2v_reg ,\nz.mem_28_sv2v_reg ,\nz.mem_27_sv2v_reg ,\nz.mem_26_sv2v_reg ,
  \nz.mem_25_sv2v_reg ,\nz.mem_24_sv2v_reg ,\nz.mem_23_sv2v_reg ,
  \nz.mem_22_sv2v_reg ,\nz.mem_21_sv2v_reg ,\nz.mem_20_sv2v_reg ,\nz.mem_19_sv2v_reg ,
  \nz.mem_18_sv2v_reg ,\nz.mem_17_sv2v_reg ,\nz.mem_16_sv2v_reg ,\nz.mem_15_sv2v_reg ,
  \nz.mem_14_sv2v_reg ,\nz.mem_13_sv2v_reg ,\nz.mem_12_sv2v_reg ,\nz.mem_11_sv2v_reg ,
  \nz.mem_10_sv2v_reg ,\nz.mem_9_sv2v_reg ,\nz.mem_8_sv2v_reg ,\nz.mem_7_sv2v_reg ,
  \nz.mem_6_sv2v_reg ,\nz.mem_5_sv2v_reg ,\nz.mem_4_sv2v_reg ,\nz.mem_3_sv2v_reg ,
  \nz.mem_2_sv2v_reg ,\nz.mem_1_sv2v_reg ,\nz.mem_0_sv2v_reg ;
  assign \nz.mem [63] = \nz.mem_63_sv2v_reg ;
  assign \nz.mem [62] = \nz.mem_62_sv2v_reg ;
  assign \nz.mem [61] = \nz.mem_61_sv2v_reg ;
  assign \nz.mem [60] = \nz.mem_60_sv2v_reg ;
  assign \nz.mem [59] = \nz.mem_59_sv2v_reg ;
  assign \nz.mem [58] = \nz.mem_58_sv2v_reg ;
  assign \nz.mem [57] = \nz.mem_57_sv2v_reg ;
  assign \nz.mem [56] = \nz.mem_56_sv2v_reg ;
  assign \nz.mem [55] = \nz.mem_55_sv2v_reg ;
  assign \nz.mem [54] = \nz.mem_54_sv2v_reg ;
  assign \nz.mem [53] = \nz.mem_53_sv2v_reg ;
  assign \nz.mem [52] = \nz.mem_52_sv2v_reg ;
  assign \nz.mem [51] = \nz.mem_51_sv2v_reg ;
  assign \nz.mem [50] = \nz.mem_50_sv2v_reg ;
  assign \nz.mem [49] = \nz.mem_49_sv2v_reg ;
  assign \nz.mem [48] = \nz.mem_48_sv2v_reg ;
  assign \nz.mem [47] = \nz.mem_47_sv2v_reg ;
  assign \nz.mem [46] = \nz.mem_46_sv2v_reg ;
  assign \nz.mem [45] = \nz.mem_45_sv2v_reg ;
  assign \nz.mem [44] = \nz.mem_44_sv2v_reg ;
  assign \nz.mem [43] = \nz.mem_43_sv2v_reg ;
  assign \nz.mem [42] = \nz.mem_42_sv2v_reg ;
  assign \nz.mem [41] = \nz.mem_41_sv2v_reg ;
  assign \nz.mem [40] = \nz.mem_40_sv2v_reg ;
  assign \nz.mem [39] = \nz.mem_39_sv2v_reg ;
  assign \nz.mem [38] = \nz.mem_38_sv2v_reg ;
  assign \nz.mem [37] = \nz.mem_37_sv2v_reg ;
  assign \nz.mem [36] = \nz.mem_36_sv2v_reg ;
  assign \nz.mem [35] = \nz.mem_35_sv2v_reg ;
  assign \nz.mem [34] = \nz.mem_34_sv2v_reg ;
  assign \nz.mem [33] = \nz.mem_33_sv2v_reg ;
  assign \nz.mem [32] = \nz.mem_32_sv2v_reg ;
  assign \nz.mem [31] = \nz.mem_31_sv2v_reg ;
  assign \nz.mem [30] = \nz.mem_30_sv2v_reg ;
  assign \nz.mem [29] = \nz.mem_29_sv2v_reg ;
  assign \nz.mem [28] = \nz.mem_28_sv2v_reg ;
  assign \nz.mem [27] = \nz.mem_27_sv2v_reg ;
  assign \nz.mem [26] = \nz.mem_26_sv2v_reg ;
  assign \nz.mem [25] = \nz.mem_25_sv2v_reg ;
  assign \nz.mem [24] = \nz.mem_24_sv2v_reg ;
  assign \nz.mem [23] = \nz.mem_23_sv2v_reg ;
  assign \nz.mem [22] = \nz.mem_22_sv2v_reg ;
  assign \nz.mem [21] = \nz.mem_21_sv2v_reg ;
  assign \nz.mem [20] = \nz.mem_20_sv2v_reg ;
  assign \nz.mem [19] = \nz.mem_19_sv2v_reg ;
  assign \nz.mem [18] = \nz.mem_18_sv2v_reg ;
  assign \nz.mem [17] = \nz.mem_17_sv2v_reg ;
  assign \nz.mem [16] = \nz.mem_16_sv2v_reg ;
  assign \nz.mem [15] = \nz.mem_15_sv2v_reg ;
  assign \nz.mem [14] = \nz.mem_14_sv2v_reg ;
  assign \nz.mem [13] = \nz.mem_13_sv2v_reg ;
  assign \nz.mem [12] = \nz.mem_12_sv2v_reg ;
  assign \nz.mem [11] = \nz.mem_11_sv2v_reg ;
  assign \nz.mem [10] = \nz.mem_10_sv2v_reg ;
  assign \nz.mem [9] = \nz.mem_9_sv2v_reg ;
  assign \nz.mem [8] = \nz.mem_8_sv2v_reg ;
  assign \nz.mem [7] = \nz.mem_7_sv2v_reg ;
  assign \nz.mem [6] = \nz.mem_6_sv2v_reg ;
  assign \nz.mem [5] = \nz.mem_5_sv2v_reg ;
  assign \nz.mem [4] = \nz.mem_4_sv2v_reg ;
  assign \nz.mem [3] = \nz.mem_3_sv2v_reg ;
  assign \nz.mem [2] = \nz.mem_2_sv2v_reg ;
  assign \nz.mem [1] = \nz.mem_1_sv2v_reg ;
  assign \nz.mem [0] = \nz.mem_0_sv2v_reg ;
  assign r_data_o[31] = (N3)? \nz.mem [31] : 
                        (N0)? \nz.mem [63] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[30] = (N3)? \nz.mem [30] : 
                        (N0)? \nz.mem [62] : 1'b0;
  assign r_data_o[29] = (N3)? \nz.mem [29] : 
                        (N0)? \nz.mem [61] : 1'b0;
  assign r_data_o[28] = (N3)? \nz.mem [28] : 
                        (N0)? \nz.mem [60] : 1'b0;
  assign r_data_o[27] = (N3)? \nz.mem [27] : 
                        (N0)? \nz.mem [59] : 1'b0;
  assign r_data_o[26] = (N3)? \nz.mem [26] : 
                        (N0)? \nz.mem [58] : 1'b0;
  assign r_data_o[25] = (N3)? \nz.mem [25] : 
                        (N0)? \nz.mem [57] : 1'b0;
  assign r_data_o[24] = (N3)? \nz.mem [24] : 
                        (N0)? \nz.mem [56] : 1'b0;
  assign r_data_o[23] = (N3)? \nz.mem [23] : 
                        (N0)? \nz.mem [55] : 1'b0;
  assign r_data_o[22] = (N3)? \nz.mem [22] : 
                        (N0)? \nz.mem [54] : 1'b0;
  assign r_data_o[21] = (N3)? \nz.mem [21] : 
                        (N0)? \nz.mem [53] : 1'b0;
  assign r_data_o[20] = (N3)? \nz.mem [20] : 
                        (N0)? \nz.mem [52] : 1'b0;
  assign r_data_o[19] = (N3)? \nz.mem [19] : 
                        (N0)? \nz.mem [51] : 1'b0;
  assign r_data_o[18] = (N3)? \nz.mem [18] : 
                        (N0)? \nz.mem [50] : 1'b0;
  assign r_data_o[17] = (N3)? \nz.mem [17] : 
                        (N0)? \nz.mem [49] : 1'b0;
  assign r_data_o[16] = (N3)? \nz.mem [16] : 
                        (N0)? \nz.mem [48] : 1'b0;
  assign r_data_o[15] = (N3)? \nz.mem [15] : 
                        (N0)? \nz.mem [47] : 1'b0;
  assign r_data_o[14] = (N3)? \nz.mem [14] : 
                        (N0)? \nz.mem [46] : 1'b0;
  assign r_data_o[13] = (N3)? \nz.mem [13] : 
                        (N0)? \nz.mem [45] : 1'b0;
  assign r_data_o[12] = (N3)? \nz.mem [12] : 
                        (N0)? \nz.mem [44] : 1'b0;
  assign r_data_o[11] = (N3)? \nz.mem [11] : 
                        (N0)? \nz.mem [43] : 1'b0;
  assign r_data_o[10] = (N3)? \nz.mem [10] : 
                        (N0)? \nz.mem [42] : 1'b0;
  assign r_data_o[9] = (N3)? \nz.mem [9] : 
                       (N0)? \nz.mem [41] : 1'b0;
  assign r_data_o[8] = (N3)? \nz.mem [8] : 
                       (N0)? \nz.mem [40] : 1'b0;
  assign r_data_o[7] = (N3)? \nz.mem [7] : 
                       (N0)? \nz.mem [39] : 1'b0;
  assign r_data_o[6] = (N3)? \nz.mem [6] : 
                       (N0)? \nz.mem [38] : 1'b0;
  assign r_data_o[5] = (N3)? \nz.mem [5] : 
                       (N0)? \nz.mem [37] : 1'b0;
  assign r_data_o[4] = (N3)? \nz.mem [4] : 
                       (N0)? \nz.mem [36] : 1'b0;
  assign r_data_o[3] = (N3)? \nz.mem [3] : 
                       (N0)? \nz.mem [35] : 1'b0;
  assign r_data_o[2] = (N3)? \nz.mem [2] : 
                       (N0)? \nz.mem [34] : 1'b0;
  assign r_data_o[1] = (N3)? \nz.mem [1] : 
                       (N0)? \nz.mem [33] : 1'b0;
  assign r_data_o[0] = (N3)? \nz.mem [0] : 
                       (N0)? \nz.mem [32] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      \nz.mem_63_sv2v_reg  <= w_data_i[31];
      \nz.mem_62_sv2v_reg  <= w_data_i[30];
      \nz.mem_61_sv2v_reg  <= w_data_i[29];
      \nz.mem_60_sv2v_reg  <= w_data_i[28];
      \nz.mem_59_sv2v_reg  <= w_data_i[27];
      \nz.mem_58_sv2v_reg  <= w_data_i[26];
      \nz.mem_57_sv2v_reg  <= w_data_i[25];
      \nz.mem_56_sv2v_reg  <= w_data_i[24];
      \nz.mem_55_sv2v_reg  <= w_data_i[23];
      \nz.mem_54_sv2v_reg  <= w_data_i[22];
      \nz.mem_53_sv2v_reg  <= w_data_i[21];
      \nz.mem_52_sv2v_reg  <= w_data_i[20];
      \nz.mem_51_sv2v_reg  <= w_data_i[19];
      \nz.mem_50_sv2v_reg  <= w_data_i[18];
      \nz.mem_49_sv2v_reg  <= w_data_i[17];
      \nz.mem_48_sv2v_reg  <= w_data_i[16];
      \nz.mem_47_sv2v_reg  <= w_data_i[15];
      \nz.mem_46_sv2v_reg  <= w_data_i[14];
      \nz.mem_45_sv2v_reg  <= w_data_i[13];
      \nz.mem_44_sv2v_reg  <= w_data_i[12];
      \nz.mem_43_sv2v_reg  <= w_data_i[11];
      \nz.mem_42_sv2v_reg  <= w_data_i[10];
      \nz.mem_41_sv2v_reg  <= w_data_i[9];
      \nz.mem_40_sv2v_reg  <= w_data_i[8];
      \nz.mem_39_sv2v_reg  <= w_data_i[7];
      \nz.mem_38_sv2v_reg  <= w_data_i[6];
      \nz.mem_37_sv2v_reg  <= w_data_i[5];
      \nz.mem_36_sv2v_reg  <= w_data_i[4];
      \nz.mem_35_sv2v_reg  <= w_data_i[3];
      \nz.mem_34_sv2v_reg  <= w_data_i[2];
      \nz.mem_33_sv2v_reg  <= w_data_i[1];
      \nz.mem_32_sv2v_reg  <= w_data_i[0];
    end 
    if(N7) begin
      \nz.mem_31_sv2v_reg  <= w_data_i[31];
      \nz.mem_30_sv2v_reg  <= w_data_i[30];
      \nz.mem_29_sv2v_reg  <= w_data_i[29];
      \nz.mem_28_sv2v_reg  <= w_data_i[28];
      \nz.mem_27_sv2v_reg  <= w_data_i[27];
      \nz.mem_26_sv2v_reg  <= w_data_i[26];
      \nz.mem_25_sv2v_reg  <= w_data_i[25];
      \nz.mem_24_sv2v_reg  <= w_data_i[24];
      \nz.mem_23_sv2v_reg  <= w_data_i[23];
      \nz.mem_22_sv2v_reg  <= w_data_i[22];
      \nz.mem_21_sv2v_reg  <= w_data_i[21];
      \nz.mem_20_sv2v_reg  <= w_data_i[20];
      \nz.mem_19_sv2v_reg  <= w_data_i[19];
      \nz.mem_18_sv2v_reg  <= w_data_i[18];
      \nz.mem_17_sv2v_reg  <= w_data_i[17];
      \nz.mem_16_sv2v_reg  <= w_data_i[16];
      \nz.mem_15_sv2v_reg  <= w_data_i[15];
      \nz.mem_14_sv2v_reg  <= w_data_i[14];
      \nz.mem_13_sv2v_reg  <= w_data_i[13];
      \nz.mem_12_sv2v_reg  <= w_data_i[12];
      \nz.mem_11_sv2v_reg  <= w_data_i[11];
      \nz.mem_10_sv2v_reg  <= w_data_i[10];
      \nz.mem_9_sv2v_reg  <= w_data_i[9];
      \nz.mem_8_sv2v_reg  <= w_data_i[8];
      \nz.mem_7_sv2v_reg  <= w_data_i[7];
      \nz.mem_6_sv2v_reg  <= w_data_i[6];
      \nz.mem_5_sv2v_reg  <= w_data_i[5];
      \nz.mem_4_sv2v_reg  <= w_data_i[4];
      \nz.mem_3_sv2v_reg  <= w_data_i[3];
      \nz.mem_2_sv2v_reg  <= w_data_i[2];
      \nz.mem_1_sv2v_reg  <= w_data_i[1];
      \nz.mem_0_sv2v_reg  <= w_data_i[0];
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

  bsg_mem_1r1w_synth_width_p32_els_p2_read_write_same_addr_p0
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



module bsg_front_side_bus_hop_in_width_p32_fan_out_p2
(
  clk_i,
  reset_i,
  ready_o,
  v_i,
  data_i,
  v_o,
  data_o,
  ready_i
);

  input [31:0] data_i;
  output [1:0] v_o;
  output [63:0] data_o;
  input [1:0] ready_i;
  input clk_i;
  input reset_i;
  input v_i;
  output ready_o;
  wire [1:0] v_o,sent_r,sent_n;
  wire [63:0] data_o;
  wire ready_o,N0,N1,data_o_0__31_,data_o_0__30_,data_o_0__29_,data_o_0__28_,
  data_o_0__27_,data_o_0__26_,data_o_0__25_,data_o_0__24_,data_o_0__23_,data_o_0__22_,
  data_o_0__21_,data_o_0__20_,data_o_0__19_,data_o_0__18_,data_o_0__17_,data_o_0__16_,
  data_o_0__15_,data_o_0__14_,data_o_0__13_,data_o_0__12_,data_o_0__11_,
  data_o_0__10_,data_o_0__9_,data_o_0__8_,data_o_0__7_,data_o_0__6_,data_o_0__5_,data_o_0__4_,
  data_o_0__3_,data_o_0__2_,data_o_0__1_,data_o_0__0_,fifo_v,fifo_yumi,N2,N3,N4,
  N5,N6,N7,N8,N9,N10,N11;
  reg sent_r_0_sv2v_reg,sent_r_1_sv2v_reg;
  assign sent_r[0] = sent_r_0_sv2v_reg;
  assign sent_r[1] = sent_r_1_sv2v_reg;
  assign data_o[63] = data_o_0__31_;
  assign data_o[31] = data_o_0__31_;
  assign data_o[62] = data_o_0__30_;
  assign data_o[30] = data_o_0__30_;
  assign data_o[61] = data_o_0__29_;
  assign data_o[29] = data_o_0__29_;
  assign data_o[60] = data_o_0__28_;
  assign data_o[28] = data_o_0__28_;
  assign data_o[59] = data_o_0__27_;
  assign data_o[27] = data_o_0__27_;
  assign data_o[58] = data_o_0__26_;
  assign data_o[26] = data_o_0__26_;
  assign data_o[57] = data_o_0__25_;
  assign data_o[25] = data_o_0__25_;
  assign data_o[56] = data_o_0__24_;
  assign data_o[24] = data_o_0__24_;
  assign data_o[55] = data_o_0__23_;
  assign data_o[23] = data_o_0__23_;
  assign data_o[54] = data_o_0__22_;
  assign data_o[22] = data_o_0__22_;
  assign data_o[53] = data_o_0__21_;
  assign data_o[21] = data_o_0__21_;
  assign data_o[52] = data_o_0__20_;
  assign data_o[20] = data_o_0__20_;
  assign data_o[51] = data_o_0__19_;
  assign data_o[19] = data_o_0__19_;
  assign data_o[50] = data_o_0__18_;
  assign data_o[18] = data_o_0__18_;
  assign data_o[49] = data_o_0__17_;
  assign data_o[17] = data_o_0__17_;
  assign data_o[48] = data_o_0__16_;
  assign data_o[16] = data_o_0__16_;
  assign data_o[47] = data_o_0__15_;
  assign data_o[15] = data_o_0__15_;
  assign data_o[46] = data_o_0__14_;
  assign data_o[14] = data_o_0__14_;
  assign data_o[45] = data_o_0__13_;
  assign data_o[13] = data_o_0__13_;
  assign data_o[44] = data_o_0__12_;
  assign data_o[12] = data_o_0__12_;
  assign data_o[43] = data_o_0__11_;
  assign data_o[11] = data_o_0__11_;
  assign data_o[42] = data_o_0__10_;
  assign data_o[10] = data_o_0__10_;
  assign data_o[41] = data_o_0__9_;
  assign data_o[9] = data_o_0__9_;
  assign data_o[40] = data_o_0__8_;
  assign data_o[8] = data_o_0__8_;
  assign data_o[39] = data_o_0__7_;
  assign data_o[7] = data_o_0__7_;
  assign data_o[38] = data_o_0__6_;
  assign data_o[6] = data_o_0__6_;
  assign data_o[37] = data_o_0__5_;
  assign data_o[5] = data_o_0__5_;
  assign data_o[36] = data_o_0__4_;
  assign data_o[4] = data_o_0__4_;
  assign data_o[35] = data_o_0__3_;
  assign data_o[3] = data_o_0__3_;
  assign data_o[34] = data_o_0__2_;
  assign data_o[2] = data_o_0__2_;
  assign data_o[33] = data_o_0__1_;
  assign data_o[1] = data_o_0__1_;
  assign data_o[32] = data_o_0__0_;
  assign data_o[0] = data_o_0__0_;

  bsg_two_fifo_width_p32
  fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_o),
    .data_i(data_i),
    .v_i(v_i),
    .v_o(fifo_v),
    .data_o({ data_o_0__31_, data_o_0__30_, data_o_0__29_, data_o_0__28_, data_o_0__27_, data_o_0__26_, data_o_0__25_, data_o_0__24_, data_o_0__23_, data_o_0__22_, data_o_0__21_, data_o_0__20_, data_o_0__19_, data_o_0__18_, data_o_0__17_, data_o_0__16_, data_o_0__15_, data_o_0__14_, data_o_0__13_, data_o_0__12_, data_o_0__11_, data_o_0__10_, data_o_0__9_, data_o_0__8_, data_o_0__7_, data_o_0__6_, data_o_0__5_, data_o_0__4_, data_o_0__3_, data_o_0__2_, data_o_0__1_, data_o_0__0_ }),
    .yumi_i(fifo_yumi)
  );

  assign sent_n[0] = (N0)? 1'b1 : 
                     (N4)? sent_r[0] : 1'b0;
  assign N0 = N3;
  assign sent_n[1] = (N1)? 1'b1 : 
                     (N7)? sent_r[1] : 1'b0;
  assign N1 = N6;
  assign v_o[0] = fifo_v & N8;
  assign N8 = ~sent_r[0];
  assign N2 = sent_n[0] & N9;
  assign N9 = ~fifo_yumi;
  assign N3 = v_o[0] & ready_i[0];
  assign N4 = ~N3;
  assign v_o[1] = fifo_v & N10;
  assign N10 = ~sent_r[1];
  assign N5 = sent_n[1] & N11;
  assign N11 = ~fifo_yumi;
  assign N6 = v_o[1] & ready_i[1];
  assign N7 = ~N6;
  assign fifo_yumi = sent_n[1] & sent_n[0];

  always @(posedge clk_i) begin
    if(reset_i) begin
      sent_r_0_sv2v_reg <= 1'b0;
      sent_r_1_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      sent_r_0_sv2v_reg <= N2;
      sent_r_1_sv2v_reg <= N5;
    end 
  end


endmodule



module bsg_front_side_bus_hop_out_width_p32
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  yumi_o,
  v_o,
  data_o,
  ready_i
);

  input [1:0] v_i;
  input [63:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input ready_i;
  output ready_o;
  output yumi_o;
  output v_o;
  wire [31:0] data_o;
  wire ready_o,yumi_o,v_o,N0,N1,N2,v1_blocked_r,source_sel,fifo_ready,N3,N4,N5,
  _0_net__31_,_0_net__30_,_0_net__29_,_0_net__28_,_0_net__27_,_0_net__26_,_0_net__25_,
  _0_net__24_,_0_net__23_,_0_net__22_,_0_net__21_,_0_net__20_,_0_net__19_,_0_net__18_,
  _0_net__17_,_0_net__16_,_0_net__15_,_0_net__14_,_0_net__13_,_0_net__12_,
  _0_net__11_,_0_net__10_,_0_net__9_,_0_net__8_,_0_net__7_,_0_net__6_,_0_net__5_,
  _0_net__4_,_0_net__3_,_0_net__2_,_0_net__1_,_0_net__0_,_1_net_,_2_net_,N6,N7,N8,N9,N10;
  reg v1_blocked_r_sv2v_reg;
  assign v1_blocked_r = v1_blocked_r_sv2v_reg;

  bsg_two_fifo_width_p32
  fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready),
    .data_i({ _0_net__31_, _0_net__30_, _0_net__29_, _0_net__28_, _0_net__27_, _0_net__26_, _0_net__25_, _0_net__24_, _0_net__23_, _0_net__22_, _0_net__21_, _0_net__20_, _0_net__19_, _0_net__18_, _0_net__17_, _0_net__16_, _0_net__15_, _0_net__14_, _0_net__13_, _0_net__12_, _0_net__11_, _0_net__10_, _0_net__9_, _0_net__8_, _0_net__7_, _0_net__6_, _0_net__5_, _0_net__4_, _0_net__3_, _0_net__2_, _0_net__1_, _0_net__0_ }),
    .v_i(_2_net_),
    .v_o(v_o),
    .data_o(data_o),
    .yumi_i(_1_net_)
  );

  assign _0_net__31_ = (N6)? data_i[31] : 
                       (N0)? data_i[63] : 1'b0;
  assign N0 = source_sel;
  assign _0_net__30_ = (N6)? data_i[30] : 
                       (N0)? data_i[62] : 1'b0;
  assign _0_net__29_ = (N6)? data_i[29] : 
                       (N0)? data_i[61] : 1'b0;
  assign _0_net__28_ = (N6)? data_i[28] : 
                       (N0)? data_i[60] : 1'b0;
  assign _0_net__27_ = (N6)? data_i[27] : 
                       (N0)? data_i[59] : 1'b0;
  assign _0_net__26_ = (N6)? data_i[26] : 
                       (N0)? data_i[58] : 1'b0;
  assign _0_net__25_ = (N6)? data_i[25] : 
                       (N0)? data_i[57] : 1'b0;
  assign _0_net__24_ = (N6)? data_i[24] : 
                       (N0)? data_i[56] : 1'b0;
  assign _0_net__23_ = (N6)? data_i[23] : 
                       (N0)? data_i[55] : 1'b0;
  assign _0_net__22_ = (N6)? data_i[22] : 
                       (N0)? data_i[54] : 1'b0;
  assign _0_net__21_ = (N6)? data_i[21] : 
                       (N0)? data_i[53] : 1'b0;
  assign _0_net__20_ = (N6)? data_i[20] : 
                       (N0)? data_i[52] : 1'b0;
  assign _0_net__19_ = (N6)? data_i[19] : 
                       (N0)? data_i[51] : 1'b0;
  assign _0_net__18_ = (N6)? data_i[18] : 
                       (N0)? data_i[50] : 1'b0;
  assign _0_net__17_ = (N6)? data_i[17] : 
                       (N0)? data_i[49] : 1'b0;
  assign _0_net__16_ = (N6)? data_i[16] : 
                       (N0)? data_i[48] : 1'b0;
  assign _0_net__15_ = (N6)? data_i[15] : 
                       (N0)? data_i[47] : 1'b0;
  assign _0_net__14_ = (N6)? data_i[14] : 
                       (N0)? data_i[46] : 1'b0;
  assign _0_net__13_ = (N6)? data_i[13] : 
                       (N0)? data_i[45] : 1'b0;
  assign _0_net__12_ = (N6)? data_i[12] : 
                       (N0)? data_i[44] : 1'b0;
  assign _0_net__11_ = (N6)? data_i[11] : 
                       (N0)? data_i[43] : 1'b0;
  assign _0_net__10_ = (N6)? data_i[10] : 
                       (N0)? data_i[42] : 1'b0;
  assign _0_net__9_ = (N6)? data_i[9] : 
                      (N0)? data_i[41] : 1'b0;
  assign _0_net__8_ = (N6)? data_i[8] : 
                      (N0)? data_i[40] : 1'b0;
  assign _0_net__7_ = (N6)? data_i[7] : 
                      (N0)? data_i[39] : 1'b0;
  assign _0_net__6_ = (N6)? data_i[6] : 
                      (N0)? data_i[38] : 1'b0;
  assign _0_net__5_ = (N6)? data_i[5] : 
                      (N0)? data_i[37] : 1'b0;
  assign _0_net__4_ = (N6)? data_i[4] : 
                      (N0)? data_i[36] : 1'b0;
  assign _0_net__3_ = (N6)? data_i[3] : 
                      (N0)? data_i[35] : 1'b0;
  assign _0_net__2_ = (N6)? data_i[2] : 
                      (N0)? data_i[34] : 1'b0;
  assign _0_net__1_ = (N6)? data_i[1] : 
                      (N0)? data_i[33] : 1'b0;
  assign _0_net__0_ = (N6)? data_i[0] : 
                      (N0)? data_i[32] : 1'b0;
  assign N5 = (N1)? N4 : 
              (N2)? v1_blocked_r : 1'b0;
  assign N1 = fifo_ready;
  assign N2 = N3;
  assign source_sel = N7 | v1_blocked_r;
  assign N7 = ~v_i[0];
  assign yumi_o = N8 & source_sel;
  assign N8 = fifo_ready & v_i[1];
  assign N3 = ~fifo_ready;
  assign N4 = v_i[1] & N9;
  assign N9 = ~source_sel;
  assign _2_net_ = v_i[1] | v_i[0];
  assign _1_net_ = v_o & ready_i;
  assign N6 = ~source_sel;
  assign ready_o = fifo_ready & N10;
  assign N10 = ~v1_blocked_r;

  always @(posedge clk_i) begin
    if(reset_i) begin
      v1_blocked_r_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      v1_blocked_r_sv2v_reg <= N5;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_0_6_x_x
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,N4,\genblk1.for_this_node ,
  \genblk1.for_switch ,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N5 = data_i[20] | N19;
  assign N6 = N5 | data_i[18];
  assign N7 = N23 | N6;
  assign N9 = data_i[20] | data_i[19];
  assign N10 = N9 | N13;
  assign N11 = N23 | N10;
  assign N14 = N18 | data_i[19];
  assign N15 = N14 | N13;
  assign N16 = N23 | N15;
  assign N20 = data_i[24] | data_i[23];
  assign N21 = data_i[22] | data_i[21];
  assign N22 = N18 | N19;
  assign N23 = N20 | N21;
  assign N24 = N22 | data_i[18];
  assign N25 = N23 | N24;
  assign N43 = data_i[30] | data_i[31];
  assign N44 = data_i[29] | N43;
  assign N45 = data_i[28] | N44;
  assign N46 = data_i[27] | N45;
  assign N47 = data_i[26] | N46;
  assign N48 = ~N47;
  assign N31 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N30)? node_en_r_o : 1'b0;
  assign N0 = N8;
  assign N1 = N12;
  assign N32 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N30)? node_reset_r_o : 1'b0;
  assign N2 = N17;
  assign N3 = N26;
  assign N4 = 1'b0;
  assign \genblk1.for_this_node  = v_i & N49;
  assign N49 = N48 | N4;
  assign \genblk1.for_switch  = N53 & data_i[25];
  assign N53 = N52 & N48;
  assign N52 = N51 & v_i;
  assign N51 = ~N50;
  assign N50 = N4 & node_en_r_o;
  assign v_o = N54 & N55;
  assign N54 = node_en_r_o & \genblk1.for_this_node ;
  assign N55 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N60;
  assign N60 = N58 | N59;
  assign N58 = N57 | \genblk1.for_switch ;
  assign N57 = N56 | ready_i;
  assign N56 = ~node_en_r_o;
  assign N59 = ~\genblk1.for_this_node ;
  assign N8 = ~N7;
  assign N12 = ~N11;
  assign N13 = ~data_i[18];
  assign N17 = ~N16;
  assign N18 = ~data_i[20];
  assign N19 = ~data_i[19];
  assign N26 = ~N25;
  assign N27 = N12 | N8;
  assign N28 = N17 | N27;
  assign N29 = N26 | N28;
  assign N30 = ~N29;
  assign N33 = N17 & \genblk1.for_switch ;
  assign N34 = N26 & \genblk1.for_switch ;
  assign N35 = N33 | N34;
  assign N36 = N35 | N55;
  assign N37 = ~N36;
  assign N38 = N8 & \genblk1.for_switch ;
  assign N39 = N12 & \genblk1.for_switch ;
  assign N40 = N38 | N39;
  assign N41 = N40 | N55;
  assign N42 = ~N41;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N37) begin
      node_en_r_o_sv2v_reg <= N31;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N42) begin
      node_reset_r_o_sv2v_reg <= N32;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_1_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[26];
  assign N43 = data_i[30] | data_i[31];
  assign N44 = data_i[29] | N43;
  assign N45 = data_i[28] | N44;
  assign N46 = data_i[27] | N45;
  assign N47 = N42 | N46;
  assign N48 = ~N47;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N48;
  assign \genblk1.for_switch  = N49 & data_i[25];
  assign N49 = v_i & N48;
  assign v_o = N50 & N51;
  assign N50 = node_en_r_o & \genblk1.for_this_node ;
  assign N51 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N56;
  assign N56 = N54 | N55;
  assign N54 = N53 | \genblk1.for_switch ;
  assign N53 = N52 | ready_i;
  assign N52 = ~node_en_r_o;
  assign N55 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N51;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N51;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_2_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[27];
  assign N43 = data_i[30] | data_i[31];
  assign N44 = data_i[29] | N43;
  assign N45 = data_i[28] | N44;
  assign N46 = N42 | N45;
  assign N47 = data_i[26] | N46;
  assign N48 = ~N47;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N48;
  assign \genblk1.for_switch  = N49 & data_i[25];
  assign N49 = v_i & N48;
  assign v_o = N50 & N51;
  assign N50 = node_en_r_o & \genblk1.for_this_node ;
  assign N51 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N56;
  assign N56 = N54 | N55;
  assign N54 = N53 | \genblk1.for_switch ;
  assign N53 = N52 | ready_i;
  assign N52 = ~node_en_r_o;
  assign N55 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N51;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N51;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_3_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[27];
  assign N43 = ~data_i[26];
  assign N44 = data_i[30] | data_i[31];
  assign N45 = data_i[29] | N44;
  assign N46 = data_i[28] | N45;
  assign N47 = N42 | N46;
  assign N48 = N43 | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_4_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[28];
  assign N43 = data_i[30] | data_i[31];
  assign N44 = data_i[29] | N43;
  assign N45 = N42 | N44;
  assign N46 = data_i[27] | N45;
  assign N47 = data_i[26] | N46;
  assign N48 = ~N47;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N48;
  assign \genblk1.for_switch  = N49 & data_i[25];
  assign N49 = v_i & N48;
  assign v_o = N50 & N51;
  assign N50 = node_en_r_o & \genblk1.for_this_node ;
  assign N51 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N56;
  assign N56 = N54 | N55;
  assign N54 = N53 | \genblk1.for_switch ;
  assign N53 = N52 | ready_i;
  assign N52 = ~node_en_r_o;
  assign N55 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N51;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N51;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_5_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[28];
  assign N43 = ~data_i[26];
  assign N44 = data_i[30] | data_i[31];
  assign N45 = data_i[29] | N44;
  assign N46 = N42 | N45;
  assign N47 = data_i[27] | N46;
  assign N48 = N43 | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_6_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[28];
  assign N43 = ~data_i[27];
  assign N44 = data_i[30] | data_i[31];
  assign N45 = data_i[29] | N44;
  assign N46 = N42 | N45;
  assign N47 = N43 | N46;
  assign N48 = data_i[26] | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_7_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[28];
  assign N43 = ~data_i[27];
  assign N44 = ~data_i[26];
  assign N45 = data_i[30] | data_i[31];
  assign N46 = data_i[29] | N45;
  assign N47 = N42 | N46;
  assign N48 = N43 | N47;
  assign N49 = N44 | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_8_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[29];
  assign N43 = data_i[30] | data_i[31];
  assign N44 = N42 | N43;
  assign N45 = data_i[28] | N44;
  assign N46 = data_i[27] | N45;
  assign N47 = data_i[26] | N46;
  assign N48 = ~N47;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N48;
  assign \genblk1.for_switch  = N49 & data_i[25];
  assign N49 = v_i & N48;
  assign v_o = N50 & N51;
  assign N50 = node_en_r_o & \genblk1.for_this_node ;
  assign N51 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N56;
  assign N56 = N54 | N55;
  assign N54 = N53 | \genblk1.for_switch ;
  assign N53 = N52 | ready_i;
  assign N52 = ~node_en_r_o;
  assign N55 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N51;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N51;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_9_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[29];
  assign N43 = ~data_i[26];
  assign N44 = data_i[30] | data_i[31];
  assign N45 = N42 | N44;
  assign N46 = data_i[28] | N45;
  assign N47 = data_i[27] | N46;
  assign N48 = N43 | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_10_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[29];
  assign N43 = ~data_i[27];
  assign N44 = data_i[30] | data_i[31];
  assign N45 = N42 | N44;
  assign N46 = data_i[28] | N45;
  assign N47 = N43 | N46;
  assign N48 = data_i[26] | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_11_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[29];
  assign N43 = ~data_i[27];
  assign N44 = ~data_i[26];
  assign N45 = data_i[30] | data_i[31];
  assign N46 = N42 | N45;
  assign N47 = data_i[28] | N46;
  assign N48 = N43 | N47;
  assign N49 = N44 | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_12_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[29];
  assign N43 = ~data_i[28];
  assign N44 = data_i[30] | data_i[31];
  assign N45 = N42 | N44;
  assign N46 = N43 | N45;
  assign N47 = data_i[27] | N46;
  assign N48 = data_i[26] | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_13_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[29];
  assign N43 = ~data_i[28];
  assign N44 = ~data_i[26];
  assign N45 = data_i[30] | data_i[31];
  assign N46 = N42 | N45;
  assign N47 = N43 | N46;
  assign N48 = data_i[27] | N47;
  assign N49 = N44 | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_14_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[29];
  assign N43 = ~data_i[28];
  assign N44 = ~data_i[27];
  assign N45 = data_i[30] | data_i[31];
  assign N46 = N42 | N45;
  assign N47 = N43 | N46;
  assign N48 = N44 | N47;
  assign N49 = data_i[26] | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_15_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[29];
  assign N43 = ~data_i[28];
  assign N44 = ~data_i[27];
  assign N45 = ~data_i[26];
  assign N46 = data_i[30] | data_i[31];
  assign N47 = N42 | N46;
  assign N48 = N43 | N47;
  assign N49 = N44 | N48;
  assign N50 = N45 | N49;
  assign N51 = ~N50;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N51;
  assign \genblk1.for_switch  = N52 & data_i[25];
  assign N52 = v_i & N51;
  assign v_o = N53 & N54;
  assign N53 = node_en_r_o & \genblk1.for_this_node ;
  assign N54 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N59;
  assign N59 = N57 | N58;
  assign N57 = N56 | \genblk1.for_switch ;
  assign N56 = N55 | ready_i;
  assign N55 = ~node_en_r_o;
  assign N58 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N54;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N54;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_16_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = N42 | data_i[31];
  assign N44 = data_i[29] | N43;
  assign N45 = data_i[28] | N44;
  assign N46 = data_i[27] | N45;
  assign N47 = data_i[26] | N46;
  assign N48 = ~N47;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N48;
  assign \genblk1.for_switch  = N49 & data_i[25];
  assign N49 = v_i & N48;
  assign v_o = N50 & N51;
  assign N50 = node_en_r_o & \genblk1.for_this_node ;
  assign N51 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N56;
  assign N56 = N54 | N55;
  assign N54 = N53 | \genblk1.for_switch ;
  assign N53 = N52 | ready_i;
  assign N52 = ~node_en_r_o;
  assign N55 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N51;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N51;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_17_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[26];
  assign N44 = N42 | data_i[31];
  assign N45 = data_i[29] | N44;
  assign N46 = data_i[28] | N45;
  assign N47 = data_i[27] | N46;
  assign N48 = N43 | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_18_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[27];
  assign N44 = N42 | data_i[31];
  assign N45 = data_i[29] | N44;
  assign N46 = data_i[28] | N45;
  assign N47 = N43 | N46;
  assign N48 = data_i[26] | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_19_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[27];
  assign N44 = ~data_i[26];
  assign N45 = N42 | data_i[31];
  assign N46 = data_i[29] | N45;
  assign N47 = data_i[28] | N46;
  assign N48 = N43 | N47;
  assign N49 = N44 | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_20_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[28];
  assign N44 = N42 | data_i[31];
  assign N45 = data_i[29] | N44;
  assign N46 = N43 | N45;
  assign N47 = data_i[27] | N46;
  assign N48 = data_i[26] | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_21_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[28];
  assign N44 = ~data_i[26];
  assign N45 = N42 | data_i[31];
  assign N46 = data_i[29] | N45;
  assign N47 = N43 | N46;
  assign N48 = data_i[27] | N47;
  assign N49 = N44 | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_22_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[28];
  assign N44 = ~data_i[27];
  assign N45 = N42 | data_i[31];
  assign N46 = data_i[29] | N45;
  assign N47 = N43 | N46;
  assign N48 = N44 | N47;
  assign N49 = data_i[26] | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_23_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[28];
  assign N44 = ~data_i[27];
  assign N45 = ~data_i[26];
  assign N46 = N42 | data_i[31];
  assign N47 = data_i[29] | N46;
  assign N48 = N43 | N47;
  assign N49 = N44 | N48;
  assign N50 = N45 | N49;
  assign N51 = ~N50;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N51;
  assign \genblk1.for_switch  = N52 & data_i[25];
  assign N52 = v_i & N51;
  assign v_o = N53 & N54;
  assign N53 = node_en_r_o & \genblk1.for_this_node ;
  assign N54 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N59;
  assign N59 = N57 | N58;
  assign N57 = N56 | \genblk1.for_switch ;
  assign N56 = N55 | ready_i;
  assign N55 = ~node_en_r_o;
  assign N58 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N54;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N54;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_24_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[29];
  assign N44 = N42 | data_i[31];
  assign N45 = N43 | N44;
  assign N46 = data_i[28] | N45;
  assign N47 = data_i[27] | N46;
  assign N48 = data_i[26] | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_25_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[26];
  assign N45 = N42 | data_i[31];
  assign N46 = N43 | N45;
  assign N47 = data_i[28] | N46;
  assign N48 = data_i[27] | N47;
  assign N49 = N44 | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_26_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[27];
  assign N45 = N42 | data_i[31];
  assign N46 = N43 | N45;
  assign N47 = data_i[28] | N46;
  assign N48 = N44 | N47;
  assign N49 = data_i[26] | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_27_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[27];
  assign N45 = ~data_i[26];
  assign N46 = N42 | data_i[31];
  assign N47 = N43 | N46;
  assign N48 = data_i[28] | N47;
  assign N49 = N44 | N48;
  assign N50 = N45 | N49;
  assign N51 = ~N50;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N51;
  assign \genblk1.for_switch  = N52 & data_i[25];
  assign N52 = v_i & N51;
  assign v_o = N53 & N54;
  assign N53 = node_en_r_o & \genblk1.for_this_node ;
  assign N54 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N59;
  assign N59 = N57 | N58;
  assign N57 = N56 | \genblk1.for_switch ;
  assign N56 = N55 | ready_i;
  assign N55 = ~node_en_r_o;
  assign N58 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N54;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N54;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_28_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[28];
  assign N45 = N42 | data_i[31];
  assign N46 = N43 | N45;
  assign N47 = N44 | N46;
  assign N48 = data_i[27] | N47;
  assign N49 = data_i[26] | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_29_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[28];
  assign N45 = ~data_i[26];
  assign N46 = N42 | data_i[31];
  assign N47 = N43 | N46;
  assign N48 = N44 | N47;
  assign N49 = data_i[27] | N48;
  assign N50 = N45 | N49;
  assign N51 = ~N50;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N51;
  assign \genblk1.for_switch  = N52 & data_i[25];
  assign N52 = v_i & N51;
  assign v_o = N53 & N54;
  assign N53 = node_en_r_o & \genblk1.for_this_node ;
  assign N54 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N59;
  assign N59 = N57 | N58;
  assign N57 = N56 | \genblk1.for_switch ;
  assign N56 = N55 | ready_i;
  assign N55 = ~node_en_r_o;
  assign N58 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N54;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N54;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_30_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[28];
  assign N45 = ~data_i[27];
  assign N46 = N42 | data_i[31];
  assign N47 = N43 | N46;
  assign N48 = N44 | N47;
  assign N49 = N45 | N48;
  assign N50 = data_i[26] | N49;
  assign N51 = ~N50;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N51;
  assign \genblk1.for_switch  = N52 & data_i[25];
  assign N52 = v_i & N51;
  assign v_o = N53 & N54;
  assign N53 = node_en_r_o & \genblk1.for_this_node ;
  assign N54 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N59;
  assign N59 = N57 | N58;
  assign N57 = N56 | \genblk1.for_switch ;
  assign N56 = N55 | ready_i;
  assign N55 = ~node_en_r_o;
  assign N58 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N54;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N54;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_31_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[30];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[28];
  assign N45 = ~data_i[27];
  assign N46 = ~data_i[26];
  assign N47 = N42 | data_i[31];
  assign N48 = N43 | N47;
  assign N49 = N44 | N48;
  assign N50 = N45 | N49;
  assign N51 = N46 | N50;
  assign N52 = ~N51;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N52;
  assign \genblk1.for_switch  = N53 & data_i[25];
  assign N53 = v_i & N52;
  assign v_o = N54 & N55;
  assign N54 = node_en_r_o & \genblk1.for_this_node ;
  assign N55 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N60;
  assign N60 = N58 | N59;
  assign N58 = N57 | \genblk1.for_switch ;
  assign N57 = N56 | ready_i;
  assign N56 = ~node_en_r_o;
  assign N59 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N55;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N55;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_32_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = data_i[30] | N42;
  assign N44 = data_i[29] | N43;
  assign N45 = data_i[28] | N44;
  assign N46 = data_i[27] | N45;
  assign N47 = data_i[26] | N46;
  assign N48 = ~N47;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N48;
  assign \genblk1.for_switch  = N49 & data_i[25];
  assign N49 = v_i & N48;
  assign v_o = N50 & N51;
  assign N50 = node_en_r_o & \genblk1.for_this_node ;
  assign N51 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N56;
  assign N56 = N54 | N55;
  assign N54 = N53 | \genblk1.for_switch ;
  assign N53 = N52 | ready_i;
  assign N52 = ~node_en_r_o;
  assign N55 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N51;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N51;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_33_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[26];
  assign N44 = data_i[30] | N42;
  assign N45 = data_i[29] | N44;
  assign N46 = data_i[28] | N45;
  assign N47 = data_i[27] | N46;
  assign N48 = N43 | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_34_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[27];
  assign N44 = data_i[30] | N42;
  assign N45 = data_i[29] | N44;
  assign N46 = data_i[28] | N45;
  assign N47 = N43 | N46;
  assign N48 = data_i[26] | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_35_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[27];
  assign N44 = ~data_i[26];
  assign N45 = data_i[30] | N42;
  assign N46 = data_i[29] | N45;
  assign N47 = data_i[28] | N46;
  assign N48 = N43 | N47;
  assign N49 = N44 | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_36_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[28];
  assign N44 = data_i[30] | N42;
  assign N45 = data_i[29] | N44;
  assign N46 = N43 | N45;
  assign N47 = data_i[27] | N46;
  assign N48 = data_i[26] | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_37_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[28];
  assign N44 = ~data_i[26];
  assign N45 = data_i[30] | N42;
  assign N46 = data_i[29] | N45;
  assign N47 = N43 | N46;
  assign N48 = data_i[27] | N47;
  assign N49 = N44 | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_38_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[28];
  assign N44 = ~data_i[27];
  assign N45 = data_i[30] | N42;
  assign N46 = data_i[29] | N45;
  assign N47 = N43 | N46;
  assign N48 = N44 | N47;
  assign N49 = data_i[26] | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_39_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[28];
  assign N44 = ~data_i[27];
  assign N45 = ~data_i[26];
  assign N46 = data_i[30] | N42;
  assign N47 = data_i[29] | N46;
  assign N48 = N43 | N47;
  assign N49 = N44 | N48;
  assign N50 = N45 | N49;
  assign N51 = ~N50;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N51;
  assign \genblk1.for_switch  = N52 & data_i[25];
  assign N52 = v_i & N51;
  assign v_o = N53 & N54;
  assign N53 = node_en_r_o & \genblk1.for_this_node ;
  assign N54 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N59;
  assign N59 = N57 | N58;
  assign N57 = N56 | \genblk1.for_switch ;
  assign N56 = N55 | ready_i;
  assign N55 = ~node_en_r_o;
  assign N58 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N54;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N54;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_40_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[29];
  assign N44 = data_i[30] | N42;
  assign N45 = N43 | N44;
  assign N46 = data_i[28] | N45;
  assign N47 = data_i[27] | N46;
  assign N48 = data_i[26] | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_41_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[26];
  assign N45 = data_i[30] | N42;
  assign N46 = N43 | N45;
  assign N47 = data_i[28] | N46;
  assign N48 = data_i[27] | N47;
  assign N49 = N44 | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_42_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[27];
  assign N45 = data_i[30] | N42;
  assign N46 = N43 | N45;
  assign N47 = data_i[28] | N46;
  assign N48 = N44 | N47;
  assign N49 = data_i[26] | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_43_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[27];
  assign N45 = ~data_i[26];
  assign N46 = data_i[30] | N42;
  assign N47 = N43 | N46;
  assign N48 = data_i[28] | N47;
  assign N49 = N44 | N48;
  assign N50 = N45 | N49;
  assign N51 = ~N50;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N51;
  assign \genblk1.for_switch  = N52 & data_i[25];
  assign N52 = v_i & N51;
  assign v_o = N53 & N54;
  assign N53 = node_en_r_o & \genblk1.for_this_node ;
  assign N54 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N59;
  assign N59 = N57 | N58;
  assign N57 = N56 | \genblk1.for_switch ;
  assign N56 = N55 | ready_i;
  assign N55 = ~node_en_r_o;
  assign N58 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N54;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N54;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_44_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[28];
  assign N45 = data_i[30] | N42;
  assign N46 = N43 | N45;
  assign N47 = N44 | N46;
  assign N48 = data_i[27] | N47;
  assign N49 = data_i[26] | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_45_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[28];
  assign N45 = ~data_i[26];
  assign N46 = data_i[30] | N42;
  assign N47 = N43 | N46;
  assign N48 = N44 | N47;
  assign N49 = data_i[27] | N48;
  assign N50 = N45 | N49;
  assign N51 = ~N50;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N51;
  assign \genblk1.for_switch  = N52 & data_i[25];
  assign N52 = v_i & N51;
  assign v_o = N53 & N54;
  assign N53 = node_en_r_o & \genblk1.for_this_node ;
  assign N54 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N59;
  assign N59 = N57 | N58;
  assign N57 = N56 | \genblk1.for_switch ;
  assign N56 = N55 | ready_i;
  assign N55 = ~node_en_r_o;
  assign N58 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N54;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N54;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_46_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[28];
  assign N45 = ~data_i[27];
  assign N46 = data_i[30] | N42;
  assign N47 = N43 | N46;
  assign N48 = N44 | N47;
  assign N49 = N45 | N48;
  assign N50 = data_i[26] | N49;
  assign N51 = ~N50;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N51;
  assign \genblk1.for_switch  = N52 & data_i[25];
  assign N52 = v_i & N51;
  assign v_o = N53 & N54;
  assign N53 = node_en_r_o & \genblk1.for_this_node ;
  assign N54 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N59;
  assign N59 = N57 | N58;
  assign N57 = N56 | \genblk1.for_switch ;
  assign N56 = N55 | ready_i;
  assign N55 = ~node_en_r_o;
  assign N58 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N54;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N54;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_47_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[29];
  assign N44 = ~data_i[28];
  assign N45 = ~data_i[27];
  assign N46 = ~data_i[26];
  assign N47 = data_i[30] | N42;
  assign N48 = N43 | N47;
  assign N49 = N44 | N48;
  assign N50 = N45 | N49;
  assign N51 = N46 | N50;
  assign N52 = ~N51;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N52;
  assign \genblk1.for_switch  = N53 & data_i[25];
  assign N53 = v_i & N52;
  assign v_o = N54 & N55;
  assign N54 = node_en_r_o & \genblk1.for_this_node ;
  assign N55 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N60;
  assign N60 = N58 | N59;
  assign N58 = N57 | \genblk1.for_switch ;
  assign N57 = N56 | ready_i;
  assign N56 = ~node_en_r_o;
  assign N59 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N55;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N55;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_48_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[30];
  assign N44 = N43 | N42;
  assign N45 = data_i[29] | N44;
  assign N46 = data_i[28] | N45;
  assign N47 = data_i[27] | N46;
  assign N48 = data_i[26] | N47;
  assign N49 = ~N48;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N49;
  assign \genblk1.for_switch  = N50 & data_i[25];
  assign N50 = v_i & N49;
  assign v_o = N51 & N52;
  assign N51 = node_en_r_o & \genblk1.for_this_node ;
  assign N52 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N57;
  assign N57 = N55 | N56;
  assign N55 = N54 | \genblk1.for_switch ;
  assign N54 = N53 | ready_i;
  assign N53 = ~node_en_r_o;
  assign N56 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N52;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N52;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb_murn_gateway_32_49_6_0_0
(
  clk_i,
  reset_i,
  v_i,
  data_i,
  ready_o,
  v_o,
  ready_i,
  node_en_r_o,
  node_reset_r_o
);

  input [31:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,N2,N3,\genblk1.for_this_node ,
  \genblk1.for_switch ,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N4 = data_i[20] | N18;
  assign N5 = N4 | data_i[18];
  assign N6 = N22 | N5;
  assign N8 = data_i[20] | data_i[19];
  assign N9 = N8 | N12;
  assign N10 = N22 | N9;
  assign N13 = N17 | data_i[19];
  assign N14 = N13 | N12;
  assign N15 = N22 | N14;
  assign N19 = data_i[24] | data_i[23];
  assign N20 = data_i[22] | data_i[21];
  assign N21 = N17 | N18;
  assign N22 = N19 | N20;
  assign N23 = N21 | data_i[18];
  assign N24 = N22 | N23;
  assign N42 = ~data_i[31];
  assign N43 = ~data_i[30];
  assign N44 = ~data_i[26];
  assign N45 = N43 | N42;
  assign N46 = data_i[29] | N45;
  assign N47 = data_i[28] | N46;
  assign N48 = data_i[27] | N47;
  assign N49 = N44 | N48;
  assign N50 = ~N49;
  assign N30 = (N0)? 1'b1 : 
               (N1)? 1'b0 : 
               (N29)? node_en_r_o : 1'b0;
  assign N0 = N7;
  assign N1 = N11;
  assign N31 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N29)? node_reset_r_o : 1'b0;
  assign N2 = N16;
  assign N3 = N25;
  assign \genblk1.for_this_node  = v_i & N50;
  assign \genblk1.for_switch  = N51 & data_i[25];
  assign N51 = v_i & N50;
  assign v_o = N52 & N53;
  assign N52 = node_en_r_o & \genblk1.for_this_node ;
  assign N53 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N58;
  assign N58 = N56 | N57;
  assign N56 = N55 | \genblk1.for_switch ;
  assign N55 = N54 | ready_i;
  assign N54 = ~node_en_r_o;
  assign N57 = ~\genblk1.for_this_node ;
  assign N7 = ~N6;
  assign N11 = ~N10;
  assign N12 = ~data_i[18];
  assign N16 = ~N15;
  assign N17 = ~data_i[20];
  assign N18 = ~data_i[19];
  assign N25 = ~N24;
  assign N26 = N11 | N7;
  assign N27 = N16 | N26;
  assign N28 = N25 | N27;
  assign N29 = ~N28;
  assign N32 = N16 & \genblk1.for_switch ;
  assign N33 = N25 & \genblk1.for_switch ;
  assign N34 = N32 | N33;
  assign N35 = N34 | N53;
  assign N36 = ~N35;
  assign N37 = N7 & \genblk1.for_switch ;
  assign N38 = N11 & \genblk1.for_switch ;
  assign N39 = N37 | N38;
  assign N40 = N39 | N53;
  assign N41 = ~N40;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N36) begin
      node_en_r_o_sv2v_reg <= N30;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N41) begin
      node_reset_r_o_sv2v_reg <= N31;
    end 
  end


endmodule



module bsg_fsb
(
  clk_i,
  reset_i,
  asm_v_i,
  asm_data_i,
  asm_yumi_o,
  asm_v_o,
  asm_data_o,
  asm_ready_i,
  node_v_o,
  node_data_o,
  node_ready_i,
  node_en_r_o,
  node_reset_r_o,
  node_v_i,
  node_data_i,
  node_yumi_o
);

  input [31:0] asm_data_i;
  output [31:0] asm_data_o;
  output [49:0] node_v_o;
  output [1599:0] node_data_o;
  input [49:0] node_ready_i;
  output [49:0] node_en_r_o;
  output [49:0] node_reset_r_o;
  input [49:0] node_v_i;
  input [1599:0] node_data_i;
  output [49:0] node_yumi_o;
  input clk_i;
  input reset_i;
  input asm_v_i;
  input asm_ready_i;
  output asm_yumi_o;
  output asm_v_o;
  wire [31:0] asm_data_o;
  wire [49:0] node_v_o,node_en_r_o,node_reset_r_o,node_yumi_o,in_hop_v,out_hop_ready;
  wire [1599:0] node_data_o,in_hop_data;
  wire asm_yumi_o,asm_v_o,out_hop_data_48__31_,out_hop_data_48__30_,
  out_hop_data_48__29_,out_hop_data_48__28_,out_hop_data_48__27_,out_hop_data_48__26_,
  out_hop_data_48__25_,out_hop_data_48__24_,out_hop_data_48__23_,out_hop_data_48__22_,
  out_hop_data_48__21_,out_hop_data_48__20_,out_hop_data_48__19_,out_hop_data_48__18_,
  out_hop_data_48__17_,out_hop_data_48__16_,out_hop_data_48__15_,out_hop_data_48__14_,
  out_hop_data_48__13_,out_hop_data_48__12_,out_hop_data_48__11_,
  out_hop_data_48__10_,out_hop_data_48__9_,out_hop_data_48__8_,out_hop_data_48__7_,
  out_hop_data_48__6_,out_hop_data_48__5_,out_hop_data_48__4_,out_hop_data_48__3_,
  out_hop_data_48__2_,out_hop_data_48__1_,out_hop_data_48__0_,out_hop_data_47__31_,
  out_hop_data_47__30_,out_hop_data_47__29_,out_hop_data_47__28_,out_hop_data_47__27_,
  out_hop_data_47__26_,out_hop_data_47__25_,out_hop_data_47__24_,out_hop_data_47__23_,
  out_hop_data_47__22_,out_hop_data_47__21_,out_hop_data_47__20_,out_hop_data_47__19_,
  out_hop_data_47__18_,out_hop_data_47__17_,out_hop_data_47__16_,out_hop_data_47__15_,
  out_hop_data_47__14_,out_hop_data_47__13_,out_hop_data_47__12_,
  out_hop_data_47__11_,out_hop_data_47__10_,out_hop_data_47__9_,out_hop_data_47__8_,
  out_hop_data_47__7_,out_hop_data_47__6_,out_hop_data_47__5_,out_hop_data_47__4_,
  out_hop_data_47__3_,out_hop_data_47__2_,out_hop_data_47__1_,out_hop_data_47__0_,
  out_hop_data_46__31_,out_hop_data_46__30_,out_hop_data_46__29_,out_hop_data_46__28_,
  out_hop_data_46__27_,out_hop_data_46__26_,out_hop_data_46__25_,out_hop_data_46__24_,
  out_hop_data_46__23_,out_hop_data_46__22_,out_hop_data_46__21_,out_hop_data_46__20_,
  out_hop_data_46__19_,out_hop_data_46__18_,out_hop_data_46__17_,out_hop_data_46__16_,
  out_hop_data_46__15_,out_hop_data_46__14_,out_hop_data_46__13_,
  out_hop_data_46__12_,out_hop_data_46__11_,out_hop_data_46__10_,out_hop_data_46__9_,
  out_hop_data_46__8_,out_hop_data_46__7_,out_hop_data_46__6_,out_hop_data_46__5_,
  out_hop_data_46__4_,out_hop_data_46__3_,out_hop_data_46__2_,out_hop_data_46__1_,
  out_hop_data_46__0_,out_hop_data_45__31_,out_hop_data_45__30_,out_hop_data_45__29_,
  out_hop_data_45__28_,out_hop_data_45__27_,out_hop_data_45__26_,out_hop_data_45__25_,
  out_hop_data_45__24_,out_hop_data_45__23_,out_hop_data_45__22_,out_hop_data_45__21_,
  out_hop_data_45__20_,out_hop_data_45__19_,out_hop_data_45__18_,out_hop_data_45__17_,
  out_hop_data_45__16_,out_hop_data_45__15_,out_hop_data_45__14_,
  out_hop_data_45__13_,out_hop_data_45__12_,out_hop_data_45__11_,out_hop_data_45__10_,
  out_hop_data_45__9_,out_hop_data_45__8_,out_hop_data_45__7_,out_hop_data_45__6_,
  out_hop_data_45__5_,out_hop_data_45__4_,out_hop_data_45__3_,out_hop_data_45__2_,
  out_hop_data_45__1_,out_hop_data_45__0_,out_hop_data_44__31_,out_hop_data_44__30_,
  out_hop_data_44__29_,out_hop_data_44__28_,out_hop_data_44__27_,out_hop_data_44__26_,
  out_hop_data_44__25_,out_hop_data_44__24_,out_hop_data_44__23_,out_hop_data_44__22_,
  out_hop_data_44__21_,out_hop_data_44__20_,out_hop_data_44__19_,
  out_hop_data_44__18_,out_hop_data_44__17_,out_hop_data_44__16_,out_hop_data_44__15_,
  out_hop_data_44__14_,out_hop_data_44__13_,out_hop_data_44__12_,out_hop_data_44__11_,
  out_hop_data_44__10_,out_hop_data_44__9_,out_hop_data_44__8_,out_hop_data_44__7_,
  out_hop_data_44__6_,out_hop_data_44__5_,out_hop_data_44__4_,out_hop_data_44__3_,
  out_hop_data_44__2_,out_hop_data_44__1_,out_hop_data_44__0_,out_hop_data_43__31_,
  out_hop_data_43__30_,out_hop_data_43__29_,out_hop_data_43__28_,out_hop_data_43__27_,
  out_hop_data_43__26_,out_hop_data_43__25_,out_hop_data_43__24_,out_hop_data_43__23_,
  out_hop_data_43__22_,out_hop_data_43__21_,out_hop_data_43__20_,
  out_hop_data_43__19_,out_hop_data_43__18_,out_hop_data_43__17_,out_hop_data_43__16_,
  out_hop_data_43__15_,out_hop_data_43__14_,out_hop_data_43__13_,out_hop_data_43__12_,
  out_hop_data_43__11_,out_hop_data_43__10_,out_hop_data_43__9_,out_hop_data_43__8_,
  out_hop_data_43__7_,out_hop_data_43__6_,out_hop_data_43__5_,out_hop_data_43__4_,
  out_hop_data_43__3_,out_hop_data_43__2_,out_hop_data_43__1_,out_hop_data_43__0_,
  out_hop_data_42__31_,out_hop_data_42__30_,out_hop_data_42__29_,out_hop_data_42__28_,
  out_hop_data_42__27_,out_hop_data_42__26_,out_hop_data_42__25_,out_hop_data_42__24_,
  out_hop_data_42__23_,out_hop_data_42__22_,out_hop_data_42__21_,
  out_hop_data_42__20_,out_hop_data_42__19_,out_hop_data_42__18_,out_hop_data_42__17_,
  out_hop_data_42__16_,out_hop_data_42__15_,out_hop_data_42__14_,out_hop_data_42__13_,
  out_hop_data_42__12_,out_hop_data_42__11_,out_hop_data_42__10_,out_hop_data_42__9_,
  out_hop_data_42__8_,out_hop_data_42__7_,out_hop_data_42__6_,out_hop_data_42__5_,
  out_hop_data_42__4_,out_hop_data_42__3_,out_hop_data_42__2_,out_hop_data_42__1_,
  out_hop_data_42__0_,out_hop_data_41__31_,out_hop_data_41__30_,out_hop_data_41__29_,
  out_hop_data_41__28_,out_hop_data_41__27_,out_hop_data_41__26_,out_hop_data_41__25_,
  out_hop_data_41__24_,out_hop_data_41__23_,out_hop_data_41__22_,
  out_hop_data_41__21_,out_hop_data_41__20_,out_hop_data_41__19_,out_hop_data_41__18_,
  out_hop_data_41__17_,out_hop_data_41__16_,out_hop_data_41__15_,out_hop_data_41__14_,
  out_hop_data_41__13_,out_hop_data_41__12_,out_hop_data_41__11_,out_hop_data_41__10_,
  out_hop_data_41__9_,out_hop_data_41__8_,out_hop_data_41__7_,out_hop_data_41__6_,
  out_hop_data_41__5_,out_hop_data_41__4_,out_hop_data_41__3_,out_hop_data_41__2_,
  out_hop_data_41__1_,out_hop_data_41__0_,out_hop_data_40__31_,out_hop_data_40__30_,
  out_hop_data_40__29_,out_hop_data_40__28_,out_hop_data_40__27_,
  out_hop_data_40__26_,out_hop_data_40__25_,out_hop_data_40__24_,out_hop_data_40__23_,
  out_hop_data_40__22_,out_hop_data_40__21_,out_hop_data_40__20_,out_hop_data_40__19_,
  out_hop_data_40__18_,out_hop_data_40__17_,out_hop_data_40__16_,out_hop_data_40__15_,
  out_hop_data_40__14_,out_hop_data_40__13_,out_hop_data_40__12_,out_hop_data_40__11_,
  out_hop_data_40__10_,out_hop_data_40__9_,out_hop_data_40__8_,out_hop_data_40__7_,
  out_hop_data_40__6_,out_hop_data_40__5_,out_hop_data_40__4_,out_hop_data_40__3_,
  out_hop_data_40__2_,out_hop_data_40__1_,out_hop_data_40__0_,out_hop_data_39__31_,
  out_hop_data_39__30_,out_hop_data_39__29_,out_hop_data_39__28_,
  out_hop_data_39__27_,out_hop_data_39__26_,out_hop_data_39__25_,out_hop_data_39__24_,
  out_hop_data_39__23_,out_hop_data_39__22_,out_hop_data_39__21_,out_hop_data_39__20_,
  out_hop_data_39__19_,out_hop_data_39__18_,out_hop_data_39__17_,out_hop_data_39__16_,
  out_hop_data_39__15_,out_hop_data_39__14_,out_hop_data_39__13_,out_hop_data_39__12_,
  out_hop_data_39__11_,out_hop_data_39__10_,out_hop_data_39__9_,out_hop_data_39__8_,
  out_hop_data_39__7_,out_hop_data_39__6_,out_hop_data_39__5_,out_hop_data_39__4_,
  out_hop_data_39__3_,out_hop_data_39__2_,out_hop_data_39__1_,out_hop_data_39__0_,
  out_hop_data_38__31_,out_hop_data_38__30_,out_hop_data_38__29_,
  out_hop_data_38__28_,out_hop_data_38__27_,out_hop_data_38__26_,out_hop_data_38__25_,
  out_hop_data_38__24_,out_hop_data_38__23_,out_hop_data_38__22_,out_hop_data_38__21_,
  out_hop_data_38__20_,out_hop_data_38__19_,out_hop_data_38__18_,out_hop_data_38__17_,
  out_hop_data_38__16_,out_hop_data_38__15_,out_hop_data_38__14_,out_hop_data_38__13_,
  out_hop_data_38__12_,out_hop_data_38__11_,out_hop_data_38__10_,
  out_hop_data_38__9_,out_hop_data_38__8_,out_hop_data_38__7_,out_hop_data_38__6_,
  out_hop_data_38__5_,out_hop_data_38__4_,out_hop_data_38__3_,out_hop_data_38__2_,
  out_hop_data_38__1_,out_hop_data_38__0_,out_hop_data_37__31_,out_hop_data_37__30_,
  out_hop_data_37__29_,out_hop_data_37__28_,out_hop_data_37__27_,out_hop_data_37__26_,
  out_hop_data_37__25_,out_hop_data_37__24_,out_hop_data_37__23_,out_hop_data_37__22_,
  out_hop_data_37__21_,out_hop_data_37__20_,out_hop_data_37__19_,out_hop_data_37__18_,
  out_hop_data_37__17_,out_hop_data_37__16_,out_hop_data_37__15_,out_hop_data_37__14_,
  out_hop_data_37__13_,out_hop_data_37__12_,out_hop_data_37__11_,
  out_hop_data_37__10_,out_hop_data_37__9_,out_hop_data_37__8_,out_hop_data_37__7_,
  out_hop_data_37__6_,out_hop_data_37__5_,out_hop_data_37__4_,out_hop_data_37__3_,
  out_hop_data_37__2_,out_hop_data_37__1_,out_hop_data_37__0_,out_hop_data_36__31_,
  out_hop_data_36__30_,out_hop_data_36__29_,out_hop_data_36__28_,out_hop_data_36__27_,
  out_hop_data_36__26_,out_hop_data_36__25_,out_hop_data_36__24_,out_hop_data_36__23_,
  out_hop_data_36__22_,out_hop_data_36__21_,out_hop_data_36__20_,out_hop_data_36__19_,
  out_hop_data_36__18_,out_hop_data_36__17_,out_hop_data_36__16_,out_hop_data_36__15_,
  out_hop_data_36__14_,out_hop_data_36__13_,out_hop_data_36__12_,
  out_hop_data_36__11_,out_hop_data_36__10_,out_hop_data_36__9_,out_hop_data_36__8_,
  out_hop_data_36__7_,out_hop_data_36__6_,out_hop_data_36__5_,out_hop_data_36__4_,
  out_hop_data_36__3_,out_hop_data_36__2_,out_hop_data_36__1_,out_hop_data_36__0_,
  out_hop_data_35__31_,out_hop_data_35__30_,out_hop_data_35__29_,out_hop_data_35__28_,
  out_hop_data_35__27_,out_hop_data_35__26_,out_hop_data_35__25_,out_hop_data_35__24_,
  out_hop_data_35__23_,out_hop_data_35__22_,out_hop_data_35__21_,out_hop_data_35__20_,
  out_hop_data_35__19_,out_hop_data_35__18_,out_hop_data_35__17_,
  out_hop_data_35__16_,out_hop_data_35__15_,out_hop_data_35__14_,out_hop_data_35__13_,
  out_hop_data_35__12_,out_hop_data_35__11_,out_hop_data_35__10_,out_hop_data_35__9_,
  out_hop_data_35__8_,out_hop_data_35__7_,out_hop_data_35__6_,out_hop_data_35__5_,
  out_hop_data_35__4_,out_hop_data_35__3_,out_hop_data_35__2_,out_hop_data_35__1_,
  out_hop_data_35__0_,out_hop_data_34__31_,out_hop_data_34__30_,out_hop_data_34__29_,
  out_hop_data_34__28_,out_hop_data_34__27_,out_hop_data_34__26_,out_hop_data_34__25_,
  out_hop_data_34__24_,out_hop_data_34__23_,out_hop_data_34__22_,out_hop_data_34__21_,
  out_hop_data_34__20_,out_hop_data_34__19_,out_hop_data_34__18_,
  out_hop_data_34__17_,out_hop_data_34__16_,out_hop_data_34__15_,out_hop_data_34__14_,
  out_hop_data_34__13_,out_hop_data_34__12_,out_hop_data_34__11_,out_hop_data_34__10_,
  out_hop_data_34__9_,out_hop_data_34__8_,out_hop_data_34__7_,out_hop_data_34__6_,
  out_hop_data_34__5_,out_hop_data_34__4_,out_hop_data_34__3_,out_hop_data_34__2_,
  out_hop_data_34__1_,out_hop_data_34__0_,to_asm_ready,\fsb_node_0_.node_ready_int ,
  \fsb_node_0_.node_v_int ,_3_net__1_,out_hop_data_1__31_,out_hop_data_1__30_,
  out_hop_data_1__29_,out_hop_data_1__28_,out_hop_data_1__27_,out_hop_data_1__26_,
  out_hop_data_1__25_,out_hop_data_1__24_,out_hop_data_1__23_,out_hop_data_1__22_,
  out_hop_data_1__21_,out_hop_data_1__20_,out_hop_data_1__19_,out_hop_data_1__18_,
  out_hop_data_1__17_,out_hop_data_1__16_,out_hop_data_1__15_,out_hop_data_1__14_,
  out_hop_data_1__13_,out_hop_data_1__12_,out_hop_data_1__11_,out_hop_data_1__10_,
  out_hop_data_1__9_,out_hop_data_1__8_,out_hop_data_1__7_,out_hop_data_1__6_,
  out_hop_data_1__5_,out_hop_data_1__4_,out_hop_data_1__3_,out_hop_data_1__2_,out_hop_data_1__1_,
  out_hop_data_1__0_,out_hop_data_0__31_,out_hop_data_0__30_,out_hop_data_0__29_,
  out_hop_data_0__28_,out_hop_data_0__27_,out_hop_data_0__26_,out_hop_data_0__25_,
  out_hop_data_0__24_,out_hop_data_0__23_,out_hop_data_0__22_,out_hop_data_0__21_,
  out_hop_data_0__20_,out_hop_data_0__19_,out_hop_data_0__18_,out_hop_data_0__17_,
  out_hop_data_0__16_,out_hop_data_0__15_,out_hop_data_0__14_,out_hop_data_0__13_,
  out_hop_data_0__12_,out_hop_data_0__11_,out_hop_data_0__10_,out_hop_data_0__9_,
  out_hop_data_0__8_,out_hop_data_0__7_,out_hop_data_0__6_,out_hop_data_0__5_,
  out_hop_data_0__4_,out_hop_data_0__3_,out_hop_data_0__2_,out_hop_data_0__1_,
  out_hop_data_0__0_,\fsb_node_1_.node_ready_int ,\fsb_node_1_.node_v_int ,_8_net__1_,
  \fsb_node_2_.node_ready_int ,\fsb_node_2_.node_v_int ,_13_net__1_,out_hop_data_17__31_,
  out_hop_data_17__30_,out_hop_data_17__29_,out_hop_data_17__28_,
  out_hop_data_17__27_,out_hop_data_17__26_,out_hop_data_17__25_,out_hop_data_17__24_,
  out_hop_data_17__23_,out_hop_data_17__22_,out_hop_data_17__21_,out_hop_data_17__20_,
  out_hop_data_17__19_,out_hop_data_17__18_,out_hop_data_17__17_,out_hop_data_17__16_,
  out_hop_data_17__15_,out_hop_data_17__14_,out_hop_data_17__13_,out_hop_data_17__12_,
  out_hop_data_17__11_,out_hop_data_17__10_,out_hop_data_17__9_,out_hop_data_17__8_,
  out_hop_data_17__7_,out_hop_data_17__6_,out_hop_data_17__5_,out_hop_data_17__4_,
  out_hop_data_17__3_,out_hop_data_17__2_,out_hop_data_17__1_,out_hop_data_17__0_,
  out_hop_data_16__31_,out_hop_data_16__30_,out_hop_data_16__29_,
  out_hop_data_16__28_,out_hop_data_16__27_,out_hop_data_16__26_,out_hop_data_16__25_,
  out_hop_data_16__24_,out_hop_data_16__23_,out_hop_data_16__22_,out_hop_data_16__21_,
  out_hop_data_16__20_,out_hop_data_16__19_,out_hop_data_16__18_,out_hop_data_16__17_,
  out_hop_data_16__16_,out_hop_data_16__15_,out_hop_data_16__14_,out_hop_data_16__13_,
  out_hop_data_16__12_,out_hop_data_16__11_,out_hop_data_16__10_,
  out_hop_data_16__9_,out_hop_data_16__8_,out_hop_data_16__7_,out_hop_data_16__6_,
  out_hop_data_16__5_,out_hop_data_16__4_,out_hop_data_16__3_,out_hop_data_16__2_,
  out_hop_data_16__1_,out_hop_data_16__0_,out_hop_data_15__31_,out_hop_data_15__30_,
  out_hop_data_15__29_,out_hop_data_15__28_,out_hop_data_15__27_,out_hop_data_15__26_,
  out_hop_data_15__25_,out_hop_data_15__24_,out_hop_data_15__23_,out_hop_data_15__22_,
  out_hop_data_15__21_,out_hop_data_15__20_,out_hop_data_15__19_,out_hop_data_15__18_,
  out_hop_data_15__17_,out_hop_data_15__16_,out_hop_data_15__15_,out_hop_data_15__14_,
  out_hop_data_15__13_,out_hop_data_15__12_,out_hop_data_15__11_,
  out_hop_data_15__10_,out_hop_data_15__9_,out_hop_data_15__8_,out_hop_data_15__7_,
  out_hop_data_15__6_,out_hop_data_15__5_,out_hop_data_15__4_,out_hop_data_15__3_,
  out_hop_data_15__2_,out_hop_data_15__1_,out_hop_data_15__0_,out_hop_data_14__31_,
  out_hop_data_14__30_,out_hop_data_14__29_,out_hop_data_14__28_,out_hop_data_14__27_,
  out_hop_data_14__26_,out_hop_data_14__25_,out_hop_data_14__24_,out_hop_data_14__23_,
  out_hop_data_14__22_,out_hop_data_14__21_,out_hop_data_14__20_,out_hop_data_14__19_,
  out_hop_data_14__18_,out_hop_data_14__17_,out_hop_data_14__16_,
  out_hop_data_14__15_,out_hop_data_14__14_,out_hop_data_14__13_,out_hop_data_14__12_,
  out_hop_data_14__11_,out_hop_data_14__10_,out_hop_data_14__9_,out_hop_data_14__8_,
  out_hop_data_14__7_,out_hop_data_14__6_,out_hop_data_14__5_,out_hop_data_14__4_,
  out_hop_data_14__3_,out_hop_data_14__2_,out_hop_data_14__1_,out_hop_data_14__0_,
  out_hop_data_13__31_,out_hop_data_13__30_,out_hop_data_13__29_,out_hop_data_13__28_,
  out_hop_data_13__27_,out_hop_data_13__26_,out_hop_data_13__25_,out_hop_data_13__24_,
  out_hop_data_13__23_,out_hop_data_13__22_,out_hop_data_13__21_,out_hop_data_13__20_,
  out_hop_data_13__19_,out_hop_data_13__18_,out_hop_data_13__17_,
  out_hop_data_13__16_,out_hop_data_13__15_,out_hop_data_13__14_,out_hop_data_13__13_,
  out_hop_data_13__12_,out_hop_data_13__11_,out_hop_data_13__10_,out_hop_data_13__9_,
  out_hop_data_13__8_,out_hop_data_13__7_,out_hop_data_13__6_,out_hop_data_13__5_,
  out_hop_data_13__4_,out_hop_data_13__3_,out_hop_data_13__2_,out_hop_data_13__1_,
  out_hop_data_13__0_,out_hop_data_12__31_,out_hop_data_12__30_,out_hop_data_12__29_,
  out_hop_data_12__28_,out_hop_data_12__27_,out_hop_data_12__26_,out_hop_data_12__25_,
  out_hop_data_12__24_,out_hop_data_12__23_,out_hop_data_12__22_,out_hop_data_12__21_,
  out_hop_data_12__20_,out_hop_data_12__19_,out_hop_data_12__18_,
  out_hop_data_12__17_,out_hop_data_12__16_,out_hop_data_12__15_,out_hop_data_12__14_,
  out_hop_data_12__13_,out_hop_data_12__12_,out_hop_data_12__11_,out_hop_data_12__10_,
  out_hop_data_12__9_,out_hop_data_12__8_,out_hop_data_12__7_,out_hop_data_12__6_,
  out_hop_data_12__5_,out_hop_data_12__4_,out_hop_data_12__3_,out_hop_data_12__2_,
  out_hop_data_12__1_,out_hop_data_12__0_,out_hop_data_11__31_,out_hop_data_11__30_,
  out_hop_data_11__29_,out_hop_data_11__28_,out_hop_data_11__27_,out_hop_data_11__26_,
  out_hop_data_11__25_,out_hop_data_11__24_,out_hop_data_11__23_,out_hop_data_11__22_,
  out_hop_data_11__21_,out_hop_data_11__20_,out_hop_data_11__19_,
  out_hop_data_11__18_,out_hop_data_11__17_,out_hop_data_11__16_,out_hop_data_11__15_,
  out_hop_data_11__14_,out_hop_data_11__13_,out_hop_data_11__12_,out_hop_data_11__11_,
  out_hop_data_11__10_,out_hop_data_11__9_,out_hop_data_11__8_,out_hop_data_11__7_,
  out_hop_data_11__6_,out_hop_data_11__5_,out_hop_data_11__4_,out_hop_data_11__3_,
  out_hop_data_11__2_,out_hop_data_11__1_,out_hop_data_11__0_,out_hop_data_10__31_,
  out_hop_data_10__30_,out_hop_data_10__29_,out_hop_data_10__28_,out_hop_data_10__27_,
  out_hop_data_10__26_,out_hop_data_10__25_,out_hop_data_10__24_,
  out_hop_data_10__23_,out_hop_data_10__22_,out_hop_data_10__21_,out_hop_data_10__20_,
  out_hop_data_10__19_,out_hop_data_10__18_,out_hop_data_10__17_,out_hop_data_10__16_,
  out_hop_data_10__15_,out_hop_data_10__14_,out_hop_data_10__13_,out_hop_data_10__12_,
  out_hop_data_10__11_,out_hop_data_10__10_,out_hop_data_10__9_,out_hop_data_10__8_,
  out_hop_data_10__7_,out_hop_data_10__6_,out_hop_data_10__5_,out_hop_data_10__4_,
  out_hop_data_10__3_,out_hop_data_10__2_,out_hop_data_10__1_,out_hop_data_10__0_,
  out_hop_data_9__31_,out_hop_data_9__30_,out_hop_data_9__29_,out_hop_data_9__28_,
  out_hop_data_9__27_,out_hop_data_9__26_,out_hop_data_9__25_,out_hop_data_9__24_,
  out_hop_data_9__23_,out_hop_data_9__22_,out_hop_data_9__21_,out_hop_data_9__20_,
  out_hop_data_9__19_,out_hop_data_9__18_,out_hop_data_9__17_,out_hop_data_9__16_,
  out_hop_data_9__15_,out_hop_data_9__14_,out_hop_data_9__13_,out_hop_data_9__12_,
  out_hop_data_9__11_,out_hop_data_9__10_,out_hop_data_9__9_,out_hop_data_9__8_,
  out_hop_data_9__7_,out_hop_data_9__6_,out_hop_data_9__5_,out_hop_data_9__4_,
  out_hop_data_9__3_,out_hop_data_9__2_,out_hop_data_9__1_,out_hop_data_9__0_,
  out_hop_data_8__31_,out_hop_data_8__30_,out_hop_data_8__29_,out_hop_data_8__28_,
  out_hop_data_8__27_,out_hop_data_8__26_,out_hop_data_8__25_,out_hop_data_8__24_,
  out_hop_data_8__23_,out_hop_data_8__22_,out_hop_data_8__21_,out_hop_data_8__20_,
  out_hop_data_8__19_,out_hop_data_8__18_,out_hop_data_8__17_,out_hop_data_8__16_,
  out_hop_data_8__15_,out_hop_data_8__14_,out_hop_data_8__13_,out_hop_data_8__12_,
  out_hop_data_8__11_,out_hop_data_8__10_,out_hop_data_8__9_,out_hop_data_8__8_,
  out_hop_data_8__7_,out_hop_data_8__6_,out_hop_data_8__5_,out_hop_data_8__4_,out_hop_data_8__3_,
  out_hop_data_8__2_,out_hop_data_8__1_,out_hop_data_8__0_,out_hop_data_7__31_,
  out_hop_data_7__30_,out_hop_data_7__29_,out_hop_data_7__28_,out_hop_data_7__27_,
  out_hop_data_7__26_,out_hop_data_7__25_,out_hop_data_7__24_,out_hop_data_7__23_,
  out_hop_data_7__22_,out_hop_data_7__21_,out_hop_data_7__20_,out_hop_data_7__19_,
  out_hop_data_7__18_,out_hop_data_7__17_,out_hop_data_7__16_,out_hop_data_7__15_,
  out_hop_data_7__14_,out_hop_data_7__13_,out_hop_data_7__12_,out_hop_data_7__11_,
  out_hop_data_7__10_,out_hop_data_7__9_,out_hop_data_7__8_,out_hop_data_7__7_,
  out_hop_data_7__6_,out_hop_data_7__5_,out_hop_data_7__4_,out_hop_data_7__3_,
  out_hop_data_7__2_,out_hop_data_7__1_,out_hop_data_7__0_,out_hop_data_6__31_,
  out_hop_data_6__30_,out_hop_data_6__29_,out_hop_data_6__28_,out_hop_data_6__27_,
  out_hop_data_6__26_,out_hop_data_6__25_,out_hop_data_6__24_,out_hop_data_6__23_,
  out_hop_data_6__22_,out_hop_data_6__21_,out_hop_data_6__20_,out_hop_data_6__19_,
  out_hop_data_6__18_,out_hop_data_6__17_,out_hop_data_6__16_,out_hop_data_6__15_,
  out_hop_data_6__14_,out_hop_data_6__13_,out_hop_data_6__12_,out_hop_data_6__11_,
  out_hop_data_6__10_,out_hop_data_6__9_,out_hop_data_6__8_,out_hop_data_6__7_,out_hop_data_6__6_,
  out_hop_data_6__5_,out_hop_data_6__4_,out_hop_data_6__3_,out_hop_data_6__2_,
  out_hop_data_6__1_,out_hop_data_6__0_,out_hop_data_5__31_,out_hop_data_5__30_,
  out_hop_data_5__29_,out_hop_data_5__28_,out_hop_data_5__27_,out_hop_data_5__26_,
  out_hop_data_5__25_,out_hop_data_5__24_,out_hop_data_5__23_,out_hop_data_5__22_,
  out_hop_data_5__21_,out_hop_data_5__20_,out_hop_data_5__19_,out_hop_data_5__18_,
  out_hop_data_5__17_,out_hop_data_5__16_,out_hop_data_5__15_,out_hop_data_5__14_,
  out_hop_data_5__13_,out_hop_data_5__12_,out_hop_data_5__11_,out_hop_data_5__10_,
  out_hop_data_5__9_,out_hop_data_5__8_,out_hop_data_5__7_,out_hop_data_5__6_,
  out_hop_data_5__5_,out_hop_data_5__4_,out_hop_data_5__3_,out_hop_data_5__2_,
  out_hop_data_5__1_,out_hop_data_5__0_,out_hop_data_4__31_,out_hop_data_4__30_,
  out_hop_data_4__29_,out_hop_data_4__28_,out_hop_data_4__27_,out_hop_data_4__26_,
  out_hop_data_4__25_,out_hop_data_4__24_,out_hop_data_4__23_,out_hop_data_4__22_,
  out_hop_data_4__21_,out_hop_data_4__20_,out_hop_data_4__19_,out_hop_data_4__18_,
  out_hop_data_4__17_,out_hop_data_4__16_,out_hop_data_4__15_,out_hop_data_4__14_,
  out_hop_data_4__13_,out_hop_data_4__12_,out_hop_data_4__11_,out_hop_data_4__10_,
  out_hop_data_4__9_,out_hop_data_4__8_,out_hop_data_4__7_,out_hop_data_4__6_,out_hop_data_4__5_,
  out_hop_data_4__4_,out_hop_data_4__3_,out_hop_data_4__2_,out_hop_data_4__1_,
  out_hop_data_4__0_,out_hop_data_3__31_,out_hop_data_3__30_,out_hop_data_3__29_,
  out_hop_data_3__28_,out_hop_data_3__27_,out_hop_data_3__26_,out_hop_data_3__25_,
  out_hop_data_3__24_,out_hop_data_3__23_,out_hop_data_3__22_,out_hop_data_3__21_,
  out_hop_data_3__20_,out_hop_data_3__19_,out_hop_data_3__18_,out_hop_data_3__17_,
  out_hop_data_3__16_,out_hop_data_3__15_,out_hop_data_3__14_,out_hop_data_3__13_,
  out_hop_data_3__12_,out_hop_data_3__11_,out_hop_data_3__10_,out_hop_data_3__9_,
  out_hop_data_3__8_,out_hop_data_3__7_,out_hop_data_3__6_,out_hop_data_3__5_,
  out_hop_data_3__4_,out_hop_data_3__3_,out_hop_data_3__2_,out_hop_data_3__1_,
  out_hop_data_3__0_,out_hop_data_2__31_,out_hop_data_2__30_,out_hop_data_2__29_,
  out_hop_data_2__28_,out_hop_data_2__27_,out_hop_data_2__26_,out_hop_data_2__25_,
  out_hop_data_2__24_,out_hop_data_2__23_,out_hop_data_2__22_,out_hop_data_2__21_,
  out_hop_data_2__20_,out_hop_data_2__19_,out_hop_data_2__18_,out_hop_data_2__17_,
  out_hop_data_2__16_,out_hop_data_2__15_,out_hop_data_2__14_,out_hop_data_2__13_,
  out_hop_data_2__12_,out_hop_data_2__11_,out_hop_data_2__10_,out_hop_data_2__9_,
  out_hop_data_2__8_,out_hop_data_2__7_,out_hop_data_2__6_,out_hop_data_2__5_,out_hop_data_2__4_,
  out_hop_data_2__3_,out_hop_data_2__2_,out_hop_data_2__1_,out_hop_data_2__0_,
  \fsb_node_3_.node_ready_int ,\fsb_node_3_.node_v_int ,_18_net__1_,
  \fsb_node_4_.node_ready_int ,\fsb_node_4_.node_v_int ,_23_net__1_,\fsb_node_5_.node_ready_int ,
  \fsb_node_5_.node_v_int ,_28_net__1_,\fsb_node_6_.node_ready_int ,
  \fsb_node_6_.node_v_int ,_33_net__1_,\fsb_node_7_.node_ready_int ,\fsb_node_7_.node_v_int ,
  _38_net__1_,\fsb_node_8_.node_ready_int ,\fsb_node_8_.node_v_int ,_43_net__1_,
  \fsb_node_9_.node_ready_int ,\fsb_node_9_.node_v_int ,_48_net__1_,
  \fsb_node_10_.node_ready_int ,\fsb_node_10_.node_v_int ,_53_net__1_,\fsb_node_11_.node_ready_int ,
  \fsb_node_11_.node_v_int ,_58_net__1_,\fsb_node_12_.node_ready_int ,
  \fsb_node_12_.node_v_int ,_63_net__1_,\fsb_node_13_.node_ready_int ,\fsb_node_13_.node_v_int ,
  _68_net__1_,\fsb_node_14_.node_ready_int ,\fsb_node_14_.node_v_int ,_73_net__1_,
  \fsb_node_15_.node_ready_int ,\fsb_node_15_.node_v_int ,_78_net__1_,
  \fsb_node_16_.node_ready_int ,\fsb_node_16_.node_v_int ,_83_net__1_,
  \fsb_node_17_.node_ready_int ,\fsb_node_17_.node_v_int ,_88_net__1_,\fsb_node_18_.node_ready_int ,
  \fsb_node_18_.node_v_int ,_93_net__1_,out_hop_data_33__31_,out_hop_data_33__30_,
  out_hop_data_33__29_,out_hop_data_33__28_,out_hop_data_33__27_,out_hop_data_33__26_,
  out_hop_data_33__25_,out_hop_data_33__24_,out_hop_data_33__23_,out_hop_data_33__22_,
  out_hop_data_33__21_,out_hop_data_33__20_,out_hop_data_33__19_,
  out_hop_data_33__18_,out_hop_data_33__17_,out_hop_data_33__16_,out_hop_data_33__15_,
  out_hop_data_33__14_,out_hop_data_33__13_,out_hop_data_33__12_,out_hop_data_33__11_,
  out_hop_data_33__10_,out_hop_data_33__9_,out_hop_data_33__8_,out_hop_data_33__7_,
  out_hop_data_33__6_,out_hop_data_33__5_,out_hop_data_33__4_,out_hop_data_33__3_,
  out_hop_data_33__2_,out_hop_data_33__1_,out_hop_data_33__0_,out_hop_data_32__31_,
  out_hop_data_32__30_,out_hop_data_32__29_,out_hop_data_32__28_,out_hop_data_32__27_,
  out_hop_data_32__26_,out_hop_data_32__25_,out_hop_data_32__24_,out_hop_data_32__23_,
  out_hop_data_32__22_,out_hop_data_32__21_,out_hop_data_32__20_,
  out_hop_data_32__19_,out_hop_data_32__18_,out_hop_data_32__17_,out_hop_data_32__16_,
  out_hop_data_32__15_,out_hop_data_32__14_,out_hop_data_32__13_,out_hop_data_32__12_,
  out_hop_data_32__11_,out_hop_data_32__10_,out_hop_data_32__9_,out_hop_data_32__8_,
  out_hop_data_32__7_,out_hop_data_32__6_,out_hop_data_32__5_,out_hop_data_32__4_,
  out_hop_data_32__3_,out_hop_data_32__2_,out_hop_data_32__1_,out_hop_data_32__0_,
  out_hop_data_31__31_,out_hop_data_31__30_,out_hop_data_31__29_,out_hop_data_31__28_,
  out_hop_data_31__27_,out_hop_data_31__26_,out_hop_data_31__25_,out_hop_data_31__24_,
  out_hop_data_31__23_,out_hop_data_31__22_,out_hop_data_31__21_,
  out_hop_data_31__20_,out_hop_data_31__19_,out_hop_data_31__18_,out_hop_data_31__17_,
  out_hop_data_31__16_,out_hop_data_31__15_,out_hop_data_31__14_,out_hop_data_31__13_,
  out_hop_data_31__12_,out_hop_data_31__11_,out_hop_data_31__10_,out_hop_data_31__9_,
  out_hop_data_31__8_,out_hop_data_31__7_,out_hop_data_31__6_,out_hop_data_31__5_,
  out_hop_data_31__4_,out_hop_data_31__3_,out_hop_data_31__2_,out_hop_data_31__1_,
  out_hop_data_31__0_,out_hop_data_30__31_,out_hop_data_30__30_,out_hop_data_30__29_,
  out_hop_data_30__28_,out_hop_data_30__27_,out_hop_data_30__26_,
  out_hop_data_30__25_,out_hop_data_30__24_,out_hop_data_30__23_,out_hop_data_30__22_,
  out_hop_data_30__21_,out_hop_data_30__20_,out_hop_data_30__19_,out_hop_data_30__18_,
  out_hop_data_30__17_,out_hop_data_30__16_,out_hop_data_30__15_,out_hop_data_30__14_,
  out_hop_data_30__13_,out_hop_data_30__12_,out_hop_data_30__11_,out_hop_data_30__10_,
  out_hop_data_30__9_,out_hop_data_30__8_,out_hop_data_30__7_,out_hop_data_30__6_,
  out_hop_data_30__5_,out_hop_data_30__4_,out_hop_data_30__3_,out_hop_data_30__2_,
  out_hop_data_30__1_,out_hop_data_30__0_,out_hop_data_29__31_,out_hop_data_29__30_,
  out_hop_data_29__29_,out_hop_data_29__28_,out_hop_data_29__27_,
  out_hop_data_29__26_,out_hop_data_29__25_,out_hop_data_29__24_,out_hop_data_29__23_,
  out_hop_data_29__22_,out_hop_data_29__21_,out_hop_data_29__20_,out_hop_data_29__19_,
  out_hop_data_29__18_,out_hop_data_29__17_,out_hop_data_29__16_,out_hop_data_29__15_,
  out_hop_data_29__14_,out_hop_data_29__13_,out_hop_data_29__12_,out_hop_data_29__11_,
  out_hop_data_29__10_,out_hop_data_29__9_,out_hop_data_29__8_,out_hop_data_29__7_,
  out_hop_data_29__6_,out_hop_data_29__5_,out_hop_data_29__4_,out_hop_data_29__3_,
  out_hop_data_29__2_,out_hop_data_29__1_,out_hop_data_29__0_,out_hop_data_28__31_,
  out_hop_data_28__30_,out_hop_data_28__29_,out_hop_data_28__28_,
  out_hop_data_28__27_,out_hop_data_28__26_,out_hop_data_28__25_,out_hop_data_28__24_,
  out_hop_data_28__23_,out_hop_data_28__22_,out_hop_data_28__21_,out_hop_data_28__20_,
  out_hop_data_28__19_,out_hop_data_28__18_,out_hop_data_28__17_,out_hop_data_28__16_,
  out_hop_data_28__15_,out_hop_data_28__14_,out_hop_data_28__13_,out_hop_data_28__12_,
  out_hop_data_28__11_,out_hop_data_28__10_,out_hop_data_28__9_,out_hop_data_28__8_,
  out_hop_data_28__7_,out_hop_data_28__6_,out_hop_data_28__5_,out_hop_data_28__4_,
  out_hop_data_28__3_,out_hop_data_28__2_,out_hop_data_28__1_,out_hop_data_28__0_,
  out_hop_data_27__31_,out_hop_data_27__30_,out_hop_data_27__29_,
  out_hop_data_27__28_,out_hop_data_27__27_,out_hop_data_27__26_,out_hop_data_27__25_,
  out_hop_data_27__24_,out_hop_data_27__23_,out_hop_data_27__22_,out_hop_data_27__21_,
  out_hop_data_27__20_,out_hop_data_27__19_,out_hop_data_27__18_,out_hop_data_27__17_,
  out_hop_data_27__16_,out_hop_data_27__15_,out_hop_data_27__14_,out_hop_data_27__13_,
  out_hop_data_27__12_,out_hop_data_27__11_,out_hop_data_27__10_,
  out_hop_data_27__9_,out_hop_data_27__8_,out_hop_data_27__7_,out_hop_data_27__6_,
  out_hop_data_27__5_,out_hop_data_27__4_,out_hop_data_27__3_,out_hop_data_27__2_,
  out_hop_data_27__1_,out_hop_data_27__0_,out_hop_data_26__31_,out_hop_data_26__30_,
  out_hop_data_26__29_,out_hop_data_26__28_,out_hop_data_26__27_,out_hop_data_26__26_,
  out_hop_data_26__25_,out_hop_data_26__24_,out_hop_data_26__23_,out_hop_data_26__22_,
  out_hop_data_26__21_,out_hop_data_26__20_,out_hop_data_26__19_,out_hop_data_26__18_,
  out_hop_data_26__17_,out_hop_data_26__16_,out_hop_data_26__15_,out_hop_data_26__14_,
  out_hop_data_26__13_,out_hop_data_26__12_,out_hop_data_26__11_,
  out_hop_data_26__10_,out_hop_data_26__9_,out_hop_data_26__8_,out_hop_data_26__7_,
  out_hop_data_26__6_,out_hop_data_26__5_,out_hop_data_26__4_,out_hop_data_26__3_,
  out_hop_data_26__2_,out_hop_data_26__1_,out_hop_data_26__0_,out_hop_data_25__31_,
  out_hop_data_25__30_,out_hop_data_25__29_,out_hop_data_25__28_,out_hop_data_25__27_,
  out_hop_data_25__26_,out_hop_data_25__25_,out_hop_data_25__24_,out_hop_data_25__23_,
  out_hop_data_25__22_,out_hop_data_25__21_,out_hop_data_25__20_,out_hop_data_25__19_,
  out_hop_data_25__18_,out_hop_data_25__17_,out_hop_data_25__16_,
  out_hop_data_25__15_,out_hop_data_25__14_,out_hop_data_25__13_,out_hop_data_25__12_,
  out_hop_data_25__11_,out_hop_data_25__10_,out_hop_data_25__9_,out_hop_data_25__8_,
  out_hop_data_25__7_,out_hop_data_25__6_,out_hop_data_25__5_,out_hop_data_25__4_,
  out_hop_data_25__3_,out_hop_data_25__2_,out_hop_data_25__1_,out_hop_data_25__0_,
  out_hop_data_24__31_,out_hop_data_24__30_,out_hop_data_24__29_,out_hop_data_24__28_,
  out_hop_data_24__27_,out_hop_data_24__26_,out_hop_data_24__25_,out_hop_data_24__24_,
  out_hop_data_24__23_,out_hop_data_24__22_,out_hop_data_24__21_,out_hop_data_24__20_,
  out_hop_data_24__19_,out_hop_data_24__18_,out_hop_data_24__17_,
  out_hop_data_24__16_,out_hop_data_24__15_,out_hop_data_24__14_,out_hop_data_24__13_,
  out_hop_data_24__12_,out_hop_data_24__11_,out_hop_data_24__10_,out_hop_data_24__9_,
  out_hop_data_24__8_,out_hop_data_24__7_,out_hop_data_24__6_,out_hop_data_24__5_,
  out_hop_data_24__4_,out_hop_data_24__3_,out_hop_data_24__2_,out_hop_data_24__1_,
  out_hop_data_24__0_,out_hop_data_23__31_,out_hop_data_23__30_,out_hop_data_23__29_,
  out_hop_data_23__28_,out_hop_data_23__27_,out_hop_data_23__26_,out_hop_data_23__25_,
  out_hop_data_23__24_,out_hop_data_23__23_,out_hop_data_23__22_,out_hop_data_23__21_,
  out_hop_data_23__20_,out_hop_data_23__19_,out_hop_data_23__18_,
  out_hop_data_23__17_,out_hop_data_23__16_,out_hop_data_23__15_,out_hop_data_23__14_,
  out_hop_data_23__13_,out_hop_data_23__12_,out_hop_data_23__11_,out_hop_data_23__10_,
  out_hop_data_23__9_,out_hop_data_23__8_,out_hop_data_23__7_,out_hop_data_23__6_,
  out_hop_data_23__5_,out_hop_data_23__4_,out_hop_data_23__3_,out_hop_data_23__2_,
  out_hop_data_23__1_,out_hop_data_23__0_,out_hop_data_22__31_,out_hop_data_22__30_,
  out_hop_data_22__29_,out_hop_data_22__28_,out_hop_data_22__27_,out_hop_data_22__26_,
  out_hop_data_22__25_,out_hop_data_22__24_,out_hop_data_22__23_,out_hop_data_22__22_,
  out_hop_data_22__21_,out_hop_data_22__20_,out_hop_data_22__19_,
  out_hop_data_22__18_,out_hop_data_22__17_,out_hop_data_22__16_,out_hop_data_22__15_,
  out_hop_data_22__14_,out_hop_data_22__13_,out_hop_data_22__12_,out_hop_data_22__11_,
  out_hop_data_22__10_,out_hop_data_22__9_,out_hop_data_22__8_,out_hop_data_22__7_,
  out_hop_data_22__6_,out_hop_data_22__5_,out_hop_data_22__4_,out_hop_data_22__3_,
  out_hop_data_22__2_,out_hop_data_22__1_,out_hop_data_22__0_,out_hop_data_21__31_,
  out_hop_data_21__30_,out_hop_data_21__29_,out_hop_data_21__28_,out_hop_data_21__27_,
  out_hop_data_21__26_,out_hop_data_21__25_,out_hop_data_21__24_,
  out_hop_data_21__23_,out_hop_data_21__22_,out_hop_data_21__21_,out_hop_data_21__20_,
  out_hop_data_21__19_,out_hop_data_21__18_,out_hop_data_21__17_,out_hop_data_21__16_,
  out_hop_data_21__15_,out_hop_data_21__14_,out_hop_data_21__13_,out_hop_data_21__12_,
  out_hop_data_21__11_,out_hop_data_21__10_,out_hop_data_21__9_,out_hop_data_21__8_,
  out_hop_data_21__7_,out_hop_data_21__6_,out_hop_data_21__5_,out_hop_data_21__4_,
  out_hop_data_21__3_,out_hop_data_21__2_,out_hop_data_21__1_,out_hop_data_21__0_,
  out_hop_data_20__31_,out_hop_data_20__30_,out_hop_data_20__29_,out_hop_data_20__28_,
  out_hop_data_20__27_,out_hop_data_20__26_,out_hop_data_20__25_,
  out_hop_data_20__24_,out_hop_data_20__23_,out_hop_data_20__22_,out_hop_data_20__21_,
  out_hop_data_20__20_,out_hop_data_20__19_,out_hop_data_20__18_,out_hop_data_20__17_,
  out_hop_data_20__16_,out_hop_data_20__15_,out_hop_data_20__14_,out_hop_data_20__13_,
  out_hop_data_20__12_,out_hop_data_20__11_,out_hop_data_20__10_,out_hop_data_20__9_,
  out_hop_data_20__8_,out_hop_data_20__7_,out_hop_data_20__6_,out_hop_data_20__5_,
  out_hop_data_20__4_,out_hop_data_20__3_,out_hop_data_20__2_,out_hop_data_20__1_,
  out_hop_data_20__0_,out_hop_data_19__31_,out_hop_data_19__30_,out_hop_data_19__29_,
  out_hop_data_19__28_,out_hop_data_19__27_,out_hop_data_19__26_,
  out_hop_data_19__25_,out_hop_data_19__24_,out_hop_data_19__23_,out_hop_data_19__22_,
  out_hop_data_19__21_,out_hop_data_19__20_,out_hop_data_19__19_,out_hop_data_19__18_,
  out_hop_data_19__17_,out_hop_data_19__16_,out_hop_data_19__15_,out_hop_data_19__14_,
  out_hop_data_19__13_,out_hop_data_19__12_,out_hop_data_19__11_,out_hop_data_19__10_,
  out_hop_data_19__9_,out_hop_data_19__8_,out_hop_data_19__7_,out_hop_data_19__6_,
  out_hop_data_19__5_,out_hop_data_19__4_,out_hop_data_19__3_,out_hop_data_19__2_,
  out_hop_data_19__1_,out_hop_data_19__0_,out_hop_data_18__31_,out_hop_data_18__30_,
  out_hop_data_18__29_,out_hop_data_18__28_,out_hop_data_18__27_,
  out_hop_data_18__26_,out_hop_data_18__25_,out_hop_data_18__24_,out_hop_data_18__23_,
  out_hop_data_18__22_,out_hop_data_18__21_,out_hop_data_18__20_,out_hop_data_18__19_,
  out_hop_data_18__18_,out_hop_data_18__17_,out_hop_data_18__16_,out_hop_data_18__15_,
  out_hop_data_18__14_,out_hop_data_18__13_,out_hop_data_18__12_,out_hop_data_18__11_,
  out_hop_data_18__10_,out_hop_data_18__9_,out_hop_data_18__8_,out_hop_data_18__7_,
  out_hop_data_18__6_,out_hop_data_18__5_,out_hop_data_18__4_,out_hop_data_18__3_,
  out_hop_data_18__2_,out_hop_data_18__1_,out_hop_data_18__0_,
  \fsb_node_19_.node_ready_int ,\fsb_node_19_.node_v_int ,_98_net__1_,\fsb_node_20_.node_ready_int ,
  \fsb_node_20_.node_v_int ,_103_net__1_,\fsb_node_21_.node_ready_int ,
  \fsb_node_21_.node_v_int ,_108_net__1_,\fsb_node_22_.node_ready_int ,
  \fsb_node_22_.node_v_int ,_113_net__1_,\fsb_node_23_.node_ready_int ,\fsb_node_23_.node_v_int ,
  _118_net__1_,\fsb_node_24_.node_ready_int ,\fsb_node_24_.node_v_int ,_123_net__1_,
  \fsb_node_25_.node_ready_int ,\fsb_node_25_.node_v_int ,_128_net__1_,
  \fsb_node_26_.node_ready_int ,\fsb_node_26_.node_v_int ,_133_net__1_,
  \fsb_node_27_.node_ready_int ,\fsb_node_27_.node_v_int ,_138_net__1_,\fsb_node_28_.node_ready_int ,
  \fsb_node_28_.node_v_int ,_143_net__1_,\fsb_node_29_.node_ready_int ,
  \fsb_node_29_.node_v_int ,_148_net__1_,\fsb_node_30_.node_ready_int ,\fsb_node_30_.node_v_int ,
  _153_net__1_,\fsb_node_31_.node_ready_int ,\fsb_node_31_.node_v_int ,_158_net__1_,
  \fsb_node_32_.node_ready_int ,\fsb_node_32_.node_v_int ,_163_net__1_,
  \fsb_node_33_.node_ready_int ,\fsb_node_33_.node_v_int ,_168_net__1_,
  \fsb_node_34_.node_ready_int ,\fsb_node_34_.node_v_int ,_173_net__1_,\fsb_node_35_.node_ready_int ,
  \fsb_node_35_.node_v_int ,_178_net__1_,\fsb_node_36_.node_ready_int ,
  \fsb_node_36_.node_v_int ,_183_net__1_,\fsb_node_37_.node_ready_int ,\fsb_node_37_.node_v_int ,
  _188_net__1_,\fsb_node_38_.node_ready_int ,\fsb_node_38_.node_v_int ,_193_net__1_,
  \fsb_node_39_.node_ready_int ,\fsb_node_39_.node_v_int ,_198_net__1_,
  \fsb_node_40_.node_ready_int ,\fsb_node_40_.node_v_int ,_203_net__1_,
  \fsb_node_41_.node_ready_int ,\fsb_node_41_.node_v_int ,_208_net__1_,\fsb_node_42_.node_ready_int ,
  \fsb_node_42_.node_v_int ,_213_net__1_,\fsb_node_43_.node_ready_int ,
  \fsb_node_43_.node_v_int ,_218_net__1_,\fsb_node_44_.node_ready_int ,\fsb_node_44_.node_v_int ,
  _223_net__1_,\fsb_node_45_.node_ready_int ,\fsb_node_45_.node_v_int ,
  _228_net__1_,\fsb_node_46_.node_ready_int ,\fsb_node_46_.node_v_int ,_233_net__1_,
  \fsb_node_47_.node_ready_int ,\fsb_node_47_.node_v_int ,_238_net__1_,
  \fsb_node_48_.node_ready_int ,\fsb_node_48_.node_v_int ,_243_net__1_,\fsb_node_49_.node_ready_int ,
  \fsb_node_49_.node_v_int ,_248_net__1_;
  wire [48:0] out_hop_v,in_hop_ready;

  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_0_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(to_asm_ready),
    .v_i(asm_v_i),
    .data_i(asm_data_i),
    .v_o({ \fsb_node_0_.node_v_int , in_hop_v[0:0] }),
    .data_o({ node_data_o[31:0], in_hop_data[31:0] }),
    .ready_i({ \fsb_node_0_.node_ready_int , in_hop_ready[0:0] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_0_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _3_net__1_, out_hop_v[0:0] }),
    .data_i({ node_data_i[31:0], out_hop_data_0__31_, out_hop_data_0__30_, out_hop_data_0__29_, out_hop_data_0__28_, out_hop_data_0__27_, out_hop_data_0__26_, out_hop_data_0__25_, out_hop_data_0__24_, out_hop_data_0__23_, out_hop_data_0__22_, out_hop_data_0__21_, out_hop_data_0__20_, out_hop_data_0__19_, out_hop_data_0__18_, out_hop_data_0__17_, out_hop_data_0__16_, out_hop_data_0__15_, out_hop_data_0__14_, out_hop_data_0__13_, out_hop_data_0__12_, out_hop_data_0__11_, out_hop_data_0__10_, out_hop_data_0__9_, out_hop_data_0__8_, out_hop_data_0__7_, out_hop_data_0__6_, out_hop_data_0__5_, out_hop_data_0__4_, out_hop_data_0__3_, out_hop_data_0__2_, out_hop_data_0__1_, out_hop_data_0__0_ }),
    .ready_o(out_hop_ready[0]),
    .yumi_o(node_yumi_o[0]),
    .v_o(asm_v_o),
    .data_o(asm_data_o),
    .ready_i(asm_ready_i)
  );


  bsg_fsb_murn_gateway_32_0_6_x_x
  \fsb_node_0_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_0_.node_v_int ),
    .data_i(node_data_o[31:0]),
    .ready_o(\fsb_node_0_.node_ready_int ),
    .v_o(node_v_o[0]),
    .ready_i(node_ready_i[0]),
    .node_en_r_o(node_en_r_o[0]),
    .node_reset_r_o(node_reset_r_o[0])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_1_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[0]),
    .v_i(in_hop_v[0]),
    .data_i(in_hop_data[31:0]),
    .v_o({ \fsb_node_1_.node_v_int , in_hop_v[1:1] }),
    .data_o({ node_data_o[63:32], in_hop_data[63:32] }),
    .ready_i({ \fsb_node_1_.node_ready_int , in_hop_ready[1:1] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_1_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _8_net__1_, out_hop_v[1:1] }),
    .data_i({ node_data_i[63:32], out_hop_data_1__31_, out_hop_data_1__30_, out_hop_data_1__29_, out_hop_data_1__28_, out_hop_data_1__27_, out_hop_data_1__26_, out_hop_data_1__25_, out_hop_data_1__24_, out_hop_data_1__23_, out_hop_data_1__22_, out_hop_data_1__21_, out_hop_data_1__20_, out_hop_data_1__19_, out_hop_data_1__18_, out_hop_data_1__17_, out_hop_data_1__16_, out_hop_data_1__15_, out_hop_data_1__14_, out_hop_data_1__13_, out_hop_data_1__12_, out_hop_data_1__11_, out_hop_data_1__10_, out_hop_data_1__9_, out_hop_data_1__8_, out_hop_data_1__7_, out_hop_data_1__6_, out_hop_data_1__5_, out_hop_data_1__4_, out_hop_data_1__3_, out_hop_data_1__2_, out_hop_data_1__1_, out_hop_data_1__0_ }),
    .ready_o(out_hop_ready[1]),
    .yumi_o(node_yumi_o[1]),
    .v_o(out_hop_v[0]),
    .data_o({ out_hop_data_0__31_, out_hop_data_0__30_, out_hop_data_0__29_, out_hop_data_0__28_, out_hop_data_0__27_, out_hop_data_0__26_, out_hop_data_0__25_, out_hop_data_0__24_, out_hop_data_0__23_, out_hop_data_0__22_, out_hop_data_0__21_, out_hop_data_0__20_, out_hop_data_0__19_, out_hop_data_0__18_, out_hop_data_0__17_, out_hop_data_0__16_, out_hop_data_0__15_, out_hop_data_0__14_, out_hop_data_0__13_, out_hop_data_0__12_, out_hop_data_0__11_, out_hop_data_0__10_, out_hop_data_0__9_, out_hop_data_0__8_, out_hop_data_0__7_, out_hop_data_0__6_, out_hop_data_0__5_, out_hop_data_0__4_, out_hop_data_0__3_, out_hop_data_0__2_, out_hop_data_0__1_, out_hop_data_0__0_ }),
    .ready_i(out_hop_ready[0])
  );


  bsg_fsb_murn_gateway_32_1_6_0_0
  \fsb_node_1_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_1_.node_v_int ),
    .data_i(node_data_o[63:32]),
    .ready_o(\fsb_node_1_.node_ready_int ),
    .v_o(node_v_o[1]),
    .ready_i(node_ready_i[1]),
    .node_en_r_o(node_en_r_o[1]),
    .node_reset_r_o(node_reset_r_o[1])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_2_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[1]),
    .v_i(in_hop_v[1]),
    .data_i(in_hop_data[63:32]),
    .v_o({ \fsb_node_2_.node_v_int , in_hop_v[2:2] }),
    .data_o({ node_data_o[95:64], in_hop_data[95:64] }),
    .ready_i({ \fsb_node_2_.node_ready_int , in_hop_ready[2:2] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_2_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _13_net__1_, out_hop_v[2:2] }),
    .data_i({ node_data_i[95:64], out_hop_data_2__31_, out_hop_data_2__30_, out_hop_data_2__29_, out_hop_data_2__28_, out_hop_data_2__27_, out_hop_data_2__26_, out_hop_data_2__25_, out_hop_data_2__24_, out_hop_data_2__23_, out_hop_data_2__22_, out_hop_data_2__21_, out_hop_data_2__20_, out_hop_data_2__19_, out_hop_data_2__18_, out_hop_data_2__17_, out_hop_data_2__16_, out_hop_data_2__15_, out_hop_data_2__14_, out_hop_data_2__13_, out_hop_data_2__12_, out_hop_data_2__11_, out_hop_data_2__10_, out_hop_data_2__9_, out_hop_data_2__8_, out_hop_data_2__7_, out_hop_data_2__6_, out_hop_data_2__5_, out_hop_data_2__4_, out_hop_data_2__3_, out_hop_data_2__2_, out_hop_data_2__1_, out_hop_data_2__0_ }),
    .ready_o(out_hop_ready[2]),
    .yumi_o(node_yumi_o[2]),
    .v_o(out_hop_v[1]),
    .data_o({ out_hop_data_1__31_, out_hop_data_1__30_, out_hop_data_1__29_, out_hop_data_1__28_, out_hop_data_1__27_, out_hop_data_1__26_, out_hop_data_1__25_, out_hop_data_1__24_, out_hop_data_1__23_, out_hop_data_1__22_, out_hop_data_1__21_, out_hop_data_1__20_, out_hop_data_1__19_, out_hop_data_1__18_, out_hop_data_1__17_, out_hop_data_1__16_, out_hop_data_1__15_, out_hop_data_1__14_, out_hop_data_1__13_, out_hop_data_1__12_, out_hop_data_1__11_, out_hop_data_1__10_, out_hop_data_1__9_, out_hop_data_1__8_, out_hop_data_1__7_, out_hop_data_1__6_, out_hop_data_1__5_, out_hop_data_1__4_, out_hop_data_1__3_, out_hop_data_1__2_, out_hop_data_1__1_, out_hop_data_1__0_ }),
    .ready_i(out_hop_ready[1])
  );


  bsg_fsb_murn_gateway_32_2_6_0_0
  \fsb_node_2_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_2_.node_v_int ),
    .data_i(node_data_o[95:64]),
    .ready_o(\fsb_node_2_.node_ready_int ),
    .v_o(node_v_o[2]),
    .ready_i(node_ready_i[2]),
    .node_en_r_o(node_en_r_o[2]),
    .node_reset_r_o(node_reset_r_o[2])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_3_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[2]),
    .v_i(in_hop_v[2]),
    .data_i(in_hop_data[95:64]),
    .v_o({ \fsb_node_3_.node_v_int , in_hop_v[3:3] }),
    .data_o({ node_data_o[127:96], in_hop_data[127:96] }),
    .ready_i({ \fsb_node_3_.node_ready_int , in_hop_ready[3:3] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_3_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _18_net__1_, out_hop_v[3:3] }),
    .data_i({ node_data_i[127:96], out_hop_data_3__31_, out_hop_data_3__30_, out_hop_data_3__29_, out_hop_data_3__28_, out_hop_data_3__27_, out_hop_data_3__26_, out_hop_data_3__25_, out_hop_data_3__24_, out_hop_data_3__23_, out_hop_data_3__22_, out_hop_data_3__21_, out_hop_data_3__20_, out_hop_data_3__19_, out_hop_data_3__18_, out_hop_data_3__17_, out_hop_data_3__16_, out_hop_data_3__15_, out_hop_data_3__14_, out_hop_data_3__13_, out_hop_data_3__12_, out_hop_data_3__11_, out_hop_data_3__10_, out_hop_data_3__9_, out_hop_data_3__8_, out_hop_data_3__7_, out_hop_data_3__6_, out_hop_data_3__5_, out_hop_data_3__4_, out_hop_data_3__3_, out_hop_data_3__2_, out_hop_data_3__1_, out_hop_data_3__0_ }),
    .ready_o(out_hop_ready[3]),
    .yumi_o(node_yumi_o[3]),
    .v_o(out_hop_v[2]),
    .data_o({ out_hop_data_2__31_, out_hop_data_2__30_, out_hop_data_2__29_, out_hop_data_2__28_, out_hop_data_2__27_, out_hop_data_2__26_, out_hop_data_2__25_, out_hop_data_2__24_, out_hop_data_2__23_, out_hop_data_2__22_, out_hop_data_2__21_, out_hop_data_2__20_, out_hop_data_2__19_, out_hop_data_2__18_, out_hop_data_2__17_, out_hop_data_2__16_, out_hop_data_2__15_, out_hop_data_2__14_, out_hop_data_2__13_, out_hop_data_2__12_, out_hop_data_2__11_, out_hop_data_2__10_, out_hop_data_2__9_, out_hop_data_2__8_, out_hop_data_2__7_, out_hop_data_2__6_, out_hop_data_2__5_, out_hop_data_2__4_, out_hop_data_2__3_, out_hop_data_2__2_, out_hop_data_2__1_, out_hop_data_2__0_ }),
    .ready_i(out_hop_ready[2])
  );


  bsg_fsb_murn_gateway_32_3_6_0_0
  \fsb_node_3_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_3_.node_v_int ),
    .data_i(node_data_o[127:96]),
    .ready_o(\fsb_node_3_.node_ready_int ),
    .v_o(node_v_o[3]),
    .ready_i(node_ready_i[3]),
    .node_en_r_o(node_en_r_o[3]),
    .node_reset_r_o(node_reset_r_o[3])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_4_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[3]),
    .v_i(in_hop_v[3]),
    .data_i(in_hop_data[127:96]),
    .v_o({ \fsb_node_4_.node_v_int , in_hop_v[4:4] }),
    .data_o({ node_data_o[159:128], in_hop_data[159:128] }),
    .ready_i({ \fsb_node_4_.node_ready_int , in_hop_ready[4:4] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_4_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _23_net__1_, out_hop_v[4:4] }),
    .data_i({ node_data_i[159:128], out_hop_data_4__31_, out_hop_data_4__30_, out_hop_data_4__29_, out_hop_data_4__28_, out_hop_data_4__27_, out_hop_data_4__26_, out_hop_data_4__25_, out_hop_data_4__24_, out_hop_data_4__23_, out_hop_data_4__22_, out_hop_data_4__21_, out_hop_data_4__20_, out_hop_data_4__19_, out_hop_data_4__18_, out_hop_data_4__17_, out_hop_data_4__16_, out_hop_data_4__15_, out_hop_data_4__14_, out_hop_data_4__13_, out_hop_data_4__12_, out_hop_data_4__11_, out_hop_data_4__10_, out_hop_data_4__9_, out_hop_data_4__8_, out_hop_data_4__7_, out_hop_data_4__6_, out_hop_data_4__5_, out_hop_data_4__4_, out_hop_data_4__3_, out_hop_data_4__2_, out_hop_data_4__1_, out_hop_data_4__0_ }),
    .ready_o(out_hop_ready[4]),
    .yumi_o(node_yumi_o[4]),
    .v_o(out_hop_v[3]),
    .data_o({ out_hop_data_3__31_, out_hop_data_3__30_, out_hop_data_3__29_, out_hop_data_3__28_, out_hop_data_3__27_, out_hop_data_3__26_, out_hop_data_3__25_, out_hop_data_3__24_, out_hop_data_3__23_, out_hop_data_3__22_, out_hop_data_3__21_, out_hop_data_3__20_, out_hop_data_3__19_, out_hop_data_3__18_, out_hop_data_3__17_, out_hop_data_3__16_, out_hop_data_3__15_, out_hop_data_3__14_, out_hop_data_3__13_, out_hop_data_3__12_, out_hop_data_3__11_, out_hop_data_3__10_, out_hop_data_3__9_, out_hop_data_3__8_, out_hop_data_3__7_, out_hop_data_3__6_, out_hop_data_3__5_, out_hop_data_3__4_, out_hop_data_3__3_, out_hop_data_3__2_, out_hop_data_3__1_, out_hop_data_3__0_ }),
    .ready_i(out_hop_ready[3])
  );


  bsg_fsb_murn_gateway_32_4_6_0_0
  \fsb_node_4_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_4_.node_v_int ),
    .data_i(node_data_o[159:128]),
    .ready_o(\fsb_node_4_.node_ready_int ),
    .v_o(node_v_o[4]),
    .ready_i(node_ready_i[4]),
    .node_en_r_o(node_en_r_o[4]),
    .node_reset_r_o(node_reset_r_o[4])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_5_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[4]),
    .v_i(in_hop_v[4]),
    .data_i(in_hop_data[159:128]),
    .v_o({ \fsb_node_5_.node_v_int , in_hop_v[5:5] }),
    .data_o({ node_data_o[191:160], in_hop_data[191:160] }),
    .ready_i({ \fsb_node_5_.node_ready_int , in_hop_ready[5:5] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_5_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _28_net__1_, out_hop_v[5:5] }),
    .data_i({ node_data_i[191:160], out_hop_data_5__31_, out_hop_data_5__30_, out_hop_data_5__29_, out_hop_data_5__28_, out_hop_data_5__27_, out_hop_data_5__26_, out_hop_data_5__25_, out_hop_data_5__24_, out_hop_data_5__23_, out_hop_data_5__22_, out_hop_data_5__21_, out_hop_data_5__20_, out_hop_data_5__19_, out_hop_data_5__18_, out_hop_data_5__17_, out_hop_data_5__16_, out_hop_data_5__15_, out_hop_data_5__14_, out_hop_data_5__13_, out_hop_data_5__12_, out_hop_data_5__11_, out_hop_data_5__10_, out_hop_data_5__9_, out_hop_data_5__8_, out_hop_data_5__7_, out_hop_data_5__6_, out_hop_data_5__5_, out_hop_data_5__4_, out_hop_data_5__3_, out_hop_data_5__2_, out_hop_data_5__1_, out_hop_data_5__0_ }),
    .ready_o(out_hop_ready[5]),
    .yumi_o(node_yumi_o[5]),
    .v_o(out_hop_v[4]),
    .data_o({ out_hop_data_4__31_, out_hop_data_4__30_, out_hop_data_4__29_, out_hop_data_4__28_, out_hop_data_4__27_, out_hop_data_4__26_, out_hop_data_4__25_, out_hop_data_4__24_, out_hop_data_4__23_, out_hop_data_4__22_, out_hop_data_4__21_, out_hop_data_4__20_, out_hop_data_4__19_, out_hop_data_4__18_, out_hop_data_4__17_, out_hop_data_4__16_, out_hop_data_4__15_, out_hop_data_4__14_, out_hop_data_4__13_, out_hop_data_4__12_, out_hop_data_4__11_, out_hop_data_4__10_, out_hop_data_4__9_, out_hop_data_4__8_, out_hop_data_4__7_, out_hop_data_4__6_, out_hop_data_4__5_, out_hop_data_4__4_, out_hop_data_4__3_, out_hop_data_4__2_, out_hop_data_4__1_, out_hop_data_4__0_ }),
    .ready_i(out_hop_ready[4])
  );


  bsg_fsb_murn_gateway_32_5_6_0_0
  \fsb_node_5_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_5_.node_v_int ),
    .data_i(node_data_o[191:160]),
    .ready_o(\fsb_node_5_.node_ready_int ),
    .v_o(node_v_o[5]),
    .ready_i(node_ready_i[5]),
    .node_en_r_o(node_en_r_o[5]),
    .node_reset_r_o(node_reset_r_o[5])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_6_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[5]),
    .v_i(in_hop_v[5]),
    .data_i(in_hop_data[191:160]),
    .v_o({ \fsb_node_6_.node_v_int , in_hop_v[6:6] }),
    .data_o({ node_data_o[223:192], in_hop_data[223:192] }),
    .ready_i({ \fsb_node_6_.node_ready_int , in_hop_ready[6:6] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_6_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _33_net__1_, out_hop_v[6:6] }),
    .data_i({ node_data_i[223:192], out_hop_data_6__31_, out_hop_data_6__30_, out_hop_data_6__29_, out_hop_data_6__28_, out_hop_data_6__27_, out_hop_data_6__26_, out_hop_data_6__25_, out_hop_data_6__24_, out_hop_data_6__23_, out_hop_data_6__22_, out_hop_data_6__21_, out_hop_data_6__20_, out_hop_data_6__19_, out_hop_data_6__18_, out_hop_data_6__17_, out_hop_data_6__16_, out_hop_data_6__15_, out_hop_data_6__14_, out_hop_data_6__13_, out_hop_data_6__12_, out_hop_data_6__11_, out_hop_data_6__10_, out_hop_data_6__9_, out_hop_data_6__8_, out_hop_data_6__7_, out_hop_data_6__6_, out_hop_data_6__5_, out_hop_data_6__4_, out_hop_data_6__3_, out_hop_data_6__2_, out_hop_data_6__1_, out_hop_data_6__0_ }),
    .ready_o(out_hop_ready[6]),
    .yumi_o(node_yumi_o[6]),
    .v_o(out_hop_v[5]),
    .data_o({ out_hop_data_5__31_, out_hop_data_5__30_, out_hop_data_5__29_, out_hop_data_5__28_, out_hop_data_5__27_, out_hop_data_5__26_, out_hop_data_5__25_, out_hop_data_5__24_, out_hop_data_5__23_, out_hop_data_5__22_, out_hop_data_5__21_, out_hop_data_5__20_, out_hop_data_5__19_, out_hop_data_5__18_, out_hop_data_5__17_, out_hop_data_5__16_, out_hop_data_5__15_, out_hop_data_5__14_, out_hop_data_5__13_, out_hop_data_5__12_, out_hop_data_5__11_, out_hop_data_5__10_, out_hop_data_5__9_, out_hop_data_5__8_, out_hop_data_5__7_, out_hop_data_5__6_, out_hop_data_5__5_, out_hop_data_5__4_, out_hop_data_5__3_, out_hop_data_5__2_, out_hop_data_5__1_, out_hop_data_5__0_ }),
    .ready_i(out_hop_ready[5])
  );


  bsg_fsb_murn_gateway_32_6_6_0_0
  \fsb_node_6_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_6_.node_v_int ),
    .data_i(node_data_o[223:192]),
    .ready_o(\fsb_node_6_.node_ready_int ),
    .v_o(node_v_o[6]),
    .ready_i(node_ready_i[6]),
    .node_en_r_o(node_en_r_o[6]),
    .node_reset_r_o(node_reset_r_o[6])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_7_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[6]),
    .v_i(in_hop_v[6]),
    .data_i(in_hop_data[223:192]),
    .v_o({ \fsb_node_7_.node_v_int , in_hop_v[7:7] }),
    .data_o({ node_data_o[255:224], in_hop_data[255:224] }),
    .ready_i({ \fsb_node_7_.node_ready_int , in_hop_ready[7:7] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_7_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _38_net__1_, out_hop_v[7:7] }),
    .data_i({ node_data_i[255:224], out_hop_data_7__31_, out_hop_data_7__30_, out_hop_data_7__29_, out_hop_data_7__28_, out_hop_data_7__27_, out_hop_data_7__26_, out_hop_data_7__25_, out_hop_data_7__24_, out_hop_data_7__23_, out_hop_data_7__22_, out_hop_data_7__21_, out_hop_data_7__20_, out_hop_data_7__19_, out_hop_data_7__18_, out_hop_data_7__17_, out_hop_data_7__16_, out_hop_data_7__15_, out_hop_data_7__14_, out_hop_data_7__13_, out_hop_data_7__12_, out_hop_data_7__11_, out_hop_data_7__10_, out_hop_data_7__9_, out_hop_data_7__8_, out_hop_data_7__7_, out_hop_data_7__6_, out_hop_data_7__5_, out_hop_data_7__4_, out_hop_data_7__3_, out_hop_data_7__2_, out_hop_data_7__1_, out_hop_data_7__0_ }),
    .ready_o(out_hop_ready[7]),
    .yumi_o(node_yumi_o[7]),
    .v_o(out_hop_v[6]),
    .data_o({ out_hop_data_6__31_, out_hop_data_6__30_, out_hop_data_6__29_, out_hop_data_6__28_, out_hop_data_6__27_, out_hop_data_6__26_, out_hop_data_6__25_, out_hop_data_6__24_, out_hop_data_6__23_, out_hop_data_6__22_, out_hop_data_6__21_, out_hop_data_6__20_, out_hop_data_6__19_, out_hop_data_6__18_, out_hop_data_6__17_, out_hop_data_6__16_, out_hop_data_6__15_, out_hop_data_6__14_, out_hop_data_6__13_, out_hop_data_6__12_, out_hop_data_6__11_, out_hop_data_6__10_, out_hop_data_6__9_, out_hop_data_6__8_, out_hop_data_6__7_, out_hop_data_6__6_, out_hop_data_6__5_, out_hop_data_6__4_, out_hop_data_6__3_, out_hop_data_6__2_, out_hop_data_6__1_, out_hop_data_6__0_ }),
    .ready_i(out_hop_ready[6])
  );


  bsg_fsb_murn_gateway_32_7_6_0_0
  \fsb_node_7_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_7_.node_v_int ),
    .data_i(node_data_o[255:224]),
    .ready_o(\fsb_node_7_.node_ready_int ),
    .v_o(node_v_o[7]),
    .ready_i(node_ready_i[7]),
    .node_en_r_o(node_en_r_o[7]),
    .node_reset_r_o(node_reset_r_o[7])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_8_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[7]),
    .v_i(in_hop_v[7]),
    .data_i(in_hop_data[255:224]),
    .v_o({ \fsb_node_8_.node_v_int , in_hop_v[8:8] }),
    .data_o({ node_data_o[287:256], in_hop_data[287:256] }),
    .ready_i({ \fsb_node_8_.node_ready_int , in_hop_ready[8:8] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_8_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _43_net__1_, out_hop_v[8:8] }),
    .data_i({ node_data_i[287:256], out_hop_data_8__31_, out_hop_data_8__30_, out_hop_data_8__29_, out_hop_data_8__28_, out_hop_data_8__27_, out_hop_data_8__26_, out_hop_data_8__25_, out_hop_data_8__24_, out_hop_data_8__23_, out_hop_data_8__22_, out_hop_data_8__21_, out_hop_data_8__20_, out_hop_data_8__19_, out_hop_data_8__18_, out_hop_data_8__17_, out_hop_data_8__16_, out_hop_data_8__15_, out_hop_data_8__14_, out_hop_data_8__13_, out_hop_data_8__12_, out_hop_data_8__11_, out_hop_data_8__10_, out_hop_data_8__9_, out_hop_data_8__8_, out_hop_data_8__7_, out_hop_data_8__6_, out_hop_data_8__5_, out_hop_data_8__4_, out_hop_data_8__3_, out_hop_data_8__2_, out_hop_data_8__1_, out_hop_data_8__0_ }),
    .ready_o(out_hop_ready[8]),
    .yumi_o(node_yumi_o[8]),
    .v_o(out_hop_v[7]),
    .data_o({ out_hop_data_7__31_, out_hop_data_7__30_, out_hop_data_7__29_, out_hop_data_7__28_, out_hop_data_7__27_, out_hop_data_7__26_, out_hop_data_7__25_, out_hop_data_7__24_, out_hop_data_7__23_, out_hop_data_7__22_, out_hop_data_7__21_, out_hop_data_7__20_, out_hop_data_7__19_, out_hop_data_7__18_, out_hop_data_7__17_, out_hop_data_7__16_, out_hop_data_7__15_, out_hop_data_7__14_, out_hop_data_7__13_, out_hop_data_7__12_, out_hop_data_7__11_, out_hop_data_7__10_, out_hop_data_7__9_, out_hop_data_7__8_, out_hop_data_7__7_, out_hop_data_7__6_, out_hop_data_7__5_, out_hop_data_7__4_, out_hop_data_7__3_, out_hop_data_7__2_, out_hop_data_7__1_, out_hop_data_7__0_ }),
    .ready_i(out_hop_ready[7])
  );


  bsg_fsb_murn_gateway_32_8_6_0_0
  \fsb_node_8_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_8_.node_v_int ),
    .data_i(node_data_o[287:256]),
    .ready_o(\fsb_node_8_.node_ready_int ),
    .v_o(node_v_o[8]),
    .ready_i(node_ready_i[8]),
    .node_en_r_o(node_en_r_o[8]),
    .node_reset_r_o(node_reset_r_o[8])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_9_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[8]),
    .v_i(in_hop_v[8]),
    .data_i(in_hop_data[287:256]),
    .v_o({ \fsb_node_9_.node_v_int , in_hop_v[9:9] }),
    .data_o({ node_data_o[319:288], in_hop_data[319:288] }),
    .ready_i({ \fsb_node_9_.node_ready_int , in_hop_ready[9:9] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_9_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _48_net__1_, out_hop_v[9:9] }),
    .data_i({ node_data_i[319:288], out_hop_data_9__31_, out_hop_data_9__30_, out_hop_data_9__29_, out_hop_data_9__28_, out_hop_data_9__27_, out_hop_data_9__26_, out_hop_data_9__25_, out_hop_data_9__24_, out_hop_data_9__23_, out_hop_data_9__22_, out_hop_data_9__21_, out_hop_data_9__20_, out_hop_data_9__19_, out_hop_data_9__18_, out_hop_data_9__17_, out_hop_data_9__16_, out_hop_data_9__15_, out_hop_data_9__14_, out_hop_data_9__13_, out_hop_data_9__12_, out_hop_data_9__11_, out_hop_data_9__10_, out_hop_data_9__9_, out_hop_data_9__8_, out_hop_data_9__7_, out_hop_data_9__6_, out_hop_data_9__5_, out_hop_data_9__4_, out_hop_data_9__3_, out_hop_data_9__2_, out_hop_data_9__1_, out_hop_data_9__0_ }),
    .ready_o(out_hop_ready[9]),
    .yumi_o(node_yumi_o[9]),
    .v_o(out_hop_v[8]),
    .data_o({ out_hop_data_8__31_, out_hop_data_8__30_, out_hop_data_8__29_, out_hop_data_8__28_, out_hop_data_8__27_, out_hop_data_8__26_, out_hop_data_8__25_, out_hop_data_8__24_, out_hop_data_8__23_, out_hop_data_8__22_, out_hop_data_8__21_, out_hop_data_8__20_, out_hop_data_8__19_, out_hop_data_8__18_, out_hop_data_8__17_, out_hop_data_8__16_, out_hop_data_8__15_, out_hop_data_8__14_, out_hop_data_8__13_, out_hop_data_8__12_, out_hop_data_8__11_, out_hop_data_8__10_, out_hop_data_8__9_, out_hop_data_8__8_, out_hop_data_8__7_, out_hop_data_8__6_, out_hop_data_8__5_, out_hop_data_8__4_, out_hop_data_8__3_, out_hop_data_8__2_, out_hop_data_8__1_, out_hop_data_8__0_ }),
    .ready_i(out_hop_ready[8])
  );


  bsg_fsb_murn_gateway_32_9_6_0_0
  \fsb_node_9_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_9_.node_v_int ),
    .data_i(node_data_o[319:288]),
    .ready_o(\fsb_node_9_.node_ready_int ),
    .v_o(node_v_o[9]),
    .ready_i(node_ready_i[9]),
    .node_en_r_o(node_en_r_o[9]),
    .node_reset_r_o(node_reset_r_o[9])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_10_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[9]),
    .v_i(in_hop_v[9]),
    .data_i(in_hop_data[319:288]),
    .v_o({ \fsb_node_10_.node_v_int , in_hop_v[10:10] }),
    .data_o({ node_data_o[351:320], in_hop_data[351:320] }),
    .ready_i({ \fsb_node_10_.node_ready_int , in_hop_ready[10:10] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_10_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _53_net__1_, out_hop_v[10:10] }),
    .data_i({ node_data_i[351:320], out_hop_data_10__31_, out_hop_data_10__30_, out_hop_data_10__29_, out_hop_data_10__28_, out_hop_data_10__27_, out_hop_data_10__26_, out_hop_data_10__25_, out_hop_data_10__24_, out_hop_data_10__23_, out_hop_data_10__22_, out_hop_data_10__21_, out_hop_data_10__20_, out_hop_data_10__19_, out_hop_data_10__18_, out_hop_data_10__17_, out_hop_data_10__16_, out_hop_data_10__15_, out_hop_data_10__14_, out_hop_data_10__13_, out_hop_data_10__12_, out_hop_data_10__11_, out_hop_data_10__10_, out_hop_data_10__9_, out_hop_data_10__8_, out_hop_data_10__7_, out_hop_data_10__6_, out_hop_data_10__5_, out_hop_data_10__4_, out_hop_data_10__3_, out_hop_data_10__2_, out_hop_data_10__1_, out_hop_data_10__0_ }),
    .ready_o(out_hop_ready[10]),
    .yumi_o(node_yumi_o[10]),
    .v_o(out_hop_v[9]),
    .data_o({ out_hop_data_9__31_, out_hop_data_9__30_, out_hop_data_9__29_, out_hop_data_9__28_, out_hop_data_9__27_, out_hop_data_9__26_, out_hop_data_9__25_, out_hop_data_9__24_, out_hop_data_9__23_, out_hop_data_9__22_, out_hop_data_9__21_, out_hop_data_9__20_, out_hop_data_9__19_, out_hop_data_9__18_, out_hop_data_9__17_, out_hop_data_9__16_, out_hop_data_9__15_, out_hop_data_9__14_, out_hop_data_9__13_, out_hop_data_9__12_, out_hop_data_9__11_, out_hop_data_9__10_, out_hop_data_9__9_, out_hop_data_9__8_, out_hop_data_9__7_, out_hop_data_9__6_, out_hop_data_9__5_, out_hop_data_9__4_, out_hop_data_9__3_, out_hop_data_9__2_, out_hop_data_9__1_, out_hop_data_9__0_ }),
    .ready_i(out_hop_ready[9])
  );


  bsg_fsb_murn_gateway_32_10_6_0_0
  \fsb_node_10_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_10_.node_v_int ),
    .data_i(node_data_o[351:320]),
    .ready_o(\fsb_node_10_.node_ready_int ),
    .v_o(node_v_o[10]),
    .ready_i(node_ready_i[10]),
    .node_en_r_o(node_en_r_o[10]),
    .node_reset_r_o(node_reset_r_o[10])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_11_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[10]),
    .v_i(in_hop_v[10]),
    .data_i(in_hop_data[351:320]),
    .v_o({ \fsb_node_11_.node_v_int , in_hop_v[11:11] }),
    .data_o({ node_data_o[383:352], in_hop_data[383:352] }),
    .ready_i({ \fsb_node_11_.node_ready_int , in_hop_ready[11:11] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_11_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _58_net__1_, out_hop_v[11:11] }),
    .data_i({ node_data_i[383:352], out_hop_data_11__31_, out_hop_data_11__30_, out_hop_data_11__29_, out_hop_data_11__28_, out_hop_data_11__27_, out_hop_data_11__26_, out_hop_data_11__25_, out_hop_data_11__24_, out_hop_data_11__23_, out_hop_data_11__22_, out_hop_data_11__21_, out_hop_data_11__20_, out_hop_data_11__19_, out_hop_data_11__18_, out_hop_data_11__17_, out_hop_data_11__16_, out_hop_data_11__15_, out_hop_data_11__14_, out_hop_data_11__13_, out_hop_data_11__12_, out_hop_data_11__11_, out_hop_data_11__10_, out_hop_data_11__9_, out_hop_data_11__8_, out_hop_data_11__7_, out_hop_data_11__6_, out_hop_data_11__5_, out_hop_data_11__4_, out_hop_data_11__3_, out_hop_data_11__2_, out_hop_data_11__1_, out_hop_data_11__0_ }),
    .ready_o(out_hop_ready[11]),
    .yumi_o(node_yumi_o[11]),
    .v_o(out_hop_v[10]),
    .data_o({ out_hop_data_10__31_, out_hop_data_10__30_, out_hop_data_10__29_, out_hop_data_10__28_, out_hop_data_10__27_, out_hop_data_10__26_, out_hop_data_10__25_, out_hop_data_10__24_, out_hop_data_10__23_, out_hop_data_10__22_, out_hop_data_10__21_, out_hop_data_10__20_, out_hop_data_10__19_, out_hop_data_10__18_, out_hop_data_10__17_, out_hop_data_10__16_, out_hop_data_10__15_, out_hop_data_10__14_, out_hop_data_10__13_, out_hop_data_10__12_, out_hop_data_10__11_, out_hop_data_10__10_, out_hop_data_10__9_, out_hop_data_10__8_, out_hop_data_10__7_, out_hop_data_10__6_, out_hop_data_10__5_, out_hop_data_10__4_, out_hop_data_10__3_, out_hop_data_10__2_, out_hop_data_10__1_, out_hop_data_10__0_ }),
    .ready_i(out_hop_ready[10])
  );


  bsg_fsb_murn_gateway_32_11_6_0_0
  \fsb_node_11_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_11_.node_v_int ),
    .data_i(node_data_o[383:352]),
    .ready_o(\fsb_node_11_.node_ready_int ),
    .v_o(node_v_o[11]),
    .ready_i(node_ready_i[11]),
    .node_en_r_o(node_en_r_o[11]),
    .node_reset_r_o(node_reset_r_o[11])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_12_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[11]),
    .v_i(in_hop_v[11]),
    .data_i(in_hop_data[383:352]),
    .v_o({ \fsb_node_12_.node_v_int , in_hop_v[12:12] }),
    .data_o({ node_data_o[415:384], in_hop_data[415:384] }),
    .ready_i({ \fsb_node_12_.node_ready_int , in_hop_ready[12:12] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_12_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _63_net__1_, out_hop_v[12:12] }),
    .data_i({ node_data_i[415:384], out_hop_data_12__31_, out_hop_data_12__30_, out_hop_data_12__29_, out_hop_data_12__28_, out_hop_data_12__27_, out_hop_data_12__26_, out_hop_data_12__25_, out_hop_data_12__24_, out_hop_data_12__23_, out_hop_data_12__22_, out_hop_data_12__21_, out_hop_data_12__20_, out_hop_data_12__19_, out_hop_data_12__18_, out_hop_data_12__17_, out_hop_data_12__16_, out_hop_data_12__15_, out_hop_data_12__14_, out_hop_data_12__13_, out_hop_data_12__12_, out_hop_data_12__11_, out_hop_data_12__10_, out_hop_data_12__9_, out_hop_data_12__8_, out_hop_data_12__7_, out_hop_data_12__6_, out_hop_data_12__5_, out_hop_data_12__4_, out_hop_data_12__3_, out_hop_data_12__2_, out_hop_data_12__1_, out_hop_data_12__0_ }),
    .ready_o(out_hop_ready[12]),
    .yumi_o(node_yumi_o[12]),
    .v_o(out_hop_v[11]),
    .data_o({ out_hop_data_11__31_, out_hop_data_11__30_, out_hop_data_11__29_, out_hop_data_11__28_, out_hop_data_11__27_, out_hop_data_11__26_, out_hop_data_11__25_, out_hop_data_11__24_, out_hop_data_11__23_, out_hop_data_11__22_, out_hop_data_11__21_, out_hop_data_11__20_, out_hop_data_11__19_, out_hop_data_11__18_, out_hop_data_11__17_, out_hop_data_11__16_, out_hop_data_11__15_, out_hop_data_11__14_, out_hop_data_11__13_, out_hop_data_11__12_, out_hop_data_11__11_, out_hop_data_11__10_, out_hop_data_11__9_, out_hop_data_11__8_, out_hop_data_11__7_, out_hop_data_11__6_, out_hop_data_11__5_, out_hop_data_11__4_, out_hop_data_11__3_, out_hop_data_11__2_, out_hop_data_11__1_, out_hop_data_11__0_ }),
    .ready_i(out_hop_ready[11])
  );


  bsg_fsb_murn_gateway_32_12_6_0_0
  \fsb_node_12_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_12_.node_v_int ),
    .data_i(node_data_o[415:384]),
    .ready_o(\fsb_node_12_.node_ready_int ),
    .v_o(node_v_o[12]),
    .ready_i(node_ready_i[12]),
    .node_en_r_o(node_en_r_o[12]),
    .node_reset_r_o(node_reset_r_o[12])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_13_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[12]),
    .v_i(in_hop_v[12]),
    .data_i(in_hop_data[415:384]),
    .v_o({ \fsb_node_13_.node_v_int , in_hop_v[13:13] }),
    .data_o({ node_data_o[447:416], in_hop_data[447:416] }),
    .ready_i({ \fsb_node_13_.node_ready_int , in_hop_ready[13:13] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_13_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _68_net__1_, out_hop_v[13:13] }),
    .data_i({ node_data_i[447:416], out_hop_data_13__31_, out_hop_data_13__30_, out_hop_data_13__29_, out_hop_data_13__28_, out_hop_data_13__27_, out_hop_data_13__26_, out_hop_data_13__25_, out_hop_data_13__24_, out_hop_data_13__23_, out_hop_data_13__22_, out_hop_data_13__21_, out_hop_data_13__20_, out_hop_data_13__19_, out_hop_data_13__18_, out_hop_data_13__17_, out_hop_data_13__16_, out_hop_data_13__15_, out_hop_data_13__14_, out_hop_data_13__13_, out_hop_data_13__12_, out_hop_data_13__11_, out_hop_data_13__10_, out_hop_data_13__9_, out_hop_data_13__8_, out_hop_data_13__7_, out_hop_data_13__6_, out_hop_data_13__5_, out_hop_data_13__4_, out_hop_data_13__3_, out_hop_data_13__2_, out_hop_data_13__1_, out_hop_data_13__0_ }),
    .ready_o(out_hop_ready[13]),
    .yumi_o(node_yumi_o[13]),
    .v_o(out_hop_v[12]),
    .data_o({ out_hop_data_12__31_, out_hop_data_12__30_, out_hop_data_12__29_, out_hop_data_12__28_, out_hop_data_12__27_, out_hop_data_12__26_, out_hop_data_12__25_, out_hop_data_12__24_, out_hop_data_12__23_, out_hop_data_12__22_, out_hop_data_12__21_, out_hop_data_12__20_, out_hop_data_12__19_, out_hop_data_12__18_, out_hop_data_12__17_, out_hop_data_12__16_, out_hop_data_12__15_, out_hop_data_12__14_, out_hop_data_12__13_, out_hop_data_12__12_, out_hop_data_12__11_, out_hop_data_12__10_, out_hop_data_12__9_, out_hop_data_12__8_, out_hop_data_12__7_, out_hop_data_12__6_, out_hop_data_12__5_, out_hop_data_12__4_, out_hop_data_12__3_, out_hop_data_12__2_, out_hop_data_12__1_, out_hop_data_12__0_ }),
    .ready_i(out_hop_ready[12])
  );


  bsg_fsb_murn_gateway_32_13_6_0_0
  \fsb_node_13_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_13_.node_v_int ),
    .data_i(node_data_o[447:416]),
    .ready_o(\fsb_node_13_.node_ready_int ),
    .v_o(node_v_o[13]),
    .ready_i(node_ready_i[13]),
    .node_en_r_o(node_en_r_o[13]),
    .node_reset_r_o(node_reset_r_o[13])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_14_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[13]),
    .v_i(in_hop_v[13]),
    .data_i(in_hop_data[447:416]),
    .v_o({ \fsb_node_14_.node_v_int , in_hop_v[14:14] }),
    .data_o({ node_data_o[479:448], in_hop_data[479:448] }),
    .ready_i({ \fsb_node_14_.node_ready_int , in_hop_ready[14:14] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_14_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _73_net__1_, out_hop_v[14:14] }),
    .data_i({ node_data_i[479:448], out_hop_data_14__31_, out_hop_data_14__30_, out_hop_data_14__29_, out_hop_data_14__28_, out_hop_data_14__27_, out_hop_data_14__26_, out_hop_data_14__25_, out_hop_data_14__24_, out_hop_data_14__23_, out_hop_data_14__22_, out_hop_data_14__21_, out_hop_data_14__20_, out_hop_data_14__19_, out_hop_data_14__18_, out_hop_data_14__17_, out_hop_data_14__16_, out_hop_data_14__15_, out_hop_data_14__14_, out_hop_data_14__13_, out_hop_data_14__12_, out_hop_data_14__11_, out_hop_data_14__10_, out_hop_data_14__9_, out_hop_data_14__8_, out_hop_data_14__7_, out_hop_data_14__6_, out_hop_data_14__5_, out_hop_data_14__4_, out_hop_data_14__3_, out_hop_data_14__2_, out_hop_data_14__1_, out_hop_data_14__0_ }),
    .ready_o(out_hop_ready[14]),
    .yumi_o(node_yumi_o[14]),
    .v_o(out_hop_v[13]),
    .data_o({ out_hop_data_13__31_, out_hop_data_13__30_, out_hop_data_13__29_, out_hop_data_13__28_, out_hop_data_13__27_, out_hop_data_13__26_, out_hop_data_13__25_, out_hop_data_13__24_, out_hop_data_13__23_, out_hop_data_13__22_, out_hop_data_13__21_, out_hop_data_13__20_, out_hop_data_13__19_, out_hop_data_13__18_, out_hop_data_13__17_, out_hop_data_13__16_, out_hop_data_13__15_, out_hop_data_13__14_, out_hop_data_13__13_, out_hop_data_13__12_, out_hop_data_13__11_, out_hop_data_13__10_, out_hop_data_13__9_, out_hop_data_13__8_, out_hop_data_13__7_, out_hop_data_13__6_, out_hop_data_13__5_, out_hop_data_13__4_, out_hop_data_13__3_, out_hop_data_13__2_, out_hop_data_13__1_, out_hop_data_13__0_ }),
    .ready_i(out_hop_ready[13])
  );


  bsg_fsb_murn_gateway_32_14_6_0_0
  \fsb_node_14_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_14_.node_v_int ),
    .data_i(node_data_o[479:448]),
    .ready_o(\fsb_node_14_.node_ready_int ),
    .v_o(node_v_o[14]),
    .ready_i(node_ready_i[14]),
    .node_en_r_o(node_en_r_o[14]),
    .node_reset_r_o(node_reset_r_o[14])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_15_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[14]),
    .v_i(in_hop_v[14]),
    .data_i(in_hop_data[479:448]),
    .v_o({ \fsb_node_15_.node_v_int , in_hop_v[15:15] }),
    .data_o({ node_data_o[511:480], in_hop_data[511:480] }),
    .ready_i({ \fsb_node_15_.node_ready_int , in_hop_ready[15:15] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_15_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _78_net__1_, out_hop_v[15:15] }),
    .data_i({ node_data_i[511:480], out_hop_data_15__31_, out_hop_data_15__30_, out_hop_data_15__29_, out_hop_data_15__28_, out_hop_data_15__27_, out_hop_data_15__26_, out_hop_data_15__25_, out_hop_data_15__24_, out_hop_data_15__23_, out_hop_data_15__22_, out_hop_data_15__21_, out_hop_data_15__20_, out_hop_data_15__19_, out_hop_data_15__18_, out_hop_data_15__17_, out_hop_data_15__16_, out_hop_data_15__15_, out_hop_data_15__14_, out_hop_data_15__13_, out_hop_data_15__12_, out_hop_data_15__11_, out_hop_data_15__10_, out_hop_data_15__9_, out_hop_data_15__8_, out_hop_data_15__7_, out_hop_data_15__6_, out_hop_data_15__5_, out_hop_data_15__4_, out_hop_data_15__3_, out_hop_data_15__2_, out_hop_data_15__1_, out_hop_data_15__0_ }),
    .ready_o(out_hop_ready[15]),
    .yumi_o(node_yumi_o[15]),
    .v_o(out_hop_v[14]),
    .data_o({ out_hop_data_14__31_, out_hop_data_14__30_, out_hop_data_14__29_, out_hop_data_14__28_, out_hop_data_14__27_, out_hop_data_14__26_, out_hop_data_14__25_, out_hop_data_14__24_, out_hop_data_14__23_, out_hop_data_14__22_, out_hop_data_14__21_, out_hop_data_14__20_, out_hop_data_14__19_, out_hop_data_14__18_, out_hop_data_14__17_, out_hop_data_14__16_, out_hop_data_14__15_, out_hop_data_14__14_, out_hop_data_14__13_, out_hop_data_14__12_, out_hop_data_14__11_, out_hop_data_14__10_, out_hop_data_14__9_, out_hop_data_14__8_, out_hop_data_14__7_, out_hop_data_14__6_, out_hop_data_14__5_, out_hop_data_14__4_, out_hop_data_14__3_, out_hop_data_14__2_, out_hop_data_14__1_, out_hop_data_14__0_ }),
    .ready_i(out_hop_ready[14])
  );


  bsg_fsb_murn_gateway_32_15_6_0_0
  \fsb_node_15_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_15_.node_v_int ),
    .data_i(node_data_o[511:480]),
    .ready_o(\fsb_node_15_.node_ready_int ),
    .v_o(node_v_o[15]),
    .ready_i(node_ready_i[15]),
    .node_en_r_o(node_en_r_o[15]),
    .node_reset_r_o(node_reset_r_o[15])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_16_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[15]),
    .v_i(in_hop_v[15]),
    .data_i(in_hop_data[511:480]),
    .v_o({ \fsb_node_16_.node_v_int , in_hop_v[16:16] }),
    .data_o({ node_data_o[543:512], in_hop_data[543:512] }),
    .ready_i({ \fsb_node_16_.node_ready_int , in_hop_ready[16:16] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_16_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _83_net__1_, out_hop_v[16:16] }),
    .data_i({ node_data_i[543:512], out_hop_data_16__31_, out_hop_data_16__30_, out_hop_data_16__29_, out_hop_data_16__28_, out_hop_data_16__27_, out_hop_data_16__26_, out_hop_data_16__25_, out_hop_data_16__24_, out_hop_data_16__23_, out_hop_data_16__22_, out_hop_data_16__21_, out_hop_data_16__20_, out_hop_data_16__19_, out_hop_data_16__18_, out_hop_data_16__17_, out_hop_data_16__16_, out_hop_data_16__15_, out_hop_data_16__14_, out_hop_data_16__13_, out_hop_data_16__12_, out_hop_data_16__11_, out_hop_data_16__10_, out_hop_data_16__9_, out_hop_data_16__8_, out_hop_data_16__7_, out_hop_data_16__6_, out_hop_data_16__5_, out_hop_data_16__4_, out_hop_data_16__3_, out_hop_data_16__2_, out_hop_data_16__1_, out_hop_data_16__0_ }),
    .ready_o(out_hop_ready[16]),
    .yumi_o(node_yumi_o[16]),
    .v_o(out_hop_v[15]),
    .data_o({ out_hop_data_15__31_, out_hop_data_15__30_, out_hop_data_15__29_, out_hop_data_15__28_, out_hop_data_15__27_, out_hop_data_15__26_, out_hop_data_15__25_, out_hop_data_15__24_, out_hop_data_15__23_, out_hop_data_15__22_, out_hop_data_15__21_, out_hop_data_15__20_, out_hop_data_15__19_, out_hop_data_15__18_, out_hop_data_15__17_, out_hop_data_15__16_, out_hop_data_15__15_, out_hop_data_15__14_, out_hop_data_15__13_, out_hop_data_15__12_, out_hop_data_15__11_, out_hop_data_15__10_, out_hop_data_15__9_, out_hop_data_15__8_, out_hop_data_15__7_, out_hop_data_15__6_, out_hop_data_15__5_, out_hop_data_15__4_, out_hop_data_15__3_, out_hop_data_15__2_, out_hop_data_15__1_, out_hop_data_15__0_ }),
    .ready_i(out_hop_ready[15])
  );


  bsg_fsb_murn_gateway_32_16_6_0_0
  \fsb_node_16_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_16_.node_v_int ),
    .data_i(node_data_o[543:512]),
    .ready_o(\fsb_node_16_.node_ready_int ),
    .v_o(node_v_o[16]),
    .ready_i(node_ready_i[16]),
    .node_en_r_o(node_en_r_o[16]),
    .node_reset_r_o(node_reset_r_o[16])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_17_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[16]),
    .v_i(in_hop_v[16]),
    .data_i(in_hop_data[543:512]),
    .v_o({ \fsb_node_17_.node_v_int , in_hop_v[17:17] }),
    .data_o({ node_data_o[575:544], in_hop_data[575:544] }),
    .ready_i({ \fsb_node_17_.node_ready_int , in_hop_ready[17:17] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_17_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _88_net__1_, out_hop_v[17:17] }),
    .data_i({ node_data_i[575:544], out_hop_data_17__31_, out_hop_data_17__30_, out_hop_data_17__29_, out_hop_data_17__28_, out_hop_data_17__27_, out_hop_data_17__26_, out_hop_data_17__25_, out_hop_data_17__24_, out_hop_data_17__23_, out_hop_data_17__22_, out_hop_data_17__21_, out_hop_data_17__20_, out_hop_data_17__19_, out_hop_data_17__18_, out_hop_data_17__17_, out_hop_data_17__16_, out_hop_data_17__15_, out_hop_data_17__14_, out_hop_data_17__13_, out_hop_data_17__12_, out_hop_data_17__11_, out_hop_data_17__10_, out_hop_data_17__9_, out_hop_data_17__8_, out_hop_data_17__7_, out_hop_data_17__6_, out_hop_data_17__5_, out_hop_data_17__4_, out_hop_data_17__3_, out_hop_data_17__2_, out_hop_data_17__1_, out_hop_data_17__0_ }),
    .ready_o(out_hop_ready[17]),
    .yumi_o(node_yumi_o[17]),
    .v_o(out_hop_v[16]),
    .data_o({ out_hop_data_16__31_, out_hop_data_16__30_, out_hop_data_16__29_, out_hop_data_16__28_, out_hop_data_16__27_, out_hop_data_16__26_, out_hop_data_16__25_, out_hop_data_16__24_, out_hop_data_16__23_, out_hop_data_16__22_, out_hop_data_16__21_, out_hop_data_16__20_, out_hop_data_16__19_, out_hop_data_16__18_, out_hop_data_16__17_, out_hop_data_16__16_, out_hop_data_16__15_, out_hop_data_16__14_, out_hop_data_16__13_, out_hop_data_16__12_, out_hop_data_16__11_, out_hop_data_16__10_, out_hop_data_16__9_, out_hop_data_16__8_, out_hop_data_16__7_, out_hop_data_16__6_, out_hop_data_16__5_, out_hop_data_16__4_, out_hop_data_16__3_, out_hop_data_16__2_, out_hop_data_16__1_, out_hop_data_16__0_ }),
    .ready_i(out_hop_ready[16])
  );


  bsg_fsb_murn_gateway_32_17_6_0_0
  \fsb_node_17_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_17_.node_v_int ),
    .data_i(node_data_o[575:544]),
    .ready_o(\fsb_node_17_.node_ready_int ),
    .v_o(node_v_o[17]),
    .ready_i(node_ready_i[17]),
    .node_en_r_o(node_en_r_o[17]),
    .node_reset_r_o(node_reset_r_o[17])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_18_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[17]),
    .v_i(in_hop_v[17]),
    .data_i(in_hop_data[575:544]),
    .v_o({ \fsb_node_18_.node_v_int , in_hop_v[18:18] }),
    .data_o({ node_data_o[607:576], in_hop_data[607:576] }),
    .ready_i({ \fsb_node_18_.node_ready_int , in_hop_ready[18:18] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_18_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _93_net__1_, out_hop_v[18:18] }),
    .data_i({ node_data_i[607:576], out_hop_data_18__31_, out_hop_data_18__30_, out_hop_data_18__29_, out_hop_data_18__28_, out_hop_data_18__27_, out_hop_data_18__26_, out_hop_data_18__25_, out_hop_data_18__24_, out_hop_data_18__23_, out_hop_data_18__22_, out_hop_data_18__21_, out_hop_data_18__20_, out_hop_data_18__19_, out_hop_data_18__18_, out_hop_data_18__17_, out_hop_data_18__16_, out_hop_data_18__15_, out_hop_data_18__14_, out_hop_data_18__13_, out_hop_data_18__12_, out_hop_data_18__11_, out_hop_data_18__10_, out_hop_data_18__9_, out_hop_data_18__8_, out_hop_data_18__7_, out_hop_data_18__6_, out_hop_data_18__5_, out_hop_data_18__4_, out_hop_data_18__3_, out_hop_data_18__2_, out_hop_data_18__1_, out_hop_data_18__0_ }),
    .ready_o(out_hop_ready[18]),
    .yumi_o(node_yumi_o[18]),
    .v_o(out_hop_v[17]),
    .data_o({ out_hop_data_17__31_, out_hop_data_17__30_, out_hop_data_17__29_, out_hop_data_17__28_, out_hop_data_17__27_, out_hop_data_17__26_, out_hop_data_17__25_, out_hop_data_17__24_, out_hop_data_17__23_, out_hop_data_17__22_, out_hop_data_17__21_, out_hop_data_17__20_, out_hop_data_17__19_, out_hop_data_17__18_, out_hop_data_17__17_, out_hop_data_17__16_, out_hop_data_17__15_, out_hop_data_17__14_, out_hop_data_17__13_, out_hop_data_17__12_, out_hop_data_17__11_, out_hop_data_17__10_, out_hop_data_17__9_, out_hop_data_17__8_, out_hop_data_17__7_, out_hop_data_17__6_, out_hop_data_17__5_, out_hop_data_17__4_, out_hop_data_17__3_, out_hop_data_17__2_, out_hop_data_17__1_, out_hop_data_17__0_ }),
    .ready_i(out_hop_ready[17])
  );


  bsg_fsb_murn_gateway_32_18_6_0_0
  \fsb_node_18_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_18_.node_v_int ),
    .data_i(node_data_o[607:576]),
    .ready_o(\fsb_node_18_.node_ready_int ),
    .v_o(node_v_o[18]),
    .ready_i(node_ready_i[18]),
    .node_en_r_o(node_en_r_o[18]),
    .node_reset_r_o(node_reset_r_o[18])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_19_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[18]),
    .v_i(in_hop_v[18]),
    .data_i(in_hop_data[607:576]),
    .v_o({ \fsb_node_19_.node_v_int , in_hop_v[19:19] }),
    .data_o({ node_data_o[639:608], in_hop_data[639:608] }),
    .ready_i({ \fsb_node_19_.node_ready_int , in_hop_ready[19:19] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_19_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _98_net__1_, out_hop_v[19:19] }),
    .data_i({ node_data_i[639:608], out_hop_data_19__31_, out_hop_data_19__30_, out_hop_data_19__29_, out_hop_data_19__28_, out_hop_data_19__27_, out_hop_data_19__26_, out_hop_data_19__25_, out_hop_data_19__24_, out_hop_data_19__23_, out_hop_data_19__22_, out_hop_data_19__21_, out_hop_data_19__20_, out_hop_data_19__19_, out_hop_data_19__18_, out_hop_data_19__17_, out_hop_data_19__16_, out_hop_data_19__15_, out_hop_data_19__14_, out_hop_data_19__13_, out_hop_data_19__12_, out_hop_data_19__11_, out_hop_data_19__10_, out_hop_data_19__9_, out_hop_data_19__8_, out_hop_data_19__7_, out_hop_data_19__6_, out_hop_data_19__5_, out_hop_data_19__4_, out_hop_data_19__3_, out_hop_data_19__2_, out_hop_data_19__1_, out_hop_data_19__0_ }),
    .ready_o(out_hop_ready[19]),
    .yumi_o(node_yumi_o[19]),
    .v_o(out_hop_v[18]),
    .data_o({ out_hop_data_18__31_, out_hop_data_18__30_, out_hop_data_18__29_, out_hop_data_18__28_, out_hop_data_18__27_, out_hop_data_18__26_, out_hop_data_18__25_, out_hop_data_18__24_, out_hop_data_18__23_, out_hop_data_18__22_, out_hop_data_18__21_, out_hop_data_18__20_, out_hop_data_18__19_, out_hop_data_18__18_, out_hop_data_18__17_, out_hop_data_18__16_, out_hop_data_18__15_, out_hop_data_18__14_, out_hop_data_18__13_, out_hop_data_18__12_, out_hop_data_18__11_, out_hop_data_18__10_, out_hop_data_18__9_, out_hop_data_18__8_, out_hop_data_18__7_, out_hop_data_18__6_, out_hop_data_18__5_, out_hop_data_18__4_, out_hop_data_18__3_, out_hop_data_18__2_, out_hop_data_18__1_, out_hop_data_18__0_ }),
    .ready_i(out_hop_ready[18])
  );


  bsg_fsb_murn_gateway_32_19_6_0_0
  \fsb_node_19_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_19_.node_v_int ),
    .data_i(node_data_o[639:608]),
    .ready_o(\fsb_node_19_.node_ready_int ),
    .v_o(node_v_o[19]),
    .ready_i(node_ready_i[19]),
    .node_en_r_o(node_en_r_o[19]),
    .node_reset_r_o(node_reset_r_o[19])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_20_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[19]),
    .v_i(in_hop_v[19]),
    .data_i(in_hop_data[639:608]),
    .v_o({ \fsb_node_20_.node_v_int , in_hop_v[20:20] }),
    .data_o({ node_data_o[671:640], in_hop_data[671:640] }),
    .ready_i({ \fsb_node_20_.node_ready_int , in_hop_ready[20:20] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_20_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _103_net__1_, out_hop_v[20:20] }),
    .data_i({ node_data_i[671:640], out_hop_data_20__31_, out_hop_data_20__30_, out_hop_data_20__29_, out_hop_data_20__28_, out_hop_data_20__27_, out_hop_data_20__26_, out_hop_data_20__25_, out_hop_data_20__24_, out_hop_data_20__23_, out_hop_data_20__22_, out_hop_data_20__21_, out_hop_data_20__20_, out_hop_data_20__19_, out_hop_data_20__18_, out_hop_data_20__17_, out_hop_data_20__16_, out_hop_data_20__15_, out_hop_data_20__14_, out_hop_data_20__13_, out_hop_data_20__12_, out_hop_data_20__11_, out_hop_data_20__10_, out_hop_data_20__9_, out_hop_data_20__8_, out_hop_data_20__7_, out_hop_data_20__6_, out_hop_data_20__5_, out_hop_data_20__4_, out_hop_data_20__3_, out_hop_data_20__2_, out_hop_data_20__1_, out_hop_data_20__0_ }),
    .ready_o(out_hop_ready[20]),
    .yumi_o(node_yumi_o[20]),
    .v_o(out_hop_v[19]),
    .data_o({ out_hop_data_19__31_, out_hop_data_19__30_, out_hop_data_19__29_, out_hop_data_19__28_, out_hop_data_19__27_, out_hop_data_19__26_, out_hop_data_19__25_, out_hop_data_19__24_, out_hop_data_19__23_, out_hop_data_19__22_, out_hop_data_19__21_, out_hop_data_19__20_, out_hop_data_19__19_, out_hop_data_19__18_, out_hop_data_19__17_, out_hop_data_19__16_, out_hop_data_19__15_, out_hop_data_19__14_, out_hop_data_19__13_, out_hop_data_19__12_, out_hop_data_19__11_, out_hop_data_19__10_, out_hop_data_19__9_, out_hop_data_19__8_, out_hop_data_19__7_, out_hop_data_19__6_, out_hop_data_19__5_, out_hop_data_19__4_, out_hop_data_19__3_, out_hop_data_19__2_, out_hop_data_19__1_, out_hop_data_19__0_ }),
    .ready_i(out_hop_ready[19])
  );


  bsg_fsb_murn_gateway_32_20_6_0_0
  \fsb_node_20_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_20_.node_v_int ),
    .data_i(node_data_o[671:640]),
    .ready_o(\fsb_node_20_.node_ready_int ),
    .v_o(node_v_o[20]),
    .ready_i(node_ready_i[20]),
    .node_en_r_o(node_en_r_o[20]),
    .node_reset_r_o(node_reset_r_o[20])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_21_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[20]),
    .v_i(in_hop_v[20]),
    .data_i(in_hop_data[671:640]),
    .v_o({ \fsb_node_21_.node_v_int , in_hop_v[21:21] }),
    .data_o({ node_data_o[703:672], in_hop_data[703:672] }),
    .ready_i({ \fsb_node_21_.node_ready_int , in_hop_ready[21:21] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_21_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _108_net__1_, out_hop_v[21:21] }),
    .data_i({ node_data_i[703:672], out_hop_data_21__31_, out_hop_data_21__30_, out_hop_data_21__29_, out_hop_data_21__28_, out_hop_data_21__27_, out_hop_data_21__26_, out_hop_data_21__25_, out_hop_data_21__24_, out_hop_data_21__23_, out_hop_data_21__22_, out_hop_data_21__21_, out_hop_data_21__20_, out_hop_data_21__19_, out_hop_data_21__18_, out_hop_data_21__17_, out_hop_data_21__16_, out_hop_data_21__15_, out_hop_data_21__14_, out_hop_data_21__13_, out_hop_data_21__12_, out_hop_data_21__11_, out_hop_data_21__10_, out_hop_data_21__9_, out_hop_data_21__8_, out_hop_data_21__7_, out_hop_data_21__6_, out_hop_data_21__5_, out_hop_data_21__4_, out_hop_data_21__3_, out_hop_data_21__2_, out_hop_data_21__1_, out_hop_data_21__0_ }),
    .ready_o(out_hop_ready[21]),
    .yumi_o(node_yumi_o[21]),
    .v_o(out_hop_v[20]),
    .data_o({ out_hop_data_20__31_, out_hop_data_20__30_, out_hop_data_20__29_, out_hop_data_20__28_, out_hop_data_20__27_, out_hop_data_20__26_, out_hop_data_20__25_, out_hop_data_20__24_, out_hop_data_20__23_, out_hop_data_20__22_, out_hop_data_20__21_, out_hop_data_20__20_, out_hop_data_20__19_, out_hop_data_20__18_, out_hop_data_20__17_, out_hop_data_20__16_, out_hop_data_20__15_, out_hop_data_20__14_, out_hop_data_20__13_, out_hop_data_20__12_, out_hop_data_20__11_, out_hop_data_20__10_, out_hop_data_20__9_, out_hop_data_20__8_, out_hop_data_20__7_, out_hop_data_20__6_, out_hop_data_20__5_, out_hop_data_20__4_, out_hop_data_20__3_, out_hop_data_20__2_, out_hop_data_20__1_, out_hop_data_20__0_ }),
    .ready_i(out_hop_ready[20])
  );


  bsg_fsb_murn_gateway_32_21_6_0_0
  \fsb_node_21_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_21_.node_v_int ),
    .data_i(node_data_o[703:672]),
    .ready_o(\fsb_node_21_.node_ready_int ),
    .v_o(node_v_o[21]),
    .ready_i(node_ready_i[21]),
    .node_en_r_o(node_en_r_o[21]),
    .node_reset_r_o(node_reset_r_o[21])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_22_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[21]),
    .v_i(in_hop_v[21]),
    .data_i(in_hop_data[703:672]),
    .v_o({ \fsb_node_22_.node_v_int , in_hop_v[22:22] }),
    .data_o({ node_data_o[735:704], in_hop_data[735:704] }),
    .ready_i({ \fsb_node_22_.node_ready_int , in_hop_ready[22:22] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_22_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _113_net__1_, out_hop_v[22:22] }),
    .data_i({ node_data_i[735:704], out_hop_data_22__31_, out_hop_data_22__30_, out_hop_data_22__29_, out_hop_data_22__28_, out_hop_data_22__27_, out_hop_data_22__26_, out_hop_data_22__25_, out_hop_data_22__24_, out_hop_data_22__23_, out_hop_data_22__22_, out_hop_data_22__21_, out_hop_data_22__20_, out_hop_data_22__19_, out_hop_data_22__18_, out_hop_data_22__17_, out_hop_data_22__16_, out_hop_data_22__15_, out_hop_data_22__14_, out_hop_data_22__13_, out_hop_data_22__12_, out_hop_data_22__11_, out_hop_data_22__10_, out_hop_data_22__9_, out_hop_data_22__8_, out_hop_data_22__7_, out_hop_data_22__6_, out_hop_data_22__5_, out_hop_data_22__4_, out_hop_data_22__3_, out_hop_data_22__2_, out_hop_data_22__1_, out_hop_data_22__0_ }),
    .ready_o(out_hop_ready[22]),
    .yumi_o(node_yumi_o[22]),
    .v_o(out_hop_v[21]),
    .data_o({ out_hop_data_21__31_, out_hop_data_21__30_, out_hop_data_21__29_, out_hop_data_21__28_, out_hop_data_21__27_, out_hop_data_21__26_, out_hop_data_21__25_, out_hop_data_21__24_, out_hop_data_21__23_, out_hop_data_21__22_, out_hop_data_21__21_, out_hop_data_21__20_, out_hop_data_21__19_, out_hop_data_21__18_, out_hop_data_21__17_, out_hop_data_21__16_, out_hop_data_21__15_, out_hop_data_21__14_, out_hop_data_21__13_, out_hop_data_21__12_, out_hop_data_21__11_, out_hop_data_21__10_, out_hop_data_21__9_, out_hop_data_21__8_, out_hop_data_21__7_, out_hop_data_21__6_, out_hop_data_21__5_, out_hop_data_21__4_, out_hop_data_21__3_, out_hop_data_21__2_, out_hop_data_21__1_, out_hop_data_21__0_ }),
    .ready_i(out_hop_ready[21])
  );


  bsg_fsb_murn_gateway_32_22_6_0_0
  \fsb_node_22_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_22_.node_v_int ),
    .data_i(node_data_o[735:704]),
    .ready_o(\fsb_node_22_.node_ready_int ),
    .v_o(node_v_o[22]),
    .ready_i(node_ready_i[22]),
    .node_en_r_o(node_en_r_o[22]),
    .node_reset_r_o(node_reset_r_o[22])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_23_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[22]),
    .v_i(in_hop_v[22]),
    .data_i(in_hop_data[735:704]),
    .v_o({ \fsb_node_23_.node_v_int , in_hop_v[23:23] }),
    .data_o({ node_data_o[767:736], in_hop_data[767:736] }),
    .ready_i({ \fsb_node_23_.node_ready_int , in_hop_ready[23:23] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_23_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _118_net__1_, out_hop_v[23:23] }),
    .data_i({ node_data_i[767:736], out_hop_data_23__31_, out_hop_data_23__30_, out_hop_data_23__29_, out_hop_data_23__28_, out_hop_data_23__27_, out_hop_data_23__26_, out_hop_data_23__25_, out_hop_data_23__24_, out_hop_data_23__23_, out_hop_data_23__22_, out_hop_data_23__21_, out_hop_data_23__20_, out_hop_data_23__19_, out_hop_data_23__18_, out_hop_data_23__17_, out_hop_data_23__16_, out_hop_data_23__15_, out_hop_data_23__14_, out_hop_data_23__13_, out_hop_data_23__12_, out_hop_data_23__11_, out_hop_data_23__10_, out_hop_data_23__9_, out_hop_data_23__8_, out_hop_data_23__7_, out_hop_data_23__6_, out_hop_data_23__5_, out_hop_data_23__4_, out_hop_data_23__3_, out_hop_data_23__2_, out_hop_data_23__1_, out_hop_data_23__0_ }),
    .ready_o(out_hop_ready[23]),
    .yumi_o(node_yumi_o[23]),
    .v_o(out_hop_v[22]),
    .data_o({ out_hop_data_22__31_, out_hop_data_22__30_, out_hop_data_22__29_, out_hop_data_22__28_, out_hop_data_22__27_, out_hop_data_22__26_, out_hop_data_22__25_, out_hop_data_22__24_, out_hop_data_22__23_, out_hop_data_22__22_, out_hop_data_22__21_, out_hop_data_22__20_, out_hop_data_22__19_, out_hop_data_22__18_, out_hop_data_22__17_, out_hop_data_22__16_, out_hop_data_22__15_, out_hop_data_22__14_, out_hop_data_22__13_, out_hop_data_22__12_, out_hop_data_22__11_, out_hop_data_22__10_, out_hop_data_22__9_, out_hop_data_22__8_, out_hop_data_22__7_, out_hop_data_22__6_, out_hop_data_22__5_, out_hop_data_22__4_, out_hop_data_22__3_, out_hop_data_22__2_, out_hop_data_22__1_, out_hop_data_22__0_ }),
    .ready_i(out_hop_ready[22])
  );


  bsg_fsb_murn_gateway_32_23_6_0_0
  \fsb_node_23_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_23_.node_v_int ),
    .data_i(node_data_o[767:736]),
    .ready_o(\fsb_node_23_.node_ready_int ),
    .v_o(node_v_o[23]),
    .ready_i(node_ready_i[23]),
    .node_en_r_o(node_en_r_o[23]),
    .node_reset_r_o(node_reset_r_o[23])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_24_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[23]),
    .v_i(in_hop_v[23]),
    .data_i(in_hop_data[767:736]),
    .v_o({ \fsb_node_24_.node_v_int , in_hop_v[24:24] }),
    .data_o({ node_data_o[799:768], in_hop_data[799:768] }),
    .ready_i({ \fsb_node_24_.node_ready_int , in_hop_ready[24:24] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_24_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _123_net__1_, out_hop_v[24:24] }),
    .data_i({ node_data_i[799:768], out_hop_data_24__31_, out_hop_data_24__30_, out_hop_data_24__29_, out_hop_data_24__28_, out_hop_data_24__27_, out_hop_data_24__26_, out_hop_data_24__25_, out_hop_data_24__24_, out_hop_data_24__23_, out_hop_data_24__22_, out_hop_data_24__21_, out_hop_data_24__20_, out_hop_data_24__19_, out_hop_data_24__18_, out_hop_data_24__17_, out_hop_data_24__16_, out_hop_data_24__15_, out_hop_data_24__14_, out_hop_data_24__13_, out_hop_data_24__12_, out_hop_data_24__11_, out_hop_data_24__10_, out_hop_data_24__9_, out_hop_data_24__8_, out_hop_data_24__7_, out_hop_data_24__6_, out_hop_data_24__5_, out_hop_data_24__4_, out_hop_data_24__3_, out_hop_data_24__2_, out_hop_data_24__1_, out_hop_data_24__0_ }),
    .ready_o(out_hop_ready[24]),
    .yumi_o(node_yumi_o[24]),
    .v_o(out_hop_v[23]),
    .data_o({ out_hop_data_23__31_, out_hop_data_23__30_, out_hop_data_23__29_, out_hop_data_23__28_, out_hop_data_23__27_, out_hop_data_23__26_, out_hop_data_23__25_, out_hop_data_23__24_, out_hop_data_23__23_, out_hop_data_23__22_, out_hop_data_23__21_, out_hop_data_23__20_, out_hop_data_23__19_, out_hop_data_23__18_, out_hop_data_23__17_, out_hop_data_23__16_, out_hop_data_23__15_, out_hop_data_23__14_, out_hop_data_23__13_, out_hop_data_23__12_, out_hop_data_23__11_, out_hop_data_23__10_, out_hop_data_23__9_, out_hop_data_23__8_, out_hop_data_23__7_, out_hop_data_23__6_, out_hop_data_23__5_, out_hop_data_23__4_, out_hop_data_23__3_, out_hop_data_23__2_, out_hop_data_23__1_, out_hop_data_23__0_ }),
    .ready_i(out_hop_ready[23])
  );


  bsg_fsb_murn_gateway_32_24_6_0_0
  \fsb_node_24_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_24_.node_v_int ),
    .data_i(node_data_o[799:768]),
    .ready_o(\fsb_node_24_.node_ready_int ),
    .v_o(node_v_o[24]),
    .ready_i(node_ready_i[24]),
    .node_en_r_o(node_en_r_o[24]),
    .node_reset_r_o(node_reset_r_o[24])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_25_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[24]),
    .v_i(in_hop_v[24]),
    .data_i(in_hop_data[799:768]),
    .v_o({ \fsb_node_25_.node_v_int , in_hop_v[25:25] }),
    .data_o({ node_data_o[831:800], in_hop_data[831:800] }),
    .ready_i({ \fsb_node_25_.node_ready_int , in_hop_ready[25:25] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_25_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _128_net__1_, out_hop_v[25:25] }),
    .data_i({ node_data_i[831:800], out_hop_data_25__31_, out_hop_data_25__30_, out_hop_data_25__29_, out_hop_data_25__28_, out_hop_data_25__27_, out_hop_data_25__26_, out_hop_data_25__25_, out_hop_data_25__24_, out_hop_data_25__23_, out_hop_data_25__22_, out_hop_data_25__21_, out_hop_data_25__20_, out_hop_data_25__19_, out_hop_data_25__18_, out_hop_data_25__17_, out_hop_data_25__16_, out_hop_data_25__15_, out_hop_data_25__14_, out_hop_data_25__13_, out_hop_data_25__12_, out_hop_data_25__11_, out_hop_data_25__10_, out_hop_data_25__9_, out_hop_data_25__8_, out_hop_data_25__7_, out_hop_data_25__6_, out_hop_data_25__5_, out_hop_data_25__4_, out_hop_data_25__3_, out_hop_data_25__2_, out_hop_data_25__1_, out_hop_data_25__0_ }),
    .ready_o(out_hop_ready[25]),
    .yumi_o(node_yumi_o[25]),
    .v_o(out_hop_v[24]),
    .data_o({ out_hop_data_24__31_, out_hop_data_24__30_, out_hop_data_24__29_, out_hop_data_24__28_, out_hop_data_24__27_, out_hop_data_24__26_, out_hop_data_24__25_, out_hop_data_24__24_, out_hop_data_24__23_, out_hop_data_24__22_, out_hop_data_24__21_, out_hop_data_24__20_, out_hop_data_24__19_, out_hop_data_24__18_, out_hop_data_24__17_, out_hop_data_24__16_, out_hop_data_24__15_, out_hop_data_24__14_, out_hop_data_24__13_, out_hop_data_24__12_, out_hop_data_24__11_, out_hop_data_24__10_, out_hop_data_24__9_, out_hop_data_24__8_, out_hop_data_24__7_, out_hop_data_24__6_, out_hop_data_24__5_, out_hop_data_24__4_, out_hop_data_24__3_, out_hop_data_24__2_, out_hop_data_24__1_, out_hop_data_24__0_ }),
    .ready_i(out_hop_ready[24])
  );


  bsg_fsb_murn_gateway_32_25_6_0_0
  \fsb_node_25_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_25_.node_v_int ),
    .data_i(node_data_o[831:800]),
    .ready_o(\fsb_node_25_.node_ready_int ),
    .v_o(node_v_o[25]),
    .ready_i(node_ready_i[25]),
    .node_en_r_o(node_en_r_o[25]),
    .node_reset_r_o(node_reset_r_o[25])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_26_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[25]),
    .v_i(in_hop_v[25]),
    .data_i(in_hop_data[831:800]),
    .v_o({ \fsb_node_26_.node_v_int , in_hop_v[26:26] }),
    .data_o({ node_data_o[863:832], in_hop_data[863:832] }),
    .ready_i({ \fsb_node_26_.node_ready_int , in_hop_ready[26:26] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_26_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _133_net__1_, out_hop_v[26:26] }),
    .data_i({ node_data_i[863:832], out_hop_data_26__31_, out_hop_data_26__30_, out_hop_data_26__29_, out_hop_data_26__28_, out_hop_data_26__27_, out_hop_data_26__26_, out_hop_data_26__25_, out_hop_data_26__24_, out_hop_data_26__23_, out_hop_data_26__22_, out_hop_data_26__21_, out_hop_data_26__20_, out_hop_data_26__19_, out_hop_data_26__18_, out_hop_data_26__17_, out_hop_data_26__16_, out_hop_data_26__15_, out_hop_data_26__14_, out_hop_data_26__13_, out_hop_data_26__12_, out_hop_data_26__11_, out_hop_data_26__10_, out_hop_data_26__9_, out_hop_data_26__8_, out_hop_data_26__7_, out_hop_data_26__6_, out_hop_data_26__5_, out_hop_data_26__4_, out_hop_data_26__3_, out_hop_data_26__2_, out_hop_data_26__1_, out_hop_data_26__0_ }),
    .ready_o(out_hop_ready[26]),
    .yumi_o(node_yumi_o[26]),
    .v_o(out_hop_v[25]),
    .data_o({ out_hop_data_25__31_, out_hop_data_25__30_, out_hop_data_25__29_, out_hop_data_25__28_, out_hop_data_25__27_, out_hop_data_25__26_, out_hop_data_25__25_, out_hop_data_25__24_, out_hop_data_25__23_, out_hop_data_25__22_, out_hop_data_25__21_, out_hop_data_25__20_, out_hop_data_25__19_, out_hop_data_25__18_, out_hop_data_25__17_, out_hop_data_25__16_, out_hop_data_25__15_, out_hop_data_25__14_, out_hop_data_25__13_, out_hop_data_25__12_, out_hop_data_25__11_, out_hop_data_25__10_, out_hop_data_25__9_, out_hop_data_25__8_, out_hop_data_25__7_, out_hop_data_25__6_, out_hop_data_25__5_, out_hop_data_25__4_, out_hop_data_25__3_, out_hop_data_25__2_, out_hop_data_25__1_, out_hop_data_25__0_ }),
    .ready_i(out_hop_ready[25])
  );


  bsg_fsb_murn_gateway_32_26_6_0_0
  \fsb_node_26_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_26_.node_v_int ),
    .data_i(node_data_o[863:832]),
    .ready_o(\fsb_node_26_.node_ready_int ),
    .v_o(node_v_o[26]),
    .ready_i(node_ready_i[26]),
    .node_en_r_o(node_en_r_o[26]),
    .node_reset_r_o(node_reset_r_o[26])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_27_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[26]),
    .v_i(in_hop_v[26]),
    .data_i(in_hop_data[863:832]),
    .v_o({ \fsb_node_27_.node_v_int , in_hop_v[27:27] }),
    .data_o({ node_data_o[895:864], in_hop_data[895:864] }),
    .ready_i({ \fsb_node_27_.node_ready_int , in_hop_ready[27:27] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_27_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _138_net__1_, out_hop_v[27:27] }),
    .data_i({ node_data_i[895:864], out_hop_data_27__31_, out_hop_data_27__30_, out_hop_data_27__29_, out_hop_data_27__28_, out_hop_data_27__27_, out_hop_data_27__26_, out_hop_data_27__25_, out_hop_data_27__24_, out_hop_data_27__23_, out_hop_data_27__22_, out_hop_data_27__21_, out_hop_data_27__20_, out_hop_data_27__19_, out_hop_data_27__18_, out_hop_data_27__17_, out_hop_data_27__16_, out_hop_data_27__15_, out_hop_data_27__14_, out_hop_data_27__13_, out_hop_data_27__12_, out_hop_data_27__11_, out_hop_data_27__10_, out_hop_data_27__9_, out_hop_data_27__8_, out_hop_data_27__7_, out_hop_data_27__6_, out_hop_data_27__5_, out_hop_data_27__4_, out_hop_data_27__3_, out_hop_data_27__2_, out_hop_data_27__1_, out_hop_data_27__0_ }),
    .ready_o(out_hop_ready[27]),
    .yumi_o(node_yumi_o[27]),
    .v_o(out_hop_v[26]),
    .data_o({ out_hop_data_26__31_, out_hop_data_26__30_, out_hop_data_26__29_, out_hop_data_26__28_, out_hop_data_26__27_, out_hop_data_26__26_, out_hop_data_26__25_, out_hop_data_26__24_, out_hop_data_26__23_, out_hop_data_26__22_, out_hop_data_26__21_, out_hop_data_26__20_, out_hop_data_26__19_, out_hop_data_26__18_, out_hop_data_26__17_, out_hop_data_26__16_, out_hop_data_26__15_, out_hop_data_26__14_, out_hop_data_26__13_, out_hop_data_26__12_, out_hop_data_26__11_, out_hop_data_26__10_, out_hop_data_26__9_, out_hop_data_26__8_, out_hop_data_26__7_, out_hop_data_26__6_, out_hop_data_26__5_, out_hop_data_26__4_, out_hop_data_26__3_, out_hop_data_26__2_, out_hop_data_26__1_, out_hop_data_26__0_ }),
    .ready_i(out_hop_ready[26])
  );


  bsg_fsb_murn_gateway_32_27_6_0_0
  \fsb_node_27_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_27_.node_v_int ),
    .data_i(node_data_o[895:864]),
    .ready_o(\fsb_node_27_.node_ready_int ),
    .v_o(node_v_o[27]),
    .ready_i(node_ready_i[27]),
    .node_en_r_o(node_en_r_o[27]),
    .node_reset_r_o(node_reset_r_o[27])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_28_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[27]),
    .v_i(in_hop_v[27]),
    .data_i(in_hop_data[895:864]),
    .v_o({ \fsb_node_28_.node_v_int , in_hop_v[28:28] }),
    .data_o({ node_data_o[927:896], in_hop_data[927:896] }),
    .ready_i({ \fsb_node_28_.node_ready_int , in_hop_ready[28:28] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_28_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _143_net__1_, out_hop_v[28:28] }),
    .data_i({ node_data_i[927:896], out_hop_data_28__31_, out_hop_data_28__30_, out_hop_data_28__29_, out_hop_data_28__28_, out_hop_data_28__27_, out_hop_data_28__26_, out_hop_data_28__25_, out_hop_data_28__24_, out_hop_data_28__23_, out_hop_data_28__22_, out_hop_data_28__21_, out_hop_data_28__20_, out_hop_data_28__19_, out_hop_data_28__18_, out_hop_data_28__17_, out_hop_data_28__16_, out_hop_data_28__15_, out_hop_data_28__14_, out_hop_data_28__13_, out_hop_data_28__12_, out_hop_data_28__11_, out_hop_data_28__10_, out_hop_data_28__9_, out_hop_data_28__8_, out_hop_data_28__7_, out_hop_data_28__6_, out_hop_data_28__5_, out_hop_data_28__4_, out_hop_data_28__3_, out_hop_data_28__2_, out_hop_data_28__1_, out_hop_data_28__0_ }),
    .ready_o(out_hop_ready[28]),
    .yumi_o(node_yumi_o[28]),
    .v_o(out_hop_v[27]),
    .data_o({ out_hop_data_27__31_, out_hop_data_27__30_, out_hop_data_27__29_, out_hop_data_27__28_, out_hop_data_27__27_, out_hop_data_27__26_, out_hop_data_27__25_, out_hop_data_27__24_, out_hop_data_27__23_, out_hop_data_27__22_, out_hop_data_27__21_, out_hop_data_27__20_, out_hop_data_27__19_, out_hop_data_27__18_, out_hop_data_27__17_, out_hop_data_27__16_, out_hop_data_27__15_, out_hop_data_27__14_, out_hop_data_27__13_, out_hop_data_27__12_, out_hop_data_27__11_, out_hop_data_27__10_, out_hop_data_27__9_, out_hop_data_27__8_, out_hop_data_27__7_, out_hop_data_27__6_, out_hop_data_27__5_, out_hop_data_27__4_, out_hop_data_27__3_, out_hop_data_27__2_, out_hop_data_27__1_, out_hop_data_27__0_ }),
    .ready_i(out_hop_ready[27])
  );


  bsg_fsb_murn_gateway_32_28_6_0_0
  \fsb_node_28_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_28_.node_v_int ),
    .data_i(node_data_o[927:896]),
    .ready_o(\fsb_node_28_.node_ready_int ),
    .v_o(node_v_o[28]),
    .ready_i(node_ready_i[28]),
    .node_en_r_o(node_en_r_o[28]),
    .node_reset_r_o(node_reset_r_o[28])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_29_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[28]),
    .v_i(in_hop_v[28]),
    .data_i(in_hop_data[927:896]),
    .v_o({ \fsb_node_29_.node_v_int , in_hop_v[29:29] }),
    .data_o({ node_data_o[959:928], in_hop_data[959:928] }),
    .ready_i({ \fsb_node_29_.node_ready_int , in_hop_ready[29:29] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_29_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _148_net__1_, out_hop_v[29:29] }),
    .data_i({ node_data_i[959:928], out_hop_data_29__31_, out_hop_data_29__30_, out_hop_data_29__29_, out_hop_data_29__28_, out_hop_data_29__27_, out_hop_data_29__26_, out_hop_data_29__25_, out_hop_data_29__24_, out_hop_data_29__23_, out_hop_data_29__22_, out_hop_data_29__21_, out_hop_data_29__20_, out_hop_data_29__19_, out_hop_data_29__18_, out_hop_data_29__17_, out_hop_data_29__16_, out_hop_data_29__15_, out_hop_data_29__14_, out_hop_data_29__13_, out_hop_data_29__12_, out_hop_data_29__11_, out_hop_data_29__10_, out_hop_data_29__9_, out_hop_data_29__8_, out_hop_data_29__7_, out_hop_data_29__6_, out_hop_data_29__5_, out_hop_data_29__4_, out_hop_data_29__3_, out_hop_data_29__2_, out_hop_data_29__1_, out_hop_data_29__0_ }),
    .ready_o(out_hop_ready[29]),
    .yumi_o(node_yumi_o[29]),
    .v_o(out_hop_v[28]),
    .data_o({ out_hop_data_28__31_, out_hop_data_28__30_, out_hop_data_28__29_, out_hop_data_28__28_, out_hop_data_28__27_, out_hop_data_28__26_, out_hop_data_28__25_, out_hop_data_28__24_, out_hop_data_28__23_, out_hop_data_28__22_, out_hop_data_28__21_, out_hop_data_28__20_, out_hop_data_28__19_, out_hop_data_28__18_, out_hop_data_28__17_, out_hop_data_28__16_, out_hop_data_28__15_, out_hop_data_28__14_, out_hop_data_28__13_, out_hop_data_28__12_, out_hop_data_28__11_, out_hop_data_28__10_, out_hop_data_28__9_, out_hop_data_28__8_, out_hop_data_28__7_, out_hop_data_28__6_, out_hop_data_28__5_, out_hop_data_28__4_, out_hop_data_28__3_, out_hop_data_28__2_, out_hop_data_28__1_, out_hop_data_28__0_ }),
    .ready_i(out_hop_ready[28])
  );


  bsg_fsb_murn_gateway_32_29_6_0_0
  \fsb_node_29_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_29_.node_v_int ),
    .data_i(node_data_o[959:928]),
    .ready_o(\fsb_node_29_.node_ready_int ),
    .v_o(node_v_o[29]),
    .ready_i(node_ready_i[29]),
    .node_en_r_o(node_en_r_o[29]),
    .node_reset_r_o(node_reset_r_o[29])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_30_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[29]),
    .v_i(in_hop_v[29]),
    .data_i(in_hop_data[959:928]),
    .v_o({ \fsb_node_30_.node_v_int , in_hop_v[30:30] }),
    .data_o({ node_data_o[991:960], in_hop_data[991:960] }),
    .ready_i({ \fsb_node_30_.node_ready_int , in_hop_ready[30:30] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_30_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _153_net__1_, out_hop_v[30:30] }),
    .data_i({ node_data_i[991:960], out_hop_data_30__31_, out_hop_data_30__30_, out_hop_data_30__29_, out_hop_data_30__28_, out_hop_data_30__27_, out_hop_data_30__26_, out_hop_data_30__25_, out_hop_data_30__24_, out_hop_data_30__23_, out_hop_data_30__22_, out_hop_data_30__21_, out_hop_data_30__20_, out_hop_data_30__19_, out_hop_data_30__18_, out_hop_data_30__17_, out_hop_data_30__16_, out_hop_data_30__15_, out_hop_data_30__14_, out_hop_data_30__13_, out_hop_data_30__12_, out_hop_data_30__11_, out_hop_data_30__10_, out_hop_data_30__9_, out_hop_data_30__8_, out_hop_data_30__7_, out_hop_data_30__6_, out_hop_data_30__5_, out_hop_data_30__4_, out_hop_data_30__3_, out_hop_data_30__2_, out_hop_data_30__1_, out_hop_data_30__0_ }),
    .ready_o(out_hop_ready[30]),
    .yumi_o(node_yumi_o[30]),
    .v_o(out_hop_v[29]),
    .data_o({ out_hop_data_29__31_, out_hop_data_29__30_, out_hop_data_29__29_, out_hop_data_29__28_, out_hop_data_29__27_, out_hop_data_29__26_, out_hop_data_29__25_, out_hop_data_29__24_, out_hop_data_29__23_, out_hop_data_29__22_, out_hop_data_29__21_, out_hop_data_29__20_, out_hop_data_29__19_, out_hop_data_29__18_, out_hop_data_29__17_, out_hop_data_29__16_, out_hop_data_29__15_, out_hop_data_29__14_, out_hop_data_29__13_, out_hop_data_29__12_, out_hop_data_29__11_, out_hop_data_29__10_, out_hop_data_29__9_, out_hop_data_29__8_, out_hop_data_29__7_, out_hop_data_29__6_, out_hop_data_29__5_, out_hop_data_29__4_, out_hop_data_29__3_, out_hop_data_29__2_, out_hop_data_29__1_, out_hop_data_29__0_ }),
    .ready_i(out_hop_ready[29])
  );


  bsg_fsb_murn_gateway_32_30_6_0_0
  \fsb_node_30_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_30_.node_v_int ),
    .data_i(node_data_o[991:960]),
    .ready_o(\fsb_node_30_.node_ready_int ),
    .v_o(node_v_o[30]),
    .ready_i(node_ready_i[30]),
    .node_en_r_o(node_en_r_o[30]),
    .node_reset_r_o(node_reset_r_o[30])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_31_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[30]),
    .v_i(in_hop_v[30]),
    .data_i(in_hop_data[991:960]),
    .v_o({ \fsb_node_31_.node_v_int , in_hop_v[31:31] }),
    .data_o({ node_data_o[1023:992], in_hop_data[1023:992] }),
    .ready_i({ \fsb_node_31_.node_ready_int , in_hop_ready[31:31] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_31_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _158_net__1_, out_hop_v[31:31] }),
    .data_i({ node_data_i[1023:992], out_hop_data_31__31_, out_hop_data_31__30_, out_hop_data_31__29_, out_hop_data_31__28_, out_hop_data_31__27_, out_hop_data_31__26_, out_hop_data_31__25_, out_hop_data_31__24_, out_hop_data_31__23_, out_hop_data_31__22_, out_hop_data_31__21_, out_hop_data_31__20_, out_hop_data_31__19_, out_hop_data_31__18_, out_hop_data_31__17_, out_hop_data_31__16_, out_hop_data_31__15_, out_hop_data_31__14_, out_hop_data_31__13_, out_hop_data_31__12_, out_hop_data_31__11_, out_hop_data_31__10_, out_hop_data_31__9_, out_hop_data_31__8_, out_hop_data_31__7_, out_hop_data_31__6_, out_hop_data_31__5_, out_hop_data_31__4_, out_hop_data_31__3_, out_hop_data_31__2_, out_hop_data_31__1_, out_hop_data_31__0_ }),
    .ready_o(out_hop_ready[31]),
    .yumi_o(node_yumi_o[31]),
    .v_o(out_hop_v[30]),
    .data_o({ out_hop_data_30__31_, out_hop_data_30__30_, out_hop_data_30__29_, out_hop_data_30__28_, out_hop_data_30__27_, out_hop_data_30__26_, out_hop_data_30__25_, out_hop_data_30__24_, out_hop_data_30__23_, out_hop_data_30__22_, out_hop_data_30__21_, out_hop_data_30__20_, out_hop_data_30__19_, out_hop_data_30__18_, out_hop_data_30__17_, out_hop_data_30__16_, out_hop_data_30__15_, out_hop_data_30__14_, out_hop_data_30__13_, out_hop_data_30__12_, out_hop_data_30__11_, out_hop_data_30__10_, out_hop_data_30__9_, out_hop_data_30__8_, out_hop_data_30__7_, out_hop_data_30__6_, out_hop_data_30__5_, out_hop_data_30__4_, out_hop_data_30__3_, out_hop_data_30__2_, out_hop_data_30__1_, out_hop_data_30__0_ }),
    .ready_i(out_hop_ready[30])
  );


  bsg_fsb_murn_gateway_32_31_6_0_0
  \fsb_node_31_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_31_.node_v_int ),
    .data_i(node_data_o[1023:992]),
    .ready_o(\fsb_node_31_.node_ready_int ),
    .v_o(node_v_o[31]),
    .ready_i(node_ready_i[31]),
    .node_en_r_o(node_en_r_o[31]),
    .node_reset_r_o(node_reset_r_o[31])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_32_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[31]),
    .v_i(in_hop_v[31]),
    .data_i(in_hop_data[1023:992]),
    .v_o({ \fsb_node_32_.node_v_int , in_hop_v[32:32] }),
    .data_o({ node_data_o[1055:1024], in_hop_data[1055:1024] }),
    .ready_i({ \fsb_node_32_.node_ready_int , in_hop_ready[32:32] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_32_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _163_net__1_, out_hop_v[32:32] }),
    .data_i({ node_data_i[1055:1024], out_hop_data_32__31_, out_hop_data_32__30_, out_hop_data_32__29_, out_hop_data_32__28_, out_hop_data_32__27_, out_hop_data_32__26_, out_hop_data_32__25_, out_hop_data_32__24_, out_hop_data_32__23_, out_hop_data_32__22_, out_hop_data_32__21_, out_hop_data_32__20_, out_hop_data_32__19_, out_hop_data_32__18_, out_hop_data_32__17_, out_hop_data_32__16_, out_hop_data_32__15_, out_hop_data_32__14_, out_hop_data_32__13_, out_hop_data_32__12_, out_hop_data_32__11_, out_hop_data_32__10_, out_hop_data_32__9_, out_hop_data_32__8_, out_hop_data_32__7_, out_hop_data_32__6_, out_hop_data_32__5_, out_hop_data_32__4_, out_hop_data_32__3_, out_hop_data_32__2_, out_hop_data_32__1_, out_hop_data_32__0_ }),
    .ready_o(out_hop_ready[32]),
    .yumi_o(node_yumi_o[32]),
    .v_o(out_hop_v[31]),
    .data_o({ out_hop_data_31__31_, out_hop_data_31__30_, out_hop_data_31__29_, out_hop_data_31__28_, out_hop_data_31__27_, out_hop_data_31__26_, out_hop_data_31__25_, out_hop_data_31__24_, out_hop_data_31__23_, out_hop_data_31__22_, out_hop_data_31__21_, out_hop_data_31__20_, out_hop_data_31__19_, out_hop_data_31__18_, out_hop_data_31__17_, out_hop_data_31__16_, out_hop_data_31__15_, out_hop_data_31__14_, out_hop_data_31__13_, out_hop_data_31__12_, out_hop_data_31__11_, out_hop_data_31__10_, out_hop_data_31__9_, out_hop_data_31__8_, out_hop_data_31__7_, out_hop_data_31__6_, out_hop_data_31__5_, out_hop_data_31__4_, out_hop_data_31__3_, out_hop_data_31__2_, out_hop_data_31__1_, out_hop_data_31__0_ }),
    .ready_i(out_hop_ready[31])
  );


  bsg_fsb_murn_gateway_32_32_6_0_0
  \fsb_node_32_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_32_.node_v_int ),
    .data_i(node_data_o[1055:1024]),
    .ready_o(\fsb_node_32_.node_ready_int ),
    .v_o(node_v_o[32]),
    .ready_i(node_ready_i[32]),
    .node_en_r_o(node_en_r_o[32]),
    .node_reset_r_o(node_reset_r_o[32])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_33_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[32]),
    .v_i(in_hop_v[32]),
    .data_i(in_hop_data[1055:1024]),
    .v_o({ \fsb_node_33_.node_v_int , in_hop_v[33:33] }),
    .data_o({ node_data_o[1087:1056], in_hop_data[1087:1056] }),
    .ready_i({ \fsb_node_33_.node_ready_int , in_hop_ready[33:33] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_33_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _168_net__1_, out_hop_v[33:33] }),
    .data_i({ node_data_i[1087:1056], out_hop_data_33__31_, out_hop_data_33__30_, out_hop_data_33__29_, out_hop_data_33__28_, out_hop_data_33__27_, out_hop_data_33__26_, out_hop_data_33__25_, out_hop_data_33__24_, out_hop_data_33__23_, out_hop_data_33__22_, out_hop_data_33__21_, out_hop_data_33__20_, out_hop_data_33__19_, out_hop_data_33__18_, out_hop_data_33__17_, out_hop_data_33__16_, out_hop_data_33__15_, out_hop_data_33__14_, out_hop_data_33__13_, out_hop_data_33__12_, out_hop_data_33__11_, out_hop_data_33__10_, out_hop_data_33__9_, out_hop_data_33__8_, out_hop_data_33__7_, out_hop_data_33__6_, out_hop_data_33__5_, out_hop_data_33__4_, out_hop_data_33__3_, out_hop_data_33__2_, out_hop_data_33__1_, out_hop_data_33__0_ }),
    .ready_o(out_hop_ready[33]),
    .yumi_o(node_yumi_o[33]),
    .v_o(out_hop_v[32]),
    .data_o({ out_hop_data_32__31_, out_hop_data_32__30_, out_hop_data_32__29_, out_hop_data_32__28_, out_hop_data_32__27_, out_hop_data_32__26_, out_hop_data_32__25_, out_hop_data_32__24_, out_hop_data_32__23_, out_hop_data_32__22_, out_hop_data_32__21_, out_hop_data_32__20_, out_hop_data_32__19_, out_hop_data_32__18_, out_hop_data_32__17_, out_hop_data_32__16_, out_hop_data_32__15_, out_hop_data_32__14_, out_hop_data_32__13_, out_hop_data_32__12_, out_hop_data_32__11_, out_hop_data_32__10_, out_hop_data_32__9_, out_hop_data_32__8_, out_hop_data_32__7_, out_hop_data_32__6_, out_hop_data_32__5_, out_hop_data_32__4_, out_hop_data_32__3_, out_hop_data_32__2_, out_hop_data_32__1_, out_hop_data_32__0_ }),
    .ready_i(out_hop_ready[32])
  );


  bsg_fsb_murn_gateway_32_33_6_0_0
  \fsb_node_33_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_33_.node_v_int ),
    .data_i(node_data_o[1087:1056]),
    .ready_o(\fsb_node_33_.node_ready_int ),
    .v_o(node_v_o[33]),
    .ready_i(node_ready_i[33]),
    .node_en_r_o(node_en_r_o[33]),
    .node_reset_r_o(node_reset_r_o[33])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_34_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[33]),
    .v_i(in_hop_v[33]),
    .data_i(in_hop_data[1087:1056]),
    .v_o({ \fsb_node_34_.node_v_int , in_hop_v[34:34] }),
    .data_o({ node_data_o[1119:1088], in_hop_data[1119:1088] }),
    .ready_i({ \fsb_node_34_.node_ready_int , in_hop_ready[34:34] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_34_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _173_net__1_, out_hop_v[34:34] }),
    .data_i({ node_data_i[1119:1088], out_hop_data_34__31_, out_hop_data_34__30_, out_hop_data_34__29_, out_hop_data_34__28_, out_hop_data_34__27_, out_hop_data_34__26_, out_hop_data_34__25_, out_hop_data_34__24_, out_hop_data_34__23_, out_hop_data_34__22_, out_hop_data_34__21_, out_hop_data_34__20_, out_hop_data_34__19_, out_hop_data_34__18_, out_hop_data_34__17_, out_hop_data_34__16_, out_hop_data_34__15_, out_hop_data_34__14_, out_hop_data_34__13_, out_hop_data_34__12_, out_hop_data_34__11_, out_hop_data_34__10_, out_hop_data_34__9_, out_hop_data_34__8_, out_hop_data_34__7_, out_hop_data_34__6_, out_hop_data_34__5_, out_hop_data_34__4_, out_hop_data_34__3_, out_hop_data_34__2_, out_hop_data_34__1_, out_hop_data_34__0_ }),
    .ready_o(out_hop_ready[34]),
    .yumi_o(node_yumi_o[34]),
    .v_o(out_hop_v[33]),
    .data_o({ out_hop_data_33__31_, out_hop_data_33__30_, out_hop_data_33__29_, out_hop_data_33__28_, out_hop_data_33__27_, out_hop_data_33__26_, out_hop_data_33__25_, out_hop_data_33__24_, out_hop_data_33__23_, out_hop_data_33__22_, out_hop_data_33__21_, out_hop_data_33__20_, out_hop_data_33__19_, out_hop_data_33__18_, out_hop_data_33__17_, out_hop_data_33__16_, out_hop_data_33__15_, out_hop_data_33__14_, out_hop_data_33__13_, out_hop_data_33__12_, out_hop_data_33__11_, out_hop_data_33__10_, out_hop_data_33__9_, out_hop_data_33__8_, out_hop_data_33__7_, out_hop_data_33__6_, out_hop_data_33__5_, out_hop_data_33__4_, out_hop_data_33__3_, out_hop_data_33__2_, out_hop_data_33__1_, out_hop_data_33__0_ }),
    .ready_i(out_hop_ready[33])
  );


  bsg_fsb_murn_gateway_32_34_6_0_0
  \fsb_node_34_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_34_.node_v_int ),
    .data_i(node_data_o[1119:1088]),
    .ready_o(\fsb_node_34_.node_ready_int ),
    .v_o(node_v_o[34]),
    .ready_i(node_ready_i[34]),
    .node_en_r_o(node_en_r_o[34]),
    .node_reset_r_o(node_reset_r_o[34])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_35_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[34]),
    .v_i(in_hop_v[34]),
    .data_i(in_hop_data[1119:1088]),
    .v_o({ \fsb_node_35_.node_v_int , in_hop_v[35:35] }),
    .data_o({ node_data_o[1151:1120], in_hop_data[1151:1120] }),
    .ready_i({ \fsb_node_35_.node_ready_int , in_hop_ready[35:35] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_35_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _178_net__1_, out_hop_v[35:35] }),
    .data_i({ node_data_i[1151:1120], out_hop_data_35__31_, out_hop_data_35__30_, out_hop_data_35__29_, out_hop_data_35__28_, out_hop_data_35__27_, out_hop_data_35__26_, out_hop_data_35__25_, out_hop_data_35__24_, out_hop_data_35__23_, out_hop_data_35__22_, out_hop_data_35__21_, out_hop_data_35__20_, out_hop_data_35__19_, out_hop_data_35__18_, out_hop_data_35__17_, out_hop_data_35__16_, out_hop_data_35__15_, out_hop_data_35__14_, out_hop_data_35__13_, out_hop_data_35__12_, out_hop_data_35__11_, out_hop_data_35__10_, out_hop_data_35__9_, out_hop_data_35__8_, out_hop_data_35__7_, out_hop_data_35__6_, out_hop_data_35__5_, out_hop_data_35__4_, out_hop_data_35__3_, out_hop_data_35__2_, out_hop_data_35__1_, out_hop_data_35__0_ }),
    .ready_o(out_hop_ready[35]),
    .yumi_o(node_yumi_o[35]),
    .v_o(out_hop_v[34]),
    .data_o({ out_hop_data_34__31_, out_hop_data_34__30_, out_hop_data_34__29_, out_hop_data_34__28_, out_hop_data_34__27_, out_hop_data_34__26_, out_hop_data_34__25_, out_hop_data_34__24_, out_hop_data_34__23_, out_hop_data_34__22_, out_hop_data_34__21_, out_hop_data_34__20_, out_hop_data_34__19_, out_hop_data_34__18_, out_hop_data_34__17_, out_hop_data_34__16_, out_hop_data_34__15_, out_hop_data_34__14_, out_hop_data_34__13_, out_hop_data_34__12_, out_hop_data_34__11_, out_hop_data_34__10_, out_hop_data_34__9_, out_hop_data_34__8_, out_hop_data_34__7_, out_hop_data_34__6_, out_hop_data_34__5_, out_hop_data_34__4_, out_hop_data_34__3_, out_hop_data_34__2_, out_hop_data_34__1_, out_hop_data_34__0_ }),
    .ready_i(out_hop_ready[34])
  );


  bsg_fsb_murn_gateway_32_35_6_0_0
  \fsb_node_35_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_35_.node_v_int ),
    .data_i(node_data_o[1151:1120]),
    .ready_o(\fsb_node_35_.node_ready_int ),
    .v_o(node_v_o[35]),
    .ready_i(node_ready_i[35]),
    .node_en_r_o(node_en_r_o[35]),
    .node_reset_r_o(node_reset_r_o[35])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_36_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[35]),
    .v_i(in_hop_v[35]),
    .data_i(in_hop_data[1151:1120]),
    .v_o({ \fsb_node_36_.node_v_int , in_hop_v[36:36] }),
    .data_o({ node_data_o[1183:1152], in_hop_data[1183:1152] }),
    .ready_i({ \fsb_node_36_.node_ready_int , in_hop_ready[36:36] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_36_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _183_net__1_, out_hop_v[36:36] }),
    .data_i({ node_data_i[1183:1152], out_hop_data_36__31_, out_hop_data_36__30_, out_hop_data_36__29_, out_hop_data_36__28_, out_hop_data_36__27_, out_hop_data_36__26_, out_hop_data_36__25_, out_hop_data_36__24_, out_hop_data_36__23_, out_hop_data_36__22_, out_hop_data_36__21_, out_hop_data_36__20_, out_hop_data_36__19_, out_hop_data_36__18_, out_hop_data_36__17_, out_hop_data_36__16_, out_hop_data_36__15_, out_hop_data_36__14_, out_hop_data_36__13_, out_hop_data_36__12_, out_hop_data_36__11_, out_hop_data_36__10_, out_hop_data_36__9_, out_hop_data_36__8_, out_hop_data_36__7_, out_hop_data_36__6_, out_hop_data_36__5_, out_hop_data_36__4_, out_hop_data_36__3_, out_hop_data_36__2_, out_hop_data_36__1_, out_hop_data_36__0_ }),
    .ready_o(out_hop_ready[36]),
    .yumi_o(node_yumi_o[36]),
    .v_o(out_hop_v[35]),
    .data_o({ out_hop_data_35__31_, out_hop_data_35__30_, out_hop_data_35__29_, out_hop_data_35__28_, out_hop_data_35__27_, out_hop_data_35__26_, out_hop_data_35__25_, out_hop_data_35__24_, out_hop_data_35__23_, out_hop_data_35__22_, out_hop_data_35__21_, out_hop_data_35__20_, out_hop_data_35__19_, out_hop_data_35__18_, out_hop_data_35__17_, out_hop_data_35__16_, out_hop_data_35__15_, out_hop_data_35__14_, out_hop_data_35__13_, out_hop_data_35__12_, out_hop_data_35__11_, out_hop_data_35__10_, out_hop_data_35__9_, out_hop_data_35__8_, out_hop_data_35__7_, out_hop_data_35__6_, out_hop_data_35__5_, out_hop_data_35__4_, out_hop_data_35__3_, out_hop_data_35__2_, out_hop_data_35__1_, out_hop_data_35__0_ }),
    .ready_i(out_hop_ready[35])
  );


  bsg_fsb_murn_gateway_32_36_6_0_0
  \fsb_node_36_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_36_.node_v_int ),
    .data_i(node_data_o[1183:1152]),
    .ready_o(\fsb_node_36_.node_ready_int ),
    .v_o(node_v_o[36]),
    .ready_i(node_ready_i[36]),
    .node_en_r_o(node_en_r_o[36]),
    .node_reset_r_o(node_reset_r_o[36])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_37_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[36]),
    .v_i(in_hop_v[36]),
    .data_i(in_hop_data[1183:1152]),
    .v_o({ \fsb_node_37_.node_v_int , in_hop_v[37:37] }),
    .data_o({ node_data_o[1215:1184], in_hop_data[1215:1184] }),
    .ready_i({ \fsb_node_37_.node_ready_int , in_hop_ready[37:37] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_37_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _188_net__1_, out_hop_v[37:37] }),
    .data_i({ node_data_i[1215:1184], out_hop_data_37__31_, out_hop_data_37__30_, out_hop_data_37__29_, out_hop_data_37__28_, out_hop_data_37__27_, out_hop_data_37__26_, out_hop_data_37__25_, out_hop_data_37__24_, out_hop_data_37__23_, out_hop_data_37__22_, out_hop_data_37__21_, out_hop_data_37__20_, out_hop_data_37__19_, out_hop_data_37__18_, out_hop_data_37__17_, out_hop_data_37__16_, out_hop_data_37__15_, out_hop_data_37__14_, out_hop_data_37__13_, out_hop_data_37__12_, out_hop_data_37__11_, out_hop_data_37__10_, out_hop_data_37__9_, out_hop_data_37__8_, out_hop_data_37__7_, out_hop_data_37__6_, out_hop_data_37__5_, out_hop_data_37__4_, out_hop_data_37__3_, out_hop_data_37__2_, out_hop_data_37__1_, out_hop_data_37__0_ }),
    .ready_o(out_hop_ready[37]),
    .yumi_o(node_yumi_o[37]),
    .v_o(out_hop_v[36]),
    .data_o({ out_hop_data_36__31_, out_hop_data_36__30_, out_hop_data_36__29_, out_hop_data_36__28_, out_hop_data_36__27_, out_hop_data_36__26_, out_hop_data_36__25_, out_hop_data_36__24_, out_hop_data_36__23_, out_hop_data_36__22_, out_hop_data_36__21_, out_hop_data_36__20_, out_hop_data_36__19_, out_hop_data_36__18_, out_hop_data_36__17_, out_hop_data_36__16_, out_hop_data_36__15_, out_hop_data_36__14_, out_hop_data_36__13_, out_hop_data_36__12_, out_hop_data_36__11_, out_hop_data_36__10_, out_hop_data_36__9_, out_hop_data_36__8_, out_hop_data_36__7_, out_hop_data_36__6_, out_hop_data_36__5_, out_hop_data_36__4_, out_hop_data_36__3_, out_hop_data_36__2_, out_hop_data_36__1_, out_hop_data_36__0_ }),
    .ready_i(out_hop_ready[36])
  );


  bsg_fsb_murn_gateway_32_37_6_0_0
  \fsb_node_37_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_37_.node_v_int ),
    .data_i(node_data_o[1215:1184]),
    .ready_o(\fsb_node_37_.node_ready_int ),
    .v_o(node_v_o[37]),
    .ready_i(node_ready_i[37]),
    .node_en_r_o(node_en_r_o[37]),
    .node_reset_r_o(node_reset_r_o[37])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_38_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[37]),
    .v_i(in_hop_v[37]),
    .data_i(in_hop_data[1215:1184]),
    .v_o({ \fsb_node_38_.node_v_int , in_hop_v[38:38] }),
    .data_o({ node_data_o[1247:1216], in_hop_data[1247:1216] }),
    .ready_i({ \fsb_node_38_.node_ready_int , in_hop_ready[38:38] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_38_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _193_net__1_, out_hop_v[38:38] }),
    .data_i({ node_data_i[1247:1216], out_hop_data_38__31_, out_hop_data_38__30_, out_hop_data_38__29_, out_hop_data_38__28_, out_hop_data_38__27_, out_hop_data_38__26_, out_hop_data_38__25_, out_hop_data_38__24_, out_hop_data_38__23_, out_hop_data_38__22_, out_hop_data_38__21_, out_hop_data_38__20_, out_hop_data_38__19_, out_hop_data_38__18_, out_hop_data_38__17_, out_hop_data_38__16_, out_hop_data_38__15_, out_hop_data_38__14_, out_hop_data_38__13_, out_hop_data_38__12_, out_hop_data_38__11_, out_hop_data_38__10_, out_hop_data_38__9_, out_hop_data_38__8_, out_hop_data_38__7_, out_hop_data_38__6_, out_hop_data_38__5_, out_hop_data_38__4_, out_hop_data_38__3_, out_hop_data_38__2_, out_hop_data_38__1_, out_hop_data_38__0_ }),
    .ready_o(out_hop_ready[38]),
    .yumi_o(node_yumi_o[38]),
    .v_o(out_hop_v[37]),
    .data_o({ out_hop_data_37__31_, out_hop_data_37__30_, out_hop_data_37__29_, out_hop_data_37__28_, out_hop_data_37__27_, out_hop_data_37__26_, out_hop_data_37__25_, out_hop_data_37__24_, out_hop_data_37__23_, out_hop_data_37__22_, out_hop_data_37__21_, out_hop_data_37__20_, out_hop_data_37__19_, out_hop_data_37__18_, out_hop_data_37__17_, out_hop_data_37__16_, out_hop_data_37__15_, out_hop_data_37__14_, out_hop_data_37__13_, out_hop_data_37__12_, out_hop_data_37__11_, out_hop_data_37__10_, out_hop_data_37__9_, out_hop_data_37__8_, out_hop_data_37__7_, out_hop_data_37__6_, out_hop_data_37__5_, out_hop_data_37__4_, out_hop_data_37__3_, out_hop_data_37__2_, out_hop_data_37__1_, out_hop_data_37__0_ }),
    .ready_i(out_hop_ready[37])
  );


  bsg_fsb_murn_gateway_32_38_6_0_0
  \fsb_node_38_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_38_.node_v_int ),
    .data_i(node_data_o[1247:1216]),
    .ready_o(\fsb_node_38_.node_ready_int ),
    .v_o(node_v_o[38]),
    .ready_i(node_ready_i[38]),
    .node_en_r_o(node_en_r_o[38]),
    .node_reset_r_o(node_reset_r_o[38])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_39_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[38]),
    .v_i(in_hop_v[38]),
    .data_i(in_hop_data[1247:1216]),
    .v_o({ \fsb_node_39_.node_v_int , in_hop_v[39:39] }),
    .data_o({ node_data_o[1279:1248], in_hop_data[1279:1248] }),
    .ready_i({ \fsb_node_39_.node_ready_int , in_hop_ready[39:39] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_39_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _198_net__1_, out_hop_v[39:39] }),
    .data_i({ node_data_i[1279:1248], out_hop_data_39__31_, out_hop_data_39__30_, out_hop_data_39__29_, out_hop_data_39__28_, out_hop_data_39__27_, out_hop_data_39__26_, out_hop_data_39__25_, out_hop_data_39__24_, out_hop_data_39__23_, out_hop_data_39__22_, out_hop_data_39__21_, out_hop_data_39__20_, out_hop_data_39__19_, out_hop_data_39__18_, out_hop_data_39__17_, out_hop_data_39__16_, out_hop_data_39__15_, out_hop_data_39__14_, out_hop_data_39__13_, out_hop_data_39__12_, out_hop_data_39__11_, out_hop_data_39__10_, out_hop_data_39__9_, out_hop_data_39__8_, out_hop_data_39__7_, out_hop_data_39__6_, out_hop_data_39__5_, out_hop_data_39__4_, out_hop_data_39__3_, out_hop_data_39__2_, out_hop_data_39__1_, out_hop_data_39__0_ }),
    .ready_o(out_hop_ready[39]),
    .yumi_o(node_yumi_o[39]),
    .v_o(out_hop_v[38]),
    .data_o({ out_hop_data_38__31_, out_hop_data_38__30_, out_hop_data_38__29_, out_hop_data_38__28_, out_hop_data_38__27_, out_hop_data_38__26_, out_hop_data_38__25_, out_hop_data_38__24_, out_hop_data_38__23_, out_hop_data_38__22_, out_hop_data_38__21_, out_hop_data_38__20_, out_hop_data_38__19_, out_hop_data_38__18_, out_hop_data_38__17_, out_hop_data_38__16_, out_hop_data_38__15_, out_hop_data_38__14_, out_hop_data_38__13_, out_hop_data_38__12_, out_hop_data_38__11_, out_hop_data_38__10_, out_hop_data_38__9_, out_hop_data_38__8_, out_hop_data_38__7_, out_hop_data_38__6_, out_hop_data_38__5_, out_hop_data_38__4_, out_hop_data_38__3_, out_hop_data_38__2_, out_hop_data_38__1_, out_hop_data_38__0_ }),
    .ready_i(out_hop_ready[38])
  );


  bsg_fsb_murn_gateway_32_39_6_0_0
  \fsb_node_39_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_39_.node_v_int ),
    .data_i(node_data_o[1279:1248]),
    .ready_o(\fsb_node_39_.node_ready_int ),
    .v_o(node_v_o[39]),
    .ready_i(node_ready_i[39]),
    .node_en_r_o(node_en_r_o[39]),
    .node_reset_r_o(node_reset_r_o[39])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_40_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[39]),
    .v_i(in_hop_v[39]),
    .data_i(in_hop_data[1279:1248]),
    .v_o({ \fsb_node_40_.node_v_int , in_hop_v[40:40] }),
    .data_o({ node_data_o[1311:1280], in_hop_data[1311:1280] }),
    .ready_i({ \fsb_node_40_.node_ready_int , in_hop_ready[40:40] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_40_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _203_net__1_, out_hop_v[40:40] }),
    .data_i({ node_data_i[1311:1280], out_hop_data_40__31_, out_hop_data_40__30_, out_hop_data_40__29_, out_hop_data_40__28_, out_hop_data_40__27_, out_hop_data_40__26_, out_hop_data_40__25_, out_hop_data_40__24_, out_hop_data_40__23_, out_hop_data_40__22_, out_hop_data_40__21_, out_hop_data_40__20_, out_hop_data_40__19_, out_hop_data_40__18_, out_hop_data_40__17_, out_hop_data_40__16_, out_hop_data_40__15_, out_hop_data_40__14_, out_hop_data_40__13_, out_hop_data_40__12_, out_hop_data_40__11_, out_hop_data_40__10_, out_hop_data_40__9_, out_hop_data_40__8_, out_hop_data_40__7_, out_hop_data_40__6_, out_hop_data_40__5_, out_hop_data_40__4_, out_hop_data_40__3_, out_hop_data_40__2_, out_hop_data_40__1_, out_hop_data_40__0_ }),
    .ready_o(out_hop_ready[40]),
    .yumi_o(node_yumi_o[40]),
    .v_o(out_hop_v[39]),
    .data_o({ out_hop_data_39__31_, out_hop_data_39__30_, out_hop_data_39__29_, out_hop_data_39__28_, out_hop_data_39__27_, out_hop_data_39__26_, out_hop_data_39__25_, out_hop_data_39__24_, out_hop_data_39__23_, out_hop_data_39__22_, out_hop_data_39__21_, out_hop_data_39__20_, out_hop_data_39__19_, out_hop_data_39__18_, out_hop_data_39__17_, out_hop_data_39__16_, out_hop_data_39__15_, out_hop_data_39__14_, out_hop_data_39__13_, out_hop_data_39__12_, out_hop_data_39__11_, out_hop_data_39__10_, out_hop_data_39__9_, out_hop_data_39__8_, out_hop_data_39__7_, out_hop_data_39__6_, out_hop_data_39__5_, out_hop_data_39__4_, out_hop_data_39__3_, out_hop_data_39__2_, out_hop_data_39__1_, out_hop_data_39__0_ }),
    .ready_i(out_hop_ready[39])
  );


  bsg_fsb_murn_gateway_32_40_6_0_0
  \fsb_node_40_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_40_.node_v_int ),
    .data_i(node_data_o[1311:1280]),
    .ready_o(\fsb_node_40_.node_ready_int ),
    .v_o(node_v_o[40]),
    .ready_i(node_ready_i[40]),
    .node_en_r_o(node_en_r_o[40]),
    .node_reset_r_o(node_reset_r_o[40])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_41_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[40]),
    .v_i(in_hop_v[40]),
    .data_i(in_hop_data[1311:1280]),
    .v_o({ \fsb_node_41_.node_v_int , in_hop_v[41:41] }),
    .data_o({ node_data_o[1343:1312], in_hop_data[1343:1312] }),
    .ready_i({ \fsb_node_41_.node_ready_int , in_hop_ready[41:41] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_41_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _208_net__1_, out_hop_v[41:41] }),
    .data_i({ node_data_i[1343:1312], out_hop_data_41__31_, out_hop_data_41__30_, out_hop_data_41__29_, out_hop_data_41__28_, out_hop_data_41__27_, out_hop_data_41__26_, out_hop_data_41__25_, out_hop_data_41__24_, out_hop_data_41__23_, out_hop_data_41__22_, out_hop_data_41__21_, out_hop_data_41__20_, out_hop_data_41__19_, out_hop_data_41__18_, out_hop_data_41__17_, out_hop_data_41__16_, out_hop_data_41__15_, out_hop_data_41__14_, out_hop_data_41__13_, out_hop_data_41__12_, out_hop_data_41__11_, out_hop_data_41__10_, out_hop_data_41__9_, out_hop_data_41__8_, out_hop_data_41__7_, out_hop_data_41__6_, out_hop_data_41__5_, out_hop_data_41__4_, out_hop_data_41__3_, out_hop_data_41__2_, out_hop_data_41__1_, out_hop_data_41__0_ }),
    .ready_o(out_hop_ready[41]),
    .yumi_o(node_yumi_o[41]),
    .v_o(out_hop_v[40]),
    .data_o({ out_hop_data_40__31_, out_hop_data_40__30_, out_hop_data_40__29_, out_hop_data_40__28_, out_hop_data_40__27_, out_hop_data_40__26_, out_hop_data_40__25_, out_hop_data_40__24_, out_hop_data_40__23_, out_hop_data_40__22_, out_hop_data_40__21_, out_hop_data_40__20_, out_hop_data_40__19_, out_hop_data_40__18_, out_hop_data_40__17_, out_hop_data_40__16_, out_hop_data_40__15_, out_hop_data_40__14_, out_hop_data_40__13_, out_hop_data_40__12_, out_hop_data_40__11_, out_hop_data_40__10_, out_hop_data_40__9_, out_hop_data_40__8_, out_hop_data_40__7_, out_hop_data_40__6_, out_hop_data_40__5_, out_hop_data_40__4_, out_hop_data_40__3_, out_hop_data_40__2_, out_hop_data_40__1_, out_hop_data_40__0_ }),
    .ready_i(out_hop_ready[40])
  );


  bsg_fsb_murn_gateway_32_41_6_0_0
  \fsb_node_41_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_41_.node_v_int ),
    .data_i(node_data_o[1343:1312]),
    .ready_o(\fsb_node_41_.node_ready_int ),
    .v_o(node_v_o[41]),
    .ready_i(node_ready_i[41]),
    .node_en_r_o(node_en_r_o[41]),
    .node_reset_r_o(node_reset_r_o[41])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_42_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[41]),
    .v_i(in_hop_v[41]),
    .data_i(in_hop_data[1343:1312]),
    .v_o({ \fsb_node_42_.node_v_int , in_hop_v[42:42] }),
    .data_o({ node_data_o[1375:1344], in_hop_data[1375:1344] }),
    .ready_i({ \fsb_node_42_.node_ready_int , in_hop_ready[42:42] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_42_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _213_net__1_, out_hop_v[42:42] }),
    .data_i({ node_data_i[1375:1344], out_hop_data_42__31_, out_hop_data_42__30_, out_hop_data_42__29_, out_hop_data_42__28_, out_hop_data_42__27_, out_hop_data_42__26_, out_hop_data_42__25_, out_hop_data_42__24_, out_hop_data_42__23_, out_hop_data_42__22_, out_hop_data_42__21_, out_hop_data_42__20_, out_hop_data_42__19_, out_hop_data_42__18_, out_hop_data_42__17_, out_hop_data_42__16_, out_hop_data_42__15_, out_hop_data_42__14_, out_hop_data_42__13_, out_hop_data_42__12_, out_hop_data_42__11_, out_hop_data_42__10_, out_hop_data_42__9_, out_hop_data_42__8_, out_hop_data_42__7_, out_hop_data_42__6_, out_hop_data_42__5_, out_hop_data_42__4_, out_hop_data_42__3_, out_hop_data_42__2_, out_hop_data_42__1_, out_hop_data_42__0_ }),
    .ready_o(out_hop_ready[42]),
    .yumi_o(node_yumi_o[42]),
    .v_o(out_hop_v[41]),
    .data_o({ out_hop_data_41__31_, out_hop_data_41__30_, out_hop_data_41__29_, out_hop_data_41__28_, out_hop_data_41__27_, out_hop_data_41__26_, out_hop_data_41__25_, out_hop_data_41__24_, out_hop_data_41__23_, out_hop_data_41__22_, out_hop_data_41__21_, out_hop_data_41__20_, out_hop_data_41__19_, out_hop_data_41__18_, out_hop_data_41__17_, out_hop_data_41__16_, out_hop_data_41__15_, out_hop_data_41__14_, out_hop_data_41__13_, out_hop_data_41__12_, out_hop_data_41__11_, out_hop_data_41__10_, out_hop_data_41__9_, out_hop_data_41__8_, out_hop_data_41__7_, out_hop_data_41__6_, out_hop_data_41__5_, out_hop_data_41__4_, out_hop_data_41__3_, out_hop_data_41__2_, out_hop_data_41__1_, out_hop_data_41__0_ }),
    .ready_i(out_hop_ready[41])
  );


  bsg_fsb_murn_gateway_32_42_6_0_0
  \fsb_node_42_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_42_.node_v_int ),
    .data_i(node_data_o[1375:1344]),
    .ready_o(\fsb_node_42_.node_ready_int ),
    .v_o(node_v_o[42]),
    .ready_i(node_ready_i[42]),
    .node_en_r_o(node_en_r_o[42]),
    .node_reset_r_o(node_reset_r_o[42])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_43_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[42]),
    .v_i(in_hop_v[42]),
    .data_i(in_hop_data[1375:1344]),
    .v_o({ \fsb_node_43_.node_v_int , in_hop_v[43:43] }),
    .data_o({ node_data_o[1407:1376], in_hop_data[1407:1376] }),
    .ready_i({ \fsb_node_43_.node_ready_int , in_hop_ready[43:43] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_43_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _218_net__1_, out_hop_v[43:43] }),
    .data_i({ node_data_i[1407:1376], out_hop_data_43__31_, out_hop_data_43__30_, out_hop_data_43__29_, out_hop_data_43__28_, out_hop_data_43__27_, out_hop_data_43__26_, out_hop_data_43__25_, out_hop_data_43__24_, out_hop_data_43__23_, out_hop_data_43__22_, out_hop_data_43__21_, out_hop_data_43__20_, out_hop_data_43__19_, out_hop_data_43__18_, out_hop_data_43__17_, out_hop_data_43__16_, out_hop_data_43__15_, out_hop_data_43__14_, out_hop_data_43__13_, out_hop_data_43__12_, out_hop_data_43__11_, out_hop_data_43__10_, out_hop_data_43__9_, out_hop_data_43__8_, out_hop_data_43__7_, out_hop_data_43__6_, out_hop_data_43__5_, out_hop_data_43__4_, out_hop_data_43__3_, out_hop_data_43__2_, out_hop_data_43__1_, out_hop_data_43__0_ }),
    .ready_o(out_hop_ready[43]),
    .yumi_o(node_yumi_o[43]),
    .v_o(out_hop_v[42]),
    .data_o({ out_hop_data_42__31_, out_hop_data_42__30_, out_hop_data_42__29_, out_hop_data_42__28_, out_hop_data_42__27_, out_hop_data_42__26_, out_hop_data_42__25_, out_hop_data_42__24_, out_hop_data_42__23_, out_hop_data_42__22_, out_hop_data_42__21_, out_hop_data_42__20_, out_hop_data_42__19_, out_hop_data_42__18_, out_hop_data_42__17_, out_hop_data_42__16_, out_hop_data_42__15_, out_hop_data_42__14_, out_hop_data_42__13_, out_hop_data_42__12_, out_hop_data_42__11_, out_hop_data_42__10_, out_hop_data_42__9_, out_hop_data_42__8_, out_hop_data_42__7_, out_hop_data_42__6_, out_hop_data_42__5_, out_hop_data_42__4_, out_hop_data_42__3_, out_hop_data_42__2_, out_hop_data_42__1_, out_hop_data_42__0_ }),
    .ready_i(out_hop_ready[42])
  );


  bsg_fsb_murn_gateway_32_43_6_0_0
  \fsb_node_43_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_43_.node_v_int ),
    .data_i(node_data_o[1407:1376]),
    .ready_o(\fsb_node_43_.node_ready_int ),
    .v_o(node_v_o[43]),
    .ready_i(node_ready_i[43]),
    .node_en_r_o(node_en_r_o[43]),
    .node_reset_r_o(node_reset_r_o[43])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_44_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[43]),
    .v_i(in_hop_v[43]),
    .data_i(in_hop_data[1407:1376]),
    .v_o({ \fsb_node_44_.node_v_int , in_hop_v[44:44] }),
    .data_o({ node_data_o[1439:1408], in_hop_data[1439:1408] }),
    .ready_i({ \fsb_node_44_.node_ready_int , in_hop_ready[44:44] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_44_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _223_net__1_, out_hop_v[44:44] }),
    .data_i({ node_data_i[1439:1408], out_hop_data_44__31_, out_hop_data_44__30_, out_hop_data_44__29_, out_hop_data_44__28_, out_hop_data_44__27_, out_hop_data_44__26_, out_hop_data_44__25_, out_hop_data_44__24_, out_hop_data_44__23_, out_hop_data_44__22_, out_hop_data_44__21_, out_hop_data_44__20_, out_hop_data_44__19_, out_hop_data_44__18_, out_hop_data_44__17_, out_hop_data_44__16_, out_hop_data_44__15_, out_hop_data_44__14_, out_hop_data_44__13_, out_hop_data_44__12_, out_hop_data_44__11_, out_hop_data_44__10_, out_hop_data_44__9_, out_hop_data_44__8_, out_hop_data_44__7_, out_hop_data_44__6_, out_hop_data_44__5_, out_hop_data_44__4_, out_hop_data_44__3_, out_hop_data_44__2_, out_hop_data_44__1_, out_hop_data_44__0_ }),
    .ready_o(out_hop_ready[44]),
    .yumi_o(node_yumi_o[44]),
    .v_o(out_hop_v[43]),
    .data_o({ out_hop_data_43__31_, out_hop_data_43__30_, out_hop_data_43__29_, out_hop_data_43__28_, out_hop_data_43__27_, out_hop_data_43__26_, out_hop_data_43__25_, out_hop_data_43__24_, out_hop_data_43__23_, out_hop_data_43__22_, out_hop_data_43__21_, out_hop_data_43__20_, out_hop_data_43__19_, out_hop_data_43__18_, out_hop_data_43__17_, out_hop_data_43__16_, out_hop_data_43__15_, out_hop_data_43__14_, out_hop_data_43__13_, out_hop_data_43__12_, out_hop_data_43__11_, out_hop_data_43__10_, out_hop_data_43__9_, out_hop_data_43__8_, out_hop_data_43__7_, out_hop_data_43__6_, out_hop_data_43__5_, out_hop_data_43__4_, out_hop_data_43__3_, out_hop_data_43__2_, out_hop_data_43__1_, out_hop_data_43__0_ }),
    .ready_i(out_hop_ready[43])
  );


  bsg_fsb_murn_gateway_32_44_6_0_0
  \fsb_node_44_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_44_.node_v_int ),
    .data_i(node_data_o[1439:1408]),
    .ready_o(\fsb_node_44_.node_ready_int ),
    .v_o(node_v_o[44]),
    .ready_i(node_ready_i[44]),
    .node_en_r_o(node_en_r_o[44]),
    .node_reset_r_o(node_reset_r_o[44])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_45_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[44]),
    .v_i(in_hop_v[44]),
    .data_i(in_hop_data[1439:1408]),
    .v_o({ \fsb_node_45_.node_v_int , in_hop_v[45:45] }),
    .data_o({ node_data_o[1471:1440], in_hop_data[1471:1440] }),
    .ready_i({ \fsb_node_45_.node_ready_int , in_hop_ready[45:45] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_45_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _228_net__1_, out_hop_v[45:45] }),
    .data_i({ node_data_i[1471:1440], out_hop_data_45__31_, out_hop_data_45__30_, out_hop_data_45__29_, out_hop_data_45__28_, out_hop_data_45__27_, out_hop_data_45__26_, out_hop_data_45__25_, out_hop_data_45__24_, out_hop_data_45__23_, out_hop_data_45__22_, out_hop_data_45__21_, out_hop_data_45__20_, out_hop_data_45__19_, out_hop_data_45__18_, out_hop_data_45__17_, out_hop_data_45__16_, out_hop_data_45__15_, out_hop_data_45__14_, out_hop_data_45__13_, out_hop_data_45__12_, out_hop_data_45__11_, out_hop_data_45__10_, out_hop_data_45__9_, out_hop_data_45__8_, out_hop_data_45__7_, out_hop_data_45__6_, out_hop_data_45__5_, out_hop_data_45__4_, out_hop_data_45__3_, out_hop_data_45__2_, out_hop_data_45__1_, out_hop_data_45__0_ }),
    .ready_o(out_hop_ready[45]),
    .yumi_o(node_yumi_o[45]),
    .v_o(out_hop_v[44]),
    .data_o({ out_hop_data_44__31_, out_hop_data_44__30_, out_hop_data_44__29_, out_hop_data_44__28_, out_hop_data_44__27_, out_hop_data_44__26_, out_hop_data_44__25_, out_hop_data_44__24_, out_hop_data_44__23_, out_hop_data_44__22_, out_hop_data_44__21_, out_hop_data_44__20_, out_hop_data_44__19_, out_hop_data_44__18_, out_hop_data_44__17_, out_hop_data_44__16_, out_hop_data_44__15_, out_hop_data_44__14_, out_hop_data_44__13_, out_hop_data_44__12_, out_hop_data_44__11_, out_hop_data_44__10_, out_hop_data_44__9_, out_hop_data_44__8_, out_hop_data_44__7_, out_hop_data_44__6_, out_hop_data_44__5_, out_hop_data_44__4_, out_hop_data_44__3_, out_hop_data_44__2_, out_hop_data_44__1_, out_hop_data_44__0_ }),
    .ready_i(out_hop_ready[44])
  );


  bsg_fsb_murn_gateway_32_45_6_0_0
  \fsb_node_45_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_45_.node_v_int ),
    .data_i(node_data_o[1471:1440]),
    .ready_o(\fsb_node_45_.node_ready_int ),
    .v_o(node_v_o[45]),
    .ready_i(node_ready_i[45]),
    .node_en_r_o(node_en_r_o[45]),
    .node_reset_r_o(node_reset_r_o[45])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_46_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[45]),
    .v_i(in_hop_v[45]),
    .data_i(in_hop_data[1471:1440]),
    .v_o({ \fsb_node_46_.node_v_int , in_hop_v[46:46] }),
    .data_o({ node_data_o[1503:1472], in_hop_data[1503:1472] }),
    .ready_i({ \fsb_node_46_.node_ready_int , in_hop_ready[46:46] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_46_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _233_net__1_, out_hop_v[46:46] }),
    .data_i({ node_data_i[1503:1472], out_hop_data_46__31_, out_hop_data_46__30_, out_hop_data_46__29_, out_hop_data_46__28_, out_hop_data_46__27_, out_hop_data_46__26_, out_hop_data_46__25_, out_hop_data_46__24_, out_hop_data_46__23_, out_hop_data_46__22_, out_hop_data_46__21_, out_hop_data_46__20_, out_hop_data_46__19_, out_hop_data_46__18_, out_hop_data_46__17_, out_hop_data_46__16_, out_hop_data_46__15_, out_hop_data_46__14_, out_hop_data_46__13_, out_hop_data_46__12_, out_hop_data_46__11_, out_hop_data_46__10_, out_hop_data_46__9_, out_hop_data_46__8_, out_hop_data_46__7_, out_hop_data_46__6_, out_hop_data_46__5_, out_hop_data_46__4_, out_hop_data_46__3_, out_hop_data_46__2_, out_hop_data_46__1_, out_hop_data_46__0_ }),
    .ready_o(out_hop_ready[46]),
    .yumi_o(node_yumi_o[46]),
    .v_o(out_hop_v[45]),
    .data_o({ out_hop_data_45__31_, out_hop_data_45__30_, out_hop_data_45__29_, out_hop_data_45__28_, out_hop_data_45__27_, out_hop_data_45__26_, out_hop_data_45__25_, out_hop_data_45__24_, out_hop_data_45__23_, out_hop_data_45__22_, out_hop_data_45__21_, out_hop_data_45__20_, out_hop_data_45__19_, out_hop_data_45__18_, out_hop_data_45__17_, out_hop_data_45__16_, out_hop_data_45__15_, out_hop_data_45__14_, out_hop_data_45__13_, out_hop_data_45__12_, out_hop_data_45__11_, out_hop_data_45__10_, out_hop_data_45__9_, out_hop_data_45__8_, out_hop_data_45__7_, out_hop_data_45__6_, out_hop_data_45__5_, out_hop_data_45__4_, out_hop_data_45__3_, out_hop_data_45__2_, out_hop_data_45__1_, out_hop_data_45__0_ }),
    .ready_i(out_hop_ready[45])
  );


  bsg_fsb_murn_gateway_32_46_6_0_0
  \fsb_node_46_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_46_.node_v_int ),
    .data_i(node_data_o[1503:1472]),
    .ready_o(\fsb_node_46_.node_ready_int ),
    .v_o(node_v_o[46]),
    .ready_i(node_ready_i[46]),
    .node_en_r_o(node_en_r_o[46]),
    .node_reset_r_o(node_reset_r_o[46])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_47_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[46]),
    .v_i(in_hop_v[46]),
    .data_i(in_hop_data[1503:1472]),
    .v_o({ \fsb_node_47_.node_v_int , in_hop_v[47:47] }),
    .data_o({ node_data_o[1535:1504], in_hop_data[1535:1504] }),
    .ready_i({ \fsb_node_47_.node_ready_int , in_hop_ready[47:47] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_47_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _238_net__1_, out_hop_v[47:47] }),
    .data_i({ node_data_i[1535:1504], out_hop_data_47__31_, out_hop_data_47__30_, out_hop_data_47__29_, out_hop_data_47__28_, out_hop_data_47__27_, out_hop_data_47__26_, out_hop_data_47__25_, out_hop_data_47__24_, out_hop_data_47__23_, out_hop_data_47__22_, out_hop_data_47__21_, out_hop_data_47__20_, out_hop_data_47__19_, out_hop_data_47__18_, out_hop_data_47__17_, out_hop_data_47__16_, out_hop_data_47__15_, out_hop_data_47__14_, out_hop_data_47__13_, out_hop_data_47__12_, out_hop_data_47__11_, out_hop_data_47__10_, out_hop_data_47__9_, out_hop_data_47__8_, out_hop_data_47__7_, out_hop_data_47__6_, out_hop_data_47__5_, out_hop_data_47__4_, out_hop_data_47__3_, out_hop_data_47__2_, out_hop_data_47__1_, out_hop_data_47__0_ }),
    .ready_o(out_hop_ready[47]),
    .yumi_o(node_yumi_o[47]),
    .v_o(out_hop_v[46]),
    .data_o({ out_hop_data_46__31_, out_hop_data_46__30_, out_hop_data_46__29_, out_hop_data_46__28_, out_hop_data_46__27_, out_hop_data_46__26_, out_hop_data_46__25_, out_hop_data_46__24_, out_hop_data_46__23_, out_hop_data_46__22_, out_hop_data_46__21_, out_hop_data_46__20_, out_hop_data_46__19_, out_hop_data_46__18_, out_hop_data_46__17_, out_hop_data_46__16_, out_hop_data_46__15_, out_hop_data_46__14_, out_hop_data_46__13_, out_hop_data_46__12_, out_hop_data_46__11_, out_hop_data_46__10_, out_hop_data_46__9_, out_hop_data_46__8_, out_hop_data_46__7_, out_hop_data_46__6_, out_hop_data_46__5_, out_hop_data_46__4_, out_hop_data_46__3_, out_hop_data_46__2_, out_hop_data_46__1_, out_hop_data_46__0_ }),
    .ready_i(out_hop_ready[46])
  );


  bsg_fsb_murn_gateway_32_47_6_0_0
  \fsb_node_47_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_47_.node_v_int ),
    .data_i(node_data_o[1535:1504]),
    .ready_o(\fsb_node_47_.node_ready_int ),
    .v_o(node_v_o[47]),
    .ready_i(node_ready_i[47]),
    .node_en_r_o(node_en_r_o[47]),
    .node_reset_r_o(node_reset_r_o[47])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_48_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[47]),
    .v_i(in_hop_v[47]),
    .data_i(in_hop_data[1535:1504]),
    .v_o({ \fsb_node_48_.node_v_int , in_hop_v[48:48] }),
    .data_o({ node_data_o[1567:1536], in_hop_data[1567:1536] }),
    .ready_i({ \fsb_node_48_.node_ready_int , in_hop_ready[48:48] })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_48_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _243_net__1_, out_hop_v[48:48] }),
    .data_i({ node_data_i[1567:1536], out_hop_data_48__31_, out_hop_data_48__30_, out_hop_data_48__29_, out_hop_data_48__28_, out_hop_data_48__27_, out_hop_data_48__26_, out_hop_data_48__25_, out_hop_data_48__24_, out_hop_data_48__23_, out_hop_data_48__22_, out_hop_data_48__21_, out_hop_data_48__20_, out_hop_data_48__19_, out_hop_data_48__18_, out_hop_data_48__17_, out_hop_data_48__16_, out_hop_data_48__15_, out_hop_data_48__14_, out_hop_data_48__13_, out_hop_data_48__12_, out_hop_data_48__11_, out_hop_data_48__10_, out_hop_data_48__9_, out_hop_data_48__8_, out_hop_data_48__7_, out_hop_data_48__6_, out_hop_data_48__5_, out_hop_data_48__4_, out_hop_data_48__3_, out_hop_data_48__2_, out_hop_data_48__1_, out_hop_data_48__0_ }),
    .ready_o(out_hop_ready[48]),
    .yumi_o(node_yumi_o[48]),
    .v_o(out_hop_v[47]),
    .data_o({ out_hop_data_47__31_, out_hop_data_47__30_, out_hop_data_47__29_, out_hop_data_47__28_, out_hop_data_47__27_, out_hop_data_47__26_, out_hop_data_47__25_, out_hop_data_47__24_, out_hop_data_47__23_, out_hop_data_47__22_, out_hop_data_47__21_, out_hop_data_47__20_, out_hop_data_47__19_, out_hop_data_47__18_, out_hop_data_47__17_, out_hop_data_47__16_, out_hop_data_47__15_, out_hop_data_47__14_, out_hop_data_47__13_, out_hop_data_47__12_, out_hop_data_47__11_, out_hop_data_47__10_, out_hop_data_47__9_, out_hop_data_47__8_, out_hop_data_47__7_, out_hop_data_47__6_, out_hop_data_47__5_, out_hop_data_47__4_, out_hop_data_47__3_, out_hop_data_47__2_, out_hop_data_47__1_, out_hop_data_47__0_ }),
    .ready_i(out_hop_ready[47])
  );


  bsg_fsb_murn_gateway_32_48_6_0_0
  \fsb_node_48_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_48_.node_v_int ),
    .data_i(node_data_o[1567:1536]),
    .ready_o(\fsb_node_48_.node_ready_int ),
    .v_o(node_v_o[48]),
    .ready_i(node_ready_i[48]),
    .node_en_r_o(node_en_r_o[48]),
    .node_reset_r_o(node_reset_r_o[48])
  );


  bsg_front_side_bus_hop_in_width_p32_fan_out_p2
  \fsb_node_49_.hopin 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(in_hop_ready[48]),
    .v_i(in_hop_v[48]),
    .data_i(in_hop_data[1567:1536]),
    .v_o({ \fsb_node_49_.node_v_int , in_hop_v[49:49] }),
    .data_o({ node_data_o[1599:1568], in_hop_data[1599:1568] }),
    .ready_i({ \fsb_node_49_.node_ready_int , 1'b1 })
  );


  bsg_front_side_bus_hop_out_width_p32
  \fsb_node_49_.hopout 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i({ _248_net__1_, 1'b0 }),
    .data_i({ node_data_i[1599:1568], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }),
    .ready_o(out_hop_ready[49]),
    .yumi_o(node_yumi_o[49]),
    .v_o(out_hop_v[48]),
    .data_o({ out_hop_data_48__31_, out_hop_data_48__30_, out_hop_data_48__29_, out_hop_data_48__28_, out_hop_data_48__27_, out_hop_data_48__26_, out_hop_data_48__25_, out_hop_data_48__24_, out_hop_data_48__23_, out_hop_data_48__22_, out_hop_data_48__21_, out_hop_data_48__20_, out_hop_data_48__19_, out_hop_data_48__18_, out_hop_data_48__17_, out_hop_data_48__16_, out_hop_data_48__15_, out_hop_data_48__14_, out_hop_data_48__13_, out_hop_data_48__12_, out_hop_data_48__11_, out_hop_data_48__10_, out_hop_data_48__9_, out_hop_data_48__8_, out_hop_data_48__7_, out_hop_data_48__6_, out_hop_data_48__5_, out_hop_data_48__4_, out_hop_data_48__3_, out_hop_data_48__2_, out_hop_data_48__1_, out_hop_data_48__0_ }),
    .ready_i(out_hop_ready[48])
  );


  bsg_fsb_murn_gateway_32_49_6_0_0
  \fsb_node_49_.murn_gateway 
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(\fsb_node_49_.node_v_int ),
    .data_i(node_data_o[1599:1568]),
    .ready_o(\fsb_node_49_.node_ready_int ),
    .v_o(node_v_o[49]),
    .ready_i(node_ready_i[49]),
    .node_en_r_o(node_en_r_o[49]),
    .node_reset_r_o(node_reset_r_o[49])
  );

  assign asm_yumi_o = to_asm_ready & asm_v_i;
  assign _3_net__1_ = node_en_r_o[0] & node_v_i[0];
  assign _8_net__1_ = node_en_r_o[1] & node_v_i[1];
  assign _13_net__1_ = node_en_r_o[2] & node_v_i[2];
  assign _18_net__1_ = node_en_r_o[3] & node_v_i[3];
  assign _23_net__1_ = node_en_r_o[4] & node_v_i[4];
  assign _28_net__1_ = node_en_r_o[5] & node_v_i[5];
  assign _33_net__1_ = node_en_r_o[6] & node_v_i[6];
  assign _38_net__1_ = node_en_r_o[7] & node_v_i[7];
  assign _43_net__1_ = node_en_r_o[8] & node_v_i[8];
  assign _48_net__1_ = node_en_r_o[9] & node_v_i[9];
  assign _53_net__1_ = node_en_r_o[10] & node_v_i[10];
  assign _58_net__1_ = node_en_r_o[11] & node_v_i[11];
  assign _63_net__1_ = node_en_r_o[12] & node_v_i[12];
  assign _68_net__1_ = node_en_r_o[13] & node_v_i[13];
  assign _73_net__1_ = node_en_r_o[14] & node_v_i[14];
  assign _78_net__1_ = node_en_r_o[15] & node_v_i[15];
  assign _83_net__1_ = node_en_r_o[16] & node_v_i[16];
  assign _88_net__1_ = node_en_r_o[17] & node_v_i[17];
  assign _93_net__1_ = node_en_r_o[18] & node_v_i[18];
  assign _98_net__1_ = node_en_r_o[19] & node_v_i[19];
  assign _103_net__1_ = node_en_r_o[20] & node_v_i[20];
  assign _108_net__1_ = node_en_r_o[21] & node_v_i[21];
  assign _113_net__1_ = node_en_r_o[22] & node_v_i[22];
  assign _118_net__1_ = node_en_r_o[23] & node_v_i[23];
  assign _123_net__1_ = node_en_r_o[24] & node_v_i[24];
  assign _128_net__1_ = node_en_r_o[25] & node_v_i[25];
  assign _133_net__1_ = node_en_r_o[26] & node_v_i[26];
  assign _138_net__1_ = node_en_r_o[27] & node_v_i[27];
  assign _143_net__1_ = node_en_r_o[28] & node_v_i[28];
  assign _148_net__1_ = node_en_r_o[29] & node_v_i[29];
  assign _153_net__1_ = node_en_r_o[30] & node_v_i[30];
  assign _158_net__1_ = node_en_r_o[31] & node_v_i[31];
  assign _163_net__1_ = node_en_r_o[32] & node_v_i[32];
  assign _168_net__1_ = node_en_r_o[33] & node_v_i[33];
  assign _173_net__1_ = node_en_r_o[34] & node_v_i[34];
  assign _178_net__1_ = node_en_r_o[35] & node_v_i[35];
  assign _183_net__1_ = node_en_r_o[36] & node_v_i[36];
  assign _188_net__1_ = node_en_r_o[37] & node_v_i[37];
  assign _193_net__1_ = node_en_r_o[38] & node_v_i[38];
  assign _198_net__1_ = node_en_r_o[39] & node_v_i[39];
  assign _203_net__1_ = node_en_r_o[40] & node_v_i[40];
  assign _208_net__1_ = node_en_r_o[41] & node_v_i[41];
  assign _213_net__1_ = node_en_r_o[42] & node_v_i[42];
  assign _218_net__1_ = node_en_r_o[43] & node_v_i[43];
  assign _223_net__1_ = node_en_r_o[44] & node_v_i[44];
  assign _228_net__1_ = node_en_r_o[45] & node_v_i[45];
  assign _233_net__1_ = node_en_r_o[46] & node_v_i[46];
  assign _238_net__1_ = node_en_r_o[47] & node_v_i[47];
  assign _243_net__1_ = node_en_r_o[48] & node_v_i[48];
  assign _248_net__1_ = node_en_r_o[49] & node_v_i[49];

endmodule

