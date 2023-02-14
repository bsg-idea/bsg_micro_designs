

module top
(
  vec_i,
  fwd_o,
  fwd_datapath_o,
  bk_o,
  bk_datapath_o
);

  input [127:0] vec_i;
  output [895:0] fwd_o;
  output [895:0] fwd_datapath_o;
  output [895:0] bk_o;
  output [895:0] bk_datapath_o;

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

  input [127:0] vec_i;
  output [895:0] fwd_o;
  output [895:0] fwd_datapath_o;
  output [895:0] bk_o;
  output [895:0] bk_datapath_o;
  wire [895:0] fwd_o,fwd_datapath_o,bk_o,bk_datapath_o;

endmodule

