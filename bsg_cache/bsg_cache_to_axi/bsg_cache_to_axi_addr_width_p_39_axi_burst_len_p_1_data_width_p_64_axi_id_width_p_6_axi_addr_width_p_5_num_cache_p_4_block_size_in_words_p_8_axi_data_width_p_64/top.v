

module bsg_round_robin_arb_inputs_p4
(
  clk_i,
  reset_i,
  grants_en_i,
  reqs_i,
  grants_o,
  sel_one_hot_o,
  v_o,
  tag_o,
  yumi_i
);

  input [3:0] reqs_i;
  output [3:0] grants_o;
  output [3:0] sel_one_hot_o;
  output [1:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [3:0] grants_o,sel_one_hot_o;
  wire [1:0] tag_o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103;
  reg [1:0] last_r;
  assign N79 = N0 & N1 & (N2 & N3);
  assign N0 = ~reqs_i[1];
  assign N1 = ~reqs_i[2];
  assign N2 = ~reqs_i[0];
  assign N3 = ~reqs_i[3];
  assign N80 = reqs_i[1] & N4 & N5;
  assign N4 = ~last_r[0];
  assign N5 = ~last_r[1];
  assign N81 = N6 & reqs_i[2] & (N7 & N8);
  assign N6 = ~reqs_i[1];
  assign N7 = ~last_r[0];
  assign N8 = ~last_r[1];
  assign N82 = N9 & N10 & (reqs_i[3] & N11) & N12;
  assign N9 = ~reqs_i[1];
  assign N10 = ~reqs_i[2];
  assign N11 = ~last_r[0];
  assign N12 = ~last_r[1];
  assign N13 = N17 & N18;
  assign N14 = N13 & reqs_i[0];
  assign N15 = N14 & N19;
  assign N16 = N15 & N20;
  assign N83 = N16 & N21;
  assign N17 = ~reqs_i[1];
  assign N18 = ~reqs_i[2];
  assign N19 = ~reqs_i[3];
  assign N20 = ~last_r[0];
  assign N21 = ~last_r[1];
  assign N84 = reqs_i[2] & last_r[0] & N22;
  assign N22 = ~last_r[1];
  assign N85 = N23 & reqs_i[3] & (last_r[0] & N24);
  assign N23 = ~reqs_i[2];
  assign N24 = ~last_r[1];
  assign N86 = N25 & reqs_i[0] & (N26 & last_r[0]) & N27;
  assign N25 = ~reqs_i[2];
  assign N26 = ~reqs_i[3];
  assign N27 = ~last_r[1];
  assign N28 = reqs_i[1] & N32;
  assign N29 = N28 & N33;
  assign N30 = N29 & N34;
  assign N31 = N30 & last_r[0];
  assign N87 = N31 & N35;
  assign N32 = ~reqs_i[2];
  assign N33 = ~reqs_i[0];
  assign N34 = ~reqs_i[3];
  assign N35 = ~last_r[1];
  assign N88 = reqs_i[3] & N36 & last_r[1];
  assign N36 = ~last_r[0];
  assign N89 = reqs_i[0] & N37 & (N38 & last_r[1]);
  assign N37 = ~reqs_i[3];
  assign N38 = ~last_r[0];
  assign N90 = reqs_i[1] & N39 & (N40 & N41) & last_r[1];
  assign N39 = ~reqs_i[0];
  assign N40 = ~reqs_i[3];
  assign N41 = ~last_r[0];
  assign N42 = N46 & reqs_i[2];
  assign N43 = N42 & N47;
  assign N44 = N43 & N48;
  assign N45 = N44 & N49;
  assign N91 = N45 & last_r[1];
  assign N46 = ~reqs_i[1];
  assign N47 = ~reqs_i[0];
  assign N48 = ~reqs_i[3];
  assign N49 = ~last_r[0];
  assign N92 = reqs_i[0] & last_r[0] & last_r[1];
  assign N93 = reqs_i[1] & N50 & (last_r[0] & last_r[1]);
  assign N50 = ~reqs_i[0];
  assign N94 = N51 & reqs_i[2] & (N52 & last_r[0]) & last_r[1];
  assign N51 = ~reqs_i[1];
  assign N52 = ~reqs_i[0];
  assign N53 = N57 & N58;
  assign N54 = N53 & N59;
  assign N55 = N54 & reqs_i[3];
  assign N56 = N55 & last_r[0];
  assign N95 = N56 & last_r[1];
  assign N57 = ~reqs_i[1];
  assign N58 = ~reqs_i[2];
  assign N59 = ~reqs_i[0];
  assign sel_one_hot_o = (N60)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                         (N61)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                         (N62)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                         (N63)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                         (N64)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                         (N65)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                         (N66)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                         (N67)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                         (N68)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                         (N69)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                         (N70)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                         (N71)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                         (N72)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                         (N73)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                         (N74)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                         (N75)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                         (N76)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N60 = N79;
  assign N61 = N80;
  assign N62 = N81;
  assign N63 = N82;
  assign N64 = N83;
  assign N65 = N84;
  assign N66 = N85;
  assign N67 = N86;
  assign N68 = N87;
  assign N69 = N88;
  assign N70 = N89;
  assign N71 = N90;
  assign N72 = N91;
  assign N73 = N92;
  assign N74 = N93;
  assign N75 = N94;
  assign N76 = N95;
  assign tag_o = (N60)? { 1'b0, 1'b0 } : 
                 (N61)? { 1'b0, 1'b1 } : 
                 (N62)? { 1'b1, 1'b0 } : 
                 (N63)? { 1'b1, 1'b1 } : 
                 (N64)? { 1'b0, 1'b0 } : 
                 (N65)? { 1'b1, 1'b0 } : 
                 (N66)? { 1'b1, 1'b1 } : 
                 (N67)? { 1'b0, 1'b0 } : 
                 (N68)? { 1'b0, 1'b1 } : 
                 (N69)? { 1'b1, 1'b1 } : 
                 (N70)? { 1'b0, 1'b0 } : 
                 (N71)? { 1'b0, 1'b1 } : 
                 (N72)? { 1'b1, 1'b0 } : 
                 (N73)? { 1'b0, 1'b0 } : 
                 (N74)? { 1'b0, 1'b1 } : 
                 (N75)? { 1'b1, 1'b0 } : 
                 (N76)? { 1'b1, 1'b1 } : 1'b0;
  assign { N99, N98 } = (N77)? { 1'b0, 1'b0 } : 
                        (N78)? tag_o : 1'b0;
  assign N77 = reset_i;
  assign N78 = N97;
  assign grants_o[3] = sel_one_hot_o[3] & grants_en_i;
  assign grants_o[2] = sel_one_hot_o[2] & grants_en_i;
  assign grants_o[1] = sel_one_hot_o[1] & grants_en_i;
  assign grants_o[0] = sel_one_hot_o[0] & grants_en_i;
  assign v_o = N103 | reqs_i[0];
  assign N103 = N102 | reqs_i[1];
  assign N102 = reqs_i[3] | reqs_i[2];
  assign N96 = ~yumi_i;
  assign N97 = ~reset_i;
  assign N100 = N96 & N97;
  assign N101 = ~N100;

  always @(posedge clk_i) begin
    if(N101) begin
      { last_r[1:0] } <= { N99, N98 };
    end 
  end


endmodule



module bsg_mux_one_hot_width_p40_els_p4
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [159:0] data_i;
  input [3:0] sel_one_hot_i;
  output [39:0] data_o;
  wire [39:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79;
  wire [159:0] data_masked;
  assign data_masked[39] = data_i[39] & sel_one_hot_i[0];
  assign data_masked[38] = data_i[38] & sel_one_hot_i[0];
  assign data_masked[37] = data_i[37] & sel_one_hot_i[0];
  assign data_masked[36] = data_i[36] & sel_one_hot_i[0];
  assign data_masked[35] = data_i[35] & sel_one_hot_i[0];
  assign data_masked[34] = data_i[34] & sel_one_hot_i[0];
  assign data_masked[33] = data_i[33] & sel_one_hot_i[0];
  assign data_masked[32] = data_i[32] & sel_one_hot_i[0];
  assign data_masked[31] = data_i[31] & sel_one_hot_i[0];
  assign data_masked[30] = data_i[30] & sel_one_hot_i[0];
  assign data_masked[29] = data_i[29] & sel_one_hot_i[0];
  assign data_masked[28] = data_i[28] & sel_one_hot_i[0];
  assign data_masked[27] = data_i[27] & sel_one_hot_i[0];
  assign data_masked[26] = data_i[26] & sel_one_hot_i[0];
  assign data_masked[25] = data_i[25] & sel_one_hot_i[0];
  assign data_masked[24] = data_i[24] & sel_one_hot_i[0];
  assign data_masked[23] = data_i[23] & sel_one_hot_i[0];
  assign data_masked[22] = data_i[22] & sel_one_hot_i[0];
  assign data_masked[21] = data_i[21] & sel_one_hot_i[0];
  assign data_masked[20] = data_i[20] & sel_one_hot_i[0];
  assign data_masked[19] = data_i[19] & sel_one_hot_i[0];
  assign data_masked[18] = data_i[18] & sel_one_hot_i[0];
  assign data_masked[17] = data_i[17] & sel_one_hot_i[0];
  assign data_masked[16] = data_i[16] & sel_one_hot_i[0];
  assign data_masked[15] = data_i[15] & sel_one_hot_i[0];
  assign data_masked[14] = data_i[14] & sel_one_hot_i[0];
  assign data_masked[13] = data_i[13] & sel_one_hot_i[0];
  assign data_masked[12] = data_i[12] & sel_one_hot_i[0];
  assign data_masked[11] = data_i[11] & sel_one_hot_i[0];
  assign data_masked[10] = data_i[10] & sel_one_hot_i[0];
  assign data_masked[9] = data_i[9] & sel_one_hot_i[0];
  assign data_masked[8] = data_i[8] & sel_one_hot_i[0];
  assign data_masked[7] = data_i[7] & sel_one_hot_i[0];
  assign data_masked[6] = data_i[6] & sel_one_hot_i[0];
  assign data_masked[5] = data_i[5] & sel_one_hot_i[0];
  assign data_masked[4] = data_i[4] & sel_one_hot_i[0];
  assign data_masked[3] = data_i[3] & sel_one_hot_i[0];
  assign data_masked[2] = data_i[2] & sel_one_hot_i[0];
  assign data_masked[1] = data_i[1] & sel_one_hot_i[0];
  assign data_masked[0] = data_i[0] & sel_one_hot_i[0];
  assign data_masked[79] = data_i[79] & sel_one_hot_i[1];
  assign data_masked[78] = data_i[78] & sel_one_hot_i[1];
  assign data_masked[77] = data_i[77] & sel_one_hot_i[1];
  assign data_masked[76] = data_i[76] & sel_one_hot_i[1];
  assign data_masked[75] = data_i[75] & sel_one_hot_i[1];
  assign data_masked[74] = data_i[74] & sel_one_hot_i[1];
  assign data_masked[73] = data_i[73] & sel_one_hot_i[1];
  assign data_masked[72] = data_i[72] & sel_one_hot_i[1];
  assign data_masked[71] = data_i[71] & sel_one_hot_i[1];
  assign data_masked[70] = data_i[70] & sel_one_hot_i[1];
  assign data_masked[69] = data_i[69] & sel_one_hot_i[1];
  assign data_masked[68] = data_i[68] & sel_one_hot_i[1];
  assign data_masked[67] = data_i[67] & sel_one_hot_i[1];
  assign data_masked[66] = data_i[66] & sel_one_hot_i[1];
  assign data_masked[65] = data_i[65] & sel_one_hot_i[1];
  assign data_masked[64] = data_i[64] & sel_one_hot_i[1];
  assign data_masked[63] = data_i[63] & sel_one_hot_i[1];
  assign data_masked[62] = data_i[62] & sel_one_hot_i[1];
  assign data_masked[61] = data_i[61] & sel_one_hot_i[1];
  assign data_masked[60] = data_i[60] & sel_one_hot_i[1];
  assign data_masked[59] = data_i[59] & sel_one_hot_i[1];
  assign data_masked[58] = data_i[58] & sel_one_hot_i[1];
  assign data_masked[57] = data_i[57] & sel_one_hot_i[1];
  assign data_masked[56] = data_i[56] & sel_one_hot_i[1];
  assign data_masked[55] = data_i[55] & sel_one_hot_i[1];
  assign data_masked[54] = data_i[54] & sel_one_hot_i[1];
  assign data_masked[53] = data_i[53] & sel_one_hot_i[1];
  assign data_masked[52] = data_i[52] & sel_one_hot_i[1];
  assign data_masked[51] = data_i[51] & sel_one_hot_i[1];
  assign data_masked[50] = data_i[50] & sel_one_hot_i[1];
  assign data_masked[49] = data_i[49] & sel_one_hot_i[1];
  assign data_masked[48] = data_i[48] & sel_one_hot_i[1];
  assign data_masked[47] = data_i[47] & sel_one_hot_i[1];
  assign data_masked[46] = data_i[46] & sel_one_hot_i[1];
  assign data_masked[45] = data_i[45] & sel_one_hot_i[1];
  assign data_masked[44] = data_i[44] & sel_one_hot_i[1];
  assign data_masked[43] = data_i[43] & sel_one_hot_i[1];
  assign data_masked[42] = data_i[42] & sel_one_hot_i[1];
  assign data_masked[41] = data_i[41] & sel_one_hot_i[1];
  assign data_masked[40] = data_i[40] & sel_one_hot_i[1];
  assign data_masked[119] = data_i[119] & sel_one_hot_i[2];
  assign data_masked[118] = data_i[118] & sel_one_hot_i[2];
  assign data_masked[117] = data_i[117] & sel_one_hot_i[2];
  assign data_masked[116] = data_i[116] & sel_one_hot_i[2];
  assign data_masked[115] = data_i[115] & sel_one_hot_i[2];
  assign data_masked[114] = data_i[114] & sel_one_hot_i[2];
  assign data_masked[113] = data_i[113] & sel_one_hot_i[2];
  assign data_masked[112] = data_i[112] & sel_one_hot_i[2];
  assign data_masked[111] = data_i[111] & sel_one_hot_i[2];
  assign data_masked[110] = data_i[110] & sel_one_hot_i[2];
  assign data_masked[109] = data_i[109] & sel_one_hot_i[2];
  assign data_masked[108] = data_i[108] & sel_one_hot_i[2];
  assign data_masked[107] = data_i[107] & sel_one_hot_i[2];
  assign data_masked[106] = data_i[106] & sel_one_hot_i[2];
  assign data_masked[105] = data_i[105] & sel_one_hot_i[2];
  assign data_masked[104] = data_i[104] & sel_one_hot_i[2];
  assign data_masked[103] = data_i[103] & sel_one_hot_i[2];
  assign data_masked[102] = data_i[102] & sel_one_hot_i[2];
  assign data_masked[101] = data_i[101] & sel_one_hot_i[2];
  assign data_masked[100] = data_i[100] & sel_one_hot_i[2];
  assign data_masked[99] = data_i[99] & sel_one_hot_i[2];
  assign data_masked[98] = data_i[98] & sel_one_hot_i[2];
  assign data_masked[97] = data_i[97] & sel_one_hot_i[2];
  assign data_masked[96] = data_i[96] & sel_one_hot_i[2];
  assign data_masked[95] = data_i[95] & sel_one_hot_i[2];
  assign data_masked[94] = data_i[94] & sel_one_hot_i[2];
  assign data_masked[93] = data_i[93] & sel_one_hot_i[2];
  assign data_masked[92] = data_i[92] & sel_one_hot_i[2];
  assign data_masked[91] = data_i[91] & sel_one_hot_i[2];
  assign data_masked[90] = data_i[90] & sel_one_hot_i[2];
  assign data_masked[89] = data_i[89] & sel_one_hot_i[2];
  assign data_masked[88] = data_i[88] & sel_one_hot_i[2];
  assign data_masked[87] = data_i[87] & sel_one_hot_i[2];
  assign data_masked[86] = data_i[86] & sel_one_hot_i[2];
  assign data_masked[85] = data_i[85] & sel_one_hot_i[2];
  assign data_masked[84] = data_i[84] & sel_one_hot_i[2];
  assign data_masked[83] = data_i[83] & sel_one_hot_i[2];
  assign data_masked[82] = data_i[82] & sel_one_hot_i[2];
  assign data_masked[81] = data_i[81] & sel_one_hot_i[2];
  assign data_masked[80] = data_i[80] & sel_one_hot_i[2];
  assign data_masked[159] = data_i[159] & sel_one_hot_i[3];
  assign data_masked[158] = data_i[158] & sel_one_hot_i[3];
  assign data_masked[157] = data_i[157] & sel_one_hot_i[3];
  assign data_masked[156] = data_i[156] & sel_one_hot_i[3];
  assign data_masked[155] = data_i[155] & sel_one_hot_i[3];
  assign data_masked[154] = data_i[154] & sel_one_hot_i[3];
  assign data_masked[153] = data_i[153] & sel_one_hot_i[3];
  assign data_masked[152] = data_i[152] & sel_one_hot_i[3];
  assign data_masked[151] = data_i[151] & sel_one_hot_i[3];
  assign data_masked[150] = data_i[150] & sel_one_hot_i[3];
  assign data_masked[149] = data_i[149] & sel_one_hot_i[3];
  assign data_masked[148] = data_i[148] & sel_one_hot_i[3];
  assign data_masked[147] = data_i[147] & sel_one_hot_i[3];
  assign data_masked[146] = data_i[146] & sel_one_hot_i[3];
  assign data_masked[145] = data_i[145] & sel_one_hot_i[3];
  assign data_masked[144] = data_i[144] & sel_one_hot_i[3];
  assign data_masked[143] = data_i[143] & sel_one_hot_i[3];
  assign data_masked[142] = data_i[142] & sel_one_hot_i[3];
  assign data_masked[141] = data_i[141] & sel_one_hot_i[3];
  assign data_masked[140] = data_i[140] & sel_one_hot_i[3];
  assign data_masked[139] = data_i[139] & sel_one_hot_i[3];
  assign data_masked[138] = data_i[138] & sel_one_hot_i[3];
  assign data_masked[137] = data_i[137] & sel_one_hot_i[3];
  assign data_masked[136] = data_i[136] & sel_one_hot_i[3];
  assign data_masked[135] = data_i[135] & sel_one_hot_i[3];
  assign data_masked[134] = data_i[134] & sel_one_hot_i[3];
  assign data_masked[133] = data_i[133] & sel_one_hot_i[3];
  assign data_masked[132] = data_i[132] & sel_one_hot_i[3];
  assign data_masked[131] = data_i[131] & sel_one_hot_i[3];
  assign data_masked[130] = data_i[130] & sel_one_hot_i[3];
  assign data_masked[129] = data_i[129] & sel_one_hot_i[3];
  assign data_masked[128] = data_i[128] & sel_one_hot_i[3];
  assign data_masked[127] = data_i[127] & sel_one_hot_i[3];
  assign data_masked[126] = data_i[126] & sel_one_hot_i[3];
  assign data_masked[125] = data_i[125] & sel_one_hot_i[3];
  assign data_masked[124] = data_i[124] & sel_one_hot_i[3];
  assign data_masked[123] = data_i[123] & sel_one_hot_i[3];
  assign data_masked[122] = data_i[122] & sel_one_hot_i[3];
  assign data_masked[121] = data_i[121] & sel_one_hot_i[3];
  assign data_masked[120] = data_i[120] & sel_one_hot_i[3];
  assign data_o[0] = N1 | data_masked[0];
  assign N1 = N0 | data_masked[40];
  assign N0 = data_masked[120] | data_masked[80];
  assign data_o[1] = N3 | data_masked[1];
  assign N3 = N2 | data_masked[41];
  assign N2 = data_masked[121] | data_masked[81];
  assign data_o[2] = N5 | data_masked[2];
  assign N5 = N4 | data_masked[42];
  assign N4 = data_masked[122] | data_masked[82];
  assign data_o[3] = N7 | data_masked[3];
  assign N7 = N6 | data_masked[43];
  assign N6 = data_masked[123] | data_masked[83];
  assign data_o[4] = N9 | data_masked[4];
  assign N9 = N8 | data_masked[44];
  assign N8 = data_masked[124] | data_masked[84];
  assign data_o[5] = N11 | data_masked[5];
  assign N11 = N10 | data_masked[45];
  assign N10 = data_masked[125] | data_masked[85];
  assign data_o[6] = N13 | data_masked[6];
  assign N13 = N12 | data_masked[46];
  assign N12 = data_masked[126] | data_masked[86];
  assign data_o[7] = N15 | data_masked[7];
  assign N15 = N14 | data_masked[47];
  assign N14 = data_masked[127] | data_masked[87];
  assign data_o[8] = N17 | data_masked[8];
  assign N17 = N16 | data_masked[48];
  assign N16 = data_masked[128] | data_masked[88];
  assign data_o[9] = N19 | data_masked[9];
  assign N19 = N18 | data_masked[49];
  assign N18 = data_masked[129] | data_masked[89];
  assign data_o[10] = N21 | data_masked[10];
  assign N21 = N20 | data_masked[50];
  assign N20 = data_masked[130] | data_masked[90];
  assign data_o[11] = N23 | data_masked[11];
  assign N23 = N22 | data_masked[51];
  assign N22 = data_masked[131] | data_masked[91];
  assign data_o[12] = N25 | data_masked[12];
  assign N25 = N24 | data_masked[52];
  assign N24 = data_masked[132] | data_masked[92];
  assign data_o[13] = N27 | data_masked[13];
  assign N27 = N26 | data_masked[53];
  assign N26 = data_masked[133] | data_masked[93];
  assign data_o[14] = N29 | data_masked[14];
  assign N29 = N28 | data_masked[54];
  assign N28 = data_masked[134] | data_masked[94];
  assign data_o[15] = N31 | data_masked[15];
  assign N31 = N30 | data_masked[55];
  assign N30 = data_masked[135] | data_masked[95];
  assign data_o[16] = N33 | data_masked[16];
  assign N33 = N32 | data_masked[56];
  assign N32 = data_masked[136] | data_masked[96];
  assign data_o[17] = N35 | data_masked[17];
  assign N35 = N34 | data_masked[57];
  assign N34 = data_masked[137] | data_masked[97];
  assign data_o[18] = N37 | data_masked[18];
  assign N37 = N36 | data_masked[58];
  assign N36 = data_masked[138] | data_masked[98];
  assign data_o[19] = N39 | data_masked[19];
  assign N39 = N38 | data_masked[59];
  assign N38 = data_masked[139] | data_masked[99];
  assign data_o[20] = N41 | data_masked[20];
  assign N41 = N40 | data_masked[60];
  assign N40 = data_masked[140] | data_masked[100];
  assign data_o[21] = N43 | data_masked[21];
  assign N43 = N42 | data_masked[61];
  assign N42 = data_masked[141] | data_masked[101];
  assign data_o[22] = N45 | data_masked[22];
  assign N45 = N44 | data_masked[62];
  assign N44 = data_masked[142] | data_masked[102];
  assign data_o[23] = N47 | data_masked[23];
  assign N47 = N46 | data_masked[63];
  assign N46 = data_masked[143] | data_masked[103];
  assign data_o[24] = N49 | data_masked[24];
  assign N49 = N48 | data_masked[64];
  assign N48 = data_masked[144] | data_masked[104];
  assign data_o[25] = N51 | data_masked[25];
  assign N51 = N50 | data_masked[65];
  assign N50 = data_masked[145] | data_masked[105];
  assign data_o[26] = N53 | data_masked[26];
  assign N53 = N52 | data_masked[66];
  assign N52 = data_masked[146] | data_masked[106];
  assign data_o[27] = N55 | data_masked[27];
  assign N55 = N54 | data_masked[67];
  assign N54 = data_masked[147] | data_masked[107];
  assign data_o[28] = N57 | data_masked[28];
  assign N57 = N56 | data_masked[68];
  assign N56 = data_masked[148] | data_masked[108];
  assign data_o[29] = N59 | data_masked[29];
  assign N59 = N58 | data_masked[69];
  assign N58 = data_masked[149] | data_masked[109];
  assign data_o[30] = N61 | data_masked[30];
  assign N61 = N60 | data_masked[70];
  assign N60 = data_masked[150] | data_masked[110];
  assign data_o[31] = N63 | data_masked[31];
  assign N63 = N62 | data_masked[71];
  assign N62 = data_masked[151] | data_masked[111];
  assign data_o[32] = N65 | data_masked[32];
  assign N65 = N64 | data_masked[72];
  assign N64 = data_masked[152] | data_masked[112];
  assign data_o[33] = N67 | data_masked[33];
  assign N67 = N66 | data_masked[73];
  assign N66 = data_masked[153] | data_masked[113];
  assign data_o[34] = N69 | data_masked[34];
  assign N69 = N68 | data_masked[74];
  assign N68 = data_masked[154] | data_masked[114];
  assign data_o[35] = N71 | data_masked[35];
  assign N71 = N70 | data_masked[75];
  assign N70 = data_masked[155] | data_masked[115];
  assign data_o[36] = N73 | data_masked[36];
  assign N73 = N72 | data_masked[76];
  assign N72 = data_masked[156] | data_masked[116];
  assign data_o[37] = N75 | data_masked[37];
  assign N75 = N74 | data_masked[77];
  assign N74 = data_masked[157] | data_masked[117];
  assign data_o[38] = N77 | data_masked[38];
  assign N77 = N76 | data_masked[78];
  assign N76 = data_masked[158] | data_masked[118];
  assign data_o[39] = N79 | data_masked[39];
  assign N79 = N78 | data_masked[79];
  assign N78 = data_masked[159] | data_masked[119];

endmodule



module bsg_crossbar_o_by_i_i_els_p4_o_els_p1_width_p40
(
  i,
  sel_oi_one_hot_i,
  o
);

  input [159:0] i;
  input [3:0] sel_oi_one_hot_i;
  output [39:0] o;
  wire [39:0] o;

  bsg_mux_one_hot_width_p40_els_p4
  genblk1_0__mux_one_hot
  (
    .data_i(i),
    .sel_one_hot_i(sel_oi_one_hot_i),
    .data_o(o)
  );


endmodule



module bsg_round_robin_n_to_1_width_p40_num_in_p4_strict_p0
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  yumi_o,
  v_o,
  data_o,
  tag_o,
  yumi_i
);

  input [159:0] data_i;
  input [3:0] v_i;
  output [3:0] yumi_o;
  output [39:0] data_o;
  output [1:0] tag_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;
  wire [3:0] yumi_o,greedy_grants_lo;
  wire [39:0] data_o;
  wire [1:0] tag_o;
  wire v_o,n_1_net_,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,
  SYNOPSYS_UNCONNECTED_3,SYNOPSYS_UNCONNECTED_4;

  bsg_round_robin_arb_inputs_p4
  greedy_rr_arb_ctrl
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .grants_en_i(1'b1),
    .reqs_i(v_i),
    .grants_o(greedy_grants_lo),
    .sel_one_hot_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4 }),
    .v_o(v_o),
    .tag_o(tag_o),
    .yumi_i(n_1_net_)
  );


  bsg_crossbar_o_by_i_i_els_p4_o_els_p1_width_p40
  greedy_xbar
  (
    .i(data_i),
    .sel_oi_one_hot_i(greedy_grants_lo),
    .o(data_o)
  );

  assign n_1_net_ = yumi_i & v_o;
  assign yumi_o[3] = greedy_grants_lo[3] & yumi_i;
  assign yumi_o[2] = greedy_grants_lo[2] & yumi_i;
  assign yumi_o[1] = greedy_grants_lo[1] & yumi_i;
  assign yumi_o[0] = greedy_grants_lo[0] & yumi_i;

