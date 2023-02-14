

module top
(
  clk_i,
  data_i,
  el0_en_i,
  el1_en_i,
  mux0_sel_i,
  mux1_sel_i,
  el0_snoop_o,
  el1_snoop_o,
  data_o
);

  input [31:0] data_i;
  output [31:0] el0_snoop_o;
  output [31:0] el1_snoop_o;
  output [31:0] data_o;
  input clk_i;
  input el0_en_i;
  input el1_en_i;
  input mux0_sel_i;
  input mux1_sel_i;

  bsg_cache_sbuf_queue
  wrapper
  (
    .data_i(data_i),
    .el0_snoop_o(el0_snoop_o),
    .el1_snoop_o(el1_snoop_o),
    .data_o(data_o),
    .clk_i(clk_i),
    .el0_en_i(el0_en_i),
    .el1_en_i(el1_en_i),
    .mux0_sel_i(mux0_sel_i),
    .mux1_sel_i(mux1_sel_i)
  );


endmodule



module bsg_cache_sbuf_queue
(
  clk_i,
  data_i,
  el0_en_i,
  el1_en_i,
  mux0_sel_i,
  mux1_sel_i,
  el0_snoop_o,
  el1_snoop_o,
  data_o
);

  input [31:0] data_i;
  output [31:0] el0_snoop_o;
  output [31:0] el1_snoop_o;
  output [31:0] data_o;
  input clk_i;
  input el0_en_i;
  input el1_en_i;
  input mux0_sel_i;
  input mux1_sel_i;
  wire [31:0] el0_snoop_o,el1_snoop_o,data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37;
  reg el0_snoop_o_31_sv2v_reg,el0_snoop_o_30_sv2v_reg,el0_snoop_o_29_sv2v_reg,
  el0_snoop_o_28_sv2v_reg,el0_snoop_o_27_sv2v_reg,el0_snoop_o_26_sv2v_reg,
  el0_snoop_o_25_sv2v_reg,el0_snoop_o_24_sv2v_reg,el0_snoop_o_23_sv2v_reg,el0_snoop_o_22_sv2v_reg,
  el0_snoop_o_21_sv2v_reg,el0_snoop_o_20_sv2v_reg,el0_snoop_o_19_sv2v_reg,
  el0_snoop_o_18_sv2v_reg,el0_snoop_o_17_sv2v_reg,el0_snoop_o_16_sv2v_reg,
  el0_snoop_o_15_sv2v_reg,el0_snoop_o_14_sv2v_reg,el0_snoop_o_13_sv2v_reg,el0_snoop_o_12_sv2v_reg,
  el0_snoop_o_11_sv2v_reg,el0_snoop_o_10_sv2v_reg,el0_snoop_o_9_sv2v_reg,
  el0_snoop_o_8_sv2v_reg,el0_snoop_o_7_sv2v_reg,el0_snoop_o_6_sv2v_reg,
  el0_snoop_o_5_sv2v_reg,el0_snoop_o_4_sv2v_reg,el0_snoop_o_3_sv2v_reg,el0_snoop_o_2_sv2v_reg,
  el0_snoop_o_1_sv2v_reg,el0_snoop_o_0_sv2v_reg,el1_snoop_o_31_sv2v_reg,
  el1_snoop_o_30_sv2v_reg,el1_snoop_o_29_sv2v_reg,el1_snoop_o_28_sv2v_reg,el1_snoop_o_27_sv2v_reg,
  el1_snoop_o_26_sv2v_reg,el1_snoop_o_25_sv2v_reg,el1_snoop_o_24_sv2v_reg,
  el1_snoop_o_23_sv2v_reg,el1_snoop_o_22_sv2v_reg,el1_snoop_o_21_sv2v_reg,
  el1_snoop_o_20_sv2v_reg,el1_snoop_o_19_sv2v_reg,el1_snoop_o_18_sv2v_reg,el1_snoop_o_17_sv2v_reg,
  el1_snoop_o_16_sv2v_reg,el1_snoop_o_15_sv2v_reg,el1_snoop_o_14_sv2v_reg,
  el1_snoop_o_13_sv2v_reg,el1_snoop_o_12_sv2v_reg,el1_snoop_o_11_sv2v_reg,
  el1_snoop_o_10_sv2v_reg,el1_snoop_o_9_sv2v_reg,el1_snoop_o_8_sv2v_reg,el1_snoop_o_7_sv2v_reg,
  el1_snoop_o_6_sv2v_reg,el1_snoop_o_5_sv2v_reg,el1_snoop_o_4_sv2v_reg,
  el1_snoop_o_3_sv2v_reg,el1_snoop_o_2_sv2v_reg,el1_snoop_o_1_sv2v_reg,el1_snoop_o_0_sv2v_reg;
  assign el0_snoop_o[31] = el0_snoop_o_31_sv2v_reg;
  assign el0_snoop_o[30] = el0_snoop_o_30_sv2v_reg;
  assign el0_snoop_o[29] = el0_snoop_o_29_sv2v_reg;
  assign el0_snoop_o[28] = el0_snoop_o_28_sv2v_reg;
  assign el0_snoop_o[27] = el0_snoop_o_27_sv2v_reg;
  assign el0_snoop_o[26] = el0_snoop_o_26_sv2v_reg;
  assign el0_snoop_o[25] = el0_snoop_o_25_sv2v_reg;
  assign el0_snoop_o[24] = el0_snoop_o_24_sv2v_reg;
  assign el0_snoop_o[23] = el0_snoop_o_23_sv2v_reg;
  assign el0_snoop_o[22] = el0_snoop_o_22_sv2v_reg;
  assign el0_snoop_o[21] = el0_snoop_o_21_sv2v_reg;
  assign el0_snoop_o[20] = el0_snoop_o_20_sv2v_reg;
  assign el0_snoop_o[19] = el0_snoop_o_19_sv2v_reg;
  assign el0_snoop_o[18] = el0_snoop_o_18_sv2v_reg;
  assign el0_snoop_o[17] = el0_snoop_o_17_sv2v_reg;
  assign el0_snoop_o[16] = el0_snoop_o_16_sv2v_reg;
  assign el0_snoop_o[15] = el0_snoop_o_15_sv2v_reg;
  assign el0_snoop_o[14] = el0_snoop_o_14_sv2v_reg;
  assign el0_snoop_o[13] = el0_snoop_o_13_sv2v_reg;
  assign el0_snoop_o[12] = el0_snoop_o_12_sv2v_reg;
  assign el0_snoop_o[11] = el0_snoop_o_11_sv2v_reg;
  assign el0_snoop_o[10] = el0_snoop_o_10_sv2v_reg;
  assign el0_snoop_o[9] = el0_snoop_o_9_sv2v_reg;
  assign el0_snoop_o[8] = el0_snoop_o_8_sv2v_reg;
  assign el0_snoop_o[7] = el0_snoop_o_7_sv2v_reg;
  assign el0_snoop_o[6] = el0_snoop_o_6_sv2v_reg;
  assign el0_snoop_o[5] = el0_snoop_o_5_sv2v_reg;
  assign el0_snoop_o[4] = el0_snoop_o_4_sv2v_reg;
  assign el0_snoop_o[3] = el0_snoop_o_3_sv2v_reg;
  assign el0_snoop_o[2] = el0_snoop_o_2_sv2v_reg;
  assign el0_snoop_o[1] = el0_snoop_o_1_sv2v_reg;
  assign el0_snoop_o[0] = el0_snoop_o_0_sv2v_reg;
  assign el1_snoop_o[31] = el1_snoop_o_31_sv2v_reg;
  assign el1_snoop_o[30] = el1_snoop_o_30_sv2v_reg;
  assign el1_snoop_o[29] = el1_snoop_o_29_sv2v_reg;
  assign el1_snoop_o[28] = el1_snoop_o_28_sv2v_reg;
  assign el1_snoop_o[27] = el1_snoop_o_27_sv2v_reg;
  assign el1_snoop_o[26] = el1_snoop_o_26_sv2v_reg;
  assign el1_snoop_o[25] = el1_snoop_o_25_sv2v_reg;
  assign el1_snoop_o[24] = el1_snoop_o_24_sv2v_reg;
  assign el1_snoop_o[23] = el1_snoop_o_23_sv2v_reg;
  assign el1_snoop_o[22] = el1_snoop_o_22_sv2v_reg;
  assign el1_snoop_o[21] = el1_snoop_o_21_sv2v_reg;
  assign el1_snoop_o[20] = el1_snoop_o_20_sv2v_reg;
  assign el1_snoop_o[19] = el1_snoop_o_19_sv2v_reg;
  assign el1_snoop_o[18] = el1_snoop_o_18_sv2v_reg;
  assign el1_snoop_o[17] = el1_snoop_o_17_sv2v_reg;
  assign el1_snoop_o[16] = el1_snoop_o_16_sv2v_reg;
  assign el1_snoop_o[15] = el1_snoop_o_15_sv2v_reg;
  assign el1_snoop_o[14] = el1_snoop_o_14_sv2v_reg;
  assign el1_snoop_o[13] = el1_snoop_o_13_sv2v_reg;
  assign el1_snoop_o[12] = el1_snoop_o_12_sv2v_reg;
  assign el1_snoop_o[11] = el1_snoop_o_11_sv2v_reg;
  assign el1_snoop_o[10] = el1_snoop_o_10_sv2v_reg;
  assign el1_snoop_o[9] = el1_snoop_o_9_sv2v_reg;
  assign el1_snoop_o[8] = el1_snoop_o_8_sv2v_reg;
  assign el1_snoop_o[7] = el1_snoop_o_7_sv2v_reg;
  assign el1_snoop_o[6] = el1_snoop_o_6_sv2v_reg;
  assign el1_snoop_o[5] = el1_snoop_o_5_sv2v_reg;
  assign el1_snoop_o[4] = el1_snoop_o_4_sv2v_reg;
  assign el1_snoop_o[3] = el1_snoop_o_3_sv2v_reg;
  assign el1_snoop_o[2] = el1_snoop_o_2_sv2v_reg;
  assign el1_snoop_o[1] = el1_snoop_o_1_sv2v_reg;
  assign el1_snoop_o[0] = el1_snoop_o_0_sv2v_reg;
  assign { N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } = (N0)? el0_snoop_o : 
                                                                                                                                                                         (N1)? data_i : 1'b0;
  assign N0 = mux0_sel_i;
  assign N1 = N4;
  assign data_o = (N2)? el1_snoop_o : 
                  (N3)? data_i : 1'b0;
  assign N2 = mux1_sel_i;
  assign N3 = N37;
  assign N4 = ~mux0_sel_i;
  assign N37 = ~mux1_sel_i;

  always @(posedge clk_i) begin
    if(el0_en_i) begin
      el0_snoop_o_31_sv2v_reg <= data_i[31];
      el0_snoop_o_30_sv2v_reg <= data_i[30];
      el0_snoop_o_29_sv2v_reg <= data_i[29];
      el0_snoop_o_28_sv2v_reg <= data_i[28];
      el0_snoop_o_27_sv2v_reg <= data_i[27];
      el0_snoop_o_26_sv2v_reg <= data_i[26];
      el0_snoop_o_25_sv2v_reg <= data_i[25];
      el0_snoop_o_24_sv2v_reg <= data_i[24];
      el0_snoop_o_23_sv2v_reg <= data_i[23];
      el0_snoop_o_22_sv2v_reg <= data_i[22];
      el0_snoop_o_21_sv2v_reg <= data_i[21];
      el0_snoop_o_20_sv2v_reg <= data_i[20];
      el0_snoop_o_19_sv2v_reg <= data_i[19];
      el0_snoop_o_18_sv2v_reg <= data_i[18];
      el0_snoop_o_17_sv2v_reg <= data_i[17];
      el0_snoop_o_16_sv2v_reg <= data_i[16];
      el0_snoop_o_15_sv2v_reg <= data_i[15];
      el0_snoop_o_14_sv2v_reg <= data_i[14];
      el0_snoop_o_13_sv2v_reg <= data_i[13];
      el0_snoop_o_12_sv2v_reg <= data_i[12];
      el0_snoop_o_11_sv2v_reg <= data_i[11];
      el0_snoop_o_10_sv2v_reg <= data_i[10];
      el0_snoop_o_9_sv2v_reg <= data_i[9];
      el0_snoop_o_8_sv2v_reg <= data_i[8];
      el0_snoop_o_7_sv2v_reg <= data_i[7];
      el0_snoop_o_6_sv2v_reg <= data_i[6];
      el0_snoop_o_5_sv2v_reg <= data_i[5];
      el0_snoop_o_4_sv2v_reg <= data_i[4];
      el0_snoop_o_3_sv2v_reg <= data_i[3];
      el0_snoop_o_2_sv2v_reg <= data_i[2];
      el0_snoop_o_1_sv2v_reg <= data_i[1];
      el0_snoop_o_0_sv2v_reg <= data_i[0];
    end 
    if(el1_en_i) begin
      el1_snoop_o_31_sv2v_reg <= N36;
      el1_snoop_o_30_sv2v_reg <= N35;
      el1_snoop_o_29_sv2v_reg <= N34;
      el1_snoop_o_28_sv2v_reg <= N33;
      el1_snoop_o_27_sv2v_reg <= N32;
      el1_snoop_o_26_sv2v_reg <= N31;
      el1_snoop_o_25_sv2v_reg <= N30;
      el1_snoop_o_24_sv2v_reg <= N29;
      el1_snoop_o_23_sv2v_reg <= N28;
      el1_snoop_o_22_sv2v_reg <= N27;
      el1_snoop_o_21_sv2v_reg <= N26;
      el1_snoop_o_20_sv2v_reg <= N25;
      el1_snoop_o_19_sv2v_reg <= N24;
      el1_snoop_o_18_sv2v_reg <= N23;
      el1_snoop_o_17_sv2v_reg <= N22;
      el1_snoop_o_16_sv2v_reg <= N21;
      el1_snoop_o_15_sv2v_reg <= N20;
      el1_snoop_o_14_sv2v_reg <= N19;
      el1_snoop_o_13_sv2v_reg <= N18;
      el1_snoop_o_12_sv2v_reg <= N17;
      el1_snoop_o_11_sv2v_reg <= N16;
      el1_snoop_o_10_sv2v_reg <= N15;
      el1_snoop_o_9_sv2v_reg <= N14;
      el1_snoop_o_8_sv2v_reg <= N13;
      el1_snoop_o_7_sv2v_reg <= N12;
      el1_snoop_o_6_sv2v_reg <= N11;
      el1_snoop_o_5_sv2v_reg <= N10;
      el1_snoop_o_4_sv2v_reg <= N9;
      el1_snoop_o_3_sv2v_reg <= N8;
      el1_snoop_o_2_sv2v_reg <= N7;
      el1_snoop_o_1_sv2v_reg <= N6;
      el1_snoop_o_0_sv2v_reg <= N5;
    end 
  end


endmodule

