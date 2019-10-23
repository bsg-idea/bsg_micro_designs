

module top
(
  clk_i,
  reset_i,
  v_i,
  tag_i,
  data_i,
  yumi_o,
  v_o,
  yumi_i,
  data_o
);

  input [4:0] tag_i;
  input [7:0] data_i;
  output [31:0] v_o;
  input [31:0] yumi_i;
  output [255:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  output yumi_o;

  bsg_1_to_n_tagged_fifo
  wrapper
  (
    .tag_i(tag_i),
    .data_i(data_i),
    .v_o(v_o),
    .yumi_i(yumi_i),
    .data_o(data_o),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .yumi_o(yumi_o)
  );


endmodule



module bsg_decode_num_out_p32
(
  i,
  o
);

  input [4:0] i;
  output [31:0] o;
  wire [31:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule



module bsg_decode_with_v_num_out_p32
(
  i,
  v_i,
  o
);

  input [4:0] i;
  output [31:0] o;
  input v_i;
  wire [31:0] o,lo;

  bsg_decode_num_out_p32
  bd
  (
    .i(i),
    .o(lo)
  );

  assign o[31] = v_i & lo[31];
  assign o[30] = v_i & lo[30];
  assign o[29] = v_i & lo[29];
  assign o[28] = v_i & lo[28];
  assign o[27] = v_i & lo[27];
  assign o[26] = v_i & lo[26];
  assign o[25] = v_i & lo[25];
  assign o[24] = v_i & lo[24];
  assign o[23] = v_i & lo[23];
  assign o[22] = v_i & lo[22];
  assign o[21] = v_i & lo[21];
  assign o[20] = v_i & lo[20];
  assign o[19] = v_i & lo[19];
  assign o[18] = v_i & lo[18];
  assign o[17] = v_i & lo[17];
  assign o[16] = v_i & lo[16];
  assign o[15] = v_i & lo[15];
  assign o[14] = v_i & lo[14];
  assign o[13] = v_i & lo[13];
  assign o[12] = v_i & lo[12];
  assign o[11] = v_i & lo[11];
  assign o[10] = v_i & lo[10];
  assign o[9] = v_i & lo[9];
  assign o[8] = v_i & lo[8];
  assign o[7] = v_i & lo[7];
  assign o[6] = v_i & lo[6];
  assign o[5] = v_i & lo[5];
  assign o[4] = v_i & lo[4];
  assign o[3] = v_i & lo[3];
  assign o[2] = v_i & lo[2];
  assign o[1] = v_i & lo[1];
  assign o[0] = v_i & lo[0];

endmodule



module bsg_1_to_n_tagged_num_out_p32
(
  clk_i,
  reset_i,
  v_i,
  tag_i,
  yumi_o,
  v_o,
  ready_i
);

  input [4:0] tag_i;
  output [31:0] v_o;
  input [31:0] ready_i;
  input clk_i;
  input reset_i;
  input v_i;
  output yumi_o;
  wire [31:0] v_o;
  wire yumi_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N65;

  bsg_decode_with_v_num_out_p32
  many_bdv
  (
    .i(tag_i),
    .v_i(v_i),
    .o(v_o)
  );

  assign N65 = (N33)? ready_i[0] : 
               (N35)? ready_i[1] : 
               (N37)? ready_i[2] : 
               (N39)? ready_i[3] : 
               (N41)? ready_i[4] : 
               (N43)? ready_i[5] : 
               (N45)? ready_i[6] : 
               (N47)? ready_i[7] : 
               (N49)? ready_i[8] : 
               (N51)? ready_i[9] : 
               (N53)? ready_i[10] : 
               (N55)? ready_i[11] : 
               (N57)? ready_i[12] : 
               (N59)? ready_i[13] : 
               (N61)? ready_i[14] : 
               (N63)? ready_i[15] : 
               (N34)? ready_i[16] : 
               (N36)? ready_i[17] : 
               (N38)? ready_i[18] : 
               (N40)? ready_i[19] : 
               (N42)? ready_i[20] : 
               (N44)? ready_i[21] : 
               (N46)? ready_i[22] : 
               (N48)? ready_i[23] : 
               (N50)? ready_i[24] : 
               (N52)? ready_i[25] : 
               (N54)? ready_i[26] : 
               (N56)? ready_i[27] : 
               (N58)? ready_i[28] : 
               (N60)? ready_i[29] : 
               (N62)? ready_i[30] : 
               (N64)? ready_i[31] : 1'b0;
  assign N0 = ~tag_i[0];
  assign N1 = ~tag_i[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & tag_i[1];
  assign N4 = tag_i[0] & N1;
  assign N5 = tag_i[0] & tag_i[1];
  assign N6 = ~tag_i[2];
  assign N7 = N2 & N6;
  assign N8 = N2 & tag_i[2];
  assign N9 = N4 & N6;
  assign N10 = N4 & tag_i[2];
  assign N11 = N3 & N6;
  assign N12 = N3 & tag_i[2];
  assign N13 = N5 & N6;
  assign N14 = N5 & tag_i[2];
  assign N15 = ~tag_i[3];
  assign N16 = N7 & N15;
  assign N17 = N7 & tag_i[3];
  assign N18 = N9 & N15;
  assign N19 = N9 & tag_i[3];
  assign N20 = N11 & N15;
  assign N21 = N11 & tag_i[3];
  assign N22 = N13 & N15;
  assign N23 = N13 & tag_i[3];
  assign N24 = N8 & N15;
  assign N25 = N8 & tag_i[3];
  assign N26 = N10 & N15;
  assign N27 = N10 & tag_i[3];
  assign N28 = N12 & N15;
  assign N29 = N12 & tag_i[3];
  assign N30 = N14 & N15;
  assign N31 = N14 & tag_i[3];
  assign N32 = ~tag_i[4];
  assign N33 = N16 & N32;
  assign N34 = N16 & tag_i[4];
  assign N35 = N18 & N32;
  assign N36 = N18 & tag_i[4];
  assign N37 = N20 & N32;
  assign N38 = N20 & tag_i[4];
  assign N39 = N22 & N32;
  assign N40 = N22 & tag_i[4];
  assign N41 = N24 & N32;
  assign N42 = N24 & tag_i[4];
  assign N43 = N26 & N32;
  assign N44 = N26 & tag_i[4];
  assign N45 = N28 & N32;
  assign N46 = N28 & tag_i[4];
  assign N47 = N30 & N32;
  assign N48 = N30 & tag_i[4];
  assign N49 = N17 & N32;
  assign N50 = N17 & tag_i[4];
  assign N51 = N19 & N32;
  assign N52 = N19 & tag_i[4];
  assign N53 = N21 & N32;
  assign N54 = N21 & tag_i[4];
  assign N55 = N23 & N32;
  assign N56 = N23 & tag_i[4];
  assign N57 = N25 & N32;
  assign N58 = N25 & tag_i[4];
  assign N59 = N27 & N32;
  assign N60 = N27 & tag_i[4];
  assign N61 = N29 & N32;
  assign N62 = N29 & tag_i[4];
  assign N63 = N31 & N32;
  assign N64 = N31 & tag_i[4];
  assign yumi_o = N65 & v_i;

endmodule



module bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  v_o,
  data_o,
  yumi_i
);

  input [7:0] data_i;
  output [7:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [7:0] data_o,little_data,big_data_lo;
  wire ready_o,v_o,N0,N1,N2,N3,little_ready_lo,little_will_have_space,N4,N5,big_deq,N6,
  big_full_lo,big_empty_lo,N7,N8,little_valid,big_enq,N9,N10,N11,N12,N13,
  big_valid,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23;
  reg big_deq_r;

  bsg_fifo_1rw_large
  big1p
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(big_valid),
    .enq_not_deq_i(big_enq),
    .full_o(big_full_lo),
    .empty_o(big_empty_lo),
    .data_o(big_data_lo)
  );


  bsg_two_fifo
  little2p
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(little_ready_lo),
    .data_i(little_data),
    .v_i(little_valid),
    .v_o(v_o),
    .data_o(data_o),
    .yumi_i(yumi_i)
  );

  assign N6 = (N0)? 1'b0 : 
              (N1)? big_deq : 1'b0;
  assign N0 = N5;
  assign N1 = N4;
  assign little_valid = (N2)? 1'b1 : 
                        (N15)? N10 : 
                        (N8)? 1'b0 : 1'b0;
  assign N2 = big_deq_r;
  assign big_enq = (N2)? v_i : 
                   (N15)? N11 : 
                   (N8)? N12 : 1'b0;
  assign big_deq = (N2)? N9 : 
                   (N15)? 1'b0 : 
                   (N8)? N13 : 1'b0;
  assign little_data = (N2)? big_data_lo : 
                       (N3)? data_i : 1'b0;
  assign N3 = N16;
  assign little_will_have_space = little_ready_lo | yumi_i;
  assign N4 = ~reset_i;
  assign N5 = reset_i;
  assign ready_o = ~big_full_lo;
  assign N7 = big_empty_lo | big_deq_r;
  assign N8 = ~N7;
  assign N9 = N19 & N20;
  assign N19 = N17 & N18;
  assign N17 = ~big_empty_lo;
  assign N18 = ~v_i;
  assign N20 = ~v_o;
  assign N10 = v_i & little_will_have_space;
  assign N11 = v_i & N21;
  assign N21 = ~little_will_have_space;
  assign N12 = v_i & N22;
  assign N22 = ~big_full_lo;
  assign N13 = N23 & little_will_have_space;
  assign N23 = ~N12;
  assign big_valid = big_enq | big_deq;
  assign N14 = ~big_deq_r;
  assign N15 = big_empty_lo & N14;
  assign N16 = ~big_deq_r;

  always @(posedge clk_i) begin
    if(1'b1) begin
      big_deq_r <= N6;
    end 
  end


endmodule



module bsg_1_to_n_tagged_fifo
(
  clk_i,
  reset_i,
  v_i,
  tag_i,
  data_i,
  yumi_o,
  v_o,
  yumi_i,
  data_o
);

  input [4:0] tag_i;
  input [7:0] data_i;
  output [31:0] v_o;
  input [31:0] yumi_i;
  output [255:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  output yumi_o;
  wire [31:0] v_o,valid_lo,ready_li;
  wire [255:0] data_o;
  wire yumi_o;

  bsg_1_to_n_tagged_num_out_p32
  u_1_to_n
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .tag_i(tag_i),
    .yumi_o(yumi_o),
    .v_o(valid_lo),
    .ready_i(ready_li)
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_0__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[0]),
    .ready_o(ready_li[0]),
    .v_o(v_o[0]),
    .data_o(data_o[7:0]),
    .yumi_i(yumi_i[0])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_1__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[1]),
    .ready_o(ready_li[1]),
    .v_o(v_o[1]),
    .data_o(data_o[15:8]),
    .yumi_i(yumi_i[1])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_2__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[2]),
    .ready_o(ready_li[2]),
    .v_o(v_o[2]),
    .data_o(data_o[23:16]),
    .yumi_i(yumi_i[2])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_3__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[3]),
    .ready_o(ready_li[3]),
    .v_o(v_o[3]),
    .data_o(data_o[31:24]),
    .yumi_i(yumi_i[3])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_4__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[4]),
    .ready_o(ready_li[4]),
    .v_o(v_o[4]),
    .data_o(data_o[39:32]),
    .yumi_i(yumi_i[4])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_5__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[5]),
    .ready_o(ready_li[5]),
    .v_o(v_o[5]),
    .data_o(data_o[47:40]),
    .yumi_i(yumi_i[5])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_6__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[6]),
    .ready_o(ready_li[6]),
    .v_o(v_o[6]),
    .data_o(data_o[55:48]),
    .yumi_i(yumi_i[6])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_7__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[7]),
    .ready_o(ready_li[7]),
    .v_o(v_o[7]),
    .data_o(data_o[63:56]),
    .yumi_i(yumi_i[7])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_8__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[8]),
    .ready_o(ready_li[8]),
    .v_o(v_o[8]),
    .data_o(data_o[71:64]),
    .yumi_i(yumi_i[8])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_9__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[9]),
    .ready_o(ready_li[9]),
    .v_o(v_o[9]),
    .data_o(data_o[79:72]),
    .yumi_i(yumi_i[9])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_10__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[10]),
    .ready_o(ready_li[10]),
    .v_o(v_o[10]),
    .data_o(data_o[87:80]),
    .yumi_i(yumi_i[10])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_11__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[11]),
    .ready_o(ready_li[11]),
    .v_o(v_o[11]),
    .data_o(data_o[95:88]),
    .yumi_i(yumi_i[11])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_12__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[12]),
    .ready_o(ready_li[12]),
    .v_o(v_o[12]),
    .data_o(data_o[103:96]),
    .yumi_i(yumi_i[12])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_13__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[13]),
    .ready_o(ready_li[13]),
    .v_o(v_o[13]),
    .data_o(data_o[111:104]),
    .yumi_i(yumi_i[13])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_14__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[14]),
    .ready_o(ready_li[14]),
    .v_o(v_o[14]),
    .data_o(data_o[119:112]),
    .yumi_i(yumi_i[14])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_15__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[15]),
    .ready_o(ready_li[15]),
    .v_o(v_o[15]),
    .data_o(data_o[127:120]),
    .yumi_i(yumi_i[15])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_16__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[16]),
    .ready_o(ready_li[16]),
    .v_o(v_o[16]),
    .data_o(data_o[135:128]),
    .yumi_i(yumi_i[16])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_17__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[17]),
    .ready_o(ready_li[17]),
    .v_o(v_o[17]),
    .data_o(data_o[143:136]),
    .yumi_i(yumi_i[17])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_18__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[18]),
    .ready_o(ready_li[18]),
    .v_o(v_o[18]),
    .data_o(data_o[151:144]),
    .yumi_i(yumi_i[18])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_19__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[19]),
    .ready_o(ready_li[19]),
    .v_o(v_o[19]),
    .data_o(data_o[159:152]),
    .yumi_i(yumi_i[19])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_20__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[20]),
    .ready_o(ready_li[20]),
    .v_o(v_o[20]),
    .data_o(data_o[167:160]),
    .yumi_i(yumi_i[20])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_21__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[21]),
    .ready_o(ready_li[21]),
    .v_o(v_o[21]),
    .data_o(data_o[175:168]),
    .yumi_i(yumi_i[21])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_22__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[22]),
    .ready_o(ready_li[22]),
    .v_o(v_o[22]),
    .data_o(data_o[183:176]),
    .yumi_i(yumi_i[22])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_23__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[23]),
    .ready_o(ready_li[23]),
    .v_o(v_o[23]),
    .data_o(data_o[191:184]),
    .yumi_i(yumi_i[23])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_24__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[24]),
    .ready_o(ready_li[24]),
    .v_o(v_o[24]),
    .data_o(data_o[199:192]),
    .yumi_i(yumi_i[24])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_25__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[25]),
    .ready_o(ready_li[25]),
    .v_o(v_o[25]),
    .data_o(data_o[207:200]),
    .yumi_i(yumi_i[25])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_26__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[26]),
    .ready_o(ready_li[26]),
    .v_o(v_o[26]),
    .data_o(data_o[215:208]),
    .yumi_i(yumi_i[26])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_27__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[27]),
    .ready_o(ready_li[27]),
    .v_o(v_o[27]),
    .data_o(data_o[223:216]),
    .yumi_i(yumi_i[27])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_28__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[28]),
    .ready_o(ready_li[28]),
    .v_o(v_o[28]),
    .data_o(data_o[231:224]),
    .yumi_i(yumi_i[28])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_29__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[29]),
    .ready_o(ready_li[29]),
    .v_o(v_o[29]),
    .data_o(data_o[239:232]),
    .yumi_i(yumi_i[29])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_30__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[30]),
    .ready_o(ready_li[30]),
    .v_o(v_o[30]),
    .data_o(data_o[247:240]),
    .yumi_i(yumi_i[30])
  );


  bsg_fifo_1r1w_pseudo_large_width_p8_els_p8
  rof_31__psdlrg_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(valid_lo[31]),
    .ready_o(ready_li[31]),
    .v_o(v_o[31]),
    .data_o(data_o[255:248]),
    .yumi_i(yumi_i[31])
  );


endmodule

