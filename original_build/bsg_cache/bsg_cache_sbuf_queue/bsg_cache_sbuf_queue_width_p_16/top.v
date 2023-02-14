

module top
(
  clk_i,
  data_i,
  el0_en_i,
  el1_en_i,
  mux0_sel_i,
  mux1_sel_i,
  el0_snoop_o,
  el1_snoop_o,
  data_o
);

  input [15:0] data_i;
  output [15:0] el0_snoop_o;
  output [15:0] el1_snoop_o;
  output [15:0] data_o;
  input clk_i;
  input el0_en_i;
  input el1_en_i;
  input mux0_sel_i;
  input mux1_sel_i;

  bsg_cache_sbuf_queue
  wrapper
  (
    .data_i(data_i),
    .el0_snoop_o(el0_snoop_o),
    .el1_snoop_o(el1_snoop_o),
    .data_o(data_o),
    .clk_i(clk_i),
    .el0_en_i(el0_en_i),
    .el1_en_i(el1_en_i),
    .mux0_sel_i(mux0_sel_i),
    .mux1_sel_i(mux1_sel_i)
  );


endmodule



module bsg_cache_sbuf_queue
(
  clk_i,
  data_i,
  el0_en_i,
  el1_en_i,
  mux0_sel_i,
  mux1_sel_i,
  el0_snoop_o,
  el1_snoop_o,
  data_o
);

  input [15:0] data_i;
  output [15:0] el0_snoop_o;
  output [15:0] el1_snoop_o;
  output [15:0] data_o;
  input clk_i;
  input el0_en_i;
  input el1_en_i;
  input mux0_sel_i;
  input mux1_sel_i;
  wire [15:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21;
  reg [15:0] el0_snoop_o,el1_snoop_o;
  assign { N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } = (N0)? el0_snoop_o : 
                                                                                         (N1)? data_i : 1'b0;
  assign N0 = mux0_sel_i;
  assign N1 = N4;
  assign data_o = (N2)? el1_snoop_o : 
                  (N3)? data_i : 1'b0;
  assign N2 = mux1_sel_i;
  assign N3 = N21;
  assign N4 = ~mux0_sel_i;
  assign N21 = ~mux1_sel_i;

  always @(posedge clk_i) begin
    if(el0_en_i) begin
      { el0_snoop_o[15:0] } <= { data_i[15:0] };
    end 
    if(el1_en_i) begin
      { el1_snoop_o[15:0] } <= { N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 };
    end 
  end


endmodule

