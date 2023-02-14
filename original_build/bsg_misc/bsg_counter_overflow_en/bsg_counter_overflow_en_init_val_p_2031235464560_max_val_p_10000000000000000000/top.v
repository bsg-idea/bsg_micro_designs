

module top
(
  clk_i,
  reset_i,
  en_i,
  count_o,
  overflow_o
);

  output [31:0] count_o;
  input clk_i;
  input reset_i;
  input en_i;
  output overflow_o;

  bsg_counter_overflow_en
  wrapper
  (
    .count_o(count_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .en_i(en_i),
    .overflow_o(overflow_o)
  );


endmodule



module bsg_counter_overflow_en
(
  clk_i,
  reset_i,
  en_i,
  count_o,
  overflow_o
);

  output [31:0] count_o;
  input clk_i;
  input reset_i;
  input en_i;
  output overflow_o;
  wire overflow_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,
  N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,
  N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,
  N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,
  N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,
  N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109;
  reg [31:0] count_o;
  assign N72 = ~count_o[31];
  assign N73 = ~count_o[27];
  assign N74 = ~count_o[24];
  assign N75 = ~count_o[23];
  assign N76 = ~count_o[22];
  assign N77 = ~count_o[21];
  assign N78 = ~count_o[19];
  assign N79 = count_o[30] | N72;
  assign N80 = count_o[29] | N79;
  assign N81 = count_o[28] | N80;
  assign N82 = N73 | N81;
  assign N83 = count_o[26] | N82;
  assign N84 = count_o[25] | N83;
  assign N85 = N74 | N84;
  assign N86 = N75 | N85;
  assign N87 = N76 | N86;
  assign N88 = N77 | N87;
  assign N89 = count_o[20] | N88;
  assign N90 = N78 | N89;
  assign N91 = count_o[18] | N90;
  assign N92 = count_o[17] | N91;
  assign N93 = count_o[16] | N92;
  assign N94 = count_o[15] | N93;
  assign N95 = count_o[14] | N94;
  assign N96 = count_o[13] | N95;
  assign N97 = count_o[12] | N96;
  assign N98 = count_o[11] | N97;
  assign N99 = count_o[10] | N98;
  assign N100 = count_o[9] | N99;
  assign N101 = count_o[8] | N100;
  assign N102 = count_o[7] | N101;
  assign N103 = count_o[6] | N102;
  assign N104 = count_o[5] | N103;
  assign N105 = count_o[4] | N104;
  assign N106 = count_o[3] | N105;
  assign N107 = count_o[2] | N106;
  assign N108 = count_o[1] | N107;
  assign N109 = count_o[0] | N108;
  assign overflow_o = ~N109;
  assign { N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } = count_o + 1'b1;
  assign N37 = (N0)? 1'b1 : 
               (N71)? 1'b1 : 
               (N3)? 1'b0 : 1'b0;
  assign N0 = N1;
  assign { N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38 } = (N0)? { 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N71)? { N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } : 1'b0;
  assign N1 = reset_i | overflow_o;
  assign N2 = en_i | N1;
  assign N3 = ~N2;
  assign N4 = N71;
  assign N70 = ~N1;
  assign N71 = en_i & N70;

  always @(posedge clk_i) begin
    if(N37) begin
      { count_o[31:0] } <= { N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38 };
    end 
  end


endmodule

