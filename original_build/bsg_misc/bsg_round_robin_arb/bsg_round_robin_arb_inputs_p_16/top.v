

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

  input [15:0] reqs_i;
  output [15:0] grants_o;
  output [15:0] sel_one_hot_o;
  output [3:0] tag_o;
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

  input [15:0] reqs_i;
  output [15:0] grants_o;
  output [15:0] sel_one_hot_o;
  output [3:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [15:0] grants_o,sel_one_hot_o;
  wire [3:0] tag_o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13;
  assign v_o = N13 | reqs_i[0];
  assign N13 = N12 | reqs_i[1];
  assign N12 = N11 | reqs_i[2];
  assign N11 = N10 | reqs_i[3];
  assign N10 = N9 | reqs_i[4];
  assign N9 = N8 | reqs_i[5];
  assign N8 = N7 | reqs_i[6];
  assign N7 = N6 | reqs_i[7];
  assign N6 = N5 | reqs_i[8];
  assign N5 = N4 | reqs_i[9];
  assign N4 = N3 | reqs_i[10];
  assign N3 = N2 | reqs_i[11];
  assign N2 = N1 | reqs_i[12];
  assign N1 = N0 | reqs_i[13];
  assign N0 = reqs_i[15] | reqs_i[14];

endmodule

