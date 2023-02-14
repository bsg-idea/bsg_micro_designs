

module top
(
  i0,
  i1,
  o
);

  input [15:0] i0;
  input [15:0] i1;
  output [15:0] o;

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

  input [15:0] i0;
  input [15:0] i1;
  output [15:0] o;
  reg [15:0] o;

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


endmodule

