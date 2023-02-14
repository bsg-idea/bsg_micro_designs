

module top
(
  clk_i,
  data_i,
  data_o
);

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;

  bsg_dlatch
  wrapper
  (
    .data_i(data_i),
    .data_o(data_o),
    .clk_i(clk_i)
  );


endmodule



module bsg_dlatch
(
  clk_i,
  data_i,
  data_o
);

  input [15:0] data_i;
  output [15:0] data_o;
  input clk_i;
  reg [15:0] data_o;

  always @(data_i[15] or clk_i) begin
    if(clk_i) begin
      { data_o[15:15] } <= { data_i[15:15] };
    end 
  end


  always @(data_i[14] or clk_i) begin
    if(clk_i) begin
      { data_o[14:14] } <= { data_i[14:14] };
    end 
  end


  always @(data_i[13] or clk_i) begin
    if(clk_i) begin
      { data_o[13:13] } <= { data_i[13:13] };
    end 
  end


  always @(data_i[12] or clk_i) begin
    if(clk_i) begin
      { data_o[12:12] } <= { data_i[12:12] };
    end 
  end


  always @(data_i[11] or clk_i) begin
    if(clk_i) begin
      { data_o[11:11] } <= { data_i[11:11] };
    end 
  end


  always @(data_i[10] or clk_i) begin
    if(clk_i) begin
      { data_o[10:10] } <= { data_i[10:10] };
    end 
  end


  always @(data_i[9] or clk_i) begin
    if(clk_i) begin
      { data_o[9:9] } <= { data_i[9:9] };
    end 
  end


  always @(data_i[8] or clk_i) begin
    if(clk_i) begin
      { data_o[8:8] } <= { data_i[8:8] };
    end 
  end


  always @(data_i[7] or clk_i) begin
    if(clk_i) begin
      { data_o[7:7] } <= { data_i[7:7] };
    end 
  end


  always @(data_i[6] or clk_i) begin
    if(clk_i) begin
      { data_o[6:6] } <= { data_i[6:6] };
    end 
  end


  always @(data_i[5] or clk_i) begin
    if(clk_i) begin
      { data_o[5:5] } <= { data_i[5:5] };
    end 
  end


  always @(data_i[4] or clk_i) begin
    if(clk_i) begin
      { data_o[4:4] } <= { data_i[4:4] };
    end 
  end


  always @(data_i[3] or clk_i) begin
    if(clk_i) begin
      { data_o[3:3] } <= { data_i[3:3] };
    end 
  end


  always @(data_i[2] or clk_i) begin
    if(clk_i) begin
      { data_o[2:2] } <= { data_i[2:2] };
    end 
  end


  always @(data_i[1] or clk_i) begin
    if(clk_i) begin
      { data_o[1:1] } <= { data_i[1:1] };
    end 
  end


  always @(data_i[0] or clk_i) begin
    if(clk_i) begin
      { data_o[0:0] } <= { data_i[0:0] };
    end 
  end


endmodule

