

module top
(
  a_i,
  signed_i,
  z_o,
  invalid_o
);

  input [63:0] a_i;
  output [63:0] z_o;
  input signed_i;
  output invalid_o;

  bsg_fpu_f2i
  wrapper
  (
    .a_i(a_i),
    .z_o(z_o),
    .signed_i(signed_i),
    .invalid_o(invalid_o)
  );


endmodule



module bsg_fpu_preprocess_e_p11_m_p52
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



module bsg_fpu_f2i
(
  a_i,
  signed_i,
  z_o,
  invalid_o
);

  input [63:0] a_i;
  output [63:0] z_o;
  input signed_i;
  output invalid_o;
  wire [63:0] z_o,shifted,inverted,post_round;
  wire invalid_o,N0,N1,N2,N3,N4,zero,nan,infty,sign,N5,exp_too_big,N6,exp_too_small,N7,
  N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,
  N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,
  N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,
  N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,
  N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,
  N106,N107,N108;
  wire [10:0] exp;
  wire [51:0] mantissa;
  wire [63:10] preshift;
  wire [6:0] shamt;

  bsg_fpu_preprocess_e_p11_m_p52
  preprocess
  (
    .a_i(a_i),
    .zero_o(zero),
    .nan_o(nan),
    .infty_o(infty),
    .sign_o(sign),
    .exp_o(exp),
    .man_o(mantissa)
  );

  assign N5 = exp > { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1 };
  assign N6 = exp > { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 };
  assign exp_too_small = exp < { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 };
  assign shifted = { preshift, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } >> shamt;
  assign { N13, N12, N11, N10, N9, N8, N7 } = { 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1 } - exp[6:0];
  assign { N20, N19, N18, N17, N16, N15, N14 } = { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 } - exp[6:0];
  assign post_round = inverted + sign;
  assign exp_too_big = (N0)? N5 : 
                       (N1)? N6 : 1'b0;
  assign N0 = signed_i;
  assign N1 = preshift[63];
  assign preshift[62:10] = (N0)? { 1'b1, mantissa } : 
                           (N1)? { mantissa, 1'b0 } : 1'b0;
  assign shamt = (N0)? { N13, N12, N11, N10, N9, N8, N7 } : 
                 (N1)? { N20, N19, N18, N17, N16, N15, N14 } : 1'b0;
  assign N29 = (N2)? signed_i : 
               (N3)? N108 : 1'b0;
  assign N2 = sign;
  assign N3 = N28;
  assign z_o = (N4)? { preshift[63:63], 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N31)? { N29, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28 } : 
               (N34)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N37)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N40)? { sign, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28, N28 } : 
               (N43)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N27)? post_round : 1'b0;
  assign N4 = nan;
  assign invalid_o = (N4)? 1'b1 : 
                     (N31)? 1'b1 : 
                     (N34)? 1'b1 : 
                     (N37)? 1'b0 : 
                     (N40)? 1'b1 : 
                     (N43)? 1'b0 : 
                     (N27)? 1'b0 : 1'b0;
  assign inverted[63] = N44 ^ shifted[63];
  assign N44 = signed_i & sign;
  assign inverted[62] = N45 ^ shifted[62];
  assign N45 = signed_i & sign;
  assign inverted[61] = N46 ^ shifted[61];
  assign N46 = signed_i & sign;
  assign inverted[60] = N47 ^ shifted[60];
  assign N47 = signed_i & sign;
  assign inverted[59] = N48 ^ shifted[59];
  assign N48 = signed_i & sign;
  assign inverted[58] = N49 ^ shifted[58];
  assign N49 = signed_i & sign;
  assign inverted[57] = N50 ^ shifted[57];
  assign N50 = signed_i & sign;
  assign inverted[56] = N51 ^ shifted[56];
  assign N51 = signed_i & sign;
  assign inverted[55] = N52 ^ shifted[55];
  assign N52 = signed_i & sign;
  assign inverted[54] = N53 ^ shifted[54];
  assign N53 = signed_i & sign;
  assign inverted[53] = N54 ^ shifted[53];
  assign N54 = signed_i & sign;
  assign inverted[52] = N55 ^ shifted[52];
  assign N55 = signed_i & sign;
  assign inverted[51] = N56 ^ shifted[51];
  assign N56 = signed_i & sign;
  assign inverted[50] = N57 ^ shifted[50];
  assign N57 = signed_i & sign;
  assign inverted[49] = N58 ^ shifted[49];
  assign N58 = signed_i & sign;
  assign inverted[48] = N59 ^ shifted[48];
  assign N59 = signed_i & sign;
  assign inverted[47] = N60 ^ shifted[47];
  assign N60 = signed_i & sign;
  assign inverted[46] = N61 ^ shifted[46];
  assign N61 = signed_i & sign;
  assign inverted[45] = N62 ^ shifted[45];
  assign N62 = signed_i & sign;
  assign inverted[44] = N63 ^ shifted[44];
  assign N63 = signed_i & sign;
  assign inverted[43] = N64 ^ shifted[43];
  assign N64 = signed_i & sign;
  assign inverted[42] = N65 ^ shifted[42];
  assign N65 = signed_i & sign;
  assign inverted[41] = N66 ^ shifted[41];
  assign N66 = signed_i & sign;
  assign inverted[40] = N67 ^ shifted[40];
  assign N67 = signed_i & sign;
  assign inverted[39] = N68 ^ shifted[39];
  assign N68 = signed_i & sign;
  assign inverted[38] = N69 ^ shifted[38];
  assign N69 = signed_i & sign;
  assign inverted[37] = N70 ^ shifted[37];
  assign N70 = signed_i & sign;
  assign inverted[36] = N71 ^ shifted[36];
  assign N71 = signed_i & sign;
  assign inverted[35] = N72 ^ shifted[35];
  assign N72 = signed_i & sign;
  assign inverted[34] = N73 ^ shifted[34];
  assign N73 = signed_i & sign;
  assign inverted[33] = N74 ^ shifted[33];
  assign N74 = signed_i & sign;
  assign inverted[32] = N75 ^ shifted[32];
  assign N75 = signed_i & sign;
  assign inverted[31] = N76 ^ shifted[31];
  assign N76 = signed_i & sign;
  assign inverted[30] = N77 ^ shifted[30];
  assign N77 = signed_i & sign;
  assign inverted[29] = N78 ^ shifted[29];
  assign N78 = signed_i & sign;
  assign inverted[28] = N79 ^ shifted[28];
  assign N79 = signed_i & sign;
  assign inverted[27] = N80 ^ shifted[27];
  assign N80 = signed_i & sign;
  assign inverted[26] = N81 ^ shifted[26];
  assign N81 = signed_i & sign;
  assign inverted[25] = N82 ^ shifted[25];
  assign N82 = signed_i & sign;
  assign inverted[24] = N83 ^ shifted[24];
  assign N83 = signed_i & sign;
  assign inverted[23] = N84 ^ shifted[23];
  assign N84 = signed_i & sign;
  assign inverted[22] = N85 ^ shifted[22];
  assign N85 = signed_i & sign;
  assign inverted[21] = N86 ^ shifted[21];
  assign N86 = signed_i & sign;
  assign inverted[20] = N87 ^ shifted[20];
  assign N87 = signed_i & sign;
  assign inverted[19] = N88 ^ shifted[19];
  assign N88 = signed_i & sign;
  assign inverted[18] = N89 ^ shifted[18];
  assign N89 = signed_i & sign;
  assign inverted[17] = N90 ^ shifted[17];
  assign N90 = signed_i & sign;
  assign inverted[16] = N91 ^ shifted[16];
  assign N91 = signed_i & sign;
  assign inverted[15] = N92 ^ shifted[15];
  assign N92 = signed_i & sign;
  assign inverted[14] = N93 ^ shifted[14];
  assign N93 = signed_i & sign;
  assign inverted[13] = N94 ^ shifted[13];
  assign N94 = signed_i & sign;
  assign inverted[12] = N95 ^ shifted[12];
  assign N95 = signed_i & sign;
  assign inverted[11] = N96 ^ shifted[11];
  assign N96 = signed_i & sign;
  assign inverted[10] = N97 ^ shifted[10];
  assign N97 = signed_i & sign;
  assign inverted[9] = N98 ^ shifted[9];
  assign N98 = signed_i & sign;
  assign inverted[8] = N99 ^ shifted[8];
  assign N99 = signed_i & sign;
  assign inverted[7] = N100 ^ shifted[7];
  assign N100 = signed_i & sign;
  assign inverted[6] = N101 ^ shifted[6];
  assign N101 = signed_i & sign;
  assign inverted[5] = N102 ^ shifted[5];
  assign N102 = signed_i & sign;
  assign inverted[4] = N103 ^ shifted[4];
  assign N103 = signed_i & sign;
  assign inverted[3] = N104 ^ shifted[3];
  assign N104 = signed_i & sign;
  assign inverted[2] = N105 ^ shifted[2];
  assign N105 = signed_i & sign;
  assign inverted[1] = N106 ^ shifted[1];
  assign N106 = signed_i & sign;
  assign inverted[0] = N107 ^ shifted[0];
  assign N107 = signed_i & sign;
  assign N21 = N108 & sign;
  assign N108 = ~signed_i;
  assign N22 = infty | nan;
  assign N23 = N21 | N22;
  assign N24 = zero | N23;
  assign N25 = exp_too_big | N24;
  assign N26 = exp_too_small | N25;
  assign N27 = ~N26;
  assign preshift[63] = N108;
  assign N28 = ~sign;
  assign N30 = ~nan;
  assign N31 = infty & N30;
  assign N32 = ~infty;
  assign N33 = N30 & N32;
  assign N34 = N21 & N33;
  assign N35 = ~N21;
  assign N36 = N33 & N35;
  assign N37 = zero & N36;
  assign N38 = ~zero;
  assign N39 = N36 & N38;
  assign N40 = exp_too_big & N39;
  assign N41 = ~exp_too_big;
  assign N42 = N39 & N41;
  assign N43 = exp_too_small & N42;

endmodule

