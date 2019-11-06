

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

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] min_o;
  output [63:0] max_o;
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



module bsg_less_than_width_p63
(
  a_i,
  b_i,
  o
);

  input [62:0] a_i;
  input [62:0] b_i;
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

  input [63:0] a_i;
  input [63:0] b_i;
  output [63:0] min_o;
  output [63:0] max_o;
  output eq_o;
  output lt_o;
  output le_o;
  output lt_le_invalid_o;
  output eq_invalid_o;
  output min_max_invalid_o;
  wire [63:0] min_o,max_o;
  wire eq_o,lt_o,le_o,lt_le_invalid_o,eq_invalid_o,min_max_invalid_o,N0,N1,N2,N3,N4,N5,
  N6,N7,N8,a_zero,a_nan,a_sig_nan,a_infty,a_sign,b_zero,b_nan,b_sig_nan,b_infty,
  b_sign,mag_a_lt,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,
  N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,
  N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,
  N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,
  N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,
  N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,
  N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,
  N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,
  N168,N169,N170,N171,N172,N173,N174,N175,SYNOPSYS_UNCONNECTED_1,
  SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,SYNOPSYS_UNCONNECTED_4,SYNOPSYS_UNCONNECTED_5,
  SYNOPSYS_UNCONNECTED_6,SYNOPSYS_UNCONNECTED_7,SYNOPSYS_UNCONNECTED_8,
  SYNOPSYS_UNCONNECTED_9,SYNOPSYS_UNCONNECTED_10,SYNOPSYS_UNCONNECTED_11,SYNOPSYS_UNCONNECTED_12,
  SYNOPSYS_UNCONNECTED_13,SYNOPSYS_UNCONNECTED_14,SYNOPSYS_UNCONNECTED_15,
  SYNOPSYS_UNCONNECTED_16,SYNOPSYS_UNCONNECTED_17,SYNOPSYS_UNCONNECTED_18,
  SYNOPSYS_UNCONNECTED_19,SYNOPSYS_UNCONNECTED_20,SYNOPSYS_UNCONNECTED_21,SYNOPSYS_UNCONNECTED_22,
  SYNOPSYS_UNCONNECTED_23,SYNOPSYS_UNCONNECTED_24,SYNOPSYS_UNCONNECTED_25,
  SYNOPSYS_UNCONNECTED_26,SYNOPSYS_UNCONNECTED_27,SYNOPSYS_UNCONNECTED_28,
  SYNOPSYS_UNCONNECTED_29,SYNOPSYS_UNCONNECTED_30,SYNOPSYS_UNCONNECTED_31,SYNOPSYS_UNCONNECTED_32,
  SYNOPSYS_UNCONNECTED_33,SYNOPSYS_UNCONNECTED_34,SYNOPSYS_UNCONNECTED_35,
  SYNOPSYS_UNCONNECTED_36,SYNOPSYS_UNCONNECTED_37,SYNOPSYS_UNCONNECTED_38,
  SYNOPSYS_UNCONNECTED_39,SYNOPSYS_UNCONNECTED_40,SYNOPSYS_UNCONNECTED_41,SYNOPSYS_UNCONNECTED_42,
  SYNOPSYS_UNCONNECTED_43,SYNOPSYS_UNCONNECTED_44,SYNOPSYS_UNCONNECTED_45,
  SYNOPSYS_UNCONNECTED_46,SYNOPSYS_UNCONNECTED_47,SYNOPSYS_UNCONNECTED_48,
  SYNOPSYS_UNCONNECTED_49,SYNOPSYS_UNCONNECTED_50,SYNOPSYS_UNCONNECTED_51,SYNOPSYS_UNCONNECTED_52,
  SYNOPSYS_UNCONNECTED_53,SYNOPSYS_UNCONNECTED_54,SYNOPSYS_UNCONNECTED_55,
  SYNOPSYS_UNCONNECTED_56,SYNOPSYS_UNCONNECTED_57,SYNOPSYS_UNCONNECTED_58,
  SYNOPSYS_UNCONNECTED_59,SYNOPSYS_UNCONNECTED_60,SYNOPSYS_UNCONNECTED_61,SYNOPSYS_UNCONNECTED_62,
  SYNOPSYS_UNCONNECTED_63,SYNOPSYS_UNCONNECTED_64,SYNOPSYS_UNCONNECTED_65,
  SYNOPSYS_UNCONNECTED_66,SYNOPSYS_UNCONNECTED_67,SYNOPSYS_UNCONNECTED_68,
  SYNOPSYS_UNCONNECTED_69,SYNOPSYS_UNCONNECTED_70,SYNOPSYS_UNCONNECTED_71,SYNOPSYS_UNCONNECTED_72,
  SYNOPSYS_UNCONNECTED_73,SYNOPSYS_UNCONNECTED_74,SYNOPSYS_UNCONNECTED_75,
  SYNOPSYS_UNCONNECTED_76,SYNOPSYS_UNCONNECTED_77,SYNOPSYS_UNCONNECTED_78,
  SYNOPSYS_UNCONNECTED_79,SYNOPSYS_UNCONNECTED_80,SYNOPSYS_UNCONNECTED_81,SYNOPSYS_UNCONNECTED_82,
  SYNOPSYS_UNCONNECTED_83,SYNOPSYS_UNCONNECTED_84,SYNOPSYS_UNCONNECTED_85,
  SYNOPSYS_UNCONNECTED_86,SYNOPSYS_UNCONNECTED_87,SYNOPSYS_UNCONNECTED_88,
  SYNOPSYS_UNCONNECTED_89,SYNOPSYS_UNCONNECTED_90,SYNOPSYS_UNCONNECTED_91,SYNOPSYS_UNCONNECTED_92,
  SYNOPSYS_UNCONNECTED_93,SYNOPSYS_UNCONNECTED_94,SYNOPSYS_UNCONNECTED_95,
  SYNOPSYS_UNCONNECTED_96,SYNOPSYS_UNCONNECTED_97,SYNOPSYS_UNCONNECTED_98,
  SYNOPSYS_UNCONNECTED_99,SYNOPSYS_UNCONNECTED_100,SYNOPSYS_UNCONNECTED_101,SYNOPSYS_UNCONNECTED_102,
  SYNOPSYS_UNCONNECTED_103,SYNOPSYS_UNCONNECTED_104,SYNOPSYS_UNCONNECTED_105,
  SYNOPSYS_UNCONNECTED_106,SYNOPSYS_UNCONNECTED_107,SYNOPSYS_UNCONNECTED_108,
  SYNOPSYS_UNCONNECTED_109,SYNOPSYS_UNCONNECTED_110,SYNOPSYS_UNCONNECTED_111,
  SYNOPSYS_UNCONNECTED_112,SYNOPSYS_UNCONNECTED_113,SYNOPSYS_UNCONNECTED_114,
  SYNOPSYS_UNCONNECTED_115,SYNOPSYS_UNCONNECTED_116,SYNOPSYS_UNCONNECTED_117,SYNOPSYS_UNCONNECTED_118,
  SYNOPSYS_UNCONNECTED_119,SYNOPSYS_UNCONNECTED_120,SYNOPSYS_UNCONNECTED_121,
  SYNOPSYS_UNCONNECTED_122,SYNOPSYS_UNCONNECTED_123,SYNOPSYS_UNCONNECTED_124,
  SYNOPSYS_UNCONNECTED_125,SYNOPSYS_UNCONNECTED_126;

  bsg_fpu_preprocess_e_p11_m_p52
  a_preprocess
  (
    .a_i(a_i),
    .zero_o(a_zero),
    .nan_o(a_nan),
    .sig_nan_o(a_sig_nan),
    .infty_o(a_infty),
    .sign_o(a_sign),
    .exp_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11 }),
    .man_o({ SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52, SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54, SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56, SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58, SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60, SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62, SYNOPSYS_UNCONNECTED_63 })
  );


  bsg_fpu_preprocess_e_p11_m_p52
  b_preprocess
  (
    .a_i(b_i),
    .zero_o(b_zero),
    .nan_o(b_nan),
    .sig_nan_o(b_sig_nan),
    .infty_o(b_infty),
    .sign_o(b_sign),
    .exp_o({ SYNOPSYS_UNCONNECTED_64, SYNOPSYS_UNCONNECTED_65, SYNOPSYS_UNCONNECTED_66, SYNOPSYS_UNCONNECTED_67, SYNOPSYS_UNCONNECTED_68, SYNOPSYS_UNCONNECTED_69, SYNOPSYS_UNCONNECTED_70, SYNOPSYS_UNCONNECTED_71, SYNOPSYS_UNCONNECTED_72, SYNOPSYS_UNCONNECTED_73, SYNOPSYS_UNCONNECTED_74 }),
    .man_o({ SYNOPSYS_UNCONNECTED_75, SYNOPSYS_UNCONNECTED_76, SYNOPSYS_UNCONNECTED_77, SYNOPSYS_UNCONNECTED_78, SYNOPSYS_UNCONNECTED_79, SYNOPSYS_UNCONNECTED_80, SYNOPSYS_UNCONNECTED_81, SYNOPSYS_UNCONNECTED_82, SYNOPSYS_UNCONNECTED_83, SYNOPSYS_UNCONNECTED_84, SYNOPSYS_UNCONNECTED_85, SYNOPSYS_UNCONNECTED_86, SYNOPSYS_UNCONNECTED_87, SYNOPSYS_UNCONNECTED_88, SYNOPSYS_UNCONNECTED_89, SYNOPSYS_UNCONNECTED_90, SYNOPSYS_UNCONNECTED_91, SYNOPSYS_UNCONNECTED_92, SYNOPSYS_UNCONNECTED_93, SYNOPSYS_UNCONNECTED_94, SYNOPSYS_UNCONNECTED_95, SYNOPSYS_UNCONNECTED_96, SYNOPSYS_UNCONNECTED_97, SYNOPSYS_UNCONNECTED_98, SYNOPSYS_UNCONNECTED_99, SYNOPSYS_UNCONNECTED_100, SYNOPSYS_UNCONNECTED_101, SYNOPSYS_UNCONNECTED_102, SYNOPSYS_UNCONNECTED_103, SYNOPSYS_UNCONNECTED_104, SYNOPSYS_UNCONNECTED_105, SYNOPSYS_UNCONNECTED_106, SYNOPSYS_UNCONNECTED_107, SYNOPSYS_UNCONNECTED_108, SYNOPSYS_UNCONNECTED_109, SYNOPSYS_UNCONNECTED_110, SYNOPSYS_UNCONNECTED_111, SYNOPSYS_UNCONNECTED_112, SYNOPSYS_UNCONNECTED_113, SYNOPSYS_UNCONNECTED_114, SYNOPSYS_UNCONNECTED_115, SYNOPSYS_UNCONNECTED_116, SYNOPSYS_UNCONNECTED_117, SYNOPSYS_UNCONNECTED_118, SYNOPSYS_UNCONNECTED_119, SYNOPSYS_UNCONNECTED_120, SYNOPSYS_UNCONNECTED_121, SYNOPSYS_UNCONNECTED_122, SYNOPSYS_UNCONNECTED_123, SYNOPSYS_UNCONNECTED_124, SYNOPSYS_UNCONNECTED_125, SYNOPSYS_UNCONNECTED_126 })
  );


  bsg_less_than_width_p63
  lt_mag
  (
    .a_i(a_i[62:0]),
    .b_i(b_i[62:0]),
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
  assign { N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42 } = (N5)? { N40, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                    (N171)? a_i : 
                                                                                                                                                                                                                                                                                                                                                    (N39)? b_i : 1'b0;
  assign N5 = N37;
  assign { N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106 } = (N5)? { N41, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N171)? b_i : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N39)? a_i : 1'b0;
  assign min_o = (N6)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                 (N7)? b_i : 
                 (N8)? a_i : 
                 (N35)? { N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42 } : 1'b0;
  assign N6 = N30;
  assign N7 = N31;
  assign N8 = N32;
  assign max_o = (N6)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                 (N7)? b_i : 
                 (N8)? a_i : 
                 (N35)? { N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106 } : 1'b0;
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
  assign N24 = N172 & N173;
  assign N172 = ~mag_a_lt;
  assign N173 = ~N14;
  assign N25 = N172 | N14;
  assign N28 = ~N9;
  assign N29 = N10 & N28;
  assign N30 = a_nan & b_nan;
  assign N31 = a_nan & N174;
  assign N174 = ~b_nan;
  assign N32 = N175 & b_nan;
  assign N175 = ~a_nan;
  assign N33 = N31 | N30;
  assign N34 = N32 | N33;
  assign N35 = ~N34;
  assign N36 = a_sig_nan | b_sig_nan;
  assign N37 = a_zero & b_zero;
  assign N38 = lt_o | N37;
  assign N39 = ~N38;
  assign N40 = a_sign | b_sign;
  assign N41 = a_sign & b_sign;
  assign N170 = ~N37;
  assign N171 = lt_o & N170;

endmodule