endmodule



module bsg_circular_ptr_slots_p4_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [1:0] o;
  output [1:0] n_o;
  input clk;
  input reset_i;
  wire [1:0] n_o,genblk1_genblk1_ptr_r_p1;
  wire N0,N1,N2,N3,N4,N5,N6,N7;
  reg [1:0] o;
  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign { N6, N5 } = (N0)? { 1'b0, 1'b0 } : 
                      (N1)? n_o : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign n_o = (N2)? genblk1_genblk1_ptr_r_p1 : 
               (N3)? o : 1'b0;
  assign N2 = add_i[0];
  assign N3 = N7;
  assign N4 = ~reset_i;
  assign N7 = ~add_i[0];

  always @(posedge clk) begin
    if(1'b1) begin
      { o[1:0] } <= { N6, N5 };
    end 
  end


endmodule



module bsg_fifo_tracker_els_p4
(
  clk_i,
  reset_i,
  enq_i,
  deq_i,
  wptr_r_o,
  rptr_r_o,
  rptr_n_o,
  full_o,
  empty_o
);

  output [1:0] wptr_r_o;
  output [1:0] rptr_r_o;
  output [1:0] rptr_n_o;
  input clk_i;
  input reset_i;
  input enq_i;
  input deq_i;
  output full_o;
  output empty_o;
  wire [1:0] wptr_r_o,rptr_r_o,rptr_n_o;
  wire full_o,empty_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,equal_ptrs,SYNOPSYS_UNCONNECTED_1,
  SYNOPSYS_UNCONNECTED_2;
  reg deq_r,enq_r;

  bsg_circular_ptr_slots_p4_max_add_p1
  rptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(deq_i),
    .o(rptr_r_o),
    .n_o(rptr_n_o)
  );


  bsg_circular_ptr_slots_p4_max_add_p1
  wptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(enq_i),
    .o(wptr_r_o),
    .n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2 })
  );

  assign equal_ptrs = rptr_r_o == wptr_r_o;
  assign N5 = (N0)? 1'b1 : 
              (N9)? 1'b1 : 
              (N4)? 1'b0 : 1'b0;
  assign N0 = N2;
  assign N6 = (N0)? 1'b0 : 
              (N9)? enq_i : 1'b0;
  assign N7 = (N0)? 1'b1 : 
              (N9)? deq_i : 1'b0;
  assign N1 = enq_i | deq_i;
  assign N2 = reset_i;
  assign N3 = N1 | N2;
  assign N4 = ~N3;
  assign N8 = ~N2;
  assign N9 = N1 & N8;
  assign empty_o = equal_ptrs & deq_r;
  assign full_o = equal_ptrs & enq_r;

  always @(posedge clk_i) begin
    if(N5) begin
      deq_r <= N7;
      enq_r <= N6;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p2_els_p4_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [1:0] w_addr_i;
  input [1:0] w_data_i;
  input [1:0] r_addr_i;
  output [1:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [1:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20;
  reg [7:0] mem;
  assign r_data_o[1] = (N8)? mem[1] : 
                       (N10)? mem[3] : 
                       (N9)? mem[5] : 
                       (N11)? mem[7] : 1'b0;
  assign r_data_o[0] = (N8)? mem[0] : 
                       (N10)? mem[2] : 
                       (N9)? mem[4] : 
                       (N11)? mem[6] : 1'b0;
  assign N16 = w_addr_i[0] & w_addr_i[1];
  assign N15 = N0 & w_addr_i[1];
  assign N0 = ~w_addr_i[0];
  assign N14 = w_addr_i[0] & N1;
  assign N1 = ~w_addr_i[1];
  assign N13 = N2 & N3;
  assign N2 = ~w_addr_i[0];
  assign N3 = ~w_addr_i[1];
  assign { N20, N19, N18, N17 } = (N4)? { N16, N15, N14, N13 } : 
                                  (N5)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N4 = w_v_i;
  assign N5 = N12;
  assign N6 = ~r_addr_i[0];
  assign N7 = ~r_addr_i[1];
  assign N8 = N6 & N7;
  assign N9 = N6 & r_addr_i[1];
  assign N10 = r_addr_i[0] & N7;
  assign N11 = r_addr_i[0] & r_addr_i[1];
  assign N12 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N20) begin
      { mem[7:6] } <= { w_data_i[1:0] };
    end 
    if(N19) begin
      { mem[5:4] } <= { w_data_i[1:0] };
    end 
    if(N18) begin
      { mem[3:2] } <= { w_data_i[1:0] };
    end 
    if(N17) begin
      { mem[1:0] } <= { w_data_i[1:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p2_els_p4_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [1:0] w_addr_i;
  input [1:0] w_data_i;
  input [1:0] r_addr_i;
  output [1:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [1:0] r_data_o;

  bsg_mem_1r1w_synth_width_p2_els_p4_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i),
    .w_data_i(w_data_i),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i),
    .r_data_o(r_data_o)
  );


endmodule



module bsg_fifo_1r1w_small_unhardened_width_p2_els_p4_ready_THEN_valid_p0
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  data_i,
  v_o,
  data_o,
  yumi_i
);

  input [1:0] data_i;
  output [1:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [1:0] data_o,wptr_r,rptr_r;
  wire ready_o,v_o,enque,full,empty,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2;

  bsg_fifo_tracker_els_p4
  ft
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .enq_i(enque),
    .deq_i(yumi_i),
    .wptr_r_o(wptr_r),
    .rptr_r_o(rptr_r),
    .rptr_n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2 }),
    .full_o(full),
    .empty_o(empty)
  );


  bsg_mem_1r1w_width_p2_els_p4_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enque),
    .w_addr_i(wptr_r),
    .w_data_i(data_i),
    .r_v_i(v_o),
    .r_addr_i(rptr_r),
    .r_data_o(data_o)
  );

  assign enque = v_i & ready_o;
  assign ready_o = ~full;
  assign v_o = ~empty;

