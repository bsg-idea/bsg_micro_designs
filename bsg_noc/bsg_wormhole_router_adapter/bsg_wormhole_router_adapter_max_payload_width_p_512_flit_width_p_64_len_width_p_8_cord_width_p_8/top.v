

module bsg_mem_1r1w_synth_width_p4_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [3:0] w_data_i;
  input [0:0] r_addr_i;
  output [3:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [3:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [7:0] mem;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[7] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[6] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[5] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[4] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[7:4] } <= { w_data_i[3:0] };
    end 
    if(N7) begin
      { mem[3:0] } <= { w_data_i[3:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p4_els_p2_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [3:0] w_data_i;
  input [0:0] r_addr_i;
  output [3:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [3:0] r_data_o;

  bsg_mem_1r1w_synth_width_p4_els_p2_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i[0]),
    .w_data_i(w_data_i),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i[0]),
    .r_data_o(r_data_o)
  );


endmodule



module bsg_two_fifo_width_p4
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  yumi_i
);

  input [3:0] data_i;
  output [3:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [3:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p4_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i),
    .r_v_i(n_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o)
  );

  assign N9 = (N0)? 1'b1 : 
              (N1)? N5 : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign N10 = (N0)? 1'b0 : 
               (N1)? N4 : 1'b0;
  assign N11 = (N0)? 1'b1 : 
               (N1)? yumi_i : 1'b0;
  assign N12 = (N0)? 1'b0 : 
               (N1)? N6 : 1'b0;
  assign N13 = (N0)? 1'b1 : 
               (N1)? N7 : 1'b0;
  assign N14 = (N0)? 1'b0 : 
               (N1)? N8 : 1'b0;
  assign n_0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N15;
  assign N15 = ~full_r;
  assign N2 = ~reset_i;
  assign N3 = reset_i;
  assign N5 = enq_i;
  assign N4 = ~tail_r;
  assign N6 = ~head_r;
  assign N7 = N17 | N19;
  assign N17 = empty_r & N16;
  assign N16 = ~enq_i;
  assign N19 = N18 & N16;
  assign N18 = N15 & yumi_i;
  assign N8 = N23 | N24;
  assign N23 = N21 & N22;
  assign N21 = N20 & enq_i;
  assign N20 = ~empty_r;
  assign N22 = ~yumi_i;
  assign N24 = full_r & N22;

  always @(posedge clk_i) begin
    if(1'b1) begin
      full_r <= N14;
      empty_r <= N13;
    end 
    if(N9) begin
      tail_r <= N10;
    end 
    if(N11) begin
      head_r <= N12;
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p576_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [575:0] w_data_i;
  input [0:0] r_addr_i;
  output [575:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [575:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18;
  reg [1151:0] mem;
  assign r_data_o[575] = (N3)? mem[575] : 
                         (N0)? mem[1151] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[574] = (N3)? mem[574] : 
                         (N0)? mem[1150] : 1'b0;
  assign r_data_o[573] = (N3)? mem[573] : 
                         (N0)? mem[1149] : 1'b0;
  assign r_data_o[572] = (N3)? mem[572] : 
                         (N0)? mem[1148] : 1'b0;
  assign r_data_o[571] = (N3)? mem[571] : 
                         (N0)? mem[1147] : 1'b0;
  assign r_data_o[570] = (N3)? mem[570] : 
                         (N0)? mem[1146] : 1'b0;
  assign r_data_o[569] = (N3)? mem[569] : 
                         (N0)? mem[1145] : 1'b0;
  assign r_data_o[568] = (N3)? mem[568] : 
                         (N0)? mem[1144] : 1'b0;
  assign r_data_o[567] = (N3)? mem[567] : 
                         (N0)? mem[1143] : 1'b0;
  assign r_data_o[566] = (N3)? mem[566] : 
                         (N0)? mem[1142] : 1'b0;
  assign r_data_o[565] = (N3)? mem[565] : 
                         (N0)? mem[1141] : 1'b0;
  assign r_data_o[564] = (N3)? mem[564] : 
                         (N0)? mem[1140] : 1'b0;
  assign r_data_o[563] = (N3)? mem[563] : 
                         (N0)? mem[1139] : 1'b0;
  assign r_data_o[562] = (N3)? mem[562] : 
                         (N0)? mem[1138] : 1'b0;
  assign r_data_o[561] = (N3)? mem[561] : 
                         (N0)? mem[1137] : 1'b0;
  assign r_data_o[560] = (N3)? mem[560] : 
                         (N0)? mem[1136] : 1'b0;
  assign r_data_o[559] = (N3)? mem[559] : 
                         (N0)? mem[1135] : 1'b0;
  assign r_data_o[558] = (N3)? mem[558] : 
                         (N0)? mem[1134] : 1'b0;
  assign r_data_o[557] = (N3)? mem[557] : 
                         (N0)? mem[1133] : 1'b0;
  assign r_data_o[556] = (N3)? mem[556] : 
                         (N0)? mem[1132] : 1'b0;
  assign r_data_o[555] = (N3)? mem[555] : 
                         (N0)? mem[1131] : 1'b0;
  assign r_data_o[554] = (N3)? mem[554] : 
                         (N0)? mem[1130] : 1'b0;
  assign r_data_o[553] = (N3)? mem[553] : 
                         (N0)? mem[1129] : 1'b0;
  assign r_data_o[552] = (N3)? mem[552] : 
                         (N0)? mem[1128] : 1'b0;
  assign r_data_o[551] = (N3)? mem[551] : 
                         (N0)? mem[1127] : 1'b0;
  assign r_data_o[550] = (N3)? mem[550] : 
                         (N0)? mem[1126] : 1'b0;
  assign r_data_o[549] = (N3)? mem[549] : 
                         (N0)? mem[1125] : 1'b0;
  assign r_data_o[548] = (N3)? mem[548] : 
                         (N0)? mem[1124] : 1'b0;
  assign r_data_o[547] = (N3)? mem[547] : 
                         (N0)? mem[1123] : 1'b0;
  assign r_data_o[546] = (N3)? mem[546] : 
                         (N0)? mem[1122] : 1'b0;
  assign r_data_o[545] = (N3)? mem[545] : 
                         (N0)? mem[1121] : 1'b0;
  assign r_data_o[544] = (N3)? mem[544] : 
                         (N0)? mem[1120] : 1'b0;
  assign r_data_o[543] = (N3)? mem[543] : 
                         (N0)? mem[1119] : 1'b0;
  assign r_data_o[542] = (N3)? mem[542] : 
                         (N0)? mem[1118] : 1'b0;
  assign r_data_o[541] = (N3)? mem[541] : 
                         (N0)? mem[1117] : 1'b0;
  assign r_data_o[540] = (N3)? mem[540] : 
                         (N0)? mem[1116] : 1'b0;
  assign r_data_o[539] = (N3)? mem[539] : 
                         (N0)? mem[1115] : 1'b0;
  assign r_data_o[538] = (N3)? mem[538] : 
                         (N0)? mem[1114] : 1'b0;
  assign r_data_o[537] = (N3)? mem[537] : 
                         (N0)? mem[1113] : 1'b0;
  assign r_data_o[536] = (N3)? mem[536] : 
                         (N0)? mem[1112] : 1'b0;
  assign r_data_o[535] = (N3)? mem[535] : 
                         (N0)? mem[1111] : 1'b0;
  assign r_data_o[534] = (N3)? mem[534] : 
                         (N0)? mem[1110] : 1'b0;
  assign r_data_o[533] = (N3)? mem[533] : 
                         (N0)? mem[1109] : 1'b0;
  assign r_data_o[532] = (N3)? mem[532] : 
                         (N0)? mem[1108] : 1'b0;
  assign r_data_o[531] = (N3)? mem[531] : 
                         (N0)? mem[1107] : 1'b0;
  assign r_data_o[530] = (N3)? mem[530] : 
                         (N0)? mem[1106] : 1'b0;
  assign r_data_o[529] = (N3)? mem[529] : 
                         (N0)? mem[1105] : 1'b0;
  assign r_data_o[528] = (N3)? mem[528] : 
                         (N0)? mem[1104] : 1'b0;
  assign r_data_o[527] = (N3)? mem[527] : 
                         (N0)? mem[1103] : 1'b0;
  assign r_data_o[526] = (N3)? mem[526] : 
                         (N0)? mem[1102] : 1'b0;
  assign r_data_o[525] = (N3)? mem[525] : 
                         (N0)? mem[1101] : 1'b0;
  assign r_data_o[524] = (N3)? mem[524] : 
                         (N0)? mem[1100] : 1'b0;
  assign r_data_o[523] = (N3)? mem[523] : 
                         (N0)? mem[1099] : 1'b0;
  assign r_data_o[522] = (N3)? mem[522] : 
                         (N0)? mem[1098] : 1'b0;
  assign r_data_o[521] = (N3)? mem[521] : 
                         (N0)? mem[1097] : 1'b0;
  assign r_data_o[520] = (N3)? mem[520] : 
                         (N0)? mem[1096] : 1'b0;
  assign r_data_o[519] = (N3)? mem[519] : 
                         (N0)? mem[1095] : 1'b0;
  assign r_data_o[518] = (N3)? mem[518] : 
                         (N0)? mem[1094] : 1'b0;
  assign r_data_o[517] = (N3)? mem[517] : 
                         (N0)? mem[1093] : 1'b0;
  assign r_data_o[516] = (N3)? mem[516] : 
                         (N0)? mem[1092] : 1'b0;
  assign r_data_o[515] = (N3)? mem[515] : 
                         (N0)? mem[1091] : 1'b0;
  assign r_data_o[514] = (N3)? mem[514] : 
                         (N0)? mem[1090] : 1'b0;
  assign r_data_o[513] = (N3)? mem[513] : 
                         (N0)? mem[1089] : 1'b0;
  assign r_data_o[512] = (N3)? mem[512] : 
                         (N0)? mem[1088] : 1'b0;
  assign r_data_o[511] = (N3)? mem[511] : 
                         (N0)? mem[1087] : 1'b0;
  assign r_data_o[510] = (N3)? mem[510] : 
                         (N0)? mem[1086] : 1'b0;
  assign r_data_o[509] = (N3)? mem[509] : 
                         (N0)? mem[1085] : 1'b0;
  assign r_data_o[508] = (N3)? mem[508] : 
                         (N0)? mem[1084] : 1'b0;
  assign r_data_o[507] = (N3)? mem[507] : 
                         (N0)? mem[1083] : 1'b0;
  assign r_data_o[506] = (N3)? mem[506] : 
                         (N0)? mem[1082] : 1'b0;
  assign r_data_o[505] = (N3)? mem[505] : 
                         (N0)? mem[1081] : 1'b0;
  assign r_data_o[504] = (N3)? mem[504] : 
                         (N0)? mem[1080] : 1'b0;
  assign r_data_o[503] = (N3)? mem[503] : 
                         (N0)? mem[1079] : 1'b0;
  assign r_data_o[502] = (N3)? mem[502] : 
                         (N0)? mem[1078] : 1'b0;
  assign r_data_o[501] = (N3)? mem[501] : 
                         (N0)? mem[1077] : 1'b0;
  assign r_data_o[500] = (N3)? mem[500] : 
                         (N0)? mem[1076] : 1'b0;
  assign r_data_o[499] = (N3)? mem[499] : 
                         (N0)? mem[1075] : 1'b0;
  assign r_data_o[498] = (N3)? mem[498] : 
                         (N0)? mem[1074] : 1'b0;
  assign r_data_o[497] = (N3)? mem[497] : 
                         (N0)? mem[1073] : 1'b0;
  assign r_data_o[496] = (N3)? mem[496] : 
                         (N0)? mem[1072] : 1'b0;
  assign r_data_o[495] = (N3)? mem[495] : 
                         (N0)? mem[1071] : 1'b0;
  assign r_data_o[494] = (N3)? mem[494] : 
                         (N0)? mem[1070] : 1'b0;
  assign r_data_o[493] = (N3)? mem[493] : 
                         (N0)? mem[1069] : 1'b0;
  assign r_data_o[492] = (N3)? mem[492] : 
                         (N0)? mem[1068] : 1'b0;
  assign r_data_o[491] = (N3)? mem[491] : 
                         (N0)? mem[1067] : 1'b0;
  assign r_data_o[490] = (N3)? mem[490] : 
                         (N0)? mem[1066] : 1'b0;
  assign r_data_o[489] = (N3)? mem[489] : 
                         (N0)? mem[1065] : 1'b0;
  assign r_data_o[488] = (N3)? mem[488] : 
                         (N0)? mem[1064] : 1'b0;
  assign r_data_o[487] = (N3)? mem[487] : 
                         (N0)? mem[1063] : 1'b0;
  assign r_data_o[486] = (N3)? mem[486] : 
                         (N0)? mem[1062] : 1'b0;
  assign r_data_o[485] = (N3)? mem[485] : 
                         (N0)? mem[1061] : 1'b0;
  assign r_data_o[484] = (N3)? mem[484] : 
                         (N0)? mem[1060] : 1'b0;
  assign r_data_o[483] = (N3)? mem[483] : 
                         (N0)? mem[1059] : 1'b0;
  assign r_data_o[482] = (N3)? mem[482] : 
                         (N0)? mem[1058] : 1'b0;
  assign r_data_o[481] = (N3)? mem[481] : 
                         (N0)? mem[1057] : 1'b0;
  assign r_data_o[480] = (N3)? mem[480] : 
                         (N0)? mem[1056] : 1'b0;
  assign r_data_o[479] = (N3)? mem[479] : 
                         (N0)? mem[1055] : 1'b0;
  assign r_data_o[478] = (N3)? mem[478] : 
                         (N0)? mem[1054] : 1'b0;
  assign r_data_o[477] = (N3)? mem[477] : 
                         (N0)? mem[1053] : 1'b0;
  assign r_data_o[476] = (N3)? mem[476] : 
                         (N0)? mem[1052] : 1'b0;
  assign r_data_o[475] = (N3)? mem[475] : 
                         (N0)? mem[1051] : 1'b0;
  assign r_data_o[474] = (N3)? mem[474] : 
                         (N0)? mem[1050] : 1'b0;
  assign r_data_o[473] = (N3)? mem[473] : 
                         (N0)? mem[1049] : 1'b0;
  assign r_data_o[472] = (N3)? mem[472] : 
                         (N0)? mem[1048] : 1'b0;
  assign r_data_o[471] = (N3)? mem[471] : 
                         (N0)? mem[1047] : 1'b0;
  assign r_data_o[470] = (N3)? mem[470] : 
                         (N0)? mem[1046] : 1'b0;
  assign r_data_o[469] = (N3)? mem[469] : 
                         (N0)? mem[1045] : 1'b0;
  assign r_data_o[468] = (N3)? mem[468] : 
                         (N0)? mem[1044] : 1'b0;
  assign r_data_o[467] = (N3)? mem[467] : 
                         (N0)? mem[1043] : 1'b0;
  assign r_data_o[466] = (N3)? mem[466] : 
                         (N0)? mem[1042] : 1'b0;
  assign r_data_o[465] = (N3)? mem[465] : 
                         (N0)? mem[1041] : 1'b0;
  assign r_data_o[464] = (N3)? mem[464] : 
                         (N0)? mem[1040] : 1'b0;
  assign r_data_o[463] = (N3)? mem[463] : 
                         (N0)? mem[1039] : 1'b0;
  assign r_data_o[462] = (N3)? mem[462] : 
                         (N0)? mem[1038] : 1'b0;
  assign r_data_o[461] = (N3)? mem[461] : 
                         (N0)? mem[1037] : 1'b0;
  assign r_data_o[460] = (N3)? mem[460] : 
                         (N0)? mem[1036] : 1'b0;
  assign r_data_o[459] = (N3)? mem[459] : 
                         (N0)? mem[1035] : 1'b0;
  assign r_data_o[458] = (N3)? mem[458] : 
                         (N0)? mem[1034] : 1'b0;
  assign r_data_o[457] = (N3)? mem[457] : 
                         (N0)? mem[1033] : 1'b0;
  assign r_data_o[456] = (N3)? mem[456] : 
                         (N0)? mem[1032] : 1'b0;
  assign r_data_o[455] = (N3)? mem[455] : 
                         (N0)? mem[1031] : 1'b0;
  assign r_data_o[454] = (N3)? mem[454] : 
                         (N0)? mem[1030] : 1'b0;
  assign r_data_o[453] = (N3)? mem[453] : 
                         (N0)? mem[1029] : 1'b0;
  assign r_data_o[452] = (N3)? mem[452] : 
                         (N0)? mem[1028] : 1'b0;
  assign r_data_o[451] = (N3)? mem[451] : 
                         (N0)? mem[1027] : 1'b0;
  assign r_data_o[450] = (N3)? mem[450] : 
                         (N0)? mem[1026] : 1'b0;
  assign r_data_o[449] = (N3)? mem[449] : 
                         (N0)? mem[1025] : 1'b0;
  assign r_data_o[448] = (N3)? mem[448] : 
                         (N0)? mem[1024] : 1'b0;
  assign r_data_o[447] = (N3)? mem[447] : 
                         (N0)? mem[1023] : 1'b0;
  assign r_data_o[446] = (N3)? mem[446] : 
                         (N0)? mem[1022] : 1'b0;
  assign r_data_o[445] = (N3)? mem[445] : 
                         (N0)? mem[1021] : 1'b0;
  assign r_data_o[444] = (N3)? mem[444] : 
                         (N0)? mem[1020] : 1'b0;
  assign r_data_o[443] = (N3)? mem[443] : 
                         (N0)? mem[1019] : 1'b0;
  assign r_data_o[442] = (N3)? mem[442] : 
                         (N0)? mem[1018] : 1'b0;
  assign r_data_o[441] = (N3)? mem[441] : 
                         (N0)? mem[1017] : 1'b0;
  assign r_data_o[440] = (N3)? mem[440] : 
                         (N0)? mem[1016] : 1'b0;
  assign r_data_o[439] = (N3)? mem[439] : 
                         (N0)? mem[1015] : 1'b0;
  assign r_data_o[438] = (N3)? mem[438] : 
                         (N0)? mem[1014] : 1'b0;
  assign r_data_o[437] = (N3)? mem[437] : 
                         (N0)? mem[1013] : 1'b0;
  assign r_data_o[436] = (N3)? mem[436] : 
                         (N0)? mem[1012] : 1'b0;
  assign r_data_o[435] = (N3)? mem[435] : 
                         (N0)? mem[1011] : 1'b0;
  assign r_data_o[434] = (N3)? mem[434] : 
                         (N0)? mem[1010] : 1'b0;
  assign r_data_o[433] = (N3)? mem[433] : 
                         (N0)? mem[1009] : 1'b0;
  assign r_data_o[432] = (N3)? mem[432] : 
                         (N0)? mem[1008] : 1'b0;
  assign r_data_o[431] = (N3)? mem[431] : 
                         (N0)? mem[1007] : 1'b0;
  assign r_data_o[430] = (N3)? mem[430] : 
                         (N0)? mem[1006] : 1'b0;
  assign r_data_o[429] = (N3)? mem[429] : 
                         (N0)? mem[1005] : 1'b0;
  assign r_data_o[428] = (N3)? mem[428] : 
                         (N0)? mem[1004] : 1'b0;
  assign r_data_o[427] = (N3)? mem[427] : 
                         (N0)? mem[1003] : 1'b0;
  assign r_data_o[426] = (N3)? mem[426] : 
                         (N0)? mem[1002] : 1'b0;
  assign r_data_o[425] = (N3)? mem[425] : 
                         (N0)? mem[1001] : 1'b0;
  assign r_data_o[424] = (N3)? mem[424] : 
                         (N0)? mem[1000] : 1'b0;
  assign r_data_o[423] = (N3)? mem[423] : 
                         (N0)? mem[999] : 1'b0;
  assign r_data_o[422] = (N3)? mem[422] : 
                         (N0)? mem[998] : 1'b0;
  assign r_data_o[421] = (N3)? mem[421] : 
                         (N0)? mem[997] : 1'b0;
  assign r_data_o[420] = (N3)? mem[420] : 
                         (N0)? mem[996] : 1'b0;
  assign r_data_o[419] = (N3)? mem[419] : 
                         (N0)? mem[995] : 1'b0;
  assign r_data_o[418] = (N3)? mem[418] : 
                         (N0)? mem[994] : 1'b0;
  assign r_data_o[417] = (N3)? mem[417] : 
                         (N0)? mem[993] : 1'b0;
  assign r_data_o[416] = (N3)? mem[416] : 
                         (N0)? mem[992] : 1'b0;
  assign r_data_o[415] = (N3)? mem[415] : 
                         (N0)? mem[991] : 1'b0;
  assign r_data_o[414] = (N3)? mem[414] : 
                         (N0)? mem[990] : 1'b0;
  assign r_data_o[413] = (N3)? mem[413] : 
                         (N0)? mem[989] : 1'b0;
  assign r_data_o[412] = (N3)? mem[412] : 
                         (N0)? mem[988] : 1'b0;
  assign r_data_o[411] = (N3)? mem[411] : 
                         (N0)? mem[987] : 1'b0;
  assign r_data_o[410] = (N3)? mem[410] : 
                         (N0)? mem[986] : 1'b0;
  assign r_data_o[409] = (N3)? mem[409] : 
                         (N0)? mem[985] : 1'b0;
  assign r_data_o[408] = (N3)? mem[408] : 
                         (N0)? mem[984] : 1'b0;
  assign r_data_o[407] = (N3)? mem[407] : 
                         (N0)? mem[983] : 1'b0;
  assign r_data_o[406] = (N3)? mem[406] : 
                         (N0)? mem[982] : 1'b0;
  assign r_data_o[405] = (N3)? mem[405] : 
                         (N0)? mem[981] : 1'b0;
  assign r_data_o[404] = (N3)? mem[404] : 
                         (N0)? mem[980] : 1'b0;
  assign r_data_o[403] = (N3)? mem[403] : 
                         (N0)? mem[979] : 1'b0;
  assign r_data_o[402] = (N3)? mem[402] : 
                         (N0)? mem[978] : 1'b0;
  assign r_data_o[401] = (N3)? mem[401] : 
                         (N0)? mem[977] : 1'b0;
  assign r_data_o[400] = (N3)? mem[400] : 
                         (N0)? mem[976] : 1'b0;
  assign r_data_o[399] = (N3)? mem[399] : 
                         (N0)? mem[975] : 1'b0;
  assign r_data_o[398] = (N3)? mem[398] : 
                         (N0)? mem[974] : 1'b0;
  assign r_data_o[397] = (N3)? mem[397] : 
                         (N0)? mem[973] : 1'b0;
  assign r_data_o[396] = (N3)? mem[396] : 
                         (N0)? mem[972] : 1'b0;
  assign r_data_o[395] = (N3)? mem[395] : 
                         (N0)? mem[971] : 1'b0;
  assign r_data_o[394] = (N3)? mem[394] : 
                         (N0)? mem[970] : 1'b0;
  assign r_data_o[393] = (N3)? mem[393] : 
                         (N0)? mem[969] : 1'b0;
  assign r_data_o[392] = (N3)? mem[392] : 
                         (N0)? mem[968] : 1'b0;
  assign r_data_o[391] = (N3)? mem[391] : 
                         (N0)? mem[967] : 1'b0;
  assign r_data_o[390] = (N3)? mem[390] : 
                         (N0)? mem[966] : 1'b0;
  assign r_data_o[389] = (N3)? mem[389] : 
                         (N0)? mem[965] : 1'b0;
  assign r_data_o[388] = (N3)? mem[388] : 
                         (N0)? mem[964] : 1'b0;
  assign r_data_o[387] = (N3)? mem[387] : 
                         (N0)? mem[963] : 1'b0;
  assign r_data_o[386] = (N3)? mem[386] : 
                         (N0)? mem[962] : 1'b0;
  assign r_data_o[385] = (N3)? mem[385] : 
                         (N0)? mem[961] : 1'b0;
  assign r_data_o[384] = (N3)? mem[384] : 
                         (N0)? mem[960] : 1'b0;
  assign r_data_o[383] = (N3)? mem[383] : 
                         (N0)? mem[959] : 1'b0;
  assign r_data_o[382] = (N3)? mem[382] : 
                         (N0)? mem[958] : 1'b0;
  assign r_data_o[381] = (N3)? mem[381] : 
                         (N0)? mem[957] : 1'b0;
  assign r_data_o[380] = (N3)? mem[380] : 
                         (N0)? mem[956] : 1'b0;
  assign r_data_o[379] = (N3)? mem[379] : 
                         (N0)? mem[955] : 1'b0;
  assign r_data_o[378] = (N3)? mem[378] : 
                         (N0)? mem[954] : 1'b0;
  assign r_data_o[377] = (N3)? mem[377] : 
                         (N0)? mem[953] : 1'b0;
  assign r_data_o[376] = (N3)? mem[376] : 
                         (N0)? mem[952] : 1'b0;
  assign r_data_o[375] = (N3)? mem[375] : 
                         (N0)? mem[951] : 1'b0;
  assign r_data_o[374] = (N3)? mem[374] : 
                         (N0)? mem[950] : 1'b0;
  assign r_data_o[373] = (N3)? mem[373] : 
                         (N0)? mem[949] : 1'b0;
  assign r_data_o[372] = (N3)? mem[372] : 
                         (N0)? mem[948] : 1'b0;
  assign r_data_o[371] = (N3)? mem[371] : 
                         (N0)? mem[947] : 1'b0;
  assign r_data_o[370] = (N3)? mem[370] : 
                         (N0)? mem[946] : 1'b0;
  assign r_data_o[369] = (N3)? mem[369] : 
                         (N0)? mem[945] : 1'b0;
  assign r_data_o[368] = (N3)? mem[368] : 
                         (N0)? mem[944] : 1'b0;
  assign r_data_o[367] = (N3)? mem[367] : 
                         (N0)? mem[943] : 1'b0;
  assign r_data_o[366] = (N3)? mem[366] : 
                         (N0)? mem[942] : 1'b0;
  assign r_data_o[365] = (N3)? mem[365] : 
                         (N0)? mem[941] : 1'b0;
  assign r_data_o[364] = (N3)? mem[364] : 
                         (N0)? mem[940] : 1'b0;
  assign r_data_o[363] = (N3)? mem[363] : 
                         (N0)? mem[939] : 1'b0;
  assign r_data_o[362] = (N3)? mem[362] : 
                         (N0)? mem[938] : 1'b0;
  assign r_data_o[361] = (N3)? mem[361] : 
                         (N0)? mem[937] : 1'b0;
  assign r_data_o[360] = (N3)? mem[360] : 
                         (N0)? mem[936] : 1'b0;
  assign r_data_o[359] = (N3)? mem[359] : 
                         (N0)? mem[935] : 1'b0;
  assign r_data_o[358] = (N3)? mem[358] : 
                         (N0)? mem[934] : 1'b0;
  assign r_data_o[357] = (N3)? mem[357] : 
                         (N0)? mem[933] : 1'b0;
  assign r_data_o[356] = (N3)? mem[356] : 
                         (N0)? mem[932] : 1'b0;
  assign r_data_o[355] = (N3)? mem[355] : 
                         (N0)? mem[931] : 1'b0;
  assign r_data_o[354] = (N3)? mem[354] : 
                         (N0)? mem[930] : 1'b0;
  assign r_data_o[353] = (N3)? mem[353] : 
                         (N0)? mem[929] : 1'b0;
  assign r_data_o[352] = (N3)? mem[352] : 
                         (N0)? mem[928] : 1'b0;
  assign r_data_o[351] = (N3)? mem[351] : 
                         (N0)? mem[927] : 1'b0;
  assign r_data_o[350] = (N3)? mem[350] : 
                         (N0)? mem[926] : 1'b0;
  assign r_data_o[349] = (N3)? mem[349] : 
                         (N0)? mem[925] : 1'b0;
  assign r_data_o[348] = (N3)? mem[348] : 
                         (N0)? mem[924] : 1'b0;
  assign r_data_o[347] = (N3)? mem[347] : 
                         (N0)? mem[923] : 1'b0;
  assign r_data_o[346] = (N3)? mem[346] : 
                         (N0)? mem[922] : 1'b0;
  assign r_data_o[345] = (N3)? mem[345] : 
                         (N0)? mem[921] : 1'b0;
  assign r_data_o[344] = (N3)? mem[344] : 
                         (N0)? mem[920] : 1'b0;
  assign r_data_o[343] = (N3)? mem[343] : 
                         (N0)? mem[919] : 1'b0;
  assign r_data_o[342] = (N3)? mem[342] : 
                         (N0)? mem[918] : 1'b0;
  assign r_data_o[341] = (N3)? mem[341] : 
                         (N0)? mem[917] : 1'b0;
  assign r_data_o[340] = (N3)? mem[340] : 
                         (N0)? mem[916] : 1'b0;
  assign r_data_o[339] = (N3)? mem[339] : 
                         (N0)? mem[915] : 1'b0;
  assign r_data_o[338] = (N3)? mem[338] : 
                         (N0)? mem[914] : 1'b0;
  assign r_data_o[337] = (N3)? mem[337] : 
                         (N0)? mem[913] : 1'b0;
  assign r_data_o[336] = (N3)? mem[336] : 
                         (N0)? mem[912] : 1'b0;
  assign r_data_o[335] = (N3)? mem[335] : 
                         (N0)? mem[911] : 1'b0;
  assign r_data_o[334] = (N3)? mem[334] : 
                         (N0)? mem[910] : 1'b0;
  assign r_data_o[333] = (N3)? mem[333] : 
                         (N0)? mem[909] : 1'b0;
  assign r_data_o[332] = (N3)? mem[332] : 
                         (N0)? mem[908] : 1'b0;
  assign r_data_o[331] = (N3)? mem[331] : 
                         (N0)? mem[907] : 1'b0;
  assign r_data_o[330] = (N3)? mem[330] : 
                         (N0)? mem[906] : 1'b0;
  assign r_data_o[329] = (N3)? mem[329] : 
                         (N0)? mem[905] : 1'b0;
  assign r_data_o[328] = (N3)? mem[328] : 
                         (N0)? mem[904] : 1'b0;
  assign r_data_o[327] = (N3)? mem[327] : 
                         (N0)? mem[903] : 1'b0;
  assign r_data_o[326] = (N3)? mem[326] : 
                         (N0)? mem[902] : 1'b0;
  assign r_data_o[325] = (N3)? mem[325] : 
                         (N0)? mem[901] : 1'b0;
  assign r_data_o[324] = (N3)? mem[324] : 
                         (N0)? mem[900] : 1'b0;
  assign r_data_o[323] = (N3)? mem[323] : 
                         (N0)? mem[899] : 1'b0;
  assign r_data_o[322] = (N3)? mem[322] : 
                         (N0)? mem[898] : 1'b0;
  assign r_data_o[321] = (N3)? mem[321] : 
                         (N0)? mem[897] : 1'b0;
  assign r_data_o[320] = (N3)? mem[320] : 
                         (N0)? mem[896] : 1'b0;
  assign r_data_o[319] = (N3)? mem[319] : 
                         (N0)? mem[895] : 1'b0;
  assign r_data_o[318] = (N3)? mem[318] : 
                         (N0)? mem[894] : 1'b0;
  assign r_data_o[317] = (N3)? mem[317] : 
                         (N0)? mem[893] : 1'b0;
  assign r_data_o[316] = (N3)? mem[316] : 
                         (N0)? mem[892] : 1'b0;
  assign r_data_o[315] = (N3)? mem[315] : 
                         (N0)? mem[891] : 1'b0;
  assign r_data_o[314] = (N3)? mem[314] : 
                         (N0)? mem[890] : 1'b0;
  assign r_data_o[313] = (N3)? mem[313] : 
                         (N0)? mem[889] : 1'b0;
  assign r_data_o[312] = (N3)? mem[312] : 
                         (N0)? mem[888] : 1'b0;
  assign r_data_o[311] = (N3)? mem[311] : 
                         (N0)? mem[887] : 1'b0;
  assign r_data_o[310] = (N3)? mem[310] : 
                         (N0)? mem[886] : 1'b0;
  assign r_data_o[309] = (N3)? mem[309] : 
                         (N0)? mem[885] : 1'b0;
  assign r_data_o[308] = (N3)? mem[308] : 
                         (N0)? mem[884] : 1'b0;
  assign r_data_o[307] = (N3)? mem[307] : 
                         (N0)? mem[883] : 1'b0;
  assign r_data_o[306] = (N3)? mem[306] : 
                         (N0)? mem[882] : 1'b0;
  assign r_data_o[305] = (N3)? mem[305] : 
                         (N0)? mem[881] : 1'b0;
  assign r_data_o[304] = (N3)? mem[304] : 
                         (N0)? mem[880] : 1'b0;
  assign r_data_o[303] = (N3)? mem[303] : 
                         (N0)? mem[879] : 1'b0;
  assign r_data_o[302] = (N3)? mem[302] : 
                         (N0)? mem[878] : 1'b0;
  assign r_data_o[301] = (N3)? mem[301] : 
                         (N0)? mem[877] : 1'b0;
  assign r_data_o[300] = (N3)? mem[300] : 
                         (N0)? mem[876] : 1'b0;
  assign r_data_o[299] = (N3)? mem[299] : 
                         (N0)? mem[875] : 1'b0;
  assign r_data_o[298] = (N3)? mem[298] : 
                         (N0)? mem[874] : 1'b0;
  assign r_data_o[297] = (N3)? mem[297] : 
                         (N0)? mem[873] : 1'b0;
  assign r_data_o[296] = (N3)? mem[296] : 
                         (N0)? mem[872] : 1'b0;
  assign r_data_o[295] = (N3)? mem[295] : 
                         (N0)? mem[871] : 1'b0;
  assign r_data_o[294] = (N3)? mem[294] : 
                         (N0)? mem[870] : 1'b0;
  assign r_data_o[293] = (N3)? mem[293] : 
                         (N0)? mem[869] : 1'b0;
  assign r_data_o[292] = (N3)? mem[292] : 
                         (N0)? mem[868] : 1'b0;
  assign r_data_o[291] = (N3)? mem[291] : 
                         (N0)? mem[867] : 1'b0;
  assign r_data_o[290] = (N3)? mem[290] : 
                         (N0)? mem[866] : 1'b0;
  assign r_data_o[289] = (N3)? mem[289] : 
                         (N0)? mem[865] : 1'b0;
  assign r_data_o[288] = (N3)? mem[288] : 
                         (N0)? mem[864] : 1'b0;
  assign r_data_o[287] = (N3)? mem[287] : 
                         (N0)? mem[863] : 1'b0;
  assign r_data_o[286] = (N3)? mem[286] : 
                         (N0)? mem[862] : 1'b0;
  assign r_data_o[285] = (N3)? mem[285] : 
                         (N0)? mem[861] : 1'b0;
  assign r_data_o[284] = (N3)? mem[284] : 
                         (N0)? mem[860] : 1'b0;
  assign r_data_o[283] = (N3)? mem[283] : 
                         (N0)? mem[859] : 1'b0;
  assign r_data_o[282] = (N3)? mem[282] : 
                         (N0)? mem[858] : 1'b0;
  assign r_data_o[281] = (N3)? mem[281] : 
                         (N0)? mem[857] : 1'b0;
  assign r_data_o[280] = (N3)? mem[280] : 
                         (N0)? mem[856] : 1'b0;
  assign r_data_o[279] = (N3)? mem[279] : 
                         (N0)? mem[855] : 1'b0;
  assign r_data_o[278] = (N3)? mem[278] : 
                         (N0)? mem[854] : 1'b0;
  assign r_data_o[277] = (N3)? mem[277] : 
                         (N0)? mem[853] : 1'b0;
  assign r_data_o[276] = (N3)? mem[276] : 
                         (N0)? mem[852] : 1'b0;
  assign r_data_o[275] = (N3)? mem[275] : 
                         (N0)? mem[851] : 1'b0;
  assign r_data_o[274] = (N3)? mem[274] : 
                         (N0)? mem[850] : 1'b0;
  assign r_data_o[273] = (N3)? mem[273] : 
                         (N0)? mem[849] : 1'b0;
  assign r_data_o[272] = (N3)? mem[272] : 
                         (N0)? mem[848] : 1'b0;
  assign r_data_o[271] = (N3)? mem[271] : 
                         (N0)? mem[847] : 1'b0;
  assign r_data_o[270] = (N3)? mem[270] : 
                         (N0)? mem[846] : 1'b0;
  assign r_data_o[269] = (N3)? mem[269] : 
                         (N0)? mem[845] : 1'b0;
  assign r_data_o[268] = (N3)? mem[268] : 
                         (N0)? mem[844] : 1'b0;
  assign r_data_o[267] = (N3)? mem[267] : 
                         (N0)? mem[843] : 1'b0;
  assign r_data_o[266] = (N3)? mem[266] : 
                         (N0)? mem[842] : 1'b0;
  assign r_data_o[265] = (N3)? mem[265] : 
                         (N0)? mem[841] : 1'b0;
  assign r_data_o[264] = (N3)? mem[264] : 
                         (N0)? mem[840] : 1'b0;
  assign r_data_o[263] = (N3)? mem[263] : 
                         (N0)? mem[839] : 1'b0;
  assign r_data_o[262] = (N3)? mem[262] : 
                         (N0)? mem[838] : 1'b0;
  assign r_data_o[261] = (N3)? mem[261] : 
                         (N0)? mem[837] : 1'b0;
  assign r_data_o[260] = (N3)? mem[260] : 
                         (N0)? mem[836] : 1'b0;
  assign r_data_o[259] = (N3)? mem[259] : 
                         (N0)? mem[835] : 1'b0;
  assign r_data_o[258] = (N3)? mem[258] : 
                         (N0)? mem[834] : 1'b0;
  assign r_data_o[257] = (N3)? mem[257] : 
                         (N0)? mem[833] : 1'b0;
  assign r_data_o[256] = (N3)? mem[256] : 
                         (N0)? mem[832] : 1'b0;
  assign r_data_o[255] = (N3)? mem[255] : 
                         (N0)? mem[831] : 1'b0;
  assign r_data_o[254] = (N3)? mem[254] : 
                         (N0)? mem[830] : 1'b0;
  assign r_data_o[253] = (N3)? mem[253] : 
                         (N0)? mem[829] : 1'b0;
  assign r_data_o[252] = (N3)? mem[252] : 
                         (N0)? mem[828] : 1'b0;
  assign r_data_o[251] = (N3)? mem[251] : 
                         (N0)? mem[827] : 1'b0;
  assign r_data_o[250] = (N3)? mem[250] : 
                         (N0)? mem[826] : 1'b0;
  assign r_data_o[249] = (N3)? mem[249] : 
                         (N0)? mem[825] : 1'b0;
  assign r_data_o[248] = (N3)? mem[248] : 
                         (N0)? mem[824] : 1'b0;
  assign r_data_o[247] = (N3)? mem[247] : 
                         (N0)? mem[823] : 1'b0;
  assign r_data_o[246] = (N3)? mem[246] : 
                         (N0)? mem[822] : 1'b0;
  assign r_data_o[245] = (N3)? mem[245] : 
                         (N0)? mem[821] : 1'b0;
  assign r_data_o[244] = (N3)? mem[244] : 
                         (N0)? mem[820] : 1'b0;
  assign r_data_o[243] = (N3)? mem[243] : 
                         (N0)? mem[819] : 1'b0;
  assign r_data_o[242] = (N3)? mem[242] : 
                         (N0)? mem[818] : 1'b0;
  assign r_data_o[241] = (N3)? mem[241] : 
                         (N0)? mem[817] : 1'b0;
  assign r_data_o[240] = (N3)? mem[240] : 
                         (N0)? mem[816] : 1'b0;
  assign r_data_o[239] = (N3)? mem[239] : 
                         (N0)? mem[815] : 1'b0;
  assign r_data_o[238] = (N3)? mem[238] : 
                         (N0)? mem[814] : 1'b0;
  assign r_data_o[237] = (N3)? mem[237] : 
                         (N0)? mem[813] : 1'b0;
  assign r_data_o[236] = (N3)? mem[236] : 
                         (N0)? mem[812] : 1'b0;
  assign r_data_o[235] = (N3)? mem[235] : 
                         (N0)? mem[811] : 1'b0;
  assign r_data_o[234] = (N3)? mem[234] : 
                         (N0)? mem[810] : 1'b0;
  assign r_data_o[233] = (N3)? mem[233] : 
                         (N0)? mem[809] : 1'b0;
  assign r_data_o[232] = (N3)? mem[232] : 
                         (N0)? mem[808] : 1'b0;
  assign r_data_o[231] = (N3)? mem[231] : 
                         (N0)? mem[807] : 1'b0;
  assign r_data_o[230] = (N3)? mem[230] : 
                         (N0)? mem[806] : 1'b0;
  assign r_data_o[229] = (N3)? mem[229] : 
                         (N0)? mem[805] : 1'b0;
  assign r_data_o[228] = (N3)? mem[228] : 
                         (N0)? mem[804] : 1'b0;
  assign r_data_o[227] = (N3)? mem[227] : 
                         (N0)? mem[803] : 1'b0;
  assign r_data_o[226] = (N3)? mem[226] : 
                         (N0)? mem[802] : 1'b0;
  assign r_data_o[225] = (N3)? mem[225] : 
                         (N0)? mem[801] : 1'b0;
  assign r_data_o[224] = (N3)? mem[224] : 
                         (N0)? mem[800] : 1'b0;
  assign r_data_o[223] = (N3)? mem[223] : 
                         (N0)? mem[799] : 1'b0;
  assign r_data_o[222] = (N3)? mem[222] : 
                         (N0)? mem[798] : 1'b0;
  assign r_data_o[221] = (N3)? mem[221] : 
                         (N0)? mem[797] : 1'b0;
  assign r_data_o[220] = (N3)? mem[220] : 
                         (N0)? mem[796] : 1'b0;
  assign r_data_o[219] = (N3)? mem[219] : 
                         (N0)? mem[795] : 1'b0;
  assign r_data_o[218] = (N3)? mem[218] : 
                         (N0)? mem[794] : 1'b0;
  assign r_data_o[217] = (N3)? mem[217] : 
                         (N0)? mem[793] : 1'b0;
  assign r_data_o[216] = (N3)? mem[216] : 
                         (N0)? mem[792] : 1'b0;
  assign r_data_o[215] = (N3)? mem[215] : 
                         (N0)? mem[791] : 1'b0;
  assign r_data_o[214] = (N3)? mem[214] : 
                         (N0)? mem[790] : 1'b0;
  assign r_data_o[213] = (N3)? mem[213] : 
                         (N0)? mem[789] : 1'b0;
  assign r_data_o[212] = (N3)? mem[212] : 
                         (N0)? mem[788] : 1'b0;
  assign r_data_o[211] = (N3)? mem[211] : 
                         (N0)? mem[787] : 1'b0;
  assign r_data_o[210] = (N3)? mem[210] : 
                         (N0)? mem[786] : 1'b0;
  assign r_data_o[209] = (N3)? mem[209] : 
                         (N0)? mem[785] : 1'b0;
  assign r_data_o[208] = (N3)? mem[208] : 
                         (N0)? mem[784] : 1'b0;
  assign r_data_o[207] = (N3)? mem[207] : 
                         (N0)? mem[783] : 1'b0;
  assign r_data_o[206] = (N3)? mem[206] : 
                         (N0)? mem[782] : 1'b0;
  assign r_data_o[205] = (N3)? mem[205] : 
                         (N0)? mem[781] : 1'b0;
  assign r_data_o[204] = (N3)? mem[204] : 
                         (N0)? mem[780] : 1'b0;
  assign r_data_o[203] = (N3)? mem[203] : 
                         (N0)? mem[779] : 1'b0;
  assign r_data_o[202] = (N3)? mem[202] : 
                         (N0)? mem[778] : 1'b0;
  assign r_data_o[201] = (N3)? mem[201] : 
                         (N0)? mem[777] : 1'b0;
  assign r_data_o[200] = (N3)? mem[200] : 
                         (N0)? mem[776] : 1'b0;
  assign r_data_o[199] = (N3)? mem[199] : 
                         (N0)? mem[775] : 1'b0;
  assign r_data_o[198] = (N3)? mem[198] : 
                         (N0)? mem[774] : 1'b0;
  assign r_data_o[197] = (N3)? mem[197] : 
                         (N0)? mem[773] : 1'b0;
  assign r_data_o[196] = (N3)? mem[196] : 
                         (N0)? mem[772] : 1'b0;
  assign r_data_o[195] = (N3)? mem[195] : 
                         (N0)? mem[771] : 1'b0;
  assign r_data_o[194] = (N3)? mem[194] : 
                         (N0)? mem[770] : 1'b0;
  assign r_data_o[193] = (N3)? mem[193] : 
                         (N0)? mem[769] : 1'b0;
  assign r_data_o[192] = (N3)? mem[192] : 
                         (N0)? mem[768] : 1'b0;
  assign r_data_o[191] = (N3)? mem[191] : 
                         (N0)? mem[767] : 1'b0;
  assign r_data_o[190] = (N3)? mem[190] : 
                         (N0)? mem[766] : 1'b0;
  assign r_data_o[189] = (N3)? mem[189] : 
                         (N0)? mem[765] : 1'b0;
  assign r_data_o[188] = (N3)? mem[188] : 
                         (N0)? mem[764] : 1'b0;
  assign r_data_o[187] = (N3)? mem[187] : 
                         (N0)? mem[763] : 1'b0;
  assign r_data_o[186] = (N3)? mem[186] : 
                         (N0)? mem[762] : 1'b0;
  assign r_data_o[185] = (N3)? mem[185] : 
                         (N0)? mem[761] : 1'b0;
  assign r_data_o[184] = (N3)? mem[184] : 
                         (N0)? mem[760] : 1'b0;
  assign r_data_o[183] = (N3)? mem[183] : 
                         (N0)? mem[759] : 1'b0;
  assign r_data_o[182] = (N3)? mem[182] : 
                         (N0)? mem[758] : 1'b0;
  assign r_data_o[181] = (N3)? mem[181] : 
                         (N0)? mem[757] : 1'b0;
  assign r_data_o[180] = (N3)? mem[180] : 
                         (N0)? mem[756] : 1'b0;
  assign r_data_o[179] = (N3)? mem[179] : 
                         (N0)? mem[755] : 1'b0;
  assign r_data_o[178] = (N3)? mem[178] : 
                         (N0)? mem[754] : 1'b0;
  assign r_data_o[177] = (N3)? mem[177] : 
                         (N0)? mem[753] : 1'b0;
  assign r_data_o[176] = (N3)? mem[176] : 
                         (N0)? mem[752] : 1'b0;
  assign r_data_o[175] = (N3)? mem[175] : 
                         (N0)? mem[751] : 1'b0;
  assign r_data_o[174] = (N3)? mem[174] : 
                         (N0)? mem[750] : 1'b0;
  assign r_data_o[173] = (N3)? mem[173] : 
                         (N0)? mem[749] : 1'b0;
  assign r_data_o[172] = (N3)? mem[172] : 
                         (N0)? mem[748] : 1'b0;
  assign r_data_o[171] = (N3)? mem[171] : 
                         (N0)? mem[747] : 1'b0;
  assign r_data_o[170] = (N3)? mem[170] : 
                         (N0)? mem[746] : 1'b0;
  assign r_data_o[169] = (N3)? mem[169] : 
                         (N0)? mem[745] : 1'b0;
  assign r_data_o[168] = (N3)? mem[168] : 
                         (N0)? mem[744] : 1'b0;
  assign r_data_o[167] = (N3)? mem[167] : 
                         (N0)? mem[743] : 1'b0;
  assign r_data_o[166] = (N3)? mem[166] : 
                         (N0)? mem[742] : 1'b0;
  assign r_data_o[165] = (N3)? mem[165] : 
                         (N0)? mem[741] : 1'b0;
  assign r_data_o[164] = (N3)? mem[164] : 
                         (N0)? mem[740] : 1'b0;
  assign r_data_o[163] = (N3)? mem[163] : 
                         (N0)? mem[739] : 1'b0;
  assign r_data_o[162] = (N3)? mem[162] : 
                         (N0)? mem[738] : 1'b0;
  assign r_data_o[161] = (N3)? mem[161] : 
                         (N0)? mem[737] : 1'b0;
  assign r_data_o[160] = (N3)? mem[160] : 
                         (N0)? mem[736] : 1'b0;
  assign r_data_o[159] = (N3)? mem[159] : 
                         (N0)? mem[735] : 1'b0;
  assign r_data_o[158] = (N3)? mem[158] : 
                         (N0)? mem[734] : 1'b0;
  assign r_data_o[157] = (N3)? mem[157] : 
                         (N0)? mem[733] : 1'b0;
  assign r_data_o[156] = (N3)? mem[156] : 
                         (N0)? mem[732] : 1'b0;
  assign r_data_o[155] = (N3)? mem[155] : 
                         (N0)? mem[731] : 1'b0;
  assign r_data_o[154] = (N3)? mem[154] : 
                         (N0)? mem[730] : 1'b0;
  assign r_data_o[153] = (N3)? mem[153] : 
                         (N0)? mem[729] : 1'b0;
  assign r_data_o[152] = (N3)? mem[152] : 
                         (N0)? mem[728] : 1'b0;
  assign r_data_o[151] = (N3)? mem[151] : 
                         (N0)? mem[727] : 1'b0;
  assign r_data_o[150] = (N3)? mem[150] : 
                         (N0)? mem[726] : 1'b0;
  assign r_data_o[149] = (N3)? mem[149] : 
                         (N0)? mem[725] : 1'b0;
  assign r_data_o[148] = (N3)? mem[148] : 
                         (N0)? mem[724] : 1'b0;
  assign r_data_o[147] = (N3)? mem[147] : 
                         (N0)? mem[723] : 1'b0;
  assign r_data_o[146] = (N3)? mem[146] : 
                         (N0)? mem[722] : 1'b0;
  assign r_data_o[145] = (N3)? mem[145] : 
                         (N0)? mem[721] : 1'b0;
  assign r_data_o[144] = (N3)? mem[144] : 
                         (N0)? mem[720] : 1'b0;
  assign r_data_o[143] = (N3)? mem[143] : 
                         (N0)? mem[719] : 1'b0;
  assign r_data_o[142] = (N3)? mem[142] : 
                         (N0)? mem[718] : 1'b0;
  assign r_data_o[141] = (N3)? mem[141] : 
                         (N0)? mem[717] : 1'b0;
  assign r_data_o[140] = (N3)? mem[140] : 
                         (N0)? mem[716] : 1'b0;
  assign r_data_o[139] = (N3)? mem[139] : 
                         (N0)? mem[715] : 1'b0;
  assign r_data_o[138] = (N3)? mem[138] : 
                         (N0)? mem[714] : 1'b0;
  assign r_data_o[137] = (N3)? mem[137] : 
                         (N0)? mem[713] : 1'b0;
  assign r_data_o[136] = (N3)? mem[136] : 
                         (N0)? mem[712] : 1'b0;
  assign r_data_o[135] = (N3)? mem[135] : 
                         (N0)? mem[711] : 1'b0;
  assign r_data_o[134] = (N3)? mem[134] : 
                         (N0)? mem[710] : 1'b0;
  assign r_data_o[133] = (N3)? mem[133] : 
                         (N0)? mem[709] : 1'b0;
  assign r_data_o[132] = (N3)? mem[132] : 
                         (N0)? mem[708] : 1'b0;
  assign r_data_o[131] = (N3)? mem[131] : 
                         (N0)? mem[707] : 1'b0;
  assign r_data_o[130] = (N3)? mem[130] : 
                         (N0)? mem[706] : 1'b0;
  assign r_data_o[129] = (N3)? mem[129] : 
                         (N0)? mem[705] : 1'b0;
  assign r_data_o[128] = (N3)? mem[128] : 
                         (N0)? mem[704] : 1'b0;
  assign r_data_o[127] = (N3)? mem[127] : 
                         (N0)? mem[703] : 1'b0;
  assign r_data_o[126] = (N3)? mem[126] : 
                         (N0)? mem[702] : 1'b0;
  assign r_data_o[125] = (N3)? mem[125] : 
                         (N0)? mem[701] : 1'b0;
  assign r_data_o[124] = (N3)? mem[124] : 
                         (N0)? mem[700] : 1'b0;
  assign r_data_o[123] = (N3)? mem[123] : 
                         (N0)? mem[699] : 1'b0;
  assign r_data_o[122] = (N3)? mem[122] : 
                         (N0)? mem[698] : 1'b0;
  assign r_data_o[121] = (N3)? mem[121] : 
                         (N0)? mem[697] : 1'b0;
  assign r_data_o[120] = (N3)? mem[120] : 
                         (N0)? mem[696] : 1'b0;
  assign r_data_o[119] = (N3)? mem[119] : 
                         (N0)? mem[695] : 1'b0;
  assign r_data_o[118] = (N3)? mem[118] : 
                         (N0)? mem[694] : 1'b0;
  assign r_data_o[117] = (N3)? mem[117] : 
                         (N0)? mem[693] : 1'b0;
  assign r_data_o[116] = (N3)? mem[116] : 
                         (N0)? mem[692] : 1'b0;
  assign r_data_o[115] = (N3)? mem[115] : 
                         (N0)? mem[691] : 1'b0;
  assign r_data_o[114] = (N3)? mem[114] : 
                         (N0)? mem[690] : 1'b0;
  assign r_data_o[113] = (N3)? mem[113] : 
                         (N0)? mem[689] : 1'b0;
  assign r_data_o[112] = (N3)? mem[112] : 
                         (N0)? mem[688] : 1'b0;
  assign r_data_o[111] = (N3)? mem[111] : 
                         (N0)? mem[687] : 1'b0;
  assign r_data_o[110] = (N3)? mem[110] : 
                         (N0)? mem[686] : 1'b0;
  assign r_data_o[109] = (N3)? mem[109] : 
                         (N0)? mem[685] : 1'b0;
  assign r_data_o[108] = (N3)? mem[108] : 
                         (N0)? mem[684] : 1'b0;
  assign r_data_o[107] = (N3)? mem[107] : 
                         (N0)? mem[683] : 1'b0;
  assign r_data_o[106] = (N3)? mem[106] : 
                         (N0)? mem[682] : 1'b0;
  assign r_data_o[105] = (N3)? mem[105] : 
                         (N0)? mem[681] : 1'b0;
  assign r_data_o[104] = (N3)? mem[104] : 
                         (N0)? mem[680] : 1'b0;
  assign r_data_o[103] = (N3)? mem[103] : 
                         (N0)? mem[679] : 1'b0;
  assign r_data_o[102] = (N3)? mem[102] : 
                         (N0)? mem[678] : 1'b0;
  assign r_data_o[101] = (N3)? mem[101] : 
                         (N0)? mem[677] : 1'b0;
  assign r_data_o[100] = (N3)? mem[100] : 
                         (N0)? mem[676] : 1'b0;
  assign r_data_o[99] = (N3)? mem[99] : 
                        (N0)? mem[675] : 1'b0;
  assign r_data_o[98] = (N3)? mem[98] : 
                        (N0)? mem[674] : 1'b0;
  assign r_data_o[97] = (N3)? mem[97] : 
                        (N0)? mem[673] : 1'b0;
  assign r_data_o[96] = (N3)? mem[96] : 
                        (N0)? mem[672] : 1'b0;
  assign r_data_o[95] = (N3)? mem[95] : 
                        (N0)? mem[671] : 1'b0;
  assign r_data_o[94] = (N3)? mem[94] : 
                        (N0)? mem[670] : 1'b0;
  assign r_data_o[93] = (N3)? mem[93] : 
                        (N0)? mem[669] : 1'b0;
  assign r_data_o[92] = (N3)? mem[92] : 
                        (N0)? mem[668] : 1'b0;
  assign r_data_o[91] = (N3)? mem[91] : 
                        (N0)? mem[667] : 1'b0;
  assign r_data_o[90] = (N3)? mem[90] : 
                        (N0)? mem[666] : 1'b0;
  assign r_data_o[89] = (N3)? mem[89] : 
                        (N0)? mem[665] : 1'b0;
  assign r_data_o[88] = (N3)? mem[88] : 
                        (N0)? mem[664] : 1'b0;
  assign r_data_o[87] = (N3)? mem[87] : 
                        (N0)? mem[663] : 1'b0;
  assign r_data_o[86] = (N3)? mem[86] : 
                        (N0)? mem[662] : 1'b0;
  assign r_data_o[85] = (N3)? mem[85] : 
                        (N0)? mem[661] : 1'b0;
  assign r_data_o[84] = (N3)? mem[84] : 
                        (N0)? mem[660] : 1'b0;
  assign r_data_o[83] = (N3)? mem[83] : 
                        (N0)? mem[659] : 1'b0;
  assign r_data_o[82] = (N3)? mem[82] : 
                        (N0)? mem[658] : 1'b0;
  assign r_data_o[81] = (N3)? mem[81] : 
                        (N0)? mem[657] : 1'b0;
  assign r_data_o[80] = (N3)? mem[80] : 
                        (N0)? mem[656] : 1'b0;
  assign r_data_o[79] = (N3)? mem[79] : 
                        (N0)? mem[655] : 1'b0;
  assign r_data_o[78] = (N3)? mem[78] : 
                        (N0)? mem[654] : 1'b0;
  assign r_data_o[77] = (N3)? mem[77] : 
                        (N0)? mem[653] : 1'b0;
  assign r_data_o[76] = (N3)? mem[76] : 
                        (N0)? mem[652] : 1'b0;
  assign r_data_o[75] = (N3)? mem[75] : 
                        (N0)? mem[651] : 1'b0;
  assign r_data_o[74] = (N3)? mem[74] : 
                        (N0)? mem[650] : 1'b0;
  assign r_data_o[73] = (N3)? mem[73] : 
                        (N0)? mem[649] : 1'b0;
  assign r_data_o[72] = (N3)? mem[72] : 
                        (N0)? mem[648] : 1'b0;
  assign r_data_o[71] = (N3)? mem[71] : 
                        (N0)? mem[647] : 1'b0;
  assign r_data_o[70] = (N3)? mem[70] : 
                        (N0)? mem[646] : 1'b0;
  assign r_data_o[69] = (N3)? mem[69] : 
                        (N0)? mem[645] : 1'b0;
  assign r_data_o[68] = (N3)? mem[68] : 
                        (N0)? mem[644] : 1'b0;
  assign r_data_o[67] = (N3)? mem[67] : 
                        (N0)? mem[643] : 1'b0;
  assign r_data_o[66] = (N3)? mem[66] : 
                        (N0)? mem[642] : 1'b0;
  assign r_data_o[65] = (N3)? mem[65] : 
                        (N0)? mem[641] : 1'b0;
  assign r_data_o[64] = (N3)? mem[64] : 
                        (N0)? mem[640] : 1'b0;
  assign r_data_o[63] = (N3)? mem[63] : 
                        (N0)? mem[639] : 1'b0;
  assign r_data_o[62] = (N3)? mem[62] : 
                        (N0)? mem[638] : 1'b0;
  assign r_data_o[61] = (N3)? mem[61] : 
                        (N0)? mem[637] : 1'b0;
  assign r_data_o[60] = (N3)? mem[60] : 
                        (N0)? mem[636] : 1'b0;
  assign r_data_o[59] = (N3)? mem[59] : 
                        (N0)? mem[635] : 1'b0;
  assign r_data_o[58] = (N3)? mem[58] : 
                        (N0)? mem[634] : 1'b0;
  assign r_data_o[57] = (N3)? mem[57] : 
                        (N0)? mem[633] : 1'b0;
  assign r_data_o[56] = (N3)? mem[56] : 
                        (N0)? mem[632] : 1'b0;
  assign r_data_o[55] = (N3)? mem[55] : 
                        (N0)? mem[631] : 1'b0;
  assign r_data_o[54] = (N3)? mem[54] : 
                        (N0)? mem[630] : 1'b0;
  assign r_data_o[53] = (N3)? mem[53] : 
                        (N0)? mem[629] : 1'b0;
  assign r_data_o[52] = (N3)? mem[52] : 
                        (N0)? mem[628] : 1'b0;
  assign r_data_o[51] = (N3)? mem[51] : 
                        (N0)? mem[627] : 1'b0;
  assign r_data_o[50] = (N3)? mem[50] : 
                        (N0)? mem[626] : 1'b0;
  assign r_data_o[49] = (N3)? mem[49] : 
                        (N0)? mem[625] : 1'b0;
  assign r_data_o[48] = (N3)? mem[48] : 
                        (N0)? mem[624] : 1'b0;
  assign r_data_o[47] = (N3)? mem[47] : 
                        (N0)? mem[623] : 1'b0;
  assign r_data_o[46] = (N3)? mem[46] : 
                        (N0)? mem[622] : 1'b0;
  assign r_data_o[45] = (N3)? mem[45] : 
                        (N0)? mem[621] : 1'b0;
  assign r_data_o[44] = (N3)? mem[44] : 
                        (N0)? mem[620] : 1'b0;
  assign r_data_o[43] = (N3)? mem[43] : 
                        (N0)? mem[619] : 1'b0;
  assign r_data_o[42] = (N3)? mem[42] : 
                        (N0)? mem[618] : 1'b0;
  assign r_data_o[41] = (N3)? mem[41] : 
                        (N0)? mem[617] : 1'b0;
  assign r_data_o[40] = (N3)? mem[40] : 
                        (N0)? mem[616] : 1'b0;
  assign r_data_o[39] = (N3)? mem[39] : 
                        (N0)? mem[615] : 1'b0;
  assign r_data_o[38] = (N3)? mem[38] : 
                        (N0)? mem[614] : 1'b0;
  assign r_data_o[37] = (N3)? mem[37] : 
                        (N0)? mem[613] : 1'b0;
  assign r_data_o[36] = (N3)? mem[36] : 
                        (N0)? mem[612] : 1'b0;
  assign r_data_o[35] = (N3)? mem[35] : 
                        (N0)? mem[611] : 1'b0;
  assign r_data_o[34] = (N3)? mem[34] : 
                        (N0)? mem[610] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] : 
                        (N0)? mem[609] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] : 
                        (N0)? mem[608] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[607] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[606] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[605] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[604] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[603] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[602] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[601] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[600] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[599] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[598] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[597] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[596] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[595] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[594] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[593] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[592] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[591] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[590] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[589] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[588] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[587] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[586] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[585] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[584] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[583] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[582] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[581] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[580] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[579] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[578] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[577] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[576] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7 } = (N1)? { w_addr_i[0:0], w_addr_i[0:0], w_addr_i[0:0], w_addr_i[0:0], w_addr_i[0:0], w_addr_i[0:0], N5, N5, N5, N5, N5, N5 } : 
                                                                       (N2)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N13) begin
      { mem[1151:1053], mem[576:576] } <= { w_data_i[575:477], w_data_i[0:0] };
    end 
    if(N14) begin
      { mem[1052:954], mem[577:577] } <= { w_data_i[476:378], w_data_i[1:1] };
    end 
    if(N15) begin
      { mem[953:855], mem[578:578] } <= { w_data_i[377:279], w_data_i[2:2] };
    end 
    if(N16) begin
      { mem[854:756], mem[579:579] } <= { w_data_i[278:180], w_data_i[3:3] };
    end 
    if(N17) begin
      { mem[755:657], mem[580:580] } <= { w_data_i[179:81], w_data_i[4:4] };
    end 
    if(N18) begin
      { mem[656:581] } <= { w_data_i[80:5] };
    end 
    if(N7) begin
      { mem[575:477], mem[0:0] } <= { w_data_i[575:477], w_data_i[0:0] };
    end 
    if(N8) begin
      { mem[476:378], mem[1:1] } <= { w_data_i[476:378], w_data_i[1:1] };
    end 
    if(N9) begin
      { mem[377:279], mem[2:2] } <= { w_data_i[377:279], w_data_i[2:2] };
    end 
    if(N10) begin
      { mem[278:180], mem[3:3] } <= { w_data_i[278:180], w_data_i[3:3] };
    end 
    if(N11) begin
      { mem[179:81], mem[4:4] } <= { w_data_i[179:81], w_data_i[4:4] };
    end 
    if(N12) begin
      { mem[80:5] } <= { w_data_i[80:5] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p576_els_p2_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [575:0] w_data_i;
  input [0:0] r_addr_i;
  output [575:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [575:0] r_data_o;

  bsg_mem_1r1w_synth_width_p576_els_p2_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i[0]),
    .w_data_i(w_data_i),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i[0]),
    .r_data_o(r_data_o)
  );


