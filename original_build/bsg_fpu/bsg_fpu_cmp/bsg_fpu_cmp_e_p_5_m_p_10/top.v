

module top
(
  a_i,
  b_i,
  eq_o,
  lt_o,
  le_o,
  lt_le_invalid_o,
  eq_invalid_o,
  min_o,
  max_o,
  min_max_invalid_o
);

  input [15:0] a_i;
  input [15:0] b_i;
  output [15:0] min_o;
  output [15:0] max_o;
  output eq_o;
  output lt_o;
  output le_o;
  output lt_le_invalid_o;
  output eq_invalid_o;
  output min_max_invalid_o;

  bsg_fpu_cmp
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .min_o(min_o),
    .max_o(max_o),
    .eq_o(eq_o),
    .lt_o(lt_o),
    .le_o(le_o),
    .lt_le_invalid_o(lt_le_invalid_o),
    .eq_invalid_o(eq_invalid_o),
    .min_max_invalid_o(min_max_invalid_o)
  );


endmodule



module bsg_fpu_preprocess_e_p5_m_p10
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



module bsg_less_than_width_p15
(
  a_i,
  b_i,
  o
);

  input [14:0] a_i;
  input [14:0] b_i;
  output o;
  wire o;
  assign o = a_i < b_i;

endmodule



