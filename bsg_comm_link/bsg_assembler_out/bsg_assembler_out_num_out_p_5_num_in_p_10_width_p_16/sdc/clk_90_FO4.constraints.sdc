###################################################################

# Created by write_sdc on Tue Feb 14 04:32:18 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports ready_o]
set_load -pin_load 1 [get_ports {valid_o[4]}]
set_load -pin_load 1 [get_ports {valid_o[3]}]
set_load -pin_load 1 [get_ports {valid_o[2]}]
set_load -pin_load 1 [get_ports {valid_o[1]}]
set_load -pin_load 1 [get_ports {valid_o[0]}]
set_load -pin_load 1 [get_ports {data_o[79]}]
set_load -pin_load 1 [get_ports {data_o[78]}]
set_load -pin_load 1 [get_ports {data_o[77]}]
set_load -pin_load 1 [get_ports {data_o[76]}]
set_load -pin_load 1 [get_ports {data_o[75]}]
set_load -pin_load 1 [get_ports {data_o[74]}]
set_load -pin_load 1 [get_ports {data_o[73]}]
set_load -pin_load 1 [get_ports {data_o[72]}]
set_load -pin_load 1 [get_ports {data_o[71]}]
set_load -pin_load 1 [get_ports {data_o[70]}]
set_load -pin_load 1 [get_ports {data_o[69]}]
set_load -pin_load 1 [get_ports {data_o[68]}]
set_load -pin_load 1 [get_ports {data_o[67]}]
set_load -pin_load 1 [get_ports {data_o[66]}]
set_load -pin_load 1 [get_ports {data_o[65]}]
set_load -pin_load 1 [get_ports {data_o[64]}]
set_load -pin_load 1 [get_ports {data_o[63]}]
set_load -pin_load 1 [get_ports {data_o[62]}]
set_load -pin_load 1 [get_ports {data_o[61]}]
set_load -pin_load 1 [get_ports {data_o[60]}]
set_load -pin_load 1 [get_ports {data_o[59]}]
set_load -pin_load 1 [get_ports {data_o[58]}]
set_load -pin_load 1 [get_ports {data_o[57]}]
set_load -pin_load 1 [get_ports {data_o[56]}]
set_load -pin_load 1 [get_ports {data_o[55]}]
set_load -pin_load 1 [get_ports {data_o[54]}]
set_load -pin_load 1 [get_ports {data_o[53]}]
set_load -pin_load 1 [get_ports {data_o[52]}]
set_load -pin_load 1 [get_ports {data_o[51]}]
set_load -pin_load 1 [get_ports {data_o[50]}]
set_load -pin_load 1 [get_ports {data_o[49]}]
set_load -pin_load 1 [get_ports {data_o[48]}]
set_load -pin_load 1 [get_ports {data_o[47]}]
set_load -pin_load 1 [get_ports {data_o[46]}]
set_load -pin_load 1 [get_ports {data_o[45]}]
set_load -pin_load 1 [get_ports {data_o[44]}]
set_load -pin_load 1 [get_ports {data_o[43]}]
set_load -pin_load 1 [get_ports {data_o[42]}]
set_load -pin_load 1 [get_ports {data_o[41]}]
set_load -pin_load 1 [get_ports {data_o[40]}]
set_load -pin_load 1 [get_ports {data_o[39]}]
set_load -pin_load 1 [get_ports {data_o[38]}]
set_load -pin_load 1 [get_ports {data_o[37]}]
set_load -pin_load 1 [get_ports {data_o[36]}]
set_load -pin_load 1 [get_ports {data_o[35]}]
set_load -pin_load 1 [get_ports {data_o[34]}]
set_load -pin_load 1 [get_ports {data_o[33]}]
set_load -pin_load 1 [get_ports {data_o[32]}]
set_load -pin_load 1 [get_ports {data_o[31]}]
set_load -pin_load 1 [get_ports {data_o[30]}]
set_load -pin_load 1 [get_ports {data_o[29]}]
set_load -pin_load 1 [get_ports {data_o[28]}]
set_load -pin_load 1 [get_ports {data_o[27]}]
set_load -pin_load 1 [get_ports {data_o[26]}]
set_load -pin_load 1 [get_ports {data_o[25]}]
set_load -pin_load 1 [get_ports {data_o[24]}]
set_load -pin_load 1 [get_ports {data_o[23]}]
set_load -pin_load 1 [get_ports {data_o[22]}]
set_load -pin_load 1 [get_ports {data_o[21]}]
set_load -pin_load 1 [get_ports {data_o[20]}]
set_load -pin_load 1 [get_ports {data_o[19]}]
set_load -pin_load 1 [get_ports {data_o[18]}]
set_load -pin_load 1 [get_ports {data_o[17]}]
set_load -pin_load 1 [get_ports {data_o[16]}]
set_load -pin_load 1 [get_ports {data_o[15]}]
set_load -pin_load 1 [get_ports {data_o[14]}]
set_load -pin_load 1 [get_ports {data_o[13]}]
set_load -pin_load 1 [get_ports {data_o[12]}]
set_load -pin_load 1 [get_ports {data_o[11]}]
set_load -pin_load 1 [get_ports {data_o[10]}]
set_load -pin_load 1 [get_ports {data_o[9]}]
set_load -pin_load 1 [get_ports {data_o[8]}]
set_load -pin_load 1 [get_ports {data_o[7]}]
set_load -pin_load 1 [get_ports {data_o[6]}]
set_load -pin_load 1 [get_ports {data_o[5]}]
set_load -pin_load 1 [get_ports {data_o[4]}]
set_load -pin_load 1 [get_ports {data_o[3]}]
set_load -pin_load 1 [get_ports {data_o[2]}]
set_load -pin_load 1 [get_ports {data_o[1]}]
set_load -pin_load 1 [get_ports {data_o[0]}]
create_clock [get_ports clk]  -period 90  -waveform {0 45}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk]
set_input_delay -clock clk  0  [get_ports reset]
set_input_delay -clock clk  0  [get_ports calibration_done_i]
set_input_delay -clock clk  0  [get_ports valid_i]
set_input_delay -clock clk  0  [get_ports {data_i[159]}]
set_input_delay -clock clk  0  [get_ports {data_i[158]}]
set_input_delay -clock clk  0  [get_ports {data_i[157]}]
set_input_delay -clock clk  0  [get_ports {data_i[156]}]
set_input_delay -clock clk  0  [get_ports {data_i[155]}]
set_input_delay -clock clk  0  [get_ports {data_i[154]}]
set_input_delay -clock clk  0  [get_ports {data_i[153]}]
set_input_delay -clock clk  0  [get_ports {data_i[152]}]
set_input_delay -clock clk  0  [get_ports {data_i[151]}]
set_input_delay -clock clk  0  [get_ports {data_i[150]}]
set_input_delay -clock clk  0  [get_ports {data_i[149]}]
set_input_delay -clock clk  0  [get_ports {data_i[148]}]
set_input_delay -clock clk  0  [get_ports {data_i[147]}]
set_input_delay -clock clk  0  [get_ports {data_i[146]}]
set_input_delay -clock clk  0  [get_ports {data_i[145]}]
set_input_delay -clock clk  0  [get_ports {data_i[144]}]
set_input_delay -clock clk  0  [get_ports {data_i[143]}]
set_input_delay -clock clk  0  [get_ports {data_i[142]}]
set_input_delay -clock clk  0  [get_ports {data_i[141]}]
set_input_delay -clock clk  0  [get_ports {data_i[140]}]
set_input_delay -clock clk  0  [get_ports {data_i[139]}]
set_input_delay -clock clk  0  [get_ports {data_i[138]}]
set_input_delay -clock clk  0  [get_ports {data_i[137]}]
set_input_delay -clock clk  0  [get_ports {data_i[136]}]
set_input_delay -clock clk  0  [get_ports {data_i[135]}]
set_input_delay -clock clk  0  [get_ports {data_i[134]}]
set_input_delay -clock clk  0  [get_ports {data_i[133]}]
set_input_delay -clock clk  0  [get_ports {data_i[132]}]
set_input_delay -clock clk  0  [get_ports {data_i[131]}]
set_input_delay -clock clk  0  [get_ports {data_i[130]}]
set_input_delay -clock clk  0  [get_ports {data_i[129]}]
set_input_delay -clock clk  0  [get_ports {data_i[128]}]
set_input_delay -clock clk  0  [get_ports {data_i[127]}]
set_input_delay -clock clk  0  [get_ports {data_i[126]}]
set_input_delay -clock clk  0  [get_ports {data_i[125]}]
set_input_delay -clock clk  0  [get_ports {data_i[124]}]
set_input_delay -clock clk  0  [get_ports {data_i[123]}]
set_input_delay -clock clk  0  [get_ports {data_i[122]}]
set_input_delay -clock clk  0  [get_ports {data_i[121]}]
set_input_delay -clock clk  0  [get_ports {data_i[120]}]
set_input_delay -clock clk  0  [get_ports {data_i[119]}]
set_input_delay -clock clk  0  [get_ports {data_i[118]}]
set_input_delay -clock clk  0  [get_ports {data_i[117]}]
set_input_delay -clock clk  0  [get_ports {data_i[116]}]
set_input_delay -clock clk  0  [get_ports {data_i[115]}]
set_input_delay -clock clk  0  [get_ports {data_i[114]}]
set_input_delay -clock clk  0  [get_ports {data_i[113]}]
set_input_delay -clock clk  0  [get_ports {data_i[112]}]
set_input_delay -clock clk  0  [get_ports {data_i[111]}]
set_input_delay -clock clk  0  [get_ports {data_i[110]}]
set_input_delay -clock clk  0  [get_ports {data_i[109]}]
set_input_delay -clock clk  0  [get_ports {data_i[108]}]
set_input_delay -clock clk  0  [get_ports {data_i[107]}]
set_input_delay -clock clk  0  [get_ports {data_i[106]}]
set_input_delay -clock clk  0  [get_ports {data_i[105]}]
set_input_delay -clock clk  0  [get_ports {data_i[104]}]
set_input_delay -clock clk  0  [get_ports {data_i[103]}]
set_input_delay -clock clk  0  [get_ports {data_i[102]}]
set_input_delay -clock clk  0  [get_ports {data_i[101]}]
set_input_delay -clock clk  0  [get_ports {data_i[100]}]
set_input_delay -clock clk  0  [get_ports {data_i[99]}]
set_input_delay -clock clk  0  [get_ports {data_i[98]}]
set_input_delay -clock clk  0  [get_ports {data_i[97]}]
set_input_delay -clock clk  0  [get_ports {data_i[96]}]
set_input_delay -clock clk  0  [get_ports {data_i[95]}]
set_input_delay -clock clk  0  [get_ports {data_i[94]}]
set_input_delay -clock clk  0  [get_ports {data_i[93]}]
set_input_delay -clock clk  0  [get_ports {data_i[92]}]
set_input_delay -clock clk  0  [get_ports {data_i[91]}]
set_input_delay -clock clk  0  [get_ports {data_i[90]}]
set_input_delay -clock clk  0  [get_ports {data_i[89]}]
set_input_delay -clock clk  0  [get_ports {data_i[88]}]
set_input_delay -clock clk  0  [get_ports {data_i[87]}]
set_input_delay -clock clk  0  [get_ports {data_i[86]}]
set_input_delay -clock clk  0  [get_ports {data_i[85]}]
set_input_delay -clock clk  0  [get_ports {data_i[84]}]
set_input_delay -clock clk  0  [get_ports {data_i[83]}]
set_input_delay -clock clk  0  [get_ports {data_i[82]}]
set_input_delay -clock clk  0  [get_ports {data_i[81]}]
set_input_delay -clock clk  0  [get_ports {data_i[80]}]
set_input_delay -clock clk  0  [get_ports {data_i[79]}]
set_input_delay -clock clk  0  [get_ports {data_i[78]}]
set_input_delay -clock clk  0  [get_ports {data_i[77]}]
set_input_delay -clock clk  0  [get_ports {data_i[76]}]
set_input_delay -clock clk  0  [get_ports {data_i[75]}]
set_input_delay -clock clk  0  [get_ports {data_i[74]}]
set_input_delay -clock clk  0  [get_ports {data_i[73]}]
set_input_delay -clock clk  0  [get_ports {data_i[72]}]
set_input_delay -clock clk  0  [get_ports {data_i[71]}]
set_input_delay -clock clk  0  [get_ports {data_i[70]}]
set_input_delay -clock clk  0  [get_ports {data_i[69]}]
set_input_delay -clock clk  0  [get_ports {data_i[68]}]
set_input_delay -clock clk  0  [get_ports {data_i[67]}]
set_input_delay -clock clk  0  [get_ports {data_i[66]}]
set_input_delay -clock clk  0  [get_ports {data_i[65]}]
set_input_delay -clock clk  0  [get_ports {data_i[64]}]
set_input_delay -clock clk  0  [get_ports {data_i[63]}]
set_input_delay -clock clk  0  [get_ports {data_i[62]}]
set_input_delay -clock clk  0  [get_ports {data_i[61]}]
set_input_delay -clock clk  0  [get_ports {data_i[60]}]
set_input_delay -clock clk  0  [get_ports {data_i[59]}]
set_input_delay -clock clk  0  [get_ports {data_i[58]}]
set_input_delay -clock clk  0  [get_ports {data_i[57]}]
set_input_delay -clock clk  0  [get_ports {data_i[56]}]
set_input_delay -clock clk  0  [get_ports {data_i[55]}]
set_input_delay -clock clk  0  [get_ports {data_i[54]}]
set_input_delay -clock clk  0  [get_ports {data_i[53]}]
set_input_delay -clock clk  0  [get_ports {data_i[52]}]
set_input_delay -clock clk  0  [get_ports {data_i[51]}]
set_input_delay -clock clk  0  [get_ports {data_i[50]}]
set_input_delay -clock clk  0  [get_ports {data_i[49]}]
set_input_delay -clock clk  0  [get_ports {data_i[48]}]
set_input_delay -clock clk  0  [get_ports {data_i[47]}]
set_input_delay -clock clk  0  [get_ports {data_i[46]}]
set_input_delay -clock clk  0  [get_ports {data_i[45]}]
set_input_delay -clock clk  0  [get_ports {data_i[44]}]
set_input_delay -clock clk  0  [get_ports {data_i[43]}]
set_input_delay -clock clk  0  [get_ports {data_i[42]}]
set_input_delay -clock clk  0  [get_ports {data_i[41]}]
set_input_delay -clock clk  0  [get_ports {data_i[40]}]
set_input_delay -clock clk  0  [get_ports {data_i[39]}]
set_input_delay -clock clk  0  [get_ports {data_i[38]}]
set_input_delay -clock clk  0  [get_ports {data_i[37]}]
set_input_delay -clock clk  0  [get_ports {data_i[36]}]
set_input_delay -clock clk  0  [get_ports {data_i[35]}]
set_input_delay -clock clk  0  [get_ports {data_i[34]}]
set_input_delay -clock clk  0  [get_ports {data_i[33]}]
set_input_delay -clock clk  0  [get_ports {data_i[32]}]
set_input_delay -clock clk  0  [get_ports {data_i[31]}]
set_input_delay -clock clk  0  [get_ports {data_i[30]}]
set_input_delay -clock clk  0  [get_ports {data_i[29]}]
set_input_delay -clock clk  0  [get_ports {data_i[28]}]
set_input_delay -clock clk  0  [get_ports {data_i[27]}]
set_input_delay -clock clk  0  [get_ports {data_i[26]}]
set_input_delay -clock clk  0  [get_ports {data_i[25]}]
set_input_delay -clock clk  0  [get_ports {data_i[24]}]
set_input_delay -clock clk  0  [get_ports {data_i[23]}]
set_input_delay -clock clk  0  [get_ports {data_i[22]}]
set_input_delay -clock clk  0  [get_ports {data_i[21]}]
set_input_delay -clock clk  0  [get_ports {data_i[20]}]
set_input_delay -clock clk  0  [get_ports {data_i[19]}]
set_input_delay -clock clk  0  [get_ports {data_i[18]}]
set_input_delay -clock clk  0  [get_ports {data_i[17]}]
set_input_delay -clock clk  0  [get_ports {data_i[16]}]
set_input_delay -clock clk  0  [get_ports {data_i[15]}]
set_input_delay -clock clk  0  [get_ports {data_i[14]}]
set_input_delay -clock clk  0  [get_ports {data_i[13]}]
set_input_delay -clock clk  0  [get_ports {data_i[12]}]
set_input_delay -clock clk  0  [get_ports {data_i[11]}]
set_input_delay -clock clk  0  [get_ports {data_i[10]}]
set_input_delay -clock clk  0  [get_ports {data_i[9]}]
set_input_delay -clock clk  0  [get_ports {data_i[8]}]
set_input_delay -clock clk  0  [get_ports {data_i[7]}]
set_input_delay -clock clk  0  [get_ports {data_i[6]}]
set_input_delay -clock clk  0  [get_ports {data_i[5]}]
set_input_delay -clock clk  0  [get_ports {data_i[4]}]
set_input_delay -clock clk  0  [get_ports {data_i[3]}]
set_input_delay -clock clk  0  [get_ports {data_i[2]}]
set_input_delay -clock clk  0  [get_ports {data_i[1]}]
set_input_delay -clock clk  0  [get_ports {data_i[0]}]
set_input_delay -clock clk  0  [get_ports {in_top_channel_i[3]}]
set_input_delay -clock clk  0  [get_ports {in_top_channel_i[2]}]
set_input_delay -clock clk  0  [get_ports {in_top_channel_i[1]}]
set_input_delay -clock clk  0  [get_ports {in_top_channel_i[0]}]
set_input_delay -clock clk  0  [get_ports {out_top_channel_i[2]}]
set_input_delay -clock clk  0  [get_ports {out_top_channel_i[1]}]
set_input_delay -clock clk  0  [get_ports {out_top_channel_i[0]}]
set_input_delay -clock clk  0  [get_ports {ready_i[4]}]
set_input_delay -clock clk  0  [get_ports {ready_i[3]}]
set_input_delay -clock clk  0  [get_ports {ready_i[2]}]
set_input_delay -clock clk  0  [get_ports {ready_i[1]}]
set_input_delay -clock clk  0  [get_ports {ready_i[0]}]
set_output_delay -clock clk  0  [get_ports ready_o]
set_output_delay -clock clk  0  [get_ports {valid_o[4]}]
set_output_delay -clock clk  0  [get_ports {valid_o[3]}]
set_output_delay -clock clk  0  [get_ports {valid_o[2]}]
set_output_delay -clock clk  0  [get_ports {valid_o[1]}]
set_output_delay -clock clk  0  [get_ports {valid_o[0]}]
set_output_delay -clock clk  0  [get_ports {data_o[79]}]
set_output_delay -clock clk  0  [get_ports {data_o[78]}]
set_output_delay -clock clk  0  [get_ports {data_o[77]}]
set_output_delay -clock clk  0  [get_ports {data_o[76]}]
set_output_delay -clock clk  0  [get_ports {data_o[75]}]
set_output_delay -clock clk  0  [get_ports {data_o[74]}]
set_output_delay -clock clk  0  [get_ports {data_o[73]}]
set_output_delay -clock clk  0  [get_ports {data_o[72]}]
set_output_delay -clock clk  0  [get_ports {data_o[71]}]
set_output_delay -clock clk  0  [get_ports {data_o[70]}]
set_output_delay -clock clk  0  [get_ports {data_o[69]}]
set_output_delay -clock clk  0  [get_ports {data_o[68]}]
set_output_delay -clock clk  0  [get_ports {data_o[67]}]
set_output_delay -clock clk  0  [get_ports {data_o[66]}]
set_output_delay -clock clk  0  [get_ports {data_o[65]}]
set_output_delay -clock clk  0  [get_ports {data_o[64]}]
set_output_delay -clock clk  0  [get_ports {data_o[63]}]
set_output_delay -clock clk  0  [get_ports {data_o[62]}]
set_output_delay -clock clk  0  [get_ports {data_o[61]}]
set_output_delay -clock clk  0  [get_ports {data_o[60]}]
set_output_delay -clock clk  0  [get_ports {data_o[59]}]
set_output_delay -clock clk  0  [get_ports {data_o[58]}]
set_output_delay -clock clk  0  [get_ports {data_o[57]}]
set_output_delay -clock clk  0  [get_ports {data_o[56]}]
set_output_delay -clock clk  0  [get_ports {data_o[55]}]
set_output_delay -clock clk  0  [get_ports {data_o[54]}]
set_output_delay -clock clk  0  [get_ports {data_o[53]}]
set_output_delay -clock clk  0  [get_ports {data_o[52]}]
set_output_delay -clock clk  0  [get_ports {data_o[51]}]
set_output_delay -clock clk  0  [get_ports {data_o[50]}]
set_output_delay -clock clk  0  [get_ports {data_o[49]}]
set_output_delay -clock clk  0  [get_ports {data_o[48]}]
set_output_delay -clock clk  0  [get_ports {data_o[47]}]
set_output_delay -clock clk  0  [get_ports {data_o[46]}]
set_output_delay -clock clk  0  [get_ports {data_o[45]}]
set_output_delay -clock clk  0  [get_ports {data_o[44]}]
set_output_delay -clock clk  0  [get_ports {data_o[43]}]
set_output_delay -clock clk  0  [get_ports {data_o[42]}]
set_output_delay -clock clk  0  [get_ports {data_o[41]}]
set_output_delay -clock clk  0  [get_ports {data_o[40]}]
set_output_delay -clock clk  0  [get_ports {data_o[39]}]
set_output_delay -clock clk  0  [get_ports {data_o[38]}]
set_output_delay -clock clk  0  [get_ports {data_o[37]}]
set_output_delay -clock clk  0  [get_ports {data_o[36]}]
set_output_delay -clock clk  0  [get_ports {data_o[35]}]
set_output_delay -clock clk  0  [get_ports {data_o[34]}]
set_output_delay -clock clk  0  [get_ports {data_o[33]}]
set_output_delay -clock clk  0  [get_ports {data_o[32]}]
set_output_delay -clock clk  0  [get_ports {data_o[31]}]
set_output_delay -clock clk  0  [get_ports {data_o[30]}]
set_output_delay -clock clk  0  [get_ports {data_o[29]}]
set_output_delay -clock clk  0  [get_ports {data_o[28]}]
set_output_delay -clock clk  0  [get_ports {data_o[27]}]
set_output_delay -clock clk  0  [get_ports {data_o[26]}]
set_output_delay -clock clk  0  [get_ports {data_o[25]}]
set_output_delay -clock clk  0  [get_ports {data_o[24]}]
set_output_delay -clock clk  0  [get_ports {data_o[23]}]
set_output_delay -clock clk  0  [get_ports {data_o[22]}]
set_output_delay -clock clk  0  [get_ports {data_o[21]}]
set_output_delay -clock clk  0  [get_ports {data_o[20]}]
set_output_delay -clock clk  0  [get_ports {data_o[19]}]
set_output_delay -clock clk  0  [get_ports {data_o[18]}]
set_output_delay -clock clk  0  [get_ports {data_o[17]}]
set_output_delay -clock clk  0  [get_ports {data_o[16]}]
set_output_delay -clock clk  0  [get_ports {data_o[15]}]
set_output_delay -clock clk  0  [get_ports {data_o[14]}]
set_output_delay -clock clk  0  [get_ports {data_o[13]}]
set_output_delay -clock clk  0  [get_ports {data_o[12]}]
set_output_delay -clock clk  0  [get_ports {data_o[11]}]
set_output_delay -clock clk  0  [get_ports {data_o[10]}]
set_output_delay -clock clk  0  [get_ports {data_o[9]}]
set_output_delay -clock clk  0  [get_ports {data_o[8]}]
set_output_delay -clock clk  0  [get_ports {data_o[7]}]
set_output_delay -clock clk  0  [get_ports {data_o[6]}]
set_output_delay -clock clk  0  [get_ports {data_o[5]}]
set_output_delay -clock clk  0  [get_ports {data_o[4]}]
set_output_delay -clock clk  0  [get_ports {data_o[3]}]
set_output_delay -clock clk  0  [get_ports {data_o[2]}]
set_output_delay -clock clk  0  [get_ports {data_o[1]}]
set_output_delay -clock clk  0  [get_ports {data_o[0]}]