endmodule



module bsg_two_fifo_width_p576
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  yumi_i
);

  input [575:0] data_i;
  output [575:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [575:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p576_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i),
    .r_v_i(n_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o)
  );

  assign N9 = (N0)? 1'b1 : 
              (N1)? N5 : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign N10 = (N0)? 1'b0 : 
               (N1)? N4 : 1'b0;
  assign N11 = (N0)? 1'b1 : 
               (N1)? yumi_i : 1'b0;
  assign N12 = (N0)? 1'b0 : 
               (N1)? N6 : 1'b0;
  assign N13 = (N0)? 1'b1 : 
               (N1)? N7 : 1'b0;
  assign N14 = (N0)? 1'b0 : 
               (N1)? N8 : 1'b0;
  assign n_0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N15;
  assign N15 = ~full_r;
  assign N2 = ~reset_i;
  assign N3 = reset_i;
  assign N5 = enq_i;
  assign N4 = ~tail_r;
  assign N6 = ~head_r;
  assign N7 = N17 | N19;
  assign N17 = empty_r & N16;
  assign N16 = ~enq_i;
  assign N19 = N18 & N16;
  assign N18 = N15 & yumi_i;
  assign N8 = N23 | N24;
  assign N23 = N21 & N22;
  assign N21 = N20 & enq_i;
  assign N20 = ~empty_r;
  assign N22 = ~yumi_i;
  assign N24 = full_r & N22;

  always @(posedge clk_i) begin
    if(1'b1) begin
      full_r <= N14;
      empty_r <= N13;
    end 
    if(N9) begin
      tail_r <= N10;
    end 
    if(N11) begin
      head_r <= N12;
    end 
  end


endmodule



module bsg_counter_clear_up_max_val_p8_init_val_p0
(
  clk_i,
  reset_i,
  clear_i,
  up_i,
  count_o
);

  output [3:0] count_o;
  input clk_i;
  input reset_i;
  input clear_i;
  input up_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17;
  reg [3:0] count_o;
  assign { N9, N8, N7, N6 } = { N17, N16, N15, N14 } + up_i;
  assign { N13, N12, N11, N10 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                  (N1)? { N9, N8, N7, N6 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign { N17, N16, N15, N14 } = count_o * N4;
  assign N2 = ~reset_i;
  assign N3 = N2;
  assign N4 = ~clear_i;
  assign N5 = N3 & N4;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { count_o[3:0] } <= { N13, N12, N11, N10 };
    end 
  end


endmodule



module bsg_mux_width_p64_els_p9
(
  data_i,
  sel_i,
  data_o
);

  input [575:0] data_i;
  input [3:0] sel_i;
  output [63:0] data_o;
  wire [63:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29;
  assign N22 = N0 & N1 & (N2 & N3);
  assign N0 = ~sel_i[3];
  assign N1 = ~sel_i[2];
  assign N2 = ~sel_i[0];
  assign N3 = ~sel_i[1];
  assign N23 = N4 & sel_i[0] & N5;
  assign N4 = ~sel_i[2];
  assign N5 = ~sel_i[1];
  assign N24 = N6 & N7 & sel_i[1];
  assign N6 = ~sel_i[2];
  assign N7 = ~sel_i[0];
  assign N25 = N8 & sel_i[0] & sel_i[1];
  assign N8 = ~sel_i[2];
  assign N26 = sel_i[2] & N9 & N10;
  assign N9 = ~sel_i[0];
  assign N10 = ~sel_i[1];
  assign N27 = sel_i[2] & sel_i[0] & N11;
  assign N11 = ~sel_i[1];
  assign N28 = sel_i[2] & N12 & sel_i[1];
  assign N12 = ~sel_i[0];
  assign N29 = sel_i[2] & sel_i[0] & sel_i[1];
  assign data_o[63] = (N13)? data_i[63] : 
                      (N14)? data_i[127] : 
                      (N15)? data_i[191] : 
                      (N16)? data_i[255] : 
                      (N17)? data_i[319] : 
                      (N18)? data_i[383] : 
                      (N19)? data_i[447] : 
                      (N20)? data_i[511] : 
                      (N21)? data_i[575] : 1'b0;
  assign N13 = N22;
  assign N14 = N23;
  assign N15 = N24;
  assign N16 = N25;
  assign N17 = N26;
  assign N18 = N27;
  assign N19 = N28;
  assign N20 = N29;
  assign N21 = sel_i[3];
  assign data_o[62] = (N13)? data_i[62] : 
                      (N14)? data_i[126] : 
                      (N15)? data_i[190] : 
                      (N16)? data_i[254] : 
                      (N17)? data_i[318] : 
                      (N18)? data_i[382] : 
                      (N19)? data_i[446] : 
                      (N20)? data_i[510] : 
                      (N21)? data_i[574] : 1'b0;
  assign data_o[61] = (N13)? data_i[61] : 
                      (N14)? data_i[125] : 
                      (N15)? data_i[189] : 
                      (N16)? data_i[253] : 
                      (N17)? data_i[317] : 
                      (N18)? data_i[381] : 
                      (N19)? data_i[445] : 
                      (N20)? data_i[509] : 
                      (N21)? data_i[573] : 1'b0;
  assign data_o[60] = (N13)? data_i[60] : 
                      (N14)? data_i[124] : 
                      (N15)? data_i[188] : 
                      (N16)? data_i[252] : 
                      (N17)? data_i[316] : 
                      (N18)? data_i[380] : 
                      (N19)? data_i[444] : 
                      (N20)? data_i[508] : 
                      (N21)? data_i[572] : 1'b0;
  assign data_o[59] = (N13)? data_i[59] : 
                      (N14)? data_i[123] : 
                      (N15)? data_i[187] : 
                      (N16)? data_i[251] : 
                      (N17)? data_i[315] : 
                      (N18)? data_i[379] : 
                      (N19)? data_i[443] : 
                      (N20)? data_i[507] : 
                      (N21)? data_i[571] : 1'b0;
  assign data_o[58] = (N13)? data_i[58] : 
                      (N14)? data_i[122] : 
                      (N15)? data_i[186] : 
                      (N16)? data_i[250] : 
                      (N17)? data_i[314] : 
                      (N18)? data_i[378] : 
                      (N19)? data_i[442] : 
                      (N20)? data_i[506] : 
                      (N21)? data_i[570] : 1'b0;
  assign data_o[57] = (N13)? data_i[57] : 
                      (N14)? data_i[121] : 
                      (N15)? data_i[185] : 
                      (N16)? data_i[249] : 
                      (N17)? data_i[313] : 
                      (N18)? data_i[377] : 
                      (N19)? data_i[441] : 
                      (N20)? data_i[505] : 
                      (N21)? data_i[569] : 1'b0;
  assign data_o[56] = (N13)? data_i[56] : 
                      (N14)? data_i[120] : 
                      (N15)? data_i[184] : 
                      (N16)? data_i[248] : 
                      (N17)? data_i[312] : 
                      (N18)? data_i[376] : 
                      (N19)? data_i[440] : 
                      (N20)? data_i[504] : 
                      (N21)? data_i[568] : 1'b0;
  assign data_o[55] = (N13)? data_i[55] : 
                      (N14)? data_i[119] : 
                      (N15)? data_i[183] : 
                      (N16)? data_i[247] : 
                      (N17)? data_i[311] : 
                      (N18)? data_i[375] : 
                      (N19)? data_i[439] : 
                      (N20)? data_i[503] : 
                      (N21)? data_i[567] : 1'b0;
  assign data_o[54] = (N13)? data_i[54] : 
                      (N14)? data_i[118] : 
                      (N15)? data_i[182] : 
                      (N16)? data_i[246] : 
                      (N17)? data_i[310] : 
                      (N18)? data_i[374] : 
                      (N19)? data_i[438] : 
                      (N20)? data_i[502] : 
                      (N21)? data_i[566] : 1'b0;
  assign data_o[53] = (N13)? data_i[53] : 
                      (N14)? data_i[117] : 
                      (N15)? data_i[181] : 
                      (N16)? data_i[245] : 
                      (N17)? data_i[309] : 
                      (N18)? data_i[373] : 
                      (N19)? data_i[437] : 
                      (N20)? data_i[501] : 
                      (N21)? data_i[565] : 1'b0;
  assign data_o[52] = (N13)? data_i[52] : 
                      (N14)? data_i[116] : 
                      (N15)? data_i[180] : 
                      (N16)? data_i[244] : 
                      (N17)? data_i[308] : 
                      (N18)? data_i[372] : 
                      (N19)? data_i[436] : 
                      (N20)? data_i[500] : 
                      (N21)? data_i[564] : 1'b0;
  assign data_o[51] = (N13)? data_i[51] : 
                      (N14)? data_i[115] : 
                      (N15)? data_i[179] : 
                      (N16)? data_i[243] : 
                      (N17)? data_i[307] : 
                      (N18)? data_i[371] : 
                      (N19)? data_i[435] : 
                      (N20)? data_i[499] : 
                      (N21)? data_i[563] : 1'b0;
  assign data_o[50] = (N13)? data_i[50] : 
                      (N14)? data_i[114] : 
                      (N15)? data_i[178] : 
                      (N16)? data_i[242] : 
                      (N17)? data_i[306] : 
                      (N18)? data_i[370] : 
                      (N19)? data_i[434] : 
                      (N20)? data_i[498] : 
                      (N21)? data_i[562] : 1'b0;
  assign data_o[49] = (N13)? data_i[49] : 
                      (N14)? data_i[113] : 
                      (N15)? data_i[177] : 
                      (N16)? data_i[241] : 
                      (N17)? data_i[305] : 
                      (N18)? data_i[369] : 
                      (N19)? data_i[433] : 
                      (N20)? data_i[497] : 
                      (N21)? data_i[561] : 1'b0;
  assign data_o[48] = (N13)? data_i[48] : 
                      (N14)? data_i[112] : 
                      (N15)? data_i[176] : 
                      (N16)? data_i[240] : 
                      (N17)? data_i[304] : 
                      (N18)? data_i[368] : 
                      (N19)? data_i[432] : 
                      (N20)? data_i[496] : 
                      (N21)? data_i[560] : 1'b0;
  assign data_o[47] = (N13)? data_i[47] : 
                      (N14)? data_i[111] : 
                      (N15)? data_i[175] : 
                      (N16)? data_i[239] : 
                      (N17)? data_i[303] : 
                      (N18)? data_i[367] : 
                      (N19)? data_i[431] : 
                      (N20)? data_i[495] : 
                      (N21)? data_i[559] : 1'b0;
  assign data_o[46] = (N13)? data_i[46] : 
                      (N14)? data_i[110] : 
                      (N15)? data_i[174] : 
                      (N16)? data_i[238] : 
                      (N17)? data_i[302] : 
                      (N18)? data_i[366] : 
                      (N19)? data_i[430] : 
                      (N20)? data_i[494] : 
                      (N21)? data_i[558] : 1'b0;
  assign data_o[45] = (N13)? data_i[45] : 
                      (N14)? data_i[109] : 
                      (N15)? data_i[173] : 
                      (N16)? data_i[237] : 
                      (N17)? data_i[301] : 
                      (N18)? data_i[365] : 
                      (N19)? data_i[429] : 
                      (N20)? data_i[493] : 
                      (N21)? data_i[557] : 1'b0;
  assign data_o[44] = (N13)? data_i[44] : 
                      (N14)? data_i[108] : 
                      (N15)? data_i[172] : 
                      (N16)? data_i[236] : 
                      (N17)? data_i[300] : 
                      (N18)? data_i[364] : 
                      (N19)? data_i[428] : 
                      (N20)? data_i[492] : 
                      (N21)? data_i[556] : 1'b0;
  assign data_o[43] = (N13)? data_i[43] : 
                      (N14)? data_i[107] : 
                      (N15)? data_i[171] : 
                      (N16)? data_i[235] : 
                      (N17)? data_i[299] : 
                      (N18)? data_i[363] : 
                      (N19)? data_i[427] : 
                      (N20)? data_i[491] : 
                      (N21)? data_i[555] : 1'b0;
  assign data_o[42] = (N13)? data_i[42] : 
                      (N14)? data_i[106] : 
                      (N15)? data_i[170] : 
                      (N16)? data_i[234] : 
                      (N17)? data_i[298] : 
                      (N18)? data_i[362] : 
                      (N19)? data_i[426] : 
                      (N20)? data_i[490] : 
                      (N21)? data_i[554] : 1'b0;
  assign data_o[41] = (N13)? data_i[41] : 
                      (N14)? data_i[105] : 
                      (N15)? data_i[169] : 
                      (N16)? data_i[233] : 
                      (N17)? data_i[297] : 
                      (N18)? data_i[361] : 
                      (N19)? data_i[425] : 
                      (N20)? data_i[489] : 
                      (N21)? data_i[553] : 1'b0;
  assign data_o[40] = (N13)? data_i[40] : 
                      (N14)? data_i[104] : 
                      (N15)? data_i[168] : 
                      (N16)? data_i[232] : 
                      (N17)? data_i[296] : 
                      (N18)? data_i[360] : 
                      (N19)? data_i[424] : 
                      (N20)? data_i[488] : 
                      (N21)? data_i[552] : 1'b0;
  assign data_o[39] = (N13)? data_i[39] : 
                      (N14)? data_i[103] : 
                      (N15)? data_i[167] : 
                      (N16)? data_i[231] : 
                      (N17)? data_i[295] : 
                      (N18)? data_i[359] : 
                      (N19)? data_i[423] : 
                      (N20)? data_i[487] : 
                      (N21)? data_i[551] : 1'b0;
  assign data_o[38] = (N13)? data_i[38] : 
                      (N14)? data_i[102] : 
                      (N15)? data_i[166] : 
                      (N16)? data_i[230] : 
                      (N17)? data_i[294] : 
                      (N18)? data_i[358] : 
                      (N19)? data_i[422] : 
                      (N20)? data_i[486] : 
                      (N21)? data_i[550] : 1'b0;
  assign data_o[37] = (N13)? data_i[37] : 
                      (N14)? data_i[101] : 
                      (N15)? data_i[165] : 
                      (N16)? data_i[229] : 
                      (N17)? data_i[293] : 
                      (N18)? data_i[357] : 
                      (N19)? data_i[421] : 
                      (N20)? data_i[485] : 
                      (N21)? data_i[549] : 1'b0;
  assign data_o[36] = (N13)? data_i[36] : 
                      (N14)? data_i[100] : 
                      (N15)? data_i[164] : 
                      (N16)? data_i[228] : 
                      (N17)? data_i[292] : 
                      (N18)? data_i[356] : 
                      (N19)? data_i[420] : 
                      (N20)? data_i[484] : 
                      (N21)? data_i[548] : 1'b0;
  assign data_o[35] = (N13)? data_i[35] : 
                      (N14)? data_i[99] : 
                      (N15)? data_i[163] : 
                      (N16)? data_i[227] : 
                      (N17)? data_i[291] : 
                      (N18)? data_i[355] : 
                      (N19)? data_i[419] : 
                      (N20)? data_i[483] : 
                      (N21)? data_i[547] : 1'b0;
  assign data_o[34] = (N13)? data_i[34] : 
                      (N14)? data_i[98] : 
                      (N15)? data_i[162] : 
                      (N16)? data_i[226] : 
                      (N17)? data_i[290] : 
                      (N18)? data_i[354] : 
                      (N19)? data_i[418] : 
                      (N20)? data_i[482] : 
                      (N21)? data_i[546] : 1'b0;
  assign data_o[33] = (N13)? data_i[33] : 
                      (N14)? data_i[97] : 
                      (N15)? data_i[161] : 
                      (N16)? data_i[225] : 
                      (N17)? data_i[289] : 
                      (N18)? data_i[353] : 
                      (N19)? data_i[417] : 
                      (N20)? data_i[481] : 
                      (N21)? data_i[545] : 1'b0;
  assign data_o[32] = (N13)? data_i[32] : 
                      (N14)? data_i[96] : 
                      (N15)? data_i[160] : 
                      (N16)? data_i[224] : 
                      (N17)? data_i[288] : 
                      (N18)? data_i[352] : 
                      (N19)? data_i[416] : 
                      (N20)? data_i[480] : 
                      (N21)? data_i[544] : 1'b0;
  assign data_o[31] = (N13)? data_i[31] : 
                      (N14)? data_i[95] : 
                      (N15)? data_i[159] : 
                      (N16)? data_i[223] : 
                      (N17)? data_i[287] : 
                      (N18)? data_i[351] : 
                      (N19)? data_i[415] : 
                      (N20)? data_i[479] : 
                      (N21)? data_i[543] : 1'b0;
  assign data_o[30] = (N13)? data_i[30] : 
                      (N14)? data_i[94] : 
                      (N15)? data_i[158] : 
                      (N16)? data_i[222] : 
                      (N17)? data_i[286] : 
                      (N18)? data_i[350] : 
                      (N19)? data_i[414] : 
                      (N20)? data_i[478] : 
                      (N21)? data_i[542] : 1'b0;
  assign data_o[29] = (N13)? data_i[29] : 
                      (N14)? data_i[93] : 
                      (N15)? data_i[157] : 
                      (N16)? data_i[221] : 
                      (N17)? data_i[285] : 
                      (N18)? data_i[349] : 
                      (N19)? data_i[413] : 
                      (N20)? data_i[477] : 
                      (N21)? data_i[541] : 1'b0;
  assign data_o[28] = (N13)? data_i[28] : 
                      (N14)? data_i[92] : 
                      (N15)? data_i[156] : 
                      (N16)? data_i[220] : 
                      (N17)? data_i[284] : 
                      (N18)? data_i[348] : 
                      (N19)? data_i[412] : 
                      (N20)? data_i[476] : 
                      (N21)? data_i[540] : 1'b0;
  assign data_o[27] = (N13)? data_i[27] : 
                      (N14)? data_i[91] : 
                      (N15)? data_i[155] : 
                      (N16)? data_i[219] : 
                      (N17)? data_i[283] : 
                      (N18)? data_i[347] : 
                      (N19)? data_i[411] : 
                      (N20)? data_i[475] : 
                      (N21)? data_i[539] : 1'b0;
  assign data_o[26] = (N13)? data_i[26] : 
                      (N14)? data_i[90] : 
                      (N15)? data_i[154] : 
                      (N16)? data_i[218] : 
                      (N17)? data_i[282] : 
                      (N18)? data_i[346] : 
                      (N19)? data_i[410] : 
                      (N20)? data_i[474] : 
                      (N21)? data_i[538] : 1'b0;
  assign data_o[25] = (N13)? data_i[25] : 
                      (N14)? data_i[89] : 
                      (N15)? data_i[153] : 
                      (N16)? data_i[217] : 
                      (N17)? data_i[281] : 
                      (N18)? data_i[345] : 
                      (N19)? data_i[409] : 
                      (N20)? data_i[473] : 
                      (N21)? data_i[537] : 1'b0;
  assign data_o[24] = (N13)? data_i[24] : 
                      (N14)? data_i[88] : 
                      (N15)? data_i[152] : 
                      (N16)? data_i[216] : 
                      (N17)? data_i[280] : 
                      (N18)? data_i[344] : 
                      (N19)? data_i[408] : 
                      (N20)? data_i[472] : 
                      (N21)? data_i[536] : 1'b0;
  assign data_o[23] = (N13)? data_i[23] : 
                      (N14)? data_i[87] : 
                      (N15)? data_i[151] : 
                      (N16)? data_i[215] : 
                      (N17)? data_i[279] : 
                      (N18)? data_i[343] : 
                      (N19)? data_i[407] : 
                      (N20)? data_i[471] : 
                      (N21)? data_i[535] : 1'b0;
  assign data_o[22] = (N13)? data_i[22] : 
                      (N14)? data_i[86] : 
                      (N15)? data_i[150] : 
                      (N16)? data_i[214] : 
                      (N17)? data_i[278] : 
                      (N18)? data_i[342] : 
                      (N19)? data_i[406] : 
                      (N20)? data_i[470] : 
                      (N21)? data_i[534] : 1'b0;
  assign data_o[21] = (N13)? data_i[21] : 
                      (N14)? data_i[85] : 
                      (N15)? data_i[149] : 
                      (N16)? data_i[213] : 
                      (N17)? data_i[277] : 
                      (N18)? data_i[341] : 
                      (N19)? data_i[405] : 
                      (N20)? data_i[469] : 
                      (N21)? data_i[533] : 1'b0;
  assign data_o[20] = (N13)? data_i[20] : 
                      (N14)? data_i[84] : 
                      (N15)? data_i[148] : 
                      (N16)? data_i[212] : 
                      (N17)? data_i[276] : 
                      (N18)? data_i[340] : 
                      (N19)? data_i[404] : 
                      (N20)? data_i[468] : 
                      (N21)? data_i[532] : 1'b0;
  assign data_o[19] = (N13)? data_i[19] : 
                      (N14)? data_i[83] : 
                      (N15)? data_i[147] : 
                      (N16)? data_i[211] : 
                      (N17)? data_i[275] : 
                      (N18)? data_i[339] : 
                      (N19)? data_i[403] : 
                      (N20)? data_i[467] : 
                      (N21)? data_i[531] : 1'b0;
  assign data_o[18] = (N13)? data_i[18] : 
                      (N14)? data_i[82] : 
                      (N15)? data_i[146] : 
                      (N16)? data_i[210] : 
                      (N17)? data_i[274] : 
                      (N18)? data_i[338] : 
                      (N19)? data_i[402] : 
                      (N20)? data_i[466] : 
                      (N21)? data_i[530] : 1'b0;
  assign data_o[17] = (N13)? data_i[17] : 
                      (N14)? data_i[81] : 
                      (N15)? data_i[145] : 
                      (N16)? data_i[209] : 
                      (N17)? data_i[273] : 
                      (N18)? data_i[337] : 
                      (N19)? data_i[401] : 
                      (N20)? data_i[465] : 
                      (N21)? data_i[529] : 1'b0;
  assign data_o[16] = (N13)? data_i[16] : 
                      (N14)? data_i[80] : 
                      (N15)? data_i[144] : 
                      (N16)? data_i[208] : 
                      (N17)? data_i[272] : 
                      (N18)? data_i[336] : 
                      (N19)? data_i[400] : 
                      (N20)? data_i[464] : 
                      (N21)? data_i[528] : 1'b0;
  assign data_o[15] = (N13)? data_i[15] : 
                      (N14)? data_i[79] : 
                      (N15)? data_i[143] : 
                      (N16)? data_i[207] : 
                      (N17)? data_i[271] : 
                      (N18)? data_i[335] : 
                      (N19)? data_i[399] : 
                      (N20)? data_i[463] : 
                      (N21)? data_i[527] : 1'b0;
  assign data_o[14] = (N13)? data_i[14] : 
                      (N14)? data_i[78] : 
                      (N15)? data_i[142] : 
                      (N16)? data_i[206] : 
                      (N17)? data_i[270] : 
                      (N18)? data_i[334] : 
                      (N19)? data_i[398] : 
                      (N20)? data_i[462] : 
                      (N21)? data_i[526] : 1'b0;
  assign data_o[13] = (N13)? data_i[13] : 
                      (N14)? data_i[77] : 
                      (N15)? data_i[141] : 
                      (N16)? data_i[205] : 
                      (N17)? data_i[269] : 
                      (N18)? data_i[333] : 
                      (N19)? data_i[397] : 
                      (N20)? data_i[461] : 
                      (N21)? data_i[525] : 1'b0;
  assign data_o[12] = (N13)? data_i[12] : 
                      (N14)? data_i[76] : 
                      (N15)? data_i[140] : 
                      (N16)? data_i[204] : 
                      (N17)? data_i[268] : 
                      (N18)? data_i[332] : 
                      (N19)? data_i[396] : 
                      (N20)? data_i[460] : 
                      (N21)? data_i[524] : 1'b0;
  assign data_o[11] = (N13)? data_i[11] : 
                      (N14)? data_i[75] : 
                      (N15)? data_i[139] : 
                      (N16)? data_i[203] : 
                      (N17)? data_i[267] : 
                      (N18)? data_i[331] : 
                      (N19)? data_i[395] : 
                      (N20)? data_i[459] : 
                      (N21)? data_i[523] : 1'b0;
  assign data_o[10] = (N13)? data_i[10] : 
                      (N14)? data_i[74] : 
                      (N15)? data_i[138] : 
                      (N16)? data_i[202] : 
                      (N17)? data_i[266] : 
                      (N18)? data_i[330] : 
                      (N19)? data_i[394] : 
                      (N20)? data_i[458] : 
                      (N21)? data_i[522] : 1'b0;
  assign data_o[9] = (N13)? data_i[9] : 
                     (N14)? data_i[73] : 
                     (N15)? data_i[137] : 
                     (N16)? data_i[201] : 
                     (N17)? data_i[265] : 
                     (N18)? data_i[329] : 
                     (N19)? data_i[393] : 
                     (N20)? data_i[457] : 
                     (N21)? data_i[521] : 1'b0;
  assign data_o[8] = (N13)? data_i[8] : 
                     (N14)? data_i[72] : 
                     (N15)? data_i[136] : 
                     (N16)? data_i[200] : 
                     (N17)? data_i[264] : 
                     (N18)? data_i[328] : 
                     (N19)? data_i[392] : 
                     (N20)? data_i[456] : 
                     (N21)? data_i[520] : 1'b0;
  assign data_o[7] = (N13)? data_i[7] : 
                     (N14)? data_i[71] : 
                     (N15)? data_i[135] : 
                     (N16)? data_i[199] : 
                     (N17)? data_i[263] : 
                     (N18)? data_i[327] : 
                     (N19)? data_i[391] : 
                     (N20)? data_i[455] : 
                     (N21)? data_i[519] : 1'b0;
  assign data_o[6] = (N13)? data_i[6] : 
                     (N14)? data_i[70] : 
                     (N15)? data_i[134] : 
                     (N16)? data_i[198] : 
                     (N17)? data_i[262] : 
                     (N18)? data_i[326] : 
                     (N19)? data_i[390] : 
                     (N20)? data_i[454] : 
                     (N21)? data_i[518] : 1'b0;
  assign data_o[5] = (N13)? data_i[5] : 
                     (N14)? data_i[69] : 
                     (N15)? data_i[133] : 
                     (N16)? data_i[197] : 
                     (N17)? data_i[261] : 
                     (N18)? data_i[325] : 
                     (N19)? data_i[389] : 
                     (N20)? data_i[453] : 
                     (N21)? data_i[517] : 1'b0;
  assign data_o[4] = (N13)? data_i[4] : 
                     (N14)? data_i[68] : 
                     (N15)? data_i[132] : 
                     (N16)? data_i[196] : 
                     (N17)? data_i[260] : 
                     (N18)? data_i[324] : 
                     (N19)? data_i[388] : 
                     (N20)? data_i[452] : 
                     (N21)? data_i[516] : 1'b0;
  assign data_o[3] = (N13)? data_i[3] : 
                     (N14)? data_i[67] : 
                     (N15)? data_i[131] : 
                     (N16)? data_i[195] : 
                     (N17)? data_i[259] : 
                     (N18)? data_i[323] : 
                     (N19)? data_i[387] : 
                     (N20)? data_i[451] : 
                     (N21)? data_i[515] : 1'b0;
  assign data_o[2] = (N13)? data_i[2] : 
                     (N14)? data_i[66] : 
                     (N15)? data_i[130] : 
                     (N16)? data_i[194] : 
                     (N17)? data_i[258] : 
                     (N18)? data_i[322] : 
                     (N19)? data_i[386] : 
                     (N20)? data_i[450] : 
                     (N21)? data_i[514] : 1'b0;
  assign data_o[1] = (N13)? data_i[1] : 
                     (N14)? data_i[65] : 
                     (N15)? data_i[129] : 
                     (N16)? data_i[193] : 
                     (N17)? data_i[257] : 
                     (N18)? data_i[321] : 
                     (N19)? data_i[385] : 
                     (N20)? data_i[449] : 
                     (N21)? data_i[513] : 1'b0;
  assign data_o[0] = (N13)? data_i[0] : 
                     (N14)? data_i[64] : 
                     (N15)? data_i[128] : 
                     (N16)? data_i[192] : 
                     (N17)? data_i[256] : 
                     (N18)? data_i[320] : 
                     (N19)? data_i[384] : 
                     (N20)? data_i[448] : 
                     (N21)? data_i[512] : 1'b0;

endmodule



module bsg_parallel_in_serial_out_dynamic_width_p64_max_els_p9
(
  clk_i,
  reset_i,
  v_i,
  len_i,
  data_i,
  ready_o,
  v_o,
  len_v_o,
  data_o,
  yumi_i
);

  input [3:0] len_i;
  input [575:0] data_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  output len_v_o;
  wire [63:0] data_o;
  wire ready_o,v_o,len_v_o,count_r_is_last,up_li,clear_li,N0,N1,N2,N4;
  wire [3:0] len_lo,count_lo;
  wire [575:0] fifo_data_lo;

  bsg_two_fifo_width_p4
  go_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(ready_o),
    .data_i(len_i),
    .v_i(v_i),
    .v_o(v_o),
    .data_o(len_lo),
    .yumi_i(clear_li)
  );


  bsg_two_fifo_width_p576
  data_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(data_i),
    .v_i(v_i),
    .data_o(fifo_data_lo),
    .yumi_i(clear_li)
  );

  assign count_r_is_last = count_lo == len_lo;

  bsg_counter_clear_up_max_val_p8_init_val_p0
  ctr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_li),
    .up_i(up_li),
    .count_o(count_lo)
  );


  bsg_mux_width_p64_els_p9
  data_mux
  (
    .data_i(fifo_data_lo),
    .sel_i(count_lo),
    .data_o(data_o)
  );

  assign N0 = count_lo[2] | count_lo[3];
  assign N1 = count_lo[1] | N0;
  assign N2 = count_lo[0] | N1;
  assign len_v_o = ~N2;
  assign up_li = yumi_i & N4;
  assign N4 = ~count_r_is_last;
  assign clear_li = yumi_i & count_r_is_last;

