

module top
(
  clk_i,
  reset_i,
  data_i,
  deque_o,
  data_o,
  deque_i
);

  input [63:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input reset_i;
  input deque_i;
  output deque_o;

  bsg_channel_narrow
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .deque_i(deque_i),
    .deque_o(deque_o)
  );


endmodule



module bsg_channel_narrow
(
  clk_i,
  reset_i,
  data_i,
  deque_o,
  data_o,
  deque_i
);

  input [63:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input reset_i;
  input deque_i;
  output deque_o;
  wire [127:0] data_o;
  wire deque_o,deque_i;
  assign data_o[64] = 1'b0;
  assign data_o[65] = 1'b0;
  assign data_o[66] = 1'b0;
  assign data_o[67] = 1'b0;
  assign data_o[68] = 1'b0;
  assign data_o[69] = 1'b0;
  assign data_o[70] = 1'b0;
  assign data_o[71] = 1'b0;
  assign data_o[72] = 1'b0;
  assign data_o[73] = 1'b0;
  assign data_o[74] = 1'b0;
  assign data_o[75] = 1'b0;
  assign data_o[76] = 1'b0;
  assign data_o[77] = 1'b0;
  assign data_o[78] = 1'b0;
  assign data_o[79] = 1'b0;
  assign data_o[80] = 1'b0;
  assign data_o[81] = 1'b0;
  assign data_o[82] = 1'b0;
  assign data_o[83] = 1'b0;
  assign data_o[84] = 1'b0;
  assign data_o[85] = 1'b0;
  assign data_o[86] = 1'b0;
  assign data_o[87] = 1'b0;
  assign data_o[88] = 1'b0;
  assign data_o[89] = 1'b0;
  assign data_o[90] = 1'b0;
  assign data_o[91] = 1'b0;
  assign data_o[92] = 1'b0;
  assign data_o[93] = 1'b0;
  assign data_o[94] = 1'b0;
  assign data_o[95] = 1'b0;
  assign data_o[96] = 1'b0;
  assign data_o[97] = 1'b0;
  assign data_o[98] = 1'b0;
  assign data_o[99] = 1'b0;
  assign data_o[100] = 1'b0;
  assign data_o[101] = 1'b0;
  assign data_o[102] = 1'b0;
  assign data_o[103] = 1'b0;
  assign data_o[104] = 1'b0;
  assign data_o[105] = 1'b0;
  assign data_o[106] = 1'b0;
  assign data_o[107] = 1'b0;
  assign data_o[108] = 1'b0;
  assign data_o[109] = 1'b0;
  assign data_o[110] = 1'b0;
  assign data_o[111] = 1'b0;
  assign data_o[112] = 1'b0;
  assign data_o[113] = 1'b0;
  assign data_o[114] = 1'b0;
  assign data_o[115] = 1'b0;
  assign data_o[116] = 1'b0;
  assign data_o[117] = 1'b0;
  assign data_o[118] = 1'b0;
  assign data_o[119] = 1'b0;
  assign data_o[120] = 1'b0;
  assign data_o[121] = 1'b0;
  assign data_o[122] = 1'b0;
  assign data_o[123] = 1'b0;
  assign data_o[124] = 1'b0;
  assign data_o[125] = 1'b0;
  assign data_o[126] = 1'b0;
  assign data_o[127] = 1'b0;
  assign deque_o = deque_i;
  assign data_o[63] = data_i[63];
  assign data_o[62] = data_i[62];
  assign data_o[61] = data_i[61];
  assign data_o[60] = data_i[60];
  assign data_o[59] = data_i[59];
  assign data_o[58] = data_i[58];
  assign data_o[57] = data_i[57];
  assign data_o[56] = data_i[56];
  assign data_o[55] = data_i[55];
  assign data_o[54] = data_i[54];
  assign data_o[53] = data_i[53];
  assign data_o[52] = data_i[52];
  assign data_o[51] = data_i[51];
  assign data_o[50] = data_i[50];
  assign data_o[49] = data_i[49];
  assign data_o[48] = data_i[48];
  assign data_o[47] = data_i[47];
  assign data_o[46] = data_i[46];
  assign data_o[45] = data_i[45];
  assign data_o[44] = data_i[44];
  assign data_o[43] = data_i[43];
  assign data_o[42] = data_i[42];
  assign data_o[41] = data_i[41];
  assign data_o[40] = data_i[40];
  assign data_o[39] = data_i[39];
  assign data_o[38] = data_i[38];
  assign data_o[37] = data_i[37];
  assign data_o[36] = data_i[36];
  assign data_o[35] = data_i[35];
  assign data_o[34] = data_i[34];
  assign data_o[33] = data_i[33];
  assign data_o[32] = data_i[32];
  assign data_o[31] = data_i[31];
  assign data_o[30] = data_i[30];
  assign data_o[29] = data_i[29];
  assign data_o[28] = data_i[28];
  assign data_o[27] = data_i[27];
  assign data_o[26] = data_i[26];
  assign data_o[25] = data_i[25];
  assign data_o[24] = data_i[24];
  assign data_o[23] = data_i[23];
  assign data_o[22] = data_i[22];
  assign data_o[21] = data_i[21];
  assign data_o[20] = data_i[20];
  assign data_o[19] = data_i[19];
  assign data_o[18] = data_i[18];
  assign data_o[17] = data_i[17];
  assign data_o[16] = data_i[16];
  assign data_o[15] = data_i[15];
  assign data_o[14] = data_i[14];
  assign data_o[13] = data_i[13];
  assign data_o[12] = data_i[12];
  assign data_o[11] = data_i[11];
  assign data_o[10] = data_i[10];
  assign data_o[9] = data_i[9];
  assign data_o[8] = data_i[8];
  assign data_o[7] = data_i[7];
  assign data_o[6] = data_i[6];
  assign data_o[5] = data_i[5];
  assign data_o[4] = data_i[4];
  assign data_o[3] = data_i[3];
  assign data_o[2] = data_i[2];
  assign data_o[1] = data_i[1];
  assign data_o[0] = data_i[0];

endmodule

