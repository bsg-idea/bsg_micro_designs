

module top
(
  clk_i,
  reset_i,
  packet_i,
  v_i,
  ready_o,
  link_o,
  link_i
);

  input [137:0] packet_i;
  output [33:0] link_o;
  input [33:0] link_i;
  input clk_i;
  input reset_i;
  input v_i;
  output ready_o;

  bsg_wormhole_router_adapter_in
  wrapper
  (
    .packet_i(packet_i),
    .link_o(link_o),
    .link_i(link_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o)
  );


endmodule



module bsg_mem_1r1w_synth_width_p3_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [2:0] w_data_i;
  input [0:0] r_addr_i;
  output [2:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [2:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [5:0] mem;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[5] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[4] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[3] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[5:3] } <= { w_data_i[2:0] };
    end 
    if(N7) begin
      { mem[2:0] } <= { w_data_i[2:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p3_els_p2_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [2:0] w_data_i;
  input [0:0] r_addr_i;
  output [2:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [2:0] r_data_o;

  bsg_mem_1r1w_synth_width_p3_els_p2_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i[0]),
    .w_data_i(w_data_i),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i[0]),
    .r_data_o(r_data_o)
  );


endmodule



module bsg_two_fifo_width_p3
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  yumi_i
);

  input [2:0] data_i;
  output [2:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [2:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p3_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i),
    .r_v_i(n_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o)
  );

  assign N9 = (N0)? 1'b1 : 
              (N1)? N5 : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign N10 = (N0)? 1'b0 : 
               (N1)? N4 : 1'b0;
  assign N11 = (N0)? 1'b1 : 
               (N1)? yumi_i : 1'b0;
  assign N12 = (N0)? 1'b0 : 
               (N1)? N6 : 1'b0;
  assign N13 = (N0)? 1'b1 : 
               (N1)? N7 : 1'b0;
  assign N14 = (N0)? 1'b0 : 
               (N1)? N8 : 1'b0;
  assign n_0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N15;
  assign N15 = ~full_r;
  assign N2 = ~reset_i;
  assign N3 = reset_i;
  assign N5 = enq_i;
  assign N4 = ~tail_r;
  assign N6 = ~head_r;
  assign N7 = N17 | N19;
  assign N17 = empty_r & N16;
  assign N16 = ~enq_i;
  assign N19 = N18 & N16;
  assign N18 = N15 & yumi_i;
  assign N8 = N23 | N24;
  assign N23 = N21 & N22;
  assign N21 = N20 & enq_i;
  assign N20 = ~empty_r;
  assign N22 = ~yumi_i;
  assign N24 = full_r & N22;

  always @(posedge clk_i) begin
    if(1'b1) begin
      full_r <= N14;
      empty_r <= N13;
    end 
    if(N9) begin
      tail_r <= N10;
    end 
    if(N11) begin
      head_r <= N12;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p160_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [159:0] w_data_i;
  input [0:0] r_addr_i;
  output [159:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [159:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8,N9,N10;
  reg [319:0] mem;
  assign r_data_o[159] = (N3)? mem[159] : 
                         (N0)? mem[319] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[158] = (N3)? mem[158] : 
                         (N0)? mem[318] : 1'b0;
  assign r_data_o[157] = (N3)? mem[157] : 
                         (N0)? mem[317] : 1'b0;
  assign r_data_o[156] = (N3)? mem[156] : 
                         (N0)? mem[316] : 1'b0;
  assign r_data_o[155] = (N3)? mem[155] : 
                         (N0)? mem[315] : 1'b0;
  assign r_data_o[154] = (N3)? mem[154] : 
                         (N0)? mem[314] : 1'b0;
  assign r_data_o[153] = (N3)? mem[153] : 
                         (N0)? mem[313] : 1'b0;
  assign r_data_o[152] = (N3)? mem[152] : 
                         (N0)? mem[312] : 1'b0;
  assign r_data_o[151] = (N3)? mem[151] : 
                         (N0)? mem[311] : 1'b0;
  assign r_data_o[150] = (N3)? mem[150] : 
                         (N0)? mem[310] : 1'b0;
  assign r_data_o[149] = (N3)? mem[149] : 
                         (N0)? mem[309] : 1'b0;
  assign r_data_o[148] = (N3)? mem[148] : 
                         (N0)? mem[308] : 1'b0;
  assign r_data_o[147] = (N3)? mem[147] : 
                         (N0)? mem[307] : 1'b0;
  assign r_data_o[146] = (N3)? mem[146] : 
                         (N0)? mem[306] : 1'b0;
  assign r_data_o[145] = (N3)? mem[145] : 
                         (N0)? mem[305] : 1'b0;
  assign r_data_o[144] = (N3)? mem[144] : 
                         (N0)? mem[304] : 1'b0;
  assign r_data_o[143] = (N3)? mem[143] : 
                         (N0)? mem[303] : 1'b0;
  assign r_data_o[142] = (N3)? mem[142] : 
                         (N0)? mem[302] : 1'b0;
  assign r_data_o[141] = (N3)? mem[141] : 
                         (N0)? mem[301] : 1'b0;
  assign r_data_o[140] = (N3)? mem[140] : 
                         (N0)? mem[300] : 1'b0;
  assign r_data_o[139] = (N3)? mem[139] : 
                         (N0)? mem[299] : 1'b0;
  assign r_data_o[138] = (N3)? mem[138] : 
                         (N0)? mem[298] : 1'b0;
  assign r_data_o[137] = (N3)? mem[137] : 
                         (N0)? mem[297] : 1'b0;
  assign r_data_o[136] = (N3)? mem[136] : 
                         (N0)? mem[296] : 1'b0;
  assign r_data_o[135] = (N3)? mem[135] : 
                         (N0)? mem[295] : 1'b0;
  assign r_data_o[134] = (N3)? mem[134] : 
                         (N0)? mem[294] : 1'b0;
  assign r_data_o[133] = (N3)? mem[133] : 
                         (N0)? mem[293] : 1'b0;
  assign r_data_o[132] = (N3)? mem[132] : 
                         (N0)? mem[292] : 1'b0;
  assign r_data_o[131] = (N3)? mem[131] : 
                         (N0)? mem[291] : 1'b0;
  assign r_data_o[130] = (N3)? mem[130] : 
                         (N0)? mem[290] : 1'b0;
  assign r_data_o[129] = (N3)? mem[129] : 
                         (N0)? mem[289] : 1'b0;
  assign r_data_o[128] = (N3)? mem[128] : 
                         (N0)? mem[288] : 1'b0;
  assign r_data_o[127] = (N3)? mem[127] : 
                         (N0)? mem[287] : 1'b0;
  assign r_data_o[126] = (N3)? mem[126] : 
                         (N0)? mem[286] : 1'b0;
  assign r_data_o[125] = (N3)? mem[125] : 
                         (N0)? mem[285] : 1'b0;
  assign r_data_o[124] = (N3)? mem[124] : 
                         (N0)? mem[284] : 1'b0;
  assign r_data_o[123] = (N3)? mem[123] : 
                         (N0)? mem[283] : 1'b0;
  assign r_data_o[122] = (N3)? mem[122] : 
                         (N0)? mem[282] : 1'b0;
  assign r_data_o[121] = (N3)? mem[121] : 
                         (N0)? mem[281] : 1'b0;
  assign r_data_o[120] = (N3)? mem[120] : 
                         (N0)? mem[280] : 1'b0;
  assign r_data_o[119] = (N3)? mem[119] : 
                         (N0)? mem[279] : 1'b0;
  assign r_data_o[118] = (N3)? mem[118] : 
                         (N0)? mem[278] : 1'b0;
  assign r_data_o[117] = (N3)? mem[117] : 
                         (N0)? mem[277] : 1'b0;
  assign r_data_o[116] = (N3)? mem[116] : 
                         (N0)? mem[276] : 1'b0;
  assign r_data_o[115] = (N3)? mem[115] : 
                         (N0)? mem[275] : 1'b0;
  assign r_data_o[114] = (N3)? mem[114] : 
                         (N0)? mem[274] : 1'b0;
  assign r_data_o[113] = (N3)? mem[113] : 
                         (N0)? mem[273] : 1'b0;
  assign r_data_o[112] = (N3)? mem[112] : 
                         (N0)? mem[272] : 1'b0;
  assign r_data_o[111] = (N3)? mem[111] : 
                         (N0)? mem[271] : 1'b0;
  assign r_data_o[110] = (N3)? mem[110] : 
                         (N0)? mem[270] : 1'b0;
  assign r_data_o[109] = (N3)? mem[109] : 
                         (N0)? mem[269] : 1'b0;
  assign r_data_o[108] = (N3)? mem[108] : 
                         (N0)? mem[268] : 1'b0;
  assign r_data_o[107] = (N3)? mem[107] : 
                         (N0)? mem[267] : 1'b0;
  assign r_data_o[106] = (N3)? mem[106] : 
                         (N0)? mem[266] : 1'b0;
  assign r_data_o[105] = (N3)? mem[105] : 
                         (N0)? mem[265] : 1'b0;
  assign r_data_o[104] = (N3)? mem[104] : 
                         (N0)? mem[264] : 1'b0;
  assign r_data_o[103] = (N3)? mem[103] : 
                         (N0)? mem[263] : 1'b0;
  assign r_data_o[102] = (N3)? mem[102] : 
                         (N0)? mem[262] : 1'b0;
  assign r_data_o[101] = (N3)? mem[101] : 
                         (N0)? mem[261] : 1'b0;
  assign r_data_o[100] = (N3)? mem[100] : 
                         (N0)? mem[260] : 1'b0;
  assign r_data_o[99] = (N3)? mem[99] : 
                        (N0)? mem[259] : 1'b0;
  assign r_data_o[98] = (N3)? mem[98] : 
                        (N0)? mem[258] : 1'b0;
  assign r_data_o[97] = (N3)? mem[97] : 
                        (N0)? mem[257] : 1'b0;
  assign r_data_o[96] = (N3)? mem[96] : 
                        (N0)? mem[256] : 1'b0;
  assign r_data_o[95] = (N3)? mem[95] : 
                        (N0)? mem[255] : 1'b0;
  assign r_data_o[94] = (N3)? mem[94] : 
                        (N0)? mem[254] : 1'b0;
  assign r_data_o[93] = (N3)? mem[93] : 
                        (N0)? mem[253] : 1'b0;
  assign r_data_o[92] = (N3)? mem[92] : 
                        (N0)? mem[252] : 1'b0;
  assign r_data_o[91] = (N3)? mem[91] : 
                        (N0)? mem[251] : 1'b0;
  assign r_data_o[90] = (N3)? mem[90] : 
                        (N0)? mem[250] : 1'b0;
  assign r_data_o[89] = (N3)? mem[89] : 
                        (N0)? mem[249] : 1'b0;
  assign r_data_o[88] = (N3)? mem[88] : 
                        (N0)? mem[248] : 1'b0;
  assign r_data_o[87] = (N3)? mem[87] : 
                        (N0)? mem[247] : 1'b0;
  assign r_data_o[86] = (N3)? mem[86] : 
                        (N0)? mem[246] : 1'b0;
  assign r_data_o[85] = (N3)? mem[85] : 
                        (N0)? mem[245] : 1'b0;
  assign r_data_o[84] = (N3)? mem[84] : 
                        (N0)? mem[244] : 1'b0;
  assign r_data_o[83] = (N3)? mem[83] : 
                        (N0)? mem[243] : 1'b0;
  assign r_data_o[82] = (N3)? mem[82] : 
                        (N0)? mem[242] : 1'b0;
  assign r_data_o[81] = (N3)? mem[81] : 
                        (N0)? mem[241] : 1'b0;
  assign r_data_o[80] = (N3)? mem[80] : 
                        (N0)? mem[240] : 1'b0;
  assign r_data_o[79] = (N3)? mem[79] : 
                        (N0)? mem[239] : 1'b0;
  assign r_data_o[78] = (N3)? mem[78] : 
                        (N0)? mem[238] : 1'b0;
  assign r_data_o[77] = (N3)? mem[77] : 
                        (N0)? mem[237] : 1'b0;
  assign r_data_o[76] = (N3)? mem[76] : 
                        (N0)? mem[236] : 1'b0;
  assign r_data_o[75] = (N3)? mem[75] : 
                        (N0)? mem[235] : 1'b0;
  assign r_data_o[74] = (N3)? mem[74] : 
                        (N0)? mem[234] : 1'b0;
  assign r_data_o[73] = (N3)? mem[73] : 
                        (N0)? mem[233] : 1'b0;
  assign r_data_o[72] = (N3)? mem[72] : 
                        (N0)? mem[232] : 1'b0;
  assign r_data_o[71] = (N3)? mem[71] : 
                        (N0)? mem[231] : 1'b0;
  assign r_data_o[70] = (N3)? mem[70] : 
                        (N0)? mem[230] : 1'b0;
  assign r_data_o[69] = (N3)? mem[69] : 
                        (N0)? mem[229] : 1'b0;
  assign r_data_o[68] = (N3)? mem[68] : 
                        (N0)? mem[228] : 1'b0;
  assign r_data_o[67] = (N3)? mem[67] : 
                        (N0)? mem[227] : 1'b0;
  assign r_data_o[66] = (N3)? mem[66] : 
                        (N0)? mem[226] : 1'b0;
  assign r_data_o[65] = (N3)? mem[65] : 
                        (N0)? mem[225] : 1'b0;
  assign r_data_o[64] = (N3)? mem[64] : 
                        (N0)? mem[224] : 1'b0;
  assign r_data_o[63] = (N3)? mem[63] : 
                        (N0)? mem[223] : 1'b0;
  assign r_data_o[62] = (N3)? mem[62] : 
                        (N0)? mem[222] : 1'b0;
  assign r_data_o[61] = (N3)? mem[61] : 
                        (N0)? mem[221] : 1'b0;
  assign r_data_o[60] = (N3)? mem[60] : 
                        (N0)? mem[220] : 1'b0;
  assign r_data_o[59] = (N3)? mem[59] : 
                        (N0)? mem[219] : 1'b0;
  assign r_data_o[58] = (N3)? mem[58] : 
                        (N0)? mem[218] : 1'b0;
  assign r_data_o[57] = (N3)? mem[57] : 
                        (N0)? mem[217] : 1'b0;
  assign r_data_o[56] = (N3)? mem[56] : 
                        (N0)? mem[216] : 1'b0;
  assign r_data_o[55] = (N3)? mem[55] : 
                        (N0)? mem[215] : 1'b0;
  assign r_data_o[54] = (N3)? mem[54] : 
                        (N0)? mem[214] : 1'b0;
  assign r_data_o[53] = (N3)? mem[53] : 
                        (N0)? mem[213] : 1'b0;
  assign r_data_o[52] = (N3)? mem[52] : 
                        (N0)? mem[212] : 1'b0;
  assign r_data_o[51] = (N3)? mem[51] : 
                        (N0)? mem[211] : 1'b0;
  assign r_data_o[50] = (N3)? mem[50] : 
                        (N0)? mem[210] : 1'b0;
  assign r_data_o[49] = (N3)? mem[49] : 
                        (N0)? mem[209] : 1'b0;
  assign r_data_o[48] = (N3)? mem[48] : 
                        (N0)? mem[208] : 1'b0;
  assign r_data_o[47] = (N3)? mem[47] : 
                        (N0)? mem[207] : 1'b0;
  assign r_data_o[46] = (N3)? mem[46] : 
                        (N0)? mem[206] : 1'b0;
  assign r_data_o[45] = (N3)? mem[45] : 
                        (N0)? mem[205] : 1'b0;
  assign r_data_o[44] = (N3)? mem[44] : 
                        (N0)? mem[204] : 1'b0;
  assign r_data_o[43] = (N3)? mem[43] : 
                        (N0)? mem[203] : 1'b0;
  assign r_data_o[42] = (N3)? mem[42] : 
                        (N0)? mem[202] : 1'b0;
  assign r_data_o[41] = (N3)? mem[41] : 
                        (N0)? mem[201] : 1'b0;
  assign r_data_o[40] = (N3)? mem[40] : 
                        (N0)? mem[200] : 1'b0;
  assign r_data_o[39] = (N3)? mem[39] : 
                        (N0)? mem[199] : 1'b0;
  assign r_data_o[38] = (N3)? mem[38] : 
                        (N0)? mem[198] : 1'b0;
  assign r_data_o[37] = (N3)? mem[37] : 
                        (N0)? mem[197] : 1'b0;
  assign r_data_o[36] = (N3)? mem[36] : 
                        (N0)? mem[196] : 1'b0;
  assign r_data_o[35] = (N3)? mem[35] : 
                        (N0)? mem[195] : 1'b0;
  assign r_data_o[34] = (N3)? mem[34] : 
                        (N0)? mem[194] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] : 
                        (N0)? mem[193] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] : 
                        (N0)? mem[192] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[191] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[190] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[189] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[188] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[187] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[186] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[185] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[184] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[183] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[182] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[181] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[180] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[179] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[178] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[177] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[176] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[175] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[174] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[173] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[172] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[171] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[170] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[169] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[168] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[167] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[166] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[165] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[164] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[163] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[162] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[161] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[160] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N10, N9, N8, N7 } = (N1)? { w_addr_i[0:0], w_addr_i[0:0], N5, N5 } : 
                               (N2)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N9) begin
      { mem[319:221], mem[160:160] } <= { w_data_i[159:61], w_data_i[0:0] };
    end 
    if(N10) begin
      { mem[220:161] } <= { w_data_i[60:1] };
    end 
    if(N7) begin
      { mem[159:61], mem[0:0] } <= { w_data_i[159:61], w_data_i[0:0] };
    end 
    if(N8) begin
      { mem[60:1] } <= { w_data_i[60:1] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p160_els_p2_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [159:0] w_data_i;
  input [0:0] r_addr_i;
  output [159:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [159:0] r_data_o;

  bsg_mem_1r1w_synth_width_p160_els_p2_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i[0]),
    .w_data_i(w_data_i),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i[0]),
    .r_data_o(r_data_o)
  );


