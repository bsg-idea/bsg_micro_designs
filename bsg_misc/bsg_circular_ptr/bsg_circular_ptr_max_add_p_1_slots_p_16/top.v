

module top
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [3:0] o;
  output [3:0] n_o;
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

  input [0:0] add_i;
  output [3:0] o;
  output [3:0] n_o;
  input clk;
  input reset_i;
  wire [3:0] n_o,genblk1_genblk1_ptr_r_p1;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
  reg [3:0] o;
  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign { N8, N7, N6, N5 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N1)? n_o : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign n_o = (N2)? genblk1_genblk1_ptr_r_p1 : 
               (N3)? o : 1'b0;
  assign N2 = add_i[0];
  assign N3 = N9;
  assign N4 = ~reset_i;
  assign N9 = ~add_i[0];

  always @(posedge clk) begin
    if(1'b1) begin
      { o[3:0] } <= { N8, N7, N6, N5 };
    end 
  end


endmodule

