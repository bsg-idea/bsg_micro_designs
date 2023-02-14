

module top
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [159:0] data0_i;
  input [159:0] data1_i;
  input [4:0] sel_i;
  output [159:0] data_o;

  bsg_mux_segmented
  wrapper
  (
    .data0_i(data0_i),
    .data1_i(data1_i),
    .sel_i(sel_i),
    .data_o(data_o)
  );


endmodule



module bsg_mux_segmented
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [159:0] data0_i;
  input [159:0] data1_i;
  input [4:0] sel_i;
  output [159:0] data_o;
  wire [159:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
  assign data_o[31:0] = (N0)? data1_i[31:0] : 
                        (N5)? data0_i[31:0] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[63:32] = (N1)? data1_i[63:32] : 
                         (N6)? data0_i[63:32] : 1'b0;
  assign N1 = sel_i[1];
  assign data_o[95:64] = (N2)? data1_i[95:64] : 
                         (N7)? data0_i[95:64] : 1'b0;
  assign N2 = sel_i[2];
  assign data_o[127:96] = (N3)? data1_i[127:96] : 
                          (N8)? data0_i[127:96] : 1'b0;
  assign N3 = sel_i[3];
  assign data_o[159:128] = (N4)? data1_i[159:128] : 
                           (N9)? data0_i[159:128] : 1'b0;
  assign N4 = sel_i[4];
  assign N5 = ~sel_i[0];
  assign N6 = ~sel_i[1];
  assign N7 = ~sel_i[2];
  assign N8 = ~sel_i[3];
  assign N9 = ~sel_i[4];

endmodule

