

module top
(
  clk,
  reset_i,
  yumi_i,
  o
);

  output [127:0] o;
  input clk;
  input reset_i;
  input yumi_i;

  bsg_lfsr
  wrapper
  (
    .o(o),
    .clk(clk),
    .reset_i(reset_i),
    .yumi_i(yumi_i)
  );


endmodule



module bsg_lfsr
(
  clk,
  reset_i,
  yumi_i,
  o
);

  output [127:0] o;
  input clk;
  input reset_i;
  input yumi_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,
  N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,
  N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,
  N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,
  N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,
  N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,
  N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,
  N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,
  N246,N247,N248,N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,N260,N261;
  wire [127:0] o_n;
  reg [127:0] o;
  assign { N5, N3 } = (N0)? { 1'b1, 1'b1 } : 
                      (N134)? { 1'b1, 1'b1 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N0 = reset_i;
  assign { N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N4 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          (N134)? o_n : 1'b0;
  assign N1 = yumi_i | reset_i;
  assign N2 = ~N1;
  assign N133 = ~reset_i;
  assign N134 = yumi_i & N133;
  assign o_n[127] = o[0] & 1'b0;
  assign o_n[126] = o[127] ^ N135;
  assign N135 = o[0] & 1'b0;
  assign o_n[125] = o[126] ^ N136;
  assign N136 = o[0] & 1'b0;
  assign o_n[124] = o[125] ^ N137;
  assign N137 = o[0] & 1'b0;
  assign o_n[123] = o[124] ^ N138;
  assign N138 = o[0] & 1'b0;
  assign o_n[122] = o[123] ^ N139;
  assign N139 = o[0] & 1'b0;
  assign o_n[121] = o[122] ^ N140;
  assign N140 = o[0] & 1'b0;
  assign o_n[120] = o[121] ^ N141;
  assign N141 = o[0] & 1'b0;
  assign o_n[119] = o[120] ^ N142;
  assign N142 = o[0] & 1'b0;
  assign o_n[118] = o[119] ^ N143;
  assign N143 = o[0] & 1'b0;
  assign o_n[117] = o[118] ^ N144;
  assign N144 = o[0] & 1'b0;
  assign o_n[116] = o[117] ^ N145;
  assign N145 = o[0] & 1'b0;
  assign o_n[115] = o[116] ^ N146;
  assign N146 = o[0] & 1'b0;
  assign o_n[114] = o[115] ^ N147;
  assign N147 = o[0] & 1'b0;
  assign o_n[113] = o[114] ^ N148;
  assign N148 = o[0] & 1'b0;
  assign o_n[112] = o[113] ^ N149;
  assign N149 = o[0] & 1'b0;
  assign o_n[111] = o[112] ^ N150;
  assign N150 = o[0] & 1'b0;
  assign o_n[110] = o[111] ^ N151;
  assign N151 = o[0] & 1'b0;
  assign o_n[109] = o[110] ^ N152;
  assign N152 = o[0] & 1'b0;
  assign o_n[108] = o[109] ^ N153;
  assign N153 = o[0] & 1'b0;
  assign o_n[107] = o[108] ^ N154;
  assign N154 = o[0] & 1'b0;
  assign o_n[106] = o[107] ^ N155;
  assign N155 = o[0] & 1'b0;
  assign o_n[105] = o[106] ^ N156;
  assign N156 = o[0] & 1'b0;
  assign o_n[104] = o[105] ^ N157;
  assign N157 = o[0] & 1'b0;
  assign o_n[103] = o[104] ^ N158;
  assign N158 = o[0] & 1'b0;
  assign o_n[102] = o[103] ^ N159;
  assign N159 = o[0] & 1'b0;
  assign o_n[101] = o[102] ^ N160;
  assign N160 = o[0] & 1'b0;
  assign o_n[100] = o[101] ^ N161;
  assign N161 = o[0] & 1'b0;
  assign o_n[99] = o[100] ^ N162;
  assign N162 = o[0] & 1'b0;
  assign o_n[98] = o[99] ^ N163;
  assign N163 = o[0] & 1'b0;
  assign o_n[97] = o[98] ^ N164;
  assign N164 = o[0] & 1'b0;
  assign o_n[96] = o[97] ^ N165;
  assign N165 = o[0] & 1'b0;
  assign o_n[95] = o[96] ^ N166;
  assign N166 = o[0] & 1'b0;
  assign o_n[94] = o[95] ^ N167;
  assign N167 = o[0] & 1'b0;
  assign o_n[93] = o[94] ^ N168;
  assign N168 = o[0] & 1'b0;
  assign o_n[92] = o[93] ^ N169;
  assign N169 = o[0] & 1'b0;
  assign o_n[91] = o[92] ^ N170;
  assign N170 = o[0] & 1'b0;
  assign o_n[90] = o[91] ^ N171;
  assign N171 = o[0] & 1'b0;
  assign o_n[89] = o[90] ^ N172;
  assign N172 = o[0] & 1'b0;
  assign o_n[88] = o[89] ^ N173;
  assign N173 = o[0] & 1'b0;
  assign o_n[87] = o[88] ^ N174;
  assign N174 = o[0] & 1'b0;
  assign o_n[86] = o[87] ^ N175;
  assign N175 = o[0] & 1'b0;
  assign o_n[85] = o[86] ^ N176;
  assign N176 = o[0] & 1'b0;
  assign o_n[84] = o[85] ^ N177;
  assign N177 = o[0] & 1'b0;
  assign o_n[83] = o[84] ^ N178;
  assign N178 = o[0] & 1'b0;
  assign o_n[82] = o[83] ^ N179;
  assign N179 = o[0] & 1'b0;
  assign o_n[81] = o[82] ^ N180;
  assign N180 = o[0] & 1'b0;
  assign o_n[80] = o[81] ^ N181;
  assign N181 = o[0] & 1'b0;
  assign o_n[79] = o[80] ^ N182;
  assign N182 = o[0] & 1'b0;
  assign o_n[78] = o[79] ^ N183;
  assign N183 = o[0] & 1'b0;
  assign o_n[77] = o[78] ^ N184;
  assign N184 = o[0] & 1'b0;
  assign o_n[76] = o[77] ^ N185;
  assign N185 = o[0] & 1'b0;
  assign o_n[75] = o[76] ^ N186;
  assign N186 = o[0] & 1'b0;
  assign o_n[74] = o[75] ^ N187;
  assign N187 = o[0] & 1'b0;
  assign o_n[73] = o[74] ^ N188;
  assign N188 = o[0] & 1'b0;
  assign o_n[72] = o[73] ^ N189;
  assign N189 = o[0] & 1'b0;
  assign o_n[71] = o[72] ^ N190;
  assign N190 = o[0] & 1'b0;
  assign o_n[70] = o[71] ^ N191;
  assign N191 = o[0] & 1'b0;
  assign o_n[69] = o[70] ^ N192;
  assign N192 = o[0] & 1'b0;
  assign o_n[68] = o[69] ^ N193;
  assign N193 = o[0] & 1'b0;
  assign o_n[67] = o[68] ^ N194;
  assign N194 = o[0] & 1'b0;
  assign o_n[66] = o[67] ^ N195;
  assign N195 = o[0] & 1'b0;
  assign o_n[65] = o[66] ^ N196;
  assign N196 = o[0] & 1'b0;
  assign o_n[64] = o[65] ^ N197;
  assign N197 = o[0] & 1'b0;
  assign o_n[63] = o[64] ^ N198;
  assign N198 = o[0] & 1'b0;
  assign o_n[62] = o[63] ^ N199;
  assign N199 = o[0] & 1'b0;
  assign o_n[61] = o[62] ^ N200;
  assign N200 = o[0] & 1'b0;
  assign o_n[60] = o[61] ^ N201;
  assign N201 = o[0] & 1'b0;
  assign o_n[59] = o[60] ^ N202;
  assign N202 = o[0] & 1'b0;
  assign o_n[58] = o[59] ^ N203;
  assign N203 = o[0] & 1'b0;
  assign o_n[57] = o[58] ^ N204;
  assign N204 = o[0] & 1'b0;
  assign o_n[56] = o[57] ^ N205;
  assign N205 = o[0] & 1'b0;
  assign o_n[55] = o[56] ^ N206;
  assign N206 = o[0] & 1'b0;
  assign o_n[54] = o[55] ^ N207;
  assign N207 = o[0] & 1'b0;
  assign o_n[53] = o[54] ^ N208;
  assign N208 = o[0] & 1'b0;
  assign o_n[52] = o[53] ^ N209;
  assign N209 = o[0] & 1'b0;
  assign o_n[51] = o[52] ^ N210;
  assign N210 = o[0] & 1'b0;
  assign o_n[50] = o[51] ^ N211;
  assign N211 = o[0] & 1'b0;
  assign o_n[49] = o[50] ^ N212;
  assign N212 = o[0] & 1'b0;
  assign o_n[48] = o[49] ^ N213;
  assign N213 = o[0] & 1'b0;
  assign o_n[47] = o[48] ^ N214;
  assign N214 = o[0] & 1'b0;
  assign o_n[46] = o[47] ^ N215;
  assign N215 = o[0] & 1'b0;
  assign o_n[45] = o[46] ^ N216;
  assign N216 = o[0] & 1'b0;
  assign o_n[44] = o[45] ^ N217;
  assign N217 = o[0] & 1'b0;
  assign o_n[43] = o[44] ^ N218;
  assign N218 = o[0] & 1'b0;
  assign o_n[42] = o[43] ^ N219;
  assign N219 = o[0] & 1'b0;
  assign o_n[41] = o[42] ^ N220;
  assign N220 = o[0] & 1'b0;
  assign o_n[40] = o[41] ^ N221;
  assign N221 = o[0] & 1'b0;
  assign o_n[39] = o[40] ^ N222;
  assign N222 = o[0] & 1'b0;
  assign o_n[38] = o[39] ^ N223;
  assign N223 = o[0] & 1'b0;
  assign o_n[37] = o[38] ^ N224;
  assign N224 = o[0] & 1'b0;
  assign o_n[36] = o[37] ^ N225;
  assign N225 = o[0] & 1'b0;
  assign o_n[35] = o[36] ^ N226;
  assign N226 = o[0] & 1'b0;
  assign o_n[34] = o[35] ^ N227;
  assign N227 = o[0] & 1'b0;
  assign o_n[33] = o[34] ^ N228;
  assign N228 = o[0] & 1'b0;
  assign o_n[32] = o[33] ^ N229;
  assign N229 = o[0] & 1'b0;
  assign o_n[31] = o[32] ^ N230;
  assign N230 = o[0] & 1'b0;
  assign o_n[30] = o[31] ^ N231;
  assign N231 = o[0] & 1'b0;
  assign o_n[29] = o[30] ^ N232;
  assign N232 = o[0] & 1'b0;
  assign o_n[28] = o[29] ^ N233;
  assign N233 = o[0] & 1'b0;
  assign o_n[27] = o[28] ^ N234;
  assign N234 = o[0] & 1'b0;
  assign o_n[26] = o[27] ^ N235;
  assign N235 = o[0] & 1'b0;
  assign o_n[25] = o[26] ^ N236;
  assign N236 = o[0] & 1'b0;
  assign o_n[24] = o[25] ^ N237;
  assign N237 = o[0] & 1'b0;
  assign o_n[23] = o[24] ^ N238;
  assign N238 = o[0] & 1'b0;
  assign o_n[22] = o[23] ^ N239;
  assign N239 = o[0] & 1'b0;
  assign o_n[21] = o[22] ^ N240;
  assign N240 = o[0] & 1'b0;
  assign o_n[20] = o[21] ^ N241;
  assign N241 = o[0] & 1'b0;
  assign o_n[19] = o[20] ^ N242;
  assign N242 = o[0] & 1'b0;
  assign o_n[18] = o[19] ^ N243;
  assign N243 = o[0] & 1'b0;
  assign o_n[17] = o[18] ^ N244;
  assign N244 = o[0] & 1'b0;
  assign o_n[16] = o[17] ^ N245;
  assign N245 = o[0] & 1'b0;
  assign o_n[15] = o[16] ^ N246;
  assign N246 = o[0] & 1'b0;
  assign o_n[14] = o[15] ^ N247;
  assign N247 = o[0] & 1'b0;
  assign o_n[13] = o[14] ^ N248;
  assign N248 = o[0] & 1'b0;
  assign o_n[12] = o[13] ^ N249;
  assign N249 = o[0] & 1'b0;
  assign o_n[11] = o[12] ^ N250;
  assign N250 = o[0] & 1'b0;
  assign o_n[10] = o[11] ^ N251;
  assign N251 = o[0] & 1'b0;
  assign o_n[9] = o[10] ^ N252;
  assign N252 = o[0] & 1'b0;
  assign o_n[8] = o[9] ^ N253;
  assign N253 = o[0] & 1'b0;
  assign o_n[7] = o[8] ^ N254;
  assign N254 = o[0] & 1'b0;
  assign o_n[6] = o[7] ^ N255;
  assign N255 = o[0] & 1'b0;
  assign o_n[5] = o[6] ^ N256;
  assign N256 = o[0] & 1'b0;
  assign o_n[4] = o[5] ^ N257;
  assign N257 = o[0] & 1'b0;
  assign o_n[3] = o[4] ^ N258;
  assign N258 = o[0] & 1'b0;
  assign o_n[2] = o[3] ^ N259;
  assign N259 = o[0] & 1'b0;
  assign o_n[1] = o[2] ^ N260;
  assign N260 = o[0] & 1'b0;
  assign o_n[0] = o[1] ^ N261;
  assign N261 = o[0] & 1'b0;

  always @(posedge clk) begin
    if(N3) begin
      { o[127:29], o[0:0] } <= { N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N4 };
    end 
    if(N5) begin
      { o[28:1] } <= { N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6 };
    end 
  end


endmodule

