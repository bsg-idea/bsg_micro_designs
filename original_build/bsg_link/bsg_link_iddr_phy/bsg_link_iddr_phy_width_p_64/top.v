

module top
(
  clk_i,
  data_i,
  data_r_o
);

  input [63:0] data_i;
  output [127:0] data_r_o;
  input clk_i;

  bsg_link_iddr_phy
  wrapper
  (
    .data_i(data_i),
    .data_r_o(data_r_o),
    .clk_i(clk_i)
  );


endmodule



module bsg_link_iddr_phy
(
  clk_i,
  data_i,
  data_r_o
);

  input [63:0] data_i;
  output [127:0] data_r_o;
  input clk_i;
  wire N0;
  reg [63:0] data_p_r,data_n_r;
  reg [127:0] data_r_o;
  assign N0 = ~clk_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_p_r[63:0] } <= { data_i[63:0] };
      { data_r_o[127:0] } <= { data_n_r[63:0], data_p_r[63:0] };
    end 
  end


  always @(posedge N0) begin
    if(1'b1) begin
      { data_n_r[63:0] } <= { data_i[63:0] };
    end 
  end


endmodule

