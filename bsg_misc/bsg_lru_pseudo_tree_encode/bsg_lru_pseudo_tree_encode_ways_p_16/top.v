

module top
(
  lru_i,
  way_id_o
);

  input [14:0] lru_i;
  output [3:0] way_id_o;

  bsg_lru_pseudo_tree_encode
  wrapper
  (
    .lru_i(lru_i),
    .way_id_o(way_id_o)
  );


endmodule



module bsg_lru_pseudo_tree_encode
(
  lru_i,
  way_id_o
);

  input [14:0] lru_i;
  output [3:0] way_id_o;
  wire [3:0] way_id_o;
  wire way_id_o_3_;
  assign way_id_o_3_ = lru_i[0];
  assign way_id_o[3] = way_id_o_3_;

  bsg_mux
  \rank_1_.nz.mux 
  (
    .data_i(lru_i[2:1]),
    .sel_i(way_id_o_3_),
    .data_o(way_id_o[2])
  );


  bsg_mux
  \rank_2_.nz.mux 
  (
    .data_i(lru_i[6:3]),
    .sel_i({ way_id_o_3_, way_id_o[2:2] }),
    .data_o(way_id_o[1])
  );


  bsg_mux
  \rank_3_.nz.mux 
  (
    .data_i(lru_i[14:7]),
    .sel_i({ way_id_o_3_, way_id_o[2:1] }),
    .data_o(way_id_o[0])
  );


endmodule

