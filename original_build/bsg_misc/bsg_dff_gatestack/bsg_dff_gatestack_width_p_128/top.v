

module top
(
  i0,
  i1,
  o
);

  input [127:0] i0;
  input [127:0] i1;
  output [127:0] o;

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

  input [127:0] i0;
  input [127:0] i1;
  output [127:0] o;
  reg [127:0] o;

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


  always @(posedge i1[64]) begin
    if(1'b1) begin
      { o[64:64] } <= { i0[64:64] };
    end 
  end


  always @(posedge i1[65]) begin
    if(1'b1) begin
      { o[65:65] } <= { i0[65:65] };
    end 
  end


  always @(posedge i1[66]) begin
    if(1'b1) begin
      { o[66:66] } <= { i0[66:66] };
    end 
  end


  always @(posedge i1[67]) begin
    if(1'b1) begin
      { o[67:67] } <= { i0[67:67] };
    end 
  end


  always @(posedge i1[68]) begin
    if(1'b1) begin
      { o[68:68] } <= { i0[68:68] };
    end 
  end


  always @(posedge i1[69]) begin
    if(1'b1) begin
      { o[69:69] } <= { i0[69:69] };
    end 
  end


  always @(posedge i1[70]) begin
    if(1'b1) begin
      { o[70:70] } <= { i0[70:70] };
    end 
  end


  always @(posedge i1[71]) begin
    if(1'b1) begin
      { o[71:71] } <= { i0[71:71] };
    end 
  end


  always @(posedge i1[72]) begin
    if(1'b1) begin
      { o[72:72] } <= { i0[72:72] };
    end 
  end


  always @(posedge i1[73]) begin
    if(1'b1) begin
      { o[73:73] } <= { i0[73:73] };
    end 
  end


  always @(posedge i1[74]) begin
    if(1'b1) begin
      { o[74:74] } <= { i0[74:74] };
    end 
  end


  always @(posedge i1[75]) begin
    if(1'b1) begin
      { o[75:75] } <= { i0[75:75] };
    end 
  end


  always @(posedge i1[76]) begin
    if(1'b1) begin
      { o[76:76] } <= { i0[76:76] };
    end 
  end


  always @(posedge i1[77]) begin
    if(1'b1) begin
      { o[77:77] } <= { i0[77:77] };
    end 
  end


  always @(posedge i1[78]) begin
    if(1'b1) begin
      { o[78:78] } <= { i0[78:78] };
    end 
  end


  always @(posedge i1[79]) begin
    if(1'b1) begin
      { o[79:79] } <= { i0[79:79] };
    end 
  end


  always @(posedge i1[80]) begin
    if(1'b1) begin
      { o[80:80] } <= { i0[80:80] };
    end 
  end


  always @(posedge i1[81]) begin
    if(1'b1) begin
      { o[81:81] } <= { i0[81:81] };
    end 
  end


  always @(posedge i1[82]) begin
    if(1'b1) begin
      { o[82:82] } <= { i0[82:82] };
    end 
  end


  always @(posedge i1[83]) begin
    if(1'b1) begin
      { o[83:83] } <= { i0[83:83] };
    end 
  end


  always @(posedge i1[84]) begin
    if(1'b1) begin
      { o[84:84] } <= { i0[84:84] };
    end 
  end


  always @(posedge i1[85]) begin
    if(1'b1) begin
      { o[85:85] } <= { i0[85:85] };
    end 
  end


  always @(posedge i1[86]) begin
    if(1'b1) begin
      { o[86:86] } <= { i0[86:86] };
    end 
  end


  always @(posedge i1[87]) begin
    if(1'b1) begin
      { o[87:87] } <= { i0[87:87] };
    end 
  end


  always @(posedge i1[88]) begin
    if(1'b1) begin
      { o[88:88] } <= { i0[88:88] };
    end 
  end


  always @(posedge i1[89]) begin
    if(1'b1) begin
      { o[89:89] } <= { i0[89:89] };
    end 
  end


  always @(posedge i1[90]) begin
    if(1'b1) begin
      { o[90:90] } <= { i0[90:90] };
    end 
  end


  always @(posedge i1[91]) begin
    if(1'b1) begin
      { o[91:91] } <= { i0[91:91] };
    end 
  end


  always @(posedge i1[92]) begin
    if(1'b1) begin
      { o[92:92] } <= { i0[92:92] };
    end 
  end


  always @(posedge i1[93]) begin
    if(1'b1) begin
      { o[93:93] } <= { i0[93:93] };
    end 
  end


  always @(posedge i1[94]) begin
    if(1'b1) begin
      { o[94:94] } <= { i0[94:94] };
    end 
  end


  always @(posedge i1[95]) begin
    if(1'b1) begin
      { o[95:95] } <= { i0[95:95] };
    end 
  end


  always @(posedge i1[96]) begin
    if(1'b1) begin
      { o[96:96] } <= { i0[96:96] };
    end 
  end


  always @(posedge i1[97]) begin
    if(1'b1) begin
      { o[97:97] } <= { i0[97:97] };
    end 
  end


  always @(posedge i1[98]) begin
    if(1'b1) begin
      { o[98:98] } <= { i0[98:98] };
    end 
  end


  always @(posedge i1[99]) begin
    if(1'b1) begin
      { o[99:99] } <= { i0[99:99] };
    end 
  end


  always @(posedge i1[100]) begin
    if(1'b1) begin
      { o[100:100] } <= { i0[100:100] };
    end 
  end


  always @(posedge i1[101]) begin
    if(1'b1) begin
      { o[101:101] } <= { i0[101:101] };
    end 
  end


  always @(posedge i1[102]) begin
    if(1'b1) begin
      { o[102:102] } <= { i0[102:102] };
    end 
  end


  always @(posedge i1[103]) begin
    if(1'b1) begin
      { o[103:103] } <= { i0[103:103] };
    end 
  end


  always @(posedge i1[104]) begin
    if(1'b1) begin
      { o[104:104] } <= { i0[104:104] };
    end 
  end


  always @(posedge i1[105]) begin
    if(1'b1) begin
      { o[105:105] } <= { i0[105:105] };
    end 
  end


  always @(posedge i1[106]) begin
    if(1'b1) begin
      { o[106:106] } <= { i0[106:106] };
    end 
  end


  always @(posedge i1[107]) begin
    if(1'b1) begin
      { o[107:107] } <= { i0[107:107] };
    end 
  end


  always @(posedge i1[108]) begin
    if(1'b1) begin
      { o[108:108] } <= { i0[108:108] };
    end 
  end


  always @(posedge i1[109]) begin
    if(1'b1) begin
      { o[109:109] } <= { i0[109:109] };
    end 
  end


  always @(posedge i1[110]) begin
    if(1'b1) begin
      { o[110:110] } <= { i0[110:110] };
    end 
  end


  always @(posedge i1[111]) begin
    if(1'b1) begin
      { o[111:111] } <= { i0[111:111] };
    end 
  end


  always @(posedge i1[112]) begin
    if(1'b1) begin
      { o[112:112] } <= { i0[112:112] };
    end 
  end


  always @(posedge i1[113]) begin
    if(1'b1) begin
      { o[113:113] } <= { i0[113:113] };
    end 
  end


  always @(posedge i1[114]) begin
    if(1'b1) begin
      { o[114:114] } <= { i0[114:114] };
    end 
  end


  always @(posedge i1[115]) begin
    if(1'b1) begin
      { o[115:115] } <= { i0[115:115] };
    end 
  end


  always @(posedge i1[116]) begin
    if(1'b1) begin
      { o[116:116] } <= { i0[116:116] };
    end 
  end


  always @(posedge i1[117]) begin
    if(1'b1) begin
      { o[117:117] } <= { i0[117:117] };
    end 
  end


  always @(posedge i1[118]) begin
    if(1'b1) begin
      { o[118:118] } <= { i0[118:118] };
    end 
  end


  always @(posedge i1[119]) begin
    if(1'b1) begin
      { o[119:119] } <= { i0[119:119] };
    end 
  end


  always @(posedge i1[120]) begin
    if(1'b1) begin
      { o[120:120] } <= { i0[120:120] };
    end 
  end


  always @(posedge i1[121]) begin
    if(1'b1) begin
      { o[121:121] } <= { i0[121:121] };
    end 
  end


  always @(posedge i1[122]) begin
    if(1'b1) begin
      { o[122:122] } <= { i0[122:122] };
    end 
  end


  always @(posedge i1[123]) begin
    if(1'b1) begin
      { o[123:123] } <= { i0[123:123] };
    end 
  end


  always @(posedge i1[124]) begin
    if(1'b1) begin
      { o[124:124] } <= { i0[124:124] };
    end 
  end


  always @(posedge i1[125]) begin
    if(1'b1) begin
      { o[125:125] } <= { i0[125:125] };
    end 
  end


  always @(posedge i1[126]) begin
    if(1'b1) begin
      { o[126:126] } <= { i0[126:126] };
    end 
  end


  always @(posedge i1[127]) begin
    if(1'b1) begin
      { o[127:127] } <= { i0[127:127] };
    end 
  end


endmodule