endmodule



module bsg_fifo_1r1w_small_width_p2_els_p4
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  data_i,
  v_o,
  data_o,
  yumi_i
);

  input [1:0] data_i;
  output [1:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [1:0] data_o;
  wire ready_o,v_o;

  bsg_fifo_1r1w_small_unhardened_width_p2_els_p4_ready_THEN_valid_p0
  unhardened_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_i(data_i),
    .v_o(v_o),
    .data_o(data_o),
    .yumi_i(yumi_i)
  );


endmodule



module bsg_mem_1r1w_synth_width_p64_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [63:0] w_data_i;
  input [0:0] r_addr_i;
  output [63:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [63:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [127:0] mem;
  assign r_data_o[63] = (N3)? mem[63] : 
                        (N0)? mem[127] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[62] = (N3)? mem[62] : 
                        (N0)? mem[126] : 1'b0;
  assign r_data_o[61] = (N3)? mem[61] : 
                        (N0)? mem[125] : 1'b0;
  assign r_data_o[60] = (N3)? mem[60] : 
                        (N0)? mem[124] : 1'b0;
  assign r_data_o[59] = (N3)? mem[59] : 
                        (N0)? mem[123] : 1'b0;
  assign r_data_o[58] = (N3)? mem[58] : 
                        (N0)? mem[122] : 1'b0;
  assign r_data_o[57] = (N3)? mem[57] : 
                        (N0)? mem[121] : 1'b0;
  assign r_data_o[56] = (N3)? mem[56] : 
                        (N0)? mem[120] : 1'b0;
  assign r_data_o[55] = (N3)? mem[55] : 
                        (N0)? mem[119] : 1'b0;
  assign r_data_o[54] = (N3)? mem[54] : 
                        (N0)? mem[118] : 1'b0;
  assign r_data_o[53] = (N3)? mem[53] : 
                        (N0)? mem[117] : 1'b0;
  assign r_data_o[52] = (N3)? mem[52] : 
                        (N0)? mem[116] : 1'b0;
  assign r_data_o[51] = (N3)? mem[51] : 
                        (N0)? mem[115] : 1'b0;
  assign r_data_o[50] = (N3)? mem[50] : 
                        (N0)? mem[114] : 1'b0;
  assign r_data_o[49] = (N3)? mem[49] : 
                        (N0)? mem[113] : 1'b0;
  assign r_data_o[48] = (N3)? mem[48] : 
                        (N0)? mem[112] : 1'b0;
  assign r_data_o[47] = (N3)? mem[47] : 
                        (N0)? mem[111] : 1'b0;
  assign r_data_o[46] = (N3)? mem[46] : 
                        (N0)? mem[110] : 1'b0;
  assign r_data_o[45] = (N3)? mem[45] : 
                        (N0)? mem[109] : 1'b0;
  assign r_data_o[44] = (N3)? mem[44] : 
                        (N0)? mem[108] : 1'b0;
  assign r_data_o[43] = (N3)? mem[43] : 
                        (N0)? mem[107] : 1'b0;
  assign r_data_o[42] = (N3)? mem[42] : 
                        (N0)? mem[106] : 1'b0;
  assign r_data_o[41] = (N3)? mem[41] : 
                        (N0)? mem[105] : 1'b0;
  assign r_data_o[40] = (N3)? mem[40] : 
                        (N0)? mem[104] : 1'b0;
  assign r_data_o[39] = (N3)? mem[39] : 
                        (N0)? mem[103] : 1'b0;
  assign r_data_o[38] = (N3)? mem[38] : 
                        (N0)? mem[102] : 1'b0;
  assign r_data_o[37] = (N3)? mem[37] : 
                        (N0)? mem[101] : 1'b0;
  assign r_data_o[36] = (N3)? mem[36] : 
                        (N0)? mem[100] : 1'b0;
  assign r_data_o[35] = (N3)? mem[35] : 
                        (N0)? mem[99] : 1'b0;
  assign r_data_o[34] = (N3)? mem[34] : 
                        (N0)? mem[98] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] : 
                        (N0)? mem[97] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] : 
                        (N0)? mem[96] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[95] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[94] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[93] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[92] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[91] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[90] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[89] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[88] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[87] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[86] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[85] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[84] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[83] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[82] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[81] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[80] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[79] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[78] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[77] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[76] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[75] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[74] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[73] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[72] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[71] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[70] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[69] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[68] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[67] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[66] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[65] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[64] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[127:64] } <= { w_data_i[63:0] };
    end 
    if(N7) begin
      { mem[63:0] } <= { w_data_i[63:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p64_els_p2_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [63:0] w_data_i;
  input [0:0] r_addr_i;
  output [63:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [63:0] r_data_o;

  bsg_mem_1r1w_synth_width_p64_els_p2_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i[0]),
    .w_data_i(w_data_i),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i[0]),
    .r_data_o(r_data_o)
  );


endmodule



module bsg_two_fifo_width_p64
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  yumi_i
);

  input [63:0] data_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [63:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p64_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i),
    .r_v_i(n_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o)
  );

  assign N9 = (N0)? 1'b1 : 
              (N1)? N5 : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign N10 = (N0)? 1'b0 : 
               (N1)? N4 : 1'b0;
  assign N11 = (N0)? 1'b1 : 
               (N1)? yumi_i : 1'b0;
  assign N12 = (N0)? 1'b0 : 
               (N1)? N6 : 1'b0;
  assign N13 = (N0)? 1'b1 : 
               (N1)? N7 : 1'b0;
  assign N14 = (N0)? 1'b0 : 
               (N1)? N8 : 1'b0;
  assign n_0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N15;
  assign N15 = ~full_r;
  assign N2 = ~reset_i;
  assign N3 = reset_i;
  assign N5 = enq_i;
  assign N4 = ~tail_r;
  assign N6 = ~head_r;
  assign N7 = N17 | N19;
  assign N17 = empty_r & N16;
  assign N16 = ~enq_i;
  assign N19 = N18 & N16;
  assign N18 = N15 & yumi_i;
  assign N8 = N23 | N24;
  assign N23 = N21 & N22;
  assign N21 = N20 & enq_i;
  assign N20 = ~empty_r;
  assign N22 = ~yumi_i;
  assign N24 = full_r & N22;

  always @(posedge clk_i) begin
    if(1'b1) begin
      full_r <= N14;
      empty_r <= N13;
    end 
    if(N9) begin
      tail_r <= N10;
    end 
    if(N11) begin
      head_r <= N12;
    end 
  end


endmodule



module bsg_parallel_in_serial_out_width_p64_els_p1
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

  input [63:0] data_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input valid_i;
  input yumi_i;
  output ready_o;
  output valid_o;
  wire [63:0] data_o;
  wire ready_o,valid_o;

  bsg_two_fifo_width_p64
  fifo_two_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_o),
    .data_i(data_i),
    .v_i(valid_i),
    .v_o(valid_o),
    .data_o(data_o),
    .yumi_i(yumi_i)
  );


endmodule



