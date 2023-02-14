

module top
(
  reset_i,
  clk_i,
  data_i,
  ready_o,
  data_r_o,
  clk_r_o
);

  input [255:0] data_i;
  output [127:0] data_r_o;
  input reset_i;
  input clk_i;
  output ready_o;
  output clk_r_o;

  bsg_link_oddr_phy
  wrapper
  (
    .data_i(data_i),
    .data_r_o(data_r_o),
    .reset_i(reset_i),
    .clk_i(clk_i),
    .ready_o(ready_o),
    .clk_r_o(clk_r_o)
  );


endmodule



module bsg_link_oddr_phy
(
  reset_i,
  clk_i,
  data_i,
  ready_o,
  data_r_o,
  clk_r_o
);

  input [255:0] data_i;
  output [127:0] data_r_o;
  input reset_i;
  input clk_i;
  output ready_o;
  output clk_r_o;
  wire ready_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,
  N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,
  N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,
  N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,
  N132,N133,N134,N135,N136,N137,N138,N139,N140;
  reg [255:0] data_i_r;
  reg odd_r,reset_i_r,clk_r,clk_r_o;
  reg [127:0] data_r_o;
  assign N8 = (N0)? 1'b0 : 
              (N1)? N6 : 1'b0;
  assign N0 = reset_i;
  assign N1 = N7;
  assign N12 = (N2)? 1'b0 : 
               (N3)? N11 : 1'b0;
  assign N2 = reset_i_r;
  assign N3 = N10;
  assign { N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13 } = (N4)? data_i_r[127:0] : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       (N5)? data_i_r[255:128] : 1'b0;
  assign N4 = odd_r;
  assign N5 = N6;
  assign ready_o = ~odd_r;
  assign N6 = ~odd_r;
  assign N7 = ~reset_i;
  assign N9 = ~clk_i;
  assign N10 = ~reset_i_r;
  assign N11 = ~clk_r;

  always @(posedge clk_i) begin
    if(N6) begin
      { data_i_r[255:0] } <= { data_i[255:0] };
    end 
    if(1'b1) begin
      odd_r <= N8;
      reset_i_r <= reset_i;
      { data_r_o[127:0] } <= { N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13 };
    end 
  end


  always @(posedge N9) begin
    if(1'b1) begin
      clk_r <= N12;
      clk_r_o <= clk_r;
    end 
  end


endmodule

