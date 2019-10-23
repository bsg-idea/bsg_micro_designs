

module top
(
  clk,
  reset_i,
  add_i,
  o
);

  input [3:0] add_i;
  output [6:0] o;
  input clk;
  input reset_i;

  bsg_circular_ptr
  wrapper
  (
    .add_i(add_i),
    .o(o),
    .clk(clk),
    .reset_i(reset_i)
  );


endmodule



module bsg_circular_ptr
(
  clk,
  reset_i,
  add_i,
  o
);

  input [3:0] add_i;
  output [6:0] o;
  input clk;
  input reset_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
  wire [6:0] ptr_n;
  reg [6:0] o;
  assign ptr_n = o + add_i;
  assign { N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                          (N1)? ptr_n : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

  always @(posedge clk) begin
    if(1'b1) begin
      { o[6:0] } <= { N9, N8, N7, N6, N5, N4, N3 };
    end 
  end


endmodule

