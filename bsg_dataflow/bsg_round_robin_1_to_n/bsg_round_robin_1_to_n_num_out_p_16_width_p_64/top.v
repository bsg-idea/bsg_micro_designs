

module top
(
  clk_i,
  reset_i,
  valid_i,
  ready_o,
  valid_o,
  ready_i
);

  output [15:0] valid_o;
  input [15:0] ready_i;
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



module bsg_circular_ptr_slots_p16_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [3:0] o;
  output [3:0] n_o;
  input clk;
  input reset_i;
  wire [3:0] n_o,genblk1_genblk1_ptr_r_p1;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
  reg [3:0] o;
  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign { N8, N7, N6, N5 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N1)? n_o : 1'b0;
  assign N0 = reset_i;
  assign N1 = N4;
  assign n_o = (N2)? genblk1_genblk1_ptr_r_p1 : 
               (N3)? o : 1'b0;
  assign N2 = add_i[0];
  assign N3 = N9;
  assign N4 = ~reset_i;
  assign N9 = ~add_i[0];

  always @(posedge clk) begin
    if(1'b1) begin
      { o[3:0] } <= { N8, N7, N6, N5 };
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

  output [15:0] valid_o;
  input [15:0] ready_i;
  input clk_i;
  input reset_i;
  input valid_i;
  output ready_o;
  wire [15:0] valid_o;
  wire ready_o,one_to_n_yumi_i,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,
  N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,
  SYNOPSYS_UNCONNECTED_1,SYNOPSYS_UNCONNECTED_2,SYNOPSYS_UNCONNECTED_3,SYNOPSYS_UNCONNECTED_4;
  wire [3:0] one_to_n_ptr_r;

  bsg_circular_ptr_slots_p16_max_add_p1
  one_to_n_circular_ptr
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(one_to_n_yumi_i),
    .o(one_to_n_ptr_r),
    .n_o({ SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4 })
  );

  assign valid_o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, valid_i } << one_to_n_ptr_r;
  assign ready_o = (N16)? ready_i[0] : 
                   (N18)? ready_i[1] : 
                   (N20)? ready_i[2] : 
                   (N22)? ready_i[3] : 
                   (N24)? ready_i[4] : 
                   (N26)? ready_i[5] : 
                   (N28)? ready_i[6] : 
                   (N30)? ready_i[7] : 
                   (N17)? ready_i[8] : 
                   (N19)? ready_i[9] : 
                   (N21)? ready_i[10] : 
                   (N23)? ready_i[11] : 
                   (N25)? ready_i[12] : 
                   (N27)? ready_i[13] : 
                   (N29)? ready_i[14] : 
                   (N31)? ready_i[15] : 1'b0;
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

endmodule