endmodule



module bsg_wormhole_router_adapter_in_max_payload_width_p512_len_width_p8_cord_width_p8_flit_width_p64
(
  clk_i,
  reset_i,
  packet_i,
  v_i,
  ready_o,
  link_o,
  link_i
);

  input [527:0] packet_i;
  output [65:0] link_o;
  input [65:0] link_i;
  input clk_i;
  input reset_i;
  input v_i;
  output ready_o;
  wire [65:0] link_o;
  wire ready_o,n_3_net_;
  assign link_o[64] = 1'b0;

  bsg_parallel_in_serial_out_dynamic_width_p64_max_els_p9
  piso
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(v_i),
    .len_i(packet_i[11:8]),
    .data_i({ 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, packet_i }),
    .ready_o(ready_o),
    .v_o(link_o[65]),
    .data_o(link_o[63:0]),
    .yumi_i(n_3_net_)
  );

  assign n_3_net_ = link_i[64] & link_o[65];

endmodule



module bsg_dff_reset_en_width_p4_reset_val_p0
(
  clk_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [3:0] data_i;
  output [3:0] data_o;
  input clk_i;
  input reset_i;
  input en_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
  reg [3:0] data_o;
  assign N3 = (N0)? 1'b1 : 
              (N9)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N7, N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N9)? data_i : 1'b0;
  assign N1 = en_i | reset_i;
  assign N2 = ~N1;
  assign N8 = ~reset_i;
  assign N9 = en_i & N8;

  always @(posedge clk_i) begin
    if(N3) begin
      { data_o[3:0] } <= { N7, N6, N5, N4 };
    end 
  end


