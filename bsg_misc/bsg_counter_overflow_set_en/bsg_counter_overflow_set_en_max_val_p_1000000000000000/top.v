

module top
(
  clk_i,
  en_i,
  set_i,
  val_i,
  count_o,
  overflow_o
);

  input [31:0] val_i;
  output [31:0] count_o;
  input clk_i;
  input en_i;
  input set_i;
  output overflow_o;

  bsg_counter_overflow_set_en
  wrapper
  (
    .val_i(val_i),
    .count_o(count_o),
    .clk_i(clk_i),
    .en_i(en_i),
    .set_i(set_i),
    .overflow_o(overflow_o)
  );


endmodule



module bsg_counter_overflow_set_en
(
  clk_i,
  en_i,
  set_i,
  val_i,
  count_o,
  overflow_o
);

  input [31:0] val_i;
  output [31:0] count_o;
  input clk_i;
  input en_i;
  input set_i;
  output overflow_o;
  wire overflow_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,
  N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,
  N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,
  N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,
  N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,
  N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112;
  reg [31:0] count_o;
  assign N74 = ~count_o[31];
  assign N75 = ~count_o[29];
  assign N76 = ~count_o[26];
  assign N77 = ~count_o[23];
  assign N78 = ~count_o[22];
  assign N79 = ~count_o[18];
  assign N80 = ~count_o[17];
  assign N81 = ~count_o[15];
  assign N82 = count_o[30] | N74;
  assign N83 = N75 | N82;
  assign N84 = count_o[28] | N83;
  assign N85 = count_o[27] | N84;
  assign N86 = N76 | N85;
  assign N87 = count_o[25] | N86;
  assign N88 = count_o[24] | N87;
  assign N89 = N77 | N88;
  assign N90 = N78 | N89;
  assign N91 = count_o[21] | N90;
  assign N92 = count_o[20] | N91;
  assign N93 = count_o[19] | N92;
  assign N94 = N79 | N93;
  assign N95 = N80 | N94;
  assign N96 = count_o[16] | N95;
  assign N97 = N81 | N96;
  assign N98 = count_o[14] | N97;
  assign N99 = count_o[13] | N98;
  assign N100 = count_o[12] | N99;
  assign N101 = count_o[11] | N100;
  assign N102 = count_o[10] | N101;
  assign N103 = count_o[9] | N102;
  assign N104 = count_o[8] | N103;
  assign N105 = count_o[7] | N104;
  assign N106 = count_o[6] | N105;
  assign N107 = count_o[5] | N106;
  assign N108 = count_o[4] | N107;
  assign N109 = count_o[3] | N108;
  assign N110 = count_o[2] | N109;
  assign N111 = count_o[1] | N110;
  assign N112 = count_o[0] | N111;
  assign overflow_o = ~N112;
  assign { N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } = count_o + 1'b1;
  assign N37 = (N0)? 1'b1 : 
               (N71)? 1'b1 : 
               (N73)? 1'b1 : 
               (N3)? 1'b0 : 1'b0;
  assign N0 = set_i;
  assign { N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38 } = (N0)? val_i : 
                                                                                                                                                                              (N71)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N73)? { N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } : 1'b0;
  assign N1 = overflow_o | set_i;
  assign N2 = en_i | N1;
  assign N3 = ~N2;
  assign N4 = N73;
  assign N70 = ~set_i;
  assign N71 = overflow_o & N70;
  assign N72 = N70 & N112;
  assign N73 = en_i & N72;

  always @(posedge clk_i) begin
    if(N37) begin
      { count_o[31:0] } <= { N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38 };
    end 
  end


endmodule

