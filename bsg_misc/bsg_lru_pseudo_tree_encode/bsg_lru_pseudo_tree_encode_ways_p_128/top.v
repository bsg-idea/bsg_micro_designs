

module top
(
  lru_i,
  way_id_o
);

  input [126:0] lru_i;
  output [6:0] way_id_o;

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

  input [126:0] lru_i;
  output [6:0] way_id_o;
  wire [6:0] way_id_o;
  assign way_id_o[6] = lru_i[0];

  bsg_mux
  rank_1__nz_mux
  (
    .data_i(lru_i[2:1]),
    .sel_i(lru_i[0]),
    .data_o(way_id_o[5])
  );


  bsg_mux
  rank_2__nz_mux
  (
    .data_i(lru_i[6:3]),
    .sel_i({ lru_i[0:0], way_id_o[5:5] }),
    .data_o(way_id_o[4])
  );


  bsg_mux
  rank_3__nz_mux
  (
    .data_i(lru_i[14:7]),
    .sel_i({ lru_i[0:0], way_id_o[5:4] }),
    .data_o(way_id_o[3])
  );


  bsg_mux
  rank_4__nz_mux
  (
    .data_i(lru_i[30:15]),
    .sel_i({ lru_i[0:0], way_id_o[5:3] }),
    .data_o(way_id_o[2])
  );


  bsg_mux
  rank_5__nz_mux
  (
    .data_i(lru_i[62:31]),
    .sel_i({ lru_i[0:0], way_id_o[5:2] }),
    .data_o(way_id_o[1])
  );


  bsg_mux
  rank_6__nz_mux
  (
    .data_i(lru_i[126:63]),
    .sel_i({ lru_i[0:0], way_id_o[5:1] }),
    .data_o(way_id_o[0])
  );


endmodule

