

module top
(
  clk_i,
  reset_i,
  grants_en_i,
  reqs_i,
  grants_o,
  sel_one_hot_o,
  v_o,
  tag_o,
  yumi_i
);

  input [63:0] reqs_i;
  output [63:0] grants_o;
  output [63:0] sel_one_hot_o;
  output [5:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;

  bsg_round_robin_arb
  wrapper
  (
    .reqs_i(reqs_i),
    .grants_o(grants_o),
    .sel_one_hot_o(sel_one_hot_o),
    .tag_o(tag_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .grants_en_i(grants_en_i),
    .yumi_i(yumi_i),
    .v_o(v_o)
  );


endmodule



module bsg_round_robin_arb
(
  clk_i,
  reset_i,
  grants_en_i,
  reqs_i,
  grants_o,
  sel_one_hot_o,
  v_o,
  tag_o,
  yumi_i
);

  input [63:0] reqs_i;
  output [63:0] grants_o;
  output [63:0] sel_one_hot_o;
  output [5:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [63:0] grants_o,sel_one_hot_o;
  wire [5:0] tag_o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61;
  assign v_o = N61 | reqs_i[0];
  assign N61 = N60 | reqs_i[1];
  assign N60 = N59 | reqs_i[2];
  assign N59 = N58 | reqs_i[3];
  assign N58 = N57 | reqs_i[4];
  assign N57 = N56 | reqs_i[5];
  assign N56 = N55 | reqs_i[6];
  assign N55 = N54 | reqs_i[7];
  assign N54 = N53 | reqs_i[8];
  assign N53 = N52 | reqs_i[9];
  assign N52 = N51 | reqs_i[10];
  assign N51 = N50 | reqs_i[11];
  assign N50 = N49 | reqs_i[12];
  assign N49 = N48 | reqs_i[13];
  assign N48 = N47 | reqs_i[14];
  assign N47 = N46 | reqs_i[15];
  assign N46 = N45 | reqs_i[16];
  assign N45 = N44 | reqs_i[17];
  assign N44 = N43 | reqs_i[18];
  assign N43 = N42 | reqs_i[19];
  assign N42 = N41 | reqs_i[20];
  assign N41 = N40 | reqs_i[21];
  assign N40 = N39 | reqs_i[22];
  assign N39 = N38 | reqs_i[23];
  assign N38 = N37 | reqs_i[24];
  assign N37 = N36 | reqs_i[25];
  assign N36 = N35 | reqs_i[26];
  assign N35 = N34 | reqs_i[27];
  assign N34 = N33 | reqs_i[28];
  assign N33 = N32 | reqs_i[29];
  assign N32 = N31 | reqs_i[30];
  assign N31 = N30 | reqs_i[31];
  assign N30 = N29 | reqs_i[32];
  assign N29 = N28 | reqs_i[33];
  assign N28 = N27 | reqs_i[34];
  assign N27 = N26 | reqs_i[35];
  assign N26 = N25 | reqs_i[36];
  assign N25 = N24 | reqs_i[37];
  assign N24 = N23 | reqs_i[38];
  assign N23 = N22 | reqs_i[39];
  assign N22 = N21 | reqs_i[40];
  assign N21 = N20 | reqs_i[41];
  assign N20 = N19 | reqs_i[42];
  assign N19 = N18 | reqs_i[43];
  assign N18 = N17 | reqs_i[44];
  assign N17 = N16 | reqs_i[45];
  assign N16 = N15 | reqs_i[46];
  assign N15 = N14 | reqs_i[47];
  assign N14 = N13 | reqs_i[48];
  assign N13 = N12 | reqs_i[49];
  assign N12 = N11 | reqs_i[50];
  assign N11 = N10 | reqs_i[51];
  assign N10 = N9 | reqs_i[52];
  assign N9 = N8 | reqs_i[53];
  assign N8 = N7 | reqs_i[54];
  assign N7 = N6 | reqs_i[55];
  assign N6 = N5 | reqs_i[56];
  assign N5 = N4 | reqs_i[57];
  assign N4 = N3 | reqs_i[58];
  assign N3 = N2 | reqs_i[59];
  assign N2 = N1 | reqs_i[60];
  assign N1 = N0 | reqs_i[61];
  assign N0 = reqs_i[63] | reqs_i[62];

endmodule

