

module top
(
  way_id_i,
  data_o,
  mask_o
);

  input [4:0] way_id_i;
  output [30:0] data_o;
  output [30:0] mask_o;

  bsg_lru_pseudo_tree_decode
  wrapper
  (
    .way_id_i(way_id_i),
    .data_o(data_o),
    .mask_o(mask_o)
  );


endmodule



module bsg_lru_pseudo_tree_decode
(
  way_id_i,
  data_o,
  mask_o
);

  input [4:0] way_id_i;
  output [30:0] data_o;
  output [30:0] mask_o;
  wire [30:0] data_o,mask_o;
  wire N0,N1,N2,N3,N4;
  assign mask_o[0] = 1'b1;
  assign data_o[0] = 1'b1 & N0;
  assign N0 = ~way_id_i[4];
  assign mask_o[1] = 1'b1 & N0;
  assign data_o[1] = mask_o[1] & N1;
  assign N1 = ~way_id_i[3];
  assign mask_o[2] = 1'b1 & way_id_i[4];
  assign data_o[2] = mask_o[2] & N1;
  assign mask_o[3] = mask_o[1] & N1;
  assign data_o[3] = mask_o[3] & N2;
  assign N2 = ~way_id_i[2];
  assign mask_o[4] = mask_o[1] & way_id_i[3];
  assign data_o[4] = mask_o[4] & N2;
  assign mask_o[5] = mask_o[2] & N1;
  assign data_o[5] = mask_o[5] & N2;
  assign mask_o[6] = mask_o[2] & way_id_i[3];
  assign data_o[6] = mask_o[6] & N2;
  assign mask_o[7] = mask_o[3] & N2;
  assign data_o[7] = mask_o[7] & N3;
  assign N3 = ~way_id_i[1];
  assign mask_o[8] = mask_o[3] & way_id_i[2];
  assign data_o[8] = mask_o[8] & N3;
  assign mask_o[9] = mask_o[4] & N2;
  assign data_o[9] = mask_o[9] & N3;
  assign mask_o[10] = mask_o[4] & way_id_i[2];
  assign data_o[10] = mask_o[10] & N3;
  assign mask_o[11] = mask_o[5] & N2;
  assign data_o[11] = mask_o[11] & N3;
  assign mask_o[12] = mask_o[5] & way_id_i[2];
  assign data_o[12] = mask_o[12] & N3;
  assign mask_o[13] = mask_o[6] & N2;
  assign data_o[13] = mask_o[13] & N3;
  assign mask_o[14] = mask_o[6] & way_id_i[2];
  assign data_o[14] = mask_o[14] & N3;
  assign mask_o[15] = mask_o[7] & N3;
  assign data_o[15] = mask_o[15] & N4;
  assign N4 = ~way_id_i[0];
  assign mask_o[16] = mask_o[7] & way_id_i[1];
  assign data_o[16] = mask_o[16] & N4;
  assign mask_o[17] = mask_o[8] & N3;
  assign data_o[17] = mask_o[17] & N4;
  assign mask_o[18] = mask_o[8] & way_id_i[1];
  assign data_o[18] = mask_o[18] & N4;
  assign mask_o[19] = mask_o[9] & N3;
  assign data_o[19] = mask_o[19] & N4;
  assign mask_o[20] = mask_o[9] & way_id_i[1];
  assign data_o[20] = mask_o[20] & N4;
  assign mask_o[21] = mask_o[10] & N3;
  assign data_o[21] = mask_o[21] & N4;
  assign mask_o[22] = mask_o[10] & way_id_i[1];
  assign data_o[22] = mask_o[22] & N4;
  assign mask_o[23] = mask_o[11] & N3;
  assign data_o[23] = mask_o[23] & N4;
  assign mask_o[24] = mask_o[11] & way_id_i[1];
  assign data_o[24] = mask_o[24] & N4;
  assign mask_o[25] = mask_o[12] & N3;
  assign data_o[25] = mask_o[25] & N4;
  assign mask_o[26] = mask_o[12] & way_id_i[1];
  assign data_o[26] = mask_o[26] & N4;
  assign mask_o[27] = mask_o[13] & N3;
  assign data_o[27] = mask_o[27] & N4;
  assign mask_o[28] = mask_o[13] & way_id_i[1];
  assign data_o[28] = mask_o[28] & N4;
  assign mask_o[29] = mask_o[14] & N3;
  assign data_o[29] = mask_o[29] & N4;
  assign mask_o[30] = mask_o[14] & way_id_i[1];
  assign data_o[30] = mask_o[30] & N4;

endmodule