module bsg_decode_num_out_p4
(
  i,
  o
);

  input [1:0] i;
  output [3:0] o;
  wire [3:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule



module bsg_decode_with_v_num_out_p4
(
  i,
  v_i,
  o
);

  input [1:0] i;
  output [3:0] o;
  input v_i;
  wire [3:0] o,lo;

  bsg_decode_num_out_p4
  bd
  (
    .i(i),
    .o(lo)
  );

  assign o[3] = v_i & lo[3];
  assign o[2] = v_i & lo[2];
  assign o[1] = v_i & lo[1];
  assign o[0] = v_i & lo[0];

endmodule



module bsg_counter_clear_up_max_val_p7_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [2:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14;
  reg [2:0] count_o;
  assign { N8, N7, N6 } = { N14, N13, N12 } + up_i;
  assign { N11, N10, N9 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                            (N1)? { N8, N7, N6 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign { N14, N13, N12 } = count_o * N4;
  assign N2 = ~reset_i;
  assign N3 = N2;
  assign N4 = ~clear_i;
  assign N5 = N3 & N4;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_o[2:0] } <= { N11, N10, N9 };
    end 
  end


endmodule



module bsg_cache_to_axi_rx_num_cache_p4_data_width_p64_block_size_in_words_p8_axi_id_width_p6_axi_addr_width_p5_axi_data_width_p64_axi_burst_len_p1
(
  clk_i,
  reset_i,
  v_i,
  yumi_o,
  tag_i,
  axi_addr_i,
  dma_data_o,
  dma_data_v_o,
  dma_data_ready_i,
  axi_arid_o,
  axi_araddr_o,
  axi_arlen_o,
  axi_arsize_o,
  axi_arburst_o,
  axi_arcache_o,
  axi_arprot_o,
  axi_arlock_o,
  axi_arvalid_o,
  axi_arready_i,
  axi_rid_i,
  axi_rdata_i,
  axi_rresp_i,
  axi_rlast_i,
  axi_rvalid_i,
  axi_rready_o
);

  input [1:0] tag_i;
  input [4:0] axi_addr_i;
  output [255:0] dma_data_o;
  output [3:0] dma_data_v_o;
  input [3:0] dma_data_ready_i;
  output [5:0] axi_arid_o;
  output [4:0] axi_araddr_o;
  output [7:0] axi_arlen_o;
  output [2:0] axi_arsize_o;
  output [1:0] axi_arburst_o;
  output [3:0] axi_arcache_o;
  output [2:0] axi_arprot_o;
  input [5:0] axi_rid_i;
  input [63:0] axi_rdata_i;
  input [1:0] axi_rresp_i;
  input clk_i;
  input reset_i;
  input v_i;
  input axi_arready_i;
  input axi_rlast_i;
  input axi_rvalid_i;
  output yumi_o;
  output axi_arlock_o;
  output axi_arvalid_o;
  output axi_rready_o;
  wire [255:0] dma_data_o;
  wire [3:0] dma_data_v_o,axi_arcache_o,cache_sel;
  wire [5:0] axi_arid_o;
  wire [4:0] axi_araddr_o;
  wire [7:0] axi_arlen_o;
  wire [2:0] axi_arsize_o,axi_arprot_o,count_lo;
  wire [1:0] axi_arburst_o,tag_lo;
  wire yumi_o,axi_arlock_o,axi_arvalid_o,axi_rready_o,N0,v_i,tag_fifo_v_lo,
  tag_fifo_yumi_li,piso_v_lo,piso_yumi_li,counter_clear_li,counter_up_li,N1,N2,N3,N4,N5,N6,N7,
  N8,N9,N10,N11;
  assign axi_arburst_o[0] = 1'b1;
  assign axi_arsize_o[0] = 1'b1;
  assign axi_arsize_o[1] = 1'b1;
  assign axi_arlock_o = 1'b0;
  assign axi_arprot_o[0] = 1'b0;
  assign axi_arprot_o[1] = 1'b0;
  assign axi_arprot_o[2] = 1'b0;
  assign axi_arcache_o[0] = 1'b0;
  assign axi_arcache_o[1] = 1'b0;
  assign axi_arcache_o[2] = 1'b0;
  assign axi_arcache_o[3] = 1'b0;
  assign axi_arburst_o[1] = 1'b0;
  assign axi_arsize_o[2] = 1'b0;
  assign axi_arlen_o[0] = 1'b0;
  assign axi_arlen_o[1] = 1'b0;
  assign axi_arlen_o[2] = 1'b0;
  assign axi_arlen_o[3] = 1'b0;
  assign axi_arlen_o[4] = 1'b0;
  assign axi_arlen_o[5] = 1'b0;
  assign axi_arlen_o[6] = 1'b0;
  assign axi_arlen_o[7] = 1'b0;
  assign axi_arid_o[0] = 1'b0;
  assign axi_arid_o[1] = 1'b0;
  assign axi_arid_o[2] = 1'b0;
  assign axi_arid_o[3] = 1'b0;
  assign axi_arid_o[4] = 1'b0;
  assign axi_arid_o[5] = 1'b0;
  assign dma_data_o[255] = dma_data_o[63];
  assign dma_data_o[191] = dma_data_o[63];
  assign dma_data_o[127] = dma_data_o[63];
  assign dma_data_o[254] = dma_data_o[62];
  assign dma_data_o[190] = dma_data_o[62];
  assign dma_data_o[126] = dma_data_o[62];
  assign dma_data_o[253] = dma_data_o[61];
  assign dma_data_o[189] = dma_data_o[61];
  assign dma_data_o[125] = dma_data_o[61];
  assign dma_data_o[252] = dma_data_o[60];
  assign dma_data_o[188] = dma_data_o[60];
  assign dma_data_o[124] = dma_data_o[60];
  assign dma_data_o[251] = dma_data_o[59];
  assign dma_data_o[187] = dma_data_o[59];
  assign dma_data_o[123] = dma_data_o[59];
  assign dma_data_o[250] = dma_data_o[58];
  assign dma_data_o[186] = dma_data_o[58];
  assign dma_data_o[122] = dma_data_o[58];
  assign dma_data_o[249] = dma_data_o[57];
  assign dma_data_o[185] = dma_data_o[57];
  assign dma_data_o[121] = dma_data_o[57];
  assign dma_data_o[248] = dma_data_o[56];
  assign dma_data_o[184] = dma_data_o[56];
  assign dma_data_o[120] = dma_data_o[56];
  assign dma_data_o[247] = dma_data_o[55];
  assign dma_data_o[183] = dma_data_o[55];
  assign dma_data_o[119] = dma_data_o[55];
  assign dma_data_o[246] = dma_data_o[54];
  assign dma_data_o[182] = dma_data_o[54];
  assign dma_data_o[118] = dma_data_o[54];
  assign dma_data_o[245] = dma_data_o[53];
  assign dma_data_o[181] = dma_data_o[53];
  assign dma_data_o[117] = dma_data_o[53];
  assign dma_data_o[244] = dma_data_o[52];
  assign dma_data_o[180] = dma_data_o[52];
  assign dma_data_o[116] = dma_data_o[52];
  assign dma_data_o[243] = dma_data_o[51];
  assign dma_data_o[179] = dma_data_o[51];
  assign dma_data_o[115] = dma_data_o[51];
  assign dma_data_o[242] = dma_data_o[50];
  assign dma_data_o[178] = dma_data_o[50];
  assign dma_data_o[114] = dma_data_o[50];
  assign dma_data_o[241] = dma_data_o[49];
  assign dma_data_o[177] = dma_data_o[49];
  assign dma_data_o[113] = dma_data_o[49];
  assign dma_data_o[240] = dma_data_o[48];
  assign dma_data_o[176] = dma_data_o[48];
  assign dma_data_o[112] = dma_data_o[48];
  assign dma_data_o[239] = dma_data_o[47];
  assign dma_data_o[175] = dma_data_o[47];
  assign dma_data_o[111] = dma_data_o[47];
  assign dma_data_o[238] = dma_data_o[46];
  assign dma_data_o[174] = dma_data_o[46];
  assign dma_data_o[110] = dma_data_o[46];
  assign dma_data_o[237] = dma_data_o[45];
  assign dma_data_o[173] = dma_data_o[45];
  assign dma_data_o[109] = dma_data_o[45];
  assign dma_data_o[236] = dma_data_o[44];
  assign dma_data_o[172] = dma_data_o[44];
  assign dma_data_o[108] = dma_data_o[44];
  assign dma_data_o[235] = dma_data_o[43];
  assign dma_data_o[171] = dma_data_o[43];
  assign dma_data_o[107] = dma_data_o[43];
  assign dma_data_o[234] = dma_data_o[42];
  assign dma_data_o[170] = dma_data_o[42];
  assign dma_data_o[106] = dma_data_o[42];
  assign dma_data_o[233] = dma_data_o[41];
  assign dma_data_o[169] = dma_data_o[41];
  assign dma_data_o[105] = dma_data_o[41];
  assign dma_data_o[232] = dma_data_o[40];
  assign dma_data_o[168] = dma_data_o[40];
  assign dma_data_o[104] = dma_data_o[40];
  assign dma_data_o[231] = dma_data_o[39];
  assign dma_data_o[167] = dma_data_o[39];
  assign dma_data_o[103] = dma_data_o[39];
  assign dma_data_o[230] = dma_data_o[38];
  assign dma_data_o[166] = dma_data_o[38];
  assign dma_data_o[102] = dma_data_o[38];
  assign dma_data_o[229] = dma_data_o[37];
  assign dma_data_o[165] = dma_data_o[37];
  assign dma_data_o[101] = dma_data_o[37];
  assign dma_data_o[228] = dma_data_o[36];
  assign dma_data_o[164] = dma_data_o[36];
  assign dma_data_o[100] = dma_data_o[36];
  assign dma_data_o[227] = dma_data_o[35];
  assign dma_data_o[163] = dma_data_o[35];
  assign dma_data_o[99] = dma_data_o[35];
  assign dma_data_o[226] = dma_data_o[34];
  assign dma_data_o[162] = dma_data_o[34];
  assign dma_data_o[98] = dma_data_o[34];
  assign dma_data_o[225] = dma_data_o[33];
  assign dma_data_o[161] = dma_data_o[33];
  assign dma_data_o[97] = dma_data_o[33];
  assign dma_data_o[224] = dma_data_o[32];
  assign dma_data_o[160] = dma_data_o[32];
  assign dma_data_o[96] = dma_data_o[32];
  assign dma_data_o[223] = dma_data_o[31];
  assign dma_data_o[159] = dma_data_o[31];
  assign dma_data_o[95] = dma_data_o[31];
  assign dma_data_o[222] = dma_data_o[30];
  assign dma_data_o[158] = dma_data_o[30];
  assign dma_data_o[94] = dma_data_o[30];
  assign dma_data_o[221] = dma_data_o[29];
  assign dma_data_o[157] = dma_data_o[29];
  assign dma_data_o[93] = dma_data_o[29];
  assign dma_data_o[220] = dma_data_o[28];
  assign dma_data_o[156] = dma_data_o[28];
  assign dma_data_o[92] = dma_data_o[28];
  assign dma_data_o[219] = dma_data_o[27];
  assign dma_data_o[155] = dma_data_o[27];
  assign dma_data_o[91] = dma_data_o[27];
  assign dma_data_o[218] = dma_data_o[26];
  assign dma_data_o[154] = dma_data_o[26];
  assign dma_data_o[90] = dma_data_o[26];
  assign dma_data_o[217] = dma_data_o[25];
  assign dma_data_o[153] = dma_data_o[25];
  assign dma_data_o[89] = dma_data_o[25];
  assign dma_data_o[216] = dma_data_o[24];
  assign dma_data_o[152] = dma_data_o[24];
  assign dma_data_o[88] = dma_data_o[24];
  assign dma_data_o[215] = dma_data_o[23];
  assign dma_data_o[151] = dma_data_o[23];
  assign dma_data_o[87] = dma_data_o[23];
  assign dma_data_o[214] = dma_data_o[22];
  assign dma_data_o[150] = dma_data_o[22];
  assign dma_data_o[86] = dma_data_o[22];
  assign dma_data_o[213] = dma_data_o[21];
  assign dma_data_o[149] = dma_data_o[21];
  assign dma_data_o[85] = dma_data_o[21];
  assign dma_data_o[212] = dma_data_o[20];
  assign dma_data_o[148] = dma_data_o[20];
  assign dma_data_o[84] = dma_data_o[20];
  assign dma_data_o[211] = dma_data_o[19];
  assign dma_data_o[147] = dma_data_o[19];
  assign dma_data_o[83] = dma_data_o[19];
  assign dma_data_o[210] = dma_data_o[18];
  assign dma_data_o[146] = dma_data_o[18];
  assign dma_data_o[82] = dma_data_o[18];
  assign dma_data_o[209] = dma_data_o[17];
  assign dma_data_o[145] = dma_data_o[17];
  assign dma_data_o[81] = dma_data_o[17];
  assign dma_data_o[208] = dma_data_o[16];
  assign dma_data_o[144] = dma_data_o[16];
  assign dma_data_o[80] = dma_data_o[16];
  assign dma_data_o[207] = dma_data_o[15];
  assign dma_data_o[143] = dma_data_o[15];
  assign dma_data_o[79] = dma_data_o[15];
  assign dma_data_o[206] = dma_data_o[14];
  assign dma_data_o[142] = dma_data_o[14];
  assign dma_data_o[78] = dma_data_o[14];
  assign dma_data_o[205] = dma_data_o[13];
  assign dma_data_o[141] = dma_data_o[13];
  assign dma_data_o[77] = dma_data_o[13];
  assign dma_data_o[204] = dma_data_o[12];
  assign dma_data_o[140] = dma_data_o[12];
  assign dma_data_o[76] = dma_data_o[12];
  assign dma_data_o[203] = dma_data_o[11];
  assign dma_data_o[139] = dma_data_o[11];
  assign dma_data_o[75] = dma_data_o[11];
  assign dma_data_o[202] = dma_data_o[10];
  assign dma_data_o[138] = dma_data_o[10];
  assign dma_data_o[74] = dma_data_o[10];
  assign dma_data_o[201] = dma_data_o[9];
  assign dma_data_o[137] = dma_data_o[9];
  assign dma_data_o[73] = dma_data_o[9];
  assign dma_data_o[200] = dma_data_o[8];
  assign dma_data_o[136] = dma_data_o[8];
  assign dma_data_o[72] = dma_data_o[8];
  assign dma_data_o[199] = dma_data_o[7];
  assign dma_data_o[135] = dma_data_o[7];
  assign dma_data_o[71] = dma_data_o[7];
  assign dma_data_o[198] = dma_data_o[6];
  assign dma_data_o[134] = dma_data_o[6];
  assign dma_data_o[70] = dma_data_o[6];
  assign dma_data_o[197] = dma_data_o[5];
  assign dma_data_o[133] = dma_data_o[5];
  assign dma_data_o[69] = dma_data_o[5];
  assign dma_data_o[196] = dma_data_o[4];
  assign dma_data_o[132] = dma_data_o[4];
  assign dma_data_o[68] = dma_data_o[4];
  assign dma_data_o[195] = dma_data_o[3];
  assign dma_data_o[131] = dma_data_o[3];
  assign dma_data_o[67] = dma_data_o[3];
  assign dma_data_o[194] = dma_data_o[2];
  assign dma_data_o[130] = dma_data_o[2];
  assign dma_data_o[66] = dma_data_o[2];
  assign dma_data_o[193] = dma_data_o[1];
  assign dma_data_o[129] = dma_data_o[1];
  assign dma_data_o[65] = dma_data_o[1];
  assign dma_data_o[192] = dma_data_o[0];
  assign dma_data_o[128] = dma_data_o[0];
  assign dma_data_o[64] = dma_data_o[0];
  assign axi_araddr_o[4] = axi_addr_i[4];
  assign axi_araddr_o[3] = axi_addr_i[3];
  assign axi_araddr_o[2] = axi_addr_i[2];
  assign axi_araddr_o[1] = axi_addr_i[1];
  assign axi_araddr_o[0] = axi_addr_i[0];
  assign axi_arvalid_o = v_i;

  bsg_fifo_1r1w_small_width_p2_els_p4
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(yumi_o),
    .data_i(tag_i),
    .v_o(tag_fifo_v_lo),
    .data_o(tag_lo),
    .yumi_i(tag_fifo_yumi_li)
  );


  bsg_parallel_in_serial_out_width_p64_els_p1
  piso
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .valid_i(axi_rvalid_i),
    .data_i(axi_rdata_i),
    .ready_o(axi_rready_o),
    .valid_o(piso_v_lo),
    .data_o(dma_data_o[63:0]),
    .yumi_i(piso_yumi_li)
  );


  bsg_decode_with_v_num_out_p4
  demux
  (
    .i(tag_lo),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel)
  );


  bsg_counter_clear_up_max_val_p7_init_val_p0
  counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(counter_clear_li),
    .up_i(counter_up_li),
    .count_o(count_lo)
  );

  assign N7 = (N3)? dma_data_ready_i[0] : 
              (N5)? dma_data_ready_i[1] : 
              (N4)? dma_data_ready_i[2] : 
              (N6)? dma_data_ready_i[3] : 1'b0;
  assign N9 = count_lo[1] & count_lo[2];
  assign N10 = count_lo[0] & N9;
  assign counter_clear_li = (N0)? piso_yumi_li : 
                            (N8)? 1'b0 : 1'b0;
  assign N0 = N10;
  assign counter_up_li = (N0)? 1'b0 : 
                         (N8)? piso_yumi_li : 1'b0;
  assign tag_fifo_yumi_li = (N0)? piso_yumi_li : 
                            (N8)? 1'b0 : 1'b0;
  assign yumi_o = v_i & axi_arready_i;
  assign dma_data_v_o[3] = cache_sel[3] & piso_v_lo;
  assign dma_data_v_o[2] = cache_sel[2] & piso_v_lo;
  assign dma_data_v_o[1] = cache_sel[1] & piso_v_lo;
  assign dma_data_v_o[0] = cache_sel[0] & piso_v_lo;
  assign N1 = ~tag_lo[0];
  assign N2 = ~tag_lo[1];
  assign N3 = N1 & N2;
  assign N4 = N1 & tag_lo[1];
  assign N5 = tag_lo[0] & N2;
  assign N6 = tag_lo[0] & tag_lo[1];
  assign piso_yumi_li = N11 & tag_fifo_v_lo;
  assign N11 = N7 & piso_v_lo;
  assign N8 = ~N10;