endmodule



module bsg_mem_1r1w_synth_width_p1_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [0:0] w_data_i;
  input [0:0] r_addr_i;
  output [0:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [0:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [1:0] mem;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[1] : 1'b0;
  assign N0 = r_addr_i[0];
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[1:1] } <= { w_data_i[0:0] };
    end 
    if(N7) begin
      { mem[0:0] } <= { w_data_i[0:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p1_els_p2_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [0:0] w_data_i;
  input [0:0] r_addr_i;
  output [0:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [0:0] r_data_o;

  bsg_mem_1r1w_synth_width_p1_els_p2_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i[0]),
    .w_data_i(w_data_i[0]),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i[0]),
    .r_data_o(r_data_o[0])
  );


endmodule



module bsg_two_fifo_width_p1
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  yumi_i
);

  input [0:0] data_i;
  output [0:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [0:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p1_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i[0]),
    .r_v_i(n_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o[0])
  );

  assign N9 = (N0)? 1'b1 : 
              (N1)? N5 : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign N10 = (N0)? 1'b0 : 
               (N1)? N4 : 1'b0;
  assign N11 = (N0)? 1'b1 : 
               (N1)? yumi_i : 1'b0;
  assign N12 = (N0)? 1'b0 : 
               (N1)? N6 : 1'b0;
  assign N13 = (N0)? 1'b1 : 
               (N1)? N7 : 1'b0;
  assign N14 = (N0)? 1'b0 : 
               (N1)? N8 : 1'b0;
  assign n_0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N15;
  assign N15 = ~full_r;
  assign N2 = ~reset_i;
  assign N3 = reset_i;
  assign N5 = enq_i;
  assign N4 = ~tail_r;
  assign N6 = ~head_r;
  assign N7 = N17 | N19;
  assign N17 = empty_r & N16;
  assign N16 = ~enq_i;
  assign N19 = N18 & N16;
  assign N18 = N15 & yumi_i;
  assign N8 = N23 | N24;
  assign N23 = N21 & N22;
  assign N21 = N20 & enq_i;
  assign N20 = ~empty_r;
  assign N22 = ~yumi_i;
  assign N24 = full_r & N22;

  always @(posedge clk_i) begin
    if(1'b1) begin
      full_r <= N14;
      empty_r <= N13;
    end 
    if(N9) begin
      tail_r <= N10;
    end 
    if(N11) begin
      head_r <= N12;
    end 
  end


endmodule



module bsg_decode_num_out_p9
(
  i,
  o
);

  input [3:0] i;
  output [8:0] o;
  wire [8:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule



module bsg_decode_with_v_num_out_p9
(
  i,
  v_i,
  o
);

  input [3:0] i;
  output [8:0] o;
  input v_i;
  wire [8:0] o,lo;

  bsg_decode_num_out_p9
  bd
  (
    .i(i),
    .o(lo)
  );

  assign o[8] = v_i & lo[8];
  assign o[7] = v_i & lo[7];
  assign o[6] = v_i & lo[6];
  assign o[5] = v_i & lo[5];
  assign o[4] = v_i & lo[4];
  assign o[3] = v_i & lo[3];
  assign o[2] = v_i & lo[2];
  assign o[1] = v_i & lo[1];
  assign o[0] = v_i & lo[0];

endmodule



module bsg_mem_1r1w_synth_width_p64_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [63:0] w_data_i;
  input [0:0] r_addr_i;
  output [63:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [63:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [127:0] mem;
  assign r_data_o[63] = (N3)? mem[63] : 
                        (N0)? mem[127] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[62] = (N3)? mem[62] : 
                        (N0)? mem[126] : 1'b0;
  assign r_data_o[61] = (N3)? mem[61] : 
                        (N0)? mem[125] : 1'b0;
  assign r_data_o[60] = (N3)? mem[60] : 
                        (N0)? mem[124] : 1'b0;
  assign r_data_o[59] = (N3)? mem[59] : 
                        (N0)? mem[123] : 1'b0;
  assign r_data_o[58] = (N3)? mem[58] : 
                        (N0)? mem[122] : 1'b0;
  assign r_data_o[57] = (N3)? mem[57] : 
                        (N0)? mem[121] : 1'b0;
  assign r_data_o[56] = (N3)? mem[56] : 
                        (N0)? mem[120] : 1'b0;
  assign r_data_o[55] = (N3)? mem[55] : 
                        (N0)? mem[119] : 1'b0;
  assign r_data_o[54] = (N3)? mem[54] : 
                        (N0)? mem[118] : 1'b0;
  assign r_data_o[53] = (N3)? mem[53] : 
                        (N0)? mem[117] : 1'b0;
  assign r_data_o[52] = (N3)? mem[52] : 
                        (N0)? mem[116] : 1'b0;
  assign r_data_o[51] = (N3)? mem[51] : 
                        (N0)? mem[115] : 1'b0;
  assign r_data_o[50] = (N3)? mem[50] : 
                        (N0)? mem[114] : 1'b0;
  assign r_data_o[49] = (N3)? mem[49] : 
                        (N0)? mem[113] : 1'b0;
  assign r_data_o[48] = (N3)? mem[48] : 
                        (N0)? mem[112] : 1'b0;
  assign r_data_o[47] = (N3)? mem[47] : 
                        (N0)? mem[111] : 1'b0;
  assign r_data_o[46] = (N3)? mem[46] : 
                        (N0)? mem[110] : 1'b0;
  assign r_data_o[45] = (N3)? mem[45] : 
                        (N0)? mem[109] : 1'b0;
  assign r_data_o[44] = (N3)? mem[44] : 
                        (N0)? mem[108] : 1'b0;
  assign r_data_o[43] = (N3)? mem[43] : 
                        (N0)? mem[107] : 1'b0;
  assign r_data_o[42] = (N3)? mem[42] : 
                        (N0)? mem[106] : 1'b0;
  assign r_data_o[41] = (N3)? mem[41] : 
                        (N0)? mem[105] : 1'b0;
  assign r_data_o[40] = (N3)? mem[40] : 
                        (N0)? mem[104] : 1'b0;
  assign r_data_o[39] = (N3)? mem[39] : 
                        (N0)? mem[103] : 1'b0;
  assign r_data_o[38] = (N3)? mem[38] : 
                        (N0)? mem[102] : 1'b0;
  assign r_data_o[37] = (N3)? mem[37] : 
                        (N0)? mem[101] : 1'b0;
  assign r_data_o[36] = (N3)? mem[36] : 
                        (N0)? mem[100] : 1'b0;
  assign r_data_o[35] = (N3)? mem[35] : 
                        (N0)? mem[99] : 1'b0;
  assign r_data_o[34] = (N3)? mem[34] : 
                        (N0)? mem[98] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] : 
                        (N0)? mem[97] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] : 
                        (N0)? mem[96] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[95] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[94] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[93] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[92] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[91] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[90] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[89] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[88] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[87] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[86] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[85] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[84] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[83] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[82] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[81] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[80] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[79] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[78] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[77] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[76] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[75] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[74] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[73] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[72] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[71] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[70] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[69] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[68] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[67] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[66] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[65] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[64] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[127:64] } <= { w_data_i[63:0] };
    end 
    if(N7) begin
      { mem[63:0] } <= { w_data_i[63:0] };
    end 
  end


endmodule



module bsg_mem_1r1w_width_p64_els_p2_read_write_same_addr_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [63:0] w_data_i;
  input [0:0] r_addr_i;
  output [63:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [63:0] r_data_o;

  bsg_mem_1r1w_synth_width_p64_els_p2_read_write_same_addr_p0_harden_p0
  synth
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_v_i(w_v_i),
    .w_addr_i(w_addr_i[0]),
    .w_data_i(w_data_i),
    .r_v_i(r_v_i),
    .r_addr_i(r_addr_i[0]),
    .r_data_o(r_data_o)
  );


endmodule



module bsg_two_fifo_width_p64
(
  clk_i,
  reset_i,
  ready_o,
  data_i,
  v_i,
  v_o,
  data_o,
  yumi_i
);

  input [63:0] data_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [63:0] data_o;
  wire ready_o,v_o,N0,N1,enq_i,n_0_net_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24;
  reg full_r,tail_r,head_r,empty_r;

  bsg_mem_1r1w_width_p64_els_p2_read_write_same_addr_p0
  mem_1r1w
  (
    .w_clk_i(clk_i),
    .w_reset_i(reset_i),
    .w_v_i(enq_i),
    .w_addr_i(tail_r),
    .w_data_i(data_i),
    .r_v_i(n_0_net_),
    .r_addr_i(head_r),
    .r_data_o(data_o)
  );

  assign N9 = (N0)? 1'b1 : 
              (N1)? N5 : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign N10 = (N0)? 1'b0 : 
               (N1)? N4 : 1'b0;
  assign N11 = (N0)? 1'b1 : 
               (N1)? yumi_i : 1'b0;
  assign N12 = (N0)? 1'b0 : 
               (N1)? N6 : 1'b0;
  assign N13 = (N0)? 1'b1 : 
               (N1)? N7 : 1'b0;
  assign N14 = (N0)? 1'b0 : 
               (N1)? N8 : 1'b0;
  assign n_0_net_ = ~empty_r;
  assign v_o = ~empty_r;
  assign ready_o = ~full_r;
  assign enq_i = v_i & N15;
  assign N15 = ~full_r;
  assign N2 = ~reset_i;
  assign N3 = reset_i;
  assign N5 = enq_i;
  assign N4 = ~tail_r;
  assign N6 = ~head_r;
  assign N7 = N17 | N19;
  assign N17 = empty_r & N16;
  assign N16 = ~enq_i;
  assign N19 = N18 & N16;
  assign N18 = N15 & yumi_i;
  assign N8 = N23 | N24;
  assign N23 = N21 & N22;
  assign N21 = N20 & enq_i;
  assign N20 = ~empty_r;
  assign N22 = ~yumi_i;
  assign N24 = full_r & N22;

  always @(posedge clk_i) begin
    if(1'b1) begin
      full_r <= N14;
      empty_r <= N13;
    end 
    if(N9) begin
      tail_r <= N10;
    end 
    if(N11) begin
      head_r <= N12;
    end 
  end


endmodule



module bsg_serial_in_parallel_out_dynamic_width_p64_max_els_p9
(
  clk_i,
  reset_i,
  v_i,
  len_i,
  data_i,
  ready_o,
  len_ready_o,
  v_o,
  data_o,
  yumi_i
);

  input [3:0] len_i;
  input [63:0] data_i;
  output [575:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output len_ready_o;
  output v_o;
  wire [575:0] data_o;
  wire ready_o,len_ready_o,v_o,N0,N1,yumi_lo,N2,N3,count_r_is_last,up_li,clear_li,
  dff_en_li,one_word_lo,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42;
  wire [3:0] count_lo,len_lo,len_r;
  wire [8:0] fifo_ready_lo,fifo_valid_lo,fifo_valid_li;
  wire [8:1] fifo_yumi_li;
  assign count_r_is_last = count_lo == len_lo;

  bsg_counter_clear_up_max_val_p8_init_val_p0
  ctr
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .clear_i(clear_li),
    .up_i(up_li),
    .count_o(count_lo)
  );


  bsg_dff_reset_en_width_p4_reset_val_p0
  dff_len
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .en_i(dff_en_li),
    .data_i(len_i),
    .data_o(len_r)
  );


  bsg_two_fifo_width_p1
  go_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .data_i(len_ready_o),
    .v_i(clear_li),
    .v_o(v_o),
    .data_o(one_word_lo),
    .yumi_i(yumi_i)
  );


  bsg_decode_with_v_num_out_p9
  bdwv
  (
    .i(count_lo),
    .v_i(v_i),
    .o(fifo_valid_li)
  );


  bsg_two_fifo_width_p64
  fifos_0__twofifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[0]),
    .data_i(data_i),
    .v_i(fifo_valid_li[0]),
    .v_o(fifo_valid_lo[0]),
    .data_o(data_o[63:0]),
    .yumi_i(yumi_i)
  );


  bsg_one_fifo
  fifos_1__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[1]),
    .data_i(data_i),
    .v_i(fifo_valid_li[1]),
    .v_o(fifo_valid_lo[1]),
    .data_o(data_o[127:64]),
    .yumi_i(fifo_yumi_li[1])
  );


  bsg_one_fifo
  fifos_2__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[2]),
    .data_i(data_i),
    .v_i(fifo_valid_li[2]),
    .v_o(fifo_valid_lo[2]),
    .data_o(data_o[191:128]),
    .yumi_i(fifo_yumi_li[2])
  );


  bsg_one_fifo
  fifos_3__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[3]),
    .data_i(data_i),
    .v_i(fifo_valid_li[3]),
    .v_o(fifo_valid_lo[3]),
    .data_o(data_o[255:192]),
    .yumi_i(fifo_yumi_li[3])
  );


  bsg_one_fifo
  fifos_4__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[4]),
    .data_i(data_i),
    .v_i(fifo_valid_li[4]),
    .v_o(fifo_valid_lo[4]),
    .data_o(data_o[319:256]),
    .yumi_i(fifo_yumi_li[4])
  );


  bsg_one_fifo
  fifos_5__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[5]),
    .data_i(data_i),
    .v_i(fifo_valid_li[5]),
    .v_o(fifo_valid_lo[5]),
    .data_o(data_o[383:320]),
    .yumi_i(fifo_yumi_li[5])
  );


  bsg_one_fifo
  fifos_6__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[6]),
    .data_i(data_i),
    .v_i(fifo_valid_li[6]),
    .v_o(fifo_valid_lo[6]),
    .data_o(data_o[447:384]),
    .yumi_i(fifo_yumi_li[6])
  );


  bsg_one_fifo
  fifos_7__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[7]),
    .data_i(data_i),
    .v_i(fifo_valid_li[7]),
    .v_o(fifo_valid_lo[7]),
    .data_o(data_o[511:448]),
    .yumi_i(fifo_yumi_li[7])
  );


  bsg_one_fifo
  fifos_8__onefifo_fifo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .ready_o(fifo_ready_lo[8]),
    .data_i(data_i),
    .v_i(fifo_valid_li[8]),
    .v_o(fifo_valid_lo[8]),
    .data_o(data_o[575:512]),
    .yumi_i(fifo_yumi_li[8])
  );

  assign N29 = count_lo[2] | count_lo[3];
  assign N30 = count_lo[1] | N29;
  assign N31 = count_lo[0] | N30;
  assign len_ready_o = ~N31;
  assign len_lo = (N0)? len_i : 
                  (N1)? len_r : 1'b0;
  assign N0 = N3;
  assign N1 = N2;
  assign ready_o = (N20)? fifo_ready_lo[0] : 
                   (N22)? fifo_ready_lo[1] : 
                   (N23)? fifo_ready_lo[2] : 
                   (N24)? fifo_ready_lo[3] : 
                   (N25)? fifo_ready_lo[4] : 
                   (N26)? fifo_ready_lo[5] : 
                   (N27)? fifo_ready_lo[6] : 
                   (N28)? fifo_ready_lo[7] : 
                   (N21)? fifo_ready_lo[8] : 1'b0;
  assign yumi_lo = v_i & ready_o;
  assign N2 = ~len_ready_o;
  assign N3 = len_ready_o;
  assign up_li = yumi_lo & N33;
  assign N33 = ~count_r_is_last;
  assign clear_li = yumi_lo & count_r_is_last;
  assign dff_en_li = yumi_lo & len_ready_o;
  assign N4 = ~count_lo[0];
  assign N5 = ~count_lo[1];
  assign N6 = N4 & N5;
  assign N7 = N4 & count_lo[1];
  assign N8 = count_lo[0] & N5;
  assign N9 = count_lo[0] & count_lo[1];
  assign N10 = ~count_lo[2];
  assign N11 = N6 & N10;
  assign N12 = N6 & count_lo[2];
  assign N13 = N8 & N10;
  assign N14 = N8 & count_lo[2];
  assign N15 = N7 & N10;
  assign N16 = N7 & count_lo[2];
  assign N17 = N9 & N10;
  assign N18 = N9 & count_lo[2];
  assign N19 = ~count_lo[3];
  assign N20 = N11 & N19;
  assign N21 = N11 & count_lo[3];
  assign N22 = N13 & N19;
  assign N23 = N15 & N19;
  assign N24 = N17 & N19;
  assign N25 = N12 & N19;
  assign N26 = N14 & N19;
  assign N27 = N16 & N19;
  assign N28 = N18 & N19;
  assign fifo_yumi_li[1] = N34 & N35;
  assign N34 = fifo_valid_lo[1] & yumi_i;
  assign N35 = ~one_word_lo;
  assign fifo_yumi_li[2] = N36 & N35;
  assign N36 = fifo_valid_lo[2] & yumi_i;
  assign fifo_yumi_li[3] = N37 & N35;
  assign N37 = fifo_valid_lo[3] & yumi_i;
  assign fifo_yumi_li[4] = N38 & N35;
  assign N38 = fifo_valid_lo[4] & yumi_i;
  assign fifo_yumi_li[5] = N39 & N35;
  assign N39 = fifo_valid_lo[5] & yumi_i;
  assign fifo_yumi_li[6] = N40 & N35;
  assign N40 = fifo_valid_lo[6] & yumi_i;
  assign fifo_yumi_li[7] = N41 & N35;
  assign N41 = fifo_valid_lo[7] & yumi_i;
  assign fifo_yumi_li[8] = N42 & N35;
  assign N42 = fifo_valid_lo[8] & yumi_i;

