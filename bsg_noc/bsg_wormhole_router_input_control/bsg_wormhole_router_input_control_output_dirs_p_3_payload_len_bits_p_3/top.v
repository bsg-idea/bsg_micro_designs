

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

  input [2:0] fifo_decoded_dest_i;
  input [2:0] fifo_payload_len_i;
  output [2:0] reqs_o;
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



module bsg_counter_set_down_3_1
(
  clk_i,
  reset_i,
  set_i,
  val_i,
  down_i,
  count_r_o
);

  input [2:0] val_i;
  output [2:0] count_r_o;
  input clk_i;
  input reset_i;
  input set_i;
  input down_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16;
  wire [2:0] ctr_n;
  reg [2:0] count_r_o;
  assign { N12, N11, N10 } = count_r_o - 1'b1;
  assign { N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                          (N1)? ctr_n : 1'b0;
  assign N0 = reset_i;
  assign N1 = N3;
  assign ctr_n = (N2)? val_i : 
                 (N14)? { N12, N11, N10 } : 1'b0;
  assign N2 = set_i;
  assign N3 = ~reset_i;
  assign N7 = down_i | set_i;
  assign N8 = ~N7;
  assign N9 = N14;
  assign N13 = ~set_i;
  assign N14 = down_i & N13;
  assign N15 = N8 & N3;
  assign N16 = ~N15;

  always @(posedge clk_i) begin
    if(N16) begin
      { count_r_o[2:0] } <= { N6, N5, N4 };
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

  input [2:0] fifo_decoded_dest_i;
  input [2:0] fifo_payload_len_i;
  output [2:0] reqs_o;
  input clk_i;
  input reset_i;
  input fifo_v_i;
  input fifo_yumi_i;
  output release_o;
  output detected_header_o;
  wire [2:0] reqs_o,payload_ctr_r;
  wire release_o,detected_header_o,N0,N1,n_0_net_,n_1_net_,N2,N3,N4,N5;

  bsg_counter_set_down_3_1
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
                  (N1)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N0 = detected_header_o;
  assign N1 = N2;
  assign release_o = ~N4;
  assign N4 = N3 | payload_ctr_r[0];
  assign N3 = payload_ctr_r[2] | payload_ctr_r[1];
  assign detected_header_o = release_o & fifo_v_i;
  assign n_1_net_ = fifo_yumi_i & N5;
  assign N5 = ~release_o;
  assign n_0_net_ = fifo_yumi_i & release_o;
  assign N2 = ~detected_header_o;

endmodule

