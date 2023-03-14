

module top
(
  clk_i,
  reset_i,
  v_i,
  ready_and_o,
  zero_divisor_i,
  signed_div_r_i,
  adder1_result_is_neg_i,
  adder2_result_is_neg_i,
  opA_is_neg_i,
  opC_is_neg_i,
  opA_sel_o,
  opA_ld_o,
  opA_inv_o,
  opA_clr_l_o,
  opB_sel_o,
  opB_ld_o,
  opB_inv_o,
  opB_clr_l_o,
  opC_sel_o,
  opC_ld_o,
  latch_signed_div_o,
  adder1_cin_o,
  v_o,
  yumi_i
);

  output [1:0] opA_sel_o;
  output [2:0] opB_sel_o;
  output [2:0] opC_sel_o;
  input clk_i;
  input reset_i;
  input v_i;
  input zero_divisor_i;
  input signed_div_r_i;
  input adder1_result_is_neg_i;
  input adder2_result_is_neg_i;
  input opA_is_neg_i;
  input opC_is_neg_i;
  input yumi_i;
  output ready_and_o;
  output opA_ld_o;
  output opA_inv_o;
  output opA_clr_l_o;
  output opB_ld_o;
  output opB_inv_o;
  output opB_clr_l_o;
  output opC_ld_o;
  output latch_signed_div_o;
  output adder1_cin_o;
  output v_o;

  bsg_idiv_iterative_controller
  wrapper
  (
    .opA_sel_o(opA_sel_o),
    .opB_sel_o(opB_sel_o),
    .opC_sel_o(opC_sel_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .zero_divisor_i(zero_divisor_i),
    .signed_div_r_i(signed_div_r_i),
    .adder1_result_is_neg_i(adder1_result_is_neg_i),
    .adder2_result_is_neg_i(adder2_result_is_neg_i),
    .opA_is_neg_i(opA_is_neg_i),
    .opC_is_neg_i(opC_is_neg_i),
    .yumi_i(yumi_i),
    .ready_and_o(ready_and_o),
    .opA_ld_o(opA_ld_o),
    .opA_inv_o(opA_inv_o),
    .opA_clr_l_o(opA_clr_l_o),
    .opB_ld_o(opB_ld_o),
    .opB_inv_o(opB_inv_o),
    .opB_clr_l_o(opB_clr_l_o),
    .opC_ld_o(opC_ld_o),
    .latch_signed_div_o(latch_signed_div_o),
    .adder1_cin_o(adder1_cin_o),
    .v_o(v_o)
  );


endmodule



module bsg_idiv_iterative_controller
(
  clk_i,
  reset_i,
  v_i,
  ready_and_o,
  zero_divisor_i,
  signed_div_r_i,
  adder1_result_is_neg_i,
  adder2_result_is_neg_i,
  opA_is_neg_i,
  opC_is_neg_i,
  opA_sel_o,
  opA_ld_o,
  opA_inv_o,
  opA_clr_l_o,
  opB_sel_o,
  opB_ld_o,
  opB_inv_o,
  opB_clr_l_o,
  opC_sel_o,
  opC_ld_o,
  latch_signed_div_o,
  adder1_cin_o,
  v_o,
  yumi_i
);

  output [1:0] opA_sel_o;
  output [2:0] opB_sel_o;
  output [2:0] opC_sel_o;
  input clk_i;
  input reset_i;
  input v_i;
  input zero_divisor_i;
  input signed_div_r_i;
  input adder1_result_is_neg_i;
  input adder2_result_is_neg_i;
  input opA_is_neg_i;
  input opC_is_neg_i;
  input yumi_i;
  output ready_and_o;
  output opA_ld_o;
  output opA_inv_o;
  output opA_clr_l_o;
  output opB_ld_o;
  output opB_inv_o;
  output opB_clr_l_o;
  output opC_ld_o;
  output latch_signed_div_o;
  output adder1_cin_o;
  output v_o;
  wire [1:0] opA_sel_o;
  wire [2:0] opB_sel_o,opC_sel_o;
  wire ready_and_o,opA_ld_o,opA_inv_o,opA_clr_l_o,opB_ld_o,opB_inv_o,opB_clr_l_o,
  opC_ld_o,latch_signed_div_o,adder1_cin_o,v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,
  add1_neg_last_r,neg_ld,N12,q_neg_r,N13,r_neg_r,calc_up_li,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,
  N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,
  N100,N101,N102,N104,N105,N106,N107,N108,N109,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126;
  wire [5:0] state,calc_cnt;
  wire [3:0] next_state;
  reg add1_neg_last_r_sv2v_reg,r_neg_r_sv2v_reg,q_neg_r_sv2v_reg,state_5_sv2v_reg,
  state_4_sv2v_reg,state_3_sv2v_reg,state_2_sv2v_reg,state_1_sv2v_reg,
  state_0_sv2v_reg;
  assign add1_neg_last_r = add1_neg_last_r_sv2v_reg;
  assign r_neg_r = r_neg_r_sv2v_reg;
  assign q_neg_r = q_neg_r_sv2v_reg;
  assign state[5] = state_5_sv2v_reg;
  assign state[4] = state_4_sv2v_reg;
  assign state[3] = state_3_sv2v_reg;
  assign state[2] = state_2_sv2v_reg;
  assign state[1] = state_1_sv2v_reg;
  assign state[0] = state_0_sv2v_reg;

  bsg_counter_clear_up
  calc_counter
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(N124),
    .up_i(calc_up_li),
    .count_o(calc_cnt)
  );

  assign N17 = N15 & N16;
  assign N20 = N104 & N111;
  assign N21 = N18 & N19;
  assign N22 = N20 & N21;
  assign N23 = state[3] | state[2];
  assign N24 = state[1] | N19;
  assign N25 = N23 | N24;
  assign N27 = state[3] | state[2];
  assign N28 = N18 | state[0];
  assign N29 = N27 | N28;
  assign N31 = state[3] | state[2];
  assign N32 = N18 | N19;
  assign N33 = N31 | N32;
  assign N35 = state[3] | N111;
  assign N36 = state[1] | state[0];
  assign N37 = N35 | N36;
  assign N39 = state[3] | N111;
  assign N40 = state[1] | N19;
  assign N41 = N39 | N40;
  assign N43 = state[3] | N111;
  assign N44 = N18 | state[0];
  assign N45 = N43 | N44;
  assign N47 = state[3] | N111;
  assign N48 = N18 | N19;
  assign N49 = N47 | N48;
  assign N51 = N104 | state[2];
  assign N52 = state[1] | state[0];
  assign N53 = N51 | N52;
  assign N98 = state[4] | state[5];
  assign N99 = state[3] | N98;
  assign N100 = state[2] | N99;
  assign N101 = state[1] | N100;
  assign N102 = state[0] | N101;
  assign ready_and_o = ~N102;
  assign N104 = ~state[3];
  assign N105 = state[4] | state[5];
  assign N106 = N104 | N105;
  assign N107 = state[2] | N106;
  assign N108 = state[1] | N107;
  assign N109 = state[0] | N108;
  assign v_o = ~N109;
  assign N111 = ~state[2];
  assign N112 = state[4] | state[5];
  assign N113 = state[3] | N112;
  assign N114 = N111 | N113;
  assign N115 = state[1] | N114;
  assign N116 = state[0] | N115;
  assign N117 = ~N116;
  assign N118 = ~calc_cnt[5];
  assign N119 = calc_cnt[4] | N118;
  assign N120 = calc_cnt[3] | N119;
  assign N121 = calc_cnt[2] | N120;
  assign N122 = calc_cnt[1] | N121;
  assign N123 = calc_cnt[0] | N122;
  assign N124 = ~N123;
  assign N56 = ~N13;
  assign { N62, N61 } = (N0)? { N60, adder1_result_is_neg_i } : 
                        (N1)? { 1'b0, 1'b0 } : 1'b0;
  assign N0 = N59;
  assign N1 = N58;
  assign N64 = ~N63;
  assign { N76, N75 } = (N2)? { 1'b0, N55 } : 
                        (N3)? { 1'b0, 1'b1 } : 
                        (N4)? { 1'b1, 1'b0 } : 
                        (N5)? { 1'b0, 1'b1 } : 
                        (N6)? { 1'b0, 1'b1 } : 
                        (N7)? { 1'b0, 1'b1 } : 
                        (N8)? { 1'b0, 1'b1 } : 
                        (N9)? { 1'b1, 1'b0 } : 
                        (N10)? { 1'b0, 1'b1 } : 
                        (N74)? { 1'b0, 1'b1 } : 1'b0;
  assign N2 = N22;
  assign N3 = N26;
  assign N4 = N30;
  assign N5 = N34;
  assign N6 = N38;
  assign N7 = N42;
  assign N8 = N46;
  assign N9 = N50;
  assign N10 = N54;
  assign N79 = (N2)? v_i : 
               (N78)? 1'b0 : 1'b0;
  assign N80 = (N2)? v_i : 
               (N3)? N57 : 
               (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N6)? 1'b0 : 
               (N7)? 1'b0 : 
               (N8)? 1'b1 : 
               (N9)? 1'b0 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign N81 = (N2)? v_i : 
               (N3)? 1'b0 : 
               (N4)? 1'b1 : 
               (N5)? 1'b1 : 
               (N6)? 1'b1 : 
               (N7)? 1'b0 : 
               (N8)? 1'b0 : 
               (N9)? 1'b1 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign N82 = (N2)? v_i : 
               (N3)? 1'b0 : 
               (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N6)? 1'b0 : 
               (N7)? 1'b0 : 
               (N8)? 1'b0 : 
               (N9)? 1'b0 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign { N86, N85, N84, N83 } = (N2)? { 1'b0, 1'b0, 1'b0, v_i } : 
                                  (N3)? { 1'b0, 1'b0, 1'b1, N56 } : 
                                  (N4)? { 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                  (N5)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                                  (N6)? { 1'b0, 1'b1, N62, N61 } : 
                                  (N7)? { 1'b0, 1'b1, 1'b1, 1'b0 } : 
                                  (N8)? { N63, N64, N64, N64 } : 
                                  (N9)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                                  (N10)? { N65, 1'b0, 1'b0, 1'b0 } : 
                                  (N74)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N87 = (N2)? 1'b0 : 
               (N3)? 1'b1 : 
               (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N6)? 1'b0 : 
               (N7)? 1'b0 : 
               (N8)? 1'b1 : 
               (N9)? 1'b0 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign N88 = (N2)? N14 : 
               (N3)? 1'b1 : 
               (N4)? N14 : 
               (N5)? N14 : 
               (N6)? N14 : 
               (N7)? 1'b0 : 
               (N8)? N14 : 
               (N9)? N14 : 
               (N10)? N14 : 
               (N74)? N14 : 1'b0;
  assign N89 = (N2)? 1'b1 : 
               (N3)? 1'b0 : 
               (N4)? 1'b1 : 
               (N5)? 1'b0 : 
               (N6)? 1'b1 : 
               (N7)? 1'b1 : 
               (N8)? 1'b1 : 
               (N9)? 1'b1 : 
               (N10)? 1'b1 : 
               (N74)? 1'b1 : 1'b0;
  assign N90 = (N2)? 1'b0 : 
               (N3)? 1'b1 : 
               (N4)? 1'b0 : 
               (N5)? 1'b1 : 
               (N6)? 1'b1 : 
               (N7)? 1'b1 : 
               (N8)? 1'b1 : 
               (N9)? 1'b0 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign N91 = (N2)? 1'b0 : 
               (N3)? 1'b1 : 
               (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N6)? 1'b0 : 
               (N7)? 1'b0 : 
               (N8)? 1'b0 : 
               (N9)? 1'b0 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign N92 = (N2)? N14 : 
               (N3)? 1'b1 : 
               (N4)? 1'b1 : 
               (N5)? 1'b0 : 
               (N6)? N14 : 
               (N7)? 1'b0 : 
               (N8)? r_neg_r : 
               (N9)? 1'b1 : 
               (N10)? N14 : 
               (N74)? N14 : 1'b0;
  assign { N94, N93 } = (N2)? { 1'b0, 1'b1 } : 
                        (N3)? { 1'b0, 1'b0 } : 
                        (N4)? { 1'b0, 1'b1 } : 
                        (N5)? { 1'b0, 1'b1 } : 
                        (N6)? { N59, N58 } : 
                        (N7)? { 1'b1, 1'b0 } : 
                        (N8)? { 1'b0, 1'b0 } : 
                        (N9)? { 1'b0, 1'b1 } : 
                        (N10)? { 1'b0, 1'b1 } : 
                        (N74)? { 1'b0, 1'b1 } : 1'b0;
  assign N95 = (N2)? 1'b1 : 
               (N3)? 1'b1 : 
               (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N6)? 1'b1 : 
               (N7)? 1'b1 : 
               (N8)? 1'b0 : 
               (N9)? 1'b0 : 
               (N10)? 1'b1 : 
               (N74)? 1'b1 : 1'b0;
  assign N96 = (N2)? 1'b0 : 
               (N3)? 1'b0 : 
               (N4)? 1'b1 : 
               (N5)? 1'b0 : 
               (N6)? 1'b0 : 
               (N7)? 1'b0 : 
               (N8)? r_neg_r : 
               (N9)? 1'b1 : 
               (N10)? 1'b0 : 
               (N74)? 1'b0 : 1'b0;
  assign opA_clr_l_o = (N11)? N95 : 
                       (N97)? 1'b1 : 1'b0;
  assign N11 = N17;
  assign opB_inv_o = (N11)? N96 : 
                     (N97)? 1'b0 : 1'b0;
  assign opC_sel_o = (N11)? { N79, N76, N75 } : 
                     (N97)? { 1'b0, 1'b0, 1'b1 } : 1'b0;
  assign opA_ld_o = (N11)? N80 : 
                    (N97)? 1'b0 : 1'b0;
  assign opC_ld_o = (N11)? N81 : 
                    (N97)? 1'b0 : 1'b0;
  assign latch_signed_div_o = (N11)? N82 : 
                              (N97)? 1'b0 : 1'b0;
  assign next_state = (N11)? { N86, N85, N84, N83 } : 
                      (N97)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign opA_sel_o = (N11)? { N79, N87 } : 
                     (N97)? { 1'b0, 1'b0 } : 1'b0;
  assign opA_inv_o = (N11)? N88 : 
                     (N97)? N14 : 1'b0;
  assign opB_clr_l_o = (N11)? N89 : 
                       (N97)? 1'b1 : 1'b0;
  assign opB_ld_o = (N11)? N90 : 
                    (N97)? 1'b0 : 1'b0;
  assign neg_ld = (N11)? N91 : 
                  (N97)? 1'b0 : 1'b0;
  assign adder1_cin_o = (N11)? N92 : 
                        (N97)? N14 : 1'b0;
  assign opB_sel_o = (N11)? { N87, N94, N93 } : 
                     (N97)? { 1'b0, 1'b0, 1'b1 } : 1'b0;
  assign N12 = N125 & signed_div_r_i;
  assign N125 = opA_is_neg_i ^ opC_is_neg_i;
  assign N13 = opC_is_neg_i & signed_div_r_i;
  assign calc_up_li = N117 & N118;
  assign N14 = ~add1_neg_last_r;
  assign N15 = ~state[5];
  assign N16 = ~state[4];
  assign N18 = ~state[1];
  assign N19 = ~state[0];
  assign N26 = ~N25;
  assign N30 = ~N29;
  assign N34 = ~N33;
  assign N38 = ~N37;
  assign N42 = ~N41;
  assign N46 = ~N45;
  assign N50 = ~N49;
  assign N54 = ~N53;
  assign N55 = ~v_i;
  assign N57 = opA_is_neg_i & signed_div_r_i;
  assign N58 = ~N124;
  assign N59 = N124;
  assign N60 = ~adder1_result_is_neg_i;
  assign N63 = zero_divisor_i | N126;
  assign N126 = ~q_neg_r;
  assign N65 = ~yumi_i;
  assign N66 = N26 | N22;
  assign N67 = N30 | N66;
  assign N68 = N34 | N67;
  assign N69 = N38 | N68;
  assign N70 = N42 | N69;
  assign N71 = N46 | N70;
  assign N72 = N50 | N71;
  assign N73 = N54 | N72;
  assign N74 = ~N73;
  assign N77 = ~N22;
  assign N78 = N77;
  assign N97 = ~N17;

  always @(posedge clk_i) begin
    if(1'b1) begin
      add1_neg_last_r_sv2v_reg <= adder1_result_is_neg_i;
    end 
    if(neg_ld) begin
      r_neg_r_sv2v_reg <= N13;
      q_neg_r_sv2v_reg <= N12;
    end 
    if(reset_i) begin
      state_5_sv2v_reg <= 1'b0;
      state_4_sv2v_reg <= 1'b0;
      state_3_sv2v_reg <= 1'b0;
      state_2_sv2v_reg <= 1'b0;
      state_1_sv2v_reg <= 1'b0;
      state_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      state_5_sv2v_reg <= 1'b0;
      state_4_sv2v_reg <= 1'b0;
      state_3_sv2v_reg <= next_state[3];
      state_2_sv2v_reg <= next_state[2];
      state_1_sv2v_reg <= next_state[1];
      state_0_sv2v_reg <= next_state[0];
    end 
  end


endmodule

