

module top
(
  clk,
  reset,
  valid_i,
  data_i,
  yumi_o,
  in_top_channel_i,
  out_top_channel_i,
  valid_o,
  data_o,
  ready_i
);

  input [1:0] valid_i;
  input [31:0] data_i;
  output [1:0] yumi_o;
  input [0:0] in_top_channel_i;
  input [0:0] out_top_channel_i;
  output [0:0] valid_o;
  output [15:0] data_o;
  input [0:0] ready_i;
  input clk;
  input reset;

  bsg_round_robin_fifo_to_fifo
  wrapper
  (
    .valid_i(valid_i),
    .data_i(data_i),
    .yumi_o(yumi_o),
    .in_top_channel_i(in_top_channel_i),
    .out_top_channel_i(out_top_channel_i),
    .valid_o(valid_o),
    .data_o(data_o),
    .ready_i(ready_i),
    .clk(clk),
    .reset(reset)
  );


endmodule



module bsg_make_2D_array_width_p16_items_p1
(
  i,
  o
);

  input [15:0] i;
  output [15:0] o;
  wire [15:0] o;
  assign o[15] = i[15];
  assign o[14] = i[14];
  assign o[13] = i[13];
  assign o[12] = i[12];
  assign o[11] = i[11];
  assign o[10] = i[10];
  assign o[9] = i[9];
  assign o[8] = i[8];
  assign o[7] = i[7];
  assign o[6] = i[6];
  assign o[5] = i[5];
  assign o[4] = i[4];
  assign o[3] = i[3];
  assign o[2] = i[2];
  assign o[1] = i[1];
  assign o[0] = i[0];

endmodule



module bsg_rotate_right_width_p2
(
  data_i,
  rot_i,
  o
);

  input [1:0] data_i;
  input [0:0] rot_i;
  output [1:0] o;
  wire [1:0] o;
  wire SYNOPSYS_UNCONNECTED_1;
  assign { SYNOPSYS_UNCONNECTED_1, o } = { data_i[0:0], data_i[1:0] } >> rot_i[0];

endmodule



