

module top
(
  v_i,
  fc_o,
  v_o,
  fc_i
);

  input [31:0] v_i;
  output [31:0] fc_o;
  output [31:0] v_o;
  input [31:0] fc_i;

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

  input [31:0] v_i;
  output [31:0] fc_o;
  output [31:0] v_o;
  input [31:0] fc_i;
  wire [31:0] fc_o,v_o;
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

