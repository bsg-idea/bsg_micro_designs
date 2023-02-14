

module top
(
  clk_i,
  en_i,
  data_i,
  data_o
);

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input en_i;

  bsg_dff_en_bypass
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .en_i(en_i)
  );


endmodule



module bsg_dff_en_width_p128_harden_p0_strength_p0
(
  clk_i,
  data_i,
  en_i,
  data_o
);

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input en_i;
  reg [127:0] data_o;

  always @(posedge clk_i) begin
    if(en_i) begin
      { data_o[127:0] } <= { data_i[127:0] };
    end 
  end


endmodule



module bsg_dff_en_bypass
(
  clk_i,
  en_i,
  data_i,
  data_o
);

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input en_i;
  wire [127:0] data_o,data_r;
  wire N0,N1,N2,N3;

  bsg_dff_en_width_p128_harden_p0_strength_p0
  dff
  (
    .clk_i(clk_i),
    .data_i(data_i),
    .en_i(en_i),
    .data_o(data_r)
  );

  assign data_o = (N0)? data_i : 
                  (N1)? data_r : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign N2 = ~en_i;
  assign N3 = en_i;

endmodule

