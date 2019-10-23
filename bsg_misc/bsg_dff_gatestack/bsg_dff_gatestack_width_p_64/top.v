

module top
(
  i0,
  i1,
  o
);

  input [63:0] i0;
  input [63:0] i1;
  output [63:0] o;

  bsg_dff_gatestack
  wrapper
  (
    .i0(i0),
    .i1(i1),
    .o(o)
  );


endmodule



module bsg_dff_gatestack
(
  i0,
  i1,
  o
);

  input [63:0] i0;
  input [63:0] i1;
  output [63:0] o;
  reg [63:0] o;

  always @(posedge i1[0]) begin
    if(1'b1) begin
      { o[0:0] } <= { i0[0:0] };
    end 
  end


  always @(posedge i1[1]) begin
    if(1'b1) begin
      { o[1:1] } <= { i0[1:1] };
    end 
  end


  always @(posedge i1[2]) begin
    if(1'b1) begin
      { o[2:2] } <= { i0[2:2] };
    end 
  end


  always @(posedge i1[3]) begin
    if(1'b1) begin
      { o[3:3] } <= { i0[3:3] };
    end 
  end


  always @(posedge i1[4]) begin
    if(1'b1) begin
      { o[4:4] } <= { i0[4:4] };
    end 
  end


  always @(posedge i1[5]) begin
    if(1'b1) begin
      { o[5:5] } <= { i0[5:5] };
    end 
  end


  always @(posedge i1[6]) begin
    if(1'b1) begin
      { o[6:6] } <= { i0[6:6] };
    end 
  end


  always @(posedge i1[7]) begin
    if(1'b1) begin
      { o[7:7] } <= { i0[7:7] };
    end 
  end


  always @(posedge i1[8]) begin
    if(1'b1) begin
      { o[8:8] } <= { i0[8:8] };
    end 
  end


  always @(posedge i1[9]) begin
    if(1'b1) begin
      { o[9:9] } <= { i0[9:9] };
    end 
  end


  always @(posedge i1[10]) begin
    if(1'b1) begin
      { o[10:10] } <= { i0[10:10] };
    end 
  end


  always @(posedge i1[11]) begin
    if(1'b1) begin
      { o[11:11] } <= { i0[11:11] };
    end 
  end


  always @(posedge i1[12]) begin
    if(1'b1) begin
      { o[12:12] } <= { i0[12:12] };
    end 
  end


  always @(posedge i1[13]) begin
    if(1'b1) begin
      { o[13:13] } <= { i0[13:13] };
    end 
  end


  always @(posedge i1[14]) begin
    if(1'b1) begin
      { o[14:14] } <= { i0[14:14] };
    end 
  end


  always @(posedge i1[15]) begin
    if(1'b1) begin
      { o[15:15] } <= { i0[15:15] };
    end 
  end


  always @(posedge i1[16]) begin
    if(1'b1) begin
      { o[16:16] } <= { i0[16:16] };
    end 
  end


  always @(posedge i1[17]) begin
    if(1'b1) begin
      { o[17:17] } <= { i0[17:17] };
    end 
  end


  always @(posedge i1[18]) begin
    if(1'b1) begin
      { o[18:18] } <= { i0[18:18] };
    end 
  end


  always @(posedge i1[19]) begin
    if(1'b1) begin
      { o[19:19] } <= { i0[19:19] };
    end 
  end


  always @(posedge i1[20]) begin
    if(1'b1) begin
      { o[20:20] } <= { i0[20:20] };
    end 
  end


  always @(posedge i1[21]) begin
    if(1'b1) begin
      { o[21:21] } <= { i0[21:21] };
    end 
  end


  always @(posedge i1[22]) begin
    if(1'b1) begin
      { o[22:22] } <= { i0[22:22] };
    end 
  end


  always @(posedge i1[23]) begin
    if(1'b1) begin
      { o[23:23] } <= { i0[23:23] };
    end 
  end


  always @(posedge i1[24]) begin
    if(1'b1) begin
      { o[24:24] } <= { i0[24:24] };
    end 
  end


  always @(posedge i1[25]) begin
    if(1'b1) begin
      { o[25:25] } <= { i0[25:25] };
    end 
  end


  always @(posedge i1[26]) begin
    if(1'b1) begin
      { o[26:26] } <= { i0[26:26] };
    end 
  end


  always @(posedge i1[27]) begin
    if(1'b1) begin
      { o[27:27] } <= { i0[27:27] };
    end 
  end


  always @(posedge i1[28]) begin
    if(1'b1) begin
      { o[28:28] } <= { i0[28:28] };
    end 
  end


  always @(posedge i1[29]) begin
    if(1'b1) begin
      { o[29:29] } <= { i0[29:29] };
    end 
  end


  always @(posedge i1[30]) begin
    if(1'b1) begin
      { o[30:30] } <= { i0[30:30] };
    end 
  end


  always @(posedge i1[31]) begin
    if(1'b1) begin
      { o[31:31] } <= { i0[31:31] };
    end 
  end


  always @(posedge i1[32]) begin
    if(1'b1) begin
      { o[32:32] } <= { i0[32:32] };
    end 
  end


  always @(posedge i1[33]) begin
    if(1'b1) begin
      { o[33:33] } <= { i0[33:33] };
    end 
  end


  always @(posedge i1[34]) begin
    if(1'b1) begin
      { o[34:34] } <= { i0[34:34] };
    end 
  end


  always @(posedge i1[35]) begin
    if(1'b1) begin
      { o[35:35] } <= { i0[35:35] };
    end 
  end


  always @(posedge i1[36]) begin
    if(1'b1) begin
      { o[36:36] } <= { i0[36:36] };
    end 
  end


  always @(posedge i1[37]) begin
    if(1'b1) begin
      { o[37:37] } <= { i0[37:37] };
    end 
  end


  always @(posedge i1[38]) begin
    if(1'b1) begin
      { o[38:38] } <= { i0[38:38] };
    end 
  end


  always @(posedge i1[39]) begin
    if(1'b1) begin
      { o[39:39] } <= { i0[39:39] };
    end 
  end


  always @(posedge i1[40]) begin
    if(1'b1) begin
      { o[40:40] } <= { i0[40:40] };
    end 
  end


  always @(posedge i1[41]) begin
    if(1'b1) begin
      { o[41:41] } <= { i0[41:41] };
    end 
  end


  always @(posedge i1[42]) begin
    if(1'b1) begin
      { o[42:42] } <= { i0[42:42] };
    end 
  end


  always @(posedge i1[43]) begin
    if(1'b1) begin
      { o[43:43] } <= { i0[43:43] };
    end 
  end


  always @(posedge i1[44]) begin
    if(1'b1) begin
      { o[44:44] } <= { i0[44:44] };
    end 
  end


  always @(posedge i1[45]) begin
    if(1'b1) begin
      { o[45:45] } <= { i0[45:45] };
    end 
  end


  always @(posedge i1[46]) begin
    if(1'b1) begin
      { o[46:46] } <= { i0[46:46] };
    end 
  end


  always @(posedge i1[47]) begin
    if(1'b1) begin
      { o[47:47] } <= { i0[47:47] };
    end 
  end


  always @(posedge i1[48]) begin
    if(1'b1) begin
      { o[48:48] } <= { i0[48:48] };
    end 
  end


  always @(posedge i1[49]) begin
    if(1'b1) begin
      { o[49:49] } <= { i0[49:49] };
    end 
  end


  always @(posedge i1[50]) begin
    if(1'b1) begin
      { o[50:50] } <= { i0[50:50] };
    end 
  end


  always @(posedge i1[51]) begin
    if(1'b1) begin
      { o[51:51] } <= { i0[51:51] };
    end 
  end


  always @(posedge i1[52]) begin
    if(1'b1) begin
      { o[52:52] } <= { i0[52:52] };
    end 
  end


  always @(posedge i1[53]) begin
    if(1'b1) begin
      { o[53:53] } <= { i0[53:53] };
    end 
  end


  always @(posedge i1[54]) begin
    if(1'b1) begin
      { o[54:54] } <= { i0[54:54] };
    end 
  end


  always @(posedge i1[55]) begin
    if(1'b1) begin
      { o[55:55] } <= { i0[55:55] };
    end 
  end


  always @(posedge i1[56]) begin
    if(1'b1) begin
      { o[56:56] } <= { i0[56:56] };
    end 
  end


  always @(posedge i1[57]) begin
    if(1'b1) begin
      { o[57:57] } <= { i0[57:57] };
    end 
  end


  always @(posedge i1[58]) begin
    if(1'b1) begin
      { o[58:58] } <= { i0[58:58] };
    end 
  end


  always @(posedge i1[59]) begin
    if(1'b1) begin
      { o[59:59] } <= { i0[59:59] };
    end 
  end


  always @(posedge i1[60]) begin
    if(1'b1) begin
      { o[60:60] } <= { i0[60:60] };
    end 
  end


  always @(posedge i1[61]) begin
    if(1'b1) begin
      { o[61:61] } <= { i0[61:61] };
    end 
  end


  always @(posedge i1[62]) begin
    if(1'b1) begin
      { o[62:62] } <= { i0[62:62] };
    end 
  end


  always @(posedge i1[63]) begin
    if(1'b1) begin
      { o[63:63] } <= { i0[63:63] };
    end 
  end


endmodule

