

module top
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  data_o,
  v_o,
  local_accept_i
);

  input [31:0] data_i;
  output [63:0] data_o;
  output [1:0] v_o;
  input clk_i;
  input reset_i;
  input v_i;
  input local_accept_i;

  bsg_front_side_bus_hop_in_no_fc
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .v_o(v_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .local_accept_i(local_accept_i)
  );


endmodule



module bsg_dff_reset_width_p1
(
  clk_i,
  reset_i,
  data_i,
  data_o
);

  input [0:0] data_i;
  output [0:0] data_o;
  input clk_i;
  input reset_i;
  wire N0,N1,N2,N3;
  reg [0:0] data_o;
  assign N3 = (N0)? 1'b0 : 
              (N1)? data_i[0] : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[0:0] } <= { N3 };
    end 
  end


endmodule



module bsg_dff_width_p32
(
  clk_i,
  data_i,
  data_o
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clk_i;
  reg [31:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[31:0] } <= { data_i[31:0] };
    end 
  end


endmodule



module bsg_front_side_bus_hop_in_no_fc
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  data_o,
  v_o,
  local_accept_i
);

  input [31:0] data_i;
  output [63:0] data_o;
  output [1:0] v_o;
  input clk_i;
  input reset_i;
  input v_i;
  input local_accept_i;
  wire [63:0] data_o;
  wire [1:0] v_o;
  assign data_o[63] = data_o[31];
  assign data_o[62] = data_o[30];
  assign data_o[61] = data_o[29];
  assign data_o[60] = data_o[28];
  assign data_o[59] = data_o[27];
  assign data_o[58] = data_o[26];
  assign data_o[57] = data_o[25];
  assign data_o[56] = data_o[24];
  assign data_o[55] = data_o[23];
  assign data_o[54] = data_o[22];
  assign data_o[53] = data_o[21];
  assign data_o[52] = data_o[20];
  assign data_o[51] = data_o[19];
  assign data_o[50] = data_o[18];
  assign data_o[49] = data_o[17];
  assign data_o[48] = data_o[16];
  assign data_o[47] = data_o[15];
  assign data_o[46] = data_o[14];
  assign data_o[45] = data_o[13];
  assign data_o[44] = data_o[12];
  assign data_o[43] = data_o[11];
  assign data_o[42] = data_o[10];
  assign data_o[41] = data_o[9];
  assign data_o[40] = data_o[8];
  assign data_o[39] = data_o[7];
  assign data_o[38] = data_o[6];
  assign data_o[37] = data_o[5];
  assign data_o[36] = data_o[4];
  assign data_o[35] = data_o[3];
  assign data_o[34] = data_o[2];
  assign data_o[33] = data_o[1];
  assign data_o[32] = data_o[0];

  bsg_dff_reset_width_p1
  v_reg
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(v_i),
    .data_o(v_o[0])
  );


  bsg_dff_width_p32
  data_reg
  (
    .clk_i(clk_i),
    .data_i(data_i),
    .data_o(data_o[31:0])
  );

  assign v_o[1] = v_o[0] & local_accept_i;

endmodule

