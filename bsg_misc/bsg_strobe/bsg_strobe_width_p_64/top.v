

module top
(
  clk_i,
  reset_r_i,
  init_val_r_i,
  strobe_r_o
);

  input [63:0] init_val_r_i;
  input clk_i;
  input reset_r_i;
  output strobe_r_o;

  bsg_strobe
  wrapper
  (
    .init_val_r_i(init_val_r_i),
    .clk_i(clk_i),
    .reset_r_i(reset_r_i),
    .strobe_r_o(strobe_r_o)
  );


endmodule



module bsg_dff_width_p63_harden_p0_strength_p2
(
  clk_i,
  data_i,
  data_o
);

  input [62:0] data_i;
  output [62:0] data_o;
  input clk_i;
  reg [62:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[62:0] } <= { data_i[62:0] };
    end 
  end


endmodule



module bsg_xnor_width_p64_harden_p1
(
  a_i,
  b_i,
  o
);

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] o;
  wire [63:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63;
  assign o[63] = ~N0;
  assign N0 = a_i[63] ^ b_i[63];
  assign o[62] = ~N1;
  assign N1 = a_i[62] ^ b_i[62];
  assign o[61] = ~N2;
  assign N2 = a_i[61] ^ b_i[61];
  assign o[60] = ~N3;
  assign N3 = a_i[60] ^ b_i[60];
  assign o[59] = ~N4;
  assign N4 = a_i[59] ^ b_i[59];
  assign o[58] = ~N5;
  assign N5 = a_i[58] ^ b_i[58];
  assign o[57] = ~N6;
  assign N6 = a_i[57] ^ b_i[57];
  assign o[56] = ~N7;
  assign N7 = a_i[56] ^ b_i[56];
  assign o[55] = ~N8;
  assign N8 = a_i[55] ^ b_i[55];
  assign o[54] = ~N9;
  assign N9 = a_i[54] ^ b_i[54];
  assign o[53] = ~N10;
  assign N10 = a_i[53] ^ b_i[53];
  assign o[52] = ~N11;
  assign N11 = a_i[52] ^ b_i[52];
  assign o[51] = ~N12;
  assign N12 = a_i[51] ^ b_i[51];
  assign o[50] = ~N13;
  assign N13 = a_i[50] ^ b_i[50];
  assign o[49] = ~N14;
  assign N14 = a_i[49] ^ b_i[49];
  assign o[48] = ~N15;
  assign N15 = a_i[48] ^ b_i[48];
  assign o[47] = ~N16;
  assign N16 = a_i[47] ^ b_i[47];
  assign o[46] = ~N17;
  assign N17 = a_i[46] ^ b_i[46];
  assign o[45] = ~N18;
  assign N18 = a_i[45] ^ b_i[45];
  assign o[44] = ~N19;
  assign N19 = a_i[44] ^ b_i[44];
  assign o[43] = ~N20;
  assign N20 = a_i[43] ^ b_i[43];
  assign o[42] = ~N21;
  assign N21 = a_i[42] ^ b_i[42];
  assign o[41] = ~N22;
  assign N22 = a_i[41] ^ b_i[41];
  assign o[40] = ~N23;
  assign N23 = a_i[40] ^ b_i[40];
  assign o[39] = ~N24;
  assign N24 = a_i[39] ^ b_i[39];
  assign o[38] = ~N25;
  assign N25 = a_i[38] ^ b_i[38];
  assign o[37] = ~N26;
  assign N26 = a_i[37] ^ b_i[37];
  assign o[36] = ~N27;
  assign N27 = a_i[36] ^ b_i[36];
  assign o[35] = ~N28;
  assign N28 = a_i[35] ^ b_i[35];
  assign o[34] = ~N29;
  assign N29 = a_i[34] ^ b_i[34];
  assign o[33] = ~N30;
  assign N30 = a_i[33] ^ b_i[33];
  assign o[32] = ~N31;
  assign N31 = a_i[32] ^ b_i[32];
  assign o[31] = ~N32;
  assign N32 = a_i[31] ^ b_i[31];
  assign o[30] = ~N33;
  assign N33 = a_i[30] ^ b_i[30];
  assign o[29] = ~N34;
  assign N34 = a_i[29] ^ b_i[29];
  assign o[28] = ~N35;
  assign N35 = a_i[28] ^ b_i[28];
  assign o[27] = ~N36;
  assign N36 = a_i[27] ^ b_i[27];
  assign o[26] = ~N37;
  assign N37 = a_i[26] ^ b_i[26];
  assign o[25] = ~N38;
  assign N38 = a_i[25] ^ b_i[25];
  assign o[24] = ~N39;
  assign N39 = a_i[24] ^ b_i[24];
  assign o[23] = ~N40;
  assign N40 = a_i[23] ^ b_i[23];
  assign o[22] = ~N41;
  assign N41 = a_i[22] ^ b_i[22];
  assign o[21] = ~N42;
  assign N42 = a_i[21] ^ b_i[21];
  assign o[20] = ~N43;
  assign N43 = a_i[20] ^ b_i[20];
  assign o[19] = ~N44;
  assign N44 = a_i[19] ^ b_i[19];
  assign o[18] = ~N45;
  assign N45 = a_i[18] ^ b_i[18];
  assign o[17] = ~N46;
  assign N46 = a_i[17] ^ b_i[17];
  assign o[16] = ~N47;
  assign N47 = a_i[16] ^ b_i[16];
  assign o[15] = ~N48;
  assign N48 = a_i[15] ^ b_i[15];
  assign o[14] = ~N49;
  assign N49 = a_i[14] ^ b_i[14];
  assign o[13] = ~N50;
  assign N50 = a_i[13] ^ b_i[13];
  assign o[12] = ~N51;
  assign N51 = a_i[12] ^ b_i[12];
  assign o[11] = ~N52;
  assign N52 = a_i[11] ^ b_i[11];
  assign o[10] = ~N53;
  assign N53 = a_i[10] ^ b_i[10];
  assign o[9] = ~N54;
  assign N54 = a_i[9] ^ b_i[9];
  assign o[8] = ~N55;
  assign N55 = a_i[8] ^ b_i[8];
  assign o[7] = ~N56;
  assign N56 = a_i[7] ^ b_i[7];
  assign o[6] = ~N57;
  assign N57 = a_i[6] ^ b_i[6];
  assign o[5] = ~N58;
  assign N58 = a_i[5] ^ b_i[5];
  assign o[4] = ~N59;
  assign N59 = a_i[4] ^ b_i[4];
  assign o[3] = ~N60;
  assign N60 = a_i[3] ^ b_i[3];
  assign o[2] = ~N61;
  assign N61 = a_i[2] ^ b_i[2];
  assign o[1] = ~N62;
  assign N62 = a_i[1] ^ b_i[1];
  assign o[0] = ~N63;
  assign N63 = a_i[0] ^ b_i[0];

endmodule



module bsg_muxi2_gatestack_width_p64_harden_p1
(
  i0,
  i1,
  i2,
  o
);

  input [63:0] i0;
  input [63:0] i1;
  input [63:0] i2;
  output [63:0] o;
  wire [63:0] o;
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
  N182,N183,N184,N185,N186,N187,N188,N189,N190,N191;
  assign N65 = (N0)? i1[0] : 
               (N64)? i0[0] : 1'b0;
  assign N0 = i2[0];
  assign N67 = (N1)? i1[1] : 
               (N66)? i0[1] : 1'b0;
  assign N1 = i2[1];
  assign N69 = (N2)? i1[2] : 
               (N68)? i0[2] : 1'b0;
  assign N2 = i2[2];
  assign N71 = (N3)? i1[3] : 
               (N70)? i0[3] : 1'b0;
  assign N3 = i2[3];
  assign N73 = (N4)? i1[4] : 
               (N72)? i0[4] : 1'b0;
  assign N4 = i2[4];
  assign N75 = (N5)? i1[5] : 
               (N74)? i0[5] : 1'b0;
  assign N5 = i2[5];
  assign N77 = (N6)? i1[6] : 
               (N76)? i0[6] : 1'b0;
  assign N6 = i2[6];
  assign N79 = (N7)? i1[7] : 
               (N78)? i0[7] : 1'b0;
  assign N7 = i2[7];
  assign N81 = (N8)? i1[8] : 
               (N80)? i0[8] : 1'b0;
  assign N8 = i2[8];
  assign N83 = (N9)? i1[9] : 
               (N82)? i0[9] : 1'b0;
  assign N9 = i2[9];
  assign N85 = (N10)? i1[10] : 
               (N84)? i0[10] : 1'b0;
  assign N10 = i2[10];
  assign N87 = (N11)? i1[11] : 
               (N86)? i0[11] : 1'b0;
  assign N11 = i2[11];
  assign N89 = (N12)? i1[12] : 
               (N88)? i0[12] : 1'b0;
  assign N12 = i2[12];
  assign N91 = (N13)? i1[13] : 
               (N90)? i0[13] : 1'b0;
  assign N13 = i2[13];
  assign N93 = (N14)? i1[14] : 
               (N92)? i0[14] : 1'b0;
  assign N14 = i2[14];
  assign N95 = (N15)? i1[15] : 
               (N94)? i0[15] : 1'b0;
  assign N15 = i2[15];
  assign N97 = (N16)? i1[16] : 
               (N96)? i0[16] : 1'b0;
  assign N16 = i2[16];
  assign N99 = (N17)? i1[17] : 
               (N98)? i0[17] : 1'b0;
  assign N17 = i2[17];
  assign N101 = (N18)? i1[18] : 
                (N100)? i0[18] : 1'b0;
  assign N18 = i2[18];
  assign N103 = (N19)? i1[19] : 
                (N102)? i0[19] : 1'b0;
  assign N19 = i2[19];
  assign N105 = (N20)? i1[20] : 
                (N104)? i0[20] : 1'b0;
  assign N20 = i2[20];
  assign N107 = (N21)? i1[21] : 
                (N106)? i0[21] : 1'b0;
  assign N21 = i2[21];
  assign N109 = (N22)? i1[22] : 
                (N108)? i0[22] : 1'b0;
  assign N22 = i2[22];
  assign N111 = (N23)? i1[23] : 
                (N110)? i0[23] : 1'b0;
  assign N23 = i2[23];
  assign N113 = (N24)? i1[24] : 
                (N112)? i0[24] : 1'b0;
  assign N24 = i2[24];
  assign N115 = (N25)? i1[25] : 
                (N114)? i0[25] : 1'b0;
  assign N25 = i2[25];
  assign N117 = (N26)? i1[26] : 
                (N116)? i0[26] : 1'b0;
  assign N26 = i2[26];
  assign N119 = (N27)? i1[27] : 
                (N118)? i0[27] : 1'b0;
  assign N27 = i2[27];
  assign N121 = (N28)? i1[28] : 
                (N120)? i0[28] : 1'b0;
  assign N28 = i2[28];
  assign N123 = (N29)? i1[29] : 
                (N122)? i0[29] : 1'b0;
  assign N29 = i2[29];
  assign N125 = (N30)? i1[30] : 
                (N124)? i0[30] : 1'b0;
  assign N30 = i2[30];
  assign N127 = (N31)? i1[31] : 
                (N126)? i0[31] : 1'b0;
  assign N31 = i2[31];
  assign N129 = (N32)? i1[32] : 
                (N128)? i0[32] : 1'b0;
  assign N32 = i2[32];
  assign N131 = (N33)? i1[33] : 
                (N130)? i0[33] : 1'b0;
  assign N33 = i2[33];
  assign N133 = (N34)? i1[34] : 
                (N132)? i0[34] : 1'b0;
  assign N34 = i2[34];
  assign N135 = (N35)? i1[35] : 
                (N134)? i0[35] : 1'b0;
  assign N35 = i2[35];
  assign N137 = (N36)? i1[36] : 
                (N136)? i0[36] : 1'b0;
  assign N36 = i2[36];
  assign N139 = (N37)? i1[37] : 
                (N138)? i0[37] : 1'b0;
  assign N37 = i2[37];
  assign N141 = (N38)? i1[38] : 
                (N140)? i0[38] : 1'b0;
  assign N38 = i2[38];
  assign N143 = (N39)? i1[39] : 
                (N142)? i0[39] : 1'b0;
  assign N39 = i2[39];
  assign N145 = (N40)? i1[40] : 
                (N144)? i0[40] : 1'b0;
  assign N40 = i2[40];
  assign N147 = (N41)? i1[41] : 
                (N146)? i0[41] : 1'b0;
  assign N41 = i2[41];
  assign N149 = (N42)? i1[42] : 
                (N148)? i0[42] : 1'b0;
  assign N42 = i2[42];
  assign N151 = (N43)? i1[43] : 
                (N150)? i0[43] : 1'b0;
  assign N43 = i2[43];
  assign N153 = (N44)? i1[44] : 
                (N152)? i0[44] : 1'b0;
  assign N44 = i2[44];
  assign N155 = (N45)? i1[45] : 
                (N154)? i0[45] : 1'b0;
  assign N45 = i2[45];
  assign N157 = (N46)? i1[46] : 
                (N156)? i0[46] : 1'b0;
  assign N46 = i2[46];
  assign N159 = (N47)? i1[47] : 
                (N158)? i0[47] : 1'b0;
  assign N47 = i2[47];
  assign N161 = (N48)? i1[48] : 
                (N160)? i0[48] : 1'b0;
  assign N48 = i2[48];
  assign N163 = (N49)? i1[49] : 
                (N162)? i0[49] : 1'b0;
  assign N49 = i2[49];
  assign N165 = (N50)? i1[50] : 
                (N164)? i0[50] : 1'b0;
  assign N50 = i2[50];
  assign N167 = (N51)? i1[51] : 
                (N166)? i0[51] : 1'b0;
  assign N51 = i2[51];
  assign N169 = (N52)? i1[52] : 
                (N168)? i0[52] : 1'b0;
  assign N52 = i2[52];
  assign N171 = (N53)? i1[53] : 
                (N170)? i0[53] : 1'b0;
  assign N53 = i2[53];
  assign N173 = (N54)? i1[54] : 
                (N172)? i0[54] : 1'b0;
  assign N54 = i2[54];
  assign N175 = (N55)? i1[55] : 
                (N174)? i0[55] : 1'b0;
  assign N55 = i2[55];
  assign N177 = (N56)? i1[56] : 
                (N176)? i0[56] : 1'b0;
  assign N56 = i2[56];
  assign N179 = (N57)? i1[57] : 
                (N178)? i0[57] : 1'b0;
  assign N57 = i2[57];
  assign N181 = (N58)? i1[58] : 
                (N180)? i0[58] : 1'b0;
  assign N58 = i2[58];
  assign N183 = (N59)? i1[59] : 
                (N182)? i0[59] : 1'b0;
  assign N59 = i2[59];
  assign N185 = (N60)? i1[60] : 
                (N184)? i0[60] : 1'b0;
  assign N60 = i2[60];
  assign N187 = (N61)? i1[61] : 
                (N186)? i0[61] : 1'b0;
  assign N61 = i2[61];
  assign N189 = (N62)? i1[62] : 
                (N188)? i0[62] : 1'b0;
  assign N62 = i2[62];
  assign N191 = (N63)? i1[63] : 
                (N190)? i0[63] : 1'b0;
  assign N63 = i2[63];
  assign N64 = ~i2[0];
  assign o[0] = ~N65;
  assign N66 = ~i2[1];
  assign o[1] = ~N67;
  assign N68 = ~i2[2];
  assign o[2] = ~N69;
  assign N70 = ~i2[3];
  assign o[3] = ~N71;
  assign N72 = ~i2[4];
  assign o[4] = ~N73;
  assign N74 = ~i2[5];
  assign o[5] = ~N75;
  assign N76 = ~i2[6];
  assign o[6] = ~N77;
  assign N78 = ~i2[7];
  assign o[7] = ~N79;
  assign N80 = ~i2[8];
  assign o[8] = ~N81;
  assign N82 = ~i2[9];
  assign o[9] = ~N83;
  assign N84 = ~i2[10];
  assign o[10] = ~N85;
  assign N86 = ~i2[11];
  assign o[11] = ~N87;
  assign N88 = ~i2[12];
  assign o[12] = ~N89;
  assign N90 = ~i2[13];
  assign o[13] = ~N91;
  assign N92 = ~i2[14];
  assign o[14] = ~N93;
  assign N94 = ~i2[15];
  assign o[15] = ~N95;
  assign N96 = ~i2[16];
  assign o[16] = ~N97;
  assign N98 = ~i2[17];
  assign o[17] = ~N99;
  assign N100 = ~i2[18];
  assign o[18] = ~N101;
  assign N102 = ~i2[19];
  assign o[19] = ~N103;
  assign N104 = ~i2[20];
  assign o[20] = ~N105;
  assign N106 = ~i2[21];
  assign o[21] = ~N107;
  assign N108 = ~i2[22];
  assign o[22] = ~N109;
  assign N110 = ~i2[23];
  assign o[23] = ~N111;
  assign N112 = ~i2[24];
  assign o[24] = ~N113;
  assign N114 = ~i2[25];
  assign o[25] = ~N115;
  assign N116 = ~i2[26];
  assign o[26] = ~N117;
  assign N118 = ~i2[27];
  assign o[27] = ~N119;
  assign N120 = ~i2[28];
  assign o[28] = ~N121;
  assign N122 = ~i2[29];
  assign o[29] = ~N123;
  assign N124 = ~i2[30];
  assign o[30] = ~N125;
  assign N126 = ~i2[31];
  assign o[31] = ~N127;
  assign N128 = ~i2[32];
  assign o[32] = ~N129;
  assign N130 = ~i2[33];
  assign o[33] = ~N131;
  assign N132 = ~i2[34];
  assign o[34] = ~N133;
  assign N134 = ~i2[35];
  assign o[35] = ~N135;
  assign N136 = ~i2[36];
  assign o[36] = ~N137;
  assign N138 = ~i2[37];
  assign o[37] = ~N139;
  assign N140 = ~i2[38];
  assign o[38] = ~N141;
  assign N142 = ~i2[39];
  assign o[39] = ~N143;
  assign N144 = ~i2[40];
  assign o[40] = ~N145;
  assign N146 = ~i2[41];
  assign o[41] = ~N147;
  assign N148 = ~i2[42];
  assign o[42] = ~N149;
  assign N150 = ~i2[43];
  assign o[43] = ~N151;
  assign N152 = ~i2[44];
  assign o[44] = ~N153;
  assign N154 = ~i2[45];
  assign o[45] = ~N155;
  assign N156 = ~i2[46];
  assign o[46] = ~N157;
  assign N158 = ~i2[47];
  assign o[47] = ~N159;
  assign N160 = ~i2[48];
  assign o[48] = ~N161;
  assign N162 = ~i2[49];
  assign o[49] = ~N163;
  assign N164 = ~i2[50];
  assign o[50] = ~N165;
  assign N166 = ~i2[51];
  assign o[51] = ~N167;
  assign N168 = ~i2[52];
  assign o[52] = ~N169;
  assign N170 = ~i2[53];
  assign o[53] = ~N171;
  assign N172 = ~i2[54];
  assign o[54] = ~N173;
  assign N174 = ~i2[55];
  assign o[55] = ~N175;
  assign N176 = ~i2[56];
  assign o[56] = ~N177;
  assign N178 = ~i2[57];
  assign o[57] = ~N179;
  assign N180 = ~i2[58];
  assign o[58] = ~N181;
  assign N182 = ~i2[59];
  assign o[59] = ~N183;
  assign N184 = ~i2[60];
  assign o[60] = ~N185;
  assign N186 = ~i2[61];
  assign o[61] = ~N187;
  assign N188 = ~i2[62];
  assign o[62] = ~N189;
  assign N190 = ~i2[63];
  assign o[63] = ~N191;

endmodule



module bsg_dff_width_p64_harden_p0_strength_p4
(
  clk_i,
  data_i,
  data_o
);

  input [63:0] data_i;
  output [63:0] data_o;
  input clk_i;
  reg [63:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[63:0] } <= { data_i[63:0] };
    end 
  end


endmodule



module bsg_nand_width_p64_harden_p1
(
  a_i,
  b_i,
  o
);

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] o;
  wire [63:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63;
  assign o[63] = ~N0;
  assign N0 = a_i[63] & b_i[63];
  assign o[62] = ~N1;
  assign N1 = a_i[62] & b_i[62];
  assign o[61] = ~N2;
  assign N2 = a_i[61] & b_i[61];
  assign o[60] = ~N3;
  assign N3 = a_i[60] & b_i[60];
  assign o[59] = ~N4;
  assign N4 = a_i[59] & b_i[59];
  assign o[58] = ~N5;
  assign N5 = a_i[58] & b_i[58];
  assign o[57] = ~N6;
  assign N6 = a_i[57] & b_i[57];
  assign o[56] = ~N7;
  assign N7 = a_i[56] & b_i[56];
  assign o[55] = ~N8;
  assign N8 = a_i[55] & b_i[55];
  assign o[54] = ~N9;
  assign N9 = a_i[54] & b_i[54];
  assign o[53] = ~N10;
  assign N10 = a_i[53] & b_i[53];
  assign o[52] = ~N11;
  assign N11 = a_i[52] & b_i[52];
  assign o[51] = ~N12;
  assign N12 = a_i[51] & b_i[51];
  assign o[50] = ~N13;
  assign N13 = a_i[50] & b_i[50];
  assign o[49] = ~N14;
  assign N14 = a_i[49] & b_i[49];
  assign o[48] = ~N15;
  assign N15 = a_i[48] & b_i[48];
  assign o[47] = ~N16;
  assign N16 = a_i[47] & b_i[47];
  assign o[46] = ~N17;
  assign N17 = a_i[46] & b_i[46];
  assign o[45] = ~N18;
  assign N18 = a_i[45] & b_i[45];
  assign o[44] = ~N19;
  assign N19 = a_i[44] & b_i[44];
  assign o[43] = ~N20;
  assign N20 = a_i[43] & b_i[43];
  assign o[42] = ~N21;
  assign N21 = a_i[42] & b_i[42];
  assign o[41] = ~N22;
  assign N22 = a_i[41] & b_i[41];
  assign o[40] = ~N23;
  assign N23 = a_i[40] & b_i[40];
  assign o[39] = ~N24;
  assign N24 = a_i[39] & b_i[39];
  assign o[38] = ~N25;
  assign N25 = a_i[38] & b_i[38];
  assign o[37] = ~N26;
  assign N26 = a_i[37] & b_i[37];
  assign o[36] = ~N27;
  assign N27 = a_i[36] & b_i[36];
  assign o[35] = ~N28;
  assign N28 = a_i[35] & b_i[35];
  assign o[34] = ~N29;
  assign N29 = a_i[34] & b_i[34];
  assign o[33] = ~N30;
  assign N30 = a_i[33] & b_i[33];
  assign o[32] = ~N31;
  assign N31 = a_i[32] & b_i[32];
  assign o[31] = ~N32;
  assign N32 = a_i[31] & b_i[31];
  assign o[30] = ~N33;
  assign N33 = a_i[30] & b_i[30];
  assign o[29] = ~N34;
  assign N34 = a_i[29] & b_i[29];
  assign o[28] = ~N35;
  assign N35 = a_i[28] & b_i[28];
  assign o[27] = ~N36;
  assign N36 = a_i[27] & b_i[27];
  assign o[26] = ~N37;
  assign N37 = a_i[26] & b_i[26];
  assign o[25] = ~N38;
  assign N38 = a_i[25] & b_i[25];
  assign o[24] = ~N39;
  assign N39 = a_i[24] & b_i[24];
  assign o[23] = ~N40;
  assign N40 = a_i[23] & b_i[23];
  assign o[22] = ~N41;
  assign N41 = a_i[22] & b_i[22];
  assign o[21] = ~N42;
  assign N42 = a_i[21] & b_i[21];
  assign o[20] = ~N43;
  assign N43 = a_i[20] & b_i[20];
  assign o[19] = ~N44;
  assign N44 = a_i[19] & b_i[19];
  assign o[18] = ~N45;
  assign N45 = a_i[18] & b_i[18];
  assign o[17] = ~N46;
  assign N46 = a_i[17] & b_i[17];
  assign o[16] = ~N47;
  assign N47 = a_i[16] & b_i[16];
  assign o[15] = ~N48;
  assign N48 = a_i[15] & b_i[15];
  assign o[14] = ~N49;
  assign N49 = a_i[14] & b_i[14];
  assign o[13] = ~N50;
  assign N50 = a_i[13] & b_i[13];
  assign o[12] = ~N51;
  assign N51 = a_i[12] & b_i[12];
  assign o[11] = ~N52;
  assign N52 = a_i[11] & b_i[11];
  assign o[10] = ~N53;
  assign N53 = a_i[10] & b_i[10];
  assign o[9] = ~N54;
  assign N54 = a_i[9] & b_i[9];
  assign o[8] = ~N55;
  assign N55 = a_i[8] & b_i[8];
  assign o[7] = ~N56;
  assign N56 = a_i[7] & b_i[7];
  assign o[6] = ~N57;
  assign N57 = a_i[6] & b_i[6];
  assign o[5] = ~N58;
  assign N58 = a_i[5] & b_i[5];
  assign o[4] = ~N59;
  assign N59 = a_i[4] & b_i[4];
  assign o[3] = ~N60;
  assign N60 = a_i[3] & b_i[3];
  assign o[2] = ~N61;
  assign N61 = a_i[2] & b_i[2];
  assign o[1] = ~N62;
  assign N62 = a_i[1] & b_i[1];
  assign o[0] = ~N63;
  assign N63 = a_i[0] & b_i[0];

endmodule



module bsg_nor3_width_p63_harden_p1
(
  a_i,
  b_i,
  c_i,
  o
);

  input [62:0] a_i;
  input [62:0] b_i;
  input [62:0] c_i;
  output [62:0] o;
  wire [62:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125;
  assign o[62] = ~N1;
  assign N1 = N0 | c_i[62];
  assign N0 = a_i[62] | b_i[62];
  assign o[61] = ~N3;
  assign N3 = N2 | c_i[61];
  assign N2 = a_i[61] | b_i[61];
  assign o[60] = ~N5;
  assign N5 = N4 | c_i[60];
  assign N4 = a_i[60] | b_i[60];
  assign o[59] = ~N7;
  assign N7 = N6 | c_i[59];
  assign N6 = a_i[59] | b_i[59];
  assign o[58] = ~N9;
  assign N9 = N8 | c_i[58];
  assign N8 = a_i[58] | b_i[58];
  assign o[57] = ~N11;
  assign N11 = N10 | c_i[57];
  assign N10 = a_i[57] | b_i[57];
  assign o[56] = ~N13;
  assign N13 = N12 | c_i[56];
  assign N12 = a_i[56] | b_i[56];
  assign o[55] = ~N15;
  assign N15 = N14 | c_i[55];
  assign N14 = a_i[55] | b_i[55];
  assign o[54] = ~N17;
  assign N17 = N16 | c_i[54];
  assign N16 = a_i[54] | b_i[54];
  assign o[53] = ~N19;
  assign N19 = N18 | c_i[53];
  assign N18 = a_i[53] | b_i[53];
  assign o[52] = ~N21;
  assign N21 = N20 | c_i[52];
  assign N20 = a_i[52] | b_i[52];
  assign o[51] = ~N23;
  assign N23 = N22 | c_i[51];
  assign N22 = a_i[51] | b_i[51];
  assign o[50] = ~N25;
  assign N25 = N24 | c_i[50];
  assign N24 = a_i[50] | b_i[50];
  assign o[49] = ~N27;
  assign N27 = N26 | c_i[49];
  assign N26 = a_i[49] | b_i[49];
  assign o[48] = ~N29;
  assign N29 = N28 | c_i[48];
  assign N28 = a_i[48] | b_i[48];
  assign o[47] = ~N31;
  assign N31 = N30 | c_i[47];
  assign N30 = a_i[47] | b_i[47];
  assign o[46] = ~N33;
  assign N33 = N32 | c_i[46];
  assign N32 = a_i[46] | b_i[46];
  assign o[45] = ~N35;
  assign N35 = N34 | c_i[45];
  assign N34 = a_i[45] | b_i[45];
  assign o[44] = ~N37;
  assign N37 = N36 | c_i[44];
  assign N36 = a_i[44] | b_i[44];
  assign o[43] = ~N39;
  assign N39 = N38 | c_i[43];
  assign N38 = a_i[43] | b_i[43];
  assign o[42] = ~N41;
  assign N41 = N40 | c_i[42];
  assign N40 = a_i[42] | b_i[42];
  assign o[41] = ~N43;
  assign N43 = N42 | c_i[41];
  assign N42 = a_i[41] | b_i[41];
  assign o[40] = ~N45;
  assign N45 = N44 | c_i[40];
  assign N44 = a_i[40] | b_i[40];
  assign o[39] = ~N47;
  assign N47 = N46 | c_i[39];
  assign N46 = a_i[39] | b_i[39];
  assign o[38] = ~N49;
  assign N49 = N48 | c_i[38];
  assign N48 = a_i[38] | b_i[38];
  assign o[37] = ~N51;
  assign N51 = N50 | c_i[37];
  assign N50 = a_i[37] | b_i[37];
  assign o[36] = ~N53;
  assign N53 = N52 | c_i[36];
  assign N52 = a_i[36] | b_i[36];
  assign o[35] = ~N55;
  assign N55 = N54 | c_i[35];
  assign N54 = a_i[35] | b_i[35];
  assign o[34] = ~N57;
  assign N57 = N56 | c_i[34];
  assign N56 = a_i[34] | b_i[34];
  assign o[33] = ~N59;
  assign N59 = N58 | c_i[33];
  assign N58 = a_i[33] | b_i[33];
  assign o[32] = ~N61;
  assign N61 = N60 | c_i[32];
  assign N60 = a_i[32] | b_i[32];
  assign o[31] = ~N63;
  assign N63 = N62 | c_i[31];
  assign N62 = a_i[31] | b_i[31];
  assign o[30] = ~N65;
  assign N65 = N64 | c_i[30];
  assign N64 = a_i[30] | b_i[30];
  assign o[29] = ~N67;
  assign N67 = N66 | c_i[29];
  assign N66 = a_i[29] | b_i[29];
  assign o[28] = ~N69;
  assign N69 = N68 | c_i[28];
  assign N68 = a_i[28] | b_i[28];
  assign o[27] = ~N71;
  assign N71 = N70 | c_i[27];
  assign N70 = a_i[27] | b_i[27];
  assign o[26] = ~N73;
  assign N73 = N72 | c_i[26];
  assign N72 = a_i[26] | b_i[26];
  assign o[25] = ~N75;
  assign N75 = N74 | c_i[25];
  assign N74 = a_i[25] | b_i[25];
  assign o[24] = ~N77;
  assign N77 = N76 | c_i[24];
  assign N76 = a_i[24] | b_i[24];
  assign o[23] = ~N79;
  assign N79 = N78 | c_i[23];
  assign N78 = a_i[23] | b_i[23];
  assign o[22] = ~N81;
  assign N81 = N80 | c_i[22];
  assign N80 = a_i[22] | b_i[22];
  assign o[21] = ~N83;
  assign N83 = N82 | c_i[21];
  assign N82 = a_i[21] | b_i[21];
  assign o[20] = ~N85;
  assign N85 = N84 | c_i[20];
  assign N84 = a_i[20] | b_i[20];
  assign o[19] = ~N87;
  assign N87 = N86 | c_i[19];
  assign N86 = a_i[19] | b_i[19];
  assign o[18] = ~N89;
  assign N89 = N88 | c_i[18];
  assign N88 = a_i[18] | b_i[18];
  assign o[17] = ~N91;
  assign N91 = N90 | c_i[17];
  assign N90 = a_i[17] | b_i[17];
  assign o[16] = ~N93;
  assign N93 = N92 | c_i[16];
  assign N92 = a_i[16] | b_i[16];
  assign o[15] = ~N95;
  assign N95 = N94 | c_i[15];
  assign N94 = a_i[15] | b_i[15];
  assign o[14] = ~N97;
  assign N97 = N96 | c_i[14];
  assign N96 = a_i[14] | b_i[14];
  assign o[13] = ~N99;
  assign N99 = N98 | c_i[13];
  assign N98 = a_i[13] | b_i[13];
  assign o[12] = ~N101;
  assign N101 = N100 | c_i[12];
  assign N100 = a_i[12] | b_i[12];
  assign o[11] = ~N103;
  assign N103 = N102 | c_i[11];
  assign N102 = a_i[11] | b_i[11];
  assign o[10] = ~N105;
  assign N105 = N104 | c_i[10];
  assign N104 = a_i[10] | b_i[10];
  assign o[9] = ~N107;
  assign N107 = N106 | c_i[9];
  assign N106 = a_i[9] | b_i[9];
  assign o[8] = ~N109;
  assign N109 = N108 | c_i[8];
  assign N108 = a_i[8] | b_i[8];
  assign o[7] = ~N111;
  assign N111 = N110 | c_i[7];
  assign N110 = a_i[7] | b_i[7];
  assign o[6] = ~N113;
  assign N113 = N112 | c_i[6];
  assign N112 = a_i[6] | b_i[6];
  assign o[5] = ~N115;
  assign N115 = N114 | c_i[5];
  assign N114 = a_i[5] | b_i[5];
  assign o[4] = ~N117;
  assign N117 = N116 | c_i[4];
  assign N116 = a_i[4] | b_i[4];
  assign o[3] = ~N119;
  assign N119 = N118 | c_i[3];
  assign N118 = a_i[3] | b_i[3];
  assign o[2] = ~N121;
  assign N121 = N120 | c_i[2];
  assign N120 = a_i[2] | b_i[2];
  assign o[1] = ~N123;
  assign N123 = N122 | c_i[1];
  assign N122 = a_i[1] | b_i[1];
  assign o[0] = ~N125;
  assign N125 = N124 | c_i[0];
  assign N124 = a_i[0] | b_i[0];

endmodule



module bsg_reduce_width_p64_and_p1_harden_p1
(
  i,
  o
);

  input [63:0] i;
  output o;
  wire o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61;
  assign o = N61 & i[0];
  assign N61 = N60 & i[1];
  assign N60 = N59 & i[2];
  assign N59 = N58 & i[3];
  assign N58 = N57 & i[4];
  assign N57 = N56 & i[5];
  assign N56 = N55 & i[6];
  assign N55 = N54 & i[7];
  assign N54 = N53 & i[8];
  assign N53 = N52 & i[9];
  assign N52 = N51 & i[10];
  assign N51 = N50 & i[11];
  assign N50 = N49 & i[12];
  assign N49 = N48 & i[13];
  assign N48 = N47 & i[14];
  assign N47 = N46 & i[15];
  assign N46 = N45 & i[16];
  assign N45 = N44 & i[17];
  assign N44 = N43 & i[18];
  assign N43 = N42 & i[19];
  assign N42 = N41 & i[20];
  assign N41 = N40 & i[21];
  assign N40 = N39 & i[22];
  assign N39 = N38 & i[23];
  assign N38 = N37 & i[24];
  assign N37 = N36 & i[25];
  assign N36 = N35 & i[26];
  assign N35 = N34 & i[27];
  assign N34 = N33 & i[28];
  assign N33 = N32 & i[29];
  assign N32 = N31 & i[30];
  assign N31 = N30 & i[31];
  assign N30 = N29 & i[32];
  assign N29 = N28 & i[33];
  assign N28 = N27 & i[34];
  assign N27 = N26 & i[35];
  assign N26 = N25 & i[36];
  assign N25 = N24 & i[37];
  assign N24 = N23 & i[38];
  assign N23 = N22 & i[39];
  assign N22 = N21 & i[40];
  assign N21 = N20 & i[41];
  assign N20 = N19 & i[42];
  assign N19 = N18 & i[43];
  assign N18 = N17 & i[44];
  assign N17 = N16 & i[45];
  assign N16 = N15 & i[46];
  assign N15 = N14 & i[47];
  assign N14 = N13 & i[48];
  assign N13 = N12 & i[49];
  assign N12 = N11 & i[50];
  assign N11 = N10 & i[51];
  assign N10 = N9 & i[52];
  assign N9 = N8 & i[53];
  assign N8 = N7 & i[54];
  assign N7 = N6 & i[55];
  assign N6 = N5 & i[56];
  assign N5 = N4 & i[57];
  assign N4 = N3 & i[58];
  assign N3 = N2 & i[59];
  assign N2 = N1 & i[60];
  assign N1 = N0 & i[61];
  assign N0 = i[63] & i[62];

endmodule



module bsg_buf_width_p1
(
  i,
  o
);

  input [0:0] i;
  output [0:0] o;
  wire [0:0] o;
  assign o[0] = i[0];

endmodule



module bsg_strobe
(
  clk_i,
  reset_r_i,
  init_val_r_i,
  strobe_r_o
);

  input [63:0] init_val_r_i;
  input clk_i;
  input reset_r_i;
  output strobe_r_o;
  wire strobe_n,new_val,strobe_n_buf;
  wire [62:0] C_n,C_r;
  wire [63:0] S_r,S_n,S_n_n,C_n_prereset;
  reg strobe_r_o;

  bsg_dff_width_p63_harden_p0_strength_p2
  C_reg
  (
    .clk_i(clk_i),
    .data_i(C_n),
    .data_o(C_r)
  );


  bsg_xnor_width_p64_harden_p1
  xnor_S_n
  (
    .a_i(S_r),
    .b_i({ C_r, 1'b1 }),
    .o(S_n)
  );


  bsg_muxi2_gatestack_width_p64_harden_p1
  muxi2_S_n
  (
    .i0(S_n),
    .i1(init_val_r_i),
    .i2({ new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val, new_val }),
    .o(S_n_n)
  );


  bsg_dff_width_p64_harden_p0_strength_p4
  S_reg
  (
    .clk_i(clk_i),
    .data_i(S_n_n),
    .data_o(S_r)
  );


  bsg_nand_width_p64_harden_p1
  nand_C_n
  (
    .a_i(S_r),
    .b_i({ C_r, 1'b1 }),
    .o(C_n_prereset)
  );


  bsg_nor3_width_p63_harden_p1
  nor3_C_n
  (
    .a_i({ strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf, strobe_n_buf }),
    .b_i(C_n_prereset[62:0]),
    .c_i({ reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i }),
    .o(C_n)
  );


  bsg_reduce_width_p64_and_p1_harden_p1
  andr
  (
    .i(S_r),
    .o(strobe_n)
  );


  bsg_buf_width_p1
  strobe_buf_gate
  (
    .i(strobe_n),
    .o(strobe_n_buf)
  );

  assign new_val = reset_r_i | strobe_n;

  always @(posedge clk_i) begin
    if(1'b1) begin
      strobe_r_o <= strobe_n_buf;
    end 
  end


endmodule

