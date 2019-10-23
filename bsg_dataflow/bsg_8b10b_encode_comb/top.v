

module top
(
  data_i,
  k_i,
  rd_i,
  data_o,
  rd_o,
  kerr_o
);

  input [7:0] data_i;
  output [9:0] data_o;
  input k_i;
  input rd_i;
  output rd_o;
  output kerr_o;

  bsg_8b10b_encode_comb
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .k_i(k_i),
    .rd_i(rd_i),
    .rd_o(rd_o),
    .kerr_o(kerr_o)
  );


endmodule



module bsg_8b10b_encode_comb
(
  data_i,
  k_i,
  rd_i,
  data_o,
  rd_o,
  kerr_o
);

  input [7:0] data_i;
  output [9:0] data_o;
  input k_i;
  input rd_i;
  output rd_o;
  output kerr_o;
  wire [9:0] data_o;
  wire rd_o,kerr_o,AxorB,CxorD,AandB,CandD,NAandNB,NCandND,L22,L40,L04,L13,L31,FxorG,
  FandG,NFandNG,NFandNGandNH,FxorGandK,FxorGandNH,FandGandH,S,T0,PDM1S6,PD0S6,
  NDM1S6,PDM1S4,COMPLS6,NDL6,COMPLS4,N1,N2,N3,N4,N5,T1,N6,N7,N9,N0,N8,N10,N11,N12,N13,
  N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,
  N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,
  N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,
  N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86;
  assign AxorB = data_i[0] ^ data_i[1];
  assign CxorD = data_i[2] ^ data_i[3];
  assign AandB = data_i[0] & data_i[1];
  assign CandD = data_i[2] & data_i[3];
  assign NAandNB = N0 & N8;
  assign N0 = ~data_i[0];
  assign N8 = ~data_i[1];
  assign NCandND = N10 & N11;
  assign N10 = ~data_i[2];
  assign N11 = ~data_i[3];
  assign L22 = N14 | N15;
  assign N14 = N12 | N13;
  assign N12 = AandB & NCandND;
  assign N13 = CandD & NAandNB;
  assign N15 = AxorB & CxorD;
  assign L40 = AandB & CandD;
  assign L04 = NAandNB & NCandND;
  assign L13 = N16 | N17;
  assign N16 = AxorB & NCandND;
  assign N17 = CxorD & NAandNB;
  assign L31 = N18 | N19;
  assign N18 = AxorB & CandD;
  assign N19 = CxorD & AandB;
  assign FxorG = data_i[5] ^ data_i[6];
  assign FandG = data_i[5] & data_i[6];
  assign NFandNG = N20 & N21;
  assign N20 = ~data_i[5];
  assign N21 = ~data_i[6];
  assign NFandNGandNH = NFandNG & N22;
  assign N22 = ~data_i[7];
  assign FxorGandK = FxorG & k_i;
  assign FxorGandNH = FxorG & N22;
  assign FandGandH = FandG & data_i[7];
  assign S = N26 | N30;
  assign N26 = N24 & N25;
  assign N24 = N23 & data_i[3];
  assign N23 = rd_i & L31;
  assign N25 = ~data_i[4];
  assign N30 = N29 & data_i[4];
  assign N29 = N28 & N11;
  assign N28 = N27 & L13;
  assign N27 = ~rd_i;
  assign T0 = N31 & data_i[4];
  assign N31 = L13 & data_i[3];
  assign PDM1S6 = T0 | N35;
  assign N35 = N34 & N25;
  assign N34 = N32 & N33;
  assign N32 = ~L22;
  assign N33 = ~L31;
  assign PD0S6 = N38 | k_i;
  assign N38 = N36 & N37;
  assign N36 = data_i[4] & N32;
  assign N37 = ~L13;
  assign NDM1S6 = N40 | PD0S6;
  assign N40 = N39 & N25;
  assign N39 = L31 & N11;
  assign PDM1S4 = NFandNG | FxorGandK;
  assign COMPLS6 = N41 | N42;
  assign N41 = NDM1S6 & rd_i;
  assign N42 = N27 & PDM1S6;
  assign NDL6 = N46 | N50;
  assign N46 = N44 | N45;
  assign N44 = PD0S6 & N43;
  assign N43 = ~COMPLS6;
  assign N45 = COMPLS6 & PDM1S6;
  assign N50 = N49 & rd_i;
  assign N49 = N47 & N48;
  assign N47 = ~PDM1S6;
  assign N48 = ~PD0S6;
  assign COMPLS4 = N51 | N53;
  assign N51 = FandG & NDL6;
  assign N53 = N52 & PDM1S4;
  assign N52 = ~NDL6;
  assign rd_o = N59 | N61;
  assign N59 = N57 | N58;
  assign N57 = N55 & N56;
  assign N55 = NDL6 & N54;
  assign N54 = ~FandGandH;
  assign N56 = ~NFandNG;
  assign N58 = NFandNG & COMPLS4;
  assign N61 = N60 & FandGandH;
  assign N60 = ~COMPLS4;
  assign N1 = N63 | L04;
  assign N63 = N62 & data_i[1];
  assign N62 = ~L40;
  assign N2 = N64 | T0;
  assign N64 = L04 | data_i[2];
  assign N3 = data_i[3] & N62;
  assign N4 = N66 | N67;
  assign N66 = N65 & data_i[4];
  assign N65 = ~T0;
  assign N67 = N25 & L13;
  assign N5 = N74 | N76;
  assign N74 = N72 | N73;
  assign N72 = N70 | N71;
  assign N70 = N68 | N69;
  assign N68 = N25 & L22;
  assign N69 = L22 & k_i;
  assign N71 = L04 & data_i[4];
  assign N73 = data_i[4] & L40;
  assign N76 = N75 & N11;
  assign N75 = data_i[4] & L13;
  assign data_o[0] = data_i[0] ^ COMPLS6;
  assign data_o[1] = N1 ^ COMPLS6;
  assign data_o[2] = N2 ^ COMPLS6;
  assign data_o[3] = N3 ^ COMPLS6;
  assign data_o[4] = N4 ^ COMPLS6;
  assign data_o[5] = N5 ^ COMPLS6;
  assign T1 = N77 | N78;
  assign N77 = S & FandGandH;
  assign N78 = FandGandH & k_i;
  assign N6 = ~N79;
  assign N79 = N20 | T1;
  assign N7 = data_i[6] | NFandNGandNH;
  assign N9 = T1 | FxorGandNH;
  assign data_o[6] = N6 ^ COMPLS4;
  assign data_o[7] = N7 ^ COMPLS4;
  assign data_o[8] = data_i[7] ^ COMPLS4;
  assign data_o[9] = N9 ^ COMPLS4;
  assign kerr_o = N83 & N86;
  assign N83 = k_i & N82;
  assign N82 = ~N81;
  assign N81 = N80 & data_i[4];
  assign N80 = NAandNB & CandD;
  assign N86 = ~N85;
  assign N85 = N84 & L31;
  assign N84 = FandGandH & data_i[4];

endmodule

