

module top
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  ready_i
);

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;

  bsg_relay_fifo
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_i(ready_i),
    .ready_o(ready_o),
    .v_o(v_o)
  );


endmodule



module bsg_mem_1r1w_synth_width_p128_els_p2_read_write_same_addr_p0_harden_p0
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
  input [127:0] w_data_i;
  input [0:0] r_addr_i;
  output [127:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [127:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8,N9,N10;
  reg [255:0] mem;
  assign r_data_o[127] = (N3)? mem[127] : 
                         (N0)? mem[255] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[126] = (N3)? mem[126] : 
                         (N0)? mem[254] : 1'b0;
  assign r_data_o[125] = (N3)? mem[125] : 
                         (N0)? mem[253] : 1'b0;
  assign r_data_o[124] = (N3)? mem[124] : 
                         (N0)? mem[252] : 1'b0;
  assign r_data_o[123] = (N3)? mem[123] : 
                         (N0)? mem[251] : 1'b0;
  assign r_data_o[122] = (N3)? mem[122] : 
                         (N0)? mem[250] : 1'b0;
  assign r_data_o[121] = (N3)? mem[121] : 
                         (N0)? mem[249] : 1'b0;
  assign r_data_o[120] = (N3)? mem[120] : 
                         (N0)? mem[248] : 1'b0;
  assign r_data_o[119] = (N3)? mem[119] : 
                         (N0)? mem[247] : 1'b0;
  assign r_data_o[118] = (N3)? mem[118] : 
                         (N0)? mem[246] : 1'b0;
  assign r_data_o[117] = (N3)? mem[117] : 
                         (N0)? mem[245] : 1'b0;
  assign r_data_o[116] = (N3)? mem[116] : 
                         (N0)? mem[244] : 1'b0;
  assign r_data_o[115] = (N3)? mem[115] : 
                         (N0)? mem[243] : 1'b0;
  assign r_data_o[114] = (N3)? mem[114] : 
                         (N0)? mem[242] : 1'b0;
  assign r_data_o[113] = (N3)? mem[113] : 
                         (N0)? mem[241] : 1'b0;
  assign r_data_o[112] = (N3)? mem[112] : 
                         (N0)? mem[240] : 1'b0;
  assign r_data_o[111] = (N3)? mem[111] : 
                         (N0)? mem[239] : 1'b0;
  assign r_data_o[110] = (N3)? mem[110] : 
                         (N0)? mem[238] : 1'b0;
  assign r_data_o[109] = (N3)? mem[109] : 
                         (N0)? mem[237] : 1'b0;
  assign r_data_o[108] = (N3)? mem[108] : 
                         (N0)? mem[236] : 1'b0;
  assign r_data_o[107] = (N3)? mem[107] : 
                         (N0)? mem[235] : 1'b0;
  assign r_data_o[106] = (N3)? mem[106] : 
                         (N0)? mem[234] : 1'b0;
  assign r_data_o[105] = (N3)? mem[105] : 
                         (N0)? mem[233] : 1'b0;
  assign r_data_o[104] = (N3)? mem[104] : 
                         (N0)? mem[232] : 1'b0;
  assign r_data_o[103] = (N3)? mem[103] : 
                         (N0)? mem[231] : 1'b0;
  assign r_data_o[102] = (N3)? mem[102] : 
                         (N0)? mem[230] : 1'b0;
  assign r_data_o[101] = (N3)? mem[101] : 
                         (N0)? mem[229] : 1'b0;
  assign r_data_o[100] = (N3)? mem[100] : 
                         (N0)? mem[228] : 1'b0;
  assign r_data_o[99] = (N3)? mem[99] : 
                        (N0)? mem[227] : 1'b0;
  assign r_data_o[98] = (N3)? mem[98] : 
                        (N0)? mem[226] : 1'b0;
  assign r_data_o[97] = (N3)? mem[97] : 
                        (N0)? mem[225] : 1'b0;
  assign r_data_o[96] = (N3)? mem[96] : 
                        (N0)? mem[224] : 1'b0;
  assign r_data_o[95] = (N3)? mem[95] : 
                        (N0)? mem[223] : 1'b0;
  assign r_data_o[94] = (N3)? mem[94] : 
                        (N0)? mem[222] : 1'b0;
  assign r_data_o[93] = (N3)? mem[93] : 
                        (N0)? mem[221] : 1'b0;
  assign r_data_o[92] = (N3)? mem[92] : 
                        (N0)? mem[220] : 1'b0;
  assign r_data_o[91] = (N3)? mem[91] : 
                        (N0)? mem[219] : 1'b0;
  assign r_data_o[90] = (N3)? mem[90] : 
                        (N0)? mem[218] : 1'b0;
  assign r_data_o[89] = (N3)? mem[89] : 
                        (N0)? mem[217] : 1'b0;
  assign r_data_o[88] = (N3)? mem[88] : 
                        (N0)? mem[216] : 1'b0;
  assign r_data_o[87] = (N3)? mem[87] : 
                        (N0)? mem[215] : 1'b0;
  assign r_data_o[86] = (N3)? mem[86] : 
                        (N0)? mem[214] : 1'b0;
  assign r_data_o[85] = (N3)? mem[85] : 
                        (N0)? mem[213] : 1'b0;
  assign r_data_o[84] = (N3)? mem[84] : 
                        (N0)? mem[212] : 1'b0;
  assign r_data_o[83] = (N3)? mem[83] : 
                        (N0)? mem[211] : 1'b0;
  assign r_data_o[82] = (N3)? mem[82] : 
                        (N0)? mem[210] : 1'b0;
  assign r_data_o[81] = (N3)? mem[81] : 
                        (N0)? mem[209] : 1'b0;
  assign r_data_o[80] = (N3)? mem[80] : 
                        (N0)? mem[208] : 1'b0;
  assign r_data_o[79] = (N3)? mem[79] : 
                        (N0)? mem[207] : 1'b0;
  assign r_data_o[78] = (N3)? mem[78] : 
                        (N0)? mem[206] : 1'b0;
  assign r_data_o[77] = (N3)? mem[77] : 
                        (N0)? mem[205] : 1'b0;
  assign r_data_o[76] = (N3)? mem[76] : 
                        (N0)? mem[204] : 1'b0;
  assign r_data_o[75] = (N3)? mem[75] : 
                        (N0)? mem[203] : 1'b0;
  assign r_data_o[74] = (N3)? mem[74] : 
                        (N0)? mem[202] : 1'b0;
  assign r_data_o[73] = (N3)? mem[73] : 
                        (N0)? mem[201] : 1'b0;
  assign r_data_o[72] = (N3)? mem[72] : 
                        (N0)? mem[200] : 1'b0;
  assign r_data_o[71] = (N3)? mem[71] : 
                        (N0)? mem[199] : 1'b0;
  assign r_data_o[70] = (N3)? mem[70] : 
                        (N0)? mem[198] : 1'b0;
  assign r_data_o[69] = (N3)? mem[69] : 
                        (N0)? mem[197] : 1'b0;
  assign r_data_o[68] = (N3)? mem[68] : 
                        (N0)? mem[196] : 1'b0;
  assign r_data_o[67] = (N3)? mem[67] : 
                        (N0)? mem[195] : 1'b0;
  assign r_data_o[66] = (N3)? mem[66] : 
                        (N0)? mem[194] : 1'b0;
  assign r_data_o[65] = (N3)? mem[65] : 
                        (N0)? mem[193] : 1'b0;
  assign r_data_o[64] = (N3)? mem[64] : 
                        (N0)? mem[192] : 1'b0;
  assign r_data_o[63] = (N3)? mem[63] : 
                        (N0)? mem[191] : 1'b0;
  assign r_data_o[62] = (N3)? mem[62] : 
                        (N0)? mem[190] : 1'b0;
  assign r_data_o[61] = (N3)? mem[61] : 
                        (N0)? mem[189] : 1'b0;
  assign r_data_o[60] = (N3)? mem[60] : 
                        (N0)? mem[188] : 1'b0;
  assign r_data_o[59] = (N3)? mem[59] : 
                        (N0)? mem[187] : 1'b0;
  assign r_data_o[58] = (N3)? mem[58] : 
                        (N0)? mem[186] : 1'b0;
  assign r_data_o[57] = (N3)? mem[57] : 
                        (N0)? mem[185] : 1'b0;
  assign r_data_o[56] = (N3)? mem[56] : 
                        (N0)? mem[184] : 1'b0;
  assign r_data_o[55] = (N3)? mem[55] : 
                        (N0)? mem[183] : 1'b0;
  assign r_data_o[54] = (N3)? mem[54] : 
                        (N0)? mem[182] : 1'b0;
  assign r_data_o[53] = (N3)? mem[53] : 
                        (N0)? mem[181] : 1'b0;
  assign r_data_o[52] = (N3)? mem[52] : 
                        (N0)? mem[180] : 1'b0;
  assign r_data_o[51] = (N3)? mem[51] : 
                        (N0)? mem[179] : 1'b0;
  assign r_data_o[50] = (N3)? mem[50] : 
                        (N0)? mem[178] : 1'b0;
  assign r_data_o[49] = (N3)? mem[49] : 
                        (N0)? mem[177] : 1'b0;
  assign r_data_o[48] = (N3)? mem[48] : 
                        (N0)? mem[176] : 1'b0;
  assign r_data_o[47] = (N3)? mem[47] : 
                        (N0)? mem[175] : 1'b0;
  assign r_data_o[46] = (N3)? mem[46] : 
                        (N0)? mem[174] : 1'b0;
  assign r_data_o[45] = (N3)? mem[45] : 
                        (N0)? mem[173] : 1'b0;
  assign r_data_o[44] = (N3)? mem[44] : 
                        (N0)? mem[172] : 1'b0;
  assign r_data_o[43] = (N3)? mem[43] : 
                        (N0)? mem[171] : 1'b0;
  assign r_data_o[42] = (N3)? mem[42] : 
                        (N0)? mem[170] : 1'b0;
  assign r_data_o[41] = (N3)? mem[41] : 
                        (N0)? mem[169] : 1'b0;
  assign r_data_o[40] = (N3)? mem[40] : 
                        (N0)? mem[168] : 1'b0;
  assign r_data_o[39] = (N3)? mem[39] : 
                        (N0)? mem[167] : 1'b0;
  assign r_data_o[38] = (N3)? mem[38] : 
                        (N0)? mem[166] : 1'b0;
  assign r_data_o[37] = (N3)? mem[37] : 
                        (N0)? mem[165] : 1'b0;
  assign r_data_o[36] = (N3)? mem[36] : 
                        (N0)? mem[164] : 1'b0;
  assign r_data_o[35] = (N3)? mem[35] : 
                        (N0)? mem[163] : 1'b0;
  assign r_data_o[34] = (N3)? mem[34] : 
                        (N0)? mem[162] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] : 
                        (N0)? mem[161] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] : 
                        (N0)? mem[160] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[159] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[158] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[157] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[156] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[155] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[154] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[153] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[152] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[151] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[150] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[149] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[148] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[147] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[146] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[145] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[144] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[143] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[142] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[141] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[140] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[139] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[138] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[137] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[136] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[135] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[134] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[133] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[132] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[131] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[130] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[129] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[128] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N10, N9, N8, N7 } = (N1)? { w_addr_i[0:0], w_addr_i[0:0], N5, N5 } : 
                               (N2)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N9) begin
      { mem[255:157], mem[128:128] } <= { w_data_i[127:29], w_data_i[0:0] };
    end 
    if(N10) begin
      { mem[156:129] } <= { w_data_i[28:1] };
    end 
    if(N7) begin
      { mem[127:29], mem[0:0] } <= { w_data_i[127:29], w_data_i[0:0] };
    end 
    if(N8) begin
      { mem[28:1] } <= { w_data_i[28:1] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p128_els_p2_read_write_same_addr_p0
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
  input [127:0] w_data_i;
  input [0:0] r_addr_i;
  output [127:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [127:0] r_data_o;

  bsg_mem_1r1w_synth_width_p128_els_p2_read_write_same_addr_p0_harden_p0
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



module bsg_two_fifo_width_p128
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

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [127:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p128_els_p2_read_write_same_addr_p0
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



module bsg_relay_fifo
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  ready_i
);

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  wire [127:0] data_o;
  wire ready_o,v_o,yumi;

  bsg_two_fifo_width_p128
  two_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_o),
    .data_i(data_i),
    .v_i(v_i),
    .v_o(v_o),
    .data_o(data_o),
    .yumi_i(yumi)
  );

  assign yumi = ready_i & v_o;

endmodule