module bsg_fpu_cmp
(
  a_i,
  b_i,
  eq_o,
  lt_o,
  le_o,
  lt_le_invalid_o,
  eq_invalid_o,
  min_o,
  max_o,
  min_max_invalid_o
);

  input [15:0] a_i;
  input [15:0] b_i;
  output [15:0] min_o;
  output [15:0] max_o;
  output eq_o;
  output lt_o;
  output le_o;
  output lt_le_invalid_o;
  output eq_invalid_o;
  output min_max_invalid_o;
  wire [15:0] min_o,max_o;
  wire eq_o,lt_o,le_o,lt_le_invalid_o,eq_invalid_o,min_max_invalid_o,N0,N1,N2,N3,N4,N5,
  N6,N7,N8,a_zero,a_nan,a_sig_nan,a_infty,a_sign,b_zero,b_nan,b_sig_nan,b_infty,
  b_sign,mag_a_lt,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,
  N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,
  N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,SYNOPSYS_UNCONNECTED_1,
  SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,SYNOPSYS_UNCONNECTED_4,
  SYNOPSYS_UNCONNECTED_5,SYNOPSYS_UNCONNECTED_6,SYNOPSYS_UNCONNECTED_7,
  SYNOPSYS_UNCONNECTED_8,SYNOPSYS_UNCONNECTED_9,SYNOPSYS_UNCONNECTED_10,SYNOPSYS_UNCONNECTED_11,
  SYNOPSYS_UNCONNECTED_12,SYNOPSYS_UNCONNECTED_13,SYNOPSYS_UNCONNECTED_14,
  SYNOPSYS_UNCONNECTED_15,SYNOPSYS_UNCONNECTED_16,SYNOPSYS_UNCONNECTED_17,SYNOPSYS_UNCONNECTED_18,
  SYNOPSYS_UNCONNECTED_19,SYNOPSYS_UNCONNECTED_20,SYNOPSYS_UNCONNECTED_21,
  SYNOPSYS_UNCONNECTED_22,SYNOPSYS_UNCONNECTED_23,SYNOPSYS_UNCONNECTED_24,
  SYNOPSYS_UNCONNECTED_25,SYNOPSYS_UNCONNECTED_26,SYNOPSYS_UNCONNECTED_27,SYNOPSYS_UNCONNECTED_28,
  SYNOPSYS_UNCONNECTED_29,SYNOPSYS_UNCONNECTED_30;

  bsg_fpu_preprocess_e_p5_m_p10
  a_preprocess
  (
    .a_i(a_i),
    .zero_o(a_zero),
    .nan_o(a_nan),
    .sig_nan_o(a_sig_nan),
    .infty_o(a_infty),
    .sign_o(a_sign),
    .exp_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5 }),
    .man_o({ SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15 })
  );


  bsg_fpu_preprocess_e_p5_m_p10
  b_preprocess
  (
    .a_i(b_i),
    .zero_o(b_zero),
    .nan_o(b_nan),
    .sig_nan_o(b_sig_nan),
    .infty_o(b_infty),
    .sign_o(b_sign),
    .exp_o({ SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20 }),
    .man_o({ SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30 })
  );


  bsg_less_than_width_p15
  lt_mag
  (
    .a_i(a_i[14:0]),
    .b_i(b_i[14:0]),
    .o(mag_a_lt)
  );

  assign N14 = a_i == b_i;
  assign N17 = N15 & N16;
  assign N18 = a_sign | N16;
  assign N20 = N15 | b_sign;
  assign N22 = a_sign & b_sign;
  assign N26 = (N0)? mag_a_lt : 
               (N1)? 1'b0 : 
               (N2)? 1'b1 : 
               (N3)? N24 : 1'b0;
  assign N0 = N17;
  assign N1 = N19;
  assign N2 = N21;
  assign N3 = N22;
  assign N27 = (N0)? N23 : 
               (N1)? 1'b0 : 
               (N2)? 1'b1 : 
               (N3)? N25 : 1'b0;
  assign eq_o = (N4)? 1'b0 : 
                (N29)? 1'b1 : 
                (N12)? N14 : 1'b0;
  assign N4 = N9;
  assign lt_o = (N4)? 1'b0 : 
                (N29)? 1'b0 : 
                (N12)? N26 : 1'b0;
  assign le_o = (N4)? 1'b0 : 
                (N29)? 1'b1 : 
                (N12)? N27 : 1'b0;
  assign lt_le_invalid_o = (N4)? 1'b1 : 
                           (N29)? 1'b0 : 
                           (N12)? 1'b0 : 1'b0;
  assign eq_invalid_o = (N4)? N13 : 
                        (N29)? 1'b0 : 
                        (N12)? 1'b0 : 1'b0;
  assign { N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42 } = (N5)? { N40, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                              (N75)? a_i : 
                                                                                              (N39)? b_i : 1'b0;
  assign N5 = N37;
  assign { N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58 } = (N5)? { N41, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                              (N75)? b_i : 
                                                                                              (N39)? a_i : 1'b0;
  assign min_o = (N6)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                 (N7)? b_i : 
                 (N8)? a_i : 
                 (N35)? { N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42 } : 1'b0;
  assign N6 = N30;
  assign N7 = N31;
  assign N8 = N32;
  assign max_o = (N6)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                 (N7)? b_i : 
                 (N8)? a_i : 
                 (N35)? { N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58 } : 1'b0;
  assign min_max_invalid_o = (N6)? N36 : 
                             (N7)? a_sig_nan : 
                             (N8)? b_sig_nan : 
                             (N35)? 1'b0 : 1'b0;
  assign N9 = a_nan | b_nan;
  assign N10 = a_zero & b_zero;
  assign N11 = N10 | N9;
  assign N12 = ~N11;
  assign N13 = a_sig_nan | b_sig_nan;
  assign N15 = ~a_sign;
  assign N16 = ~b_sign;
  assign N19 = ~N18;
  assign N21 = ~N20;
  assign N23 = mag_a_lt | N14;
  assign N24 = N76 & N77;
  assign N76 = ~mag_a_lt;
  assign N77 = ~N14;
  assign N25 = N76 | N14;
  assign N28 = ~N9;
  assign N29 = N10 & N28;
  assign N30 = a_nan & b_nan;
  assign N31 = a_nan & N78;
  assign N78 = ~b_nan;
  assign N32 = N79 & b_nan;
  assign N79 = ~a_nan;
  assign N33 = N31 | N30;
  assign N34 = N32 | N33;
  assign N35 = ~N34;
  assign N36 = a_sig_nan | b_sig_nan;
  assign N37 = a_zero & b_zero;
  assign N38 = lt_o | N37;
  assign N39 = ~N38;
  assign N40 = a_sign | b_sign;
  assign N41 = a_sign & b_sign;
  assign N74 = ~N37;
  assign N75 = lt_o & N74;

endmodule

