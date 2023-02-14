

module top
(
  clk_i,
  reset_i,
  en_i,
  v_i,
  a_i,
  b_i,
  ready_o,
  v_o,
  z_o,
  unimplemented_o,
  invalid_o,
  overflow_o,
  underflow_o,
  yumi_i
);

  input [15:0] a_i;
  input [15:0] b_i;
  output [15:0] z_o;
  input clk_i;
  input reset_i;
  input en_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  output unimplemented_o;
  output invalid_o;
  output overflow_o;
  output underflow_o;

  bsg_fpu_mul
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .z_o(z_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .en_i(en_i),
    .v_i(v_i),
    .yumi_i(yumi_i),
    .ready_o(ready_o),
    .v_o(v_o),
    .unimplemented_o(unimplemented_o),
    .invalid_o(invalid_o),
    .overflow_o(overflow_o),
    .underflow_o(underflow_o)
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



module bsg_mul_synth_width_p11
(
  a_i,
  b_i,
  o
);

  input [10:0] a_i;
  input [10:0] b_i;
  output [21:0] o;
  wire [21:0] o;
  assign o = a_i * b_i;

endmodule



module bsg_fpu_mul
(
  clk_i,
  reset_i,
  en_i,
  v_i,
  a_i,
  b_i,
  ready_o,
  v_o,
  z_o,
  unimplemented_o,
  invalid_o,
  overflow_o,
  underflow_o,
  yumi_i
);

  input [15:0] a_i;
  input [15:0] b_i;
  output [15:0] z_o;
  input clk_i;
  input reset_i;
  input en_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  output unimplemented_o;
  output invalid_o;
  output overflow_o;
  output underflow_o;
  wire [15:0] z_o;
  wire ready_o,unimplemented_o,invalid_o,overflow_o,underflow_o,N0,N1,N2,N3,N4,N5,N6,
  N7,N8,stall,a_zero,a_nan,a_sig_nan,a_infty,exp_a_zero,man_a_zero,a_denormal,
  sign_a,b_zero,b_nan,b_sig_nan,b_infty,exp_b_zero,man_b_zero,b_denormal,sign_b,
  final_sign,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,
  N28,N29,sticky,N30,N31,round_up,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  carry_into_exp,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,
  N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,
  N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,
  N116,N117,N118,N119,N120,N121,N122,N123,N124,N125;
  wire [4:0] exp_a,exp_b;
  wire [9:0] man_a,man_b,shifted_mantissa;
  wire [5:0] exp_sum,final_exp;
  wire [4:4] exp_sum_unbiased;
  wire [21:0] man_prod;
  wire [14:0] rounded;
  reg [10:0] man_a_norm_r,man_b_norm_r;
  reg v_1_r,final_sign_1_r,a_sig_nan_1_r,b_sig_nan_1_r,a_nan_1_r,b_nan_1_r,
  a_infty_1_r,b_infty_1_r,a_zero_1_r,b_zero_1_r,a_denormal_1_r,b_denormal_1_r,v_2_r,
  final_sign_2_r,a_sig_nan_2_r,b_sig_nan_2_r,a_nan_2_r,b_nan_2_r,a_infty_2_r,b_infty_2_r,
  a_zero_2_r,b_zero_2_r,a_denormal_2_r,b_denormal_2_r,v_o,round_up_3_r,
  final_sign_3_r,a_sig_nan_3_r,b_sig_nan_3_r,a_nan_3_r,b_nan_3_r,a_infty_3_r,b_infty_3_r,
  a_zero_3_r,b_zero_3_r,a_denormal_3_r,b_denormal_3_r;
  reg [4:0] exp_sum_unbiased_1_r,exp_sum_unbiased_2_r;
  reg [5:4] exp_sum_1_r,exp_sum_2_r,exp_sum_3_r;
  reg [21:0] man_prod_2_r;
  reg [5:5] final_exp_3_r;
  reg [14:0] pre_roundup_3_r;

  bsg_fpu_preprocess_e_p5_m_p10
  a_preprocess
  (
    .a_i(a_i),
    .zero_o(a_zero),
    .nan_o(a_nan),
    .sig_nan_o(a_sig_nan),
    .infty_o(a_infty),
    .exp_zero_o(exp_a_zero),
    .man_zero_o(man_a_zero),
    .denormal_o(a_denormal),
    .sign_o(sign_a),
    .exp_o(exp_a),
    .man_o(man_a)
  );


  bsg_fpu_preprocess_e_p5_m_p10
  b_preprocess
  (
    .a_i(b_i),
    .zero_o(b_zero),
    .nan_o(b_nan),
    .sig_nan_o(b_sig_nan),
    .infty_o(b_infty),
    .exp_zero_o(exp_b_zero),
    .man_zero_o(man_b_zero),
    .denormal_o(b_denormal),
    .sign_o(sign_b),
    .exp_o(exp_b),
    .man_o(man_b)
  );


  bsg_mul_synth_width_p11
  mul_synth
  (
    .a_i(man_a_norm_r),
    .b_i(man_b_norm_r),
    .o(man_prod)
  );

  assign N92 = pre_roundup_3_r[13] | pre_roundup_3_r[14];
  assign N93 = pre_roundup_3_r[12] | N92;
  assign N94 = pre_roundup_3_r[11] | N93;
  assign N95 = pre_roundup_3_r[10] | N94;
  assign N96 = ~N95;
  assign N97 = pre_roundup_3_r[13] & pre_roundup_3_r[14];
  assign N98 = pre_roundup_3_r[12] & N97;
  assign N99 = pre_roundup_3_r[11] & N98;
  assign N100 = pre_roundup_3_r[10] & N99;
  assign N101 = exp_sum_3_r[4] & exp_sum_3_r[5];
  assign N102 = exp_sum_3_r[4] | exp_sum_3_r[5];
  assign N103 = ~N102;
  assign rounded = pre_roundup_3_r + round_up_3_r;
  assign final_exp = exp_sum_unbiased_2_r + man_prod_2_r[21];
  assign { N14, N13, N12, N11, N10, N9 } = exp_a + exp_b;
  assign exp_sum = { N14, N13, N12, N11, N10, N9 } + 1'b1;
  assign N18 = (N0)? 1'b1 : 
               (N22)? 1'b1 : 
               (N17)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign N19 = (N0)? 1'b0 : 
               (N22)? v_i : 1'b0;
  assign N20 = (N0)? 1'b0 : 
               (N22)? v_i : 
               (N17)? 1'b0 : 1'b0;
  assign N26 = (N0)? 1'b1 : 
               (N29)? 1'b1 : 
               (N25)? 1'b0 : 1'b0;
  assign N27 = (N0)? 1'b0 : 
               (N29)? v_1_r : 1'b0;
  assign N28 = (N0)? 1'b0 : 
               (N29)? v_1_r : 
               (N25)? 1'b0 : 1'b0;
  assign N32 = (N1)? man_prod_2_r[10] : 
               (N31)? man_prod_2_r[9] : 1'b0;
  assign N1 = man_prod_2_r[21];
  assign round_up = (N2)? N32 : 
                    (N3)? N33 : 1'b0;
  assign N2 = sticky;
  assign N3 = N30;
  assign shifted_mantissa = (N1)? man_prod_2_r[20:11] : 
                            (N31)? man_prod_2_r[19:10] : 1'b0;
  assign N37 = (N0)? 1'b1 : 
               (N40)? 1'b1 : 
               (N36)? 1'b0 : 1'b0;
  assign N38 = (N0)? 1'b0 : 
               (N40)? v_2_r : 1'b0;
  assign N39 = (N0)? 1'b0 : 
               (N40)? v_2_r : 
               (N36)? 1'b0 : 1'b0;
  assign N61 = (N4)? 1'b0 : 
               (N5)? final_sign_3_r : 1'b0;
  assign N4 = b_zero_3_r;
  assign N5 = N60;
  assign N63 = (N6)? 1'b0 : 
               (N7)? final_sign_3_r : 1'b0;
  assign N6 = a_zero_3_r;
  assign N7 = N62;
  assign unimplemented_o = (N8)? 1'b0 : 
                           (N65)? 1'b0 : 
                           (N68)? 1'b0 : 
                           (N71)? 1'b0 : 
                           (N74)? 1'b0 : 
                           (N77)? 1'b0 : 
                           (N80)? 1'b1 : 
                           (N83)? 1'b0 : 
                           (N85)? 1'b0 : 
                           (N88)? 1'b0 : 
                           (N91)? 1'b0 : 
                           (N59)? 1'b0 : 1'b0;
  assign N8 = N41;
  assign invalid_o = (N8)? 1'b1 : 
                     (N65)? 1'b0 : 
                     (N68)? b_zero_3_r : 
                     (N71)? a_zero_3_r : 
                     (N74)? 1'b0 : 
                     (N77)? 1'b0 : 
                     (N80)? 1'b0 : 
                     (N83)? 1'b0 : 
                     (N85)? 1'b0 : 
                     (N88)? 1'b0 : 
                     (N91)? 1'b0 : 
                     (N59)? 1'b0 : 1'b0;
  assign overflow_o = (N8)? 1'b0 : 
                      (N65)? 1'b0 : 
                      (N68)? 1'b0 : 
                      (N71)? 1'b0 : 
                      (N74)? 1'b0 : 
                      (N77)? 1'b0 : 
                      (N80)? 1'b0 : 
                      (N83)? 1'b0 : 
                      (N85)? 1'b1 : 
                      (N88)? 1'b1 : 
                      (N91)? 1'b0 : 
                      (N59)? 1'b0 : 1'b0;
  assign underflow_o = (N8)? 1'b0 : 
                       (N65)? 1'b0 : 
                       (N68)? 1'b0 : 
                       (N71)? 1'b0 : 
                       (N74)? 1'b0 : 
                       (N77)? 1'b1 : 
                       (N80)? 1'b0 : 
                       (N83)? 1'b1 : 
                       (N85)? 1'b0 : 
                       (N88)? 1'b0 : 
                       (N91)? 1'b1 : 
                       (N59)? 1'b0 : 1'b0;
  assign z_o = (N8)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N65)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N68)? { N61, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, b_zero_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N71)? { N63, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, a_zero_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N74)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N77)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N80)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N83)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N85)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N88)? { final_sign_3_r, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N91)? { final_sign_3_r, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N59)? { final_sign_3_r, rounded } : 1'b0;
  assign stall = v_o & N104;
  assign N104 = ~yumi_i;
  assign ready_o = N105 & en_i;
  assign N105 = ~stall;
  assign final_sign = sign_a ^ sign_b;
  assign exp_sum_unbiased[4] = ~exp_sum[4];
  assign N15 = N105 & en_i;
  assign N16 = N15 | reset_i;
  assign N17 = ~N16;
  assign N21 = ~reset_i;
  assign N22 = N15 & N21;
  assign N23 = N105 & en_i;
  assign N24 = N23 | reset_i;
  assign N25 = ~N24;
  assign N29 = N23 & N21;
  assign sticky = N112 | man_prod_2_r[0];
  assign N112 = N111 | man_prod_2_r[1];
  assign N111 = N110 | man_prod_2_r[2];
  assign N110 = N109 | man_prod_2_r[3];
  assign N109 = N108 | man_prod_2_r[4];
  assign N108 = N107 | man_prod_2_r[5];
  assign N107 = N106 | man_prod_2_r[6];
  assign N106 = man_prod_2_r[8] | man_prod_2_r[7];
  assign N30 = ~sticky;
  assign N31 = ~man_prod_2_r[21];
  assign N33 = man_prod_2_r[10] & N114;
  assign N114 = man_prod_2_r[9] | N113;
  assign N113 = man_prod_2_r[21] & man_prod_2_r[11];
  assign N34 = N105 & en_i;
  assign N35 = N34 | reset_i;
  assign N36 = ~N35;
  assign N40 = N34 & N21;
  assign carry_into_exp = N123 & pre_roundup_3_r[0];
  assign N123 = N122 & pre_roundup_3_r[1];
  assign N122 = N121 & pre_roundup_3_r[2];
  assign N121 = N120 & pre_roundup_3_r[3];
  assign N120 = N119 & pre_roundup_3_r[4];
  assign N119 = N118 & pre_roundup_3_r[5];
  assign N118 = N117 & pre_roundup_3_r[6];
  assign N117 = N116 & pre_roundup_3_r[7];
  assign N116 = N115 & pre_roundup_3_r[8];
  assign N115 = round_up_3_r & pre_roundup_3_r[9];
  assign N41 = a_sig_nan_3_r | b_sig_nan_3_r;
  assign N42 = a_nan_3_r | b_nan_3_r;
  assign N43 = a_zero_3_r | b_zero_3_r;
  assign N44 = a_denormal_3_r & b_denormal_3_r;
  assign N45 = a_denormal_3_r | b_denormal_3_r;
  assign N46 = N101 | final_exp_3_r[5];
  assign N47 = N100 & N124;
  assign N124 = pre_roundup_3_r[10] | carry_into_exp;
  assign N48 = N96 & N125;
  assign N125 = ~carry_into_exp;
  assign N49 = N42 | N41;
  assign N50 = a_infty_3_r | N49;
  assign N51 = b_infty_3_r | N50;
  assign N52 = N43 | N51;
  assign N53 = N44 | N52;
  assign N54 = N45 | N53;
  assign N55 = N103 | N54;
  assign N56 = N46 | N55;
  assign N57 = N47 | N56;
  assign N58 = N48 | N57;
  assign N59 = ~N58;
  assign N60 = ~b_zero_3_r;
  assign N62 = ~a_zero_3_r;
  assign N64 = ~N41;
  assign N65 = N42 & N64;
  assign N66 = ~N42;
  assign N67 = N64 & N66;
  assign N68 = a_infty_3_r & N67;
  assign N69 = ~a_infty_3_r;
  assign N70 = N67 & N69;
  assign N71 = b_infty_3_r & N70;
  assign N72 = ~b_infty_3_r;
  assign N73 = N70 & N72;
  assign N74 = N43 & N73;
  assign N75 = ~N43;
  assign N76 = N73 & N75;
  assign N77 = N44 & N76;
  assign N78 = ~N44;
  assign N79 = N76 & N78;
  assign N80 = N45 & N79;
  assign N81 = ~N45;
  assign N82 = N79 & N81;
  assign N83 = N103 & N82;
  assign N84 = N82 & N102;
  assign N85 = N46 & N84;
  assign N86 = ~N46;
  assign N87 = N84 & N86;
  assign N88 = N47 & N87;
  assign N89 = ~N47;
  assign N90 = N87 & N89;
  assign N91 = N48 & N90;

  always @(posedge clk_i) begin
    if(N20) begin
      { man_a_norm_r[10:0] } <= { 1'b1, man_a[9:0] };
      { man_b_norm_r[10:0] } <= { 1'b1, man_b[9:0] };
      final_sign_1_r <= final_sign;
      { exp_sum_unbiased_1_r[4:0] } <= { exp_sum_unbiased[4:4], exp_sum[3:0] };
      a_sig_nan_1_r <= a_sig_nan;
      b_sig_nan_1_r <= b_sig_nan;
      a_nan_1_r <= a_nan;
      b_nan_1_r <= b_nan;
      a_infty_1_r <= a_infty;
      b_infty_1_r <= b_infty;
      a_zero_1_r <= a_zero;
      b_zero_1_r <= b_zero;
      a_denormal_1_r <= a_denormal;
      b_denormal_1_r <= b_denormal;
      { exp_sum_1_r[5:4] } <= { exp_sum[5:4] };
    end 
    if(N18) begin
      v_1_r <= N19;
    end 
    if(N28) begin
      { exp_sum_2_r[5:4] } <= { exp_sum_1_r[5:4] };
      final_sign_2_r <= final_sign_1_r;
      { man_prod_2_r[21:0] } <= { man_prod[21:0] };
      { exp_sum_unbiased_2_r[4:0] } <= { exp_sum_unbiased_1_r[4:0] };
      a_sig_nan_2_r <= a_sig_nan_1_r;
      b_sig_nan_2_r <= b_sig_nan_1_r;
      a_nan_2_r <= a_nan_1_r;
      b_nan_2_r <= b_nan_1_r;
      a_infty_2_r <= a_infty_1_r;
      b_infty_2_r <= b_infty_1_r;
      a_zero_2_r <= a_zero_1_r;
      b_zero_2_r <= b_zero_1_r;
      a_denormal_2_r <= a_denormal_1_r;
      b_denormal_2_r <= b_denormal_1_r;
    end 
    if(N26) begin
      v_2_r <= N27;
    end 
    if(N39) begin
      { exp_sum_3_r[5:4] } <= { exp_sum_2_r[5:4] };
      { final_exp_3_r[5:5] } <= { final_exp[5:5] };
      { pre_roundup_3_r[14:0] } <= { final_exp[4:0], shifted_mantissa[9:0] };
      round_up_3_r <= round_up;
      final_sign_3_r <= final_sign_2_r;
      a_sig_nan_3_r <= a_sig_nan_2_r;
      b_sig_nan_3_r <= b_sig_nan_2_r;
      a_nan_3_r <= a_nan_2_r;
      b_nan_3_r <= b_nan_2_r;
      a_infty_3_r <= a_infty_2_r;
      b_infty_3_r <= b_infty_2_r;
      a_zero_3_r <= a_zero_2_r;
      b_zero_3_r <= b_zero_2_r;
      a_denormal_3_r <= a_denormal_2_r;
      b_denormal_3_r <= b_denormal_2_r;
    end 
    if(N37) begin
      v_o <= N38;
    end 
  end


endmodule

