

module top
(
  clk_i,
  reset_i,
  valid_i,
  ready_o,
  valid_o,
  ready_i
);

  output [7:0] valid_o;
  input [7:0] ready_i;
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



module bsg_round_robin_1_to_n
(
  clk_i,
  reset_i,
  valid_i,
  ready_o,
  valid_o,
  ready_i
);

  output [7:0] valid_o;
  input [7:0] ready_i;
  input clk_i;
  input reset_i;
  input valid_i;
  output ready_o;
  wire [7:0] valid_o;
  wire ready_o,\one_to_n.yumi_i ,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  sv2v_dc_1,sv2v_dc_2,sv2v_dc_3;
  wire [2:0] \one_to_n.ptr_r ;

  bsg_circular_ptr_slots_p8_max_add_p1
  \one_to_n.circular_ptr 
  (
    .clk(clk_i),
    .reset_i(reset_i),
    .add_i(\one_to_n.yumi_i ),
    .o(\one_to_n.ptr_r ),
    .n_o({ sv2v_dc_1, sv2v_dc_2, sv2v_dc_3 })
  );

  assign valid_o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, valid_i } << \one_to_n.ptr_r ;
  assign ready_o = (N7)? ready_i[0] : 
                   (N9)? ready_i[1] : 
                   (N11)? ready_i[2] : 
                   (N13)? ready_i[3] : 
                   (N8)? ready_i[4] : 
                   (N10)? ready_i[5] : 
                   (N12)? ready_i[6] : 
                   (N14)? ready_i[7] : 1'b0;
  assign \one_to_n.yumi_i  = valid_i & ready_o;
  assign N0 = ~\one_to_n.ptr_r [0];
  assign N1 = ~\one_to_n.ptr_r [1];
  assign N2 = N0 & N1;
  assign N3 = N0 & \one_to_n.ptr_r [1];
  assign N4 = \one_to_n.ptr_r [0] & N1;
  assign N5 = \one_to_n.ptr_r [0] & \one_to_n.ptr_r [1];
  assign N6 = ~\one_to_n.ptr_r [2];
  assign N7 = N2 & N6;
  assign N8 = N2 & \one_to_n.ptr_r [2];
  assign N9 = N4 & N6;
  assign N10 = N4 & \one_to_n.ptr_r [2];
  assign N11 = N3 & N6;
  assign N12 = N3 & \one_to_n.ptr_r [2];
  assign N13 = N5 & N6;
  assign N14 = N5 & \one_to_n.ptr_r [2];

endmodule

