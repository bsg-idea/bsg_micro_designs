

module top
(
  clk,
  reset_i,
  yumi_i,
  o
);

  output [31:0] o;
  input clk;
  input reset_i;
  input yumi_i;

  bsg_lfsr
  wrapper
  (
    .o(o),
    .clk(clk),
    .reset_i(reset_i),
    .yumi_i(yumi_i)
  );


endmodule



module bsg_lfsr
(
  clk,
  reset_i,
  yumi_i,
  o
);

  output [31:0] o;
  input clk;
  input reset_i;
  input yumi_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68;
  wire [31:0] o_n;
  reg [31:0] o;
  assign N3 = (N0)? 1'b1 : 
              (N37)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                                                                                                                        (N37)? o_n : 1'b0;
  assign N1 = yumi_i | reset_i;
  assign N2 = ~N1;
  assign N36 = ~reset_i;
  assign N37 = yumi_i & N36;
  assign o_n[31] = o[0] & 1'b1;
  assign o_n[30] = o[31] ^ N38;
  assign N38 = o[0] & 1'b0;
  assign o_n[29] = o[30] ^ N39;
  assign N39 = o[0] & 1'b1;
  assign o_n[28] = o[29] ^ N40;
  assign N40 = o[0] & 1'b0;
  assign o_n[27] = o[28] ^ N41;
  assign N41 = o[0] & 1'b0;
  assign o_n[26] = o[27] ^ N42;
  assign N42 = o[0] & 1'b1;
  assign o_n[25] = o[26] ^ N43;
  assign N43 = o[0] & 1'b1;
  assign o_n[24] = o[25] ^ N44;
  assign N44 = o[0] & 1'b0;
  assign o_n[23] = o[24] ^ N45;
  assign N45 = o[0] & 1'b0;
  assign o_n[22] = o[23] ^ N46;
  assign N46 = o[0] & 1'b0;
  assign o_n[21] = o[22] ^ N47;
  assign N47 = o[0] & 1'b0;
  assign o_n[20] = o[21] ^ N48;
  assign N48 = o[0] & 1'b0;
  assign o_n[19] = o[20] ^ N49;
  assign N49 = o[0] & 1'b0;
  assign o_n[18] = o[19] ^ N50;
  assign N50 = o[0] & 1'b0;
  assign o_n[17] = o[18] ^ N51;
  assign N51 = o[0] & 1'b0;
  assign o_n[16] = o[17] ^ N52;
  assign N52 = o[0] & 1'b0;
  assign o_n[15] = o[16] ^ N53;
  assign N53 = o[0] & 1'b0;
  assign o_n[14] = o[15] ^ N54;
  assign N54 = o[0] & 1'b0;
  assign o_n[13] = o[14] ^ N55;
  assign N55 = o[0] & 1'b0;
  assign o_n[12] = o[13] ^ N56;
  assign N56 = o[0] & 1'b0;
  assign o_n[11] = o[12] ^ N57;
  assign N57 = o[0] & 1'b0;
  assign o_n[10] = o[11] ^ N58;
  assign N58 = o[0] & 1'b0;
  assign o_n[9] = o[10] ^ N59;
  assign N59 = o[0] & 1'b0;
  assign o_n[8] = o[9] ^ N60;
  assign N60 = o[0] & 1'b0;
  assign o_n[7] = o[8] ^ N61;
  assign N61 = o[0] & 1'b0;
  assign o_n[6] = o[7] ^ N62;
  assign N62 = o[0] & 1'b0;
  assign o_n[5] = o[6] ^ N63;
  assign N63 = o[0] & 1'b0;
  assign o_n[4] = o[5] ^ N64;
  assign N64 = o[0] & 1'b0;
  assign o_n[3] = o[4] ^ N65;
  assign N65 = o[0] & 1'b0;
  assign o_n[2] = o[3] ^ N66;
  assign N66 = o[0] & 1'b0;
  assign o_n[1] = o[2] ^ N67;
  assign N67 = o[0] & 1'b0;
  assign o_n[0] = o[1] ^ N68;
  assign N68 = o[0] & 1'b0;

  always @(posedge clk) begin
    if(N3) begin
      { o[31:0] } <= { N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4 };
    end 
  end


endmodule

