

module top
(
  clk_i,
  data_i,
  data_o
);

  input [63:0] data_i;
  output [63:0] data_o;
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

  input [63:0] data_i;
  output [63:0] data_o;
  input clk_i;
  reg [63:0] data_o;

  always @(data_i[63] or clk_i) begin
    if(clk_i) begin
      { data_o[63:63] } <= { data_i[63:63] };
    end 
  end


  always @(data_i[62] or clk_i) begin
    if(clk_i) begin
      { data_o[62:62] } <= { data_i[62:62] };
    end 
  end


  always @(data_i[61] or clk_i) begin
    if(clk_i) begin
      { data_o[61:61] } <= { data_i[61:61] };
    end 
  end


  always @(data_i[60] or clk_i) begin
    if(clk_i) begin
      { data_o[60:60] } <= { data_i[60:60] };
    end 
  end


  always @(data_i[59] or clk_i) begin
    if(clk_i) begin
      { data_o[59:59] } <= { data_i[59:59] };
    end 
  end


  always @(data_i[58] or clk_i) begin
    if(clk_i) begin
      { data_o[58:58] } <= { data_i[58:58] };
    end 
  end


  always @(data_i[57] or clk_i) begin
    if(clk_i) begin
      { data_o[57:57] } <= { data_i[57:57] };
    end 
  end


  always @(data_i[56] or clk_i) begin
    if(clk_i) begin
      { data_o[56:56] } <= { data_i[56:56] };
    end 
  end


  always @(data_i[55] or clk_i) begin
    if(clk_i) begin
      { data_o[55:55] } <= { data_i[55:55] };
    end 
  end


  always @(data_i[54] or clk_i) begin
    if(clk_i) begin
      { data_o[54:54] } <= { data_i[54:54] };
    end 
  end


  always @(data_i[53] or clk_i) begin
    if(clk_i) begin
      { data_o[53:53] } <= { data_i[53:53] };
    end 
  end


  always @(data_i[52] or clk_i) begin
    if(clk_i) begin
      { data_o[52:52] } <= { data_i[52:52] };
    end 
  end


  always @(data_i[51] or clk_i) begin
    if(clk_i) begin
      { data_o[51:51] } <= { data_i[51:51] };
    end 
  end


  always @(data_i[50] or clk_i) begin
    if(clk_i) begin
      { data_o[50:50] } <= { data_i[50:50] };
    end 
  end


  always @(data_i[49] or clk_i) begin
    if(clk_i) begin
      { data_o[49:49] } <= { data_i[49:49] };
    end 
  end


  always @(data_i[48] or clk_i) begin
    if(clk_i) begin
      { data_o[48:48] } <= { data_i[48:48] };
    end 
  end


  always @(data_i[47] or clk_i) begin
    if(clk_i) begin
      { data_o[47:47] } <= { data_i[47:47] };
    end 
  end


  always @(data_i[46] or clk_i) begin
    if(clk_i) begin
      { data_o[46:46] } <= { data_i[46:46] };
    end 
  end


  always @(data_i[45] or clk_i) begin
    if(clk_i) begin
      { data_o[45:45] } <= { data_i[45:45] };
    end 
  end


  always @(data_i[44] or clk_i) begin
    if(clk_i) begin
      { data_o[44:44] } <= { data_i[44:44] };
    end 
  end


  always @(data_i[43] or clk_i) begin
    if(clk_i) begin
      { data_o[43:43] } <= { data_i[43:43] };
    end 
  end


  always @(data_i[42] or clk_i) begin
    if(clk_i) begin
      { data_o[42:42] } <= { data_i[42:42] };
    end 
  end


  always @(data_i[41] or clk_i) begin
    if(clk_i) begin
      { data_o[41:41] } <= { data_i[41:41] };
    end 
  end


  always @(data_i[40] or clk_i) begin
    if(clk_i) begin
      { data_o[40:40] } <= { data_i[40:40] };
    end 
  end


  always @(data_i[39] or clk_i) begin
    if(clk_i) begin
      { data_o[39:39] } <= { data_i[39:39] };
    end 
  end


  always @(data_i[38] or clk_i) begin
    if(clk_i) begin
      { data_o[38:38] } <= { data_i[38:38] };
    end 
  end


  always @(data_i[37] or clk_i) begin
    if(clk_i) begin
      { data_o[37:37] } <= { data_i[37:37] };
    end 
  end


  always @(data_i[36] or clk_i) begin
    if(clk_i) begin
      { data_o[36:36] } <= { data_i[36:36] };
    end 
  end


  always @(data_i[35] or clk_i) begin
    if(clk_i) begin
      { data_o[35:35] } <= { data_i[35:35] };
    end 
  end


  always @(data_i[34] or clk_i) begin
    if(clk_i) begin
      { data_o[34:34] } <= { data_i[34:34] };
    end 
  end


  always @(data_i[33] or clk_i) begin
    if(clk_i) begin
      { data_o[33:33] } <= { data_i[33:33] };
    end 
  end


  always @(data_i[32] or clk_i) begin
    if(clk_i) begin
      { data_o[32:32] } <= { data_i[32:32] };
    end 
  end


  always @(data_i[31] or clk_i) begin
    if(clk_i) begin
      { data_o[31:31] } <= { data_i[31:31] };
    end 
  end


  always @(data_i[30] or clk_i) begin
    if(clk_i) begin
      { data_o[30:30] } <= { data_i[30:30] };
    end 
  end


  always @(data_i[29] or clk_i) begin
    if(clk_i) begin
      { data_o[29:29] } <= { data_i[29:29] };
    end 
  end


  always @(data_i[28] or clk_i) begin
    if(clk_i) begin
      { data_o[28:28] } <= { data_i[28:28] };
    end 
  end


  always @(data_i[27] or clk_i) begin
    if(clk_i) begin
      { data_o[27:27] } <= { data_i[27:27] };
    end 
  end


  always @(data_i[26] or clk_i) begin
    if(clk_i) begin
      { data_o[26:26] } <= { data_i[26:26] };
    end 
  end


  always @(data_i[25] or clk_i) begin
    if(clk_i) begin
      { data_o[25:25] } <= { data_i[25:25] };
    end 
  end


  always @(data_i[24] or clk_i) begin
    if(clk_i) begin
      { data_o[24:24] } <= { data_i[24:24] };
    end 
  end


  always @(data_i[23] or clk_i) begin
    if(clk_i) begin
      { data_o[23:23] } <= { data_i[23:23] };
    end 
  end


  always @(data_i[22] or clk_i) begin
    if(clk_i) begin
      { data_o[22:22] } <= { data_i[22:22] };
    end 
  end


  always @(data_i[21] or clk_i) begin
    if(clk_i) begin
      { data_o[21:21] } <= { data_i[21:21] };
    end 
  end


  always @(data_i[20] or clk_i) begin
    if(clk_i) begin
      { data_o[20:20] } <= { data_i[20:20] };
    end 
  end


  always @(data_i[19] or clk_i) begin
    if(clk_i) begin
      { data_o[19:19] } <= { data_i[19:19] };
    end 
  end


  always @(data_i[18] or clk_i) begin
    if(clk_i) begin
      { data_o[18:18] } <= { data_i[18:18] };
    end 
  end


  always @(data_i[17] or clk_i) begin
    if(clk_i) begin
      { data_o[17:17] } <= { data_i[17:17] };
    end 
  end


  always @(data_i[16] or clk_i) begin
    if(clk_i) begin
      { data_o[16:16] } <= { data_i[16:16] };
    end 
  end


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

