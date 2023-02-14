

module top
(
  reset_i,
  clk_i,
  data_i,
  ready_o,
  data_r_o,
  clk_r_o
);

  input [31:0] data_i;
  output [15:0] data_r_o;
  input reset_i;
  input clk_i;
  output ready_o;
  output clk_r_o;

  bsg_link_oddr_phy
  wrapper
  (
    .data_i(data_i),
    .data_r_o(data_r_o),
    .reset_i(reset_i),
    .clk_i(clk_i),
    .ready_o(ready_o),
    .clk_r_o(clk_r_o)
  );


endmodule



module bsg_link_oddr_phy
(
  reset_i,
  clk_i,
  data_i,
  ready_o,
  data_r_o,
  clk_r_o
);

  input [31:0] data_i;
  output [15:0] data_r_o;
  input reset_i;
  input clk_i;
  output ready_o;
  output clk_r_o;
  wire ready_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28;
  reg [31:0] data_i_r;
  reg odd_r,reset_i_r,clk_r,clk_r_o;
  reg [15:0] data_r_o;
  assign N8 = (N0)? 1'b0 : 
              (N1)? N6 : 1'b0;
  assign N0 = reset_i;
  assign N1 = N7;
  assign N12 = (N2)? 1'b0 : 
               (N3)? N11 : 1'b0;
  assign N2 = reset_i_r;
  assign N3 = N10;
  assign { N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13 } = (N4)? data_i_r[15:0] : 
                                                                                              (N5)? data_i_r[31:16] : 1'b0;
  assign N4 = odd_r;
  assign N5 = N6;
  assign ready_o = ~odd_r;
  assign N6 = ~odd_r;
  assign N7 = ~reset_i;
  assign N9 = ~clk_i;
  assign N10 = ~reset_i_r;
  assign N11 = ~clk_r;

  always @(posedge clk_i) begin
    if(N6) begin
      { data_i_r[31:0] } <= { data_i[31:0] };
    end 
    if(1'b1) begin
      odd_r <= N8;
      reset_i_r <= reset_i;
      { data_r_o[15:0] } <= { N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13 };
    end 
  end


  always @(posedge N9) begin
    if(1'b1) begin
      clk_r <= N12;
      clk_r_o <= clk_r;
    end 
  end


endmodule

