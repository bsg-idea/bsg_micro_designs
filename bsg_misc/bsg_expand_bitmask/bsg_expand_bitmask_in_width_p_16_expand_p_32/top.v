

module top
(
  i,
  o
);

  input [15:0] i;
  output [511:0] o;

  bsg_expand_bitmask
  wrapper
  (
    .i(i),
    .o(o)
  );


endmodule



module bsg_expand_bitmask
(
  i,
  o
);

  input [15:0] i;
  output [511:0] o;
  wire [511:0] o;
  assign o[480] = i[15];
  assign o[481] = i[15];
  assign o[482] = i[15];
  assign o[483] = i[15];
  assign o[484] = i[15];
  assign o[485] = i[15];
  assign o[486] = i[15];
  assign o[487] = i[15];
  assign o[488] = i[15];
  assign o[489] = i[15];
  assign o[490] = i[15];
  assign o[491] = i[15];
  assign o[492] = i[15];
  assign o[493] = i[15];
  assign o[494] = i[15];
  assign o[495] = i[15];
  assign o[496] = i[15];
  assign o[497] = i[15];
  assign o[498] = i[15];
  assign o[499] = i[15];
  assign o[500] = i[15];
  assign o[501] = i[15];
  assign o[502] = i[15];
  assign o[503] = i[15];
  assign o[504] = i[15];
  assign o[505] = i[15];
  assign o[506] = i[15];
  assign o[507] = i[15];
  assign o[508] = i[15];
  assign o[509] = i[15];
  assign o[510] = i[15];
  assign o[511] = i[15];
  assign o[448] = i[14];
  assign o[449] = i[14];
  assign o[450] = i[14];
  assign o[451] = i[14];
  assign o[452] = i[14];
  assign o[453] = i[14];
  assign o[454] = i[14];
  assign o[455] = i[14];
  assign o[456] = i[14];
  assign o[457] = i[14];
  assign o[458] = i[14];
  assign o[459] = i[14];
  assign o[460] = i[14];
  assign o[461] = i[14];
  assign o[462] = i[14];
  assign o[463] = i[14];
  assign o[464] = i[14];
  assign o[465] = i[14];
  assign o[466] = i[14];
  assign o[467] = i[14];
  assign o[468] = i[14];
  assign o[469] = i[14];
  assign o[470] = i[14];
  assign o[471] = i[14];
  assign o[472] = i[14];
  assign o[473] = i[14];
  assign o[474] = i[14];
  assign o[475] = i[14];
  assign o[476] = i[14];
  assign o[477] = i[14];
  assign o[478] = i[14];
  assign o[479] = i[14];
  assign o[416] = i[13];
  assign o[417] = i[13];
  assign o[418] = i[13];
  assign o[419] = i[13];
  assign o[420] = i[13];
  assign o[421] = i[13];
  assign o[422] = i[13];
  assign o[423] = i[13];
  assign o[424] = i[13];
  assign o[425] = i[13];
  assign o[426] = i[13];
  assign o[427] = i[13];
  assign o[428] = i[13];
  assign o[429] = i[13];
  assign o[430] = i[13];
  assign o[431] = i[13];
  assign o[432] = i[13];
  assign o[433] = i[13];
  assign o[434] = i[13];
  assign o[435] = i[13];
  assign o[436] = i[13];
  assign o[437] = i[13];
  assign o[438] = i[13];
  assign o[439] = i[13];
  assign o[440] = i[13];
  assign o[441] = i[13];
  assign o[442] = i[13];
  assign o[443] = i[13];
  assign o[444] = i[13];
  assign o[445] = i[13];
  assign o[446] = i[13];
  assign o[447] = i[13];
  assign o[384] = i[12];
  assign o[385] = i[12];
  assign o[386] = i[12];
  assign o[387] = i[12];
  assign o[388] = i[12];
  assign o[389] = i[12];
  assign o[390] = i[12];
  assign o[391] = i[12];
  assign o[392] = i[12];
  assign o[393] = i[12];
  assign o[394] = i[12];
  assign o[395] = i[12];
  assign o[396] = i[12];
  assign o[397] = i[12];
  assign o[398] = i[12];
  assign o[399] = i[12];
  assign o[400] = i[12];
  assign o[401] = i[12];
  assign o[402] = i[12];
  assign o[403] = i[12];
  assign o[404] = i[12];
  assign o[405] = i[12];
  assign o[406] = i[12];
  assign o[407] = i[12];
  assign o[408] = i[12];
  assign o[409] = i[12];
  assign o[410] = i[12];
  assign o[411] = i[12];
  assign o[412] = i[12];
  assign o[413] = i[12];
  assign o[414] = i[12];
  assign o[415] = i[12];
  assign o[352] = i[11];
  assign o[353] = i[11];
  assign o[354] = i[11];
  assign o[355] = i[11];
  assign o[356] = i[11];
  assign o[357] = i[11];
  assign o[358] = i[11];
  assign o[359] = i[11];
  assign o[360] = i[11];
  assign o[361] = i[11];
  assign o[362] = i[11];
  assign o[363] = i[11];
  assign o[364] = i[11];
  assign o[365] = i[11];
  assign o[366] = i[11];
  assign o[367] = i[11];
  assign o[368] = i[11];
  assign o[369] = i[11];
  assign o[370] = i[11];
  assign o[371] = i[11];
  assign o[372] = i[11];
  assign o[373] = i[11];
  assign o[374] = i[11];
  assign o[375] = i[11];
  assign o[376] = i[11];
  assign o[377] = i[11];
  assign o[378] = i[11];
  assign o[379] = i[11];
  assign o[380] = i[11];
  assign o[381] = i[11];
  assign o[382] = i[11];
  assign o[383] = i[11];
  assign o[320] = i[10];
  assign o[321] = i[10];
  assign o[322] = i[10];
  assign o[323] = i[10];
  assign o[324] = i[10];
  assign o[325] = i[10];
  assign o[326] = i[10];
  assign o[327] = i[10];
  assign o[328] = i[10];
  assign o[329] = i[10];
  assign o[330] = i[10];
  assign o[331] = i[10];
  assign o[332] = i[10];
  assign o[333] = i[10];
  assign o[334] = i[10];
  assign o[335] = i[10];
  assign o[336] = i[10];
  assign o[337] = i[10];
  assign o[338] = i[10];
  assign o[339] = i[10];
  assign o[340] = i[10];
  assign o[341] = i[10];
  assign o[342] = i[10];
  assign o[343] = i[10];
  assign o[344] = i[10];
  assign o[345] = i[10];
  assign o[346] = i[10];
  assign o[347] = i[10];
  assign o[348] = i[10];
  assign o[349] = i[10];
  assign o[350] = i[10];
  assign o[351] = i[10];
  assign o[288] = i[9];
  assign o[289] = i[9];
  assign o[290] = i[9];
  assign o[291] = i[9];
  assign o[292] = i[9];
  assign o[293] = i[9];
  assign o[294] = i[9];
  assign o[295] = i[9];
  assign o[296] = i[9];
  assign o[297] = i[9];
  assign o[298] = i[9];
  assign o[299] = i[9];
  assign o[300] = i[9];
  assign o[301] = i[9];
  assign o[302] = i[9];
  assign o[303] = i[9];
  assign o[304] = i[9];
  assign o[305] = i[9];
  assign o[306] = i[9];
  assign o[307] = i[9];
  assign o[308] = i[9];
  assign o[309] = i[9];
  assign o[310] = i[9];
  assign o[311] = i[9];
  assign o[312] = i[9];
  assign o[313] = i[9];
  assign o[314] = i[9];
  assign o[315] = i[9];
  assign o[316] = i[9];
  assign o[317] = i[9];
  assign o[318] = i[9];
  assign o[319] = i[9];
  assign o[256] = i[8];
  assign o[257] = i[8];
  assign o[258] = i[8];
  assign o[259] = i[8];
  assign o[260] = i[8];
  assign o[261] = i[8];
  assign o[262] = i[8];
  assign o[263] = i[8];
  assign o[264] = i[8];
  assign o[265] = i[8];
  assign o[266] = i[8];
  assign o[267] = i[8];
  assign o[268] = i[8];
  assign o[269] = i[8];
  assign o[270] = i[8];
  assign o[271] = i[8];
  assign o[272] = i[8];
  assign o[273] = i[8];
  assign o[274] = i[8];
  assign o[275] = i[8];
  assign o[276] = i[8];
  assign o[277] = i[8];
  assign o[278] = i[8];
  assign o[279] = i[8];
  assign o[280] = i[8];
  assign o[281] = i[8];
  assign o[282] = i[8];
  assign o[283] = i[8];
  assign o[284] = i[8];
  assign o[285] = i[8];
  assign o[286] = i[8];
  assign o[287] = i[8];
  assign o[224] = i[7];
  assign o[225] = i[7];
  assign o[226] = i[7];
  assign o[227] = i[7];
  assign o[228] = i[7];
  assign o[229] = i[7];
  assign o[230] = i[7];
  assign o[231] = i[7];
  assign o[232] = i[7];
  assign o[233] = i[7];
  assign o[234] = i[7];
  assign o[235] = i[7];
  assign o[236] = i[7];
  assign o[237] = i[7];
  assign o[238] = i[7];
  assign o[239] = i[7];
  assign o[240] = i[7];
  assign o[241] = i[7];
  assign o[242] = i[7];
  assign o[243] = i[7];
  assign o[244] = i[7];
  assign o[245] = i[7];
  assign o[246] = i[7];
  assign o[247] = i[7];
  assign o[248] = i[7];
  assign o[249] = i[7];
  assign o[250] = i[7];
  assign o[251] = i[7];
  assign o[252] = i[7];
  assign o[253] = i[7];
  assign o[254] = i[7];
  assign o[255] = i[7];
  assign o[192] = i[6];
  assign o[193] = i[6];
  assign o[194] = i[6];
  assign o[195] = i[6];
  assign o[196] = i[6];
  assign o[197] = i[6];
  assign o[198] = i[6];
  assign o[199] = i[6];
  assign o[200] = i[6];
  assign o[201] = i[6];
  assign o[202] = i[6];
  assign o[203] = i[6];
  assign o[204] = i[6];
  assign o[205] = i[6];
  assign o[206] = i[6];
  assign o[207] = i[6];
  assign o[208] = i[6];
  assign o[209] = i[6];
  assign o[210] = i[6];
  assign o[211] = i[6];
  assign o[212] = i[6];
  assign o[213] = i[6];
  assign o[214] = i[6];
  assign o[215] = i[6];
  assign o[216] = i[6];
  assign o[217] = i[6];
  assign o[218] = i[6];
  assign o[219] = i[6];
  assign o[220] = i[6];
  assign o[221] = i[6];
  assign o[222] = i[6];
  assign o[223] = i[6];
  assign o[160] = i[5];
  assign o[161] = i[5];
  assign o[162] = i[5];
  assign o[163] = i[5];
  assign o[164] = i[5];
  assign o[165] = i[5];
  assign o[166] = i[5];
  assign o[167] = i[5];
  assign o[168] = i[5];
  assign o[169] = i[5];
  assign o[170] = i[5];
  assign o[171] = i[5];
  assign o[172] = i[5];
  assign o[173] = i[5];
  assign o[174] = i[5];
  assign o[175] = i[5];
  assign o[176] = i[5];
  assign o[177] = i[5];
  assign o[178] = i[5];
  assign o[179] = i[5];
  assign o[180] = i[5];
  assign o[181] = i[5];
  assign o[182] = i[5];
  assign o[183] = i[5];
  assign o[184] = i[5];
  assign o[185] = i[5];
  assign o[186] = i[5];
  assign o[187] = i[5];
  assign o[188] = i[5];
  assign o[189] = i[5];
  assign o[190] = i[5];
  assign o[191] = i[5];
  assign o[128] = i[4];
  assign o[129] = i[4];
  assign o[130] = i[4];
  assign o[131] = i[4];
  assign o[132] = i[4];
  assign o[133] = i[4];
  assign o[134] = i[4];
  assign o[135] = i[4];
  assign o[136] = i[4];
  assign o[137] = i[4];
  assign o[138] = i[4];
  assign o[139] = i[4];
  assign o[140] = i[4];
  assign o[141] = i[4];
  assign o[142] = i[4];
  assign o[143] = i[4];
  assign o[144] = i[4];
  assign o[145] = i[4];
  assign o[146] = i[4];
  assign o[147] = i[4];
  assign o[148] = i[4];
  assign o[149] = i[4];
  assign o[150] = i[4];
  assign o[151] = i[4];
  assign o[152] = i[4];
  assign o[153] = i[4];
  assign o[154] = i[4];
  assign o[155] = i[4];
  assign o[156] = i[4];
  assign o[157] = i[4];
  assign o[158] = i[4];
  assign o[159] = i[4];
  assign o[96] = i[3];
  assign o[97] = i[3];
  assign o[98] = i[3];
  assign o[99] = i[3];
  assign o[100] = i[3];
  assign o[101] = i[3];
  assign o[102] = i[3];
  assign o[103] = i[3];
  assign o[104] = i[3];
  assign o[105] = i[3];
  assign o[106] = i[3];
  assign o[107] = i[3];
  assign o[108] = i[3];
  assign o[109] = i[3];
  assign o[110] = i[3];
  assign o[111] = i[3];
  assign o[112] = i[3];
  assign o[113] = i[3];
  assign o[114] = i[3];
  assign o[115] = i[3];
  assign o[116] = i[3];
  assign o[117] = i[3];
  assign o[118] = i[3];
  assign o[119] = i[3];
  assign o[120] = i[3];
  assign o[121] = i[3];
  assign o[122] = i[3];
  assign o[123] = i[3];
  assign o[124] = i[3];
  assign o[125] = i[3];
  assign o[126] = i[3];
  assign o[127] = i[3];
  assign o[64] = i[2];
  assign o[65] = i[2];
  assign o[66] = i[2];
  assign o[67] = i[2];
  assign o[68] = i[2];
  assign o[69] = i[2];
  assign o[70] = i[2];
  assign o[71] = i[2];
  assign o[72] = i[2];
  assign o[73] = i[2];
  assign o[74] = i[2];
  assign o[75] = i[2];
  assign o[76] = i[2];
  assign o[77] = i[2];
  assign o[78] = i[2];
  assign o[79] = i[2];
  assign o[80] = i[2];
  assign o[81] = i[2];
  assign o[82] = i[2];
  assign o[83] = i[2];
  assign o[84] = i[2];
  assign o[85] = i[2];
  assign o[86] = i[2];
  assign o[87] = i[2];
  assign o[88] = i[2];
  assign o[89] = i[2];
  assign o[90] = i[2];
  assign o[91] = i[2];
  assign o[92] = i[2];
  assign o[93] = i[2];
  assign o[94] = i[2];
  assign o[95] = i[2];
  assign o[32] = i[1];
  assign o[33] = i[1];
  assign o[34] = i[1];
  assign o[35] = i[1];
  assign o[36] = i[1];
  assign o[37] = i[1];
  assign o[38] = i[1];
  assign o[39] = i[1];
  assign o[40] = i[1];
  assign o[41] = i[1];
  assign o[42] = i[1];
  assign o[43] = i[1];
  assign o[44] = i[1];
  assign o[45] = i[1];
  assign o[46] = i[1];
  assign o[47] = i[1];
  assign o[48] = i[1];
  assign o[49] = i[1];
  assign o[50] = i[1];
  assign o[51] = i[1];
  assign o[52] = i[1];
  assign o[53] = i[1];
  assign o[54] = i[1];
  assign o[55] = i[1];
  assign o[56] = i[1];
  assign o[57] = i[1];
  assign o[58] = i[1];
  assign o[59] = i[1];
  assign o[60] = i[1];
  assign o[61] = i[1];
  assign o[62] = i[1];
  assign o[63] = i[1];
  assign o[0] = i[0];
  assign o[1] = i[0];
  assign o[2] = i[0];
  assign o[3] = i[0];
  assign o[4] = i[0];
  assign o[5] = i[0];
  assign o[6] = i[0];
  assign o[7] = i[0];
  assign o[8] = i[0];
  assign o[9] = i[0];
  assign o[10] = i[0];
  assign o[11] = i[0];
  assign o[12] = i[0];
  assign o[13] = i[0];
  assign o[14] = i[0];
  assign o[15] = i[0];
  assign o[16] = i[0];
  assign o[17] = i[0];
  assign o[18] = i[0];
  assign o[19] = i[0];
  assign o[20] = i[0];
  assign o[21] = i[0];
  assign o[22] = i[0];
  assign o[23] = i[0];
  assign o[24] = i[0];
  assign o[25] = i[0];
  assign o[26] = i[0];
  assign o[27] = i[0];
  assign o[28] = i[0];
  assign o[29] = i[0];
  assign o[30] = i[0];
  assign o[31] = i[0];

endmodule

