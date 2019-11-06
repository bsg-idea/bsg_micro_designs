

module top
(
  clk_i,
  reset_i,
  fifo_v_i,
  fifo_decoded_dest_i,
  fifo_payload_len_i,
  fifo_yumi_i,
  reqs_o,
  release_o,
  detected_header_o
);

  input [4:0] fifo_decoded_dest_i;
  input [7:0] fifo_payload_len_i;
  output [4:0] reqs_o;
  input clk_i;
  input reset_i;
  input fifo_v_i;
  input fifo_yumi_i;
  output release_o;
  output detected_header_o;

  bsg_wormhole_router_input_control
  wrapper
  (
    .fifo_decoded_dest_i(fifo_decoded_dest_i),
    .fifo_payload_len_i(fifo_payload_len_i),
    .reqs_o(reqs_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .fifo_v_i(fifo_v_i),
    .fifo_yumi_i(fifo_yumi_i),
    .release_o(release_o),
    .detected_header_o(detected_header_o)
  );


endmodule



module bsg_counter_set_down_8_1
(
  clk_i,
  reset_i,
  set_i,
  val_i,
  down_i,
  count_r_o
);

  input [7:0] val_i;
  output [7:0] count_r_o;
  input clk_i;
  input reset_i;
  input set_i;
  input down_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26;
  wire [7:0] ctr_n;
  reg [7:0] count_r_o;
  assign { N22, N21, N20, N19, N18, N17, N16, N15 } = count_r_o - 1'b1;
  assign { N11, N10, N9, N8, N7, N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                (N1)? ctr_n : 1'b0;
  assign N0 = reset_i;
  assign N1 = N3;
  assign ctr_n = (N2)? val_i : 
                 (N24)? { N22, N21, N20, N19, N18, N17, N16, N15 } : 1'b0;
  assign N2 = set_i;
  assign N3 = ~reset_i;
  assign N12 = down_i | set_i;
  assign N13 = ~N12;
  assign N14 = N24;
  assign N23 = ~set_i;
  assign N24 = down_i & N23;
  assign N25 = N13 & N3;
  assign N26 = ~N25;

  always @(posedge clk_i) begin
    if(N26) begin
      { count_r_o[7:0] } <= { N11, N10, N9, N8, N7, N6, N5, N4 };
    end 
  end


endmodule



module bsg_wormhole_router_input_control
(
  clk_i,
  reset_i,
  fifo_v_i,
  fifo_decoded_dest_i,
  fifo_payload_len_i,
  fifo_yumi_i,
  reqs_o,
  release_o,
  detected_header_o
);

  input [4:0] fifo_decoded_dest_i;
  input [7:0] fifo_payload_len_i;
  output [4:0] reqs_o;
  input clk_i;
  input reset_i;
  input fifo_v_i;
  input fifo_yumi_i;
  output release_o;
  output detected_header_o;
  wire [4:0] reqs_o;
  wire release_o,detected_header_o,N0,N1,n_0_net_,n_1_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10;
  wire [7:0] payload_ctr_r;

  bsg_counter_set_down_8_1
  ctr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .set_i(n_0_net_),
    .val_i(fifo_payload_len_i),
    .down_i(n_1_net_),
    .count_r_o(payload_ctr_r)
  );

  assign reqs_o = (N0)? fifo_decoded_dest_i : 
                  (N1)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N0 = detected_header_o;
  assign N1 = N2;
  assign release_o = ~N9;
  assign N9 = N8 | payload_ctr_r[0];
  assign N8 = N7 | payload_ctr_r[1];
  assign N7 = N6 | payload_ctr_r[2];
  assign N6 = N5 | payload_ctr_r[3];
  assign N5 = N4 | payload_ctr_r[4];
  assign N4 = N3 | payload_ctr_r[5];
  assign N3 = payload_ctr_r[7] | payload_ctr_r[6];
  assign detected_header_o = release_o & fifo_v_i;
  assign n_1_net_ = fifo_yumi_i & N10;
  assign N10 = ~release_o;
  assign n_0_net_ = fifo_yumi_i & release_o;
  assign N2 = ~detected_header_o;

endmodule
