

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

  input [31:0] reqs_i;
  output [31:0] grants_o;
  output [31:0] sel_one_hot_o;
  output [4:0] tag_o;
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

  input [31:0] reqs_i;
  output [31:0] grants_o;
  output [31:0] sel_one_hot_o;
  output [4:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [31:0] grants_o,sel_one_hot_o;
  wire [4:0] tag_o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29;
  assign v_o = N29 | reqs_i[0];
  assign N29 = N28 | reqs_i[1];
  assign N28 = N27 | reqs_i[2];
  assign N27 = N26 | reqs_i[3];
  assign N26 = N25 | reqs_i[4];
  assign N25 = N24 | reqs_i[5];
  assign N24 = N23 | reqs_i[6];
  assign N23 = N22 | reqs_i[7];
  assign N22 = N21 | reqs_i[8];
  assign N21 = N20 | reqs_i[9];
  assign N20 = N19 | reqs_i[10];
  assign N19 = N18 | reqs_i[11];
  assign N18 = N17 | reqs_i[12];
  assign N17 = N16 | reqs_i[13];
  assign N16 = N15 | reqs_i[14];
  assign N15 = N14 | reqs_i[15];
  assign N14 = N13 | reqs_i[16];
  assign N13 = N12 | reqs_i[17];
  assign N12 = N11 | reqs_i[18];
  assign N11 = N10 | reqs_i[19];
  assign N10 = N9 | reqs_i[20];
  assign N9 = N8 | reqs_i[21];
  assign N8 = N7 | reqs_i[22];
  assign N7 = N6 | reqs_i[23];
  assign N6 = N5 | reqs_i[24];
  assign N5 = N4 | reqs_i[25];
  assign N4 = N3 | reqs_i[26];
  assign N3 = N2 | reqs_i[27];
  assign N2 = N1 | reqs_i[28];
  assign N1 = N0 | reqs_i[29];
  assign N0 = reqs_i[31] | reqs_i[30];

endmodule

