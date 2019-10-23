

module top
(
  v_i,
  fc_o,
  v_o,
  fc_i
);

  input [63:0] v_i;
  output [63:0] fc_o;
  output [63:0] v_o;
  input [63:0] fc_i;

  bsg_flow_convert
  wrapper
  (
    .v_i(v_i),
    .fc_o(fc_o),
    .v_o(v_o),
    .fc_i(fc_i)
  );


endmodule



module bsg_flow_convert
(
  v_i,
  fc_o,
  v_o,
  fc_i
);

  input [63:0] v_i;
  output [63:0] fc_o;
  output [63:0] v_o;
  input [63:0] fc_i;
  wire [63:0] fc_o,v_o;
  assign fc_o[63] = fc_i[63];
  assign fc_o[62] = fc_i[62];
  assign fc_o[61] = fc_i[61];
  assign fc_o[60] = fc_i[60];
  assign fc_o[59] = fc_i[59];
  assign fc_o[58] = fc_i[58];
  assign fc_o[57] = fc_i[57];
  assign fc_o[56] = fc_i[56];
  assign fc_o[55] = fc_i[55];
  assign fc_o[54] = fc_i[54];
  assign fc_o[53] = fc_i[53];
  assign fc_o[52] = fc_i[52];
  assign fc_o[51] = fc_i[51];
  assign fc_o[50] = fc_i[50];
  assign fc_o[49] = fc_i[49];
  assign fc_o[48] = fc_i[48];
  assign fc_o[47] = fc_i[47];
  assign fc_o[46] = fc_i[46];
  assign fc_o[45] = fc_i[45];
  assign fc_o[44] = fc_i[44];
  assign fc_o[43] = fc_i[43];
  assign fc_o[42] = fc_i[42];
  assign fc_o[41] = fc_i[41];
  assign fc_o[40] = fc_i[40];
  assign fc_o[39] = fc_i[39];
  assign fc_o[38] = fc_i[38];
  assign fc_o[37] = fc_i[37];
  assign fc_o[36] = fc_i[36];
  assign fc_o[35] = fc_i[35];
  assign fc_o[34] = fc_i[34];
  assign fc_o[33] = fc_i[33];
  assign fc_o[32] = fc_i[32];
  assign fc_o[31] = fc_i[31];
  assign fc_o[30] = fc_i[30];
  assign fc_o[29] = fc_i[29];
  assign fc_o[28] = fc_i[28];
  assign fc_o[27] = fc_i[27];
  assign fc_o[26] = fc_i[26];
  assign fc_o[25] = fc_i[25];
  assign fc_o[24] = fc_i[24];
  assign fc_o[23] = fc_i[23];
  assign fc_o[22] = fc_i[22];
  assign fc_o[21] = fc_i[21];
  assign fc_o[20] = fc_i[20];
  assign fc_o[19] = fc_i[19];
  assign fc_o[18] = fc_i[18];
  assign fc_o[17] = fc_i[17];
  assign fc_o[16] = fc_i[16];
  assign fc_o[15] = fc_i[15];
  assign fc_o[14] = fc_i[14];
  assign fc_o[13] = fc_i[13];
  assign fc_o[12] = fc_i[12];
  assign fc_o[11] = fc_i[11];
  assign fc_o[10] = fc_i[10];
  assign fc_o[9] = fc_i[9];
  assign fc_o[8] = fc_i[8];
  assign fc_o[7] = fc_i[7];
  assign fc_o[6] = fc_i[6];
  assign fc_o[5] = fc_i[5];
  assign fc_o[4] = fc_i[4];
  assign fc_o[3] = fc_i[3];
  assign fc_o[2] = fc_i[2];
  assign fc_o[1] = fc_i[1];
  assign fc_o[0] = fc_i[0];
  assign v_o[63] = v_i[63];
  assign v_o[62] = v_i[62];
  assign v_o[61] = v_i[61];
  assign v_o[60] = v_i[60];
  assign v_o[59] = v_i[59];
  assign v_o[58] = v_i[58];
  assign v_o[57] = v_i[57];
  assign v_o[56] = v_i[56];
  assign v_o[55] = v_i[55];
  assign v_o[54] = v_i[54];
  assign v_o[53] = v_i[53];
  assign v_o[52] = v_i[52];
  assign v_o[51] = v_i[51];
  assign v_o[50] = v_i[50];
  assign v_o[49] = v_i[49];
  assign v_o[48] = v_i[48];
  assign v_o[47] = v_i[47];
  assign v_o[46] = v_i[46];
  assign v_o[45] = v_i[45];
  assign v_o[44] = v_i[44];
  assign v_o[43] = v_i[43];
  assign v_o[42] = v_i[42];
  assign v_o[41] = v_i[41];
  assign v_o[40] = v_i[40];
  assign v_o[39] = v_i[39];
  assign v_o[38] = v_i[38];
  assign v_o[37] = v_i[37];
  assign v_o[36] = v_i[36];
  assign v_o[35] = v_i[35];
  assign v_o[34] = v_i[34];
  assign v_o[33] = v_i[33];
  assign v_o[32] = v_i[32];
  assign v_o[31] = v_i[31];
  assign v_o[30] = v_i[30];
  assign v_o[29] = v_i[29];
  assign v_o[28] = v_i[28];
  assign v_o[27] = v_i[27];
  assign v_o[26] = v_i[26];
  assign v_o[25] = v_i[25];
  assign v_o[24] = v_i[24];
  assign v_o[23] = v_i[23];
  assign v_o[22] = v_i[22];
  assign v_o[21] = v_i[21];
  assign v_o[20] = v_i[20];
  assign v_o[19] = v_i[19];
  assign v_o[18] = v_i[18];
  assign v_o[17] = v_i[17];
  assign v_o[16] = v_i[16];
  assign v_o[15] = v_i[15];
  assign v_o[14] = v_i[14];
  assign v_o[13] = v_i[13];
  assign v_o[12] = v_i[12];
  assign v_o[11] = v_i[11];
  assign v_o[10] = v_i[10];
  assign v_o[9] = v_i[9];
  assign v_o[8] = v_i[8];
  assign v_o[7] = v_i[7];
  assign v_o[6] = v_i[6];
  assign v_o[5] = v_i[5];
  assign v_o[4] = v_i[4];
  assign v_o[3] = v_i[3];
  assign v_o[2] = v_i[2];
  assign v_o[1] = v_i[1];
  assign v_o[0] = v_i[0];

endmodule

