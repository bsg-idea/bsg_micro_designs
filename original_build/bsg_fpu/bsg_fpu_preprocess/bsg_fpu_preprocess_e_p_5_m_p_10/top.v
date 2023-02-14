

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

  input [15:0] a_i;
  output [4:0] exp_o;
  output [9:0] man_o;
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

  input [15:0] a_i;
  output [4:0] exp_o;
  output [9:0] man_o;
  output zero_o;
  output nan_o;
  output sig_nan_o;
  output infty_o;
  output exp_zero_o;
  output man_zero_o;
  output denormal_o;
  output sign_o;
  wire [4:0] exp_o;
  wire [9:0] man_o;
  wire zero_o,nan_o,sig_nan_o,infty_o,exp_zero_o,man_zero_o,denormal_o,sign_o,N0,N1,N2,
  N3,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N19;
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
  assign exp_o[4] = a_i[14];
  assign exp_o[3] = a_i[13];
  assign exp_o[2] = a_i[12];
  assign exp_o[1] = a_i[11];
  assign exp_o[0] = a_i[10];
  assign sign_o = a_i[15];
  assign N0 = a_i[13] | a_i[14];
  assign N1 = a_i[12] | N0;
  assign N2 = a_i[11] | N1;
  assign N3 = a_i[10] | N2;
  assign exp_zero_o = ~N3;
  assign N5 = a_i[13] & a_i[14];
  assign N6 = a_i[12] & N5;
  assign N7 = a_i[11] & N6;
  assign N8 = a_i[10] & N7;
  assign N9 = a_i[8] | a_i[9];
  assign N10 = a_i[7] | N9;
  assign N11 = a_i[6] | N10;
  assign N12 = a_i[5] | N11;
  assign N13 = a_i[4] | N12;
  assign N14 = a_i[3] | N13;
  assign N15 = a_i[2] | N14;
  assign N16 = a_i[1] | N15;
  assign N17 = a_i[0] | N16;
  assign man_zero_o = ~N17;
  assign zero_o = exp_zero_o & man_zero_o;
  assign nan_o = N8 & N17;
  assign sig_nan_o = nan_o & N19;
  assign N19 = ~a_i[9];
  assign infty_o = N8 & man_zero_o;
  assign denormal_o = exp_zero_o & N17;

endmodule

