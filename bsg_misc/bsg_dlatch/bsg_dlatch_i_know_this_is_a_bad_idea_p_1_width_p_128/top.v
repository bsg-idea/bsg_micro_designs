

module top
(
  clk_i,
  data_i,
  data_o
);

  input [127:0] data_i;
  output [127:0] data_o;
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

  input [127:0] data_i;
  output [127:0] data_o;
  input clk_i;
  reg [127:0] data_o;

  always @(data_i[127] or clk_i) begin
    if(clk_i) begin
      { data_o[127:127] } <= { data_i[127:127] };
    end 
  end


  always @(data_i[126] or clk_i) begin
    if(clk_i) begin
      { data_o[126:126] } <= { data_i[126:126] };
    end 
  end


  always @(data_i[125] or clk_i) begin
    if(clk_i) begin
      { data_o[125:125] } <= { data_i[125:125] };
    end 
  end


  always @(data_i[124] or clk_i) begin
    if(clk_i) begin
      { data_o[124:124] } <= { data_i[124:124] };
    end 
  end


  always @(data_i[123] or clk_i) begin
    if(clk_i) begin
      { data_o[123:123] } <= { data_i[123:123] };
    end 
  end


  always @(data_i[122] or clk_i) begin
    if(clk_i) begin
      { data_o[122:122] } <= { data_i[122:122] };
    end 
  end


  always @(data_i[121] or clk_i) begin
    if(clk_i) begin
      { data_o[121:121] } <= { data_i[121:121] };
    end 
  end


  always @(data_i[120] or clk_i) begin
    if(clk_i) begin
      { data_o[120:120] } <= { data_i[120:120] };
    end 
  end


  always @(data_i[119] or clk_i) begin
    if(clk_i) begin
      { data_o[119:119] } <= { data_i[119:119] };
    end 
  end


  always @(data_i[118] or clk_i) begin
    if(clk_i) begin
      { data_o[118:118] } <= { data_i[118:118] };
    end 
  end


  always @(data_i[117] or clk_i) begin
    if(clk_i) begin
      { data_o[117:117] } <= { data_i[117:117] };
    end 
  end


  always @(data_i[116] or clk_i) begin
    if(clk_i) begin
      { data_o[116:116] } <= { data_i[116:116] };
    end 
  end


  always @(data_i[115] or clk_i) begin
    if(clk_i) begin
      { data_o[115:115] } <= { data_i[115:115] };
    end 
  end


  always @(data_i[114] or clk_i) begin
    if(clk_i) begin
      { data_o[114:114] } <= { data_i[114:114] };
    end 
  end


  always @(data_i[113] or clk_i) begin
    if(clk_i) begin
      { data_o[113:113] } <= { data_i[113:113] };
    end 
  end


  always @(data_i[112] or clk_i) begin
    if(clk_i) begin
      { data_o[112:112] } <= { data_i[112:112] };
    end 
  end


  always @(data_i[111] or clk_i) begin
    if(clk_i) begin
      { data_o[111:111] } <= { data_i[111:111] };
    end 
  end


  always @(data_i[110] or clk_i) begin
    if(clk_i) begin
      { data_o[110:110] } <= { data_i[110:110] };
    end 
  end


  always @(data_i[109] or clk_i) begin
    if(clk_i) begin
      { data_o[109:109] } <= { data_i[109:109] };
    end 
  end


  always @(data_i[108] or clk_i) begin
    if(clk_i) begin
      { data_o[108:108] } <= { data_i[108:108] };
    end 
  end


  always @(data_i[107] or clk_i) begin
    if(clk_i) begin
      { data_o[107:107] } <= { data_i[107:107] };
    end 
  end


  always @(data_i[106] or clk_i) begin
    if(clk_i) begin
      { data_o[106:106] } <= { data_i[106:106] };
    end 
  end


  always @(data_i[105] or clk_i) begin
    if(clk_i) begin
      { data_o[105:105] } <= { data_i[105:105] };
    end 
  end


  always @(data_i[104] or clk_i) begin
    if(clk_i) begin
      { data_o[104:104] } <= { data_i[104:104] };
    end 
  end


  always @(data_i[103] or clk_i) begin
    if(clk_i) begin
      { data_o[103:103] } <= { data_i[103:103] };
    end 
  end


  always @(data_i[102] or clk_i) begin
    if(clk_i) begin
      { data_o[102:102] } <= { data_i[102:102] };
    end 
  end


  always @(data_i[101] or clk_i) begin
    if(clk_i) begin
      { data_o[101:101] } <= { data_i[101:101] };
    end 
  end


  always @(data_i[100] or clk_i) begin
    if(clk_i) begin
      { data_o[100:100] } <= { data_i[100:100] };
    end 
  end


  always @(data_i[99] or clk_i) begin
    if(clk_i) begin
      { data_o[99:99] } <= { data_i[99:99] };
    end 
  end


  always @(data_i[98] or clk_i) begin
    if(clk_i) begin
      { data_o[98:98] } <= { data_i[98:98] };
    end 
  end


  always @(data_i[97] or clk_i) begin
    if(clk_i) begin
      { data_o[97:97] } <= { data_i[97:97] };
    end 
  end


  always @(data_i[96] or clk_i) begin
    if(clk_i) begin
      { data_o[96:96] } <= { data_i[96:96] };
    end 
  end


  always @(data_i[95] or clk_i) begin
    if(clk_i) begin
      { data_o[95:95] } <= { data_i[95:95] };
    end 
  end


  always @(data_i[94] or clk_i) begin
    if(clk_i) begin
      { data_o[94:94] } <= { data_i[94:94] };
    end 
  end


  always @(data_i[93] or clk_i) begin
    if(clk_i) begin
      { data_o[93:93] } <= { data_i[93:93] };
    end 
  end


  always @(data_i[92] or clk_i) begin
    if(clk_i) begin
      { data_o[92:92] } <= { data_i[92:92] };
    end 
  end


  always @(data_i[91] or clk_i) begin
    if(clk_i) begin
      { data_o[91:91] } <= { data_i[91:91] };
    end 
  end


  always @(data_i[90] or clk_i) begin
    if(clk_i) begin
      { data_o[90:90] } <= { data_i[90:90] };
    end 
  end


  always @(data_i[89] or clk_i) begin
    if(clk_i) begin
      { data_o[89:89] } <= { data_i[89:89] };
    end 
  end


  always @(data_i[88] or clk_i) begin
    if(clk_i) begin
      { data_o[88:88] } <= { data_i[88:88] };
    end 
  end


  always @(data_i[87] or clk_i) begin
    if(clk_i) begin
      { data_o[87:87] } <= { data_i[87:87] };
    end 
  end


  always @(data_i[86] or clk_i) begin
    if(clk_i) begin
      { data_o[86:86] } <= { data_i[86:86] };
    end 
  end


  always @(data_i[85] or clk_i) begin
    if(clk_i) begin
      { data_o[85:85] } <= { data_i[85:85] };
    end 
  end


  always @(data_i[84] or clk_i) begin
    if(clk_i) begin
      { data_o[84:84] } <= { data_i[84:84] };
    end 
  end


  always @(data_i[83] or clk_i) begin
    if(clk_i) begin
      { data_o[83:83] } <= { data_i[83:83] };
    end 
  end


  always @(data_i[82] or clk_i) begin
    if(clk_i) begin
      { data_o[82:82] } <= { data_i[82:82] };
    end 
  end


  always @(data_i[81] or clk_i) begin
    if(clk_i) begin
      { data_o[81:81] } <= { data_i[81:81] };
    end 
  end


  always @(data_i[80] or clk_i) begin
    if(clk_i) begin
      { data_o[80:80] } <= { data_i[80:80] };
    end 
  end


  always @(data_i[79] or clk_i) begin
    if(clk_i) begin
      { data_o[79:79] } <= { data_i[79:79] };
    end 
  end


  always @(data_i[78] or clk_i) begin
    if(clk_i) begin
      { data_o[78:78] } <= { data_i[78:78] };
    end 
  end


  always @(data_i[77] or clk_i) begin
    if(clk_i) begin
      { data_o[77:77] } <= { data_i[77:77] };
    end 
  end


  always @(data_i[76] or clk_i) begin
    if(clk_i) begin
      { data_o[76:76] } <= { data_i[76:76] };
    end 
  end


  always @(data_i[75] or clk_i) begin
    if(clk_i) begin
      { data_o[75:75] } <= { data_i[75:75] };
    end 
  end


  always @(data_i[74] or clk_i) begin
    if(clk_i) begin
      { data_o[74:74] } <= { data_i[74:74] };
    end 
  end


  always @(data_i[73] or clk_i) begin
    if(clk_i) begin
      { data_o[73:73] } <= { data_i[73:73] };
    end 
  end


  always @(data_i[72] or clk_i) begin
    if(clk_i) begin
      { data_o[72:72] } <= { data_i[72:72] };
    end 
  end


  always @(data_i[71] or clk_i) begin
    if(clk_i) begin
      { data_o[71:71] } <= { data_i[71:71] };
    end 
  end


  always @(data_i[70] or clk_i) begin
    if(clk_i) begin
      { data_o[70:70] } <= { data_i[70:70] };
    end 
  end


  always @(data_i[69] or clk_i) begin
    if(clk_i) begin
      { data_o[69:69] } <= { data_i[69:69] };
    end 
  end


  always @(data_i[68] or clk_i) begin
    if(clk_i) begin
      { data_o[68:68] } <= { data_i[68:68] };
    end 
  end


  always @(data_i[67] or clk_i) begin
    if(clk_i) begin
      { data_o[67:67] } <= { data_i[67:67] };
    end 
  end


  always @(data_i[66] or clk_i) begin
    if(clk_i) begin
      { data_o[66:66] } <= { data_i[66:66] };
    end 
  end


  always @(data_i[65] or clk_i) begin
    if(clk_i) begin
      { data_o[65:65] } <= { data_i[65:65] };
    end 
  end


  always @(data_i[64] or clk_i) begin
    if(clk_i) begin
      { data_o[64:64] } <= { data_i[64:64] };
    end 
  end


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

