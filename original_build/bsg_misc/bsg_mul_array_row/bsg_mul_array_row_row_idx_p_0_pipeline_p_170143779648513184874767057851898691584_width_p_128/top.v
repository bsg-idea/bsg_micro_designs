

module top
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [127:0] a_i;
  input [127:0] b_i;
  input [127:0] s_i;
  input [0:0] prod_accum_i;
  output [127:0] a_o;
  output [127:0] b_o;
  output [127:0] s_o;
  output [1:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;

  bsg_mul_array_row
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .s_i(s_i),
    .prod_accum_i(prod_accum_i),
    .a_o(a_o),
    .b_o(b_o),
    .s_o(s_o),
    .prod_accum_o(prod_accum_o),
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .c_i(c_i),
    .c_o(c_o)
  );


endmodule



module bsg_and_width_p128
(
  a_i,
  b_i,
  o
);

  input [127:0] a_i;
  input [127:0] b_i;
  output [127:0] o;
  wire [127:0] o;
  assign o[127] = a_i[127] & b_i[127];
  assign o[126] = a_i[126] & b_i[126];
  assign o[125] = a_i[125] & b_i[125];
  assign o[124] = a_i[124] & b_i[124];
  assign o[123] = a_i[123] & b_i[123];
  assign o[122] = a_i[122] & b_i[122];
  assign o[121] = a_i[121] & b_i[121];
  assign o[120] = a_i[120] & b_i[120];
  assign o[119] = a_i[119] & b_i[119];
  assign o[118] = a_i[118] & b_i[118];
  assign o[117] = a_i[117] & b_i[117];
  assign o[116] = a_i[116] & b_i[116];
  assign o[115] = a_i[115] & b_i[115];
  assign o[114] = a_i[114] & b_i[114];
  assign o[113] = a_i[113] & b_i[113];
  assign o[112] = a_i[112] & b_i[112];
  assign o[111] = a_i[111] & b_i[111];
  assign o[110] = a_i[110] & b_i[110];
  assign o[109] = a_i[109] & b_i[109];
  assign o[108] = a_i[108] & b_i[108];
  assign o[107] = a_i[107] & b_i[107];
  assign o[106] = a_i[106] & b_i[106];
  assign o[105] = a_i[105] & b_i[105];
  assign o[104] = a_i[104] & b_i[104];
  assign o[103] = a_i[103] & b_i[103];
  assign o[102] = a_i[102] & b_i[102];
  assign o[101] = a_i[101] & b_i[101];
  assign o[100] = a_i[100] & b_i[100];
  assign o[99] = a_i[99] & b_i[99];
  assign o[98] = a_i[98] & b_i[98];
  assign o[97] = a_i[97] & b_i[97];
  assign o[96] = a_i[96] & b_i[96];
  assign o[95] = a_i[95] & b_i[95];
  assign o[94] = a_i[94] & b_i[94];
  assign o[93] = a_i[93] & b_i[93];
  assign o[92] = a_i[92] & b_i[92];
  assign o[91] = a_i[91] & b_i[91];
  assign o[90] = a_i[90] & b_i[90];
  assign o[89] = a_i[89] & b_i[89];
  assign o[88] = a_i[88] & b_i[88];
  assign o[87] = a_i[87] & b_i[87];
  assign o[86] = a_i[86] & b_i[86];
  assign o[85] = a_i[85] & b_i[85];
  assign o[84] = a_i[84] & b_i[84];
  assign o[83] = a_i[83] & b_i[83];
  assign o[82] = a_i[82] & b_i[82];
  assign o[81] = a_i[81] & b_i[81];
  assign o[80] = a_i[80] & b_i[80];
  assign o[79] = a_i[79] & b_i[79];
  assign o[78] = a_i[78] & b_i[78];
  assign o[77] = a_i[77] & b_i[77];
  assign o[76] = a_i[76] & b_i[76];
  assign o[75] = a_i[75] & b_i[75];
  assign o[74] = a_i[74] & b_i[74];
  assign o[73] = a_i[73] & b_i[73];
  assign o[72] = a_i[72] & b_i[72];
  assign o[71] = a_i[71] & b_i[71];
  assign o[70] = a_i[70] & b_i[70];
  assign o[69] = a_i[69] & b_i[69];
  assign o[68] = a_i[68] & b_i[68];
  assign o[67] = a_i[67] & b_i[67];
  assign o[66] = a_i[66] & b_i[66];
  assign o[65] = a_i[65] & b_i[65];
  assign o[64] = a_i[64] & b_i[64];
  assign o[63] = a_i[63] & b_i[63];
  assign o[62] = a_i[62] & b_i[62];
  assign o[61] = a_i[61] & b_i[61];
  assign o[60] = a_i[60] & b_i[60];
  assign o[59] = a_i[59] & b_i[59];
  assign o[58] = a_i[58] & b_i[58];
  assign o[57] = a_i[57] & b_i[57];
  assign o[56] = a_i[56] & b_i[56];
  assign o[55] = a_i[55] & b_i[55];
  assign o[54] = a_i[54] & b_i[54];
  assign o[53] = a_i[53] & b_i[53];
  assign o[52] = a_i[52] & b_i[52];
  assign o[51] = a_i[51] & b_i[51];
  assign o[50] = a_i[50] & b_i[50];
  assign o[49] = a_i[49] & b_i[49];
  assign o[48] = a_i[48] & b_i[48];
  assign o[47] = a_i[47] & b_i[47];
  assign o[46] = a_i[46] & b_i[46];
  assign o[45] = a_i[45] & b_i[45];
  assign o[44] = a_i[44] & b_i[44];
  assign o[43] = a_i[43] & b_i[43];
  assign o[42] = a_i[42] & b_i[42];
  assign o[41] = a_i[41] & b_i[41];
  assign o[40] = a_i[40] & b_i[40];
  assign o[39] = a_i[39] & b_i[39];
  assign o[38] = a_i[38] & b_i[38];
  assign o[37] = a_i[37] & b_i[37];
  assign o[36] = a_i[36] & b_i[36];
  assign o[35] = a_i[35] & b_i[35];
  assign o[34] = a_i[34] & b_i[34];
  assign o[33] = a_i[33] & b_i[33];
  assign o[32] = a_i[32] & b_i[32];
  assign o[31] = a_i[31] & b_i[31];
  assign o[30] = a_i[30] & b_i[30];
  assign o[29] = a_i[29] & b_i[29];
  assign o[28] = a_i[28] & b_i[28];
  assign o[27] = a_i[27] & b_i[27];
  assign o[26] = a_i[26] & b_i[26];
  assign o[25] = a_i[25] & b_i[25];
  assign o[24] = a_i[24] & b_i[24];
  assign o[23] = a_i[23] & b_i[23];
  assign o[22] = a_i[22] & b_i[22];
  assign o[21] = a_i[21] & b_i[21];
  assign o[20] = a_i[20] & b_i[20];
  assign o[19] = a_i[19] & b_i[19];
  assign o[18] = a_i[18] & b_i[18];
  assign o[17] = a_i[17] & b_i[17];
  assign o[16] = a_i[16] & b_i[16];
  assign o[15] = a_i[15] & b_i[15];
  assign o[14] = a_i[14] & b_i[14];
  assign o[13] = a_i[13] & b_i[13];
  assign o[12] = a_i[12] & b_i[12];
  assign o[11] = a_i[11] & b_i[11];
  assign o[10] = a_i[10] & b_i[10];
  assign o[9] = a_i[9] & b_i[9];
  assign o[8] = a_i[8] & b_i[8];
  assign o[7] = a_i[7] & b_i[7];
  assign o[6] = a_i[6] & b_i[6];
  assign o[5] = a_i[5] & b_i[5];
  assign o[4] = a_i[4] & b_i[4];
  assign o[3] = a_i[3] & b_i[3];
  assign o[2] = a_i[2] & b_i[2];
  assign o[1] = a_i[1] & b_i[1];
  assign o[0] = a_i[0] & b_i[0];

