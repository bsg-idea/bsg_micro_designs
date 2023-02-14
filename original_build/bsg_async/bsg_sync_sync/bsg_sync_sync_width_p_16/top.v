

module top
(
  oclk_i,
  iclk_data_i,
  oclk_data_o
);

  input [15:0] iclk_data_i;
  output [15:0] oclk_data_o;
  input oclk_i;

  bsg_sync_sync
  wrapper
  (
    .iclk_data_i(iclk_data_i),
    .oclk_data_o(oclk_data_o),
    .oclk_i(oclk_i)
  );


endmodule



module bsg_sync_sync_8_unit
(
  oclk_i,
  iclk_data_i,
  oclk_data_o
);

  input [7:0] iclk_data_i;
  output [7:0] oclk_data_o;
  input oclk_i;
  reg [7:0] bsg_SYNC_1_r,oclk_data_o;

  always @(posedge oclk_i) begin
    if(1'b1) begin
      { bsg_SYNC_1_r[7:0] } <= { iclk_data_i[7:0] };
      { oclk_data_o[7:0] } <= { bsg_SYNC_1_r[7:0] };
    end 
  end


endmodule



module bsg_sync_sync
(
  oclk_i,
  iclk_data_i,
  oclk_data_o
);

  input [15:0] iclk_data_i;
  output [15:0] oclk_data_o;
  input oclk_i;
  wire [15:0] oclk_data_o;

  bsg_sync_sync_8_unit
  maxb_0__bss8
  (
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i[7:0]),
    .oclk_data_o(oclk_data_o[7:0])
  );


  bsg_sync_sync_8_unit
  maxb_1__bss8
  (
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i[15:8]),
    .oclk_data_o(oclk_data_o[15:8])
  );


endmodule

