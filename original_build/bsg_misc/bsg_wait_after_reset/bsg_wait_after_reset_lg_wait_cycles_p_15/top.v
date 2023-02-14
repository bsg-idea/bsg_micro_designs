

module top
(
  reset_i,
  clk_i,
  ready_r_o
);

  input reset_i;
  input clk_i;
  output ready_r_o;

  bsg_wait_after_reset
  wrapper
  (
    .reset_i(reset_i),
    .clk_i(clk_i),
    .ready_r_o(ready_r_o)
  );


endmodule



module bsg_wait_after_reset
(
  reset_i,
  clk_i,
  ready_r_o
);

  input reset_i;
  input clk_i;
  output ready_r_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51;
  reg ready_r_o;
  reg [14:0] counter_r;
  assign N37 = counter_r[13] | counter_r[14];
  assign N38 = counter_r[12] | N37;
  assign N39 = counter_r[11] | N38;
  assign N40 = counter_r[10] | N39;
  assign N41 = counter_r[9] | N40;
  assign N42 = counter_r[8] | N41;
  assign N43 = counter_r[7] | N42;
  assign N44 = counter_r[6] | N43;
  assign N45 = counter_r[5] | N44;
  assign N46 = counter_r[4] | N45;
  assign N47 = counter_r[3] | N46;
  assign N48 = counter_r[2] | N47;
  assign N49 = counter_r[1] | N48;
  assign N50 = counter_r[0] | N49;
  assign N51 = ~N50;
  assign { N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = counter_r + 1'b1;
  assign N18 = (N0)? 1'b1 : 
               (N35)? 1'b0 : 
               (N2)? 1'b1 : 1'b0;
  assign N0 = reset_i;
  assign { N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                                         (N2)? { N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } : 1'b0;
  assign N34 = (N0)? 1'b1 : 
               (N35)? 1'b1 : 
               (N2)? 1'b0 : 1'b0;
  assign N1 = N51 | reset_i;
  assign N2 = ~N1;
  assign N36 = ~reset_i;
  assign N35 = N51 & N36;

  always @(posedge clk_i) begin
    if(N34) begin
      ready_r_o <= N35;
    end 
    if(N18) begin
      { counter_r[14:0] } <= { N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19 };
    end 
  end


endmodule

