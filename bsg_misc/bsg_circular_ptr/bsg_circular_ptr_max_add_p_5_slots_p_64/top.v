

module top
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [2:0] add_i;
  output [5:0] o;
  output [5:0] n_o;
  input clk;
  input reset_i;

  bsg_circular_ptr
  wrapper
  (
    .add_i(add_i),
    .o(o),
    .n_o(n_o),
    .clk(clk),
    .reset_i(reset_i)
  );


endmodule



module bsg_circular_ptr
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [2:0] add_i;
  output [5:0] o;
  output [5:0] n_o;
  input clk;
  input reset_i;
  wire [5:0] n_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8;
  reg [5:0] o;
  assign n_o = o + add_i;
  assign { N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                      (N1)? n_o : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

  always @(posedge clk) begin
    if(1'b1) begin
      { o[5:0] } <= { N8, N7, N6, N5, N4, N3 };
    end 
  end


endmodule

