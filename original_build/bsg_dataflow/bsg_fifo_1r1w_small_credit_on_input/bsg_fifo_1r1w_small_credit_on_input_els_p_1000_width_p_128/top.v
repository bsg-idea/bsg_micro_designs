

module top
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  credit_o,
  v_o,
  data_o,
  yumi_i
);

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output credit_o;
  output v_o;

  bsg_fifo_1r1w_small_credit_on_input
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .yumi_i(yumi_i),
    .credit_o(credit_o),
    .v_o(v_o)
  );


endmodule



module bsg_fifo_1r1w_small_credit_on_input
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  credit_o,
  v_o,
  data_o,
  yumi_i
);

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output credit_o;
  output v_o;
  wire [127:0] data_o;
  wire v_o,N0,N1,N2,N3,N4,ready;
  reg credit_o;

  bsg_fifo_1r1w_small
  fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(v_i),
    .ready_o(ready),
    .v_o(v_o),
    .data_o(data_o),
    .yumi_i(yumi_i)
  );

  assign N4 = (N0)? 1'b0 : 
              (N1)? yumi_i : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign N2 = ~reset_i;
  assign N3 = reset_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      credit_o <= N4;
    end 
  end


endmodule

