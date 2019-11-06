

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

  input [31:0] a_i;
  output [7:0] exp_o;
  output [22:0] man_o;
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

  input [31:0] a_i;
  output [7:0] exp_o;
  output [22:0] man_o;
  output zero_o;
  output nan_o;
  output sig_nan_o;
  output infty_o;
  output exp_zero_o;
  output man_zero_o;
  output denormal_o;
  output sign_o;
  wire [7:0] exp_o;
  wire [22:0] man_o;
  wire zero_o,nan_o,sig_nan_o,infty_o,exp_zero_o,man_zero_o,denormal_o,sign_o,N0,N1,N2,
  N3,N4,N5,N6,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N38;
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
  assign exp_o[7] = a_i[30];
  assign exp_o[6] = a_i[29];
  assign exp_o[5] = a_i[28];
  assign exp_o[4] = a_i[27];
  assign exp_o[3] = a_i[26];
  assign exp_o[2] = a_i[25];
  assign exp_o[1] = a_i[24];
  assign exp_o[0] = a_i[23];
  assign sign_o = a_i[31];
  assign N0 = a_i[29] | a_i[30];
  assign N1 = a_i[28] | N0;
  assign N2 = a_i[27] | N1;
  assign N3 = a_i[26] | N2;
  assign N4 = a_i[25] | N3;
  assign N5 = a_i[24] | N4;
  assign N6 = a_i[23] | N5;
  assign exp_zero_o = ~N6;
  assign N8 = a_i[29] & a_i[30];
  assign N9 = a_i[28] & N8;
  assign N10 = a_i[27] & N9;
  assign N11 = a_i[26] & N10;
  assign N12 = a_i[25] & N11;
  assign N13 = a_i[24] & N12;
  assign N14 = a_i[23] & N13;
  assign N15 = a_i[21] | a_i[22];
  assign N16 = a_i[20] | N15;
  assign N17 = a_i[19] | N16;
  assign N18 = a_i[18] | N17;
  assign N19 = a_i[17] | N18;
  assign N20 = a_i[16] | N19;
  assign N21 = a_i[15] | N20;
  assign N22 = a_i[14] | N21;
  assign N23 = a_i[13] | N22;
  assign N24 = a_i[12] | N23;
  assign N25 = a_i[11] | N24;
  assign N26 = a_i[10] | N25;
  assign N27 = a_i[9] | N26;
  assign N28 = a_i[8] | N27;
  assign N29 = a_i[7] | N28;
  assign N30 = a_i[6] | N29;
  assign N31 = a_i[5] | N30;
  assign N32 = a_i[4] | N31;
  assign N33 = a_i[3] | N32;
  assign N34 = a_i[2] | N33;
  assign N35 = a_i[1] | N34;
  assign N36 = a_i[0] | N35;
  assign man_zero_o = ~N36;
  assign zero_o = exp_zero_o & man_zero_o;
  assign nan_o = N14 & N36;
  assign sig_nan_o = nan_o & N38;
  assign N38 = ~a_i[22];
  assign infty_o = N14 & man_zero_o;
  assign denormal_o = exp_zero_o & N36;

endmodule

