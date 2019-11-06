

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

  input [63:0] data_i;
  output [127:0] data_o;
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



module bsg_dff_width_p64
(
  clk_i,
  data_i,
  data_o
);

  input [63:0] data_i;
  output [63:0] data_o;
  input clk_i;
  reg [63:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[63:0] } <= { data_i[63:0] };
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

  input [63:0] data_i;
  output [127:0] data_o;
  output [1:0] v_o;
  input clk_i;
  input reset_i;
  input v_i;
  input local_accept_i;
  wire [127:0] data_o;
  wire [1:0] v_o;
  assign data_o[127] = data_o[63];
  assign data_o[126] = data_o[62];
  assign data_o[125] = data_o[61];
  assign data_o[124] = data_o[60];
  assign data_o[123] = data_o[59];
  assign data_o[122] = data_o[58];
  assign data_o[121] = data_o[57];
  assign data_o[120] = data_o[56];
  assign data_o[119] = data_o[55];
  assign data_o[118] = data_o[54];
  assign data_o[117] = data_o[53];
  assign data_o[116] = data_o[52];
  assign data_o[115] = data_o[51];
  assign data_o[114] = data_o[50];
  assign data_o[113] = data_o[49];
  assign data_o[112] = data_o[48];
  assign data_o[111] = data_o[47];
  assign data_o[110] = data_o[46];
  assign data_o[109] = data_o[45];
  assign data_o[108] = data_o[44];
  assign data_o[107] = data_o[43];
  assign data_o[106] = data_o[42];
  assign data_o[105] = data_o[41];
  assign data_o[104] = data_o[40];
  assign data_o[103] = data_o[39];
  assign data_o[102] = data_o[38];
  assign data_o[101] = data_o[37];
  assign data_o[100] = data_o[36];
  assign data_o[99] = data_o[35];
  assign data_o[98] = data_o[34];
  assign data_o[97] = data_o[33];
  assign data_o[96] = data_o[32];
  assign data_o[95] = data_o[31];
  assign data_o[94] = data_o[30];
  assign data_o[93] = data_o[29];
  assign data_o[92] = data_o[28];
  assign data_o[91] = data_o[27];
  assign data_o[90] = data_o[26];
  assign data_o[89] = data_o[25];
  assign data_o[88] = data_o[24];
  assign data_o[87] = data_o[23];
  assign data_o[86] = data_o[22];
  assign data_o[85] = data_o[21];
  assign data_o[84] = data_o[20];
  assign data_o[83] = data_o[19];
  assign data_o[82] = data_o[18];
  assign data_o[81] = data_o[17];
  assign data_o[80] = data_o[16];
  assign data_o[79] = data_o[15];
  assign data_o[78] = data_o[14];
  assign data_o[77] = data_o[13];
  assign data_o[76] = data_o[12];
  assign data_o[75] = data_o[11];
  assign data_o[74] = data_o[10];
  assign data_o[73] = data_o[9];
  assign data_o[72] = data_o[8];
  assign data_o[71] = data_o[7];
  assign data_o[70] = data_o[6];
  assign data_o[69] = data_o[5];
  assign data_o[68] = data_o[4];
  assign data_o[67] = data_o[3];
  assign data_o[66] = data_o[2];
  assign data_o[65] = data_o[1];
  assign data_o[64] = data_o[0];

  bsg_dff_reset_width_p1
  v_reg
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(v_i),
    .data_o(v_o[0])
  );


  bsg_dff_width_p64
  data_reg
  (
    .clk_i(clk_i),
    .data_i(data_i),
    .data_o(data_o[63:0])
  );

  assign v_o[1] = v_o[0] & local_accept_i;

endmodule

