

module top
(
  clk_i,
  reset_i,
  valid_i,
  data_i,
  ready_o,
  valid_o,
  data_o,
  yumi_i
);

  input [511:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input valid_i;
  input yumi_i;
  output ready_o;
  output valid_o;

  bsg_parallel_in_serial_out
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .valid_i(valid_i),
    .yumi_i(yumi_i),
    .ready_o(ready_o),
    .valid_o(valid_o)
  );


endmodule



module bsg_parallel_in_serial_out
(
  clk_i,
  reset_i,
  valid_i,
  data_i,
  ready_o,
  valid_o,
  data_o,
  yumi_i
);

  input [511:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input valid_i;
  input yumi_i;
  output ready_o;
  output valid_o;
  wire [15:0] data_o;
  wire ready_o,N0,N1,piso_done_tx_n,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,
  N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,
  N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,
  N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,
  N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95;
  wire [0:0] piso_state_n;
  reg valid_o;
  reg [511:0] piso_data_r;
  reg [4:0] piso_shift_ctr_r;
  assign data_o[15] = (N54)? piso_data_r[15] : 
                      (N56)? piso_data_r[31] : 
                      (N58)? piso_data_r[47] : 
                      (N60)? piso_data_r[63] : 
                      (N62)? piso_data_r[79] : 
                      (N64)? piso_data_r[95] : 
                      (N66)? piso_data_r[111] : 
                      (N68)? piso_data_r[127] : 
                      (N70)? piso_data_r[143] : 
                      (N72)? piso_data_r[159] : 
                      (N74)? piso_data_r[175] : 
                      (N76)? piso_data_r[191] : 
                      (N78)? piso_data_r[207] : 
                      (N80)? piso_data_r[223] : 
                      (N82)? piso_data_r[239] : 
                      (N84)? piso_data_r[255] : 
                      (N55)? piso_data_r[271] : 
                      (N57)? piso_data_r[287] : 
                      (N59)? piso_data_r[303] : 
                      (N61)? piso_data_r[319] : 
                      (N63)? piso_data_r[335] : 
                      (N65)? piso_data_r[351] : 
                      (N67)? piso_data_r[367] : 
                      (N69)? piso_data_r[383] : 
                      (N71)? piso_data_r[399] : 
                      (N73)? piso_data_r[415] : 
                      (N75)? piso_data_r[431] : 
                      (N77)? piso_data_r[447] : 
                      (N79)? piso_data_r[463] : 
                      (N81)? piso_data_r[479] : 
                      (N83)? piso_data_r[495] : 
                      (N85)? piso_data_r[511] : 1'b0;
  assign data_o[14] = (N54)? piso_data_r[14] : 
                      (N56)? piso_data_r[30] : 
                      (N58)? piso_data_r[46] : 
                      (N60)? piso_data_r[62] : 
                      (N62)? piso_data_r[78] : 
                      (N64)? piso_data_r[94] : 
                      (N66)? piso_data_r[110] : 
                      (N68)? piso_data_r[126] : 
                      (N70)? piso_data_r[142] : 
                      (N72)? piso_data_r[158] : 
                      (N74)? piso_data_r[174] : 
                      (N76)? piso_data_r[190] : 
                      (N78)? piso_data_r[206] : 
                      (N80)? piso_data_r[222] : 
                      (N82)? piso_data_r[238] : 
                      (N84)? piso_data_r[254] : 
                      (N55)? piso_data_r[270] : 
                      (N57)? piso_data_r[286] : 
                      (N59)? piso_data_r[302] : 
                      (N61)? piso_data_r[318] : 
                      (N63)? piso_data_r[334] : 
                      (N65)? piso_data_r[350] : 
                      (N67)? piso_data_r[366] : 
                      (N69)? piso_data_r[382] : 
                      (N71)? piso_data_r[398] : 
                      (N73)? piso_data_r[414] : 
                      (N75)? piso_data_r[430] : 
                      (N77)? piso_data_r[446] : 
                      (N79)? piso_data_r[462] : 
                      (N81)? piso_data_r[478] : 
                      (N83)? piso_data_r[494] : 
                      (N85)? piso_data_r[510] : 1'b0;
  assign data_o[13] = (N54)? piso_data_r[13] : 
                      (N56)? piso_data_r[29] : 
                      (N58)? piso_data_r[45] : 
                      (N60)? piso_data_r[61] : 
                      (N62)? piso_data_r[77] : 
                      (N64)? piso_data_r[93] : 
                      (N66)? piso_data_r[109] : 
                      (N68)? piso_data_r[125] : 
                      (N70)? piso_data_r[141] : 
                      (N72)? piso_data_r[157] : 
                      (N74)? piso_data_r[173] : 
                      (N76)? piso_data_r[189] : 
                      (N78)? piso_data_r[205] : 
                      (N80)? piso_data_r[221] : 
                      (N82)? piso_data_r[237] : 
                      (N84)? piso_data_r[253] : 
                      (N55)? piso_data_r[269] : 
                      (N57)? piso_data_r[285] : 
                      (N59)? piso_data_r[301] : 
                      (N61)? piso_data_r[317] : 
                      (N63)? piso_data_r[333] : 
                      (N65)? piso_data_r[349] : 
                      (N67)? piso_data_r[365] : 
                      (N69)? piso_data_r[381] : 
                      (N71)? piso_data_r[397] : 
                      (N73)? piso_data_r[413] : 
                      (N75)? piso_data_r[429] : 
                      (N77)? piso_data_r[445] : 
                      (N79)? piso_data_r[461] : 
                      (N81)? piso_data_r[477] : 
                      (N83)? piso_data_r[493] : 
                      (N85)? piso_data_r[509] : 1'b0;
  assign data_o[12] = (N54)? piso_data_r[12] : 
                      (N56)? piso_data_r[28] : 
                      (N58)? piso_data_r[44] : 
                      (N60)? piso_data_r[60] : 
                      (N62)? piso_data_r[76] : 
                      (N64)? piso_data_r[92] : 
                      (N66)? piso_data_r[108] : 
                      (N68)? piso_data_r[124] : 
                      (N70)? piso_data_r[140] : 
                      (N72)? piso_data_r[156] : 
                      (N74)? piso_data_r[172] : 
                      (N76)? piso_data_r[188] : 
                      (N78)? piso_data_r[204] : 
                      (N80)? piso_data_r[220] : 
                      (N82)? piso_data_r[236] : 
                      (N84)? piso_data_r[252] : 
                      (N55)? piso_data_r[268] : 
                      (N57)? piso_data_r[284] : 
                      (N59)? piso_data_r[300] : 
                      (N61)? piso_data_r[316] : 
                      (N63)? piso_data_r[332] : 
                      (N65)? piso_data_r[348] : 
                      (N67)? piso_data_r[364] : 
                      (N69)? piso_data_r[380] : 
                      (N71)? piso_data_r[396] : 
                      (N73)? piso_data_r[412] : 
                      (N75)? piso_data_r[428] : 
                      (N77)? piso_data_r[444] : 
                      (N79)? piso_data_r[460] : 
                      (N81)? piso_data_r[476] : 
                      (N83)? piso_data_r[492] : 
                      (N85)? piso_data_r[508] : 1'b0;
  assign data_o[11] = (N54)? piso_data_r[11] : 
                      (N56)? piso_data_r[27] : 
                      (N58)? piso_data_r[43] : 
                      (N60)? piso_data_r[59] : 
                      (N62)? piso_data_r[75] : 
                      (N64)? piso_data_r[91] : 
                      (N66)? piso_data_r[107] : 
                      (N68)? piso_data_r[123] : 
                      (N70)? piso_data_r[139] : 
                      (N72)? piso_data_r[155] : 
                      (N74)? piso_data_r[171] : 
                      (N76)? piso_data_r[187] : 
                      (N78)? piso_data_r[203] : 
                      (N80)? piso_data_r[219] : 
                      (N82)? piso_data_r[235] : 
                      (N84)? piso_data_r[251] : 
                      (N55)? piso_data_r[267] : 
                      (N57)? piso_data_r[283] : 
                      (N59)? piso_data_r[299] : 
                      (N61)? piso_data_r[315] : 
                      (N63)? piso_data_r[331] : 
                      (N65)? piso_data_r[347] : 
                      (N67)? piso_data_r[363] : 
                      (N69)? piso_data_r[379] : 
                      (N71)? piso_data_r[395] : 
                      (N73)? piso_data_r[411] : 
                      (N75)? piso_data_r[427] : 
                      (N77)? piso_data_r[443] : 
                      (N79)? piso_data_r[459] : 
                      (N81)? piso_data_r[475] : 
                      (N83)? piso_data_r[491] : 
                      (N85)? piso_data_r[507] : 1'b0;
  assign data_o[10] = (N54)? piso_data_r[10] : 
                      (N56)? piso_data_r[26] : 
                      (N58)? piso_data_r[42] : 
                      (N60)? piso_data_r[58] : 
                      (N62)? piso_data_r[74] : 
                      (N64)? piso_data_r[90] : 
                      (N66)? piso_data_r[106] : 
                      (N68)? piso_data_r[122] : 
                      (N70)? piso_data_r[138] : 
                      (N72)? piso_data_r[154] : 
                      (N74)? piso_data_r[170] : 
                      (N76)? piso_data_r[186] : 
                      (N78)? piso_data_r[202] : 
                      (N80)? piso_data_r[218] : 
                      (N82)? piso_data_r[234] : 
                      (N84)? piso_data_r[250] : 
                      (N55)? piso_data_r[266] : 
                      (N57)? piso_data_r[282] : 
                      (N59)? piso_data_r[298] : 
                      (N61)? piso_data_r[314] : 
                      (N63)? piso_data_r[330] : 
                      (N65)? piso_data_r[346] : 
                      (N67)? piso_data_r[362] : 
                      (N69)? piso_data_r[378] : 
                      (N71)? piso_data_r[394] : 
                      (N73)? piso_data_r[410] : 
                      (N75)? piso_data_r[426] : 
                      (N77)? piso_data_r[442] : 
                      (N79)? piso_data_r[458] : 
                      (N81)? piso_data_r[474] : 
                      (N83)? piso_data_r[490] : 
                      (N85)? piso_data_r[506] : 1'b0;
  assign data_o[9] = (N54)? piso_data_r[9] : 
                     (N56)? piso_data_r[25] : 
                     (N58)? piso_data_r[41] : 
                     (N60)? piso_data_r[57] : 
                     (N62)? piso_data_r[73] : 
                     (N64)? piso_data_r[89] : 
                     (N66)? piso_data_r[105] : 
                     (N68)? piso_data_r[121] : 
                     (N70)? piso_data_r[137] : 
                     (N72)? piso_data_r[153] : 
                     (N74)? piso_data_r[169] : 
                     (N76)? piso_data_r[185] : 
                     (N78)? piso_data_r[201] : 
                     (N80)? piso_data_r[217] : 
                     (N82)? piso_data_r[233] : 
                     (N84)? piso_data_r[249] : 
                     (N55)? piso_data_r[265] : 
                     (N57)? piso_data_r[281] : 
                     (N59)? piso_data_r[297] : 
                     (N61)? piso_data_r[313] : 
                     (N63)? piso_data_r[329] : 
                     (N65)? piso_data_r[345] : 
                     (N67)? piso_data_r[361] : 
                     (N69)? piso_data_r[377] : 
                     (N71)? piso_data_r[393] : 
                     (N73)? piso_data_r[409] : 
                     (N75)? piso_data_r[425] : 
                     (N77)? piso_data_r[441] : 
                     (N79)? piso_data_r[457] : 
                     (N81)? piso_data_r[473] : 
                     (N83)? piso_data_r[489] : 
                     (N85)? piso_data_r[505] : 1'b0;
  assign data_o[8] = (N54)? piso_data_r[8] : 
                     (N56)? piso_data_r[24] : 
                     (N58)? piso_data_r[40] : 
                     (N60)? piso_data_r[56] : 
                     (N62)? piso_data_r[72] : 
                     (N64)? piso_data_r[88] : 
                     (N66)? piso_data_r[104] : 
                     (N68)? piso_data_r[120] : 
                     (N70)? piso_data_r[136] : 
                     (N72)? piso_data_r[152] : 
                     (N74)? piso_data_r[168] : 
                     (N76)? piso_data_r[184] : 
                     (N78)? piso_data_r[200] : 
                     (N80)? piso_data_r[216] : 
                     (N82)? piso_data_r[232] : 
                     (N84)? piso_data_r[248] : 
                     (N55)? piso_data_r[264] : 
                     (N57)? piso_data_r[280] : 
                     (N59)? piso_data_r[296] : 
                     (N61)? piso_data_r[312] : 
                     (N63)? piso_data_r[328] : 
                     (N65)? piso_data_r[344] : 
                     (N67)? piso_data_r[360] : 
                     (N69)? piso_data_r[376] : 
                     (N71)? piso_data_r[392] : 
                     (N73)? piso_data_r[408] : 
                     (N75)? piso_data_r[424] : 
                     (N77)? piso_data_r[440] : 
                     (N79)? piso_data_r[456] : 
                     (N81)? piso_data_r[472] : 
                     (N83)? piso_data_r[488] : 
                     (N85)? piso_data_r[504] : 1'b0;
  assign data_o[7] = (N54)? piso_data_r[7] : 
                     (N56)? piso_data_r[23] : 
                     (N58)? piso_data_r[39] : 
                     (N60)? piso_data_r[55] : 
                     (N62)? piso_data_r[71] : 
                     (N64)? piso_data_r[87] : 
                     (N66)? piso_data_r[103] : 
                     (N68)? piso_data_r[119] : 
                     (N70)? piso_data_r[135] : 
                     (N72)? piso_data_r[151] : 
                     (N74)? piso_data_r[167] : 
                     (N76)? piso_data_r[183] : 
                     (N78)? piso_data_r[199] : 
                     (N80)? piso_data_r[215] : 
                     (N82)? piso_data_r[231] : 
                     (N84)? piso_data_r[247] : 
                     (N55)? piso_data_r[263] : 
                     (N57)? piso_data_r[279] : 
                     (N59)? piso_data_r[295] : 
                     (N61)? piso_data_r[311] : 
                     (N63)? piso_data_r[327] : 
                     (N65)? piso_data_r[343] : 
                     (N67)? piso_data_r[359] : 
                     (N69)? piso_data_r[375] : 
                     (N71)? piso_data_r[391] : 
                     (N73)? piso_data_r[407] : 
                     (N75)? piso_data_r[423] : 
                     (N77)? piso_data_r[439] : 
                     (N79)? piso_data_r[455] : 
                     (N81)? piso_data_r[471] : 
                     (N83)? piso_data_r[487] : 
                     (N85)? piso_data_r[503] : 1'b0;
  assign data_o[6] = (N54)? piso_data_r[6] : 
                     (N56)? piso_data_r[22] : 
                     (N58)? piso_data_r[38] : 
                     (N60)? piso_data_r[54] : 
                     (N62)? piso_data_r[70] : 
                     (N64)? piso_data_r[86] : 
                     (N66)? piso_data_r[102] : 
                     (N68)? piso_data_r[118] : 
                     (N70)? piso_data_r[134] : 
                     (N72)? piso_data_r[150] : 
                     (N74)? piso_data_r[166] : 
                     (N76)? piso_data_r[182] : 
                     (N78)? piso_data_r[198] : 
                     (N80)? piso_data_r[214] : 
                     (N82)? piso_data_r[230] : 
                     (N84)? piso_data_r[246] : 
                     (N55)? piso_data_r[262] : 
                     (N57)? piso_data_r[278] : 
                     (N59)? piso_data_r[294] : 
                     (N61)? piso_data_r[310] : 
                     (N63)? piso_data_r[326] : 
                     (N65)? piso_data_r[342] : 
                     (N67)? piso_data_r[358] : 
                     (N69)? piso_data_r[374] : 
                     (N71)? piso_data_r[390] : 
                     (N73)? piso_data_r[406] : 
                     (N75)? piso_data_r[422] : 
                     (N77)? piso_data_r[438] : 
                     (N79)? piso_data_r[454] : 
                     (N81)? piso_data_r[470] : 
                     (N83)? piso_data_r[486] : 
                     (N85)? piso_data_r[502] : 1'b0;
  assign data_o[5] = (N54)? piso_data_r[5] : 
                     (N56)? piso_data_r[21] : 
                     (N58)? piso_data_r[37] : 
                     (N60)? piso_data_r[53] : 
                     (N62)? piso_data_r[69] : 
                     (N64)? piso_data_r[85] : 
                     (N66)? piso_data_r[101] : 
                     (N68)? piso_data_r[117] : 
                     (N70)? piso_data_r[133] : 
                     (N72)? piso_data_r[149] : 
                     (N74)? piso_data_r[165] : 
                     (N76)? piso_data_r[181] : 
                     (N78)? piso_data_r[197] : 
                     (N80)? piso_data_r[213] : 
                     (N82)? piso_data_r[229] : 
                     (N84)? piso_data_r[245] : 
                     (N55)? piso_data_r[261] : 
                     (N57)? piso_data_r[277] : 
                     (N59)? piso_data_r[293] : 
                     (N61)? piso_data_r[309] : 
                     (N63)? piso_data_r[325] : 
                     (N65)? piso_data_r[341] : 
                     (N67)? piso_data_r[357] : 
                     (N69)? piso_data_r[373] : 
                     (N71)? piso_data_r[389] : 
                     (N73)? piso_data_r[405] : 
                     (N75)? piso_data_r[421] : 
                     (N77)? piso_data_r[437] : 
                     (N79)? piso_data_r[453] : 
                     (N81)? piso_data_r[469] : 
                     (N83)? piso_data_r[485] : 
                     (N85)? piso_data_r[501] : 1'b0;
  assign data_o[4] = (N54)? piso_data_r[4] : 
                     (N56)? piso_data_r[20] : 
                     (N58)? piso_data_r[36] : 
                     (N60)? piso_data_r[52] : 
                     (N62)? piso_data_r[68] : 
                     (N64)? piso_data_r[84] : 
                     (N66)? piso_data_r[100] : 
                     (N68)? piso_data_r[116] : 
                     (N70)? piso_data_r[132] : 
                     (N72)? piso_data_r[148] : 
                     (N74)? piso_data_r[164] : 
                     (N76)? piso_data_r[180] : 
                     (N78)? piso_data_r[196] : 
                     (N80)? piso_data_r[212] : 
                     (N82)? piso_data_r[228] : 
                     (N84)? piso_data_r[244] : 
                     (N55)? piso_data_r[260] : 
                     (N57)? piso_data_r[276] : 
                     (N59)? piso_data_r[292] : 
                     (N61)? piso_data_r[308] : 
                     (N63)? piso_data_r[324] : 
                     (N65)? piso_data_r[340] : 
                     (N67)? piso_data_r[356] : 
                     (N69)? piso_data_r[372] : 
                     (N71)? piso_data_r[388] : 
                     (N73)? piso_data_r[404] : 
                     (N75)? piso_data_r[420] : 
                     (N77)? piso_data_r[436] : 
                     (N79)? piso_data_r[452] : 
                     (N81)? piso_data_r[468] : 
                     (N83)? piso_data_r[484] : 
                     (N85)? piso_data_r[500] : 1'b0;
  assign data_o[3] = (N54)? piso_data_r[3] : 
                     (N56)? piso_data_r[19] : 
                     (N58)? piso_data_r[35] : 
                     (N60)? piso_data_r[51] : 
                     (N62)? piso_data_r[67] : 
                     (N64)? piso_data_r[83] : 
                     (N66)? piso_data_r[99] : 
                     (N68)? piso_data_r[115] : 
                     (N70)? piso_data_r[131] : 
                     (N72)? piso_data_r[147] : 
                     (N74)? piso_data_r[163] : 
                     (N76)? piso_data_r[179] : 
                     (N78)? piso_data_r[195] : 
                     (N80)? piso_data_r[211] : 
                     (N82)? piso_data_r[227] : 
                     (N84)? piso_data_r[243] : 
                     (N55)? piso_data_r[259] : 
                     (N57)? piso_data_r[275] : 
                     (N59)? piso_data_r[291] : 
                     (N61)? piso_data_r[307] : 
                     (N63)? piso_data_r[323] : 
                     (N65)? piso_data_r[339] : 
                     (N67)? piso_data_r[355] : 
                     (N69)? piso_data_r[371] : 
                     (N71)? piso_data_r[387] : 
                     (N73)? piso_data_r[403] : 
                     (N75)? piso_data_r[419] : 
                     (N77)? piso_data_r[435] : 
                     (N79)? piso_data_r[451] : 
                     (N81)? piso_data_r[467] : 
                     (N83)? piso_data_r[483] : 
                     (N85)? piso_data_r[499] : 1'b0;
  assign data_o[2] = (N54)? piso_data_r[2] : 
                     (N56)? piso_data_r[18] : 
                     (N58)? piso_data_r[34] : 
                     (N60)? piso_data_r[50] : 
                     (N62)? piso_data_r[66] : 
                     (N64)? piso_data_r[82] : 
                     (N66)? piso_data_r[98] : 
                     (N68)? piso_data_r[114] : 
                     (N70)? piso_data_r[130] : 
                     (N72)? piso_data_r[146] : 
                     (N74)? piso_data_r[162] : 
                     (N76)? piso_data_r[178] : 
                     (N78)? piso_data_r[194] : 
                     (N80)? piso_data_r[210] : 
                     (N82)? piso_data_r[226] : 
                     (N84)? piso_data_r[242] : 
                     (N55)? piso_data_r[258] : 
                     (N57)? piso_data_r[274] : 
                     (N59)? piso_data_r[290] : 
                     (N61)? piso_data_r[306] : 
                     (N63)? piso_data_r[322] : 
                     (N65)? piso_data_r[338] : 
                     (N67)? piso_data_r[354] : 
                     (N69)? piso_data_r[370] : 
                     (N71)? piso_data_r[386] : 
                     (N73)? piso_data_r[402] : 
                     (N75)? piso_data_r[418] : 
                     (N77)? piso_data_r[434] : 
                     (N79)? piso_data_r[450] : 
                     (N81)? piso_data_r[466] : 
                     (N83)? piso_data_r[482] : 
                     (N85)? piso_data_r[498] : 1'b0;
  assign data_o[1] = (N54)? piso_data_r[1] : 
                     (N56)? piso_data_r[17] : 
                     (N58)? piso_data_r[33] : 
                     (N60)? piso_data_r[49] : 
                     (N62)? piso_data_r[65] : 
                     (N64)? piso_data_r[81] : 
                     (N66)? piso_data_r[97] : 
                     (N68)? piso_data_r[113] : 
                     (N70)? piso_data_r[129] : 
                     (N72)? piso_data_r[145] : 
                     (N74)? piso_data_r[161] : 
                     (N76)? piso_data_r[177] : 
                     (N78)? piso_data_r[193] : 
                     (N80)? piso_data_r[209] : 
                     (N82)? piso_data_r[225] : 
                     (N84)? piso_data_r[241] : 
                     (N55)? piso_data_r[257] : 
                     (N57)? piso_data_r[273] : 
                     (N59)? piso_data_r[289] : 
                     (N61)? piso_data_r[305] : 
                     (N63)? piso_data_r[321] : 
                     (N65)? piso_data_r[337] : 
                     (N67)? piso_data_r[353] : 
                     (N69)? piso_data_r[369] : 
                     (N71)? piso_data_r[385] : 
                     (N73)? piso_data_r[401] : 
                     (N75)? piso_data_r[417] : 
                     (N77)? piso_data_r[433] : 
                     (N79)? piso_data_r[449] : 
                     (N81)? piso_data_r[465] : 
                     (N83)? piso_data_r[481] : 
                     (N85)? piso_data_r[497] : 1'b0;
  assign data_o[0] = (N54)? piso_data_r[0] : 
                     (N56)? piso_data_r[16] : 
                     (N58)? piso_data_r[32] : 
                     (N60)? piso_data_r[48] : 
                     (N62)? piso_data_r[64] : 
                     (N64)? piso_data_r[80] : 
                     (N66)? piso_data_r[96] : 
                     (N68)? piso_data_r[112] : 
                     (N70)? piso_data_r[128] : 
                     (N72)? piso_data_r[144] : 
                     (N74)? piso_data_r[160] : 
                     (N76)? piso_data_r[176] : 
                     (N78)? piso_data_r[192] : 
                     (N80)? piso_data_r[208] : 
                     (N82)? piso_data_r[224] : 
                     (N84)? piso_data_r[240] : 
                     (N55)? piso_data_r[256] : 
                     (N57)? piso_data_r[272] : 
                     (N59)? piso_data_r[288] : 
                     (N61)? piso_data_r[304] : 
                     (N63)? piso_data_r[320] : 
                     (N65)? piso_data_r[336] : 
                     (N67)? piso_data_r[352] : 
                     (N69)? piso_data_r[368] : 
                     (N71)? piso_data_r[384] : 
                     (N73)? piso_data_r[400] : 
                     (N75)? piso_data_r[416] : 
                     (N77)? piso_data_r[432] : 
                     (N79)? piso_data_r[448] : 
                     (N81)? piso_data_r[464] : 
                     (N83)? piso_data_r[480] : 
                     (N85)? piso_data_r[496] : 1'b0;
  assign N88 = ~valid_o;
  assign N89 = piso_shift_ctr_r[3] & piso_shift_ctr_r[4];
  assign N90 = piso_shift_ctr_r[2] & N89;
  assign N91 = piso_shift_ctr_r[1] & N90;
  assign N92 = piso_shift_ctr_r[0] & N91;
  assign { N20, N19, N18, N17, N16 } = piso_shift_ctr_r + 1'b1;
  assign piso_state_n[0] = (N0)? 1'b1 : 
                           (N5)? 1'b0 : 1'b0;
  assign N0 = N2;
  assign { N13, N12, N11, N10, N9 } = (N1)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                      (N8)? { N20, N19, N18, N17, N16 } : 1'b0;
  assign N1 = N7;
  assign piso_done_tx_n = N93 & yumi_i;
  assign N93 = valid_o & N92;
  assign ready_o = N88 | piso_done_tx_n;
  assign N2 = ready_o & valid_i;
  assign N3 = piso_done_tx_n | N2;
  assign N4 = ~N2;
  assign N5 = piso_done_tx_n & N4;
  assign N6 = ready_o & valid_i;
  assign N7 = ready_o & valid_i;
  assign N8 = ~N7;
  assign N14 = N94 & N95;
  assign N94 = valid_o & yumi_i;
  assign N95 = ~piso_done_tx_n;
  assign N15 = ~N14;
  assign N21 = ~piso_shift_ctr_r[0];
  assign N22 = ~piso_shift_ctr_r[1];
  assign N23 = N21 & N22;
  assign N24 = N21 & piso_shift_ctr_r[1];
  assign N25 = piso_shift_ctr_r[0] & N22;
  assign N26 = piso_shift_ctr_r[0] & piso_shift_ctr_r[1];
  assign N27 = ~piso_shift_ctr_r[2];
  assign N28 = N23 & N27;
  assign N29 = N23 & piso_shift_ctr_r[2];
  assign N30 = N25 & N27;
  assign N31 = N25 & piso_shift_ctr_r[2];
  assign N32 = N24 & N27;
  assign N33 = N24 & piso_shift_ctr_r[2];
  assign N34 = N26 & N27;
  assign N35 = N26 & piso_shift_ctr_r[2];
  assign N36 = ~piso_shift_ctr_r[3];
  assign N37 = N28 & N36;
  assign N38 = N28 & piso_shift_ctr_r[3];
  assign N39 = N30 & N36;
  assign N40 = N30 & piso_shift_ctr_r[3];
  assign N41 = N32 & N36;
  assign N42 = N32 & piso_shift_ctr_r[3];
  assign N43 = N34 & N36;
  assign N44 = N34 & piso_shift_ctr_r[3];
  assign N45 = N29 & N36;
  assign N46 = N29 & piso_shift_ctr_r[3];
  assign N47 = N31 & N36;
  assign N48 = N31 & piso_shift_ctr_r[3];
  assign N49 = N33 & N36;
  assign N50 = N33 & piso_shift_ctr_r[3];
  assign N51 = N35 & N36;
  assign N52 = N35 & piso_shift_ctr_r[3];
  assign N53 = ~piso_shift_ctr_r[4];
  assign N54 = N37 & N53;
  assign N55 = N37 & piso_shift_ctr_r[4];
  assign N56 = N39 & N53;
  assign N57 = N39 & piso_shift_ctr_r[4];
  assign N58 = N41 & N53;
  assign N59 = N41 & piso_shift_ctr_r[4];
  assign N60 = N43 & N53;
  assign N61 = N43 & piso_shift_ctr_r[4];
  assign N62 = N45 & N53;
  assign N63 = N45 & piso_shift_ctr_r[4];
  assign N64 = N47 & N53;
  assign N65 = N47 & piso_shift_ctr_r[4];
  assign N66 = N49 & N53;
  assign N67 = N49 & piso_shift_ctr_r[4];
  assign N68 = N51 & N53;
  assign N69 = N51 & piso_shift_ctr_r[4];
  assign N70 = N38 & N53;
  assign N71 = N38 & piso_shift_ctr_r[4];
  assign N72 = N40 & N53;
  assign N73 = N40 & piso_shift_ctr_r[4];
  assign N74 = N42 & N53;
  assign N75 = N42 & piso_shift_ctr_r[4];
  assign N76 = N44 & N53;
  assign N77 = N44 & piso_shift_ctr_r[4];
  assign N78 = N46 & N53;
  assign N79 = N46 & piso_shift_ctr_r[4];
  assign N80 = N48 & N53;
  assign N81 = N48 & piso_shift_ctr_r[4];
  assign N82 = N50 & N53;
  assign N83 = N50 & piso_shift_ctr_r[4];
  assign N84 = N52 & N53;
  assign N85 = N52 & piso_shift_ctr_r[4];
  assign N86 = N15 & N8;
  assign N87 = ~N86;

  always @(posedge clk_i) begin
    if(reset_i) begin
      valid_o <= 1'b0;
    end else if(N3) begin
      valid_o <= piso_state_n[0];
    end 
    if(reset_i) begin
      { piso_data_r[511:0] } <= { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 };
    end else if(N6) begin
      { piso_data_r[511:0] } <= { data_i[511:0] };
    end 
    if(reset_i) begin
      { piso_shift_ctr_r[4:0] } <= { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 };
    end else if(N87) begin
      { piso_shift_ctr_r[4:0] } <= { N13, N12, N11, N10, N9 };
    end 
  end


endmodule

