

module top
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [2559:0] data0_i;
  input [2559:0] data1_i;
  input [19:0] sel_i;
  output [2559:0] data_o;

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

  input [2559:0] data0_i;
  input [2559:0] data1_i;
  input [19:0] sel_i;
  output [2559:0] data_o;
  wire [2559:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39;
  assign data_o[127:0] = (N0)? data1_i[127:0] : 
                         (N20)? data0_i[127:0] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[255:128] = (N1)? data1_i[255:128] : 
                           (N21)? data0_i[255:128] : 1'b0;
  assign N1 = sel_i[1];
  assign data_o[383:256] = (N2)? data1_i[383:256] : 
                           (N22)? data0_i[383:256] : 1'b0;
  assign N2 = sel_i[2];
  assign data_o[511:384] = (N3)? data1_i[511:384] : 
                           (N23)? data0_i[511:384] : 1'b0;
  assign N3 = sel_i[3];
  assign data_o[639:512] = (N4)? data1_i[639:512] : 
                           (N24)? data0_i[639:512] : 1'b0;
  assign N4 = sel_i[4];
  assign data_o[767:640] = (N5)? data1_i[767:640] : 
                           (N25)? data0_i[767:640] : 1'b0;
  assign N5 = sel_i[5];
  assign data_o[895:768] = (N6)? data1_i[895:768] : 
                           (N26)? data0_i[895:768] : 1'b0;
  assign N6 = sel_i[6];
  assign data_o[1023:896] = (N7)? data1_i[1023:896] : 
                            (N27)? data0_i[1023:896] : 1'b0;
  assign N7 = sel_i[7];
  assign data_o[1151:1024] = (N8)? data1_i[1151:1024] : 
                             (N28)? data0_i[1151:1024] : 1'b0;
  assign N8 = sel_i[8];
  assign data_o[1279:1152] = (N9)? data1_i[1279:1152] : 
                             (N29)? data0_i[1279:1152] : 1'b0;
  assign N9 = sel_i[9];
  assign data_o[1407:1280] = (N10)? data1_i[1407:1280] : 
                             (N30)? data0_i[1407:1280] : 1'b0;
  assign N10 = sel_i[10];
  assign data_o[1535:1408] = (N11)? data1_i[1535:1408] : 
                             (N31)? data0_i[1535:1408] : 1'b0;
  assign N11 = sel_i[11];
  assign data_o[1663:1536] = (N12)? data1_i[1663:1536] : 
                             (N32)? data0_i[1663:1536] : 1'b0;
  assign N12 = sel_i[12];
  assign data_o[1791:1664] = (N13)? data1_i[1791:1664] : 
                             (N33)? data0_i[1791:1664] : 1'b0;
  assign N13 = sel_i[13];
  assign data_o[1919:1792] = (N14)? data1_i[1919:1792] : 
                             (N34)? data0_i[1919:1792] : 1'b0;
  assign N14 = sel_i[14];
  assign data_o[2047:1920] = (N15)? data1_i[2047:1920] : 
                             (N35)? data0_i[2047:1920] : 1'b0;
  assign N15 = sel_i[15];
  assign data_o[2175:2048] = (N16)? data1_i[2175:2048] : 
                             (N36)? data0_i[2175:2048] : 1'b0;
  assign N16 = sel_i[16];
  assign data_o[2303:2176] = (N17)? data1_i[2303:2176] : 
                             (N37)? data0_i[2303:2176] : 1'b0;
  assign N17 = sel_i[17];
  assign data_o[2431:2304] = (N18)? data1_i[2431:2304] : 
                             (N38)? data0_i[2431:2304] : 1'b0;
  assign N18 = sel_i[18];
  assign data_o[2559:2432] = (N19)? data1_i[2559:2432] : 
                             (N39)? data0_i[2559:2432] : 1'b0;
  assign N19 = sel_i[19];
  assign N20 = ~sel_i[0];
  assign N21 = ~sel_i[1];
  assign N22 = ~sel_i[2];
  assign N23 = ~sel_i[3];
  assign N24 = ~sel_i[4];
  assign N25 = ~sel_i[5];
  assign N26 = ~sel_i[6];
  assign N27 = ~sel_i[7];
  assign N28 = ~sel_i[8];
  assign N29 = ~sel_i[9];
  assign N30 = ~sel_i[10];
  assign N31 = ~sel_i[11];
  assign N32 = ~sel_i[12];
  assign N33 = ~sel_i[13];
  assign N34 = ~sel_i[14];
  assign N35 = ~sel_i[15];
  assign N36 = ~sel_i[16];
  assign N37 = ~sel_i[17];
  assign N38 = ~sel_i[18];
  assign N39 = ~sel_i[19];

endmodule

