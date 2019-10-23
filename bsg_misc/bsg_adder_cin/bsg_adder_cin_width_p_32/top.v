

module top
(
  a_i,
  b_i,
  cin_i,
  o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] o;
  input cin_i;

  bsg_adder_cin
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .o(o),
    .cin_i(cin_i)
  );


endmodule



module bsg_adder_cin
(
  a_i,
  b_i,
  cin_i,
  o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] o;
  input cin_i;
  wire [31:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31;
  assign { N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0 } = a_i + b_i;
  assign o = { N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0 } + cin_i;

endmodule

