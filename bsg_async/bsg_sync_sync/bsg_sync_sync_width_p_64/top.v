

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



module bsg_sync_sync_width_p64
(
  oclk_i,
  iclk_data_i,
  oclk_data_o
);

  input [63:0] iclk_data_i;
  output [63:0] oclk_data_o;
  input oclk_i;
  wire [63:0] oclk_data_o;

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


  bsg_sync_sync_8_unit
  maxb_2__bss8
  (
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i[23:16]),
    .oclk_data_o(oclk_data_o[23:16])
  );


  bsg_sync_sync_8_unit
  maxb_3__bss8
  (
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i[31:24]),
    .oclk_data_o(oclk_data_o[31:24])
  );


  bsg_sync_sync_8_unit
  maxb_4__bss8
  (
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i[39:32]),
    .oclk_data_o(oclk_data_o[39:32])
  );


  bsg_sync_sync_8_unit
  maxb_5__bss8
  (
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i[47:40]),
    .oclk_data_o(oclk_data_o[47:40])
  );


  bsg_sync_sync_8_unit
  maxb_6__bss8
  (
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i[55:48]),
    .oclk_data_o(oclk_data_o[55:48])
  );


  bsg_sync_sync_8_unit
  maxb_7__bss8
  (
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i[63:56]),
    .oclk_data_o(oclk_data_o[63:56])
  );


endmodule

