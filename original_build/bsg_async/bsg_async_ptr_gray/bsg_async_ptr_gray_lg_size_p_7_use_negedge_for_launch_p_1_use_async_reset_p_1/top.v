

module top
(
  w_clk_i,
  w_reset_i,
  w_inc_i,
  r_clk_i,
  w_ptr_binary_r_o,
  w_ptr_gray_r_o,
  w_ptr_gray_r_rsync_o
);

  output [6:0] w_ptr_binary_r_o;
  output [6:0] w_ptr_gray_r_o;
  output [6:0] w_ptr_gray_r_rsync_o;
  input w_clk_i;
  input w_reset_i;
  input w_inc_i;
  input r_clk_i;

  bsg_async_ptr_gray
  wrapper
  (
    .w_ptr_binary_r_o(w_ptr_binary_r_o),
    .w_ptr_gray_r_o(w_ptr_gray_r_o),
    .w_ptr_gray_r_rsync_o(w_ptr_gray_r_rsync_o),
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_inc_i(w_inc_i),
    .r_clk_i(r_clk_i)
  );


endmodule



module bsg_launch_sync_sync_async_reset_negedge_7_unit
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [6:0] iclk_data_i;
  output [6:0] iclk_data_o;
  output [6:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire N0;
  reg [6:0] iclk_data_o,bsg_SYNC_1_r,oclk_data_o;
  assign N0 = ~iclk_i;

  always @(posedge N0 or iclk_reset_i) begin
    if(iclk_reset_i) begin
      { iclk_data_o[6:0] } <= { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 };
    end else if(1'b1) begin
      { iclk_data_o[6:0] } <= { iclk_data_i[6:0] };
    end 
  end


  always @(posedge oclk_i or iclk_reset_i) begin
    if(iclk_reset_i) begin
      { bsg_SYNC_1_r[6:0] } <= { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 };
      { oclk_data_o[6:0] } <= { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 };
    end else if(1'b1) begin
      { bsg_SYNC_1_r[6:0] } <= { iclk_data_o[6:0] };
      { oclk_data_o[6:0] } <= { bsg_SYNC_1_r[6:0] };
    end 
  end


endmodule



module bsg_launch_sync_sync_width_p7_use_negedge_for_launch_p1_use_async_reset_p1
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [6:0] iclk_data_i;
  output [6:0] iclk_data_o;
  output [6:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire [6:0] iclk_data_o,oclk_data_o;

  bsg_launch_sync_sync_async_reset_negedge_7_unit
  async_n_z_blss
  (
    .iclk_i(iclk_i),
    .iclk_reset_i(iclk_reset_i),
    .oclk_i(oclk_i),
    .iclk_data_i(iclk_data_i),
    .iclk_data_o(iclk_data_o),
    .oclk_data_o(oclk_data_o)
  );


endmodule



module bsg_async_ptr_gray
(
  w_clk_i,
  w_reset_i,
  w_inc_i,
  r_clk_i,
  w_ptr_binary_r_o,
  w_ptr_gray_r_o,
  w_ptr_gray_r_rsync_o
);

  output [6:0] w_ptr_binary_r_o;
  output [6:0] w_ptr_gray_r_o;
  output [6:0] w_ptr_gray_r_rsync_o;
  input w_clk_i;
  input w_reset_i;
  input w_inc_i;
  input r_clk_i;
  wire [6:0] w_ptr_gray_r_o,w_ptr_gray_r_rsync_o,w_ptr_p2,w_ptr_gray_n;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
  reg [6:0] w_ptr_p1_r,w_ptr_binary_r_o;

  bsg_launch_sync_sync_width_p7_use_negedge_for_launch_p1_use_async_reset_p1
  ptr_sync
  (
    .iclk_i(w_clk_i),
    .iclk_reset_i(w_reset_i),
    .oclk_i(r_clk_i),
    .iclk_data_i(w_ptr_gray_n),
    .iclk_data_o(w_ptr_gray_r_o),
    .oclk_data_o(w_ptr_gray_r_rsync_o)
  );

  assign w_ptr_p2 = w_ptr_p1_r + 1'b1;
  assign w_ptr_gray_n = (N0)? { w_ptr_p1_r[6:6], N3, N4, N5, N6, N7, N8 } : 
                        (N1)? w_ptr_gray_r_o : 1'b0;
  assign N0 = w_inc_i;
  assign N1 = N2;
  assign N2 = ~w_inc_i;
  assign N3 = w_ptr_p1_r[6] ^ w_ptr_p1_r[5];
  assign N4 = w_ptr_p1_r[5] ^ w_ptr_p1_r[4];
  assign N5 = w_ptr_p1_r[4] ^ w_ptr_p1_r[3];
  assign N6 = w_ptr_p1_r[3] ^ w_ptr_p1_r[2];
  assign N7 = w_ptr_p1_r[2] ^ w_ptr_p1_r[1];
  assign N8 = w_ptr_p1_r[1] ^ w_ptr_p1_r[0];
  assign N9 = ~w_clk_i;

  always @(posedge N9 or w_reset_i) begin
    if(w_reset_i) begin
      { w_ptr_p1_r[6:0] } <= { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 };
      { w_ptr_binary_r_o[6:0] } <= { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 };
    end else if(w_inc_i) begin
      { w_ptr_p1_r[6:0] } <= { w_ptr_p2[6:0] };
      { w_ptr_binary_r_o[6:0] } <= { w_ptr_p1_r[6:0] };
    end 
  end


endmodule

