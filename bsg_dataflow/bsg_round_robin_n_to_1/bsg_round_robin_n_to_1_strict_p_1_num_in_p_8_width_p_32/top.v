

module top
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  yumi_o,
  v_o,
  data_o,
  tag_o,
  yumi_i
);

  input [255:0] data_i;
  input [7:0] v_i;
  output [7:0] yumi_o;
  output [31:0] data_o;
  output [2:0] tag_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;

  bsg_round_robin_n_to_1
  wrapper
  (
    .data_i(data_i),
    .v_i(v_i),
    .yumi_o(yumi_o),
    .data_o(data_o),
    .tag_o(tag_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .yumi_i(yumi_i),
    .v_o(v_o)
  );


endmodule



module bsg_circular_ptr_slots_p8_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [2:0] o;
  output [2:0] n_o;
  input clk;
  input reset_i;
  wire [2:0] o,n_o,\genblk1.genblk1.ptr_r_p1 ;
  wire N0,N1,N2;
  reg o_2_sv2v_reg,o_1_sv2v_reg,o_0_sv2v_reg;
  assign o[2] = o_2_sv2v_reg;
  assign o[1] = o_1_sv2v_reg;
  assign o[0] = o_0_sv2v_reg;
  assign \genblk1.genblk1.ptr_r_p1  = o + 1'b1;
  assign n_o = (N0)? \genblk1.genblk1.ptr_r_p1  : 
               (N1)? o : 1'b0;
  assign N0 = add_i[0];
  assign N1 = N2;
  assign N2 = ~add_i[0];

  always @(posedge clk) begin
    if(reset_i) begin
      o_2_sv2v_reg <= 1'b0;
      o_1_sv2v_reg <= 1'b0;
      o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_2_sv2v_reg <= n_o[2];
      o_1_sv2v_reg <= n_o[1];
      o_0_sv2v_reg <= n_o[0];
    end 
  end


endmodule



module bsg_round_robin_n_to_1
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  yumi_o,
  v_o,
  data_o,
  tag_o,
  yumi_i
);

  input [255:0] data_i;
  input [7:0] v_i;
  output [7:0] yumi_o;
  output [31:0] data_o;
  output [2:0] tag_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;
  wire [7:0] yumi_o;
  wire [31:0] data_o;
  wire [2:0] tag_o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,sv2v_dc_1,sv2v_dc_2,sv2v_dc_3;

  bsg_circular_ptr_slots_p8_max_add_p1
  \strict.circular_ptr 
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(yumi_i),
    .o(tag_o),
    .n_o({ sv2v_dc_1, sv2v_dc_2, sv2v_dc_3 })
  );

  assign v_o = (N7)? v_i[0] : 
               (N9)? v_i[1] : 
               (N11)? v_i[2] : 
               (N13)? v_i[3] : 
               (N8)? v_i[4] : 
               (N10)? v_i[5] : 
               (N12)? v_i[6] : 
               (N14)? v_i[7] : 1'b0;
  assign data_o[31] = (N19)? data_i[31] : 
                      (N21)? data_i[63] : 
                      (N23)? data_i[95] : 
                      (N25)? data_i[127] : 
                      (N20)? data_i[159] : 
                      (N22)? data_i[191] : 
                      (N24)? data_i[223] : 
                      (N26)? data_i[255] : 1'b0;
  assign data_o[30] = (N19)? data_i[30] : 
                      (N21)? data_i[62] : 
                      (N23)? data_i[94] : 
                      (N25)? data_i[126] : 
                      (N20)? data_i[158] : 
                      (N22)? data_i[190] : 
                      (N24)? data_i[222] : 
                      (N26)? data_i[254] : 1'b0;
  assign data_o[29] = (N19)? data_i[29] : 
                      (N21)? data_i[61] : 
                      (N23)? data_i[93] : 
                      (N25)? data_i[125] : 
                      (N20)? data_i[157] : 
                      (N22)? data_i[189] : 
                      (N24)? data_i[221] : 
                      (N26)? data_i[253] : 1'b0;
  assign data_o[28] = (N19)? data_i[28] : 
                      (N21)? data_i[60] : 
                      (N23)? data_i[92] : 
                      (N25)? data_i[124] : 
                      (N20)? data_i[156] : 
                      (N22)? data_i[188] : 
                      (N24)? data_i[220] : 
                      (N26)? data_i[252] : 1'b0;
  assign data_o[27] = (N19)? data_i[27] : 
                      (N21)? data_i[59] : 
                      (N23)? data_i[91] : 
                      (N25)? data_i[123] : 
                      (N20)? data_i[155] : 
                      (N22)? data_i[187] : 
                      (N24)? data_i[219] : 
                      (N26)? data_i[251] : 1'b0;
  assign data_o[26] = (N19)? data_i[26] : 
                      (N21)? data_i[58] : 
                      (N23)? data_i[90] : 
                      (N25)? data_i[122] : 
                      (N20)? data_i[154] : 
                      (N22)? data_i[186] : 
                      (N24)? data_i[218] : 
                      (N26)? data_i[250] : 1'b0;
  assign data_o[25] = (N19)? data_i[25] : 
                      (N21)? data_i[57] : 
                      (N23)? data_i[89] : 
                      (N25)? data_i[121] : 
                      (N20)? data_i[153] : 
                      (N22)? data_i[185] : 
                      (N24)? data_i[217] : 
                      (N26)? data_i[249] : 1'b0;
  assign data_o[24] = (N19)? data_i[24] : 
                      (N21)? data_i[56] : 
                      (N23)? data_i[88] : 
                      (N25)? data_i[120] : 
                      (N20)? data_i[152] : 
                      (N22)? data_i[184] : 
                      (N24)? data_i[216] : 
                      (N26)? data_i[248] : 1'b0;
  assign data_o[23] = (N19)? data_i[23] : 
                      (N21)? data_i[55] : 
                      (N23)? data_i[87] : 
                      (N25)? data_i[119] : 
                      (N20)? data_i[151] : 
                      (N22)? data_i[183] : 
                      (N24)? data_i[215] : 
                      (N26)? data_i[247] : 1'b0;
  assign data_o[22] = (N19)? data_i[22] : 
                      (N21)? data_i[54] : 
                      (N23)? data_i[86] : 
                      (N25)? data_i[118] : 
                      (N20)? data_i[150] : 
                      (N22)? data_i[182] : 
                      (N24)? data_i[214] : 
                      (N26)? data_i[246] : 1'b0;
  assign data_o[21] = (N19)? data_i[21] : 
                      (N21)? data_i[53] : 
                      (N23)? data_i[85] : 
                      (N25)? data_i[117] : 
                      (N20)? data_i[149] : 
                      (N22)? data_i[181] : 
                      (N24)? data_i[213] : 
                      (N26)? data_i[245] : 1'b0;
  assign data_o[20] = (N19)? data_i[20] : 
                      (N21)? data_i[52] : 
                      (N23)? data_i[84] : 
                      (N25)? data_i[116] : 
                      (N20)? data_i[148] : 
                      (N22)? data_i[180] : 
                      (N24)? data_i[212] : 
                      (N26)? data_i[244] : 1'b0;
  assign data_o[19] = (N19)? data_i[19] : 
                      (N21)? data_i[51] : 
                      (N23)? data_i[83] : 
                      (N25)? data_i[115] : 
                      (N20)? data_i[147] : 
                      (N22)? data_i[179] : 
                      (N24)? data_i[211] : 
                      (N26)? data_i[243] : 1'b0;
  assign data_o[18] = (N19)? data_i[18] : 
                      (N21)? data_i[50] : 
                      (N23)? data_i[82] : 
                      (N25)? data_i[114] : 
                      (N20)? data_i[146] : 
                      (N22)? data_i[178] : 
                      (N24)? data_i[210] : 
                      (N26)? data_i[242] : 1'b0;
  assign data_o[17] = (N19)? data_i[17] : 
                      (N21)? data_i[49] : 
                      (N23)? data_i[81] : 
                      (N25)? data_i[113] : 
                      (N20)? data_i[145] : 
                      (N22)? data_i[177] : 
                      (N24)? data_i[209] : 
                      (N26)? data_i[241] : 1'b0;
  assign data_o[16] = (N19)? data_i[16] : 
                      (N21)? data_i[48] : 
                      (N23)? data_i[80] : 
                      (N25)? data_i[112] : 
                      (N20)? data_i[144] : 
                      (N22)? data_i[176] : 
                      (N24)? data_i[208] : 
                      (N26)? data_i[240] : 1'b0;
  assign data_o[15] = (N19)? data_i[15] : 
                      (N21)? data_i[47] : 
                      (N23)? data_i[79] : 
                      (N25)? data_i[111] : 
                      (N20)? data_i[143] : 
                      (N22)? data_i[175] : 
                      (N24)? data_i[207] : 
                      (N26)? data_i[239] : 1'b0;
  assign data_o[14] = (N19)? data_i[14] : 
                      (N21)? data_i[46] : 
                      (N23)? data_i[78] : 
                      (N25)? data_i[110] : 
                      (N20)? data_i[142] : 
                      (N22)? data_i[174] : 
                      (N24)? data_i[206] : 
                      (N26)? data_i[238] : 1'b0;
  assign data_o[13] = (N19)? data_i[13] : 
                      (N21)? data_i[45] : 
                      (N23)? data_i[77] : 
                      (N25)? data_i[109] : 
                      (N20)? data_i[141] : 
                      (N22)? data_i[173] : 
                      (N24)? data_i[205] : 
                      (N26)? data_i[237] : 1'b0;
  assign data_o[12] = (N19)? data_i[12] : 
                      (N21)? data_i[44] : 
                      (N23)? data_i[76] : 
                      (N25)? data_i[108] : 
                      (N20)? data_i[140] : 
                      (N22)? data_i[172] : 
                      (N24)? data_i[204] : 
                      (N26)? data_i[236] : 1'b0;
  assign data_o[11] = (N19)? data_i[11] : 
                      (N21)? data_i[43] : 
                      (N23)? data_i[75] : 
                      (N25)? data_i[107] : 
                      (N20)? data_i[139] : 
                      (N22)? data_i[171] : 
                      (N24)? data_i[203] : 
                      (N26)? data_i[235] : 1'b0;
  assign data_o[10] = (N19)? data_i[10] : 
                      (N21)? data_i[42] : 
                      (N23)? data_i[74] : 
                      (N25)? data_i[106] : 
                      (N20)? data_i[138] : 
                      (N22)? data_i[170] : 
                      (N24)? data_i[202] : 
                      (N26)? data_i[234] : 1'b0;
  assign data_o[9] = (N19)? data_i[9] : 
                     (N21)? data_i[41] : 
                     (N23)? data_i[73] : 
                     (N25)? data_i[105] : 
                     (N20)? data_i[137] : 
                     (N22)? data_i[169] : 
                     (N24)? data_i[201] : 
                     (N26)? data_i[233] : 1'b0;
  assign data_o[8] = (N19)? data_i[8] : 
                     (N21)? data_i[40] : 
                     (N23)? data_i[72] : 
                     (N25)? data_i[104] : 
                     (N20)? data_i[136] : 
                     (N22)? data_i[168] : 
                     (N24)? data_i[200] : 
                     (N26)? data_i[232] : 1'b0;
  assign data_o[7] = (N19)? data_i[7] : 
                     (N21)? data_i[39] : 
                     (N23)? data_i[71] : 
                     (N25)? data_i[103] : 
                     (N20)? data_i[135] : 
                     (N22)? data_i[167] : 
                     (N24)? data_i[199] : 
                     (N26)? data_i[231] : 1'b0;
  assign data_o[6] = (N19)? data_i[6] : 
                     (N21)? data_i[38] : 
                     (N23)? data_i[70] : 
                     (N25)? data_i[102] : 
                     (N20)? data_i[134] : 
                     (N22)? data_i[166] : 
                     (N24)? data_i[198] : 
                     (N26)? data_i[230] : 1'b0;
  assign data_o[5] = (N19)? data_i[5] : 
                     (N21)? data_i[37] : 
                     (N23)? data_i[69] : 
                     (N25)? data_i[101] : 
                     (N20)? data_i[133] : 
                     (N22)? data_i[165] : 
                     (N24)? data_i[197] : 
                     (N26)? data_i[229] : 1'b0;
  assign data_o[4] = (N19)? data_i[4] : 
                     (N21)? data_i[36] : 
                     (N23)? data_i[68] : 
                     (N25)? data_i[100] : 
                     (N20)? data_i[132] : 
                     (N22)? data_i[164] : 
                     (N24)? data_i[196] : 
                     (N26)? data_i[228] : 1'b0;
  assign data_o[3] = (N19)? data_i[3] : 
                     (N21)? data_i[35] : 
                     (N23)? data_i[67] : 
                     (N25)? data_i[99] : 
                     (N20)? data_i[131] : 
                     (N22)? data_i[163] : 
                     (N24)? data_i[195] : 
                     (N26)? data_i[227] : 1'b0;
  assign data_o[2] = (N19)? data_i[2] : 
                     (N21)? data_i[34] : 
                     (N23)? data_i[66] : 
                     (N25)? data_i[98] : 
                     (N20)? data_i[130] : 
                     (N22)? data_i[162] : 
                     (N24)? data_i[194] : 
                     (N26)? data_i[226] : 1'b0;
  assign data_o[1] = (N19)? data_i[1] : 
                     (N21)? data_i[33] : 
                     (N23)? data_i[65] : 
                     (N25)? data_i[97] : 
                     (N20)? data_i[129] : 
                     (N22)? data_i[161] : 
                     (N24)? data_i[193] : 
                     (N26)? data_i[225] : 1'b0;
  assign data_o[0] = (N19)? data_i[0] : 
                     (N21)? data_i[32] : 
                     (N23)? data_i[64] : 
                     (N25)? data_i[96] : 
                     (N20)? data_i[128] : 
                     (N22)? data_i[160] : 
                     (N24)? data_i[192] : 
                     (N26)? data_i[224] : 1'b0;
  assign yumi_o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, yumi_i } << tag_o;
  assign N0 = ~tag_o[0];
  assign N1 = ~tag_o[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & tag_o[1];
  assign N4 = tag_o[0] & N1;
  assign N5 = tag_o[0] & tag_o[1];
  assign N6 = ~tag_o[2];
  assign N7 = N2 & N6;
  assign N8 = N2 & tag_o[2];
  assign N9 = N4 & N6;
  assign N10 = N4 & tag_o[2];
  assign N11 = N3 & N6;
  assign N12 = N3 & tag_o[2];
  assign N13 = N5 & N6;
  assign N14 = N5 & tag_o[2];
  assign N15 = N0 & N1;
  assign N16 = N0 & tag_o[1];
  assign N17 = tag_o[0] & N1;
  assign N18 = tag_o[0] & tag_o[1];
  assign N19 = N15 & N6;
  assign N20 = N15 & tag_o[2];
  assign N21 = N17 & N6;
  assign N22 = N17 & tag_o[2];
  assign N23 = N16 & N6;
  assign N24 = N16 & tag_o[2];
  assign N25 = N18 & N6;
  assign N26 = N18 & tag_o[2];

endmodule

