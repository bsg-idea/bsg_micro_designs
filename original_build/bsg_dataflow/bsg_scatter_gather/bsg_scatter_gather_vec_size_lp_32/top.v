

module top
(
  vec_i,
  fwd_o,
  fwd_datapath_o,
  bk_o,
  bk_datapath_o
);

  input [31:0] vec_i;
  output [159:0] fwd_o;
  output [159:0] fwd_datapath_o;
  output [159:0] bk_o;
  output [159:0] bk_datapath_o;

  bsg_scatter_gather
  wrapper
  (
    .vec_i(vec_i),
    .fwd_o(fwd_o),
    .fwd_datapath_o(fwd_datapath_o),
    .bk_o(bk_o),
    .bk_datapath_o(bk_datapath_o)
  );


endmodule



module bsg_scatter_gather
(
  vec_i,
  fwd_o,
  fwd_datapath_o,
  bk_o,
  bk_datapath_o
);

  input [31:0] vec_i;
  output [159:0] fwd_o;
  output [159:0] fwd_datapath_o;
  output [159:0] bk_o;
  output [159:0] bk_datapath_o;
  wire [159:0] fwd_o,fwd_datapath_o,bk_o,bk_datapath_o;

endmodule

