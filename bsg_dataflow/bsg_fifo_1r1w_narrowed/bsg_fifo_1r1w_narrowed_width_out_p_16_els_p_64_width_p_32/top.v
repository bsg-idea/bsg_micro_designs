

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

  input [31:0] data_i;
  output [15:0] data_o;
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



module bsg_channel_narrow_width_in_p32_width_out_p16_lsb_to_msb_p1
(
  clk_i,
  reset_i,
  data_i,
  deque_o,
  data_o,
  deque_i
);

  input [31:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input deque_i;
  output deque_o;
  wire [15:0] data_o;
  wire deque_o,N0,N1,N2,N3,N4,N5;
  wire [0:0] count_n;
  reg [0:0] count_r;
  assign data_o[15] = (N5)? data_i[15] : 
                      (N0)? data_i[31] : 1'b0;
  assign N0 = count_r[0];
  assign data_o[14] = (N5)? data_i[14] : 
                      (N0)? data_i[30] : 1'b0;
  assign data_o[13] = (N5)? data_i[13] : 
                      (N0)? data_i[29] : 1'b0;
  assign data_o[12] = (N5)? data_i[12] : 
                      (N0)? data_i[28] : 1'b0;
  assign data_o[11] = (N5)? data_i[11] : 
                      (N0)? data_i[27] : 1'b0;
  assign data_o[10] = (N5)? data_i[10] : 
                      (N0)? data_i[26] : 1'b0;
  assign data_o[9] = (N5)? data_i[9] : 
                     (N0)? data_i[25] : 1'b0;
  assign data_o[8] = (N5)? data_i[8] : 
                     (N0)? data_i[24] : 1'b0;
  assign data_o[7] = (N5)? data_i[7] : 
                     (N0)? data_i[23] : 1'b0;
  assign data_o[6] = (N5)? data_i[6] : 
                     (N0)? data_i[22] : 1'b0;
  assign data_o[5] = (N5)? data_i[5] : 
                     (N0)? data_i[21] : 1'b0;
  assign data_o[4] = (N5)? data_i[4] : 
                     (N0)? data_i[20] : 1'b0;
  assign data_o[3] = (N5)? data_i[3] : 
                     (N0)? data_i[19] : 1'b0;
  assign data_o[2] = (N5)? data_i[2] : 
                     (N0)? data_i[18] : 1'b0;
  assign data_o[1] = (N5)? data_i[1] : 
                     (N0)? data_i[17] : 1'b0;
  assign data_o[0] = (N5)? data_i[0] : 
                     (N0)? data_i[16] : 1'b0;
  assign count_n[0] = count_r[0] ^ deque_i;
  assign N4 = (N1)? 1'b0 : 
              (N2)? count_n[0] : 1'b0;
  assign N1 = reset_i;
  assign N2 = N3;
  assign N3 = ~reset_i;
  assign N5 = ~count_r[0];
  assign deque_o = deque_i & count_r[0];

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_r[0:0] } <= { N4 };
    end 
  end


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

  input [31:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [15:0] data_o;
  wire ready_o,v_o,yumi;
  wire [31:0] data;

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


  bsg_channel_narrow_width_in_p32_width_out_p16_lsb_to_msb_p1
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

