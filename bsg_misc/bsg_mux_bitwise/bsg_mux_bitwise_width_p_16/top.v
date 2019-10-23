

module top
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [15:0] data0_i;
  input [15:0] data1_i;
  input [15:0] sel_i;
  output [15:0] data_o;

  bsg_mux_bitwise
  wrapper
  (
    .data0_i(data0_i),
    .data1_i(data1_i),
    .sel_i(sel_i),
    .data_o(data_o)
  );


endmodule



module bsg_mux_bitwise
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [15:0] data0_i;
  input [15:0] data1_i;
  input [15:0] sel_i;
  output [15:0] data_o;
  wire [15:0] data_o;

  bsg_mux_segmented
  mux_segmented
  (
    .data0_i(data0_i),
    .data1_i(data1_i),
    .sel_i(sel_i),
    .data_o(data_o)
  );


endmodule

