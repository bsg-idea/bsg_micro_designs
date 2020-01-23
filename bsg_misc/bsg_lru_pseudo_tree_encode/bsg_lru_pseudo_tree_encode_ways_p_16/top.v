

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
  assign way_id_o[3] = lru_i[0];

  bsg_mux
  rank_1__nz_mux
  (
    .data_i(lru_i[2:1]),
    .sel_i(lru_i[0]),
    .data_o(way_id_o[2])
  );


  bsg_mux
  rank_2__nz_mux
  (
    .data_i(lru_i[6:3]),
    .sel_i({ lru_i[0:0], way_id_o[2:2] }),
    .data_o(way_id_o[1])
  );


  bsg_mux
  rank_3__nz_mux
  (
    .data_i(lru_i[14:7]),
    .sel_i({ lru_i[0:0], way_id_o[2:1] }),
    .data_o(way_id_o[0])
  );


endmodule

