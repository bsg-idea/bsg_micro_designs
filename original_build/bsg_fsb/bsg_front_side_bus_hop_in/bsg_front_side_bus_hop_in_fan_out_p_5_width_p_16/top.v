

module top
(
  clk_i,
  reset_i,
  ready_o,
  v_i,
  data_i,
  v_o,
  data_o,
  ready_i
);

  input [15:0] data_i;
  output [4:0] v_o;
  output [79:0] data_o;
  input [4:0] ready_i;
  input clk_i;
  input reset_i;
  input v_i;
  output ready_o;

  bsg_front_side_bus_hop_in
  wrapper
  (
    .data_i(data_i),
    .v_o(v_o),
    .data_o(data_o),
    .ready_i(ready_i),
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .ready_o(ready_o)
  );


endmodule



module bsg_mem_1r1w_synth_width_p16_els_p2_read_write_same_addr_p0_harden_p0
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
  input [15:0] w_data_i;
  input [0:0] r_addr_i;
  output [15:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [15:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [31:0] mem;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[31] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[30] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[29] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[28] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[27] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[26] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[25] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[24] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[23] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[22] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[21] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[20] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[19] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[18] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[17] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[16] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[31:16] } <= { w_data_i[15:0] };
    end 
    if(N7) begin
      { mem[15:0] } <= { w_data_i[15:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p16_els_p2_read_write_same_addr_p0
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
  input [15:0] w_data_i;
  input [0:0] r_addr_i;
  output [15:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [15:0] r_data_o;

  bsg_mem_1r1w_synth_width_p16_els_p2_read_write_same_addr_p0_harden_p0
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



module bsg_two_fifo_width_p16
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

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [15:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p16_els_p2_read_write_same_addr_p0
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



module bsg_front_side_bus_hop_in
(
  clk_i,
  reset_i,
  ready_o,
  v_i,
  data_i,
  v_o,
  data_o,
  ready_i
);

  input [15:0] data_i;
  output [4:0] v_o;
  output [79:0] data_o;
  input [4:0] ready_i;
  input clk_i;
  input reset_i;
  input v_i;
  output ready_o;
  wire [4:0] v_o,sent_n;
  wire [79:0] data_o;
  wire ready_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,fifo_v,fifo_yumi,N15,
  N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,
  N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,
  N56,N57;
  reg [4:0] sent_r;
  assign data_o[31] = data_o[15];
  assign data_o[47] = data_o[15];
  assign data_o[63] = data_o[15];
  assign data_o[79] = data_o[15];
  assign data_o[30] = data_o[14];
  assign data_o[46] = data_o[14];
  assign data_o[62] = data_o[14];
  assign data_o[78] = data_o[14];
  assign data_o[29] = data_o[13];
  assign data_o[45] = data_o[13];
  assign data_o[61] = data_o[13];
  assign data_o[77] = data_o[13];
  assign data_o[28] = data_o[12];
  assign data_o[44] = data_o[12];
  assign data_o[60] = data_o[12];
  assign data_o[76] = data_o[12];
  assign data_o[27] = data_o[11];
  assign data_o[43] = data_o[11];
  assign data_o[59] = data_o[11];
  assign data_o[75] = data_o[11];
  assign data_o[26] = data_o[10];
  assign data_o[42] = data_o[10];
  assign data_o[58] = data_o[10];
  assign data_o[74] = data_o[10];
  assign data_o[25] = data_o[9];
  assign data_o[41] = data_o[9];
  assign data_o[57] = data_o[9];
  assign data_o[73] = data_o[9];
  assign data_o[24] = data_o[8];
  assign data_o[40] = data_o[8];
  assign data_o[56] = data_o[8];
  assign data_o[72] = data_o[8];
  assign data_o[23] = data_o[7];
  assign data_o[39] = data_o[7];
  assign data_o[55] = data_o[7];
  assign data_o[71] = data_o[7];
  assign data_o[22] = data_o[6];
  assign data_o[38] = data_o[6];
  assign data_o[54] = data_o[6];
  assign data_o[70] = data_o[6];
  assign data_o[21] = data_o[5];
  assign data_o[37] = data_o[5];
  assign data_o[53] = data_o[5];
  assign data_o[69] = data_o[5];
  assign data_o[20] = data_o[4];
  assign data_o[36] = data_o[4];
  assign data_o[52] = data_o[4];
  assign data_o[68] = data_o[4];
  assign data_o[19] = data_o[3];
  assign data_o[35] = data_o[3];
  assign data_o[51] = data_o[3];
  assign data_o[67] = data_o[3];
  assign data_o[18] = data_o[2];
  assign data_o[34] = data_o[2];
  assign data_o[50] = data_o[2];
  assign data_o[66] = data_o[2];
  assign data_o[17] = data_o[1];
  assign data_o[33] = data_o[1];
  assign data_o[49] = data_o[1];
  assign data_o[65] = data_o[1];
  assign data_o[16] = data_o[0];
  assign data_o[32] = data_o[0];
  assign data_o[48] = data_o[0];
  assign data_o[64] = data_o[0];

  bsg_two_fifo_width_p16
  fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_o),
    .data_i(data_i),
    .v_i(v_i),
    .v_o(fifo_v),
    .data_o(data_o[15:0]),
    .yumi_i(fifo_yumi)
  );

  assign N18 = (N0)? 1'b0 : 
               (N1)? N17 : 1'b0;
  assign N0 = N16;
  assign N1 = N15;
  assign sent_n[0] = (N2)? 1'b1 : 
                     (N20)? sent_r[0] : 1'b0;
  assign N2 = N19;
  assign N24 = (N3)? 1'b0 : 
               (N4)? N23 : 1'b0;
  assign N3 = N22;
  assign N4 = N21;
  assign sent_n[1] = (N5)? 1'b1 : 
                     (N26)? sent_r[1] : 1'b0;
  assign N5 = N25;
  assign N30 = (N6)? 1'b0 : 
               (N7)? N29 : 1'b0;
  assign N6 = N28;
  assign N7 = N27;
  assign sent_n[2] = (N8)? 1'b1 : 
                     (N32)? sent_r[2] : 1'b0;
  assign N8 = N31;
  assign N36 = (N9)? 1'b0 : 
               (N10)? N35 : 1'b0;
  assign N9 = N34;
  assign N10 = N33;
  assign sent_n[3] = (N11)? 1'b1 : 
                     (N38)? sent_r[3] : 1'b0;
  assign N11 = N37;
  assign N42 = (N12)? 1'b0 : 
               (N13)? N41 : 1'b0;
  assign N12 = N40;
  assign N13 = N39;
  assign sent_n[4] = (N14)? 1'b1 : 
                     (N44)? sent_r[4] : 1'b0;
  assign N14 = N43;
  assign v_o[0] = fifo_v & N45;
  assign N45 = ~sent_r[0];
  assign N15 = ~reset_i;
  assign N16 = reset_i;
  assign N17 = sent_n[0] & N46;
  assign N46 = ~fifo_yumi;
  assign N19 = v_o[0] & ready_i[0];
  assign N20 = ~N19;
  assign v_o[1] = fifo_v & N47;
  assign N47 = ~sent_r[1];
  assign N21 = ~reset_i;
  assign N22 = reset_i;
  assign N23 = sent_n[1] & N48;
  assign N48 = ~fifo_yumi;
  assign N25 = v_o[1] & ready_i[1];
  assign N26 = ~N25;
  assign v_o[2] = fifo_v & N49;
  assign N49 = ~sent_r[2];
  assign N27 = ~reset_i;
  assign N28 = reset_i;
  assign N29 = sent_n[2] & N50;
  assign N50 = ~fifo_yumi;
  assign N31 = v_o[2] & ready_i[2];
  assign N32 = ~N31;
  assign v_o[3] = fifo_v & N51;
  assign N51 = ~sent_r[3];
  assign N33 = ~reset_i;
  assign N34 = reset_i;
  assign N35 = sent_n[3] & N52;
  assign N52 = ~fifo_yumi;
  assign N37 = v_o[3] & ready_i[3];
  assign N38 = ~N37;
  assign v_o[4] = fifo_v & N53;
  assign N53 = ~sent_r[4];
  assign N39 = ~reset_i;
  assign N40 = reset_i;
  assign N41 = sent_n[4] & N54;
  assign N54 = ~fifo_yumi;
  assign N43 = v_o[4] & ready_i[4];
  assign N44 = ~N43;
  assign fifo_yumi = N57 & sent_n[0];
  assign N57 = N56 & sent_n[1];
  assign N56 = N55 & sent_n[2];
  assign N55 = sent_n[4] & sent_n[3];

  always @(posedge clk_i) begin
    if(1'b1) begin
      { sent_r[4:0] } <= { N42, N36, N30, N24, N18 };
    end 
  end


endmodule

