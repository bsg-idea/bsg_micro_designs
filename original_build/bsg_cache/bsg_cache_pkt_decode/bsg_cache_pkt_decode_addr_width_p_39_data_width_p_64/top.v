

module top
(
  cache_pkt_i,
  decode_o
);

  input [115:0] cache_pkt_i;
  output [15:0] decode_o;

  bsg_cache_pkt_decode
  wrapper
  (
    .cache_pkt_i(cache_pkt_i),
    .decode_o(decode_o)
  );


endmodule



module bsg_cache_pkt_decode
(
  cache_pkt_i,
  decode_o
);

  input [115:0] cache_pkt_i;
  output [15:0] decode_o;
  wire [15:0] decode_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N42,
  N43,N44,N46,N48,N49,N50,N51,N52,N54,N56,N57,N59,N61,N62,N63,N64,N66,N67,N68,N69,
  N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,
  N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,
  N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,
  N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135;
  assign N7 = cache_pkt_i[114] | cache_pkt_i[113];
  assign N8 = N42 | N36;
  assign N9 = N7 | N8;
  assign N10 = N48 | cache_pkt_i[113];
  assign N11 = N10 | N8;
  assign N12 = cache_pkt_i[114] | N61;
  assign N13 = N12 | N8;
  assign N15 = N42 | cache_pkt_i[111];
  assign N16 = N7 | N15;
  assign N17 = N10 | N15;
  assign N18 = N12 | N15;
  assign N20 = cache_pkt_i[112] | N36;
  assign N21 = N7 | N20;
  assign N22 = N10 | N20;
  assign N23 = N12 | N20;
  assign N25 = N48 & N61;
  assign N26 = N42 & N36;
  assign N27 = N25 & N26;
  assign N28 = cache_pkt_i[112] | cache_pkt_i[111];
  assign N29 = N10 | N28;
  assign N30 = N12 | N28;
  assign N32 = cache_pkt_i[114] & cache_pkt_i[113];
  assign N35 = ~cache_pkt_i[115];
  assign N36 = ~cache_pkt_i[111];
  assign N37 = cache_pkt_i[114] | N35;
  assign N38 = cache_pkt_i[113] | N37;
  assign N39 = cache_pkt_i[112] | N38;
  assign N40 = N36 | N39;
  assign decode_o[8] = ~N40;
  assign N42 = ~cache_pkt_i[112];
  assign N43 = N42 | N38;
  assign N44 = cache_pkt_i[111] | N43;
  assign decode_o[7] = ~N44;
  assign N46 = N36 | N43;
  assign decode_o[6] = ~N46;
  assign N48 = ~cache_pkt_i[114];
  assign N49 = N48 | N35;
  assign N50 = cache_pkt_i[113] | N49;
  assign N51 = cache_pkt_i[112] | N50;
  assign N52 = cache_pkt_i[111] | N51;
  assign decode_o[5] = ~N52;
  assign N54 = N36 | N51;
  assign decode_o[4] = ~N54;
  assign N56 = N42 | N50;
  assign N57 = cache_pkt_i[111] | N56;
  assign decode_o[3] = ~N57;
  assign N59 = N36 | N56;
  assign decode_o[2] = ~N59;
  assign N61 = ~cache_pkt_i[113];
  assign N62 = N61 | N49;
  assign N63 = cache_pkt_i[112] | N62;
  assign N64 = cache_pkt_i[111] | N63;
  assign decode_o[1] = ~N64;
  assign N66 = cache_pkt_i[114] | cache_pkt_i[115];
  assign N67 = cache_pkt_i[113] | N66;
  assign N68 = cache_pkt_i[112] | N67;
  assign N69 = cache_pkt_i[111] | N68;
  assign N70 = ~N69;
  assign N71 = N36 | N68;
  assign N72 = ~N71;
  assign N73 = N42 | N67;
  assign N74 = cache_pkt_i[111] | N73;
  assign N75 = ~N74;
  assign N76 = N36 | N73;
  assign N77 = ~N76;
  assign N78 = N48 | cache_pkt_i[115];
  assign N79 = N61 | N78;
  assign N80 = cache_pkt_i[112] | N79;
  assign N81 = cache_pkt_i[111] | N80;
  assign N82 = ~N81;
  assign N83 = N36 | N80;
  assign N84 = ~N83;
  assign N85 = N61 | N66;
  assign N86 = cache_pkt_i[112] | N85;
  assign N87 = cache_pkt_i[111] | N86;
  assign N88 = ~N87;
  assign N89 = N36 | N86;
  assign N90 = ~N89;
  assign N91 = N42 | N85;
  assign N92 = cache_pkt_i[111] | N91;
  assign N93 = ~N92;
  assign N94 = N36 | N91;
  assign N95 = ~N94;
  assign N96 = cache_pkt_i[113] | N78;
  assign N97 = cache_pkt_i[112] | N96;
  assign N98 = cache_pkt_i[111] | N97;
  assign N99 = ~N98;
  assign N100 = N36 | N97;
  assign N101 = ~N100;
  assign N102 = N42 | N96;
  assign N103 = cache_pkt_i[111] | N102;
  assign N104 = ~N103;
  assign N105 = N36 | N102;
  assign N106 = ~N105;
  assign N107 = cache_pkt_i[111] | N39;
  assign decode_o[9] = ~N107;
  assign { N34, N33 } = (N0)? { 1'b1, 1'b1 } : 
                        (N1)? { 1'b1, 1'b0 } : 
                        (N2)? { 1'b0, 1'b1 } : 
                        (N3)? { 1'b0, 1'b0 } : 
                        (N4)? { 1'b0, 1'b0 } : 1'b0;
  assign N0 = N14;
  assign N1 = N19;
  assign N2 = N24;
  assign N3 = N31;
  assign N4 = N32;
  assign decode_o[15:14] = (N5)? { N34, N33 } : 
                           (N6)? { 1'b0, 1'b0 } : 1'b0;
  assign N5 = N35;
  assign N6 = cache_pkt_i[115];
  assign N14 = N111 | N112;
  assign N111 = N109 | N110;
  assign N109 = ~N9;
  assign N110 = ~N11;
  assign N112 = ~N13;
  assign N19 = N115 | N116;
  assign N115 = N113 | N114;
  assign N113 = ~N16;
  assign N114 = ~N17;
  assign N116 = ~N18;
  assign N24 = N119 | N120;
  assign N119 = N117 | N118;
  assign N117 = ~N21;
  assign N118 = ~N22;
  assign N120 = ~N23;
  assign N31 = N122 | N123;
  assign N122 = N27 | N121;
  assign N121 = ~N29;
  assign N123 = ~N30;
  assign decode_o[12] = N82 | N84;
  assign decode_o[13] = N125 | N77;
  assign N125 = N124 | N75;
  assign N124 = N70 | N72;
  assign decode_o[11] = N132 | N82;
  assign N132 = N131 | N95;
  assign N131 = N130 | N93;
  assign N130 = N129 | N90;
  assign N129 = N128 | N88;
  assign N128 = N127 | N77;
  assign N127 = N126 | N75;
  assign N126 = N70 | N72;
  assign decode_o[10] = N135 | N84;
  assign N135 = N134 | N106;
  assign N134 = N133 | N104;
  assign N133 = N99 | N101;
  assign decode_o[0] = ~decode_o[9];

endmodule

