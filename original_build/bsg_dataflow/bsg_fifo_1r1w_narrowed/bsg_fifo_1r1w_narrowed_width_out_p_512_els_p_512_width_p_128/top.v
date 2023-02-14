

module top
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  v_o,
  data_o,
  yumi_i
);

  input [127:0] data_i;
  output [511:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;

  bsg_fifo_1r1w_narrowed
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .yumi_i(yumi_i),
    .ready_o(ready_o),
    .v_o(v_o)
  );


endmodule



module bsg_channel_narrow_width_in_p128_width_out_p512_lsb_to_msb_p1
(
  clk_i,
  reset_i,
  data_i,
  deque_o,
  data_o,
  deque_i
);

  input [127:0] data_i;
  output [511:0] data_o;
  input clk_i;
  input reset_i;
  input deque_i;
  output deque_o;
  wire [511:0] data_o;
  wire deque_o;
  assign data_o[128] = 1'b0;
  assign data_o[129] = 1'b0;
  assign data_o[130] = 1'b0;
  assign data_o[131] = 1'b0;
  assign data_o[132] = 1'b0;
  assign data_o[133] = 1'b0;
  assign data_o[134] = 1'b0;
  assign data_o[135] = 1'b0;
  assign data_o[136] = 1'b0;
  assign data_o[137] = 1'b0;
  assign data_o[138] = 1'b0;
  assign data_o[139] = 1'b0;
  assign data_o[140] = 1'b0;
  assign data_o[141] = 1'b0;
  assign data_o[142] = 1'b0;
  assign data_o[143] = 1'b0;
  assign data_o[144] = 1'b0;
  assign data_o[145] = 1'b0;
  assign data_o[146] = 1'b0;
  assign data_o[147] = 1'b0;
  assign data_o[148] = 1'b0;
  assign data_o[149] = 1'b0;
  assign data_o[150] = 1'b0;
  assign data_o[151] = 1'b0;
  assign data_o[152] = 1'b0;
  assign data_o[153] = 1'b0;
  assign data_o[154] = 1'b0;
  assign data_o[155] = 1'b0;
  assign data_o[156] = 1'b0;
  assign data_o[157] = 1'b0;
  assign data_o[158] = 1'b0;
  assign data_o[159] = 1'b0;
  assign data_o[160] = 1'b0;
  assign data_o[161] = 1'b0;
  assign data_o[162] = 1'b0;
  assign data_o[163] = 1'b0;
  assign data_o[164] = 1'b0;
  assign data_o[165] = 1'b0;
  assign data_o[166] = 1'b0;
  assign data_o[167] = 1'b0;
  assign data_o[168] = 1'b0;
  assign data_o[169] = 1'b0;
  assign data_o[170] = 1'b0;
  assign data_o[171] = 1'b0;
  assign data_o[172] = 1'b0;
  assign data_o[173] = 1'b0;
  assign data_o[174] = 1'b0;
  assign data_o[175] = 1'b0;
  assign data_o[176] = 1'b0;
  assign data_o[177] = 1'b0;
  assign data_o[178] = 1'b0;
  assign data_o[179] = 1'b0;
  assign data_o[180] = 1'b0;
  assign data_o[181] = 1'b0;
  assign data_o[182] = 1'b0;
  assign data_o[183] = 1'b0;
  assign data_o[184] = 1'b0;
  assign data_o[185] = 1'b0;
  assign data_o[186] = 1'b0;
  assign data_o[187] = 1'b0;
  assign data_o[188] = 1'b0;
  assign data_o[189] = 1'b0;
  assign data_o[190] = 1'b0;
  assign data_o[191] = 1'b0;
  assign data_o[192] = 1'b0;
  assign data_o[193] = 1'b0;
  assign data_o[194] = 1'b0;
  assign data_o[195] = 1'b0;
  assign data_o[196] = 1'b0;
  assign data_o[197] = 1'b0;
  assign data_o[198] = 1'b0;
  assign data_o[199] = 1'b0;
  assign data_o[200] = 1'b0;
  assign data_o[201] = 1'b0;
  assign data_o[202] = 1'b0;
  assign data_o[203] = 1'b0;
  assign data_o[204] = 1'b0;
  assign data_o[205] = 1'b0;
  assign data_o[206] = 1'b0;
  assign data_o[207] = 1'b0;
  assign data_o[208] = 1'b0;
  assign data_o[209] = 1'b0;
  assign data_o[210] = 1'b0;
  assign data_o[211] = 1'b0;
  assign data_o[212] = 1'b0;
  assign data_o[213] = 1'b0;
  assign data_o[214] = 1'b0;
  assign data_o[215] = 1'b0;
  assign data_o[216] = 1'b0;
  assign data_o[217] = 1'b0;
  assign data_o[218] = 1'b0;
  assign data_o[219] = 1'b0;
  assign data_o[220] = 1'b0;
  assign data_o[221] = 1'b0;
  assign data_o[222] = 1'b0;
  assign data_o[223] = 1'b0;
  assign data_o[224] = 1'b0;
  assign data_o[225] = 1'b0;
  assign data_o[226] = 1'b0;
  assign data_o[227] = 1'b0;
  assign data_o[228] = 1'b0;
  assign data_o[229] = 1'b0;
  assign data_o[230] = 1'b0;
  assign data_o[231] = 1'b0;
  assign data_o[232] = 1'b0;
  assign data_o[233] = 1'b0;
  assign data_o[234] = 1'b0;
  assign data_o[235] = 1'b0;
  assign data_o[236] = 1'b0;
  assign data_o[237] = 1'b0;
  assign data_o[238] = 1'b0;
  assign data_o[239] = 1'b0;
  assign data_o[240] = 1'b0;
  assign data_o[241] = 1'b0;
  assign data_o[242] = 1'b0;
  assign data_o[243] = 1'b0;
  assign data_o[244] = 1'b0;
  assign data_o[245] = 1'b0;
  assign data_o[246] = 1'b0;
  assign data_o[247] = 1'b0;
  assign data_o[248] = 1'b0;
  assign data_o[249] = 1'b0;
  assign data_o[250] = 1'b0;
  assign data_o[251] = 1'b0;
  assign data_o[252] = 1'b0;
  assign data_o[253] = 1'b0;
  assign data_o[254] = 1'b0;
  assign data_o[255] = 1'b0;
  assign data_o[256] = 1'b0;
  assign data_o[257] = 1'b0;
  assign data_o[258] = 1'b0;
  assign data_o[259] = 1'b0;
  assign data_o[260] = 1'b0;
  assign data_o[261] = 1'b0;
  assign data_o[262] = 1'b0;
  assign data_o[263] = 1'b0;
  assign data_o[264] = 1'b0;
  assign data_o[265] = 1'b0;
  assign data_o[266] = 1'b0;
  assign data_o[267] = 1'b0;
  assign data_o[268] = 1'b0;
  assign data_o[269] = 1'b0;
  assign data_o[270] = 1'b0;
  assign data_o[271] = 1'b0;
  assign data_o[272] = 1'b0;
  assign data_o[273] = 1'b0;
  assign data_o[274] = 1'b0;
  assign data_o[275] = 1'b0;
  assign data_o[276] = 1'b0;
  assign data_o[277] = 1'b0;
  assign data_o[278] = 1'b0;
  assign data_o[279] = 1'b0;
  assign data_o[280] = 1'b0;
  assign data_o[281] = 1'b0;
  assign data_o[282] = 1'b0;
  assign data_o[283] = 1'b0;
  assign data_o[284] = 1'b0;
  assign data_o[285] = 1'b0;
  assign data_o[286] = 1'b0;
  assign data_o[287] = 1'b0;
  assign data_o[288] = 1'b0;
  assign data_o[289] = 1'b0;
  assign data_o[290] = 1'b0;
  assign data_o[291] = 1'b0;
  assign data_o[292] = 1'b0;
  assign data_o[293] = 1'b0;
  assign data_o[294] = 1'b0;
  assign data_o[295] = 1'b0;
  assign data_o[296] = 1'b0;
  assign data_o[297] = 1'b0;
  assign data_o[298] = 1'b0;
  assign data_o[299] = 1'b0;
  assign data_o[300] = 1'b0;
  assign data_o[301] = 1'b0;
  assign data_o[302] = 1'b0;
  assign data_o[303] = 1'b0;
  assign data_o[304] = 1'b0;
  assign data_o[305] = 1'b0;
  assign data_o[306] = 1'b0;
  assign data_o[307] = 1'b0;
  assign data_o[308] = 1'b0;
  assign data_o[309] = 1'b0;
  assign data_o[310] = 1'b0;
  assign data_o[311] = 1'b0;
  assign data_o[312] = 1'b0;
  assign data_o[313] = 1'b0;
  assign data_o[314] = 1'b0;
  assign data_o[315] = 1'b0;
  assign data_o[316] = 1'b0;
  assign data_o[317] = 1'b0;
  assign data_o[318] = 1'b0;
  assign data_o[319] = 1'b0;
  assign data_o[320] = 1'b0;
  assign data_o[321] = 1'b0;
  assign data_o[322] = 1'b0;
  assign data_o[323] = 1'b0;
  assign data_o[324] = 1'b0;
  assign data_o[325] = 1'b0;
  assign data_o[326] = 1'b0;
  assign data_o[327] = 1'b0;
  assign data_o[328] = 1'b0;
  assign data_o[329] = 1'b0;
  assign data_o[330] = 1'b0;
  assign data_o[331] = 1'b0;
  assign data_o[332] = 1'b0;
  assign data_o[333] = 1'b0;
  assign data_o[334] = 1'b0;
  assign data_o[335] = 1'b0;
  assign data_o[336] = 1'b0;
  assign data_o[337] = 1'b0;
  assign data_o[338] = 1'b0;
  assign data_o[339] = 1'b0;
  assign data_o[340] = 1'b0;
  assign data_o[341] = 1'b0;
  assign data_o[342] = 1'b0;
  assign data_o[343] = 1'b0;
  assign data_o[344] = 1'b0;
  assign data_o[345] = 1'b0;
  assign data_o[346] = 1'b0;
  assign data_o[347] = 1'b0;
  assign data_o[348] = 1'b0;
  assign data_o[349] = 1'b0;
  assign data_o[350] = 1'b0;
  assign data_o[351] = 1'b0;
  assign data_o[352] = 1'b0;
  assign data_o[353] = 1'b0;
  assign data_o[354] = 1'b0;
  assign data_o[355] = 1'b0;
  assign data_o[356] = 1'b0;
  assign data_o[357] = 1'b0;
  assign data_o[358] = 1'b0;
  assign data_o[359] = 1'b0;
  assign data_o[360] = 1'b0;
  assign data_o[361] = 1'b0;
  assign data_o[362] = 1'b0;
  assign data_o[363] = 1'b0;
  assign data_o[364] = 1'b0;
  assign data_o[365] = 1'b0;
  assign data_o[366] = 1'b0;
  assign data_o[367] = 1'b0;
  assign data_o[368] = 1'b0;
  assign data_o[369] = 1'b0;
  assign data_o[370] = 1'b0;
  assign data_o[371] = 1'b0;
  assign data_o[372] = 1'b0;
  assign data_o[373] = 1'b0;
  assign data_o[374] = 1'b0;
  assign data_o[375] = 1'b0;
  assign data_o[376] = 1'b0;
  assign data_o[377] = 1'b0;
  assign data_o[378] = 1'b0;
  assign data_o[379] = 1'b0;
  assign data_o[380] = 1'b0;
  assign data_o[381] = 1'b0;
  assign data_o[382] = 1'b0;
  assign data_o[383] = 1'b0;
  assign data_o[384] = 1'b0;
  assign data_o[385] = 1'b0;
  assign data_o[386] = 1'b0;
  assign data_o[387] = 1'b0;
  assign data_o[388] = 1'b0;
  assign data_o[389] = 1'b0;
  assign data_o[390] = 1'b0;
  assign data_o[391] = 1'b0;
  assign data_o[392] = 1'b0;
  assign data_o[393] = 1'b0;
  assign data_o[394] = 1'b0;
  assign data_o[395] = 1'b0;
  assign data_o[396] = 1'b0;
  assign data_o[397] = 1'b0;
  assign data_o[398] = 1'b0;
  assign data_o[399] = 1'b0;
  assign data_o[400] = 1'b0;
  assign data_o[401] = 1'b0;
  assign data_o[402] = 1'b0;
  assign data_o[403] = 1'b0;
  assign data_o[404] = 1'b0;
  assign data_o[405] = 1'b0;
  assign data_o[406] = 1'b0;
  assign data_o[407] = 1'b0;
  assign data_o[408] = 1'b0;
  assign data_o[409] = 1'b0;
  assign data_o[410] = 1'b0;
  assign data_o[411] = 1'b0;
  assign data_o[412] = 1'b0;
  assign data_o[413] = 1'b0;
  assign data_o[414] = 1'b0;
  assign data_o[415] = 1'b0;
  assign data_o[416] = 1'b0;
  assign data_o[417] = 1'b0;
  assign data_o[418] = 1'b0;
  assign data_o[419] = 1'b0;
  assign data_o[420] = 1'b0;
  assign data_o[421] = 1'b0;
  assign data_o[422] = 1'b0;
  assign data_o[423] = 1'b0;
  assign data_o[424] = 1'b0;
  assign data_o[425] = 1'b0;
  assign data_o[426] = 1'b0;
  assign data_o[427] = 1'b0;
  assign data_o[428] = 1'b0;
  assign data_o[429] = 1'b0;
  assign data_o[430] = 1'b0;
  assign data_o[431] = 1'b0;
  assign data_o[432] = 1'b0;
  assign data_o[433] = 1'b0;
  assign data_o[434] = 1'b0;
  assign data_o[435] = 1'b0;
  assign data_o[436] = 1'b0;
  assign data_o[437] = 1'b0;
  assign data_o[438] = 1'b0;
  assign data_o[439] = 1'b0;
  assign data_o[440] = 1'b0;
  assign data_o[441] = 1'b0;
  assign data_o[442] = 1'b0;
  assign data_o[443] = 1'b0;
  assign data_o[444] = 1'b0;
  assign data_o[445] = 1'b0;
  assign data_o[446] = 1'b0;
  assign data_o[447] = 1'b0;
  assign data_o[448] = 1'b0;
  assign data_o[449] = 1'b0;
  assign data_o[450] = 1'b0;
  assign data_o[451] = 1'b0;
  assign data_o[452] = 1'b0;
  assign data_o[453] = 1'b0;
  assign data_o[454] = 1'b0;
  assign data_o[455] = 1'b0;
  assign data_o[456] = 1'b0;
  assign data_o[457] = 1'b0;
  assign data_o[458] = 1'b0;
  assign data_o[459] = 1'b0;
  assign data_o[460] = 1'b0;
  assign data_o[461] = 1'b0;
  assign data_o[462] = 1'b0;
  assign data_o[463] = 1'b0;
  assign data_o[464] = 1'b0;
  assign data_o[465] = 1'b0;
  assign data_o[466] = 1'b0;
  assign data_o[467] = 1'b0;
  assign data_o[468] = 1'b0;
  assign data_o[469] = 1'b0;
  assign data_o[470] = 1'b0;
  assign data_o[471] = 1'b0;
  assign data_o[472] = 1'b0;
  assign data_o[473] = 1'b0;
  assign data_o[474] = 1'b0;
  assign data_o[475] = 1'b0;
  assign data_o[476] = 1'b0;
  assign data_o[477] = 1'b0;
  assign data_o[478] = 1'b0;
  assign data_o[479] = 1'b0;
  assign data_o[480] = 1'b0;
  assign data_o[481] = 1'b0;
  assign data_o[482] = 1'b0;
  assign data_o[483] = 1'b0;
  assign data_o[484] = 1'b0;
  assign data_o[485] = 1'b0;
  assign data_o[486] = 1'b0;
  assign data_o[487] = 1'b0;
  assign data_o[488] = 1'b0;
  assign data_o[489] = 1'b0;
  assign data_o[490] = 1'b0;
  assign data_o[491] = 1'b0;
  assign data_o[492] = 1'b0;
  assign data_o[493] = 1'b0;
  assign data_o[494] = 1'b0;
  assign data_o[495] = 1'b0;
  assign data_o[496] = 1'b0;
  assign data_o[497] = 1'b0;
  assign data_o[498] = 1'b0;
  assign data_o[499] = 1'b0;
  assign data_o[500] = 1'b0;
  assign data_o[501] = 1'b0;
  assign data_o[502] = 1'b0;
  assign data_o[503] = 1'b0;
  assign data_o[504] = 1'b0;
  assign data_o[505] = 1'b0;
  assign data_o[506] = 1'b0;
  assign data_o[507] = 1'b0;
  assign data_o[508] = 1'b0;
  assign data_o[509] = 1'b0;
  assign data_o[510] = 1'b0;
  assign data_o[511] = 1'b0;
  assign deque_o = deque_i;
  assign data_o[127] = data_i[127];
  assign data_o[126] = data_i[126];
  assign data_o[125] = data_i[125];
  assign data_o[124] = data_i[124];
  assign data_o[123] = data_i[123];
  assign data_o[122] = data_i[122];
  assign data_o[121] = data_i[121];
  assign data_o[120] = data_i[120];
  assign data_o[119] = data_i[119];
  assign data_o[118] = data_i[118];
  assign data_o[117] = data_i[117];
  assign data_o[116] = data_i[116];
  assign data_o[115] = data_i[115];
  assign data_o[114] = data_i[114];
  assign data_o[113] = data_i[113];
  assign data_o[112] = data_i[112];
  assign data_o[111] = data_i[111];
  assign data_o[110] = data_i[110];
  assign data_o[109] = data_i[109];
  assign data_o[108] = data_i[108];
  assign data_o[107] = data_i[107];
  assign data_o[106] = data_i[106];
  assign data_o[105] = data_i[105];
  assign data_o[104] = data_i[104];
  assign data_o[103] = data_i[103];
  assign data_o[102] = data_i[102];
  assign data_o[101] = data_i[101];
  assign data_o[100] = data_i[100];
  assign data_o[99] = data_i[99];
  assign data_o[98] = data_i[98];
  assign data_o[97] = data_i[97];
  assign data_o[96] = data_i[96];
  assign data_o[95] = data_i[95];
  assign data_o[94] = data_i[94];
  assign data_o[93] = data_i[93];
  assign data_o[92] = data_i[92];
  assign data_o[91] = data_i[91];
  assign data_o[90] = data_i[90];
  assign data_o[89] = data_i[89];
  assign data_o[88] = data_i[88];
  assign data_o[87] = data_i[87];
  assign data_o[86] = data_i[86];
  assign data_o[85] = data_i[85];
  assign data_o[84] = data_i[84];
  assign data_o[83] = data_i[83];
  assign data_o[82] = data_i[82];
  assign data_o[81] = data_i[81];
  assign data_o[80] = data_i[80];
  assign data_o[79] = data_i[79];
  assign data_o[78] = data_i[78];
  assign data_o[77] = data_i[77];
  assign data_o[76] = data_i[76];
  assign data_o[75] = data_i[75];
  assign data_o[74] = data_i[74];
  assign data_o[73] = data_i[73];
  assign data_o[72] = data_i[72];
  assign data_o[71] = data_i[71];
  assign data_o[70] = data_i[70];
  assign data_o[69] = data_i[69];
  assign data_o[68] = data_i[68];
  assign data_o[67] = data_i[67];
  assign data_o[66] = data_i[66];
  assign data_o[65] = data_i[65];
  assign data_o[64] = data_i[64];
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



module bsg_fifo_1r1w_narrowed
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  v_o,
  data_o,
  yumi_i
);

  input [127:0] data_i;
  output [511:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [511:0] data_o;
  wire ready_o,v_o,yumi;
  wire [127:0] data;

  bsg_fifo_1r1w_small
  main_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .v_o(v_o),
    .data_o(data),
    .yumi_i(yumi)
  );


  bsg_channel_narrow_width_in_p128_width_out_p512_lsb_to_msb_p1
  output_narrower
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data),
    .deque_o(yumi),
    .data_o(data_o),
    .deque_i(yumi_i)
  );


endmodule

