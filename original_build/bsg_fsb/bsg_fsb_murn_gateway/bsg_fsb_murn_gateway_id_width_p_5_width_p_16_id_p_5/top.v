

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

  input [15:0] data_i;
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

  input [15:0] data_i;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  output node_en_r_o;
  output node_reset_r_o;
  wire ready_o,v_o,N0,N1,N2,N3,N4,N5,genblk1_for_this_node,genblk1_for_switch,N6,N7,N8,
  N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,
  N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,
  N49,N50,N51,N52,N53,N54,N55,N56;
  reg node_en_r_o,node_reset_r_o;
  assign N9 = data_i[11] | N23;
  assign N10 = N9 | data_i[9];
  assign N11 = N27 | N10;
  assign N13 = data_i[11] | data_i[10];
  assign N14 = N13 | N17;
  assign N15 = N27 | N14;
  assign N18 = N22 | data_i[10];
  assign N19 = N18 | N17;
  assign N20 = N27 | N19;
  assign N24 = data_i[15] | data_i[14];
  assign N25 = data_i[13] | data_i[12];
  assign N26 = N22 | N23;
  assign N27 = N24 | N25;
  assign N28 = N26 | data_i[9];
  assign N29 = N27 | N28;
  assign N7 = (N0)? 1'b0 : 
              (N1)? N35 : 1'b0;
  assign N0 = reset_i;
  assign N1 = N6;
  assign N8 = (N0)? 1'b1 : 
              (N1)? N36 : 1'b0;
  assign N35 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N34)? node_en_r_o : 1'b0;
  assign N2 = N12;
  assign N3 = N16;
  assign N36 = (N4)? 1'b1 : 
               (N5)? 1'b0 : 
               (N34)? node_reset_r_o : 1'b0;
  assign N4 = N21;
  assign N5 = N30;
  assign genblk1_for_this_node = v_i & 1'b0;
  assign genblk1_for_switch = N49 & 1'b0;
  assign N49 = v_i & 1'b0;
  assign v_o = N50 & N51;
  assign N50 = node_en_r_o & genblk1_for_this_node;
  assign N51 = ~genblk1_for_switch;
  assign ready_o = v_i & N56;
  assign N56 = N54 | N55;
  assign N54 = N53 | genblk1_for_switch;
  assign N53 = N52 | ready_i;
  assign N52 = ~node_en_r_o;
  assign N55 = ~genblk1_for_this_node;
  assign N6 = ~reset_i;
  assign N12 = ~N11;
  assign N16 = ~N15;
  assign N17 = ~data_i[9];
  assign N21 = ~N20;
  assign N22 = ~data_i[11];
  assign N23 = ~data_i[10];
  assign N30 = ~N29;
  assign N31 = N16 | N12;
  assign N32 = N21 | N31;
  assign N33 = N30 | N32;
  assign N34 = ~N33;
  assign N37 = genblk1_for_switch & N6;
  assign N38 = N21 & N37;
  assign N39 = N30 & N37;
  assign N40 = N38 | N39;
  assign N41 = N51 & N6;
  assign N42 = N40 | N41;
  assign N43 = ~N42;
  assign N44 = N12 & N37;
  assign N45 = N16 & N37;
  assign N46 = N44 | N45;
  assign N47 = N46 | N41;
  assign N48 = ~N47;

  always @(posedge clk_i) begin
    if(N43) begin
      node_en_r_o <= N7;
    end 
    if(N48) begin
      node_reset_r_o <= N8;
    end 
  end


endmodule

