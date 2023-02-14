

module top
(
  clk_i,
  reset_i,
  data_i,
  deque_o,
  data_o,
  deque_i
);

  input [15:0] data_i;
  output [7:0] data_o;
  input clk_i;
  input reset_i;
  input deque_i;
  output deque_o;

  bsg_channel_narrow
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .deque_i(deque_i),
    .deque_o(deque_o)
  );


endmodule



module bsg_channel_narrow
(
  clk_i,
  reset_i,
  data_i,
  deque_o,
  data_o,
  deque_i
);

  input [15:0] data_i;
  output [7:0] data_o;
  input clk_i;
  input reset_i;
  input deque_i;
  output deque_o;
  wire [7:0] data_o;
  wire deque_o,N0,N1,N2,N3,N4,N5;
  wire [0:0] count_n;
  reg [0:0] count_r;
  assign data_o[7] = (N5)? data_i[7] : 
                     (N0)? data_i[15] : 1'b0;
  assign N0 = count_r[0];
  assign data_o[6] = (N5)? data_i[6] : 
                     (N0)? data_i[14] : 1'b0;
  assign data_o[5] = (N5)? data_i[5] : 
                     (N0)? data_i[13] : 1'b0;
  assign data_o[4] = (N5)? data_i[4] : 
                     (N0)? data_i[12] : 1'b0;
  assign data_o[3] = (N5)? data_i[3] : 
                     (N0)? data_i[11] : 1'b0;
  assign data_o[2] = (N5)? data_i[2] : 
                     (N0)? data_i[10] : 1'b0;
  assign data_o[1] = (N5)? data_i[1] : 
                     (N0)? data_i[9] : 1'b0;
  assign data_o[0] = (N5)? data_i[0] : 
                     (N0)? data_i[8] : 1'b0;
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

