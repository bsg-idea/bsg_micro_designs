

module top
(
  clk_i,
  reset_i,
  set_i,
  en_i,
  val_i,
  count_o
);

  input [5:0] val_i;
  output [5:0] count_o;
  input clk_i;
  input reset_i;
  input set_i;
  input en_i;

  bsg_counter_set_en
  wrapper
  (
    .val_i(val_i),
    .count_o(count_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .set_i(set_i),
    .en_i(en_i)
  );


endmodule



module bsg_counter_set_en
(
  clk_i,
  reset_i,
  set_i,
  en_i,
  val_i,
  count_o
);

  input [5:0] val_i;
  output [5:0] count_o;
  input clk_i;
  input reset_i;
  input set_i;
  input en_i;
  wire [5:0] count_o;
  wire N0,N1,N4,N5,N6,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N2,N3,N7;
  reg count_o_5_sv2v_reg,count_o_4_sv2v_reg,count_o_3_sv2v_reg,count_o_2_sv2v_reg,
  count_o_1_sv2v_reg,count_o_0_sv2v_reg;
  assign count_o[5] = count_o_5_sv2v_reg;
  assign count_o[4] = count_o_4_sv2v_reg;
  assign count_o[3] = count_o_3_sv2v_reg;
  assign count_o[2] = count_o_2_sv2v_reg;
  assign count_o[1] = count_o_1_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;
  assign { N10, N9, N8, N6, N5, N4 } = count_o + 1'b1;
  assign N16 = (N0)? 1'b1 : 
               (N7)? 1'b1 : 
               (N3)? 1'b0 : 1'b0;
  assign N0 = set_i;
  assign { N17, N15, N14, N13, N12, N11 } = (N0)? val_i : 
                                            (N7)? { N10, N9, N8, N6, N5, N4 } : 1'b0;
  assign N1 = N21;
  assign N18 = ~reset_i;
  assign N19 = ~set_i;
  assign N20 = N18 & N19;
  assign N21 = en_i & N20;
  assign N2 = en_i | set_i;
  assign N3 = ~N2;
  assign N7 = en_i & N19;

  always @(posedge clk_i) begin
    if(reset_i) begin
      count_o_5_sv2v_reg <= 1'b0;
      count_o_4_sv2v_reg <= 1'b0;
      count_o_3_sv2v_reg <= 1'b0;
      count_o_2_sv2v_reg <= 1'b0;
      count_o_1_sv2v_reg <= 1'b0;
      count_o_0_sv2v_reg <= 1'b0;
    end else if(N16) begin
      count_o_5_sv2v_reg <= N17;
      count_o_4_sv2v_reg <= N15;
      count_o_3_sv2v_reg <= N14;
      count_o_2_sv2v_reg <= N13;
      count_o_1_sv2v_reg <= N12;
      count_o_0_sv2v_reg <= N11;
    end 
  end


endmodule

