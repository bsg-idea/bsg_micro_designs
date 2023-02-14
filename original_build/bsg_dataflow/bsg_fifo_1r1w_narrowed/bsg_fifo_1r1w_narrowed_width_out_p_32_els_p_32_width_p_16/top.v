

module top
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  v_o,
  data_o,
  yumi_i
);

  input [15:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;

  bsg_fifo_1r1w_narrowed
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .yumi_i(yumi_i),
    .ready_o(ready_o),
    .v_o(v_o)
  );


endmodule



module bsg_channel_narrow_width_in_p16_width_out_p32_lsb_to_msb_p1
(
  clk_i,
  reset_i,
  data_i,
  deque_o,
  data_o,
  deque_i
);

  input [15:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input deque_i;
  output deque_o;
  wire [31:0] data_o;
  wire deque_o;
  assign data_o[16] = 1'b0;
  assign data_o[17] = 1'b0;
  assign data_o[18] = 1'b0;
  assign data_o[19] = 1'b0;
  assign data_o[20] = 1'b0;
  assign data_o[21] = 1'b0;
  assign data_o[22] = 1'b0;
  assign data_o[23] = 1'b0;
  assign data_o[24] = 1'b0;
  assign data_o[25] = 1'b0;
  assign data_o[26] = 1'b0;
  assign data_o[27] = 1'b0;
  assign data_o[28] = 1'b0;
  assign data_o[29] = 1'b0;
  assign data_o[30] = 1'b0;
  assign data_o[31] = 1'b0;
  assign deque_o = deque_i;
  assign data_o[15] = data_i[15];
  assign data_o[14] = data_i[14];
  assign data_o[13] = data_i[13];
  assign data_o[12] = data_i[12];
  assign data_o[11] = data_i[11];
  assign data_o[10] = data_i[10];
  assign data_o[9] = data_i[9];
  assign data_o[8] = data_i[8];
  assign data_o[7] = data_i[7];
  assign data_o[6] = data_i[6];
  assign data_o[5] = data_i[5];
  assign data_o[4] = data_i[4];
  assign data_o[3] = data_i[3];
  assign data_o[2] = data_i[2];
  assign data_o[1] = data_i[1];
  assign data_o[0] = data_i[0];

endmodule



module bsg_fifo_1r1w_narrowed
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  v_o,
  data_o,
  yumi_i
);

  input [15:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [31:0] data_o;
  wire ready_o,v_o,yumi;
  wire [15:0] data;

  bsg_fifo_1r1w_small
  main_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .v_o(v_o),
    .data_o(data),
    .yumi_i(yumi)
  );


  bsg_channel_narrow_width_in_p16_width_out_p32_lsb_to_msb_p1
  output_narrower
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data),
    .deque_o(yumi),
    .data_o(data_o),
    .deque_i(yumi_i)
  );


endmodule