endmodule



module bsg_wormhole_router_adapter_out_max_payload_width_p512_len_width_p8_cord_width_p8_flit_width_p64
(
  clk_i,
  reset_i,
  link_i,
  link_o,
  packet_o,
  v_o,
  yumi_i
);

  input [65:0] link_i;
  output [65:0] link_o;
  output [527:0] packet_o;
  input clk_i;
  input reset_i;
  input yumi_i;
  output v_o;
  wire [65:0] link_o;
  wire [527:0] packet_o;
  wire v_o;
  wire [575:528] packet_padded_lo;
  assign link_o[0] = 1'b0;
  assign link_o[1] = 1'b0;
  assign link_o[2] = 1'b0;
  assign link_o[3] = 1'b0;
  assign link_o[4] = 1'b0;
  assign link_o[5] = 1'b0;
  assign link_o[6] = 1'b0;
  assign link_o[7] = 1'b0;
  assign link_o[8] = 1'b0;
  assign link_o[9] = 1'b0;
  assign link_o[10] = 1'b0;
  assign link_o[11] = 1'b0;
  assign link_o[12] = 1'b0;
  assign link_o[13] = 1'b0;
  assign link_o[14] = 1'b0;
  assign link_o[15] = 1'b0;
  assign link_o[16] = 1'b0;
  assign link_o[17] = 1'b0;
  assign link_o[18] = 1'b0;
  assign link_o[19] = 1'b0;
  assign link_o[20] = 1'b0;
  assign link_o[21] = 1'b0;
  assign link_o[22] = 1'b0;
  assign link_o[23] = 1'b0;
  assign link_o[24] = 1'b0;
  assign link_o[25] = 1'b0;
  assign link_o[26] = 1'b0;
  assign link_o[27] = 1'b0;
  assign link_o[28] = 1'b0;
  assign link_o[29] = 1'b0;
  assign link_o[30] = 1'b0;
  assign link_o[31] = 1'b0;
  assign link_o[32] = 1'b0;
  assign link_o[33] = 1'b0;
  assign link_o[34] = 1'b0;
  assign link_o[35] = 1'b0;
  assign link_o[36] = 1'b0;
  assign link_o[37] = 1'b0;
  assign link_o[38] = 1'b0;
  assign link_o[39] = 1'b0;
  assign link_o[40] = 1'b0;
  assign link_o[41] = 1'b0;
  assign link_o[42] = 1'b0;
  assign link_o[43] = 1'b0;
  assign link_o[44] = 1'b0;
  assign link_o[45] = 1'b0;
  assign link_o[46] = 1'b0;
  assign link_o[47] = 1'b0;
  assign link_o[48] = 1'b0;
  assign link_o[49] = 1'b0;
  assign link_o[50] = 1'b0;
  assign link_o[51] = 1'b0;
  assign link_o[52] = 1'b0;
  assign link_o[53] = 1'b0;
  assign link_o[54] = 1'b0;
  assign link_o[55] = 1'b0;
  assign link_o[56] = 1'b0;
  assign link_o[57] = 1'b0;
  assign link_o[58] = 1'b0;
  assign link_o[59] = 1'b0;
  assign link_o[60] = 1'b0;
  assign link_o[61] = 1'b0;
  assign link_o[62] = 1'b0;
  assign link_o[63] = 1'b0;
  assign link_o[65] = 1'b0;

  bsg_serial_in_parallel_out_dynamic_width_p64_max_els_p9
  sipo
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .v_i(link_i[65]),
    .len_i(link_i[11:8]),
    .data_i(link_i[63:0]),
    .ready_o(link_o[64]),
    .v_o(v_o),
    .data_o({ packet_padded_lo, packet_o }),
    .yumi_i(yumi_i)
  );


