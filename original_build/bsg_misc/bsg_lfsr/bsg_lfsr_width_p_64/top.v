

module top
(
  clk,
  reset_i,
  yumi_i,
  o
);

  output [63:0] o;
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

  output [63:0] o;
  input clk;
  input reset_i;
  input yumi_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132;
  wire [63:0] o_n;
  reg [63:0] o;
  assign N3 = (N0)? 1'b1 : 
              (N69)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                                                                                                                                                                                                                                                                                        (N69)? o_n : 1'b0;
  assign N1 = yumi_i | reset_i;
  assign N2 = ~N1;
  assign N68 = ~reset_i;
  assign N69 = yumi_i & N68;
  assign o_n[63] = o[0] & 1'b1;
  assign o_n[62] = o[63] ^ N70;
  assign N70 = o[0] & 1'b1;
  assign o_n[61] = o[62] ^ N71;
  assign N71 = o[0] & 1'b0;
  assign o_n[60] = o[61] ^ N72;
  assign N72 = o[0] & 1'b1;
  assign o_n[59] = o[60] ^ N73;
  assign N73 = o[0] & 1'b1;
  assign o_n[58] = o[59] ^ N74;
  assign N74 = o[0] & 1'b0;
  assign o_n[57] = o[58] ^ N75;
  assign N75 = o[0] & 1'b0;
  assign o_n[56] = o[57] ^ N76;
  assign N76 = o[0] & 1'b0;
  assign o_n[55] = o[56] ^ N77;
  assign N77 = o[0] & 1'b0;
  assign o_n[54] = o[55] ^ N78;
  assign N78 = o[0] & 1'b0;
  assign o_n[53] = o[54] ^ N79;
  assign N79 = o[0] & 1'b0;
  assign o_n[52] = o[53] ^ N80;
  assign N80 = o[0] & 1'b0;
  assign o_n[51] = o[52] ^ N81;
  assign N81 = o[0] & 1'b0;
  assign o_n[50] = o[51] ^ N82;
  assign N82 = o[0] & 1'b0;
  assign o_n[49] = o[50] ^ N83;
  assign N83 = o[0] & 1'b0;
  assign o_n[48] = o[49] ^ N84;
  assign N84 = o[0] & 1'b0;
  assign o_n[47] = o[48] ^ N85;
  assign N85 = o[0] & 1'b0;
  assign o_n[46] = o[47] ^ N86;
  assign N86 = o[0] & 1'b0;
  assign o_n[45] = o[46] ^ N87;
  assign N87 = o[0] & 1'b0;
  assign o_n[44] = o[45] ^ N88;
  assign N88 = o[0] & 1'b0;
  assign o_n[43] = o[44] ^ N89;
  assign N89 = o[0] & 1'b0;
  assign o_n[42] = o[43] ^ N90;
  assign N90 = o[0] & 1'b0;
  assign o_n[41] = o[42] ^ N91;
  assign N91 = o[0] & 1'b0;
  assign o_n[40] = o[41] ^ N92;
  assign N92 = o[0] & 1'b0;
  assign o_n[39] = o[40] ^ N93;
  assign N93 = o[0] & 1'b0;
  assign o_n[38] = o[39] ^ N94;
  assign N94 = o[0] & 1'b0;
  assign o_n[37] = o[38] ^ N95;
  assign N95 = o[0] & 1'b0;
  assign o_n[36] = o[37] ^ N96;
  assign N96 = o[0] & 1'b0;
  assign o_n[35] = o[36] ^ N97;
  assign N97 = o[0] & 1'b0;
  assign o_n[34] = o[35] ^ N98;
  assign N98 = o[0] & 1'b0;
  assign o_n[33] = o[34] ^ N99;
  assign N99 = o[0] & 1'b0;
  assign o_n[32] = o[33] ^ N100;
  assign N100 = o[0] & 1'b0;
  assign o_n[31] = o[32] ^ N101;
  assign N101 = o[0] & 1'b0;
  assign o_n[30] = o[31] ^ N102;
  assign N102 = o[0] & 1'b0;
  assign o_n[29] = o[30] ^ N103;
  assign N103 = o[0] & 1'b0;
  assign o_n[28] = o[29] ^ N104;
  assign N104 = o[0] & 1'b0;
  assign o_n[27] = o[28] ^ N105;
  assign N105 = o[0] & 1'b0;
  assign o_n[26] = o[27] ^ N106;
  assign N106 = o[0] & 1'b0;
  assign o_n[25] = o[26] ^ N107;
  assign N107 = o[0] & 1'b0;
  assign o_n[24] = o[25] ^ N108;
  assign N108 = o[0] & 1'b0;
  assign o_n[23] = o[24] ^ N109;
  assign N109 = o[0] & 1'b0;
  assign o_n[22] = o[23] ^ N110;
  assign N110 = o[0] & 1'b0;
  assign o_n[21] = o[22] ^ N111;
  assign N111 = o[0] & 1'b0;
  assign o_n[20] = o[21] ^ N112;
  assign N112 = o[0] & 1'b0;
  assign o_n[19] = o[20] ^ N113;
  assign N113 = o[0] & 1'b0;
  assign o_n[18] = o[19] ^ N114;
  assign N114 = o[0] & 1'b0;
  assign o_n[17] = o[18] ^ N115;
  assign N115 = o[0] & 1'b0;
  assign o_n[16] = o[17] ^ N116;
  assign N116 = o[0] & 1'b0;
  assign o_n[15] = o[16] ^ N117;
  assign N117 = o[0] & 1'b0;
  assign o_n[14] = o[15] ^ N118;
  assign N118 = o[0] & 1'b0;
  assign o_n[13] = o[14] ^ N119;
  assign N119 = o[0] & 1'b0;
  assign o_n[12] = o[13] ^ N120;
  assign N120 = o[0] & 1'b0;
  assign o_n[11] = o[12] ^ N121;
  assign N121 = o[0] & 1'b0;
  assign o_n[10] = o[11] ^ N122;
  assign N122 = o[0] & 1'b0;
  assign o_n[9] = o[10] ^ N123;
  assign N123 = o[0] & 1'b0;
  assign o_n[8] = o[9] ^ N124;
  assign N124 = o[0] & 1'b0;
  assign o_n[7] = o[8] ^ N125;
  assign N125 = o[0] & 1'b0;
  assign o_n[6] = o[7] ^ N126;
  assign N126 = o[0] & 1'b0;
  assign o_n[5] = o[6] ^ N127;
  assign N127 = o[0] & 1'b0;
  assign o_n[4] = o[5] ^ N128;
  assign N128 = o[0] & 1'b0;
  assign o_n[3] = o[4] ^ N129;
  assign N129 = o[0] & 1'b0;
  assign o_n[2] = o[3] ^ N130;
  assign N130 = o[0] & 1'b0;
  assign o_n[1] = o[2] ^ N131;
  assign N131 = o[0] & 1'b0;
  assign o_n[0] = o[1] ^ N132;
  assign N132 = o[0] & 1'b0;

  always @(posedge clk) begin
    if(N3) begin
      { o[63:0] } <= { N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4 };
    end 
  end


endmodule

