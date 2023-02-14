

module top
(
  i0,
  i1,
  o
);

  input [31:0] i0;
  input [31:0] i1;
  output [31:0] o;

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

  input [31:0] i0;
  input [31:0] i1;
  output [31:0] o;
  reg [31:0] o;

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


endmodule

