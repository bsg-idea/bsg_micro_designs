

module top
(
  data_i,
  select_i,
  data_o
);

  input [255:0] data_i;
  input [127:0] select_i;
  output [255:0] data_o;

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

  input [255:0] data_i;
  input [127:0] select_i;
  output [255:0] data_o;
  wire [255:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23;
  assign data_o[63] = (N2)? data_i[63] : 
                      (N4)? data_i[127] : 
                      (N3)? data_i[191] : 
                      (N5)? data_i[255] : 1'b0;
  assign data_o[62] = (N2)? data_i[62] : 
                      (N4)? data_i[126] : 
                      (N3)? data_i[190] : 
                      (N5)? data_i[254] : 1'b0;
  assign data_o[61] = (N2)? data_i[61] : 
                      (N4)? data_i[125] : 
                      (N3)? data_i[189] : 
                      (N5)? data_i[253] : 1'b0;
  assign data_o[60] = (N2)? data_i[60] : 
                      (N4)? data_i[124] : 
                      (N3)? data_i[188] : 
                      (N5)? data_i[252] : 1'b0;
  assign data_o[59] = (N2)? data_i[59] : 
                      (N4)? data_i[123] : 
                      (N3)? data_i[187] : 
                      (N5)? data_i[251] : 1'b0;
  assign data_o[58] = (N2)? data_i[58] : 
                      (N4)? data_i[122] : 
                      (N3)? data_i[186] : 
                      (N5)? data_i[250] : 1'b0;
  assign data_o[57] = (N2)? data_i[57] : 
                      (N4)? data_i[121] : 
                      (N3)? data_i[185] : 
                      (N5)? data_i[249] : 1'b0;
  assign data_o[56] = (N2)? data_i[56] : 
                      (N4)? data_i[120] : 
                      (N3)? data_i[184] : 
                      (N5)? data_i[248] : 1'b0;
  assign data_o[55] = (N2)? data_i[55] : 
                      (N4)? data_i[119] : 
                      (N3)? data_i[183] : 
                      (N5)? data_i[247] : 1'b0;
  assign data_o[54] = (N2)? data_i[54] : 
                      (N4)? data_i[118] : 
                      (N3)? data_i[182] : 
                      (N5)? data_i[246] : 1'b0;
  assign data_o[53] = (N2)? data_i[53] : 
                      (N4)? data_i[117] : 
                      (N3)? data_i[181] : 
                      (N5)? data_i[245] : 1'b0;
  assign data_o[52] = (N2)? data_i[52] : 
                      (N4)? data_i[116] : 
                      (N3)? data_i[180] : 
                      (N5)? data_i[244] : 1'b0;
  assign data_o[51] = (N2)? data_i[51] : 
                      (N4)? data_i[115] : 
                      (N3)? data_i[179] : 
                      (N5)? data_i[243] : 1'b0;
  assign data_o[50] = (N2)? data_i[50] : 
                      (N4)? data_i[114] : 
                      (N3)? data_i[178] : 
                      (N5)? data_i[242] : 1'b0;
  assign data_o[49] = (N2)? data_i[49] : 
                      (N4)? data_i[113] : 
                      (N3)? data_i[177] : 
                      (N5)? data_i[241] : 1'b0;
  assign data_o[48] = (N2)? data_i[48] : 
                      (N4)? data_i[112] : 
                      (N3)? data_i[176] : 
                      (N5)? data_i[240] : 1'b0;
  assign data_o[47] = (N2)? data_i[47] : 
                      (N4)? data_i[111] : 
                      (N3)? data_i[175] : 
                      (N5)? data_i[239] : 1'b0;
  assign data_o[46] = (N2)? data_i[46] : 
                      (N4)? data_i[110] : 
                      (N3)? data_i[174] : 
                      (N5)? data_i[238] : 1'b0;
  assign data_o[45] = (N2)? data_i[45] : 
                      (N4)? data_i[109] : 
                      (N3)? data_i[173] : 
                      (N5)? data_i[237] : 1'b0;
  assign data_o[44] = (N2)? data_i[44] : 
                      (N4)? data_i[108] : 
                      (N3)? data_i[172] : 
                      (N5)? data_i[236] : 1'b0;
  assign data_o[43] = (N2)? data_i[43] : 
                      (N4)? data_i[107] : 
                      (N3)? data_i[171] : 
                      (N5)? data_i[235] : 1'b0;
  assign data_o[42] = (N2)? data_i[42] : 
                      (N4)? data_i[106] : 
                      (N3)? data_i[170] : 
                      (N5)? data_i[234] : 1'b0;
  assign data_o[41] = (N2)? data_i[41] : 
                      (N4)? data_i[105] : 
                      (N3)? data_i[169] : 
                      (N5)? data_i[233] : 1'b0;
  assign data_o[40] = (N2)? data_i[40] : 
                      (N4)? data_i[104] : 
                      (N3)? data_i[168] : 
                      (N5)? data_i[232] : 1'b0;
  assign data_o[39] = (N2)? data_i[39] : 
                      (N4)? data_i[103] : 
                      (N3)? data_i[167] : 
                      (N5)? data_i[231] : 1'b0;
  assign data_o[38] = (N2)? data_i[38] : 
                      (N4)? data_i[102] : 
                      (N3)? data_i[166] : 
                      (N5)? data_i[230] : 1'b0;
  assign data_o[37] = (N2)? data_i[37] : 
                      (N4)? data_i[101] : 
                      (N3)? data_i[165] : 
                      (N5)? data_i[229] : 1'b0;
  assign data_o[36] = (N2)? data_i[36] : 
                      (N4)? data_i[100] : 
                      (N3)? data_i[164] : 
                      (N5)? data_i[228] : 1'b0;
  assign data_o[35] = (N2)? data_i[35] : 
                      (N4)? data_i[99] : 
                      (N3)? data_i[163] : 
                      (N5)? data_i[227] : 1'b0;
  assign data_o[34] = (N2)? data_i[34] : 
                      (N4)? data_i[98] : 
                      (N3)? data_i[162] : 
                      (N5)? data_i[226] : 1'b0;
  assign data_o[33] = (N2)? data_i[33] : 
                      (N4)? data_i[97] : 
                      (N3)? data_i[161] : 
                      (N5)? data_i[225] : 1'b0;
  assign data_o[32] = (N2)? data_i[32] : 
                      (N4)? data_i[96] : 
                      (N3)? data_i[160] : 
                      (N5)? data_i[224] : 1'b0;
  assign data_o[31] = (N2)? data_i[31] : 
                      (N4)? data_i[95] : 
                      (N3)? data_i[159] : 
                      (N5)? data_i[223] : 1'b0;
  assign data_o[30] = (N2)? data_i[30] : 
                      (N4)? data_i[94] : 
                      (N3)? data_i[158] : 
                      (N5)? data_i[222] : 1'b0;
  assign data_o[29] = (N2)? data_i[29] : 
                      (N4)? data_i[93] : 
                      (N3)? data_i[157] : 
                      (N5)? data_i[221] : 1'b0;
  assign data_o[28] = (N2)? data_i[28] : 
                      (N4)? data_i[92] : 
                      (N3)? data_i[156] : 
                      (N5)? data_i[220] : 1'b0;
  assign data_o[27] = (N2)? data_i[27] : 
                      (N4)? data_i[91] : 
                      (N3)? data_i[155] : 
                      (N5)? data_i[219] : 1'b0;
  assign data_o[26] = (N2)? data_i[26] : 
                      (N4)? data_i[90] : 
                      (N3)? data_i[154] : 
                      (N5)? data_i[218] : 1'b0;
  assign data_o[25] = (N2)? data_i[25] : 
                      (N4)? data_i[89] : 
                      (N3)? data_i[153] : 
                      (N5)? data_i[217] : 1'b0;
  assign data_o[24] = (N2)? data_i[24] : 
                      (N4)? data_i[88] : 
                      (N3)? data_i[152] : 
                      (N5)? data_i[216] : 1'b0;
  assign data_o[23] = (N2)? data_i[23] : 
                      (N4)? data_i[87] : 
                      (N3)? data_i[151] : 
                      (N5)? data_i[215] : 1'b0;
  assign data_o[22] = (N2)? data_i[22] : 
                      (N4)? data_i[86] : 
                      (N3)? data_i[150] : 
                      (N5)? data_i[214] : 1'b0;
  assign data_o[21] = (N2)? data_i[21] : 
                      (N4)? data_i[85] : 
                      (N3)? data_i[149] : 
                      (N5)? data_i[213] : 1'b0;
  assign data_o[20] = (N2)? data_i[20] : 
                      (N4)? data_i[84] : 
                      (N3)? data_i[148] : 
                      (N5)? data_i[212] : 1'b0;
  assign data_o[19] = (N2)? data_i[19] : 
                      (N4)? data_i[83] : 
                      (N3)? data_i[147] : 
                      (N5)? data_i[211] : 1'b0;
  assign data_o[18] = (N2)? data_i[18] : 
                      (N4)? data_i[82] : 
                      (N3)? data_i[146] : 
                      (N5)? data_i[210] : 1'b0;
  assign data_o[17] = (N2)? data_i[17] : 
                      (N4)? data_i[81] : 
                      (N3)? data_i[145] : 
                      (N5)? data_i[209] : 1'b0;
  assign data_o[16] = (N2)? data_i[16] : 
                      (N4)? data_i[80] : 
                      (N3)? data_i[144] : 
                      (N5)? data_i[208] : 1'b0;
  assign data_o[15] = (N2)? data_i[15] : 
                      (N4)? data_i[79] : 
                      (N3)? data_i[143] : 
                      (N5)? data_i[207] : 1'b0;
  assign data_o[14] = (N2)? data_i[14] : 
                      (N4)? data_i[78] : 
                      (N3)? data_i[142] : 
                      (N5)? data_i[206] : 1'b0;
  assign data_o[13] = (N2)? data_i[13] : 
                      (N4)? data_i[77] : 
                      (N3)? data_i[141] : 
                      (N5)? data_i[205] : 1'b0;
  assign data_o[12] = (N2)? data_i[12] : 
                      (N4)? data_i[76] : 
                      (N3)? data_i[140] : 
                      (N5)? data_i[204] : 1'b0;
  assign data_o[11] = (N2)? data_i[11] : 
                      (N4)? data_i[75] : 
                      (N3)? data_i[139] : 
                      (N5)? data_i[203] : 1'b0;
  assign data_o[10] = (N2)? data_i[10] : 
                      (N4)? data_i[74] : 
                      (N3)? data_i[138] : 
                      (N5)? data_i[202] : 1'b0;
  assign data_o[9] = (N2)? data_i[9] : 
                     (N4)? data_i[73] : 
                     (N3)? data_i[137] : 
                     (N5)? data_i[201] : 1'b0;
  assign data_o[8] = (N2)? data_i[8] : 
                     (N4)? data_i[72] : 
                     (N3)? data_i[136] : 
                     (N5)? data_i[200] : 1'b0;
  assign data_o[7] = (N2)? data_i[7] : 
                     (N4)? data_i[71] : 
                     (N3)? data_i[135] : 
                     (N5)? data_i[199] : 1'b0;
  assign data_o[6] = (N2)? data_i[6] : 
                     (N4)? data_i[70] : 
                     (N3)? data_i[134] : 
                     (N5)? data_i[198] : 1'b0;
  assign data_o[5] = (N2)? data_i[5] : 
                     (N4)? data_i[69] : 
                     (N3)? data_i[133] : 
                     (N5)? data_i[197] : 1'b0;
  assign data_o[4] = (N2)? data_i[4] : 
                     (N4)? data_i[68] : 
                     (N3)? data_i[132] : 
                     (N5)? data_i[196] : 1'b0;
  assign data_o[3] = (N2)? data_i[3] : 
                     (N4)? data_i[67] : 
                     (N3)? data_i[131] : 
                     (N5)? data_i[195] : 1'b0;
  assign data_o[2] = (N2)? data_i[2] : 
                     (N4)? data_i[66] : 
                     (N3)? data_i[130] : 
                     (N5)? data_i[194] : 1'b0;
  assign data_o[1] = (N2)? data_i[1] : 
                     (N4)? data_i[65] : 
                     (N3)? data_i[129] : 
                     (N5)? data_i[193] : 1'b0;
  assign data_o[0] = (N2)? data_i[0] : 
                     (N4)? data_i[64] : 
                     (N3)? data_i[128] : 
                     (N5)? data_i[192] : 1'b0;
  assign data_o[127] = (N8)? data_i[63] : 
                       (N10)? data_i[127] : 
                       (N9)? data_i[191] : 
                       (N11)? data_i[255] : 1'b0;
  assign data_o[126] = (N8)? data_i[62] : 
                       (N10)? data_i[126] : 
                       (N9)? data_i[190] : 
                       (N11)? data_i[254] : 1'b0;
  assign data_o[125] = (N8)? data_i[61] : 
                       (N10)? data_i[125] : 
                       (N9)? data_i[189] : 
                       (N11)? data_i[253] : 1'b0;
  assign data_o[124] = (N8)? data_i[60] : 
                       (N10)? data_i[124] : 
                       (N9)? data_i[188] : 
                       (N11)? data_i[252] : 1'b0;
  assign data_o[123] = (N8)? data_i[59] : 
                       (N10)? data_i[123] : 
                       (N9)? data_i[187] : 
                       (N11)? data_i[251] : 1'b0;
  assign data_o[122] = (N8)? data_i[58] : 
                       (N10)? data_i[122] : 
                       (N9)? data_i[186] : 
                       (N11)? data_i[250] : 1'b0;
  assign data_o[121] = (N8)? data_i[57] : 
                       (N10)? data_i[121] : 
                       (N9)? data_i[185] : 
                       (N11)? data_i[249] : 1'b0;
  assign data_o[120] = (N8)? data_i[56] : 
                       (N10)? data_i[120] : 
                       (N9)? data_i[184] : 
                       (N11)? data_i[248] : 1'b0;
  assign data_o[119] = (N8)? data_i[55] : 
                       (N10)? data_i[119] : 
                       (N9)? data_i[183] : 
                       (N11)? data_i[247] : 1'b0;
  assign data_o[118] = (N8)? data_i[54] : 
                       (N10)? data_i[118] : 
                       (N9)? data_i[182] : 
                       (N11)? data_i[246] : 1'b0;
  assign data_o[117] = (N8)? data_i[53] : 
                       (N10)? data_i[117] : 
                       (N9)? data_i[181] : 
                       (N11)? data_i[245] : 1'b0;
  assign data_o[116] = (N8)? data_i[52] : 
                       (N10)? data_i[116] : 
                       (N9)? data_i[180] : 
                       (N11)? data_i[244] : 1'b0;
  assign data_o[115] = (N8)? data_i[51] : 
                       (N10)? data_i[115] : 
                       (N9)? data_i[179] : 
                       (N11)? data_i[243] : 1'b0;
  assign data_o[114] = (N8)? data_i[50] : 
                       (N10)? data_i[114] : 
                       (N9)? data_i[178] : 
                       (N11)? data_i[242] : 1'b0;
  assign data_o[113] = (N8)? data_i[49] : 
                       (N10)? data_i[113] : 
                       (N9)? data_i[177] : 
                       (N11)? data_i[241] : 1'b0;
  assign data_o[112] = (N8)? data_i[48] : 
                       (N10)? data_i[112] : 
                       (N9)? data_i[176] : 
                       (N11)? data_i[240] : 1'b0;
  assign data_o[111] = (N8)? data_i[47] : 
                       (N10)? data_i[111] : 
                       (N9)? data_i[175] : 
                       (N11)? data_i[239] : 1'b0;
  assign data_o[110] = (N8)? data_i[46] : 
                       (N10)? data_i[110] : 
                       (N9)? data_i[174] : 
                       (N11)? data_i[238] : 1'b0;
  assign data_o[109] = (N8)? data_i[45] : 
                       (N10)? data_i[109] : 
                       (N9)? data_i[173] : 
                       (N11)? data_i[237] : 1'b0;
  assign data_o[108] = (N8)? data_i[44] : 
                       (N10)? data_i[108] : 
                       (N9)? data_i[172] : 
                       (N11)? data_i[236] : 1'b0;
  assign data_o[107] = (N8)? data_i[43] : 
                       (N10)? data_i[107] : 
                       (N9)? data_i[171] : 
                       (N11)? data_i[235] : 1'b0;
  assign data_o[106] = (N8)? data_i[42] : 
                       (N10)? data_i[106] : 
                       (N9)? data_i[170] : 
                       (N11)? data_i[234] : 1'b0;
  assign data_o[105] = (N8)? data_i[41] : 
                       (N10)? data_i[105] : 
                       (N9)? data_i[169] : 
                       (N11)? data_i[233] : 1'b0;
  assign data_o[104] = (N8)? data_i[40] : 
                       (N10)? data_i[104] : 
                       (N9)? data_i[168] : 
                       (N11)? data_i[232] : 1'b0;
  assign data_o[103] = (N8)? data_i[39] : 
                       (N10)? data_i[103] : 
                       (N9)? data_i[167] : 
                       (N11)? data_i[231] : 1'b0;
  assign data_o[102] = (N8)? data_i[38] : 
                       (N10)? data_i[102] : 
                       (N9)? data_i[166] : 
                       (N11)? data_i[230] : 1'b0;
  assign data_o[101] = (N8)? data_i[37] : 
                       (N10)? data_i[101] : 
                       (N9)? data_i[165] : 
                       (N11)? data_i[229] : 1'b0;
  assign data_o[100] = (N8)? data_i[36] : 
                       (N10)? data_i[100] : 
                       (N9)? data_i[164] : 
                       (N11)? data_i[228] : 1'b0;
  assign data_o[99] = (N8)? data_i[35] : 
                      (N10)? data_i[99] : 
                      (N9)? data_i[163] : 
                      (N11)? data_i[227] : 1'b0;
  assign data_o[98] = (N8)? data_i[34] : 
                      (N10)? data_i[98] : 
                      (N9)? data_i[162] : 
                      (N11)? data_i[226] : 1'b0;
  assign data_o[97] = (N8)? data_i[33] : 
                      (N10)? data_i[97] : 
                      (N9)? data_i[161] : 
                      (N11)? data_i[225] : 1'b0;
  assign data_o[96] = (N8)? data_i[32] : 
                      (N10)? data_i[96] : 
                      (N9)? data_i[160] : 
                      (N11)? data_i[224] : 1'b0;
  assign data_o[95] = (N8)? data_i[31] : 
                      (N10)? data_i[95] : 
                      (N9)? data_i[159] : 
                      (N11)? data_i[223] : 1'b0;
  assign data_o[94] = (N8)? data_i[30] : 
                      (N10)? data_i[94] : 
                      (N9)? data_i[158] : 
                      (N11)? data_i[222] : 1'b0;
  assign data_o[93] = (N8)? data_i[29] : 
                      (N10)? data_i[93] : 
                      (N9)? data_i[157] : 
                      (N11)? data_i[221] : 1'b0;
  assign data_o[92] = (N8)? data_i[28] : 
                      (N10)? data_i[92] : 
                      (N9)? data_i[156] : 
                      (N11)? data_i[220] : 1'b0;
  assign data_o[91] = (N8)? data_i[27] : 
                      (N10)? data_i[91] : 
                      (N9)? data_i[155] : 
                      (N11)? data_i[219] : 1'b0;
  assign data_o[90] = (N8)? data_i[26] : 
                      (N10)? data_i[90] : 
                      (N9)? data_i[154] : 
                      (N11)? data_i[218] : 1'b0;
  assign data_o[89] = (N8)? data_i[25] : 
                      (N10)? data_i[89] : 
                      (N9)? data_i[153] : 
                      (N11)? data_i[217] : 1'b0;
  assign data_o[88] = (N8)? data_i[24] : 
                      (N10)? data_i[88] : 
                      (N9)? data_i[152] : 
                      (N11)? data_i[216] : 1'b0;
  assign data_o[87] = (N8)? data_i[23] : 
                      (N10)? data_i[87] : 
                      (N9)? data_i[151] : 
                      (N11)? data_i[215] : 1'b0;
  assign data_o[86] = (N8)? data_i[22] : 
                      (N10)? data_i[86] : 
                      (N9)? data_i[150] : 
                      (N11)? data_i[214] : 1'b0;
  assign data_o[85] = (N8)? data_i[21] : 
                      (N10)? data_i[85] : 
                      (N9)? data_i[149] : 
                      (N11)? data_i[213] : 1'b0;
  assign data_o[84] = (N8)? data_i[20] : 
                      (N10)? data_i[84] : 
                      (N9)? data_i[148] : 
                      (N11)? data_i[212] : 1'b0;
  assign data_o[83] = (N8)? data_i[19] : 
                      (N10)? data_i[83] : 
                      (N9)? data_i[147] : 
                      (N11)? data_i[211] : 1'b0;
  assign data_o[82] = (N8)? data_i[18] : 
                      (N10)? data_i[82] : 
                      (N9)? data_i[146] : 
                      (N11)? data_i[210] : 1'b0;
  assign data_o[81] = (N8)? data_i[17] : 
                      (N10)? data_i[81] : 
                      (N9)? data_i[145] : 
                      (N11)? data_i[209] : 1'b0;
  assign data_o[80] = (N8)? data_i[16] : 
                      (N10)? data_i[80] : 
                      (N9)? data_i[144] : 
                      (N11)? data_i[208] : 1'b0;
  assign data_o[79] = (N8)? data_i[15] : 
                      (N10)? data_i[79] : 
                      (N9)? data_i[143] : 
                      (N11)? data_i[207] : 1'b0;
  assign data_o[78] = (N8)? data_i[14] : 
                      (N10)? data_i[78] : 
                      (N9)? data_i[142] : 
                      (N11)? data_i[206] : 1'b0;
  assign data_o[77] = (N8)? data_i[13] : 
                      (N10)? data_i[77] : 
                      (N9)? data_i[141] : 
                      (N11)? data_i[205] : 1'b0;
  assign data_o[76] = (N8)? data_i[12] : 
                      (N10)? data_i[76] : 
                      (N9)? data_i[140] : 
                      (N11)? data_i[204] : 1'b0;
  assign data_o[75] = (N8)? data_i[11] : 
                      (N10)? data_i[75] : 
                      (N9)? data_i[139] : 
                      (N11)? data_i[203] : 1'b0;
  assign data_o[74] = (N8)? data_i[10] : 
                      (N10)? data_i[74] : 
                      (N9)? data_i[138] : 
                      (N11)? data_i[202] : 1'b0;
  assign data_o[73] = (N8)? data_i[9] : 
                      (N10)? data_i[73] : 
                      (N9)? data_i[137] : 
                      (N11)? data_i[201] : 1'b0;
  assign data_o[72] = (N8)? data_i[8] : 
                      (N10)? data_i[72] : 
                      (N9)? data_i[136] : 
                      (N11)? data_i[200] : 1'b0;
  assign data_o[71] = (N8)? data_i[7] : 
                      (N10)? data_i[71] : 
                      (N9)? data_i[135] : 
                      (N11)? data_i[199] : 1'b0;
  assign data_o[70] = (N8)? data_i[6] : 
                      (N10)? data_i[70] : 
                      (N9)? data_i[134] : 
                      (N11)? data_i[198] : 1'b0;
  assign data_o[69] = (N8)? data_i[5] : 
                      (N10)? data_i[69] : 
                      (N9)? data_i[133] : 
                      (N11)? data_i[197] : 1'b0;
  assign data_o[68] = (N8)? data_i[4] : 
                      (N10)? data_i[68] : 
                      (N9)? data_i[132] : 
                      (N11)? data_i[196] : 1'b0;
  assign data_o[67] = (N8)? data_i[3] : 
                      (N10)? data_i[67] : 
                      (N9)? data_i[131] : 
                      (N11)? data_i[195] : 1'b0;
  assign data_o[66] = (N8)? data_i[2] : 
                      (N10)? data_i[66] : 
                      (N9)? data_i[130] : 
                      (N11)? data_i[194] : 1'b0;
  assign data_o[65] = (N8)? data_i[1] : 
                      (N10)? data_i[65] : 
                      (N9)? data_i[129] : 
                      (N11)? data_i[193] : 1'b0;
  assign data_o[64] = (N8)? data_i[0] : 
                      (N10)? data_i[64] : 
                      (N9)? data_i[128] : 
                      (N11)? data_i[192] : 1'b0;
  assign data_o[191] = (N14)? data_i[63] : 
                       (N16)? data_i[127] : 
                       (N15)? data_i[191] : 
                       (N17)? data_i[255] : 1'b0;
  assign data_o[190] = (N14)? data_i[62] : 
                       (N16)? data_i[126] : 
                       (N15)? data_i[190] : 
                       (N17)? data_i[254] : 1'b0;
  assign data_o[189] = (N14)? data_i[61] : 
                       (N16)? data_i[125] : 
                       (N15)? data_i[189] : 
                       (N17)? data_i[253] : 1'b0;
  assign data_o[188] = (N14)? data_i[60] : 
                       (N16)? data_i[124] : 
                       (N15)? data_i[188] : 
                       (N17)? data_i[252] : 1'b0;
  assign data_o[187] = (N14)? data_i[59] : 
                       (N16)? data_i[123] : 
                       (N15)? data_i[187] : 
                       (N17)? data_i[251] : 1'b0;
  assign data_o[186] = (N14)? data_i[58] : 
                       (N16)? data_i[122] : 
                       (N15)? data_i[186] : 
                       (N17)? data_i[250] : 1'b0;
  assign data_o[185] = (N14)? data_i[57] : 
                       (N16)? data_i[121] : 
                       (N15)? data_i[185] : 
                       (N17)? data_i[249] : 1'b0;
  assign data_o[184] = (N14)? data_i[56] : 
                       (N16)? data_i[120] : 
                       (N15)? data_i[184] : 
                       (N17)? data_i[248] : 1'b0;
  assign data_o[183] = (N14)? data_i[55] : 
                       (N16)? data_i[119] : 
                       (N15)? data_i[183] : 
                       (N17)? data_i[247] : 1'b0;
  assign data_o[182] = (N14)? data_i[54] : 
                       (N16)? data_i[118] : 
                       (N15)? data_i[182] : 
                       (N17)? data_i[246] : 1'b0;
  assign data_o[181] = (N14)? data_i[53] : 
                       (N16)? data_i[117] : 
                       (N15)? data_i[181] : 
                       (N17)? data_i[245] : 1'b0;
  assign data_o[180] = (N14)? data_i[52] : 
                       (N16)? data_i[116] : 
                       (N15)? data_i[180] : 
                       (N17)? data_i[244] : 1'b0;
  assign data_o[179] = (N14)? data_i[51] : 
                       (N16)? data_i[115] : 
                       (N15)? data_i[179] : 
                       (N17)? data_i[243] : 1'b0;
  assign data_o[178] = (N14)? data_i[50] : 
                       (N16)? data_i[114] : 
                       (N15)? data_i[178] : 
                       (N17)? data_i[242] : 1'b0;
  assign data_o[177] = (N14)? data_i[49] : 
                       (N16)? data_i[113] : 
                       (N15)? data_i[177] : 
                       (N17)? data_i[241] : 1'b0;
  assign data_o[176] = (N14)? data_i[48] : 
                       (N16)? data_i[112] : 
                       (N15)? data_i[176] : 
                       (N17)? data_i[240] : 1'b0;
  assign data_o[175] = (N14)? data_i[47] : 
                       (N16)? data_i[111] : 
                       (N15)? data_i[175] : 
                       (N17)? data_i[239] : 1'b0;
  assign data_o[174] = (N14)? data_i[46] : 
                       (N16)? data_i[110] : 
                       (N15)? data_i[174] : 
                       (N17)? data_i[238] : 1'b0;
  assign data_o[173] = (N14)? data_i[45] : 
                       (N16)? data_i[109] : 
                       (N15)? data_i[173] : 
                       (N17)? data_i[237] : 1'b0;
  assign data_o[172] = (N14)? data_i[44] : 
                       (N16)? data_i[108] : 
                       (N15)? data_i[172] : 
                       (N17)? data_i[236] : 1'b0;
  assign data_o[171] = (N14)? data_i[43] : 
                       (N16)? data_i[107] : 
                       (N15)? data_i[171] : 
                       (N17)? data_i[235] : 1'b0;
  assign data_o[170] = (N14)? data_i[42] : 
                       (N16)? data_i[106] : 
                       (N15)? data_i[170] : 
                       (N17)? data_i[234] : 1'b0;
  assign data_o[169] = (N14)? data_i[41] : 
                       (N16)? data_i[105] : 
                       (N15)? data_i[169] : 
                       (N17)? data_i[233] : 1'b0;
  assign data_o[168] = (N14)? data_i[40] : 
                       (N16)? data_i[104] : 
                       (N15)? data_i[168] : 
                       (N17)? data_i[232] : 1'b0;
  assign data_o[167] = (N14)? data_i[39] : 
                       (N16)? data_i[103] : 
                       (N15)? data_i[167] : 
                       (N17)? data_i[231] : 1'b0;
  assign data_o[166] = (N14)? data_i[38] : 
                       (N16)? data_i[102] : 
                       (N15)? data_i[166] : 
                       (N17)? data_i[230] : 1'b0;
  assign data_o[165] = (N14)? data_i[37] : 
                       (N16)? data_i[101] : 
                       (N15)? data_i[165] : 
                       (N17)? data_i[229] : 1'b0;
  assign data_o[164] = (N14)? data_i[36] : 
                       (N16)? data_i[100] : 
                       (N15)? data_i[164] : 
                       (N17)? data_i[228] : 1'b0;
  assign data_o[163] = (N14)? data_i[35] : 
                       (N16)? data_i[99] : 
                       (N15)? data_i[163] : 
                       (N17)? data_i[227] : 1'b0;
  assign data_o[162] = (N14)? data_i[34] : 
                       (N16)? data_i[98] : 
                       (N15)? data_i[162] : 
                       (N17)? data_i[226] : 1'b0;
  assign data_o[161] = (N14)? data_i[33] : 
                       (N16)? data_i[97] : 
                       (N15)? data_i[161] : 
                       (N17)? data_i[225] : 1'b0;
  assign data_o[160] = (N14)? data_i[32] : 
                       (N16)? data_i[96] : 
                       (N15)? data_i[160] : 
                       (N17)? data_i[224] : 1'b0;
  assign data_o[159] = (N14)? data_i[31] : 
                       (N16)? data_i[95] : 
                       (N15)? data_i[159] : 
                       (N17)? data_i[223] : 1'b0;
  assign data_o[158] = (N14)? data_i[30] : 
                       (N16)? data_i[94] : 
                       (N15)? data_i[158] : 
                       (N17)? data_i[222] : 1'b0;
  assign data_o[157] = (N14)? data_i[29] : 
                       (N16)? data_i[93] : 
                       (N15)? data_i[157] : 
                       (N17)? data_i[221] : 1'b0;
  assign data_o[156] = (N14)? data_i[28] : 
                       (N16)? data_i[92] : 
                       (N15)? data_i[156] : 
                       (N17)? data_i[220] : 1'b0;
  assign data_o[155] = (N14)? data_i[27] : 
                       (N16)? data_i[91] : 
                       (N15)? data_i[155] : 
                       (N17)? data_i[219] : 1'b0;
  assign data_o[154] = (N14)? data_i[26] : 
                       (N16)? data_i[90] : 
                       (N15)? data_i[154] : 
                       (N17)? data_i[218] : 1'b0;
  assign data_o[153] = (N14)? data_i[25] : 
                       (N16)? data_i[89] : 
                       (N15)? data_i[153] : 
                       (N17)? data_i[217] : 1'b0;
  assign data_o[152] = (N14)? data_i[24] : 
                       (N16)? data_i[88] : 
                       (N15)? data_i[152] : 
                       (N17)? data_i[216] : 1'b0;
  assign data_o[151] = (N14)? data_i[23] : 
                       (N16)? data_i[87] : 
                       (N15)? data_i[151] : 
                       (N17)? data_i[215] : 1'b0;
  assign data_o[150] = (N14)? data_i[22] : 
                       (N16)? data_i[86] : 
                       (N15)? data_i[150] : 
                       (N17)? data_i[214] : 1'b0;
  assign data_o[149] = (N14)? data_i[21] : 
                       (N16)? data_i[85] : 
                       (N15)? data_i[149] : 
                       (N17)? data_i[213] : 1'b0;
  assign data_o[148] = (N14)? data_i[20] : 
                       (N16)? data_i[84] : 
                       (N15)? data_i[148] : 
                       (N17)? data_i[212] : 1'b0;
  assign data_o[147] = (N14)? data_i[19] : 
                       (N16)? data_i[83] : 
                       (N15)? data_i[147] : 
                       (N17)? data_i[211] : 1'b0;
  assign data_o[146] = (N14)? data_i[18] : 
                       (N16)? data_i[82] : 
                       (N15)? data_i[146] : 
                       (N17)? data_i[210] : 1'b0;
  assign data_o[145] = (N14)? data_i[17] : 
                       (N16)? data_i[81] : 
                       (N15)? data_i[145] : 
                       (N17)? data_i[209] : 1'b0;
  assign data_o[144] = (N14)? data_i[16] : 
                       (N16)? data_i[80] : 
                       (N15)? data_i[144] : 
                       (N17)? data_i[208] : 1'b0;
  assign data_o[143] = (N14)? data_i[15] : 
                       (N16)? data_i[79] : 
                       (N15)? data_i[143] : 
                       (N17)? data_i[207] : 1'b0;
  assign data_o[142] = (N14)? data_i[14] : 
                       (N16)? data_i[78] : 
                       (N15)? data_i[142] : 
                       (N17)? data_i[206] : 1'b0;
  assign data_o[141] = (N14)? data_i[13] : 
                       (N16)? data_i[77] : 
                       (N15)? data_i[141] : 
                       (N17)? data_i[205] : 1'b0;
  assign data_o[140] = (N14)? data_i[12] : 
                       (N16)? data_i[76] : 
                       (N15)? data_i[140] : 
                       (N17)? data_i[204] : 1'b0;
  assign data_o[139] = (N14)? data_i[11] : 
                       (N16)? data_i[75] : 
                       (N15)? data_i[139] : 
                       (N17)? data_i[203] : 1'b0;
  assign data_o[138] = (N14)? data_i[10] : 
                       (N16)? data_i[74] : 
                       (N15)? data_i[138] : 
                       (N17)? data_i[202] : 1'b0;
  assign data_o[137] = (N14)? data_i[9] : 
                       (N16)? data_i[73] : 
                       (N15)? data_i[137] : 
                       (N17)? data_i[201] : 1'b0;
  assign data_o[136] = (N14)? data_i[8] : 
                       (N16)? data_i[72] : 
                       (N15)? data_i[136] : 
                       (N17)? data_i[200] : 1'b0;
  assign data_o[135] = (N14)? data_i[7] : 
                       (N16)? data_i[71] : 
                       (N15)? data_i[135] : 
                       (N17)? data_i[199] : 1'b0;
  assign data_o[134] = (N14)? data_i[6] : 
                       (N16)? data_i[70] : 
                       (N15)? data_i[134] : 
                       (N17)? data_i[198] : 1'b0;
  assign data_o[133] = (N14)? data_i[5] : 
                       (N16)? data_i[69] : 
                       (N15)? data_i[133] : 
                       (N17)? data_i[197] : 1'b0;
  assign data_o[132] = (N14)? data_i[4] : 
                       (N16)? data_i[68] : 
                       (N15)? data_i[132] : 
                       (N17)? data_i[196] : 1'b0;
  assign data_o[131] = (N14)? data_i[3] : 
                       (N16)? data_i[67] : 
                       (N15)? data_i[131] : 
                       (N17)? data_i[195] : 1'b0;
  assign data_o[130] = (N14)? data_i[2] : 
                       (N16)? data_i[66] : 
                       (N15)? data_i[130] : 
                       (N17)? data_i[194] : 1'b0;
  assign data_o[129] = (N14)? data_i[1] : 
                       (N16)? data_i[65] : 
                       (N15)? data_i[129] : 
                       (N17)? data_i[193] : 1'b0;
  assign data_o[128] = (N14)? data_i[0] : 
                       (N16)? data_i[64] : 
                       (N15)? data_i[128] : 
                       (N17)? data_i[192] : 1'b0;
  assign data_o[255] = (N20)? data_i[63] : 
                       (N22)? data_i[127] : 
                       (N21)? data_i[191] : 
                       (N23)? data_i[255] : 1'b0;
  assign data_o[254] = (N20)? data_i[62] : 
                       (N22)? data_i[126] : 
                       (N21)? data_i[190] : 
                       (N23)? data_i[254] : 1'b0;
  assign data_o[253] = (N20)? data_i[61] : 
                       (N22)? data_i[125] : 
                       (N21)? data_i[189] : 
                       (N23)? data_i[253] : 1'b0;
  assign data_o[252] = (N20)? data_i[60] : 
                       (N22)? data_i[124] : 
                       (N21)? data_i[188] : 
                       (N23)? data_i[252] : 1'b0;
  assign data_o[251] = (N20)? data_i[59] : 
                       (N22)? data_i[123] : 
                       (N21)? data_i[187] : 
                       (N23)? data_i[251] : 1'b0;
  assign data_o[250] = (N20)? data_i[58] : 
                       (N22)? data_i[122] : 
                       (N21)? data_i[186] : 
                       (N23)? data_i[250] : 1'b0;
  assign data_o[249] = (N20)? data_i[57] : 
                       (N22)? data_i[121] : 
                       (N21)? data_i[185] : 
                       (N23)? data_i[249] : 1'b0;
  assign data_o[248] = (N20)? data_i[56] : 
                       (N22)? data_i[120] : 
                       (N21)? data_i[184] : 
                       (N23)? data_i[248] : 1'b0;
  assign data_o[247] = (N20)? data_i[55] : 
                       (N22)? data_i[119] : 
                       (N21)? data_i[183] : 
                       (N23)? data_i[247] : 1'b0;
  assign data_o[246] = (N20)? data_i[54] : 
                       (N22)? data_i[118] : 
                       (N21)? data_i[182] : 
                       (N23)? data_i[246] : 1'b0;
  assign data_o[245] = (N20)? data_i[53] : 
                       (N22)? data_i[117] : 
                       (N21)? data_i[181] : 
                       (N23)? data_i[245] : 1'b0;
  assign data_o[244] = (N20)? data_i[52] : 
                       (N22)? data_i[116] : 
                       (N21)? data_i[180] : 
                       (N23)? data_i[244] : 1'b0;
  assign data_o[243] = (N20)? data_i[51] : 
                       (N22)? data_i[115] : 
                       (N21)? data_i[179] : 
                       (N23)? data_i[243] : 1'b0;
  assign data_o[242] = (N20)? data_i[50] : 
                       (N22)? data_i[114] : 
                       (N21)? data_i[178] : 
                       (N23)? data_i[242] : 1'b0;
  assign data_o[241] = (N20)? data_i[49] : 
                       (N22)? data_i[113] : 
                       (N21)? data_i[177] : 
                       (N23)? data_i[241] : 1'b0;
  assign data_o[240] = (N20)? data_i[48] : 
                       (N22)? data_i[112] : 
                       (N21)? data_i[176] : 
                       (N23)? data_i[240] : 1'b0;
  assign data_o[239] = (N20)? data_i[47] : 
                       (N22)? data_i[111] : 
                       (N21)? data_i[175] : 
                       (N23)? data_i[239] : 1'b0;
  assign data_o[238] = (N20)? data_i[46] : 
                       (N22)? data_i[110] : 
                       (N21)? data_i[174] : 
                       (N23)? data_i[238] : 1'b0;
  assign data_o[237] = (N20)? data_i[45] : 
                       (N22)? data_i[109] : 
                       (N21)? data_i[173] : 
                       (N23)? data_i[237] : 1'b0;
  assign data_o[236] = (N20)? data_i[44] : 
                       (N22)? data_i[108] : 
                       (N21)? data_i[172] : 
                       (N23)? data_i[236] : 1'b0;
  assign data_o[235] = (N20)? data_i[43] : 
                       (N22)? data_i[107] : 
                       (N21)? data_i[171] : 
                       (N23)? data_i[235] : 1'b0;
  assign data_o[234] = (N20)? data_i[42] : 
                       (N22)? data_i[106] : 
                       (N21)? data_i[170] : 
                       (N23)? data_i[234] : 1'b0;
  assign data_o[233] = (N20)? data_i[41] : 
                       (N22)? data_i[105] : 
                       (N21)? data_i[169] : 
                       (N23)? data_i[233] : 1'b0;
  assign data_o[232] = (N20)? data_i[40] : 
                       (N22)? data_i[104] : 
                       (N21)? data_i[168] : 
                       (N23)? data_i[232] : 1'b0;
  assign data_o[231] = (N20)? data_i[39] : 
                       (N22)? data_i[103] : 
                       (N21)? data_i[167] : 
                       (N23)? data_i[231] : 1'b0;
  assign data_o[230] = (N20)? data_i[38] : 
                       (N22)? data_i[102] : 
                       (N21)? data_i[166] : 
                       (N23)? data_i[230] : 1'b0;
  assign data_o[229] = (N20)? data_i[37] : 
                       (N22)? data_i[101] : 
                       (N21)? data_i[165] : 
                       (N23)? data_i[229] : 1'b0;
  assign data_o[228] = (N20)? data_i[36] : 
                       (N22)? data_i[100] : 
                       (N21)? data_i[164] : 
                       (N23)? data_i[228] : 1'b0;
  assign data_o[227] = (N20)? data_i[35] : 
                       (N22)? data_i[99] : 
                       (N21)? data_i[163] : 
                       (N23)? data_i[227] : 1'b0;
  assign data_o[226] = (N20)? data_i[34] : 
                       (N22)? data_i[98] : 
                       (N21)? data_i[162] : 
                       (N23)? data_i[226] : 1'b0;
  assign data_o[225] = (N20)? data_i[33] : 
                       (N22)? data_i[97] : 
                       (N21)? data_i[161] : 
                       (N23)? data_i[225] : 1'b0;
  assign data_o[224] = (N20)? data_i[32] : 
                       (N22)? data_i[96] : 
                       (N21)? data_i[160] : 
                       (N23)? data_i[224] : 1'b0;
  assign data_o[223] = (N20)? data_i[31] : 
                       (N22)? data_i[95] : 
                       (N21)? data_i[159] : 
                       (N23)? data_i[223] : 1'b0;
  assign data_o[222] = (N20)? data_i[30] : 
                       (N22)? data_i[94] : 
                       (N21)? data_i[158] : 
                       (N23)? data_i[222] : 1'b0;
  assign data_o[221] = (N20)? data_i[29] : 
                       (N22)? data_i[93] : 
                       (N21)? data_i[157] : 
                       (N23)? data_i[221] : 1'b0;
  assign data_o[220] = (N20)? data_i[28] : 
                       (N22)? data_i[92] : 
                       (N21)? data_i[156] : 
                       (N23)? data_i[220] : 1'b0;
  assign data_o[219] = (N20)? data_i[27] : 
                       (N22)? data_i[91] : 
                       (N21)? data_i[155] : 
                       (N23)? data_i[219] : 1'b0;
  assign data_o[218] = (N20)? data_i[26] : 
                       (N22)? data_i[90] : 
                       (N21)? data_i[154] : 
                       (N23)? data_i[218] : 1'b0;
  assign data_o[217] = (N20)? data_i[25] : 
                       (N22)? data_i[89] : 
                       (N21)? data_i[153] : 
                       (N23)? data_i[217] : 1'b0;
  assign data_o[216] = (N20)? data_i[24] : 
                       (N22)? data_i[88] : 
                       (N21)? data_i[152] : 
                       (N23)? data_i[216] : 1'b0;
  assign data_o[215] = (N20)? data_i[23] : 
                       (N22)? data_i[87] : 
                       (N21)? data_i[151] : 
                       (N23)? data_i[215] : 1'b0;
  assign data_o[214] = (N20)? data_i[22] : 
                       (N22)? data_i[86] : 
                       (N21)? data_i[150] : 
                       (N23)? data_i[214] : 1'b0;
  assign data_o[213] = (N20)? data_i[21] : 
                       (N22)? data_i[85] : 
                       (N21)? data_i[149] : 
                       (N23)? data_i[213] : 1'b0;
  assign data_o[212] = (N20)? data_i[20] : 
                       (N22)? data_i[84] : 
                       (N21)? data_i[148] : 
                       (N23)? data_i[212] : 1'b0;
  assign data_o[211] = (N20)? data_i[19] : 
                       (N22)? data_i[83] : 
                       (N21)? data_i[147] : 
                       (N23)? data_i[211] : 1'b0;
  assign data_o[210] = (N20)? data_i[18] : 
                       (N22)? data_i[82] : 
                       (N21)? data_i[146] : 
                       (N23)? data_i[210] : 1'b0;
  assign data_o[209] = (N20)? data_i[17] : 
                       (N22)? data_i[81] : 
                       (N21)? data_i[145] : 
                       (N23)? data_i[209] : 1'b0;
  assign data_o[208] = (N20)? data_i[16] : 
                       (N22)? data_i[80] : 
                       (N21)? data_i[144] : 
                       (N23)? data_i[208] : 1'b0;
  assign data_o[207] = (N20)? data_i[15] : 
                       (N22)? data_i[79] : 
                       (N21)? data_i[143] : 
                       (N23)? data_i[207] : 1'b0;
  assign data_o[206] = (N20)? data_i[14] : 
                       (N22)? data_i[78] : 
                       (N21)? data_i[142] : 
                       (N23)? data_i[206] : 1'b0;
  assign data_o[205] = (N20)? data_i[13] : 
                       (N22)? data_i[77] : 
                       (N21)? data_i[141] : 
                       (N23)? data_i[205] : 1'b0;
  assign data_o[204] = (N20)? data_i[12] : 
                       (N22)? data_i[76] : 
                       (N21)? data_i[140] : 
                       (N23)? data_i[204] : 1'b0;
  assign data_o[203] = (N20)? data_i[11] : 
                       (N22)? data_i[75] : 
                       (N21)? data_i[139] : 
                       (N23)? data_i[203] : 1'b0;
  assign data_o[202] = (N20)? data_i[10] : 
                       (N22)? data_i[74] : 
                       (N21)? data_i[138] : 
                       (N23)? data_i[202] : 1'b0;
  assign data_o[201] = (N20)? data_i[9] : 
                       (N22)? data_i[73] : 
                       (N21)? data_i[137] : 
                       (N23)? data_i[201] : 1'b0;
  assign data_o[200] = (N20)? data_i[8] : 
                       (N22)? data_i[72] : 
                       (N21)? data_i[136] : 
                       (N23)? data_i[200] : 1'b0;
  assign data_o[199] = (N20)? data_i[7] : 
                       (N22)? data_i[71] : 
                       (N21)? data_i[135] : 
                       (N23)? data_i[199] : 1'b0;
  assign data_o[198] = (N20)? data_i[6] : 
                       (N22)? data_i[70] : 
                       (N21)? data_i[134] : 
                       (N23)? data_i[198] : 1'b0;
  assign data_o[197] = (N20)? data_i[5] : 
                       (N22)? data_i[69] : 
                       (N21)? data_i[133] : 
                       (N23)? data_i[197] : 1'b0;
  assign data_o[196] = (N20)? data_i[4] : 
                       (N22)? data_i[68] : 
                       (N21)? data_i[132] : 
                       (N23)? data_i[196] : 1'b0;
  assign data_o[195] = (N20)? data_i[3] : 
                       (N22)? data_i[67] : 
                       (N21)? data_i[131] : 
                       (N23)? data_i[195] : 1'b0;
  assign data_o[194] = (N20)? data_i[2] : 
                       (N22)? data_i[66] : 
                       (N21)? data_i[130] : 
                       (N23)? data_i[194] : 1'b0;
  assign data_o[193] = (N20)? data_i[1] : 
                       (N22)? data_i[65] : 
                       (N21)? data_i[129] : 
                       (N23)? data_i[193] : 1'b0;
  assign data_o[192] = (N20)? data_i[0] : 
                       (N22)? data_i[64] : 
                       (N21)? data_i[128] : 
                       (N23)? data_i[192] : 1'b0;
  assign N0 = ~select_i[0];
  assign N1 = ~select_i[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & select_i[1];
  assign N4 = select_i[0] & N1;
  assign N5 = select_i[0] & select_i[1];
  assign N6 = ~select_i[32];
  assign N7 = ~select_i[33];
  assign N8 = N6 & N7;
  assign N9 = N6 & select_i[33];
  assign N10 = select_i[32] & N7;
  assign N11 = select_i[32] & select_i[33];
  assign N12 = ~select_i[64];
  assign N13 = ~select_i[65];
  assign N14 = N12 & N13;
  assign N15 = N12 & select_i[65];
  assign N16 = select_i[64] & N13;
  assign N17 = select_i[64] & select_i[65];
  assign N18 = ~select_i[96];
  assign N19 = ~select_i[97];
  assign N20 = N18 & N19;
  assign N21 = N18 & select_i[97];
  assign N22 = select_i[96] & N19;
  assign N23 = select_i[96] & select_i[97];

endmodule