endmodule



module bsg_wormhole_router_adapter_max_payload_width_p512_len_width_p8_cord_width_p8_flit_width_p64
(
  clk_i,
  reset_i,
  packet_i,
  v_i,
  ready_o,
  link_i,
  link_o,
  packet_o,
  v_o,
  yumi_i
);

  input [527:0] packet_i;
  input [65:0] link_i;
  output [65:0] link_o;
  output [527:0] packet_o;
  input clk_i;
  input reset_i;
  input v_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire [65:0] link_o;
  wire [527:0] packet_o;
  wire ready_o,v_o,link_o_stubbed_ready_ready_and_rev_,link_o_stubbed_v_v_,
  link_o_stubbed_v_data__63_,link_o_stubbed_v_data__62_,link_o_stubbed_v_data__61_,
  link_o_stubbed_v_data__60_,link_o_stubbed_v_data__59_,link_o_stubbed_v_data__58_,
  link_o_stubbed_v_data__57_,link_o_stubbed_v_data__56_,link_o_stubbed_v_data__55_,
  link_o_stubbed_v_data__54_,link_o_stubbed_v_data__53_,link_o_stubbed_v_data__52_,
  link_o_stubbed_v_data__51_,link_o_stubbed_v_data__50_,link_o_stubbed_v_data__49_,
  link_o_stubbed_v_data__48_,link_o_stubbed_v_data__47_,link_o_stubbed_v_data__46_,
  link_o_stubbed_v_data__45_,link_o_stubbed_v_data__44_,link_o_stubbed_v_data__43_,
  link_o_stubbed_v_data__42_,link_o_stubbed_v_data__41_,link_o_stubbed_v_data__40_,
  link_o_stubbed_v_data__39_,link_o_stubbed_v_data__38_,link_o_stubbed_v_data__37_,
  link_o_stubbed_v_data__36_,link_o_stubbed_v_data__35_,link_o_stubbed_v_data__34_,
  link_o_stubbed_v_data__33_,link_o_stubbed_v_data__32_,link_o_stubbed_v_data__31_,
  link_o_stubbed_v_data__30_,link_o_stubbed_v_data__29_,link_o_stubbed_v_data__28_,
  link_o_stubbed_v_data__27_,link_o_stubbed_v_data__26_,
  link_o_stubbed_v_data__25_,link_o_stubbed_v_data__24_,link_o_stubbed_v_data__23_,
  link_o_stubbed_v_data__22_,link_o_stubbed_v_data__21_,link_o_stubbed_v_data__20_,
  link_o_stubbed_v_data__19_,link_o_stubbed_v_data__18_,link_o_stubbed_v_data__17_,
  link_o_stubbed_v_data__16_,link_o_stubbed_v_data__15_,link_o_stubbed_v_data__14_,
  link_o_stubbed_v_data__13_,link_o_stubbed_v_data__12_,link_o_stubbed_v_data__11_,
  link_o_stubbed_v_data__10_,link_o_stubbed_v_data__9_,link_o_stubbed_v_data__8_,
  link_o_stubbed_v_data__7_,link_o_stubbed_v_data__6_,link_o_stubbed_v_data__5_,
  link_o_stubbed_v_data__4_,link_o_stubbed_v_data__3_,link_o_stubbed_v_data__2_,link_o_stubbed_v_data__1_,
  link_o_stubbed_v_data__0_;

  bsg_wormhole_router_adapter_in_max_payload_width_p512_len_width_p8_cord_width_p8_flit_width_p64
  adapter_in
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .packet_i(packet_i),
    .v_i(v_i),
    .ready_o(ready_o),
    .link_o({ link_o[65:65], link_o_stubbed_ready_ready_and_rev_, link_o[63:0] }),
    .link_i(link_i)
  );


  bsg_wormhole_router_adapter_out_max_payload_width_p512_len_width_p8_cord_width_p8_flit_width_p64
  adapter_out
  (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .link_i(link_i),
    .link_o({ link_o_stubbed_v_v_, link_o[64:64], link_o_stubbed_v_data__63_, link_o_stubbed_v_data__62_, link_o_stubbed_v_data__61_, link_o_stubbed_v_data__60_, link_o_stubbed_v_data__59_, link_o_stubbed_v_data__58_, link_o_stubbed_v_data__57_, link_o_stubbed_v_data__56_, link_o_stubbed_v_data__55_, link_o_stubbed_v_data__54_, link_o_stubbed_v_data__53_, link_o_stubbed_v_data__52_, link_o_stubbed_v_data__51_, link_o_stubbed_v_data__50_, link_o_stubbed_v_data__49_, link_o_stubbed_v_data__48_, link_o_stubbed_v_data__47_, link_o_stubbed_v_data__46_, link_o_stubbed_v_data__45_, link_o_stubbed_v_data__44_, link_o_stubbed_v_data__43_, link_o_stubbed_v_data__42_, link_o_stubbed_v_data__41_, link_o_stubbed_v_data__40_, link_o_stubbed_v_data__39_, link_o_stubbed_v_data__38_, link_o_stubbed_v_data__37_, link_o_stubbed_v_data__36_, link_o_stubbed_v_data__35_, link_o_stubbed_v_data__34_, link_o_stubbed_v_data__33_, link_o_stubbed_v_data__32_, link_o_stubbed_v_data__31_, link_o_stubbed_v_data__30_, link_o_stubbed_v_data__29_, link_o_stubbed_v_data__28_, link_o_stubbed_v_data__27_, link_o_stubbed_v_data__26_, link_o_stubbed_v_data__25_, link_o_stubbed_v_data__24_, link_o_stubbed_v_data__23_, link_o_stubbed_v_data__22_, link_o_stubbed_v_data__21_, link_o_stubbed_v_data__20_, link_o_stubbed_v_data__19_, link_o_stubbed_v_data__18_, link_o_stubbed_v_data__17_, link_o_stubbed_v_data__16_, link_o_stubbed_v_data__15_, link_o_stubbed_v_data__14_, link_o_stubbed_v_data__13_, link_o_stubbed_v_data__12_, link_o_stubbed_v_data__11_, link_o_stubbed_v_data__10_, link_o_stubbed_v_data__9_, link_o_stubbed_v_data__8_, link_o_stubbed_v_data__7_, link_o_stubbed_v_data__6_, link_o_stubbed_v_data__5_, link_o_stubbed_v_data__4_, link_o_stubbed_v_data__3_, link_o_stubbed_v_data__2_, link_o_stubbed_v_data__1_, link_o_stubbed_v_data__0_ }),
    .packet_o(packet_o),
    .v_o(v_o),
    .yumi_i(yumi_i)
  );


endmodule