endmodule



module bsg_serial_in_parallel_out_width_p64_els_p1
(
  clk_i,
  reset_i,
  valid_i,
  data_i,
  ready_o,
  valid_o,
  data_o,
  yumi_cnt_i
);

  input [63:0] data_i;
  output [0:0] valid_o;
  output [63:0] data_o;
  input [0:0] yumi_cnt_i;
  input clk_i;
  input reset_i;
  input valid_i;
  output ready_o;
  wire [0:0] valid_o,num_els_n,valid_nn;
  wire [63:0] data_o,data_nn;
  wire ready_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,data_n_1__63_,data_n_1__62_,data_n_1__61_,
  data_n_1__60_,data_n_1__59_,data_n_1__58_,data_n_1__57_,data_n_1__56_,
  data_n_1__55_,data_n_1__54_,data_n_1__53_,data_n_1__52_,data_n_1__51_,data_n_1__50_,
  data_n_1__49_,data_n_1__48_,data_n_1__47_,data_n_1__46_,data_n_1__45_,data_n_1__44_,
  data_n_1__43_,data_n_1__42_,data_n_1__41_,data_n_1__40_,data_n_1__39_,
  data_n_1__38_,data_n_1__37_,data_n_1__36_,data_n_1__35_,data_n_1__34_,data_n_1__33_,
  data_n_1__32_,data_n_1__31_,data_n_1__30_,data_n_1__29_,data_n_1__28_,data_n_1__27_,
  data_n_1__26_,data_n_1__25_,data_n_1__24_,data_n_1__23_,data_n_1__22_,data_n_1__21_,
  data_n_1__20_,data_n_1__19_,data_n_1__18_,data_n_1__17_,data_n_1__16_,
  data_n_1__15_,data_n_1__14_,data_n_1__13_,data_n_1__12_,data_n_1__11_,data_n_1__10_,
  data_n_1__9_,data_n_1__8_,data_n_1__7_,data_n_1__6_,data_n_1__5_,data_n_1__4_,
  data_n_1__3_,data_n_1__2_,data_n_1__1_,data_n_1__0_,N10,N11,N13,N14;
  wire [1:1] valid_n;
  reg [0:0] valid_r;
  reg N12;
  reg [63:0] data_r;
  assign data_nn[63] = (N14)? data_o[63] : 
                       (N0)? data_n_1__63_ : 1'b0;
  assign N0 = yumi_cnt_i[0];
  assign data_nn[62] = (N14)? data_o[62] : 
                       (N0)? data_n_1__62_ : 1'b0;
  assign data_nn[61] = (N14)? data_o[61] : 
                       (N0)? data_n_1__61_ : 1'b0;
  assign data_nn[60] = (N14)? data_o[60] : 
                       (N0)? data_n_1__60_ : 1'b0;
  assign data_nn[59] = (N14)? data_o[59] : 
                       (N0)? data_n_1__59_ : 1'b0;
  assign data_nn[58] = (N14)? data_o[58] : 
                       (N0)? data_n_1__58_ : 1'b0;
  assign data_nn[57] = (N14)? data_o[57] : 
                       (N0)? data_n_1__57_ : 1'b0;
  assign data_nn[56] = (N14)? data_o[56] : 
                       (N0)? data_n_1__56_ : 1'b0;
  assign data_nn[55] = (N14)? data_o[55] : 
                       (N0)? data_n_1__55_ : 1'b0;
  assign data_nn[54] = (N14)? data_o[54] : 
                       (N0)? data_n_1__54_ : 1'b0;
  assign data_nn[53] = (N14)? data_o[53] : 
                       (N0)? data_n_1__53_ : 1'b0;
  assign data_nn[52] = (N14)? data_o[52] : 
                       (N0)? data_n_1__52_ : 1'b0;
  assign data_nn[51] = (N14)? data_o[51] : 
                       (N0)? data_n_1__51_ : 1'b0;
  assign data_nn[50] = (N14)? data_o[50] : 
                       (N0)? data_n_1__50_ : 1'b0;
  assign data_nn[49] = (N14)? data_o[49] : 
                       (N0)? data_n_1__49_ : 1'b0;
  assign data_nn[48] = (N14)? data_o[48] : 
                       (N0)? data_n_1__48_ : 1'b0;
  assign data_nn[47] = (N14)? data_o[47] : 
                       (N0)? data_n_1__47_ : 1'b0;
  assign data_nn[46] = (N14)? data_o[46] : 
                       (N0)? data_n_1__46_ : 1'b0;
  assign data_nn[45] = (N14)? data_o[45] : 
                       (N0)? data_n_1__45_ : 1'b0;
  assign data_nn[44] = (N14)? data_o[44] : 
                       (N0)? data_n_1__44_ : 1'b0;
  assign data_nn[43] = (N14)? data_o[43] : 
                       (N0)? data_n_1__43_ : 1'b0;
  assign data_nn[42] = (N14)? data_o[42] : 
                       (N0)? data_n_1__42_ : 1'b0;
  assign data_nn[41] = (N14)? data_o[41] : 
                       (N0)? data_n_1__41_ : 1'b0;
  assign data_nn[40] = (N14)? data_o[40] : 
                       (N0)? data_n_1__40_ : 1'b0;
  assign data_nn[39] = (N14)? data_o[39] : 
                       (N0)? data_n_1__39_ : 1'b0;
  assign data_nn[38] = (N14)? data_o[38] : 
                       (N0)? data_n_1__38_ : 1'b0;
  assign data_nn[37] = (N14)? data_o[37] : 
                       (N0)? data_n_1__37_ : 1'b0;
  assign data_nn[36] = (N14)? data_o[36] : 
                       (N0)? data_n_1__36_ : 1'b0;
  assign data_nn[35] = (N14)? data_o[35] : 
                       (N0)? data_n_1__35_ : 1'b0;
  assign data_nn[34] = (N14)? data_o[34] : 
                       (N0)? data_n_1__34_ : 1'b0;
  assign data_nn[33] = (N14)? data_o[33] : 
                       (N0)? data_n_1__33_ : 1'b0;
  assign data_nn[32] = (N14)? data_o[32] : 
                       (N0)? data_n_1__32_ : 1'b0;
  assign data_nn[31] = (N14)? data_o[31] : 
                       (N0)? data_n_1__31_ : 1'b0;
  assign data_nn[30] = (N14)? data_o[30] : 
                       (N0)? data_n_1__30_ : 1'b0;
  assign data_nn[29] = (N14)? data_o[29] : 
                       (N0)? data_n_1__29_ : 1'b0;
  assign data_nn[28] = (N14)? data_o[28] : 
                       (N0)? data_n_1__28_ : 1'b0;
  assign data_nn[27] = (N14)? data_o[27] : 
                       (N0)? data_n_1__27_ : 1'b0;
  assign data_nn[26] = (N14)? data_o[26] : 
                       (N0)? data_n_1__26_ : 1'b0;
  assign data_nn[25] = (N14)? data_o[25] : 
                       (N0)? data_n_1__25_ : 1'b0;
  assign data_nn[24] = (N14)? data_o[24] : 
                       (N0)? data_n_1__24_ : 1'b0;
  assign data_nn[23] = (N14)? data_o[23] : 
                       (N0)? data_n_1__23_ : 1'b0;
  assign data_nn[22] = (N14)? data_o[22] : 
                       (N0)? data_n_1__22_ : 1'b0;
  assign data_nn[21] = (N14)? data_o[21] : 
                       (N0)? data_n_1__21_ : 1'b0;
  assign data_nn[20] = (N14)? data_o[20] : 
                       (N0)? data_n_1__20_ : 1'b0;
  assign data_nn[19] = (N14)? data_o[19] : 
                       (N0)? data_n_1__19_ : 1'b0;
  assign data_nn[18] = (N14)? data_o[18] : 
                       (N0)? data_n_1__18_ : 1'b0;
  assign data_nn[17] = (N14)? data_o[17] : 
                       (N0)? data_n_1__17_ : 1'b0;
  assign data_nn[16] = (N14)? data_o[16] : 
                       (N0)? data_n_1__16_ : 1'b0;
  assign data_nn[15] = (N14)? data_o[15] : 
                       (N0)? data_n_1__15_ : 1'b0;
  assign data_nn[14] = (N14)? data_o[14] : 
                       (N0)? data_n_1__14_ : 1'b0;
  assign data_nn[13] = (N14)? data_o[13] : 
                       (N0)? data_n_1__13_ : 1'b0;
  assign data_nn[12] = (N14)? data_o[12] : 
                       (N0)? data_n_1__12_ : 1'b0;
  assign data_nn[11] = (N14)? data_o[11] : 
                       (N0)? data_n_1__11_ : 1'b0;
  assign data_nn[10] = (N14)? data_o[10] : 
                       (N0)? data_n_1__10_ : 1'b0;
  assign data_nn[9] = (N14)? data_o[9] : 
                      (N0)? data_n_1__9_ : 1'b0;
  assign data_nn[8] = (N14)? data_o[8] : 
                      (N0)? data_n_1__8_ : 1'b0;
  assign data_nn[7] = (N14)? data_o[7] : 
                      (N0)? data_n_1__7_ : 1'b0;
  assign data_nn[6] = (N14)? data_o[6] : 
                      (N0)? data_n_1__6_ : 1'b0;
  assign data_nn[5] = (N14)? data_o[5] : 
                      (N0)? data_n_1__5_ : 1'b0;
  assign data_nn[4] = (N14)? data_o[4] : 
                      (N0)? data_n_1__4_ : 1'b0;
  assign data_nn[3] = (N14)? data_o[3] : 
                      (N0)? data_n_1__3_ : 1'b0;
  assign data_nn[2] = (N14)? data_o[2] : 
                      (N0)? data_n_1__2_ : 1'b0;
  assign data_nn[1] = (N14)? data_o[1] : 
                      (N0)? data_n_1__1_ : 1'b0;
  assign data_nn[0] = (N14)? data_o[0] : 
                      (N0)? data_n_1__0_ : 1'b0;
  assign N9 = N12 ^ N8;
  assign num_els_n[0] = N9 ^ yumi_cnt_i[0];
  assign N10 = ~N12;
  assign N6 = (N1)? 1'b0 : 
              (N2)? num_els_n[0] : 1'b0;
  assign N1 = reset_i;
  assign N2 = N5;
  assign N7 = (N1)? 1'b0 : 
              (N2)? valid_nn[0] : 1'b0;
  assign { data_o[0:0], data_o[1:1], data_o[2:2], data_o[3:3], data_o[4:4], data_o[5:5], data_o[6:6], data_o[7:7], data_o[8:8], data_o[9:9], data_o[10:10], data_o[11:11], data_o[12:12], data_o[13:13], data_o[14:14], data_o[15:15], data_o[16:16], data_o[17:17], data_o[18:18], data_o[19:19], data_o[20:20], data_o[21:21], data_o[22:22], data_o[23:23], data_o[24:24], data_o[25:25], data_o[26:26], data_o[27:27], data_o[28:28], data_o[29:29], data_o[30:30], data_o[31:31], data_o[32:32], data_o[33:33], data_o[34:34], data_o[35:35], data_o[36:36], data_o[37:37], data_o[38:38], data_o[39:39], data_o[40:40], data_o[41:41], data_o[42:42], data_o[43:43], data_o[44:44], data_o[45:45], data_o[46:46], data_o[47:47], data_o[48:48], data_o[49:49], data_o[50:50], data_o[51:51], data_o[52:52], data_o[53:53], data_o[54:54], data_o[55:55], data_o[56:56], data_o[57:57], data_o[58:58], data_o[59:59], data_o[60:60], data_o[61:61], data_o[62:62], data_o[63:63] } = (N3)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31], data_i[32:32], data_i[33:33], data_i[34:34], data_i[35:35], data_i[36:36], data_i[37:37], data_i[38:38], data_i[39:39], data_i[40:40], data_i[41:41], data_i[42:42], data_i[43:43], data_i[44:44], data_i[45:45], data_i[46:46], data_i[47:47], data_i[48:48], data_i[49:49], data_i[50:50], data_i[51:51], data_i[52:52], data_i[53:53], data_i[54:54], data_i[55:55], data_i[56:56], data_i[57:57], data_i[58:58], data_i[59:59], data_i[60:60], data_i[61:61], data_i[62:62], data_i[63:63] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          (N4)? { data_r[0:0], data_r[1:1], data_r[2:2], data_r[3:3], data_r[4:4], data_r[5:5], data_r[6:6], data_r[7:7], data_r[8:8], data_r[9:9], data_r[10:10], data_r[11:11], data_r[12:12], data_r[13:13], data_r[14:14], data_r[15:15], data_r[16:16], data_r[17:17], data_r[18:18], data_r[19:19], data_r[20:20], data_r[21:21], data_r[22:22], data_r[23:23], data_r[24:24], data_r[25:25], data_r[26:26], data_r[27:27], data_r[28:28], data_r[29:29], data_r[30:30], data_r[31:31], data_r[32:32], data_r[33:33], data_r[34:34], data_r[35:35], data_r[36:36], data_r[37:37], data_r[38:38], data_r[39:39], data_r[40:40], data_r[41:41], data_r[42:42], data_r[43:43], data_r[44:44], data_r[45:45], data_r[46:46], data_r[47:47], data_r[48:48], data_r[49:49], data_r[50:50], data_r[51:51], data_r[52:52], data_r[53:53], data_r[54:54], data_r[55:55], data_r[56:56], data_r[57:57], data_r[58:58], data_r[59:59], data_r[60:60], data_r[61:61], data_r[62:62], data_r[63:63] } : 1'b0;
  assign N3 = N10;
  assign N4 = N12;
  assign { data_n_1__0_, data_n_1__1_, data_n_1__2_, data_n_1__3_, data_n_1__4_, data_n_1__5_, data_n_1__6_, data_n_1__7_, data_n_1__8_, data_n_1__9_, data_n_1__10_, data_n_1__11_, data_n_1__12_, data_n_1__13_, data_n_1__14_, data_n_1__15_, data_n_1__16_, data_n_1__17_, data_n_1__18_, data_n_1__19_, data_n_1__20_, data_n_1__21_, data_n_1__22_, data_n_1__23_, data_n_1__24_, data_n_1__25_, data_n_1__26_, data_n_1__27_, data_n_1__28_, data_n_1__29_, data_n_1__30_, data_n_1__31_, data_n_1__32_, data_n_1__33_, data_n_1__34_, data_n_1__35_, data_n_1__36_, data_n_1__37_, data_n_1__38_, data_n_1__39_, data_n_1__40_, data_n_1__41_, data_n_1__42_, data_n_1__43_, data_n_1__44_, data_n_1__45_, data_n_1__46_, data_n_1__47_, data_n_1__48_, data_n_1__49_, data_n_1__50_, data_n_1__51_, data_n_1__52_, data_n_1__53_, data_n_1__54_, data_n_1__55_, data_n_1__56_, data_n_1__57_, data_n_1__58_, data_n_1__59_, data_n_1__60_, data_n_1__61_, data_n_1__62_, data_n_1__63_ } = (N4)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31], data_i[32:32], data_i[33:33], data_i[34:34], data_i[35:35], data_i[36:36], data_i[37:37], data_i[38:38], data_i[39:39], data_i[40:40], data_i[41:41], data_i[42:42], data_i[43:43], data_i[44:44], data_i[45:45], data_i[46:46], data_i[47:47], data_i[48:48], data_i[49:49], data_i[50:50], data_i[51:51], data_i[52:52], data_i[53:53], data_i[54:54], data_i[55:55], data_i[56:56], data_i[57:57], data_i[58:58], data_i[59:59], data_i[60:60], data_i[61:61], data_i[62:62], data_i[63:63] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign valid_o[0] = (N3)? N13 : 
                      (N4)? valid_r[0] : 1'b0;
  assign valid_n[1] = (N4)? N13 : 
                      (N11)? 1'b0 : 1'b0;
  assign valid_nn[0] = (N0)? valid_n[1] : 
                       (N14)? valid_o[0] : 1'b0;
  assign N5 = ~reset_i;
  assign ready_o = ~valid_r[0];
  assign N8 = valid_i & ready_o;
  assign N11 = ~N12;
  assign N13 = valid_i & ready_o;
  assign N14 = ~yumi_cnt_i[0];

  always @(posedge clk_i) begin
    if(1'b1) begin
      { valid_r[0:0] } <= { N7 };
      N12 <= N6;
      { data_r[63:0] } <= { data_nn[63:0] };
    end 
  end


endmodule



module bsg_counter_clear_up_max_val_p0_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [0:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8;
  reg [0:0] count_o;
  assign N6 = count_o[0] ^ up_i;
  assign N7 = (N0)? up_i : 
              (N1)? N6 : 1'b0;
  assign N0 = clear_i;
  assign N1 = N5;
  assign N8 = (N2)? 1'b0 : 
              (N3)? N7 : 1'b0;
  assign N2 = reset_i;
  assign N3 = N4;
  assign N4 = ~reset_i;
  assign N5 = ~clear_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_o[0:0] } <= { N8 };
    end 
  end


endmodule



module bsg_cache_to_axi_tx_num_cache_p4_data_width_p64_block_size_in_words_p8_axi_id_width_p6_axi_addr_width_p5_axi_data_width_p64_axi_burst_len_p1
(
  clk_i,
  reset_i,
  v_i,
  yumi_o,
  tag_i,
  axi_addr_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  axi_awid_o,
  axi_awaddr_o,
  axi_awlen_o,
  axi_awsize_o,
  axi_awburst_o,
  axi_awcache_o,
  axi_awprot_o,
  axi_awlock_o,
  axi_awvalid_o,
  axi_awready_i,
  axi_wdata_o,
  axi_wstrb_o,
  axi_wlast_o,
  axi_wvalid_o,
  axi_wready_i,
  axi_bid_i,
  axi_bresp_i,
  axi_bvalid_i,
  axi_bready_o
);

  input [1:0] tag_i;
  input [4:0] axi_addr_i;
  input [255:0] dma_data_i;
  input [3:0] dma_data_v_i;
  output [3:0] dma_data_yumi_o;
  output [5:0] axi_awid_o;
  output [4:0] axi_awaddr_o;
  output [7:0] axi_awlen_o;
  output [2:0] axi_awsize_o;
  output [1:0] axi_awburst_o;
  output [3:0] axi_awcache_o;
  output [2:0] axi_awprot_o;
  output [63:0] axi_wdata_o;
  output [7:0] axi_wstrb_o;
  input [5:0] axi_bid_i;
  input [1:0] axi_bresp_i;
  input clk_i;
  input reset_i;
  input v_i;
  input axi_awready_i;
  input axi_wready_i;
  input axi_bvalid_i;
  output yumi_o;
  output axi_awlock_o;
  output axi_awvalid_o;
  output axi_wlast_o;
  output axi_wvalid_o;
  output axi_bready_o;
  wire [3:0] dma_data_yumi_o,axi_awcache_o,cache_sel;
  wire [5:0] axi_awid_o;
  wire [4:0] axi_awaddr_o;
  wire [7:0] axi_awlen_o,axi_wstrb_o;
  wire [2:0] axi_awsize_o,axi_awprot_o,word_count_lo;
  wire [1:0] axi_awburst_o,tag_lo;
  wire [63:0] axi_wdata_o,sipo_data_li;
  wire yumi_o,axi_awlock_o,axi_awvalid_o,axi_wlast_o,axi_wvalid_o,axi_bready_o,N0,N1,
  N2,v_i,tag_fifo_v_lo,tag_fifo_yumi_li,N3,N4,N5,N6,N7,N8,sipo_ready_lo,sipo_v_li,
  N9,N10,N11,N12,N13,N14,N15,N16,word_clear_li,word_up_li,N17,N18,N19,N20,N21,N22,
  N23,N24,N25,N26,N27,N28,N29,N30,pop_word,N31,burst_clear_li,burst_up_li,N32,N33,
  N34,N35,N36,N37,N38,N39,N40,N41;
  wire [0:0] sipo_yumi_cnt_li,burst_count_lo;
  assign axi_bready_o = 1'b1;
  assign axi_wstrb_o[0] = 1'b1;
  assign axi_wstrb_o[1] = 1'b1;
  assign axi_wstrb_o[2] = 1'b1;
  assign axi_wstrb_o[3] = 1'b1;
  assign axi_wstrb_o[4] = 1'b1;
  assign axi_wstrb_o[5] = 1'b1;
  assign axi_wstrb_o[6] = 1'b1;
  assign axi_wstrb_o[7] = 1'b1;
  assign axi_awburst_o[0] = 1'b1;
  assign axi_awsize_o[0] = 1'b1;
  assign axi_awsize_o[1] = 1'b1;
  assign axi_awlock_o = 1'b0;
  assign axi_awprot_o[0] = 1'b0;
  assign axi_awprot_o[1] = 1'b0;
  assign axi_awprot_o[2] = 1'b0;
  assign axi_awcache_o[0] = 1'b0;
  assign axi_awcache_o[1] = 1'b0;
  assign axi_awcache_o[2] = 1'b0;
  assign axi_awcache_o[3] = 1'b0;
  assign axi_awburst_o[1] = 1'b0;
  assign axi_awsize_o[2] = 1'b0;
  assign axi_awlen_o[0] = 1'b0;
  assign axi_awlen_o[1] = 1'b0;
  assign axi_awlen_o[2] = 1'b0;
  assign axi_awlen_o[3] = 1'b0;
  assign axi_awlen_o[4] = 1'b0;
  assign axi_awlen_o[5] = 1'b0;
  assign axi_awlen_o[6] = 1'b0;
  assign axi_awlen_o[7] = 1'b0;
  assign axi_awid_o[0] = 1'b0;
  assign axi_awid_o[1] = 1'b0;
  assign axi_awid_o[2] = 1'b0;
  assign axi_awid_o[3] = 1'b0;
  assign axi_awid_o[4] = 1'b0;
  assign axi_awid_o[5] = 1'b0;
  assign axi_awaddr_o[4] = axi_addr_i[4];
  assign axi_awaddr_o[3] = axi_addr_i[3];
  assign axi_awaddr_o[2] = axi_addr_i[2];
  assign axi_awaddr_o[1] = axi_addr_i[1];
  assign axi_awaddr_o[0] = axi_addr_i[0];
  assign axi_awvalid_o = v_i;

  bsg_fifo_1r1w_small_width_p2_els_p4
  tag_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(yumi_o),
    .data_i(tag_i),
    .v_o(tag_fifo_v_lo),
    .data_o(tag_lo),
    .yumi_i(tag_fifo_yumi_li)
  );


  bsg_decode_with_v_num_out_p4
  demux
  (
    .i(tag_lo),
    .v_i(tag_fifo_v_lo),
    .o(cache_sel)
  );

  assign sipo_data_li[63] = (N5)? dma_data_i[63] : 
                            (N7)? dma_data_i[127] : 
                            (N6)? dma_data_i[191] : 
                            (N8)? dma_data_i[255] : 1'b0;
  assign sipo_data_li[62] = (N5)? dma_data_i[62] : 
                            (N7)? dma_data_i[126] : 
                            (N6)? dma_data_i[190] : 
                            (N8)? dma_data_i[254] : 1'b0;
  assign sipo_data_li[61] = (N5)? dma_data_i[61] : 
                            (N7)? dma_data_i[125] : 
                            (N6)? dma_data_i[189] : 
                            (N8)? dma_data_i[253] : 1'b0;
  assign sipo_data_li[60] = (N5)? dma_data_i[60] : 
                            (N7)? dma_data_i[124] : 
                            (N6)? dma_data_i[188] : 
                            (N8)? dma_data_i[252] : 1'b0;
  assign sipo_data_li[59] = (N5)? dma_data_i[59] : 
                            (N7)? dma_data_i[123] : 
                            (N6)? dma_data_i[187] : 
                            (N8)? dma_data_i[251] : 1'b0;
  assign sipo_data_li[58] = (N5)? dma_data_i[58] : 
                            (N7)? dma_data_i[122] : 
                            (N6)? dma_data_i[186] : 
                            (N8)? dma_data_i[250] : 1'b0;
  assign sipo_data_li[57] = (N5)? dma_data_i[57] : 
                            (N7)? dma_data_i[121] : 
                            (N6)? dma_data_i[185] : 
                            (N8)? dma_data_i[249] : 1'b0;
  assign sipo_data_li[56] = (N5)? dma_data_i[56] : 
                            (N7)? dma_data_i[120] : 
                            (N6)? dma_data_i[184] : 
                            (N8)? dma_data_i[248] : 1'b0;
  assign sipo_data_li[55] = (N5)? dma_data_i[55] : 
                            (N7)? dma_data_i[119] : 
                            (N6)? dma_data_i[183] : 
                            (N8)? dma_data_i[247] : 1'b0;
  assign sipo_data_li[54] = (N5)? dma_data_i[54] : 
                            (N7)? dma_data_i[118] : 
                            (N6)? dma_data_i[182] : 
                            (N8)? dma_data_i[246] : 1'b0;
  assign sipo_data_li[53] = (N5)? dma_data_i[53] : 
                            (N7)? dma_data_i[117] : 
                            (N6)? dma_data_i[181] : 
                            (N8)? dma_data_i[245] : 1'b0;
  assign sipo_data_li[52] = (N5)? dma_data_i[52] : 
                            (N7)? dma_data_i[116] : 
                            (N6)? dma_data_i[180] : 
                            (N8)? dma_data_i[244] : 1'b0;
  assign sipo_data_li[51] = (N5)? dma_data_i[51] : 
                            (N7)? dma_data_i[115] : 
                            (N6)? dma_data_i[179] : 
                            (N8)? dma_data_i[243] : 1'b0;
  assign sipo_data_li[50] = (N5)? dma_data_i[50] : 
                            (N7)? dma_data_i[114] : 
                            (N6)? dma_data_i[178] : 
                            (N8)? dma_data_i[242] : 1'b0;
  assign sipo_data_li[49] = (N5)? dma_data_i[49] : 
                            (N7)? dma_data_i[113] : 
                            (N6)? dma_data_i[177] : 
                            (N8)? dma_data_i[241] : 1'b0;
  assign sipo_data_li[48] = (N5)? dma_data_i[48] : 
                            (N7)? dma_data_i[112] : 
                            (N6)? dma_data_i[176] : 
                            (N8)? dma_data_i[240] : 1'b0;
  assign sipo_data_li[47] = (N5)? dma_data_i[47] : 
                            (N7)? dma_data_i[111] : 
                            (N6)? dma_data_i[175] : 
                            (N8)? dma_data_i[239] : 1'b0;
  assign sipo_data_li[46] = (N5)? dma_data_i[46] : 
                            (N7)? dma_data_i[110] : 
                            (N6)? dma_data_i[174] : 
                            (N8)? dma_data_i[238] : 1'b0;
  assign sipo_data_li[45] = (N5)? dma_data_i[45] : 
                            (N7)? dma_data_i[109] : 
                            (N6)? dma_data_i[173] : 
                            (N8)? dma_data_i[237] : 1'b0;
  assign sipo_data_li[44] = (N5)? dma_data_i[44] : 
                            (N7)? dma_data_i[108] : 
                            (N6)? dma_data_i[172] : 
                            (N8)? dma_data_i[236] : 1'b0;
  assign sipo_data_li[43] = (N5)? dma_data_i[43] : 
                            (N7)? dma_data_i[107] : 
                            (N6)? dma_data_i[171] : 
                            (N8)? dma_data_i[235] : 1'b0;
  assign sipo_data_li[42] = (N5)? dma_data_i[42] : 
                            (N7)? dma_data_i[106] : 
                            (N6)? dma_data_i[170] : 
                            (N8)? dma_data_i[234] : 1'b0;
  assign sipo_data_li[41] = (N5)? dma_data_i[41] : 
                            (N7)? dma_data_i[105] : 
                            (N6)? dma_data_i[169] : 
                            (N8)? dma_data_i[233] : 1'b0;
  assign sipo_data_li[40] = (N5)? dma_data_i[40] : 
                            (N7)? dma_data_i[104] : 
                            (N6)? dma_data_i[168] : 
                            (N8)? dma_data_i[232] : 1'b0;
  assign sipo_data_li[39] = (N5)? dma_data_i[39] : 
                            (N7)? dma_data_i[103] : 
                            (N6)? dma_data_i[167] : 
                            (N8)? dma_data_i[231] : 1'b0;
  assign sipo_data_li[38] = (N5)? dma_data_i[38] : 
                            (N7)? dma_data_i[102] : 
                            (N6)? dma_data_i[166] : 
                            (N8)? dma_data_i[230] : 1'b0;
  assign sipo_data_li[37] = (N5)? dma_data_i[37] : 
                            (N7)? dma_data_i[101] : 
                            (N6)? dma_data_i[165] : 
                            (N8)? dma_data_i[229] : 1'b0;
  assign sipo_data_li[36] = (N5)? dma_data_i[36] : 
                            (N7)? dma_data_i[100] : 
                            (N6)? dma_data_i[164] : 
                            (N8)? dma_data_i[228] : 1'b0;
  assign sipo_data_li[35] = (N5)? dma_data_i[35] : 
                            (N7)? dma_data_i[99] : 
                            (N6)? dma_data_i[163] : 
                            (N8)? dma_data_i[227] : 1'b0;
  assign sipo_data_li[34] = (N5)? dma_data_i[34] : 
                            (N7)? dma_data_i[98] : 
                            (N6)? dma_data_i[162] : 
                            (N8)? dma_data_i[226] : 1'b0;
  assign sipo_data_li[33] = (N5)? dma_data_i[33] : 
                            (N7)? dma_data_i[97] : 
                            (N6)? dma_data_i[161] : 
                            (N8)? dma_data_i[225] : 1'b0;
  assign sipo_data_li[32] = (N5)? dma_data_i[32] : 
                            (N7)? dma_data_i[96] : 
                            (N6)? dma_data_i[160] : 
                            (N8)? dma_data_i[224] : 1'b0;
  assign sipo_data_li[31] = (N5)? dma_data_i[31] : 
                            (N7)? dma_data_i[95] : 
                            (N6)? dma_data_i[159] : 
                            (N8)? dma_data_i[223] : 1'b0;
  assign sipo_data_li[30] = (N5)? dma_data_i[30] : 
                            (N7)? dma_data_i[94] : 
                            (N6)? dma_data_i[158] : 
                            (N8)? dma_data_i[222] : 1'b0;
  assign sipo_data_li[29] = (N5)? dma_data_i[29] : 
                            (N7)? dma_data_i[93] : 
                            (N6)? dma_data_i[157] : 
                            (N8)? dma_data_i[221] : 1'b0;
  assign sipo_data_li[28] = (N5)? dma_data_i[28] : 
                            (N7)? dma_data_i[92] : 
                            (N6)? dma_data_i[156] : 
                            (N8)? dma_data_i[220] : 1'b0;
  assign sipo_data_li[27] = (N5)? dma_data_i[27] : 
                            (N7)? dma_data_i[91] : 
                            (N6)? dma_data_i[155] : 
                            (N8)? dma_data_i[219] : 1'b0;
  assign sipo_data_li[26] = (N5)? dma_data_i[26] : 
                            (N7)? dma_data_i[90] : 
                            (N6)? dma_data_i[154] : 
                            (N8)? dma_data_i[218] : 1'b0;
  assign sipo_data_li[25] = (N5)? dma_data_i[25] : 
                            (N7)? dma_data_i[89] : 
                            (N6)? dma_data_i[153] : 
                            (N8)? dma_data_i[217] : 1'b0;
  assign sipo_data_li[24] = (N5)? dma_data_i[24] : 
                            (N7)? dma_data_i[88] : 
                            (N6)? dma_data_i[152] : 
                            (N8)? dma_data_i[216] : 1'b0;
  assign sipo_data_li[23] = (N5)? dma_data_i[23] : 
                            (N7)? dma_data_i[87] : 
                            (N6)? dma_data_i[151] : 
                            (N8)? dma_data_i[215] : 1'b0;
  assign sipo_data_li[22] = (N5)? dma_data_i[22] : 
                            (N7)? dma_data_i[86] : 
                            (N6)? dma_data_i[150] : 
                            (N8)? dma_data_i[214] : 1'b0;
  assign sipo_data_li[21] = (N5)? dma_data_i[21] : 
                            (N7)? dma_data_i[85] : 
                            (N6)? dma_data_i[149] : 
                            (N8)? dma_data_i[213] : 1'b0;
  assign sipo_data_li[20] = (N5)? dma_data_i[20] : 
                            (N7)? dma_data_i[84] : 
                            (N6)? dma_data_i[148] : 
                            (N8)? dma_data_i[212] : 1'b0;
  assign sipo_data_li[19] = (N5)? dma_data_i[19] : 
                            (N7)? dma_data_i[83] : 
                            (N6)? dma_data_i[147] : 
                            (N8)? dma_data_i[211] : 1'b0;
  assign sipo_data_li[18] = (N5)? dma_data_i[18] : 
                            (N7)? dma_data_i[82] : 
                            (N6)? dma_data_i[146] : 
                            (N8)? dma_data_i[210] : 1'b0;
  assign sipo_data_li[17] = (N5)? dma_data_i[17] : 
                            (N7)? dma_data_i[81] : 
                            (N6)? dma_data_i[145] : 
                            (N8)? dma_data_i[209] : 1'b0;
  assign sipo_data_li[16] = (N5)? dma_data_i[16] : 
                            (N7)? dma_data_i[80] : 
                            (N6)? dma_data_i[144] : 
                            (N8)? dma_data_i[208] : 1'b0;
  assign sipo_data_li[15] = (N5)? dma_data_i[15] : 
                            (N7)? dma_data_i[79] : 
                            (N6)? dma_data_i[143] : 
                            (N8)? dma_data_i[207] : 1'b0;
  assign sipo_data_li[14] = (N5)? dma_data_i[14] : 
                            (N7)? dma_data_i[78] : 
                            (N6)? dma_data_i[142] : 
                            (N8)? dma_data_i[206] : 1'b0;
  assign sipo_data_li[13] = (N5)? dma_data_i[13] : 
                            (N7)? dma_data_i[77] : 
                            (N6)? dma_data_i[141] : 
                            (N8)? dma_data_i[205] : 1'b0;
  assign sipo_data_li[12] = (N5)? dma_data_i[12] : 
                            (N7)? dma_data_i[76] : 
                            (N6)? dma_data_i[140] : 
                            (N8)? dma_data_i[204] : 1'b0;
  assign sipo_data_li[11] = (N5)? dma_data_i[11] : 
                            (N7)? dma_data_i[75] : 
                            (N6)? dma_data_i[139] : 
                            (N8)? dma_data_i[203] : 1'b0;
  assign sipo_data_li[10] = (N5)? dma_data_i[10] : 
                            (N7)? dma_data_i[74] : 
                            (N6)? dma_data_i[138] : 
                            (N8)? dma_data_i[202] : 1'b0;
  assign sipo_data_li[9] = (N5)? dma_data_i[9] : 
                           (N7)? dma_data_i[73] : 
                           (N6)? dma_data_i[137] : 
                           (N8)? dma_data_i[201] : 1'b0;
  assign sipo_data_li[8] = (N5)? dma_data_i[8] : 
                           (N7)? dma_data_i[72] : 
                           (N6)? dma_data_i[136] : 
                           (N8)? dma_data_i[200] : 1'b0;
  assign sipo_data_li[7] = (N5)? dma_data_i[7] : 
                           (N7)? dma_data_i[71] : 
                           (N6)? dma_data_i[135] : 
                           (N8)? dma_data_i[199] : 1'b0;
  assign sipo_data_li[6] = (N5)? dma_data_i[6] : 
                           (N7)? dma_data_i[70] : 
                           (N6)? dma_data_i[134] : 
                           (N8)? dma_data_i[198] : 1'b0;
  assign sipo_data_li[5] = (N5)? dma_data_i[5] : 
                           (N7)? dma_data_i[69] : 
                           (N6)? dma_data_i[133] : 
                           (N8)? dma_data_i[197] : 1'b0;
  assign sipo_data_li[4] = (N5)? dma_data_i[4] : 
                           (N7)? dma_data_i[68] : 
                           (N6)? dma_data_i[132] : 
                           (N8)? dma_data_i[196] : 1'b0;
  assign sipo_data_li[3] = (N5)? dma_data_i[3] : 
                           (N7)? dma_data_i[67] : 
                           (N6)? dma_data_i[131] : 
                           (N8)? dma_data_i[195] : 1'b0;
  assign sipo_data_li[2] = (N5)? dma_data_i[2] : 
                           (N7)? dma_data_i[66] : 
                           (N6)? dma_data_i[130] : 
                           (N8)? dma_data_i[194] : 1'b0;
  assign sipo_data_li[1] = (N5)? dma_data_i[1] : 
                           (N7)? dma_data_i[65] : 
                           (N6)? dma_data_i[129] : 
                           (N8)? dma_data_i[193] : 1'b0;
  assign sipo_data_li[0] = (N5)? dma_data_i[0] : 
                           (N7)? dma_data_i[64] : 
                           (N6)? dma_data_i[128] : 
                           (N8)? dma_data_i[192] : 1'b0;

  bsg_serial_in_parallel_out_width_p64_els_p1
  sipo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .valid_i(sipo_v_li),
    .data_i(sipo_data_li),
    .ready_o(sipo_ready_lo),
    .valid_o(axi_wvalid_o),
    .data_o(axi_wdata_o),
    .yumi_cnt_i(sipo_yumi_cnt_li[0])
  );

  assign N15 = (N11)? dma_data_v_i[0] : 
               (N13)? dma_data_v_i[1] : 
               (N12)? dma_data_v_i[2] : 
               (N14)? dma_data_v_i[3] : 1'b0;

  bsg_counter_clear_up_max_val_p7_init_val_p0
  word_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(word_clear_li),
    .up_i(word_up_li),
    .count_o(word_count_lo)
  );

  assign N23 = (N19)? dma_data_v_i[0] : 
               (N21)? dma_data_v_i[1] : 
               (N20)? dma_data_v_i[2] : 
               (N22)? dma_data_v_i[3] : 1'b0;
  assign N30 = (N26)? dma_data_yumi_o[0] : 
               (N28)? dma_data_yumi_o[1] : 
               (N27)? dma_data_yumi_o[2] : 
               (N29)? dma_data_yumi_o[3] : 1'b0;

  bsg_counter_clear_up_max_val_p0_init_val_p0
  burst_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(burst_clear_li),
    .up_i(burst_up_li),
    .count_o(burst_count_lo[0])
  );

  assign N34 = ~burst_count_lo[0];
  assign N35 = word_count_lo[1] & word_count_lo[2];
  assign N36 = word_count_lo[0] & N35;
  assign word_clear_li = (N0)? pop_word : 
                         (N31)? 1'b0 : 1'b0;
  assign N0 = N36;
  assign word_up_li = (N0)? 1'b0 : 
                      (N31)? pop_word : 1'b0;
  assign tag_fifo_yumi_li = (N0)? pop_word : 
                            (N31)? 1'b0 : 1'b0;
  assign burst_clear_li = (N1)? N32 : 
                          (N2)? 1'b0 : 1'b0;
  assign N1 = N34;
  assign N2 = burst_count_lo[0];
  assign burst_up_li = (N1)? 1'b0 : 
                       (N2)? N33 : 1'b0;
  assign axi_wlast_o = (N1)? axi_wvalid_o : 
                       (N2)? 1'b0 : 1'b0;
  assign yumi_o = v_i & axi_awready_i;
  assign N3 = ~tag_lo[0];
  assign N4 = ~tag_lo[1];
  assign N5 = N3 & N4;
  assign N6 = N3 & tag_lo[1];
  assign N7 = tag_lo[0] & N4;
  assign N8 = tag_lo[0] & tag_lo[1];
  assign dma_data_yumi_o[3] = N37 & sipo_ready_lo;
  assign N37 = cache_sel[3] & dma_data_v_i[3];
  assign dma_data_yumi_o[2] = N38 & sipo_ready_lo;
  assign N38 = cache_sel[2] & dma_data_v_i[2];
  assign dma_data_yumi_o[1] = N39 & sipo_ready_lo;
  assign N39 = cache_sel[1] & dma_data_v_i[1];
  assign dma_data_yumi_o[0] = N40 & sipo_ready_lo;
  assign N40 = cache_sel[0] & dma_data_v_i[0];
  assign N9 = ~tag_lo[0];
  assign N10 = ~tag_lo[1];
  assign N11 = N9 & N10;
  assign N12 = N9 & tag_lo[1];
  assign N13 = tag_lo[0] & N10;
  assign N14 = tag_lo[0] & tag_lo[1];
  assign sipo_v_li = tag_fifo_v_lo & N15;
  assign N16 = axi_wvalid_o & axi_wready_i;
  assign sipo_yumi_cnt_li[0] = N16;
  assign N17 = ~tag_lo[0];
  assign N18 = ~tag_lo[1];
  assign N19 = N17 & N18;
  assign N20 = N17 & tag_lo[1];
  assign N21 = tag_lo[0] & N18;
  assign N22 = tag_lo[0] & tag_lo[1];
  assign N24 = ~tag_lo[0];
  assign N25 = ~tag_lo[1];
  assign N26 = N24 & N25;
  assign N27 = N24 & tag_lo[1];
  assign N28 = tag_lo[0] & N25;
  assign N29 = tag_lo[0] & tag_lo[1];
  assign pop_word = N41 & tag_fifo_v_lo;
  assign N41 = N23 & N30;
  assign N31 = ~N36;
  assign N32 = axi_wvalid_o & axi_wready_i;
  assign N33 = axi_wvalid_o & axi_wready_i;

