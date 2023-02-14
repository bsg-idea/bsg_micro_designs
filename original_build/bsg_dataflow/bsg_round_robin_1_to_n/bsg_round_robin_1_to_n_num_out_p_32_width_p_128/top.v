

module top
(
  clk_i,
  reset_i,
  valid_i,
  ready_o,
  valid_o,
  ready_i
);

  output [31:0] valid_o;
  input [31:0] ready_i;
  input clk_i;
  input reset_i;
  input valid_i;
  output ready_o;

  bsg_round_robin_1_to_n
  wrapper
  (
    .valid_o(valid_o),
    .ready_i(ready_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .valid_i(valid_i),
    .ready_o(ready_o)
  );


endmodule



module bsg_circular_ptr_slots_p32_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [4:0] o;
  output [4:0] n_o;
  input clk;
  input reset_i;
  wire [4:0] n_o,genblk1_genblk1_ptr_r_p1;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10;
  reg [4:0] o;
  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign { N9, N8, N7, N6, N5 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                  (N1)? n_o : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign n_o = (N2)? genblk1_genblk1_ptr_r_p1 : 
               (N3)? o : 1'b0;
  assign N2 = add_i[0];
  assign N3 = N10;
  assign N4 = ~reset_i;
  assign N10 = ~add_i[0];

  always @(posedge clk) begin
    if(1'b1) begin
      { o[4:0] } <= { N9, N8, N7, N6, N5 };
    end 
  end


endmodule



module bsg_round_robin_1_to_n
(
  clk_i,
  reset_i,
  valid_i,
  ready_o,
  valid_o,
  ready_i
);

  output [31:0] valid_o;
  input [31:0] ready_i;
  input clk_i;
  input reset_i;
  input valid_i;
  output ready_o;
  wire [31:0] valid_o;
  wire ready_o,one_to_n_yumi_i,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,
  N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,
  N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,
  N56,N57,N58,N59,N60,N61,N62,N63,N64,SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,
  SYNOPSYS_UNCONNECTED_3,SYNOPSYS_UNCONNECTED_4,SYNOPSYS_UNCONNECTED_5;
  wire [4:0] one_to_n_ptr_r;

  bsg_circular_ptr_slots_p32_max_add_p1
  one_to_n_circular_ptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(one_to_n_yumi_i),
    .o(one_to_n_ptr_r),
    .n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5 })
  );

  assign valid_o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, valid_i } << one_to_n_ptr_r;
  assign ready_o = (N33)? ready_i[0] : 
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
  assign one_to_n_yumi_i = valid_i & ready_o;
  assign N0 = ~one_to_n_ptr_r[0];
  assign N1 = ~one_to_n_ptr_r[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & one_to_n_ptr_r[1];
  assign N4 = one_to_n_ptr_r[0] & N1;
  assign N5 = one_to_n_ptr_r[0] & one_to_n_ptr_r[1];
  assign N6 = ~one_to_n_ptr_r[2];
  assign N7 = N2 & N6;
  assign N8 = N2 & one_to_n_ptr_r[2];
  assign N9 = N4 & N6;
  assign N10 = N4 & one_to_n_ptr_r[2];
  assign N11 = N3 & N6;
  assign N12 = N3 & one_to_n_ptr_r[2];
  assign N13 = N5 & N6;
  assign N14 = N5 & one_to_n_ptr_r[2];
  assign N15 = ~one_to_n_ptr_r[3];
  assign N16 = N7 & N15;
  assign N17 = N7 & one_to_n_ptr_r[3];
  assign N18 = N9 & N15;
  assign N19 = N9 & one_to_n_ptr_r[3];
  assign N20 = N11 & N15;
  assign N21 = N11 & one_to_n_ptr_r[3];
  assign N22 = N13 & N15;
  assign N23 = N13 & one_to_n_ptr_r[3];
  assign N24 = N8 & N15;
  assign N25 = N8 & one_to_n_ptr_r[3];
  assign N26 = N10 & N15;
  assign N27 = N10 & one_to_n_ptr_r[3];
  assign N28 = N12 & N15;
  assign N29 = N12 & one_to_n_ptr_r[3];
  assign N30 = N14 & N15;
  assign N31 = N14 & one_to_n_ptr_r[3];
  assign N32 = ~one_to_n_ptr_r[4];
  assign N33 = N16 & N32;
  assign N34 = N16 & one_to_n_ptr_r[4];
  assign N35 = N18 & N32;
  assign N36 = N18 & one_to_n_ptr_r[4];
  assign N37 = N20 & N32;
  assign N38 = N20 & one_to_n_ptr_r[4];
  assign N39 = N22 & N32;
  assign N40 = N22 & one_to_n_ptr_r[4];
  assign N41 = N24 & N32;
  assign N42 = N24 & one_to_n_ptr_r[4];
  assign N43 = N26 & N32;
  assign N44 = N26 & one_to_n_ptr_r[4];
  assign N45 = N28 & N32;
  assign N46 = N28 & one_to_n_ptr_r[4];
  assign N47 = N30 & N32;
  assign N48 = N30 & one_to_n_ptr_r[4];
  assign N49 = N17 & N32;
  assign N50 = N17 & one_to_n_ptr_r[4];
  assign N51 = N19 & N32;
  assign N52 = N19 & one_to_n_ptr_r[4];
  assign N53 = N21 & N32;
  assign N54 = N21 & one_to_n_ptr_r[4];
  assign N55 = N23 & N32;
  assign N56 = N23 & one_to_n_ptr_r[4];
  assign N57 = N25 & N32;
  assign N58 = N25 & one_to_n_ptr_r[4];
  assign N59 = N27 & N32;
  assign N60 = N27 & one_to_n_ptr_r[4];
  assign N61 = N29 & N32;
  assign N62 = N29 & one_to_n_ptr_r[4];
  assign N63 = N31 & N32;
  assign N64 = N31 & one_to_n_ptr_r[4];

endmodule

