

module top
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [639:0] data0_i;
  input [639:0] data1_i;
  input [9:0] sel_i;
  output [639:0] data_o;

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

  input [639:0] data0_i;
  input [639:0] data1_i;
  input [9:0] sel_i;
  output [639:0] data_o;
  wire [639:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19;
  assign data_o[63:0] = (N0)? data1_i[63:0] : 
                        (N10)? data0_i[63:0] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[127:64] = (N1)? data1_i[127:64] : 
                          (N11)? data0_i[127:64] : 1'b0;
  assign N1 = sel_i[1];
  assign data_o[191:128] = (N2)? data1_i[191:128] : 
                           (N12)? data0_i[191:128] : 1'b0;
  assign N2 = sel_i[2];
  assign data_o[255:192] = (N3)? data1_i[255:192] : 
                           (N13)? data0_i[255:192] : 1'b0;
  assign N3 = sel_i[3];
  assign data_o[319:256] = (N4)? data1_i[319:256] : 
                           (N14)? data0_i[319:256] : 1'b0;
  assign N4 = sel_i[4];
  assign data_o[383:320] = (N5)? data1_i[383:320] : 
                           (N15)? data0_i[383:320] : 1'b0;
  assign N5 = sel_i[5];
  assign data_o[447:384] = (N6)? data1_i[447:384] : 
                           (N16)? data0_i[447:384] : 1'b0;
  assign N6 = sel_i[6];
  assign data_o[511:448] = (N7)? data1_i[511:448] : 
                           (N17)? data0_i[511:448] : 1'b0;
  assign N7 = sel_i[7];
  assign data_o[575:512] = (N8)? data1_i[575:512] : 
                           (N18)? data0_i[575:512] : 1'b0;
  assign N8 = sel_i[8];
  assign data_o[639:576] = (N9)? data1_i[639:576] : 
                           (N19)? data0_i[639:576] : 1'b0;
  assign N9 = sel_i[9];
  assign N10 = ~sel_i[0];
  assign N11 = ~sel_i[1];
  assign N12 = ~sel_i[2];
  assign N13 = ~sel_i[3];
  assign N14 = ~sel_i[4];
  assign N15 = ~sel_i[5];
  assign N16 = ~sel_i[6];
  assign N17 = ~sel_i[7];
  assign N18 = ~sel_i[8];
  assign N19 = ~sel_i[9];

endmodule