endmodule



module bsg_cache_to_axi_addr_width_p39_block_size_in_words_p8_data_width_p64_num_cache_p4_axi_id_width_p6_axi_addr_width_p5_axi_data_width_p64_axi_burst_len_p1
(
  clk_i,
  reset_i,
  dma_pkt_i,
  dma_pkt_v_i,
  dma_pkt_yumi_o,
  dma_data_o,
  dma_data_v_o,
  dma_data_ready_i,
  dma_data_i,
  dma_data_v_i,
  dma_data_yumi_o,
  axi_awid_o,
  axi_awaddr_o,
  axi_awlen_o,
  axi_awsize_o,
  axi_awburst_o,
  axi_awcache_o,
  axi_awprot_o,
  axi_awlock_o,
  axi_awvalid_o,
  axi_awready_i,
  axi_wdata_o,
  axi_wstrb_o,
  axi_wlast_o,
  axi_wvalid_o,
  axi_wready_i,
  axi_bid_i,
  axi_bresp_i,
  axi_bvalid_i,
  axi_bready_o,
  axi_arid_o,
  axi_araddr_o,
  axi_arlen_o,
  axi_arsize_o,
  axi_arburst_o,
  axi_arcache_o,
  axi_arprot_o,
  axi_arlock_o,
  axi_arvalid_o,
  axi_arready_i,
  axi_rid_i,
  axi_rdata_i,
  axi_rresp_i,
  axi_rlast_i,
  axi_rvalid_i,
  axi_rready_o
);

  input [159:0] dma_pkt_i;
  input [3:0] dma_pkt_v_i;
  output [3:0] dma_pkt_yumi_o;
  output [255:0] dma_data_o;
  output [3:0] dma_data_v_o;
  input [3:0] dma_data_ready_i;
  input [255:0] dma_data_i;
  input [3:0] dma_data_v_i;
  output [3:0] dma_data_yumi_o;
  output [5:0] axi_awid_o;
  output [4:0] axi_awaddr_o;
  output [7:0] axi_awlen_o;
  output [2:0] axi_awsize_o;
  output [1:0] axi_awburst_o;
  output [3:0] axi_awcache_o;
  output [2:0] axi_awprot_o;
  output [63:0] axi_wdata_o;
  output [7:0] axi_wstrb_o;
  input [5:0] axi_bid_i;
  input [1:0] axi_bresp_i;
  output [5:0] axi_arid_o;
  output [4:0] axi_araddr_o;
  output [7:0] axi_arlen_o;
  output [2:0] axi_arsize_o;
  output [1:0] axi_arburst_o;
  output [3:0] axi_arcache_o;
  output [2:0] axi_arprot_o;
  input [5:0] axi_rid_i;
  input [63:0] axi_rdata_i;
  input [1:0] axi_rresp_i;
  input clk_i;
  input reset_i;
  input axi_awready_i;
  input axi_wready_i;
  input axi_bvalid_i;
  input axi_arready_i;
  input axi_rlast_i;
  input axi_rvalid_i;
  output axi_awlock_o;
  output axi_awvalid_o;
  output axi_wlast_o;
  output axi_wvalid_o;
  output axi_bready_o;
  output axi_arlock_o;
  output axi_arvalid_o;
  output axi_rready_o;
  wire [3:0] dma_pkt_yumi_o,dma_data_v_o,dma_data_yumi_o,axi_awcache_o,axi_arcache_o,
  read_rr_v_li,read_rr_yumi_lo,write_rr_v_li,write_rr_yumi_lo;
  wire [255:0] dma_data_o;
  wire [5:0] axi_awid_o,axi_arid_o;
  wire [4:0] axi_awaddr_o,axi_araddr_o;
  wire [7:0] axi_awlen_o,axi_wstrb_o,axi_arlen_o;
  wire [2:0] axi_awsize_o,axi_awprot_o,axi_arsize_o,axi_arprot_o;
  wire [1:0] axi_awburst_o,axi_arburst_o,read_rr_tag_lo,write_rr_tag_lo;
  wire [63:0] axi_wdata_o;
  wire axi_awlock_o,axi_awvalid_o,axi_wlast_o,axi_wvalid_o,axi_bready_o,axi_arlock_o,
  axi_arvalid_o,axi_rready_o,N0,N1,N2,N3,read_rr_v_lo,read_rr_yumi_li,write_rr_v_lo,
  write_rr_yumi_li,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15;
  wire [39:0] read_rr_dma_pkt,write_rr_dma_pkt;

  bsg_round_robin_n_to_1_width_p40_num_in_p4_strict_p0
  read_rr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(dma_pkt_i),
    .v_i(read_rr_v_li),
    .yumi_o(read_rr_yumi_lo),
    .v_o(read_rr_v_lo),
    .data_o(read_rr_dma_pkt),
    .tag_o(read_rr_tag_lo),
    .yumi_i(read_rr_yumi_li)
  );


  bsg_round_robin_n_to_1_width_p40_num_in_p4_strict_p0
  write_rr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(dma_pkt_i),
    .v_i(write_rr_v_li),
    .yumi_o(write_rr_yumi_lo),
    .v_o(write_rr_v_lo),
    .data_o(write_rr_dma_pkt),
    .tag_o(write_rr_tag_lo),
    .yumi_i(write_rr_yumi_li)
  );


  bsg_cache_to_axi_rx_num_cache_p4_data_width_p64_block_size_in_words_p8_axi_id_width_p6_axi_addr_width_p5_axi_data_width_p64_axi_burst_len_p1
  axi_rx
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(read_rr_v_lo),
    .yumi_o(read_rr_yumi_li),
    .tag_i(read_rr_tag_lo),
    .axi_addr_i(read_rr_dma_pkt[4:0]),
    .dma_data_o(dma_data_o),
    .dma_data_v_o(dma_data_v_o),
    .dma_data_ready_i(dma_data_ready_i),
    .axi_arid_o(axi_arid_o),
    .axi_araddr_o(axi_araddr_o),
    .axi_arlen_o(axi_arlen_o),
    .axi_arsize_o(axi_arsize_o),
    .axi_arburst_o(axi_arburst_o),
    .axi_arcache_o(axi_arcache_o),
    .axi_arprot_o(axi_arprot_o),
    .axi_arlock_o(axi_arlock_o),
    .axi_arvalid_o(axi_arvalid_o),
    .axi_arready_i(axi_arready_i),
    .axi_rid_i(axi_rid_i),
    .axi_rdata_i(axi_rdata_i),
    .axi_rresp_i(axi_rresp_i),
    .axi_rlast_i(axi_rlast_i),
    .axi_rvalid_i(axi_rvalid_i),
    .axi_rready_o(axi_rready_o)
  );


  bsg_cache_to_axi_tx_num_cache_p4_data_width_p64_block_size_in_words_p8_axi_id_width_p6_axi_addr_width_p5_axi_data_width_p64_axi_burst_len_p1
  axi_tx
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(write_rr_v_lo),
    .yumi_o(write_rr_yumi_li),
    .tag_i(write_rr_tag_lo),
    .axi_addr_i(write_rr_dma_pkt[4:0]),
    .dma_data_i(dma_data_i),
    .dma_data_v_i(dma_data_v_i),
    .dma_data_yumi_o(dma_data_yumi_o),
    .axi_awid_o(axi_awid_o),
    .axi_awaddr_o(axi_awaddr_o),
    .axi_awlen_o(axi_awlen_o),
    .axi_awsize_o(axi_awsize_o),
    .axi_awburst_o(axi_awburst_o),
    .axi_awcache_o(axi_awcache_o),
    .axi_awprot_o(axi_awprot_o),
    .axi_awlock_o(axi_awlock_o),
    .axi_awvalid_o(axi_awvalid_o),
    .axi_awready_i(axi_awready_i),
    .axi_wdata_o(axi_wdata_o),
    .axi_wstrb_o(axi_wstrb_o),
    .axi_wlast_o(axi_wlast_o),
    .axi_wvalid_o(axi_wvalid_o),
    .axi_wready_i(axi_wready_i),
    .axi_bid_i(axi_bid_i),
    .axi_bresp_i(axi_bresp_i),
    .axi_bvalid_i(axi_bvalid_i),
    .axi_bready_o(axi_bready_o)
  );

  assign dma_pkt_yumi_o[0] = (N0)? write_rr_yumi_lo[0] : 
                             (N5)? read_rr_yumi_lo[0] : 1'b0;
  assign N0 = N4;
  assign dma_pkt_yumi_o[1] = (N1)? write_rr_yumi_lo[1] : 
                             (N7)? read_rr_yumi_lo[1] : 1'b0;
  assign N1 = N6;
  assign dma_pkt_yumi_o[2] = (N2)? write_rr_yumi_lo[2] : 
                             (N9)? read_rr_yumi_lo[2] : 1'b0;
  assign N2 = N8;
  assign dma_pkt_yumi_o[3] = (N3)? write_rr_yumi_lo[3] : 
                             (N11)? read_rr_yumi_lo[3] : 1'b0;
  assign N3 = N10;
  assign read_rr_v_li[0] = dma_pkt_v_i[0] & N12;
  assign N12 = ~dma_pkt_i[39];
  assign read_rr_v_li[1] = dma_pkt_v_i[1] & N13;
  assign N13 = ~dma_pkt_i[79];
  assign read_rr_v_li[2] = dma_pkt_v_i[2] & N14;
  assign N14 = ~dma_pkt_i[119];
  assign read_rr_v_li[3] = dma_pkt_v_i[3] & N15;
  assign N15 = ~dma_pkt_i[159];
  assign write_rr_v_li[0] = dma_pkt_v_i[0] & dma_pkt_i[39];
  assign write_rr_v_li[1] = dma_pkt_v_i[1] & dma_pkt_i[79];
  assign write_rr_v_li[2] = dma_pkt_v_i[2] & dma_pkt_i[119];
  assign write_rr_v_li[3] = dma_pkt_v_i[3] & dma_pkt_i[159];
  assign N4 = dma_pkt_i[39];
  assign N5 = ~N4;
  assign N6 = dma_pkt_i[79];
  assign N7 = ~N6;
  assign N8 = dma_pkt_i[119];
  assign N9 = ~N8;
  assign N10 = dma_pkt_i[159];
  assign N11 = ~N10;

endmodule

