

module top
(
  data_i,
  rd_i,
  data_o,
  k_o,
  rd_o,
  data_err_o,
  rd_err_o
);

  input [9:0] data_i;
  output [7:0] data_o;
  input rd_i;
  output k_o;
  output rd_o;
  output data_err_o;
  output rd_err_o;

  bsg_8b10b_decode_comb
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .rd_i(rd_i),
    .k_o(k_o),
    .rd_o(rd_o),
    .data_err_o(data_err_o),
    .rd_err_o(rd_err_o)
  );


endmodule



module bsg_8b10b_decode_comb
(
  data_i,
  rd_i,
  data_o,
  k_o,
  rd_o,
  data_err_o,
  rd_err_o
);

  input [9:0] data_i;
  output [7:0] data_o;
  input rd_i;
  output k_o;
  output rd_o;
  output data_err_o;
  output rd_err_o;
  wire [7:0] data_o;
  wire k_o,rd_o,data_err_o,rd_err_o,AxorB,AandB,NAandNB,CxorD,CandD,NCandND,ExnorI,
  EandI,NEandNI,FxorG,FandG,NFandNG,HxorJ,HandJ,NHandNJ,P22,P13,P31,N0,N1,N2,N3,N4,N5,
  N6,N7,N8,N9,N10,N11,N12,N13,M0,M1,M2,M3,M4,M5,M6,T0,T1,T2,T3,T4,N14,N15,N16,N17,
  N18,N19,N20,N21,M7,M8,M9,M10,T5,T6,T7,rd6p,rd6n,rd4p,rd4n,N22,N23,N24,N25,N26,
  N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,
  N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,
  N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,
  N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,
  N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,
  N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,
  N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,
  N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,
  N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,
  N186,N187;
  assign AxorB = data_i[0] ^ data_i[1];
  assign AandB = data_i[0] & data_i[1];
  assign NAandNB = N22 & N23;
  assign N22 = ~data_i[0];
  assign N23 = ~data_i[1];
  assign CxorD = data_i[2] ^ data_i[3];
  assign CandD = data_i[2] & data_i[3];
  assign NCandND = N24 & N25;
  assign N24 = ~data_i[2];
  assign N25 = ~data_i[3];
  assign ExnorI = ~N26;
  assign N26 = data_i[4] ^ data_i[5];
  assign EandI = data_i[4] & data_i[5];
  assign NEandNI = N27 & N28;
  assign N27 = ~data_i[4];
  assign N28 = ~data_i[5];
  assign FxorG = data_i[6] ^ data_i[7];
  assign FandG = data_i[6] & data_i[7];
  assign NFandNG = N29 & N30;
  assign N29 = ~data_i[6];
  assign N30 = ~data_i[7];
  assign HxorJ = data_i[8] ^ data_i[9];
  assign HandJ = data_i[8] & data_i[9];
  assign NHandNJ = N31 & N32;
  assign N31 = ~data_i[8];
  assign N32 = ~data_i[9];
  assign P22 = N35 | N36;
  assign N35 = N33 | N34;
  assign N33 = AandB & NCandND;
  assign N34 = CandD & NAandNB;
  assign N36 = AxorB & CxorD;
  assign P13 = N37 | N38;
  assign N37 = AxorB & NCandND;
  assign N38 = CxorD & NAandNB;
  assign P31 = N39 | N40;
  assign N39 = AxorB & CandD;
  assign N40 = CxorD & AandB;
  assign N0 = N42 & ExnorI;
  assign N42 = N41 & data_i[2];
  assign N41 = P22 & data_i[0];
  assign N1 = N44 & ExnorI;
  assign N44 = N43 & N24;
  assign N43 = P22 & N22;
  assign N2 = N46 & ExnorI;
  assign N46 = N45 & data_i[2];
  assign N45 = P22 & data_i[1];
  assign N3 = N48 & ExnorI;
  assign N48 = N47 & N24;
  assign N47 = P22 & N23;
  assign N4 = NAandNB & NEandNI;
  assign N5 = AandB & EandI;
  assign N6 = N49 & EandI;
  assign N49 = P13 & data_i[3];
  assign N7 = P13 & N28;
  assign N8 = P13 & N27;
  assign N9 = P31 & data_i[5];
  assign N10 = CandD & EandI;
  assign N11 = NCandND & NEandNI;
  assign N12 = N51 & HandJ;
  assign N51 = N50 & data_i[7];
  assign N50 = N27 & data_i[5];
  assign N13 = N53 & NHandNJ;
  assign N53 = N52 & N30;
  assign N52 = data_i[4] & N28;
  assign k_o = N56 | N57;
  assign N56 = N54 | N55;
  assign N54 = N10 | N11;
  assign N55 = N12 & P13;
  assign N57 = N13 & P31;
  assign M0 = N1 | N8;
  assign M1 = N58 | N9;
  assign N58 = N5 | N11;
  assign M2 = N59 | N6;
  assign N59 = N9 | N2;
  assign M3 = N0 | N8;
  assign M4 = N60 | N4;
  assign N60 = N8 | N11;
  assign M5 = N1 | N7;
  assign M6 = N6 | N3;
  assign T0 = N61 | M1;
  assign N61 = M6 | M0;
  assign T1 = N62 | M2;
  assign N62 = M1 | M3;
  assign T2 = N63 | M4;
  assign N63 = M2 | M0;
  assign T3 = N64 | M6;
  assign N64 = M1 | M3;
  assign T4 = N65 | M6;
  assign N65 = M5 | M4;
  assign data_o[0] = data_i[0] ^ T0;
  assign data_o[1] = data_i[1] ^ T1;
  assign data_o[2] = data_i[2] ^ T2;
  assign data_o[3] = data_i[3] ^ T3;
  assign data_o[4] = data_i[4] ^ T4;
  assign N14 = data_i[7] & HandJ;
  assign N15 = HandJ & data_i[6];
  assign N16 = FandG & data_i[9];
  assign N17 = NFandNG & N31;
  assign N18 = NFandNG & HandJ;
  assign N19 = N29 & NHandNJ;
  assign N20 = NHandNJ & N30;
  assign N21 = N68 & N11;
  assign N68 = N66 & N67;
  assign N66 = ~HandJ;
  assign N67 = ~NHandNJ;
  assign M7 = N69 | N21;
  assign N69 = N14 | N15;
  assign M8 = N70 | N18;
  assign N70 = N16 | N17;
  assign M9 = N71 | N20;
  assign N71 = N19 | N21;
  assign M10 = N72 | N21;
  assign N72 = N20 | N15;
  assign T5 = M7 | M8;
  assign T6 = M8 | M9;
  assign T7 = M8 | M10;
  assign data_o[5] = data_i[6] ^ T5;
  assign data_o[6] = data_i[7] ^ T6;
  assign data_o[7] = data_i[8] ^ T7;
  assign rd6p = N74 | N75;
  assign N74 = P31 & N73;
  assign N73 = ~NEandNI;
  assign N75 = P22 & EandI;
  assign rd6n = N77 | N78;
  assign N77 = P13 & N76;
  assign N76 = ~EandI;
  assign N78 = P22 & NEandNI;
  assign rd4p = N79 | N80;
  assign N79 = FxorG & HandJ;
  assign N80 = HxorJ & FandG;
  assign rd4n = N81 | N82;
  assign N81 = FxorG & NHandNJ;
  assign N82 = HxorJ & NFandNG;
  assign rd_o = N67 & N102;
  assign N102 = N83 | N101;
  assign N83 = rd4p | HandJ;
  assign N101 = N96 & N100;
  assign N96 = N84 & N95;
  assign N84 = data_i[3] | N73;
  assign N95 = N93 | N94;
  assign N93 = N89 | N92;
  assign N89 = N85 | N88;
  assign N85 = rd_i & P31;
  assign N88 = N87 & EandI;
  assign N87 = rd_i | N86;
  assign N86 = ~P13;
  assign N92 = N91 & N73;
  assign N91 = N90 | P31;
  assign N90 = rd_i & P22;
  assign N94 = data_i[3] & EandI;
  assign N100 = N98 | N99;
  assign N98 = N97 | N18;
  assign N97 = FandG & NHandNJ;
  assign N99 = FxorG & HxorJ;
  assign data_err_o = N153 | N162;
  assign N153 = N148 | N152;
  assign N148 = N143 | N147;
  assign N143 = N141 | N142;
  assign N141 = N139 | N140;
  assign N139 = N136 | N138;
  assign N136 = N134 | N135;
  assign N134 = N132 | N133;
  assign N132 = N129 | N131;
  assign N129 = N127 | N128;
  assign N127 = N125 | N126;
  assign N125 = N123 | N124;
  assign N123 = N120 | N122;
  assign N120 = N117 | N119;
  assign N117 = N114 | N116;
  assign N114 = N112 | N113;
  assign N112 = N109 | N111;
  assign N109 = N107 | N108;
  assign N107 = N105 | N106;
  assign N105 = N103 | N104;
  assign N103 = NAandNB & NCandND;
  assign N104 = AandB & CandD;
  assign N106 = NFandNG & NHandNJ;
  assign N108 = FandG & HandJ;
  assign N111 = N110 & data_i[8];
  assign N110 = EandI & FandG;
  assign N113 = NEandNI & N17;
  assign N116 = N115 & N14;
  assign N115 = data_i[4] & N28;
  assign N119 = N118 & N20;
  assign N118 = N27 & data_i[5];
  assign N122 = N121 & N13;
  assign N121 = ~P31;
  assign N124 = N86 & N12;
  assign N126 = N7 & N27;
  assign N128 = N9 & data_i[4];
  assign N131 = N130 & rd6p;
  assign N130 = FandG & NHandNJ;
  assign N133 = N18 & rd6n;
  assign N135 = N10 & N17;
  assign N138 = N137 & data_i[8];
  assign N137 = N11 & FandG;
  assign N140 = rd6p & rd4p;
  assign N142 = rd6n & rd4n;
  assign N147 = N145 & N146;
  assign N145 = N144 & NEandNI;
  assign N144 = AandB & data_i[2];
  assign N146 = NFandNG | rd4n;
  assign N152 = N150 & N151;
  assign N150 = N149 & EandI;
  assign N149 = NAandNB & N24;
  assign N151 = FandG | rd4p;
  assign N162 = N159 & N161;
  assign N159 = N156 & N158;
  assign N156 = N154 | N155;
  assign N154 = EandI & N20;
  assign N155 = NEandNI & N14;
  assign N158 = ~N157;
  assign N157 = CandD & data_i[4];
  assign N161 = ~N160;
  assign N160 = NCandND & N27;
  assign rd_err_o = N185 | N187;
  assign N185 = N182 | N184;
  assign N182 = N180 | N181;
  assign N180 = N178 | N179;
  assign N178 = N174 | N177;
  assign N174 = N170 | N173;
  assign N170 = N167 | N169;
  assign N167 = N165 | N166;
  assign N165 = N163 | N164;
  assign N163 = rd6p & rd4p;
  assign N164 = rd6n & rd4n;
  assign N166 = rd_i & rd6p;
  assign N169 = N168 & rd6n;
  assign N168 = ~rd_i;
  assign N173 = N172 & FandG;
  assign N172 = rd_i & N171;
  assign N171 = ~rd6n;
  assign N177 = N176 & NFandNG;
  assign N176 = N168 & N175;
  assign N175 = ~rd6p;
  assign N179 = N172 & rd4p;
  assign N181 = N176 & rd4n;
  assign N184 = N183 & data_i[2];
  assign N183 = rd_i & AandB;
  assign N187 = N186 & N24;
  assign N186 = N168 & NAandNB;

endmodule

