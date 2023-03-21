

module top
(
  lru_i,
  way_id_o
);

  input [30:0] lru_i;
  output [4:0] way_id_o;

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

  input [30:0] lru_i;
  output [4:0] way_id_o;
  wire [4:0] way_id_o;
  wire way_id_o_4_;
  assign way_id_o_4_ = lru_i[0];
  assign way_id_o[4] = way_id_o_4_;

  bsg_mux
  \lru.rank_1_.nz.mux 
  (
    .data_i(lru_i[2:1]),
    .sel_i(way_id_o_4_),
    .data_o(way_id_o[3])
  );


  bsg_mux
  \lru.rank_2_.nz.mux 
  (
    .data_i(lru_i[6:3]),
    .sel_i({ way_id_o_4_, way_id_o[3:3] }),
    .data_o(way_id_o[2])
  );


  bsg_mux
  \lru.rank_3_.nz.mux 
  (
    .data_i(lru_i[14:7]),
    .sel_i({ way_id_o_4_, way_id_o[3:2] }),
    .data_o(way_id_o[1])
  );


  bsg_mux
  \lru.rank_4_.nz.mux 
  (
    .data_i(lru_i[30:15]),
    .sel_i({ way_id_o_4_, way_id_o[3:1] }),
    .data_o(way_id_o[0])
  );


endmodule

