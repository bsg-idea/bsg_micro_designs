

module top
(
  a_i,
  zero_o,
  nan_o,
  sig_nan_o,
  infty_o,
  exp_zero_o,
  man_zero_o,
  denormal_o,
  sign_o,
  exp_o,
  man_o
);

  input [63:0] a_i;
  output [10:0] exp_o;
  output [51:0] man_o;
  output zero_o;
  output nan_o;
  output sig_nan_o;
  output infty_o;
  output exp_zero_o;
  output man_zero_o;
  output denormal_o;
  output sign_o;

  bsg_fpu_preprocess
  wrapper
  (
    .a_i(a_i),
    .exp_o(exp_o),
    .man_o(man_o),
    .zero_o(zero_o),
    .nan_o(nan_o),
    .sig_nan_o(sig_nan_o),
    .infty_o(infty_o),
    .exp_zero_o(exp_zero_o),
    .man_zero_o(man_zero_o),
    .denormal_o(denormal_o),
    .sign_o(sign_o)
  );


endmodule



module bsg_fpu_preprocess
(
  a_i,
  zero_o,
  nan_o,
  sig_nan_o,
  infty_o,
  exp_zero_o,
  man_zero_o,
  denormal_o,
  sign_o,
  exp_o,
  man_o
);

  input [63:0] a_i;
  output [10:0] exp_o;
  output [51:0] man_o;
  output zero_o;
  output nan_o;
  output sig_nan_o;
  output infty_o;
  output exp_zero_o;
  output man_zero_o;
  output denormal_o;
  output sign_o;
  wire [10:0] exp_o;
  wire [51:0] man_o;
  wire zero_o,nan_o,sig_nan_o,infty_o,exp_zero_o,man_zero_o,denormal_o,sign_o,N0,N1,N2,
  N3,N4,N5,N6,N7,N8,N9,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,
  N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,
  N65,N66,N67,N68,N69,N70,N71,N73;
  assign man_o[51] = a_i[51];
  assign man_o[50] = a_i[50];
  assign man_o[49] = a_i[49];
  assign man_o[48] = a_i[48];
  assign man_o[47] = a_i[47];
  assign man_o[46] = a_i[46];
  assign man_o[45] = a_i[45];
  assign man_o[44] = a_i[44];
  assign man_o[43] = a_i[43];
  assign man_o[42] = a_i[42];
  assign man_o[41] = a_i[41];
  assign man_o[40] = a_i[40];
  assign man_o[39] = a_i[39];
  assign man_o[38] = a_i[38];
  assign man_o[37] = a_i[37];
  assign man_o[36] = a_i[36];
  assign man_o[35] = a_i[35];
  assign man_o[34] = a_i[34];
  assign man_o[33] = a_i[33];
  assign man_o[32] = a_i[32];
  assign man_o[31] = a_i[31];
  assign man_o[30] = a_i[30];
  assign man_o[29] = a_i[29];
  assign man_o[28] = a_i[28];
  assign man_o[27] = a_i[27];
  assign man_o[26] = a_i[26];
  assign man_o[25] = a_i[25];
  assign man_o[24] = a_i[24];
  assign man_o[23] = a_i[23];
  assign man_o[22] = a_i[22];
  assign man_o[21] = a_i[21];
  assign man_o[20] = a_i[20];
  assign man_o[19] = a_i[19];
  assign man_o[18] = a_i[18];
  assign man_o[17] = a_i[17];
  assign man_o[16] = a_i[16];
  assign man_o[15] = a_i[15];
  assign man_o[14] = a_i[14];
  assign man_o[13] = a_i[13];
  assign man_o[12] = a_i[12];
  assign man_o[11] = a_i[11];
  assign man_o[10] = a_i[10];
  assign man_o[9] = a_i[9];
  assign man_o[8] = a_i[8];
  assign man_o[7] = a_i[7];
  assign man_o[6] = a_i[6];
  assign man_o[5] = a_i[5];
  assign man_o[4] = a_i[4];
  assign man_o[3] = a_i[3];
  assign man_o[2] = a_i[2];
  assign man_o[1] = a_i[1];
  assign man_o[0] = a_i[0];
  assign exp_o[10] = a_i[62];
  assign exp_o[9] = a_i[61];
  assign exp_o[8] = a_i[60];
  assign exp_o[7] = a_i[59];
  assign exp_o[6] = a_i[58];
  assign exp_o[5] = a_i[57];
  assign exp_o[4] = a_i[56];
  assign exp_o[3] = a_i[55];
  assign exp_o[2] = a_i[54];
  assign exp_o[1] = a_i[53];
  assign exp_o[0] = a_i[52];
  assign sign_o = a_i[63];
  assign N0 = a_i[61] | a_i[62];
  assign N1 = a_i[60] | N0;
  assign N2 = a_i[59] | N1;
  assign N3 = a_i[58] | N2;
  assign N4 = a_i[57] | N3;
  assign N5 = a_i[56] | N4;
  assign N6 = a_i[55] | N5;
  assign N7 = a_i[54] | N6;
  assign N8 = a_i[53] | N7;
  assign N9 = a_i[52] | N8;
  assign exp_zero_o = ~N9;
  assign N11 = a_i[61] & a_i[62];
  assign N12 = a_i[60] & N11;
  assign N13 = a_i[59] & N12;
  assign N14 = a_i[58] & N13;
  assign N15 = a_i[57] & N14;
  assign N16 = a_i[56] & N15;
  assign N17 = a_i[55] & N16;
  assign N18 = a_i[54] & N17;
  assign N19 = a_i[53] & N18;
  assign N20 = a_i[52] & N19;
  assign N21 = a_i[50] | a_i[51];
  assign N22 = a_i[49] | N21;
  assign N23 = a_i[48] | N22;
  assign N24 = a_i[47] | N23;
  assign N25 = a_i[46] | N24;
  assign N26 = a_i[45] | N25;
  assign N27 = a_i[44] | N26;
  assign N28 = a_i[43] | N27;
  assign N29 = a_i[42] | N28;
  assign N30 = a_i[41] | N29;
  assign N31 = a_i[40] | N30;
  assign N32 = a_i[39] | N31;
  assign N33 = a_i[38] | N32;
  assign N34 = a_i[37] | N33;
  assign N35 = a_i[36] | N34;
  assign N36 = a_i[35] | N35;
  assign N37 = a_i[34] | N36;
  assign N38 = a_i[33] | N37;
  assign N39 = a_i[32] | N38;
  assign N40 = a_i[31] | N39;
  assign N41 = a_i[30] | N40;
  assign N42 = a_i[29] | N41;
  assign N43 = a_i[28] | N42;
  assign N44 = a_i[27] | N43;
  assign N45 = a_i[26] | N44;
  assign N46 = a_i[25] | N45;
  assign N47 = a_i[24] | N46;
  assign N48 = a_i[23] | N47;
  assign N49 = a_i[22] | N48;
  assign N50 = a_i[21] | N49;
  assign N51 = a_i[20] | N50;
  assign N52 = a_i[19] | N51;
  assign N53 = a_i[18] | N52;
  assign N54 = a_i[17] | N53;
  assign N55 = a_i[16] | N54;
  assign N56 = a_i[15] | N55;
  assign N57 = a_i[14] | N56;
  assign N58 = a_i[13] | N57;
  assign N59 = a_i[12] | N58;
  assign N60 = a_i[11] | N59;
  assign N61 = a_i[10] | N60;
  assign N62 = a_i[9] | N61;
  assign N63 = a_i[8] | N62;
  assign N64 = a_i[7] | N63;
  assign N65 = a_i[6] | N64;
  assign N66 = a_i[5] | N65;
  assign N67 = a_i[4] | N66;
  assign N68 = a_i[3] | N67;
  assign N69 = a_i[2] | N68;
  assign N70 = a_i[1] | N69;
  assign N71 = a_i[0] | N70;
  assign man_zero_o = ~N71;
  assign zero_o = exp_zero_o & man_zero_o;
  assign nan_o = N20 & N71;
  assign sig_nan_o = nan_o & N73;
  assign N73 = ~a_i[51];
  assign infty_o = N20 & man_zero_o;
  assign denormal_o = exp_zero_o & N71;

endmodule

