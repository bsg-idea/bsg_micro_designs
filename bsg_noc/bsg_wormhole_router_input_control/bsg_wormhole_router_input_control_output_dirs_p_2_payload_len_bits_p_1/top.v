

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

  input [1:0] fifo_decoded_dest_i;
  input [0:0] fifo_payload_len_i;
  output [1:0] reqs_o;
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



module bsg_counter_set_down_1_1
(
  clk_i,
  reset_i,
  set_i,
  val_i,
  down_i,
  count_r_o
);

  input [0:0] val_i;
  output [0:0] count_r_o;
  input clk_i;
  input reset_i;
  input set_i;
  input down_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11;
  wire [0:0] ctr_n;
  reg [0:0] count_r_o;
  assign N7 = count_r_o[0] ^ 1'b1;
  assign N4 = (N0)? 1'b0 : 
              (N1)? ctr_n[0] : 1'b0;
  assign N0 = reset_i;
  assign N1 = N3;
  assign ctr_n[0] = (N2)? val_i[0] : 
                    (N9)? N7 : 1'b0;
  assign N2 = set_i;
  assign N3 = ~reset_i;
  assign N5 = down_i | set_i;
  assign N6 = ~N5;
  assign N8 = ~set_i;
  assign N9 = down_i & N8;
  assign N10 = N6 & N3;
  assign N11 = ~N10;

  always @(posedge clk_i) begin
    if(N11) begin
      { count_r_o[0:0] } <= { N4 };
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

  input [1:0] fifo_decoded_dest_i;
  input [0:0] fifo_payload_len_i;
  output [1:0] reqs_o;
  input clk_i;
  input reset_i;
  input fifo_v_i;
  input fifo_yumi_i;
  output release_o;
  output detected_header_o;
  wire [1:0] reqs_o;
  wire release_o,detected_header_o,N0,N1,n_0_net_,n_1_net_,N2,N3;
  wire [0:0] payload_ctr_r;

  bsg_counter_set_down_1_1
  ctr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .set_i(n_0_net_),
    .val_i(fifo_payload_len_i[0]),
    .down_i(n_1_net_),
    .count_r_o(payload_ctr_r[0])
  );

  assign reqs_o = (N0)? fifo_decoded_dest_i : 
                  (N1)? { 1'b0, 1'b0 } : 1'b0;
  assign N0 = detected_header_o;
  assign N1 = N2;
  assign release_o = ~payload_ctr_r[0];
  assign detected_header_o = release_o & fifo_v_i;
  assign n_1_net_ = fifo_yumi_i & N3;
  assign N3 = ~release_o;
  assign n_0_net_ = fifo_yumi_i & release_o;
  assign N2 = ~detected_header_o;

endmodule

