

module top
(
  i,
  o
);

  input [63:0] i;
  output o;

  bsg_reduce
  wrapper
  (
    .i(i),
    .o(o)
  );


endmodule



module bsg_reduce
(
  i,
  o
);

  input [63:0] i;
  output o;
  wire o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61;
  assign o = N61 | i[0];
  assign N61 = N60 | i[1];
  assign N60 = N59 | i[2];
  assign N59 = N58 | i[3];
  assign N58 = N57 | i[4];
  assign N57 = N56 | i[5];
  assign N56 = N55 | i[6];
  assign N55 = N54 | i[7];
  assign N54 = N53 | i[8];
  assign N53 = N52 | i[9];
  assign N52 = N51 | i[10];
  assign N51 = N50 | i[11];
  assign N50 = N49 | i[12];
  assign N49 = N48 | i[13];
  assign N48 = N47 | i[14];
  assign N47 = N46 | i[15];
  assign N46 = N45 | i[16];
  assign N45 = N44 | i[17];
  assign N44 = N43 | i[18];
  assign N43 = N42 | i[19];
  assign N42 = N41 | i[20];
  assign N41 = N40 | i[21];
  assign N40 = N39 | i[22];
  assign N39 = N38 | i[23];
  assign N38 = N37 | i[24];
  assign N37 = N36 | i[25];
  assign N36 = N35 | i[26];
  assign N35 = N34 | i[27];
  assign N34 = N33 | i[28];
  assign N33 = N32 | i[29];
  assign N32 = N31 | i[30];
  assign N31 = N30 | i[31];
  assign N30 = N29 | i[32];
  assign N29 = N28 | i[33];
  assign N28 = N27 | i[34];
  assign N27 = N26 | i[35];
  assign N26 = N25 | i[36];
  assign N25 = N24 | i[37];
  assign N24 = N23 | i[38];
  assign N23 = N22 | i[39];
  assign N22 = N21 | i[40];
  assign N21 = N20 | i[41];
  assign N20 = N19 | i[42];
  assign N19 = N18 | i[43];
  assign N18 = N17 | i[44];
  assign N17 = N16 | i[45];
  assign N16 = N15 | i[46];
  assign N15 = N14 | i[47];
  assign N14 = N13 | i[48];
  assign N13 = N12 | i[49];
  assign N12 = N11 | i[50];
  assign N11 = N10 | i[51];
  assign N10 = N9 | i[52];
  assign N9 = N8 | i[53];
  assign N8 = N7 | i[54];
  assign N7 = N6 | i[55];
  assign N6 = N5 | i[56];
  assign N5 = N4 | i[57];
  assign N4 = N3 | i[58];
  assign N3 = N2 | i[59];
  assign N2 = N1 | i[60];
  assign N1 = N0 | i[61];
  assign N0 = i[63] | i[62];

endmodule

