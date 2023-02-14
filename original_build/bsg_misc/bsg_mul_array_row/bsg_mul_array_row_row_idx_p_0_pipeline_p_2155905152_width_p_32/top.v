

module top
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [0:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [1:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;

  bsg_mul_array_row
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .s_i(s_i),
    .prod_accum_i(prod_accum_i),
    .a_o(a_o),
    .b_o(b_o),
    .s_o(s_o),
    .prod_accum_o(prod_accum_o),
    .clk_i(clk_i),
    .rst_i(rst_i),
    .v_i(v_i),
    .c_i(c_i),
    .c_o(c_o)
  );


endmodule



module bsg_and_width_p32
(
  a_i,
  b_i,
  o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] o;
  wire [31:0] o;
  assign o[31] = a_i[31] & b_i[31];
  assign o[30] = a_i[30] & b_i[30];
  assign o[29] = a_i[29] & b_i[29];
  assign o[28] = a_i[28] & b_i[28];
  assign o[27] = a_i[27] & b_i[27];
  assign o[26] = a_i[26] & b_i[26];
  assign o[25] = a_i[25] & b_i[25];
  assign o[24] = a_i[24] & b_i[24];
  assign o[23] = a_i[23] & b_i[23];
  assign o[22] = a_i[22] & b_i[22];
  assign o[21] = a_i[21] & b_i[21];
  assign o[20] = a_i[20] & b_i[20];
  assign o[19] = a_i[19] & b_i[19];
  assign o[18] = a_i[18] & b_i[18];
  assign o[17] = a_i[17] & b_i[17];
  assign o[16] = a_i[16] & b_i[16];
  assign o[15] = a_i[15] & b_i[15];
  assign o[14] = a_i[14] & b_i[14];
  assign o[13] = a_i[13] & b_i[13];
  assign o[12] = a_i[12] & b_i[12];
  assign o[11] = a_i[11] & b_i[11];
  assign o[10] = a_i[10] & b_i[10];
  assign o[9] = a_i[9] & b_i[9];
  assign o[8] = a_i[8] & b_i[8];
  assign o[7] = a_i[7] & b_i[7];
  assign o[6] = a_i[6] & b_i[6];
  assign o[5] = a_i[5] & b_i[5];
  assign o[4] = a_i[4] & b_i[4];
  assign o[3] = a_i[3] & b_i[3];
  assign o[2] = a_i[2] & b_i[2];
  assign o[1] = a_i[1] & b_i[1];
  assign o[0] = a_i[0] & b_i[0];

endmodule



module bsg_adder_ripple_carry_width_p32
(
  a_i,
  b_i,
  s_o,
  c_o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] s_o;
  output c_o;
  wire [31:0] s_o;
  wire c_o;
  assign { c_o, s_o } = a_i + b_i;

endmodule



module bsg_mul_array_row
(
  clk_i,
  rst_i,
  v_i,
  a_i,
  b_i,
  s_i,
  c_i,
  prod_accum_i,
  a_o,
  b_o,
  s_o,
  c_o,
  prod_accum_o
);

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] s_i;
  input [0:0] prod_accum_i;
  output [31:0] a_o;
  output [31:0] b_o;
  output [31:0] s_o;
  output [1:0] prod_accum_o;
  input clk_i;
  input rst_i;
  input v_i;
  input c_i;
  output c_o;
  wire N0,N1,pc,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103,N104;
  wire [31:0] pp,ps;
  reg [1:0] prod_accum_o;
  reg [31:0] a_o,b_o,s_o;
  reg c_o;

  bsg_and_width_p32
  and0
  (
    .a_i(a_i),
    .b_i({ b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1], b_i[1:1] }),
    .o(pp)
  );


  bsg_adder_ripple_carry_width_p32
  adder0
  (
    .a_i(pp),
    .b_i({ c_i, s_i[31:1] }),
    .s_o(ps),
    .c_o(pc)
  );

  assign { N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                       (N1)? a_i : 1'b0;
  assign N0 = rst_i;
  assign N1 = N2;
  assign { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N1)? b_i : 1'b0;
  assign { N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N1)? ps : 1'b0;
  assign N99 = (N0)? 1'b0 : 
               (N1)? pc : 1'b0;
  assign { N101, N100 } = (N0)? { 1'b0, 1'b0 } : 
                          (N1)? { ps[0:0], prod_accum_i[0:0] } : 1'b0;
  assign N2 = ~rst_i;
  assign N102 = ~v_i;
  assign N103 = N102 & N2;
  assign N104 = ~N103;

  always @(posedge clk_i) begin
    if(N104) begin
      { prod_accum_o[1:0] } <= { N101, N100 };
      { a_o[31:0] } <= { N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 };
      { b_o[31:0] } <= { N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35 };
      { s_o[31:0] } <= { N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67 };
      c_o <= N99;
    end 
  end


endmodule