endmodule



module bsg_adder_ripple_carry_width_p128
(
  a_i,
  b_i,
  s_o,
  c_o
);

  input [127:0] a_i;
  input [127:0] b_i;
  output [127:0] s_o;
  output c_o;
  wire [127:0] s_o;
  wire c_o;
  assign { c_o, s_o } = a_i + b_i;

endmodule



module bsg_mul_array_row
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [127:0] a_i;
  input [127:0] b_i;
  input [127:0] s_i;
  input [0:0] prod_accum_i;
  output [127:0] a_o;
  output [127:0] b_o;
  output [127:0] s_o;
  output [1:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire N0,N1,pc,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,
  N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,
  N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,
  N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,
  N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,
  N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,
  N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,
  N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,
  N229,N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,N244,
  N245,N246,N247,N248,N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,N260,
  N261,N262,N263,N264,N265,N266,N267,N268,N269,N270,N271,N272,N273,N274,N275,N276,
  N277,N278,N279,N280,N281,N282,N283,N284,N285,N286,N287,N288,N289,N290,N291,N292,
  N293,N294,N295,N296,N297,N298,N299,N300,N301,N302,N303,N304,N305,N306,N307,N308,
  N309,N310,N311,N312,N313,N314,N315,N316,N317,N318,N319,N320,N321,N322,N323,N324,
  N325,N326,N327,N328,N329,N330,N331,N332,N333,N334,N335,N336,N337,N338,N339,N340,
  N341,N342,N343,N344,N345,N346,N347,N348,N349,N350,N351,N352,N353,N354,N355,N356,
  N357,N358,N359,N360,N361,N362,N363,N364,N365,N366,N367,N368,N369,N370,N371,N372,
  N373,N374,N375,N376,N377,N378,N379,N380,N381,N382,N383,N384,N385,N386,N387,N388,
  N389,N390,N391,N392,N393,N394,N395,N396,N397,N398;
  wire [127:0] pp,ps;
  reg [1:0] prod_accum_o;
  reg [127:0] a_o,b_o,s_o;
  reg c_o;

  bsg_and_width_p128
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p128
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[127:1] }),
    .s_o(ps),
    .c_o(pc)
  );

  assign { N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      (N1)? a_i : 1'b0;
  assign N0 = rst_i;
  assign N1 = N2;
  assign { N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              (N1)? b_i : 1'b0;
  assign { N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              (N1)? ps : 1'b0;
  assign N387 = (N0)? 1'b0 : 
                (N1)? pc : 1'b0;
  assign { N389, N388 } = (N0)? { 1'b0, 1'b0 } : 
                          (N1)? { ps[0:0], prod_accum_i[0:0] } : 1'b0;
  assign N2 = ~rst_i;
  assign N390 = ~v_i;
  assign N391 = N390 & N2;
  assign N392 = ~N391;
  assign N393 = N390 & N2;
  assign N394 = ~N393;
  assign N395 = N390 & N2;
  assign N396 = ~N395;
  assign N397 = N390 & N2;
  assign N398 = ~N397;

  always @(posedge clk_i) begin
    if(N392) begin
      { prod_accum_o[1:1] } <= { N389 };
      { s_o[97:0] } <= { N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259 };
      c_o <= N387;
    end 
    if(N394) begin
      { prod_accum_o[0:0] } <= { N388 };
      { b_o[68:0] } <= { N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131 };
      { s_o[127:98] } <= { N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357 };
    end 
    if(N396) begin
      { a_o[127:127], a_o[39:0] } <= { N130, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 };
      { b_o[127:69] } <= { N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200 };
    end 
    if(N398) begin
      { a_o[126:40] } <= { N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43 };
    end 
  end


endmodule

