

module top
(
  data_i,
  select_i,
  data_o
);

  input [63:0] data_i;
  input [63:0] select_i;
  output [63:0] data_o;

  bsg_permute_box
  wrapper
  (
    .data_i(data_i),
    .select_i(select_i),
    .data_o(data_o)
  );


endmodule



module bsg_permute_box
(
  data_i,
  select_i,
  data_o
);

  input [63:0] data_i;
  input [63:0] select_i;
  output [63:0] data_o;
  wire [63:0] data_o;
  wire N0,N1,N2,N3;
  assign data_o[31] = (N2)? data_i[31] : 
                      (N0)? data_i[63] : 1'b0;
  assign N0 = select_i[0];
  assign data_o[30] = (N2)? data_i[30] : 
                      (N0)? data_i[62] : 1'b0;
  assign data_o[29] = (N2)? data_i[29] : 
                      (N0)? data_i[61] : 1'b0;
  assign data_o[28] = (N2)? data_i[28] : 
                      (N0)? data_i[60] : 1'b0;
  assign data_o[27] = (N2)? data_i[27] : 
                      (N0)? data_i[59] : 1'b0;
  assign data_o[26] = (N2)? data_i[26] : 
                      (N0)? data_i[58] : 1'b0;
  assign data_o[25] = (N2)? data_i[25] : 
                      (N0)? data_i[57] : 1'b0;
  assign data_o[24] = (N2)? data_i[24] : 
                      (N0)? data_i[56] : 1'b0;
  assign data_o[23] = (N2)? data_i[23] : 
                      (N0)? data_i[55] : 1'b0;
  assign data_o[22] = (N2)? data_i[22] : 
                      (N0)? data_i[54] : 1'b0;
  assign data_o[21] = (N2)? data_i[21] : 
                      (N0)? data_i[53] : 1'b0;
  assign data_o[20] = (N2)? data_i[20] : 
                      (N0)? data_i[52] : 1'b0;
  assign data_o[19] = (N2)? data_i[19] : 
                      (N0)? data_i[51] : 1'b0;
  assign data_o[18] = (N2)? data_i[18] : 
                      (N0)? data_i[50] : 1'b0;
  assign data_o[17] = (N2)? data_i[17] : 
                      (N0)? data_i[49] : 1'b0;
  assign data_o[16] = (N2)? data_i[16] : 
                      (N0)? data_i[48] : 1'b0;
  assign data_o[15] = (N2)? data_i[15] : 
                      (N0)? data_i[47] : 1'b0;
  assign data_o[14] = (N2)? data_i[14] : 
                      (N0)? data_i[46] : 1'b0;
  assign data_o[13] = (N2)? data_i[13] : 
                      (N0)? data_i[45] : 1'b0;
  assign data_o[12] = (N2)? data_i[12] : 
                      (N0)? data_i[44] : 1'b0;
  assign data_o[11] = (N2)? data_i[11] : 
                      (N0)? data_i[43] : 1'b0;
  assign data_o[10] = (N2)? data_i[10] : 
                      (N0)? data_i[42] : 1'b0;
  assign data_o[9] = (N2)? data_i[9] : 
                     (N0)? data_i[41] : 1'b0;
  assign data_o[8] = (N2)? data_i[8] : 
                     (N0)? data_i[40] : 1'b0;
  assign data_o[7] = (N2)? data_i[7] : 
                     (N0)? data_i[39] : 1'b0;
  assign data_o[6] = (N2)? data_i[6] : 
                     (N0)? data_i[38] : 1'b0;
  assign data_o[5] = (N2)? data_i[5] : 
                     (N0)? data_i[37] : 1'b0;
  assign data_o[4] = (N2)? data_i[4] : 
                     (N0)? data_i[36] : 1'b0;
  assign data_o[3] = (N2)? data_i[3] : 
                     (N0)? data_i[35] : 1'b0;
  assign data_o[2] = (N2)? data_i[2] : 
                     (N0)? data_i[34] : 1'b0;
  assign data_o[1] = (N2)? data_i[1] : 
                     (N0)? data_i[33] : 1'b0;
  assign data_o[0] = (N2)? data_i[0] : 
                     (N0)? data_i[32] : 1'b0;
  assign data_o[63] = (N3)? data_i[31] : 
                      (N1)? data_i[63] : 1'b0;
  assign N1 = select_i[32];
  assign data_o[62] = (N3)? data_i[30] : 
                      (N1)? data_i[62] : 1'b0;
  assign data_o[61] = (N3)? data_i[29] : 
                      (N1)? data_i[61] : 1'b0;
  assign data_o[60] = (N3)? data_i[28] : 
                      (N1)? data_i[60] : 1'b0;
  assign data_o[59] = (N3)? data_i[27] : 
                      (N1)? data_i[59] : 1'b0;
  assign data_o[58] = (N3)? data_i[26] : 
                      (N1)? data_i[58] : 1'b0;
  assign data_o[57] = (N3)? data_i[25] : 
                      (N1)? data_i[57] : 1'b0;
  assign data_o[56] = (N3)? data_i[24] : 
                      (N1)? data_i[56] : 1'b0;
  assign data_o[55] = (N3)? data_i[23] : 
                      (N1)? data_i[55] : 1'b0;
  assign data_o[54] = (N3)? data_i[22] : 
                      (N1)? data_i[54] : 1'b0;
  assign data_o[53] = (N3)? data_i[21] : 
                      (N1)? data_i[53] : 1'b0;
  assign data_o[52] = (N3)? data_i[20] : 
                      (N1)? data_i[52] : 1'b0;
  assign data_o[51] = (N3)? data_i[19] : 
                      (N1)? data_i[51] : 1'b0;
  assign data_o[50] = (N3)? data_i[18] : 
                      (N1)? data_i[50] : 1'b0;
  assign data_o[49] = (N3)? data_i[17] : 
                      (N1)? data_i[49] : 1'b0;
  assign data_o[48] = (N3)? data_i[16] : 
                      (N1)? data_i[48] : 1'b0;
  assign data_o[47] = (N3)? data_i[15] : 
                      (N1)? data_i[47] : 1'b0;
  assign data_o[46] = (N3)? data_i[14] : 
                      (N1)? data_i[46] : 1'b0;
  assign data_o[45] = (N3)? data_i[13] : 
                      (N1)? data_i[45] : 1'b0;
  assign data_o[44] = (N3)? data_i[12] : 
                      (N1)? data_i[44] : 1'b0;
  assign data_o[43] = (N3)? data_i[11] : 
                      (N1)? data_i[43] : 1'b0;
  assign data_o[42] = (N3)? data_i[10] : 
                      (N1)? data_i[42] : 1'b0;
  assign data_o[41] = (N3)? data_i[9] : 
                      (N1)? data_i[41] : 1'b0;
  assign data_o[40] = (N3)? data_i[8] : 
                      (N1)? data_i[40] : 1'b0;
  assign data_o[39] = (N3)? data_i[7] : 
                      (N1)? data_i[39] : 1'b0;
  assign data_o[38] = (N3)? data_i[6] : 
                      (N1)? data_i[38] : 1'b0;
  assign data_o[37] = (N3)? data_i[5] : 
                      (N1)? data_i[37] : 1'b0;
  assign data_o[36] = (N3)? data_i[4] : 
                      (N1)? data_i[36] : 1'b0;
  assign data_o[35] = (N3)? data_i[3] : 
                      (N1)? data_i[35] : 1'b0;
  assign data_o[34] = (N3)? data_i[2] : 
                      (N1)? data_i[34] : 1'b0;
  assign data_o[33] = (N3)? data_i[1] : 
                      (N1)? data_i[33] : 1'b0;
  assign data_o[32] = (N3)? data_i[0] : 
                      (N1)? data_i[32] : 1'b0;
  assign N2 = ~select_i[0];
  assign N3 = ~select_i[32];

endmodule

