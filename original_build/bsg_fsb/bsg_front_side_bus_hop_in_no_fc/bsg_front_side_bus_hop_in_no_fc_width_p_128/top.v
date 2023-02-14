

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

  input [127:0] data_i;
  output [255:0] data_o;
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



module bsg_dff_width_p128
(
  clk_i,
  data_i,
  data_o
);

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  reg [127:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[127:0] } <= { data_i[127:0] };
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

  input [127:0] data_i;
  output [255:0] data_o;
  output [1:0] v_o;
  input clk_i;
  input reset_i;
  input v_i;
  input local_accept_i;
  wire [255:0] data_o;
  wire [1:0] v_o;
  assign data_o[255] = data_o[127];
  assign data_o[254] = data_o[126];
  assign data_o[253] = data_o[125];
  assign data_o[252] = data_o[124];
  assign data_o[251] = data_o[123];
  assign data_o[250] = data_o[122];
  assign data_o[249] = data_o[121];
  assign data_o[248] = data_o[120];
  assign data_o[247] = data_o[119];
  assign data_o[246] = data_o[118];
  assign data_o[245] = data_o[117];
  assign data_o[244] = data_o[116];
  assign data_o[243] = data_o[115];
  assign data_o[242] = data_o[114];
  assign data_o[241] = data_o[113];
  assign data_o[240] = data_o[112];
  assign data_o[239] = data_o[111];
  assign data_o[238] = data_o[110];
  assign data_o[237] = data_o[109];
  assign data_o[236] = data_o[108];
  assign data_o[235] = data_o[107];
  assign data_o[234] = data_o[106];
  assign data_o[233] = data_o[105];
  assign data_o[232] = data_o[104];
  assign data_o[231] = data_o[103];
  assign data_o[230] = data_o[102];
  assign data_o[229] = data_o[101];
  assign data_o[228] = data_o[100];
  assign data_o[227] = data_o[99];
  assign data_o[226] = data_o[98];
  assign data_o[225] = data_o[97];
  assign data_o[224] = data_o[96];
  assign data_o[223] = data_o[95];
  assign data_o[222] = data_o[94];
  assign data_o[221] = data_o[93];
  assign data_o[220] = data_o[92];
  assign data_o[219] = data_o[91];
  assign data_o[218] = data_o[90];
  assign data_o[217] = data_o[89];
  assign data_o[216] = data_o[88];
  assign data_o[215] = data_o[87];
  assign data_o[214] = data_o[86];
  assign data_o[213] = data_o[85];
  assign data_o[212] = data_o[84];
  assign data_o[211] = data_o[83];
  assign data_o[210] = data_o[82];
  assign data_o[209] = data_o[81];
  assign data_o[208] = data_o[80];
  assign data_o[207] = data_o[79];
  assign data_o[206] = data_o[78];
  assign data_o[205] = data_o[77];
  assign data_o[204] = data_o[76];
  assign data_o[203] = data_o[75];
  assign data_o[202] = data_o[74];
  assign data_o[201] = data_o[73];
  assign data_o[200] = data_o[72];
  assign data_o[199] = data_o[71];
  assign data_o[198] = data_o[70];
  assign data_o[197] = data_o[69];
  assign data_o[196] = data_o[68];
  assign data_o[195] = data_o[67];
  assign data_o[194] = data_o[66];
  assign data_o[193] = data_o[65];
  assign data_o[192] = data_o[64];
  assign data_o[191] = data_o[63];
  assign data_o[190] = data_o[62];
  assign data_o[189] = data_o[61];
  assign data_o[188] = data_o[60];
  assign data_o[187] = data_o[59];
  assign data_o[186] = data_o[58];
  assign data_o[185] = data_o[57];
  assign data_o[184] = data_o[56];
  assign data_o[183] = data_o[55];
  assign data_o[182] = data_o[54];
  assign data_o[181] = data_o[53];
  assign data_o[180] = data_o[52];
  assign data_o[179] = data_o[51];
  assign data_o[178] = data_o[50];
  assign data_o[177] = data_o[49];
  assign data_o[176] = data_o[48];
  assign data_o[175] = data_o[47];
  assign data_o[174] = data_o[46];
  assign data_o[173] = data_o[45];
  assign data_o[172] = data_o[44];
  assign data_o[171] = data_o[43];
  assign data_o[170] = data_o[42];
  assign data_o[169] = data_o[41];
  assign data_o[168] = data_o[40];
  assign data_o[167] = data_o[39];
  assign data_o[166] = data_o[38];
  assign data_o[165] = data_o[37];
  assign data_o[164] = data_o[36];
  assign data_o[163] = data_o[35];
  assign data_o[162] = data_o[34];
  assign data_o[161] = data_o[33];
  assign data_o[160] = data_o[32];
  assign data_o[159] = data_o[31];
  assign data_o[158] = data_o[30];
  assign data_o[157] = data_o[29];
  assign data_o[156] = data_o[28];
  assign data_o[155] = data_o[27];
  assign data_o[154] = data_o[26];
  assign data_o[153] = data_o[25];
  assign data_o[152] = data_o[24];
  assign data_o[151] = data_o[23];
  assign data_o[150] = data_o[22];
  assign data_o[149] = data_o[21];
  assign data_o[148] = data_o[20];
  assign data_o[147] = data_o[19];
  assign data_o[146] = data_o[18];
  assign data_o[145] = data_o[17];
  assign data_o[144] = data_o[16];
  assign data_o[143] = data_o[15];
  assign data_o[142] = data_o[14];
  assign data_o[141] = data_o[13];
  assign data_o[140] = data_o[12];
  assign data_o[139] = data_o[11];
  assign data_o[138] = data_o[10];
  assign data_o[137] = data_o[9];
  assign data_o[136] = data_o[8];
  assign data_o[135] = data_o[7];
  assign data_o[134] = data_o[6];
  assign data_o[133] = data_o[5];
  assign data_o[132] = data_o[4];
  assign data_o[131] = data_o[3];
  assign data_o[130] = data_o[2];
  assign data_o[129] = data_o[1];
  assign data_o[128] = data_o[0];

  bsg_dff_reset_width_p1
  v_reg
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(v_i),
    .data_o(v_o[0])
  );


  bsg_dff_width_p128
  data_reg
  (
    .clk_i(clk_i),
    .data_i(data_i),
    .data_o(data_o[127:0])
  );

  assign v_o[1] = v_o[0] & local_accept_i;

endmodule

