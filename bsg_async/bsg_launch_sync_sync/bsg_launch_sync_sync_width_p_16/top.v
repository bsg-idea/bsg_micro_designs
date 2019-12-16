

module top
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [15:0] iclk_data_i;
  output [15:0] iclk_data_o;
  output [15:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;

  bsg_launch_sync_sync
  wrapper
  (
    .iclk_data_i(iclk_data_i),
    .iclk_data_o(iclk_data_o),
    .oclk_data_o(oclk_data_o),
    .iclk_i(iclk_i),
    .iclk_reset_i(iclk_reset_i),
    .oclk_i(oclk_i)
  );


endmodule



module bsg_launch_sync_sync_posedge_8_unit
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [7:0] iclk_data_i;
  output [7:0] iclk_data_o;
  output [7:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10;
  reg [7:0] iclk_data_o,bsg_SYNC_1_r,oclk_data_o;
  assign { N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                               (N1)? iclk_data_i : 1'b0;
  assign N0 = iclk_reset_i;
  assign N1 = N2;
  assign N2 = ~iclk_reset_i;

  always @(posedge iclk_i) begin
    if(1'b1) begin
      { iclk_data_o[7:0] } <= { N10, N9, N8, N7, N6, N5, N4, N3 };
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      { bsg_SYNC_1_r[7:0] } <= { iclk_data_o[7:0] };
      { oclk_data_o[7:0] } <= { bsg_SYNC_1_r[7:0] };
    end 
  end


endmodule



module bsg_launch_sync_sync
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [15:0] iclk_data_i;
  output [15:0] iclk_data_o;
  output [15:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire [15:0] iclk_data_o,oclk_data_o;

  bsg_launch_sync_sync_posedge_8_unit
  sync_p_maxb_0__blss
  (
    .iclk_i(iclk_i),
    .iclk_reset_i(iclk_reset_i),
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i[7:0]),
    .iclk_data_o(iclk_data_o[7:0]),
    .oclk_data_o(oclk_data_o[7:0])
  );


  bsg_launch_sync_sync_posedge_8_unit
  sync_p_maxb_1__blss
  (
    .iclk_i(iclk_i),
    .iclk_reset_i(iclk_reset_i),
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i[15:8]),
    .iclk_data_o(iclk_data_o[15:8]),
    .oclk_data_o(oclk_data_o[15:8])
  );


endmodule

