

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

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [32:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [33:0] prod_accum_o;
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



module bsg_and_width_p64
(
  a_i,
  b_i,
  o
);

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] o;
  wire [63:0] o;
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



module bsg_adder_ripple_carry_width_p64
(
  a_i,
  b_i,
  s_o,
  c_o
);

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] s_o;
  output c_o;
  wire [63:0] s_o;
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

  input [63:0] a_i;
  input [63:0] b_i;
  input [63:0] s_i;
  input [32:0] prod_accum_i;
  output [63:0] a_o;
  output [63:0] b_o;
  output [63:0] s_o;
  output [33:0] prod_accum_o;
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
  N229,N230,N231,N232,N233,N234,N235,N236;
  wire [63:0] pp,ps;
  reg [33:0] prod_accum_o;
  reg [63:0] a_o,b_o,s_o;
  reg c_o;

  bsg_and_width_p64
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33], b_i[33:33] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p64
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[63:1] }),
    .s_o(ps),
    .c_o(pc)
  );

  assign { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                       (N1)? a_i : 1'b0;
  assign N0 = rst_i;
  assign N1 = N2;
  assign { N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                             (N1)? b_i : 1'b0;
  assign { N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N1)? ps : 1'b0;
  assign N195 = (N0)? 1'b0 : 
                (N1)? pc : 1'b0;
  assign { N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                          (N1)? { ps[0:0], prod_accum_i } : 1'b0;
  assign N2 = ~rst_i;
  assign N230 = ~v_i;
  assign N231 = N230 & N2;
  assign N232 = ~N231;
  assign N233 = N230 & N2;
  assign N234 = ~N233;
  assign N235 = N230 & N2;
  assign N236 = ~N235;

  always @(posedge clk_i) begin
    if(N232) begin
      { prod_accum_o[33:33] } <= { N229 };
      { b_o[33:0] } <= { N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 };
      { s_o[63:0] } <= { N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131 };
      c_o <= N195;
    end 
    if(N234) begin
      { prod_accum_o[32:32], prod_accum_o[4:0] } <= { N228, N200, N199, N198, N197, N196 };
      { a_o[63:0] } <= { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 };
      { b_o[63:34] } <= { N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101 };
    end 
    if(N236) begin
      { prod_accum_o[31:5] } <= { N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201 };
    end 
  end


endmodule