endmodule



module bsg_two_fifo_width_p160
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  yumi_i
);

  input [159:0] data_i;
  output [159:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [159:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p160_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i),
    .r_v_i(n_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o)
  );

  assign N9 = (N0)? 1'b1 : 
              (N1)? N5 : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign N10 = (N0)? 1'b0 : 
               (N1)? N4 : 1'b0;
  assign N11 = (N0)? 1'b1 : 
               (N1)? yumi_i : 1'b0;
  assign N12 = (N0)? 1'b0 : 
               (N1)? N6 : 1'b0;
  assign N13 = (N0)? 1'b1 : 
               (N1)? N7 : 1'b0;
  assign N14 = (N0)? 1'b0 : 
               (N1)? N8 : 1'b0;
  assign n_0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N15;
  assign N15 = ~full_r;
  assign N2 = ~reset_i;
  assign N3 = reset_i;
  assign N5 = enq_i;
  assign N4 = ~tail_r;
  assign N6 = ~head_r;
  assign N7 = N17 | N19;
  assign N17 = empty_r & N16;
  assign N16 = ~enq_i;
  assign N19 = N18 & N16;
  assign N18 = N15 & yumi_i;
  assign N8 = N23 | N24;
  assign N23 = N21 & N22;
  assign N21 = N20 & enq_i;
  assign N20 = ~empty_r;
  assign N22 = ~yumi_i;
  assign N24 = full_r & N22;

  always @(posedge clk_i) begin
    if(1'b1) begin
      full_r <= N14;
      empty_r <= N13;
    end 
    if(N9) begin
      tail_r <= N10;
    end 
    if(N11) begin
      head_r <= N12;
    end 
  end


endmodule



module bsg_counter_clear_up_max_val_p4_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [2:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14;
  reg [2:0] count_o;
  assign { N8, N7, N6 } = { N14, N13, N12 } + up_i;
  assign { N11, N10, N9 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                            (N1)? { N8, N7, N6 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign { N14, N13, N12 } = count_o * N4;
  assign N2 = ~reset_i;
  assign N3 = N2;
  assign N4 = ~clear_i;
  assign N5 = N3 & N4;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_o[2:0] } <= { N11, N10, N9 };
    end 
  end


endmodule



module bsg_mux_width_p32_els_p5
(
  data_i,
  sel_i,
  data_o
);

  input [159:0] data_i;
  input [2:0] sel_i;
  output [31:0] data_o;
  wire [31:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13;
  assign N10 = N0 & N1 & N2;
  assign N0 = ~sel_i[2];
  assign N1 = ~sel_i[0];
  assign N2 = ~sel_i[1];
  assign N11 = sel_i[0] & N3;
  assign N3 = ~sel_i[1];
  assign N12 = N4 & sel_i[1];
  assign N4 = ~sel_i[0];
  assign N13 = sel_i[0] & sel_i[1];
  assign data_o[31] = (N5)? data_i[31] : 
                      (N6)? data_i[63] : 
                      (N7)? data_i[95] : 
                      (N8)? data_i[127] : 
                      (N9)? data_i[159] : 1'b0;
  assign N5 = N10;
  assign N6 = N11;
  assign N7 = N12;
  assign N8 = N13;
  assign N9 = sel_i[2];
  assign data_o[30] = (N5)? data_i[30] : 
                      (N6)? data_i[62] : 
                      (N7)? data_i[94] : 
                      (N8)? data_i[126] : 
                      (N9)? data_i[158] : 1'b0;
  assign data_o[29] = (N5)? data_i[29] : 
                      (N6)? data_i[61] : 
                      (N7)? data_i[93] : 
                      (N8)? data_i[125] : 
                      (N9)? data_i[157] : 1'b0;
  assign data_o[28] = (N5)? data_i[28] : 
                      (N6)? data_i[60] : 
                      (N7)? data_i[92] : 
                      (N8)? data_i[124] : 
                      (N9)? data_i[156] : 1'b0;
  assign data_o[27] = (N5)? data_i[27] : 
                      (N6)? data_i[59] : 
                      (N7)? data_i[91] : 
                      (N8)? data_i[123] : 
                      (N9)? data_i[155] : 1'b0;
  assign data_o[26] = (N5)? data_i[26] : 
                      (N6)? data_i[58] : 
                      (N7)? data_i[90] : 
                      (N8)? data_i[122] : 
                      (N9)? data_i[154] : 1'b0;
  assign data_o[25] = (N5)? data_i[25] : 
                      (N6)? data_i[57] : 
                      (N7)? data_i[89] : 
                      (N8)? data_i[121] : 
                      (N9)? data_i[153] : 1'b0;
  assign data_o[24] = (N5)? data_i[24] : 
                      (N6)? data_i[56] : 
                      (N7)? data_i[88] : 
                      (N8)? data_i[120] : 
                      (N9)? data_i[152] : 1'b0;
  assign data_o[23] = (N5)? data_i[23] : 
                      (N6)? data_i[55] : 
                      (N7)? data_i[87] : 
                      (N8)? data_i[119] : 
                      (N9)? data_i[151] : 1'b0;
  assign data_o[22] = (N5)? data_i[22] : 
                      (N6)? data_i[54] : 
                      (N7)? data_i[86] : 
                      (N8)? data_i[118] : 
                      (N9)? data_i[150] : 1'b0;
  assign data_o[21] = (N5)? data_i[21] : 
                      (N6)? data_i[53] : 
                      (N7)? data_i[85] : 
                      (N8)? data_i[117] : 
                      (N9)? data_i[149] : 1'b0;
  assign data_o[20] = (N5)? data_i[20] : 
                      (N6)? data_i[52] : 
                      (N7)? data_i[84] : 
                      (N8)? data_i[116] : 
                      (N9)? data_i[148] : 1'b0;
  assign data_o[19] = (N5)? data_i[19] : 
                      (N6)? data_i[51] : 
                      (N7)? data_i[83] : 
                      (N8)? data_i[115] : 
                      (N9)? data_i[147] : 1'b0;
  assign data_o[18] = (N5)? data_i[18] : 
                      (N6)? data_i[50] : 
                      (N7)? data_i[82] : 
                      (N8)? data_i[114] : 
                      (N9)? data_i[146] : 1'b0;
  assign data_o[17] = (N5)? data_i[17] : 
                      (N6)? data_i[49] : 
                      (N7)? data_i[81] : 
                      (N8)? data_i[113] : 
                      (N9)? data_i[145] : 1'b0;
  assign data_o[16] = (N5)? data_i[16] : 
                      (N6)? data_i[48] : 
                      (N7)? data_i[80] : 
                      (N8)? data_i[112] : 
                      (N9)? data_i[144] : 1'b0;
  assign data_o[15] = (N5)? data_i[15] : 
                      (N6)? data_i[47] : 
                      (N7)? data_i[79] : 
                      (N8)? data_i[111] : 
                      (N9)? data_i[143] : 1'b0;
  assign data_o[14] = (N5)? data_i[14] : 
                      (N6)? data_i[46] : 
                      (N7)? data_i[78] : 
                      (N8)? data_i[110] : 
                      (N9)? data_i[142] : 1'b0;
  assign data_o[13] = (N5)? data_i[13] : 
                      (N6)? data_i[45] : 
                      (N7)? data_i[77] : 
                      (N8)? data_i[109] : 
                      (N9)? data_i[141] : 1'b0;
  assign data_o[12] = (N5)? data_i[12] : 
                      (N6)? data_i[44] : 
                      (N7)? data_i[76] : 
                      (N8)? data_i[108] : 
                      (N9)? data_i[140] : 1'b0;
  assign data_o[11] = (N5)? data_i[11] : 
                      (N6)? data_i[43] : 
                      (N7)? data_i[75] : 
                      (N8)? data_i[107] : 
                      (N9)? data_i[139] : 1'b0;
  assign data_o[10] = (N5)? data_i[10] : 
                      (N6)? data_i[42] : 
                      (N7)? data_i[74] : 
                      (N8)? data_i[106] : 
                      (N9)? data_i[138] : 1'b0;
  assign data_o[9] = (N5)? data_i[9] : 
                     (N6)? data_i[41] : 
                     (N7)? data_i[73] : 
                     (N8)? data_i[105] : 
                     (N9)? data_i[137] : 1'b0;
  assign data_o[8] = (N5)? data_i[8] : 
                     (N6)? data_i[40] : 
                     (N7)? data_i[72] : 
                     (N8)? data_i[104] : 
                     (N9)? data_i[136] : 1'b0;
  assign data_o[7] = (N5)? data_i[7] : 
                     (N6)? data_i[39] : 
                     (N7)? data_i[71] : 
                     (N8)? data_i[103] : 
                     (N9)? data_i[135] : 1'b0;
  assign data_o[6] = (N5)? data_i[6] : 
                     (N6)? data_i[38] : 
                     (N7)? data_i[70] : 
                     (N8)? data_i[102] : 
                     (N9)? data_i[134] : 1'b0;
  assign data_o[5] = (N5)? data_i[5] : 
                     (N6)? data_i[37] : 
                     (N7)? data_i[69] : 
                     (N8)? data_i[101] : 
                     (N9)? data_i[133] : 1'b0;
  assign data_o[4] = (N5)? data_i[4] : 
                     (N6)? data_i[36] : 
                     (N7)? data_i[68] : 
                     (N8)? data_i[100] : 
                     (N9)? data_i[132] : 1'b0;
  assign data_o[3] = (N5)? data_i[3] : 
                     (N6)? data_i[35] : 
                     (N7)? data_i[67] : 
                     (N8)? data_i[99] : 
                     (N9)? data_i[131] : 1'b0;
  assign data_o[2] = (N5)? data_i[2] : 
                     (N6)? data_i[34] : 
                     (N7)? data_i[66] : 
                     (N8)? data_i[98] : 
                     (N9)? data_i[130] : 1'b0;
  assign data_o[1] = (N5)? data_i[1] : 
                     (N6)? data_i[33] : 
                     (N7)? data_i[65] : 
                     (N8)? data_i[97] : 
                     (N9)? data_i[129] : 1'b0;
  assign data_o[0] = (N5)? data_i[0] : 
                     (N6)? data_i[32] : 
                     (N7)? data_i[64] : 
                     (N8)? data_i[96] : 
                     (N9)? data_i[128] : 1'b0;

endmodule



module bsg_parallel_in_serial_out_dynamic_width_p32_max_els_p5
(
  clk_i,
  reset_i,
  v_i,
  len_i,
  data_i,
  ready_o,
  v_o,
  len_v_o,
  data_o,
  yumi_i
);

  input [2:0] len_i;
  input [159:0] data_i;
  output [31:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  output len_v_o;
  wire [31:0] data_o;
  wire ready_o,v_o,len_v_o,count_r_is_last,up_li,clear_li,N0,N1,N3;
  wire [2:0] len_lo,count_lo;
  wire [159:0] fifo_data_lo;

  bsg_two_fifo_width_p3
  go_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_o),
    .data_i(len_i),
    .v_i(v_i),
    .v_o(v_o),
    .data_o(len_lo),
    .yumi_i(clear_li)
  );


  bsg_two_fifo_width_p160
  data_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(v_i),
    .data_o(fifo_data_lo),
    .yumi_i(clear_li)
  );

  assign count_r_is_last = count_lo == len_lo;

  bsg_counter_clear_up_max_val_p4_init_val_p0
  ctr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_li),
    .up_i(up_li),
    .count_o(count_lo)
  );


  bsg_mux_width_p32_els_p5
  data_mux
  (
    .data_i(fifo_data_lo),
    .sel_i(count_lo),
    .data_o(data_o)
  );

  assign N0 = count_lo[1] | count_lo[2];
  assign N1 = count_lo[0] | N0;
  assign len_v_o = ~N1;
  assign up_li = yumi_i & N3;
  assign N3 = ~count_r_is_last;
  assign clear_li = yumi_i & count_r_is_last;

endmodule



module bsg_wormhole_router_adapter_in
(
  clk_i,
  reset_i,
  packet_i,
  v_i,
  ready_o,
  link_o,
  link_i
);

  input [137:0] packet_i;
  output [33:0] link_o;
  input [33:0] link_i;
  input clk_i;
  input reset_i;
  input v_i;
  output ready_o;
  wire [33:0] link_o;
  wire ready_o,n_3_net_;
  assign link_o[32] = 1'b0;

  bsg_parallel_in_serial_out_dynamic_width_p32_max_els_p5
  piso
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .len_i(packet_i[7:5]),
    .data_i({ 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, packet_i }),
    .ready_o(ready_o),
    .v_o(link_o[33]),
    .data_o(link_o[31:0]),
    .yumi_i(n_3_net_)
  );

  assign n_3_net_ = link_i[32] & link_o[33];

endmodule

