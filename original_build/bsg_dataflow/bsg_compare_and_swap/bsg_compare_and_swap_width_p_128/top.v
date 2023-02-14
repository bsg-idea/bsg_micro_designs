

module top
(
  data_i,
  swap_on_equal_i,
  data_o,
  swapped_o
);

  input [255:0] data_i;
  output [255:0] data_o;
  input swap_on_equal_i;
  output swapped_o;

  bsg_compare_and_swap
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .swap_on_equal_i(swap_on_equal_i),
    .swapped_o(swapped_o)
  );


endmodule



module bsg_compare_and_swap
(
  data_i,
  swap_on_equal_i,
  data_o,
  swapped_o
);

  input [255:0] data_i;
  output [255:0] data_o;
  input swap_on_equal_i;
  output swapped_o;
  wire [255:0] data_o;
  wire swapped_o,N0,N1,N2;
  assign swapped_o = data_i[127:0] > data_i[255:128];
  assign data_o = (N0)? { data_i[127:0], data_i[255:128] } : 
                  (N1)? data_i : 1'b0;
  assign N0 = swapped_o;
  assign N1 = N2;
  assign N2 = ~swapped_o;

endmodule

