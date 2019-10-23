

module top
(
  lru_i,
  way_id_o
);

  input [14:0] lru_i;
  output [3:0] way_id_o;

  bsg_lru_pseudo_tree_encode
  wrapper
  (
    .lru_i(lru_i),
    .way_id_o(way_id_o)
  );


endmodule



module bsg_lru_pseudo_tree_encode
(
  lru_i,
  way_id_o
);

  input [14:0] lru_i;
  output [3:0] way_id_o;
  wire [3:0] way_id_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,pe_o_3__3_,pe_o_3__2_,
  pe_o_3__1_,pe_o_3__0_,pe_o_2__3_,pe_o_2__2_,pe_o_2__1_,pe_o_2__0_,pe_o_1__3_,
  pe_o_1__2_,pe_o_1__1_,pe_o_1__0_,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,
  N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,
  N155,N156,pe_i_3__14_,pe_i_3__13_,pe_i_3__12_,pe_i_3__11_,pe_i_3__10_,pe_i_3__9_,
  pe_i_3__8_,pe_i_3__7_,pe_i_3__6_,pe_i_3__5_,pe_i_3__4_,pe_i_3__3_,pe_i_3__2_,
  pe_i_3__1_,pe_i_3__0_,pe_i_2__14_,pe_i_2__13_,pe_i_2__12_,pe_i_2__11_,pe_i_2__10_,
  pe_i_2__9_,pe_i_2__8_,pe_i_2__7_,pe_i_2__6_,pe_i_2__5_,pe_i_2__4_,pe_i_2__3_,
  pe_i_2__2_,pe_i_2__1_,pe_i_2__0_,pe_i_1__14_,pe_i_1__13_,pe_i_1__12_,pe_i_1__11_,
  pe_i_1__10_,pe_i_1__9_,pe_i_1__8_,pe_i_1__7_,pe_i_1__6_,pe_i_1__5_,pe_i_1__4_,
  pe_i_1__3_,pe_i_1__2_,pe_i_1__1_,pe_i_1__0_,N157,N158,N159,N160,N161,N162,N163,N164,
  N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,
  N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,
  N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,
  N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,
  N229,N230,N231,N232,N233,N234,N235,N236,N237,N238;
  wire [14:1] mask;

  bsg_priority_encode
  rof2_1__fi3_pe
  (
    .i({ pe_i_1__14_, pe_i_1__13_, pe_i_1__12_, pe_i_1__11_, pe_i_1__10_, pe_i_1__9_, pe_i_1__8_, pe_i_1__7_, pe_i_1__6_, pe_i_1__5_, pe_i_1__4_, pe_i_1__3_, pe_i_1__2_, pe_i_1__1_, pe_i_1__0_ }),
    .addr_o({ pe_o_1__3_, pe_o_1__2_, pe_o_1__1_, pe_o_1__0_ })
  );

  assign { N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187 } = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << { pe_o_1__3_, pe_o_1__2_, pe_o_1__1_, pe_o_1__0_ };

  bsg_priority_encode
  rof2_2__fi3_pe
  (
    .i({ pe_i_2__14_, pe_i_2__13_, pe_i_2__12_, pe_i_2__11_, pe_i_2__10_, pe_i_2__9_, pe_i_2__8_, pe_i_2__7_, pe_i_2__6_, pe_i_2__5_, pe_i_2__4_, pe_i_2__3_, pe_i_2__2_, pe_i_2__1_, pe_i_2__0_ }),
    .addr_o({ pe_o_2__3_, pe_o_2__2_, pe_o_2__1_, pe_o_2__0_ })
  );

  assign { N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217 } = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << { pe_o_2__3_, pe_o_2__2_, pe_o_2__1_, pe_o_2__0_ };

  bsg_priority_encode
  rof2_3__fi3_pe
  (
    .i({ pe_i_3__14_, pe_i_3__13_, pe_i_3__12_, pe_i_3__11_, pe_i_3__10_, pe_i_3__9_, pe_i_3__8_, pe_i_3__7_, pe_i_3__6_, pe_i_3__5_, pe_i_3__4_, pe_i_3__3_, pe_i_3__2_, pe_i_3__1_, pe_i_3__0_ }),
    .addr_o({ pe_o_3__3_, pe_o_3__2_, pe_o_3__1_, pe_o_3__0_ })
  );

  assign N157 = N0 & N1 & (N2 & N3);
  assign N0 = ~pe_o_1__3_;
  assign N1 = ~pe_o_1__2_;
  assign N2 = ~pe_o_1__0_;
  assign N3 = ~pe_o_1__1_;
  assign N158 = pe_o_1__3_ & N4 & (N5 & N6);
  assign N4 = ~pe_o_1__2_;
  assign N5 = ~pe_o_1__0_;
  assign N6 = ~pe_o_1__1_;
  assign N159 = N7 & N8 & (pe_o_1__0_ & N9);
  assign N7 = ~pe_o_1__3_;
  assign N8 = ~pe_o_1__2_;
  assign N9 = ~pe_o_1__1_;
  assign N161 = N10 & N11 & (N12 & pe_o_1__1_);
  assign N10 = ~pe_o_1__3_;
  assign N11 = ~pe_o_1__2_;
  assign N12 = ~pe_o_1__0_;
  assign N163 = N13 & N14 & (pe_o_1__0_ & pe_o_1__1_);
  assign N13 = ~pe_o_1__3_;
  assign N14 = ~pe_o_1__2_;
  assign N165 = N15 & pe_o_1__2_ & (N16 & N17);
  assign N15 = ~pe_o_1__3_;
  assign N16 = ~pe_o_1__0_;
  assign N17 = ~pe_o_1__1_;
  assign N167 = N18 & pe_o_1__2_ & (pe_o_1__0_ & N19);
  assign N18 = ~pe_o_1__3_;
  assign N19 = ~pe_o_1__1_;
  assign N169 = N20 & pe_o_1__2_ & (N21 & pe_o_1__1_);
  assign N20 = ~pe_o_1__3_;
  assign N21 = ~pe_o_1__0_;
  assign N171 = pe_o_1__2_ & pe_o_1__0_ & pe_o_1__1_;
  assign N160 = pe_o_1__3_ & N22 & (pe_o_1__0_ & N23);
  assign N22 = ~pe_o_1__2_;
  assign N23 = ~pe_o_1__1_;
  assign N162 = pe_o_1__3_ & N24 & (N25 & pe_o_1__1_);
  assign N24 = ~pe_o_1__2_;
  assign N25 = ~pe_o_1__0_;
  assign N164 = pe_o_1__3_ & pe_o_1__0_ & pe_o_1__1_;
  assign N166 = pe_o_1__3_ & pe_o_1__2_ & (N26 & N27);
  assign N26 = ~pe_o_1__0_;
  assign N27 = ~pe_o_1__1_;
  assign N168 = pe_o_1__3_ & pe_o_1__2_ & pe_o_1__0_;
  assign N170 = pe_o_1__3_ & pe_o_1__2_ & pe_o_1__1_;
  assign N172 = N28 & N29 & (N30 & N31);
  assign N28 = ~pe_o_2__3_;
  assign N29 = ~pe_o_2__2_;
  assign N30 = ~pe_o_2__0_;
  assign N31 = ~pe_o_2__1_;
  assign N173 = pe_o_2__3_ & N32 & (N33 & N34);
  assign N32 = ~pe_o_2__2_;
  assign N33 = ~pe_o_2__0_;
  assign N34 = ~pe_o_2__1_;
  assign N174 = N35 & N36 & (pe_o_2__0_ & N37);
  assign N35 = ~pe_o_2__3_;
  assign N36 = ~pe_o_2__2_;
  assign N37 = ~pe_o_2__1_;
  assign N176 = N38 & N39 & (N40 & pe_o_2__1_);
  assign N38 = ~pe_o_2__3_;
  assign N39 = ~pe_o_2__2_;
  assign N40 = ~pe_o_2__0_;
  assign N178 = N41 & N42 & (pe_o_2__0_ & pe_o_2__1_);
  assign N41 = ~pe_o_2__3_;
  assign N42 = ~pe_o_2__2_;
  assign N180 = N43 & pe_o_2__2_ & (N44 & N45);
  assign N43 = ~pe_o_2__3_;
  assign N44 = ~pe_o_2__0_;
  assign N45 = ~pe_o_2__1_;
  assign N182 = N46 & pe_o_2__2_ & (pe_o_2__0_ & N47);
  assign N46 = ~pe_o_2__3_;
  assign N47 = ~pe_o_2__1_;
  assign N184 = N48 & pe_o_2__2_ & (N49 & pe_o_2__1_);
  assign N48 = ~pe_o_2__3_;
  assign N49 = ~pe_o_2__0_;
  assign N186 = pe_o_2__2_ & pe_o_2__0_ & pe_o_2__1_;
  assign N175 = pe_o_2__3_ & N50 & (pe_o_2__0_ & N51);
  assign N50 = ~pe_o_2__2_;
  assign N51 = ~pe_o_2__1_;
  assign N177 = pe_o_2__3_ & N52 & (N53 & pe_o_2__1_);
  assign N52 = ~pe_o_2__2_;
  assign N53 = ~pe_o_2__0_;
  assign N179 = pe_o_2__3_ & pe_o_2__0_ & pe_o_2__1_;
  assign N181 = pe_o_2__3_ & pe_o_2__2_ & (N54 & N55);
  assign N54 = ~pe_o_2__0_;
  assign N55 = ~pe_o_2__1_;
  assign N183 = pe_o_2__3_ & pe_o_2__2_ & pe_o_2__0_;
  assign N185 = pe_o_2__3_ & pe_o_2__2_ & pe_o_2__1_;
  assign N202 = N56 & N57 & (N58 & N59);
  assign N56 = ~pe_o_3__3_;
  assign N57 = ~pe_o_3__2_;
  assign N58 = ~pe_o_3__0_;
  assign N59 = ~pe_o_3__1_;
  assign N203 = pe_o_3__3_ & N60 & (N61 & N62);
  assign N60 = ~pe_o_3__2_;
  assign N61 = ~pe_o_3__0_;
  assign N62 = ~pe_o_3__1_;
  assign N204 = N63 & N64 & (pe_o_3__0_ & N65);
  assign N63 = ~pe_o_3__3_;
  assign N64 = ~pe_o_3__2_;
  assign N65 = ~pe_o_3__1_;
  assign N206 = N66 & N67 & (N68 & pe_o_3__1_);
  assign N66 = ~pe_o_3__3_;
  assign N67 = ~pe_o_3__2_;
  assign N68 = ~pe_o_3__0_;
  assign N208 = N69 & N70 & (pe_o_3__0_ & pe_o_3__1_);
  assign N69 = ~pe_o_3__3_;
  assign N70 = ~pe_o_3__2_;
  assign N210 = N71 & pe_o_3__2_ & (N72 & N73);
  assign N71 = ~pe_o_3__3_;
  assign N72 = ~pe_o_3__0_;
  assign N73 = ~pe_o_3__1_;
  assign N212 = N74 & pe_o_3__2_ & (pe_o_3__0_ & N75);
  assign N74 = ~pe_o_3__3_;
  assign N75 = ~pe_o_3__1_;
  assign N214 = N76 & pe_o_3__2_ & (N77 & pe_o_3__1_);
  assign N76 = ~pe_o_3__3_;
  assign N77 = ~pe_o_3__0_;
  assign N216 = pe_o_3__2_ & pe_o_3__0_ & pe_o_3__1_;
  assign N205 = pe_o_3__3_ & N78 & (pe_o_3__0_ & N79);
  assign N78 = ~pe_o_3__2_;
  assign N79 = ~pe_o_3__1_;
  assign N207 = pe_o_3__3_ & N80 & (N81 & pe_o_3__1_);
  assign N80 = ~pe_o_3__2_;
  assign N81 = ~pe_o_3__0_;
  assign N209 = pe_o_3__3_ & pe_o_3__0_ & pe_o_3__1_;
  assign N211 = pe_o_3__3_ & pe_o_3__2_ & (N82 & N83);
  assign N82 = ~pe_o_3__0_;
  assign N83 = ~pe_o_3__1_;
  assign N213 = pe_o_3__3_ & pe_o_3__2_ & pe_o_3__0_;
  assign N215 = pe_o_3__3_ & pe_o_3__2_ & pe_o_3__1_;
  assign way_id_o[2] = (N84)? lru_i[0] : 
                       (N85)? lru_i[1] : 
                       (N86)? lru_i[2] : 
                       (N87)? lru_i[3] : 
                       (N88)? lru_i[4] : 
                       (N89)? lru_i[5] : 
                       (N90)? lru_i[6] : 
                       (N91)? lru_i[7] : 
                       (N92)? lru_i[8] : 
                       (N93)? lru_i[9] : 
                       (N94)? lru_i[10] : 
                       (N95)? lru_i[11] : 
                       (N96)? lru_i[12] : 
                       (N97)? lru_i[13] : 
                       (N98)? lru_i[14] : 1'b0;
  assign N84 = N157;
  assign N85 = N159;
  assign N86 = N161;
  assign N87 = N163;
  assign N88 = N165;
  assign N89 = N167;
  assign N90 = N169;
  assign N91 = N171;
  assign N92 = N158;
  assign N93 = N160;
  assign N94 = N162;
  assign N95 = N164;
  assign N96 = N166;
  assign N97 = N168;
  assign N98 = N170;
  assign way_id_o[1] = (N99)? lru_i[0] : 
                       (N100)? lru_i[1] : 
                       (N101)? lru_i[2] : 
                       (N102)? lru_i[3] : 
                       (N103)? lru_i[4] : 
                       (N104)? lru_i[5] : 
                       (N105)? lru_i[6] : 
                       (N106)? lru_i[7] : 
                       (N107)? lru_i[8] : 
                       (N108)? lru_i[9] : 
                       (N109)? lru_i[10] : 
                       (N110)? lru_i[11] : 
                       (N111)? lru_i[12] : 
                       (N112)? lru_i[13] : 
                       (N113)? lru_i[14] : 1'b0;
  assign N99 = N172;
  assign N100 = N174;
  assign N101 = N176;
  assign N102 = N178;
  assign N103 = N180;
  assign N104 = N182;
  assign N105 = N184;
  assign N106 = N186;
  assign N107 = N173;
  assign N108 = N175;
  assign N109 = N177;
  assign N110 = N179;
  assign N111 = N181;
  assign N112 = N183;
  assign N113 = N185;
  assign way_id_o[0] = (N114)? lru_i[0] : 
                       (N115)? lru_i[1] : 
                       (N116)? lru_i[2] : 
                       (N117)? lru_i[3] : 
                       (N118)? lru_i[4] : 
                       (N119)? lru_i[5] : 
                       (N120)? lru_i[6] : 
                       (N121)? lru_i[7] : 
                       (N122)? lru_i[8] : 
                       (N123)? lru_i[9] : 
                       (N124)? lru_i[10] : 
                       (N125)? lru_i[11] : 
                       (N126)? lru_i[12] : 
                       (N127)? lru_i[13] : 
                       (N128)? lru_i[14] : 1'b0;
  assign N114 = N202;
  assign N115 = N204;
  assign N116 = N206;
  assign N117 = N208;
  assign N118 = N210;
  assign N119 = N212;
  assign N120 = N214;
  assign N121 = N216;
  assign N122 = N203;
  assign N123 = N205;
  assign N124 = N207;
  assign N125 = N209;
  assign N126 = N211;
  assign N127 = N213;
  assign N128 = N215;
  assign way_id_o[3] = (N142)? lru_i[0] : 
                       (N144)? lru_i[1] : 
                       (N146)? lru_i[2] : 
                       (N148)? lru_i[3] : 
                       (N150)? lru_i[4] : 
                       (N152)? lru_i[5] : 
                       (N154)? lru_i[6] : 
                       (N156)? lru_i[7] : 
                       (N143)? lru_i[8] : 
                       (N145)? lru_i[9] : 
                       (N147)? lru_i[10] : 
                       (N149)? lru_i[11] : 
                       (N151)? lru_i[12] : 
                       (N153)? lru_i[13] : 
                       (N155)? lru_i[14] : 1'b0;
  assign mask[1] = 1'b1 & N232;
  assign N232 = ~lru_i[0];
  assign mask[2] = 1'b1 & lru_i[0];
  assign mask[3] = mask[1] & N233;
  assign N233 = ~lru_i[1];
  assign mask[4] = mask[1] & lru_i[1];
  assign mask[5] = mask[2] & N234;
  assign N234 = ~lru_i[2];
  assign mask[6] = mask[2] & lru_i[2];
  assign mask[7] = mask[3] & N235;
  assign N235 = ~lru_i[3];
  assign mask[8] = mask[3] & lru_i[3];
  assign mask[9] = mask[4] & N236;
  assign N236 = ~lru_i[4];
  assign mask[10] = mask[4] & lru_i[4];
  assign mask[11] = mask[5] & N237;
  assign N237 = ~lru_i[5];
  assign mask[12] = mask[5] & lru_i[5];
  assign mask[13] = mask[6] & N238;
  assign N238 = ~lru_i[6];
  assign mask[14] = mask[6] & lru_i[6];
  assign N129 = N141 & N141;
  assign N130 = N141 & 1'b0;
  assign N131 = 1'b0 & N141;
  assign N132 = 1'b0 & 1'b0;
  assign N133 = N129 & N141;
  assign N134 = N129 & 1'b0;
  assign N135 = N131 & N141;
  assign N136 = N131 & 1'b0;
  assign N137 = N130 & N141;
  assign N138 = N130 & 1'b0;
  assign N139 = N132 & N141;
  assign N140 = N132 & 1'b0;
  assign N141 = ~1'b0;
  assign N142 = N133 & N141;
  assign N143 = N133 & 1'b0;
  assign N144 = N135 & N141;
  assign N145 = N135 & 1'b0;
  assign N146 = N137 & N141;
  assign N147 = N137 & 1'b0;
  assign N148 = N139 & N141;
  assign N149 = N139 & 1'b0;
  assign N150 = N134 & N141;
  assign N151 = N134 & 1'b0;
  assign N152 = N136 & N141;
  assign N153 = N136 & 1'b0;
  assign N154 = N138 & N141;
  assign N155 = N138 & 1'b0;
  assign N156 = N140 & N141;
  assign pe_i_1__14_ = mask[14] ^ 1'b0;
  assign pe_i_1__13_ = mask[13] ^ 1'b0;
  assign pe_i_1__12_ = mask[12] ^ 1'b0;
  assign pe_i_1__11_ = mask[11] ^ 1'b0;
  assign pe_i_1__10_ = mask[10] ^ 1'b0;
  assign pe_i_1__9_ = mask[9] ^ 1'b0;
  assign pe_i_1__8_ = mask[8] ^ 1'b0;
  assign pe_i_1__7_ = mask[7] ^ 1'b0;
  assign pe_i_1__6_ = mask[6] ^ 1'b0;
  assign pe_i_1__5_ = mask[5] ^ 1'b0;
  assign pe_i_1__4_ = mask[4] ^ 1'b0;
  assign pe_i_1__3_ = mask[3] ^ 1'b0;
  assign pe_i_1__2_ = mask[2] ^ 1'b0;
  assign pe_i_1__1_ = mask[1] ^ 1'b0;
  assign pe_i_1__0_ = 1'b1 ^ 1'b1;
  assign pe_i_2__14_ = pe_i_1__14_ ^ N201;
  assign pe_i_2__13_ = pe_i_1__13_ ^ N200;
  assign pe_i_2__12_ = pe_i_1__12_ ^ N199;
  assign pe_i_2__11_ = pe_i_1__11_ ^ N198;
  assign pe_i_2__10_ = pe_i_1__10_ ^ N197;
  assign pe_i_2__9_ = pe_i_1__9_ ^ N196;
  assign pe_i_2__8_ = pe_i_1__8_ ^ N195;
  assign pe_i_2__7_ = pe_i_1__7_ ^ N194;
  assign pe_i_2__6_ = pe_i_1__6_ ^ N193;
  assign pe_i_2__5_ = pe_i_1__5_ ^ N192;
  assign pe_i_2__4_ = pe_i_1__4_ ^ N191;
  assign pe_i_2__3_ = pe_i_1__3_ ^ N190;
  assign pe_i_2__2_ = pe_i_1__2_ ^ N189;
  assign pe_i_2__1_ = pe_i_1__1_ ^ N188;
  assign pe_i_2__0_ = pe_i_1__0_ ^ N187;
  assign pe_i_3__14_ = pe_i_2__14_ ^ N231;
  assign pe_i_3__13_ = pe_i_2__13_ ^ N230;
  assign pe_i_3__12_ = pe_i_2__12_ ^ N229;
  assign pe_i_3__11_ = pe_i_2__11_ ^ N228;
  assign pe_i_3__10_ = pe_i_2__10_ ^ N227;
  assign pe_i_3__9_ = pe_i_2__9_ ^ N226;
  assign pe_i_3__8_ = pe_i_2__8_ ^ N225;
  assign pe_i_3__7_ = pe_i_2__7_ ^ N224;
  assign pe_i_3__6_ = pe_i_2__6_ ^ N223;
  assign pe_i_3__5_ = pe_i_2__5_ ^ N222;
  assign pe_i_3__4_ = pe_i_2__4_ ^ N221;
  assign pe_i_3__3_ = pe_i_2__3_ ^ N220;
  assign pe_i_3__2_ = pe_i_2__2_ ^ N219;
  assign pe_i_3__1_ = pe_i_2__1_ ^ N218;
  assign pe_i_3__0_ = pe_i_2__0_ ^ N217;

endmodule