module bsg_circular_ptr_slots_p2_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [0:0] o;
  output [0:0] n_o;
  input clk;
  input reset_i;
  wire [0:0] n_o,genblk1_genblk1_ptr_r_p1;
  wire N0,N1,N2,N3,N4,N5,N6;
  reg [0:0] o;
  assign genblk1_genblk1_ptr_r_p1[0] = o[0] ^ 1'b1;
  assign N5 = (N0)? 1'b0 : 
              (N1)? n_o[0] : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign n_o[0] = (N2)? genblk1_genblk1_ptr_r_p1[0] : 
                  (N3)? o[0] : 1'b0;
  assign N2 = add_i[0];
  assign N3 = N6;
  assign N4 = ~reset_i;
  assign N6 = ~add_i[0];

  always @(posedge clk) begin
    if(1'b1) begin
      { o[0:0] } <= { N5 };
    end 
  end


endmodule



module bsg_rr_f2f_input_width_p16_num_in_p2_middle_meet_p1
(
  clk,
  reset,
  valid_i,
  data_i,
  data_head_o,
  valid_head_o,
  go_channels_i,
  go_cnt_i,
  yumi_o
);

  input [1:0] valid_i;
  input [31:0] data_i;
  output [15:0] data_head_o;
  output [0:0] valid_head_o;
  input [0:0] go_channels_i;
  input [0:0] go_cnt_i;
  output [1:0] yumi_o;
  input clk;
  input reset;
  wire [15:0] data_head_o,data_head_o_flat_pretrunc;
  wire [0:0] valid_head_o,iptr_r,iptr_r_data;
  wire [1:0] yumi_o;
  wire SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,
  SYNOPSYS_UNCONNECTED_4,SYNOPSYS_UNCONNECTED_5,SYNOPSYS_UNCONNECTED_6,
  SYNOPSYS_UNCONNECTED_7,SYNOPSYS_UNCONNECTED_8,SYNOPSYS_UNCONNECTED_9,SYNOPSYS_UNCONNECTED_10,
  SYNOPSYS_UNCONNECTED_11,SYNOPSYS_UNCONNECTED_12,SYNOPSYS_UNCONNECTED_13,
  SYNOPSYS_UNCONNECTED_14,SYNOPSYS_UNCONNECTED_15,SYNOPSYS_UNCONNECTED_16,SYNOPSYS_UNCONNECTED_17,
  SYNOPSYS_UNCONNECTED_18,SYNOPSYS_UNCONNECTED_19,SYNOPSYS_UNCONNECTED_20,
  SYNOPSYS_UNCONNECTED_21,SYNOPSYS_UNCONNECTED_22,SYNOPSYS_UNCONNECTED_23,
  SYNOPSYS_UNCONNECTED_24,SYNOPSYS_UNCONNECTED_25,SYNOPSYS_UNCONNECTED_26,SYNOPSYS_UNCONNECTED_27,
  SYNOPSYS_UNCONNECTED_28,SYNOPSYS_UNCONNECTED_29,SYNOPSYS_UNCONNECTED_30,
  SYNOPSYS_UNCONNECTED_31,SYNOPSYS_UNCONNECTED_32,SYNOPSYS_UNCONNECTED_33,
  SYNOPSYS_UNCONNECTED_34;
  wire [1:1] valid_head_o_pretrunc;

  bsg_make_2D_array_width_p16_items_p1
  bm2Da
  (
    .i(data_head_o_flat_pretrunc),
    .o(data_head_o)
  );


  bsg_rotate_right_width_p2
  valid_rr
  (
    .data_i(valid_i),
    .rot_i(iptr_r[0]),
    .o({ valid_head_o_pretrunc[1:1], valid_head_o[0:0] })
  );


  bsg_circular_ptr_slots_p2_max_add_p1
  c_ptr
  (
    .clk(clk),
    .reset_i(reset),
    .add_i(go_cnt_i[0]),
    .o(iptr_r[0]),
    .n_o(SYNOPSYS_UNCONNECTED_1)
  );


  bsg_circular_ptr_slots_p2_max_add_p1
  c_ptr_data
  (
    .clk(clk),
    .reset_i(reset),
    .add_i(go_cnt_i[0]),
    .o(iptr_r_data[0]),
    .n_o(SYNOPSYS_UNCONNECTED_2)
  );

  assign { yumi_o, SYNOPSYS_UNCONNECTED_3 } = { 1'b0, go_channels_i[0:0], 1'b0 } << iptr_r[0];
  assign { SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, data_head_o_flat_pretrunc } = { data_i[14:0], data_i } >> { iptr_r_data[0:0], 1'b0, 1'b0, 1'b0, 1'b0 };

endmodule



module bsg_scan_width_p1_and_p1_lo_to_hi_p1
(
  i,
  o
);

  input [0:0] i;
  output [0:0] o;
  wire [0:0] o;
  assign o[0] = i[0];

endmodule



module bsg_thermometer_count_width_p1
(
  i,
  o
);

  input [0:0] i;
  output [0:0] o;
  wire [0:0] o;
  assign o[0] = i[0];

endmodule



module bsg_rr_f2f_middle_width_p16_middle_meet_p1
(
  valid_head_i,
  ready_head_i,
  go_channels_o,
  go_cnt_o
);

  input [0:0] valid_head_i;
  input [0:0] ready_head_i;
  output [0:0] go_channels_o;
  output [0:0] go_cnt_o;
  wire [0:0] go_channels_o,go_cnt_o,happy_channels;

  bsg_scan_width_p1_and_p1_lo_to_hi_p1
  and_scan
  (
    .i(happy_channels[0]),
    .o(go_channels_o[0])
  );


  bsg_thermometer_count_width_p1
  genblk1_genblk1_thermo
  (
    .i(go_channels_o[0]),
    .o(go_cnt_o[0])
  );

  assign happy_channels[0] = valid_head_i[0] & ready_head_i[0];

endmodule



module bsg_rotate_right_width_p1
(
  data_i,
  rot_i,
  o
);

  input [0:0] data_i;
  input [0:0] rot_i;
  output [0:0] o;
  wire [0:0] o;
  wire SYNOPSYS_UNCONNECTED_1;
  assign { SYNOPSYS_UNCONNECTED_1, o[0:0] } = { data_i[0:0], data_i[0:0] } >> rot_i[0];

endmodule



module bsg_circular_ptr_slots_p1_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [0:0] o;
  output [0:0] n_o;
  input clk;
  input reset_i;
  wire [0:0] n_o;
  reg [0:0] o;
  assign n_o[0] = 1'b0;

  always @(posedge clk) begin
    if(1'b1) begin
      { o[0:0] } <= { 1'b0 };
    end 
  end


endmodule



module bsg_rr_f2f_output_width_p16_num_out_p1_middle_meet_p1
(
  clk,
  reset,
  ready_i,
  ready_head_o,
  go_channels_i,
  go_cnt_i,
  data_head_i,
  valid_o,
  data_o
);

  input [0:0] ready_i;
  output [0:0] ready_head_o;
  input [0:0] go_channels_i;
  input [0:0] go_cnt_i;
  input [15:0] data_head_i;
  output [0:0] valid_o;
  output [15:0] data_o;
  input clk;
  input reset;
  wire [0:0] ready_head_o,valid_o,optr_r;
  wire [15:0] data_o;
  wire N0,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3;
  assign data_o[15] = data_head_i[15];
  assign data_o[14] = data_head_i[14];
  assign data_o[13] = data_head_i[13];
  assign data_o[12] = data_head_i[12];
  assign data_o[11] = data_head_i[11];
  assign data_o[10] = data_head_i[10];
  assign data_o[9] = data_head_i[9];
  assign data_o[8] = data_head_i[8];
  assign data_o[7] = data_head_i[7];
  assign data_o[6] = data_head_i[6];
  assign data_o[5] = data_head_i[5];
  assign data_o[4] = data_head_i[4];
  assign data_o[3] = data_head_i[3];
  assign data_o[2] = data_head_i[2];
  assign data_o[1] = data_head_i[1];
  assign data_o[0] = data_head_i[0];

  bsg_rotate_right_width_p1
  ready_rr
  (
    .data_i(ready_i[0]),
    .rot_i(optr_r[0]),
    .o(ready_head_o[0])
  );

  assign { valid_o[0:0], SYNOPSYS_UNCONNECTED_1 } = { go_channels_i[0:0], go_channels_i[0:0] } << optr_r[0];

  bsg_circular_ptr_slots_p1_max_add_p1
  c_ptr
  (
    .clk(clk),
    .reset_i(reset),
    .add_i(go_cnt_i[0]),
    .o(optr_r[0]),
    .n_o(SYNOPSYS_UNCONNECTED_2)
  );


  bsg_circular_ptr_slots_p1_max_add_p1
  c_ptr_data
  (
    .clk(clk),
    .reset_i(reset),
    .add_i(go_cnt_i[0]),
    .o(N0),
    .n_o(SYNOPSYS_UNCONNECTED_3)
  );


endmodule



module bsg_round_robin_fifo_to_fifo
(
  clk,
  reset,
  valid_i,
  data_i,
  yumi_o,
  in_top_channel_i,
  out_top_channel_i,
  valid_o,
  data_o,
  ready_i
);

  input [1:0] valid_i;
  input [31:0] data_i;
  output [1:0] yumi_o;
  input [0:0] in_top_channel_i;
  input [0:0] out_top_channel_i;
  output [0:0] valid_o;
  output [15:0] data_o;
  input [0:0] ready_i;
  input clk;
  input reset;
  wire [1:0] yumi_o;
  wire [0:0] valid_o,go_channels,go_cnt,ready_head;
  wire [15:0] data_o,data_int_o,oc_0__out_chan_data_head_array;
  wire N0,yumi_int_o_1__1_,yumi_int_o_1__0_,N1,data_head_1__15_,data_head_1__14_,
  data_head_1__13_,data_head_1__12_,data_head_1__11_,data_head_1__10_,data_head_1__9_,
  data_head_1__8_,data_head_1__7_,data_head_1__6_,data_head_1__5_,data_head_1__4_,
  data_head_1__3_,data_head_1__2_,data_head_1__1_,data_head_1__0_,n_0_net_,
  valid_head_1__0_,n_2_net__0_,n_4_net__15_,n_4_net__14_,n_4_net__13_,n_4_net__12_,
  n_4_net__11_,n_4_net__10_,n_4_net__9_,n_4_net__8_,n_4_net__7_,n_4_net__6_,n_4_net__5_,
  n_4_net__4_,n_4_net__3_,n_4_net__2_,n_4_net__1_,n_4_net__0_,n_5_net_,N2;
  assign yumi_o[1] = (N1)? 1'b0 : 
                     (N0)? yumi_int_o_1__1_ : 1'b0;
  assign N0 = in_top_channel_i[0];
  assign yumi_o[0] = (N1)? 1'b0 : 
                     (N0)? yumi_int_o_1__0_ : 1'b0;

  bsg_make_2D_array_width_p16_items_p1
  bm2Da
  (
    .i(data_int_o),
    .o(data_o)
  );


  bsg_rr_f2f_input_width_p16_num_in_p2_middle_meet_p1
  ic_1__in_chan_bsg_rr_ff_in
  (
    .clk(clk),
    .reset(n_0_net_),
    .valid_i(valid_i),
    .data_i(data_i),
    .data_head_o({ data_head_1__15_, data_head_1__14_, data_head_1__13_, data_head_1__12_, data_head_1__11_, data_head_1__10_, data_head_1__9_, data_head_1__8_, data_head_1__7_, data_head_1__6_, data_head_1__5_, data_head_1__4_, data_head_1__3_, data_head_1__2_, data_head_1__1_, data_head_1__0_ }),
    .valid_head_o(valid_head_1__0_),
    .go_channels_i(go_channels[0]),
    .go_cnt_i(go_cnt[0]),
    .yumi_o({ yumi_int_o_1__1_, yumi_int_o_1__0_ })
  );


  bsg_rr_f2f_middle_width_p16_middle_meet_p1
  brrf2fm
  (
    .valid_head_i(n_2_net__0_),
    .ready_head_i(ready_head[0]),
    .go_channels_o(go_channels[0]),
    .go_cnt_o(go_cnt[0])
  );

  assign n_2_net__0_ = (N1)? 1'b0 : 
                       (N0)? valid_head_1__0_ : 1'b0;

  bsg_make_2D_array_width_p16_items_p1
  oc_0__out_chan_bm2Da
  (
    .i({ n_4_net__15_, n_4_net__14_, n_4_net__13_, n_4_net__12_, n_4_net__11_, n_4_net__10_, n_4_net__9_, n_4_net__8_, n_4_net__7_, n_4_net__6_, n_4_net__5_, n_4_net__4_, n_4_net__3_, n_4_net__2_, n_4_net__1_, n_4_net__0_ }),
    .o(oc_0__out_chan_data_head_array)
  );

  assign n_4_net__15_ = (N1)? 1'b0 : 
                        (N0)? data_head_1__15_ : 1'b0;
  assign n_4_net__14_ = (N1)? 1'b0 : 
                        (N0)? data_head_1__14_ : 1'b0;
  assign n_4_net__13_ = (N1)? 1'b0 : 
                        (N0)? data_head_1__13_ : 1'b0;
  assign n_4_net__12_ = (N1)? 1'b0 : 
                        (N0)? data_head_1__12_ : 1'b0;
  assign n_4_net__11_ = (N1)? 1'b0 : 
                        (N0)? data_head_1__11_ : 1'b0;
  assign n_4_net__10_ = (N1)? 1'b0 : 
                        (N0)? data_head_1__10_ : 1'b0;
  assign n_4_net__9_ = (N1)? 1'b0 : 
                       (N0)? data_head_1__9_ : 1'b0;
  assign n_4_net__8_ = (N1)? 1'b0 : 
                       (N0)? data_head_1__8_ : 1'b0;
  assign n_4_net__7_ = (N1)? 1'b0 : 
                       (N0)? data_head_1__7_ : 1'b0;
  assign n_4_net__6_ = (N1)? 1'b0 : 
                       (N0)? data_head_1__6_ : 1'b0;
  assign n_4_net__5_ = (N1)? 1'b0 : 
                       (N0)? data_head_1__5_ : 1'b0;
  assign n_4_net__4_ = (N1)? 1'b0 : 
                       (N0)? data_head_1__4_ : 1'b0;
  assign n_4_net__3_ = (N1)? 1'b0 : 
                       (N0)? data_head_1__3_ : 1'b0;
  assign n_4_net__2_ = (N1)? 1'b0 : 
                       (N0)? data_head_1__2_ : 1'b0;
  assign n_4_net__1_ = (N1)? 1'b0 : 
                       (N0)? data_head_1__1_ : 1'b0;
  assign n_4_net__0_ = (N1)? 1'b0 : 
                       (N0)? data_head_1__0_ : 1'b0;

  bsg_rr_f2f_output_width_p16_num_out_p1_middle_meet_p1
  oc_0__out_chan_bsg_rr_ff_out
  (
    .clk(clk),
    .reset(n_5_net_),
    .ready_i(ready_i[0]),
    .ready_head_o(ready_head[0]),
    .go_channels_i(go_channels[0]),
    .go_cnt_i(go_cnt[0]),
    .data_head_i(oc_0__out_chan_data_head_array),
    .valid_o(valid_o[0]),
    .data_o(data_int_o)
  );

  assign N2 = ~in_top_channel_i[0];
  assign N1 = ~in_top_channel_i[0];
  assign n_0_net_ = reset | N2;
  assign n_5_net_ = reset | out_top_channel_i[0];

endmodule

