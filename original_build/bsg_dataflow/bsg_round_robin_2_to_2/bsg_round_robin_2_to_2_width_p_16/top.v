

module top
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  data_o,
  v_o,
  ready_i
);

  input [31:0] data_i;
  input [1:0] v_i;
  output [1:0] ready_o;
  output [31:0] data_o;
  output [1:0] v_o;
  input [1:0] ready_i;
  input clk_i;
  input reset_i;

  bsg_round_robin_2_to_2
  wrapper
  (
    .data_i(data_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .data_o(data_o),
    .v_o(v_o),
    .ready_i(ready_i),
    .clk_i(clk_i),
    .reset_i(reset_i)
  );


endmodule



module bsg_round_robin_2_to_2
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  data_o,
  v_o,
  ready_i
);

  input [31:0] data_i;
  input [1:0] v_i;
  output [1:0] ready_o;
  output [31:0] data_o;
  output [1:0] v_o;
  input [1:0] ready_i;
  input clk_i;
  input reset_i;
  wire [1:0] ready_o,v_o;
  wire [31:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10;
  reg head_r;
  assign N6 = (N0)? 1'b0 : 
              (N1)? N5 : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign data_o = (N2)? { data_i[15:0], data_i[31:16] } : 
                  (N3)? data_i : 1'b0;
  assign N2 = head_r;
  assign N3 = N7;
  assign v_o = (N2)? { v_i[0:0], v_i[1:1] } : 
               (N3)? v_i : 1'b0;
  assign ready_o = (N2)? { ready_i[0:0], ready_i[1:1] } : 
                   (N3)? ready_i : 1'b0;
  assign N4 = ~reset_i;
  assign N5 = N9 ^ N10;
  assign N9 = head_r ^ N8;
  assign N8 = v_i[1] & ready_o[1];
  assign N10 = v_i[0] & ready_o[0];
  assign N7 = ~head_r;

  always @(posedge clk_i) begin
    if(1'b1) begin
      head_r <= N6;
    end 
  end


endmodule

