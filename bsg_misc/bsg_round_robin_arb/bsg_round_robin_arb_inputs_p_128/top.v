

module top
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

  input [127:0] reqs_i;
  output [127:0] grants_o;
  output [127:0] sel_one_hot_o;
  output [6:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;

  bsg_round_robin_arb
  wrapper
  (
    .reqs_i(reqs_i),
    .grants_o(grants_o),
    .sel_one_hot_o(sel_one_hot_o),
    .tag_o(tag_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .grants_en_i(grants_en_i),
    .yumi_i(yumi_i),
    .v_o(v_o)
  );


endmodule



module bsg_round_robin_arb
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

  input [127:0] reqs_i;
  output [127:0] grants_o;
  output [127:0] sel_one_hot_o;
  output [6:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [127:0] grants_o,sel_one_hot_o;
  wire [6:0] tag_o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,
  N117,N118,N119,N120,N121,N122,N123,N124,N125;
  assign v_o = N125 | reqs_i[0];
  assign N125 = N124 | reqs_i[1];
  assign N124 = N123 | reqs_i[2];
  assign N123 = N122 | reqs_i[3];
  assign N122 = N121 | reqs_i[4];
  assign N121 = N120 | reqs_i[5];
  assign N120 = N119 | reqs_i[6];
  assign N119 = N118 | reqs_i[7];
  assign N118 = N117 | reqs_i[8];
  assign N117 = N116 | reqs_i[9];
  assign N116 = N115 | reqs_i[10];
  assign N115 = N114 | reqs_i[11];
  assign N114 = N113 | reqs_i[12];
  assign N113 = N112 | reqs_i[13];
  assign N112 = N111 | reqs_i[14];
  assign N111 = N110 | reqs_i[15];
  assign N110 = N109 | reqs_i[16];
  assign N109 = N108 | reqs_i[17];
  assign N108 = N107 | reqs_i[18];
  assign N107 = N106 | reqs_i[19];
  assign N106 = N105 | reqs_i[20];
  assign N105 = N104 | reqs_i[21];
  assign N104 = N103 | reqs_i[22];
  assign N103 = N102 | reqs_i[23];
  assign N102 = N101 | reqs_i[24];
  assign N101 = N100 | reqs_i[25];
  assign N100 = N99 | reqs_i[26];
  assign N99 = N98 | reqs_i[27];
  assign N98 = N97 | reqs_i[28];
  assign N97 = N96 | reqs_i[29];
  assign N96 = N95 | reqs_i[30];
  assign N95 = N94 | reqs_i[31];
  assign N94 = N93 | reqs_i[32];
  assign N93 = N92 | reqs_i[33];
  assign N92 = N91 | reqs_i[34];
  assign N91 = N90 | reqs_i[35];
  assign N90 = N89 | reqs_i[36];
  assign N89 = N88 | reqs_i[37];
  assign N88 = N87 | reqs_i[38];
  assign N87 = N86 | reqs_i[39];
  assign N86 = N85 | reqs_i[40];
  assign N85 = N84 | reqs_i[41];
  assign N84 = N83 | reqs_i[42];
  assign N83 = N82 | reqs_i[43];
  assign N82 = N81 | reqs_i[44];
  assign N81 = N80 | reqs_i[45];
  assign N80 = N79 | reqs_i[46];
  assign N79 = N78 | reqs_i[47];
  assign N78 = N77 | reqs_i[48];
  assign N77 = N76 | reqs_i[49];
  assign N76 = N75 | reqs_i[50];
  assign N75 = N74 | reqs_i[51];
  assign N74 = N73 | reqs_i[52];
  assign N73 = N72 | reqs_i[53];
  assign N72 = N71 | reqs_i[54];
  assign N71 = N70 | reqs_i[55];
  assign N70 = N69 | reqs_i[56];
  assign N69 = N68 | reqs_i[57];
  assign N68 = N67 | reqs_i[58];
  assign N67 = N66 | reqs_i[59];
  assign N66 = N65 | reqs_i[60];
  assign N65 = N64 | reqs_i[61];
  assign N64 = N63 | reqs_i[62];
  assign N63 = N62 | reqs_i[63];
  assign N62 = N61 | reqs_i[64];
  assign N61 = N60 | reqs_i[65];
  assign N60 = N59 | reqs_i[66];
  assign N59 = N58 | reqs_i[67];
  assign N58 = N57 | reqs_i[68];
  assign N57 = N56 | reqs_i[69];
  assign N56 = N55 | reqs_i[70];
  assign N55 = N54 | reqs_i[71];
  assign N54 = N53 | reqs_i[72];
  assign N53 = N52 | reqs_i[73];
  assign N52 = N51 | reqs_i[74];
  assign N51 = N50 | reqs_i[75];
  assign N50 = N49 | reqs_i[76];
  assign N49 = N48 | reqs_i[77];
  assign N48 = N47 | reqs_i[78];
  assign N47 = N46 | reqs_i[79];
  assign N46 = N45 | reqs_i[80];
  assign N45 = N44 | reqs_i[81];
  assign N44 = N43 | reqs_i[82];
  assign N43 = N42 | reqs_i[83];
  assign N42 = N41 | reqs_i[84];
  assign N41 = N40 | reqs_i[85];
  assign N40 = N39 | reqs_i[86];
  assign N39 = N38 | reqs_i[87];
  assign N38 = N37 | reqs_i[88];
  assign N37 = N36 | reqs_i[89];
  assign N36 = N35 | reqs_i[90];
  assign N35 = N34 | reqs_i[91];
  assign N34 = N33 | reqs_i[92];
  assign N33 = N32 | reqs_i[93];
  assign N32 = N31 | reqs_i[94];
  assign N31 = N30 | reqs_i[95];
  assign N30 = N29 | reqs_i[96];
  assign N29 = N28 | reqs_i[97];
  assign N28 = N27 | reqs_i[98];
  assign N27 = N26 | reqs_i[99];
  assign N26 = N25 | reqs_i[100];
  assign N25 = N24 | reqs_i[101];
  assign N24 = N23 | reqs_i[102];
  assign N23 = N22 | reqs_i[103];
  assign N22 = N21 | reqs_i[104];
  assign N21 = N20 | reqs_i[105];
  assign N20 = N19 | reqs_i[106];
  assign N19 = N18 | reqs_i[107];
  assign N18 = N17 | reqs_i[108];
  assign N17 = N16 | reqs_i[109];
  assign N16 = N15 | reqs_i[110];
  assign N15 = N14 | reqs_i[111];
  assign N14 = N13 | reqs_i[112];
  assign N13 = N12 | reqs_i[113];
  assign N12 = N11 | reqs_i[114];
  assign N11 = N10 | reqs_i[115];
  assign N10 = N9 | reqs_i[116];
  assign N9 = N8 | reqs_i[117];
  assign N8 = N7 | reqs_i[118];
  assign N7 = N6 | reqs_i[119];
  assign N6 = N5 | reqs_i[120];
  assign N5 = N4 | reqs_i[121];
  assign N4 = N3 | reqs_i[122];
  assign N3 = N2 | reqs_i[123];
  assign N2 = N1 | reqs_i[124];
  assign N1 = N0 | reqs_i[125];
  assign N0 = reqs_i[127] | reqs_i[126];

endmodule

