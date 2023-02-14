

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
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66;
  reg ready_r_o;
  reg [19:0] counter_r;
  assign N47 = counter_r[18] | counter_r[19];
  assign N48 = counter_r[17] | N47;
  assign N49 = counter_r[16] | N48;
  assign N50 = counter_r[15] | N49;
  assign N51 = counter_r[14] | N50;
  assign N52 = counter_r[13] | N51;
  assign N53 = counter_r[12] | N52;
  assign N54 = counter_r[11] | N53;
  assign N55 = counter_r[10] | N54;
  assign N56 = counter_r[9] | N55;
  assign N57 = counter_r[8] | N56;
  assign N58 = counter_r[7] | N57;
  assign N59 = counter_r[6] | N58;
  assign N60 = counter_r[5] | N59;
  assign N61 = counter_r[4] | N60;
  assign N62 = counter_r[3] | N61;
  assign N63 = counter_r[2] | N62;
  assign N64 = counter_r[1] | N63;
  assign N65 = counter_r[0] | N64;
  assign N66 = ~N65;
  assign { N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = counter_r + 1'b1;
  assign N23 = (N0)? 1'b1 : 
               (N45)? 1'b0 : 
               (N2)? 1'b1 : 1'b0;
  assign N0 = reset_i;
  assign { N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                                                                  (N2)? { N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } : 1'b0;
  assign N44 = (N0)? 1'b1 : 
               (N45)? 1'b1 : 
               (N2)? 1'b0 : 1'b0;
  assign N1 = N66 | reset_i;
  assign N2 = ~N1;
  assign N46 = ~reset_i;
  assign N45 = N66 & N46;

  always @(posedge clk_i) begin
    if(N44) begin
      ready_r_o <= N45;
    end 
    if(N23) begin
      { counter_r[19:0] } <= { N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24 };
    end 
  end


endmodule

