

module top
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

  bsg_fsb_murn_gateway
  wrapper
  (
    .data_i(data_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_i(ready_i),
    .ready_o(ready_o),
    .v_o(v_o),
    .node_en_r_o(node_en_r_o),
    .node_reset_r_o(node_reset_r_o)
  );


endmodule



module bsg_fsb_murn_gateway
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
  wire ready_o,v_o,node_en_r_o,node_reset_r_o,N0,N1,\genblk1.for_this_node ,
  \genblk1.for_switch ,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26;
  reg node_en_r_o_sv2v_reg,node_reset_r_o_sv2v_reg;
  assign node_en_r_o = node_en_r_o_sv2v_reg;
  assign node_reset_r_o = node_reset_r_o_sv2v_reg;
  assign N3 = N2 | N2;
  assign N9 = (N0)? 1'b1 : 
              (N0)? 1'b0 : 
              (N8)? node_en_r_o : 1'b0;
  assign N0 = 1'b0;
  assign N10 = (N1)? 1'b1 : 
               (N1)? 1'b0 : 
               (N8)? node_reset_r_o : 1'b0;
  assign N1 = N4;
  assign \genblk1.for_this_node  = v_i & 1'b0;
  assign \genblk1.for_switch  = N19 & 1'b0;
  assign N19 = v_i & 1'b0;
  assign v_o = N20 & N21;
  assign N20 = node_en_r_o & \genblk1.for_this_node ;
  assign N21 = ~\genblk1.for_switch ;
  assign ready_o = v_i & N26;
  assign N26 = N24 | N25;
  assign N24 = N23 | \genblk1.for_switch ;
  assign N23 = N22 | ready_i;
  assign N22 = ~node_en_r_o;
  assign N25 = ~\genblk1.for_this_node ;
  assign N2 = ~1'b0;
  assign N4 = ~N3;
  assign N5 = 1'b0 | 1'b0;
  assign N6 = N4 | N5;
  assign N7 = N4 | N6;
  assign N8 = ~N7;
  assign N11 = N4 & \genblk1.for_switch ;
  assign N12 = N11 | N11;
  assign N13 = N12 | N21;
  assign N14 = ~N13;
  assign N15 = 1'b0 & \genblk1.for_switch ;
  assign N16 = N15 | N15;
  assign N17 = N16 | N21;
  assign N18 = ~N17;

  always @(posedge clk_i) begin
    if(reset_i) begin
      node_en_r_o_sv2v_reg <= 1'b0;
    end else if(N14) begin
      node_en_r_o_sv2v_reg <= N9;
    end 
    if(reset_i) begin
      node_reset_r_o_sv2v_reg <= 1'b1;
    end else if(N18) begin
      node_reset_r_o_sv2v_reg <= N10;
    end 
  end


endmodule

