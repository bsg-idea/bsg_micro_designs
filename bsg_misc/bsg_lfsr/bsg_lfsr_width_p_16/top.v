

module top
(
  clk,
  reset_i,
  yumi_i,
  o
);

  output [15:0] o;
  input clk;
  input reset_i;
  input yumi_i;

  bsg_lfsr
  wrapper
  (
    .o(o),
    .clk(clk),
    .reset_i(reset_i),
    .yumi_i(yumi_i)
  );


endmodule



module bsg_lfsr
(
  clk,
  reset_i,
  yumi_i,
  o
);

  output [15:0] o;
  input clk;
  input reset_i;
  input yumi_i;
  wire [15:0] o,o_n;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17;
  reg o_15_sv2v_reg,o_14_sv2v_reg,o_13_sv2v_reg,o_12_sv2v_reg,o_11_sv2v_reg,
  o_10_sv2v_reg,o_9_sv2v_reg,o_8_sv2v_reg,o_7_sv2v_reg,o_6_sv2v_reg,o_5_sv2v_reg,
  o_4_sv2v_reg,o_3_sv2v_reg,o_2_sv2v_reg,o_1_sv2v_reg,o_0_sv2v_reg;
  assign o[15] = o_15_sv2v_reg;
  assign o[14] = o_14_sv2v_reg;
  assign o[13] = o_13_sv2v_reg;
  assign o[12] = o_12_sv2v_reg;
  assign o[11] = o_11_sv2v_reg;
  assign o[10] = o_10_sv2v_reg;
  assign o[9] = o_9_sv2v_reg;
  assign o[8] = o_8_sv2v_reg;
  assign o[7] = o_7_sv2v_reg;
  assign o[6] = o_6_sv2v_reg;
  assign o[5] = o_5_sv2v_reg;
  assign o[4] = o_4_sv2v_reg;
  assign o[3] = o_3_sv2v_reg;
  assign o[2] = o_2_sv2v_reg;
  assign o[1] = o_1_sv2v_reg;
  assign o[0] = o_0_sv2v_reg;
  assign N2 = (N0)? 1'b1 : 
              (N1)? 1'b0 : 1'b0;
  assign N0 = yumi_i;
  assign N1 = ~yumi_i;
  assign o_n[15] = o[0] & 1'b0;
  assign o_n[14] = o[15] ^ N3;
  assign N3 = o[0] & 1'b0;
  assign o_n[13] = o[14] ^ N4;
  assign N4 = o[0] & 1'b0;
  assign o_n[12] = o[13] ^ N5;
  assign N5 = o[0] & 1'b0;
  assign o_n[11] = o[12] ^ N6;
  assign N6 = o[0] & 1'b0;
  assign o_n[10] = o[11] ^ N7;
  assign N7 = o[0] & 1'b0;
  assign o_n[9] = o[10] ^ N8;
  assign N8 = o[0] & 1'b0;
  assign o_n[8] = o[9] ^ N9;
  assign N9 = o[0] & 1'b0;
  assign o_n[7] = o[8] ^ N10;
  assign N10 = o[0] & 1'b0;
  assign o_n[6] = o[7] ^ N11;
  assign N11 = o[0] & 1'b0;
  assign o_n[5] = o[6] ^ N12;
  assign N12 = o[0] & 1'b0;
  assign o_n[4] = o[5] ^ N13;
  assign N13 = o[0] & 1'b0;
  assign o_n[3] = o[4] ^ N14;
  assign N14 = o[0] & 1'b0;
  assign o_n[2] = o[3] ^ N15;
  assign N15 = o[0] & 1'b0;
  assign o_n[1] = o[2] ^ N16;
  assign N16 = o[0] & 1'b0;
  assign o_n[0] = o[1] ^ N17;
  assign N17 = o[0] & 1'b0;

  always @(posedge clk) begin
    if(reset_i) begin
      o_15_sv2v_reg <= 1'b0;
      o_14_sv2v_reg <= 1'b0;
      o_13_sv2v_reg <= 1'b0;
      o_12_sv2v_reg <= 1'b0;
      o_11_sv2v_reg <= 1'b0;
      o_10_sv2v_reg <= 1'b0;
      o_9_sv2v_reg <= 1'b0;
      o_8_sv2v_reg <= 1'b0;
      o_7_sv2v_reg <= 1'b0;
      o_6_sv2v_reg <= 1'b0;
      o_5_sv2v_reg <= 1'b0;
      o_4_sv2v_reg <= 1'b0;
      o_3_sv2v_reg <= 1'b0;
      o_2_sv2v_reg <= 1'b0;
      o_1_sv2v_reg <= 1'b0;
      o_0_sv2v_reg <= 1'b1;
    end else if(N2) begin
      o_15_sv2v_reg <= o_n[15];
      o_14_sv2v_reg <= o_n[14];
      o_13_sv2v_reg <= o_n[13];
      o_12_sv2v_reg <= o_n[12];
      o_11_sv2v_reg <= o_n[11];
      o_10_sv2v_reg <= o_n[10];
      o_9_sv2v_reg <= o_n[9];
      o_8_sv2v_reg <= o_n[8];
      o_7_sv2v_reg <= o_n[7];
      o_6_sv2v_reg <= o_n[6];
      o_5_sv2v_reg <= o_n[5];
      o_4_sv2v_reg <= o_n[4];
      o_3_sv2v_reg <= o_n[3];
      o_2_sv2v_reg <= o_n[2];
      o_1_sv2v_reg <= o_n[1];
      o_0_sv2v_reg <= o_n[0];
    end 
  end


endmodule

