

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

  input [127:0] data_i;
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

  input [127:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,N0,N1,N2,N3,genblk1_for_this_node,genblk1_for_switch,N4,N5,N6,N7,N8,
  N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,
  N29,N30,N31,N32,N33;
  reg node_en_r_o,node_reset_r_o;
  assign N8 = N7 | N7;
  assign N5 = (N0)? 1'b0 : 
              (N1)? N14 : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign N6 = (N0)? 1'b1 : 
              (N1)? N15 : 1'b0;
  assign N14 = (N2)? 1'b1 : 
               (N2)? 1'b0 : 
               (N13)? node_en_r_o : 1'b0;
  assign N2 = 1'b0;
  assign N15 = (N3)? 1'b1 : 
               (N3)? 1'b0 : 
               (N13)? node_reset_r_o : 1'b0;
  assign N3 = N9;
  assign genblk1_for_this_node = v_i & 1'b0;
  assign genblk1_for_switch = N26 & 1'b0;
  assign N26 = v_i & 1'b0;
  assign v_o = N27 & N28;
  assign N27 = node_en_r_o & genblk1_for_this_node;
  assign N28 = ~genblk1_for_switch;
  assign ready_o = v_i & N33;
  assign N33 = N31 | N32;
  assign N31 = N30 | genblk1_for_switch;
  assign N30 = N29 | ready_i;
  assign N29 = ~node_en_r_o;
  assign N32 = ~genblk1_for_this_node;
  assign N4 = ~reset_i;
  assign N7 = ~1'b0;
  assign N9 = ~N8;
  assign N10 = 1'b0 | 1'b0;
  assign N11 = N9 | N10;
  assign N12 = N9 | N11;
  assign N13 = ~N12;
  assign N16 = genblk1_for_switch & N4;
  assign N17 = N9 & N16;
  assign N18 = N17 | N17;
  assign N19 = N28 & N4;
  assign N20 = N18 | N19;
  assign N21 = ~N20;
  assign N22 = 1'b0 & N16;
  assign N23 = N22 | N22;
  assign N24 = N23 | N19;
  assign N25 = ~N24;

  always @(posedge clk_i) begin
    if(N21) begin
      node_en_r_o <= N5;
    end 
    if(N25) begin
      node_reset_r_o <= N6;
    end 
  end


endmodule

