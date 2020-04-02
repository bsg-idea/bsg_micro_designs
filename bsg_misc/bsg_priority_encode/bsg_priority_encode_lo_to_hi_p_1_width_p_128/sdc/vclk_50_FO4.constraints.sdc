###################################################################

# Created by write_sdc on Sun Jan 19 21:44:20 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports {addr_o[6]}]
set_load -pin_load ${PIN_LOAD} [get_ports {addr_o[5]}]
set_load -pin_load ${PIN_LOAD} [get_ports {addr_o[4]}]
set_load -pin_load ${PIN_LOAD} [get_ports {addr_o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {addr_o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {addr_o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {addr_o[0]}]
set_load -pin_load ${PIN_LOAD} [get_ports v_o]
create_clock -name vclk  -period ${FO4_50} -waveform {0 ${FO4_50_DIV_2}}
set_clock_uncertainty 0  [get_clocks vclk]
set_input_delay -clock vclk  0  [get_ports {i[127]}]
set_input_delay -clock vclk  0  [get_ports {i[126]}]
set_input_delay -clock vclk  0  [get_ports {i[125]}]
set_input_delay -clock vclk  0  [get_ports {i[124]}]
set_input_delay -clock vclk  0  [get_ports {i[123]}]
set_input_delay -clock vclk  0  [get_ports {i[122]}]
set_input_delay -clock vclk  0  [get_ports {i[121]}]
set_input_delay -clock vclk  0  [get_ports {i[120]}]
set_input_delay -clock vclk  0  [get_ports {i[119]}]
set_input_delay -clock vclk  0  [get_ports {i[118]}]
set_input_delay -clock vclk  0  [get_ports {i[117]}]
set_input_delay -clock vclk  0  [get_ports {i[116]}]
set_input_delay -clock vclk  0  [get_ports {i[115]}]
set_input_delay -clock vclk  0  [get_ports {i[114]}]
set_input_delay -clock vclk  0  [get_ports {i[113]}]
set_input_delay -clock vclk  0  [get_ports {i[112]}]
set_input_delay -clock vclk  0  [get_ports {i[111]}]
set_input_delay -clock vclk  0  [get_ports {i[110]}]
set_input_delay -clock vclk  0  [get_ports {i[109]}]
set_input_delay -clock vclk  0  [get_ports {i[108]}]
set_input_delay -clock vclk  0  [get_ports {i[107]}]
set_input_delay -clock vclk  0  [get_ports {i[106]}]
set_input_delay -clock vclk  0  [get_ports {i[105]}]
set_input_delay -clock vclk  0  [get_ports {i[104]}]
set_input_delay -clock vclk  0  [get_ports {i[103]}]
set_input_delay -clock vclk  0  [get_ports {i[102]}]
set_input_delay -clock vclk  0  [get_ports {i[101]}]
set_input_delay -clock vclk  0  [get_ports {i[100]}]
set_input_delay -clock vclk  0  [get_ports {i[99]}]
set_input_delay -clock vclk  0  [get_ports {i[98]}]
set_input_delay -clock vclk  0  [get_ports {i[97]}]
set_input_delay -clock vclk  0  [get_ports {i[96]}]
set_input_delay -clock vclk  0  [get_ports {i[95]}]
set_input_delay -clock vclk  0  [get_ports {i[94]}]
set_input_delay -clock vclk  0  [get_ports {i[93]}]
set_input_delay -clock vclk  0  [get_ports {i[92]}]
set_input_delay -clock vclk  0  [get_ports {i[91]}]
set_input_delay -clock vclk  0  [get_ports {i[90]}]
set_input_delay -clock vclk  0  [get_ports {i[89]}]
set_input_delay -clock vclk  0  [get_ports {i[88]}]
set_input_delay -clock vclk  0  [get_ports {i[87]}]
set_input_delay -clock vclk  0  [get_ports {i[86]}]
set_input_delay -clock vclk  0  [get_ports {i[85]}]
set_input_delay -clock vclk  0  [get_ports {i[84]}]
set_input_delay -clock vclk  0  [get_ports {i[83]}]
set_input_delay -clock vclk  0  [get_ports {i[82]}]
set_input_delay -clock vclk  0  [get_ports {i[81]}]
set_input_delay -clock vclk  0  [get_ports {i[80]}]
set_input_delay -clock vclk  0  [get_ports {i[79]}]
set_input_delay -clock vclk  0  [get_ports {i[78]}]
set_input_delay -clock vclk  0  [get_ports {i[77]}]
set_input_delay -clock vclk  0  [get_ports {i[76]}]
set_input_delay -clock vclk  0  [get_ports {i[75]}]
set_input_delay -clock vclk  0  [get_ports {i[74]}]
set_input_delay -clock vclk  0  [get_ports {i[73]}]
set_input_delay -clock vclk  0  [get_ports {i[72]}]
set_input_delay -clock vclk  0  [get_ports {i[71]}]
set_input_delay -clock vclk  0  [get_ports {i[70]}]
set_input_delay -clock vclk  0  [get_ports {i[69]}]
set_input_delay -clock vclk  0  [get_ports {i[68]}]
set_input_delay -clock vclk  0  [get_ports {i[67]}]
set_input_delay -clock vclk  0  [get_ports {i[66]}]
set_input_delay -clock vclk  0  [get_ports {i[65]}]
set_input_delay -clock vclk  0  [get_ports {i[64]}]
set_input_delay -clock vclk  0  [get_ports {i[63]}]
set_input_delay -clock vclk  0  [get_ports {i[62]}]
set_input_delay -clock vclk  0  [get_ports {i[61]}]
set_input_delay -clock vclk  0  [get_ports {i[60]}]
set_input_delay -clock vclk  0  [get_ports {i[59]}]
set_input_delay -clock vclk  0  [get_ports {i[58]}]
set_input_delay -clock vclk  0  [get_ports {i[57]}]
set_input_delay -clock vclk  0  [get_ports {i[56]}]
set_input_delay -clock vclk  0  [get_ports {i[55]}]
set_input_delay -clock vclk  0  [get_ports {i[54]}]
set_input_delay -clock vclk  0  [get_ports {i[53]}]
set_input_delay -clock vclk  0  [get_ports {i[52]}]
set_input_delay -clock vclk  0  [get_ports {i[51]}]
set_input_delay -clock vclk  0  [get_ports {i[50]}]
set_input_delay -clock vclk  0  [get_ports {i[49]}]
set_input_delay -clock vclk  0  [get_ports {i[48]}]
set_input_delay -clock vclk  0  [get_ports {i[47]}]
set_input_delay -clock vclk  0  [get_ports {i[46]}]
set_input_delay -clock vclk  0  [get_ports {i[45]}]
set_input_delay -clock vclk  0  [get_ports {i[44]}]
set_input_delay -clock vclk  0  [get_ports {i[43]}]
set_input_delay -clock vclk  0  [get_ports {i[42]}]
set_input_delay -clock vclk  0  [get_ports {i[41]}]
set_input_delay -clock vclk  0  [get_ports {i[40]}]
set_input_delay -clock vclk  0  [get_ports {i[39]}]
set_input_delay -clock vclk  0  [get_ports {i[38]}]
set_input_delay -clock vclk  0  [get_ports {i[37]}]
set_input_delay -clock vclk  0  [get_ports {i[36]}]
set_input_delay -clock vclk  0  [get_ports {i[35]}]
set_input_delay -clock vclk  0  [get_ports {i[34]}]
set_input_delay -clock vclk  0  [get_ports {i[33]}]
set_input_delay -clock vclk  0  [get_ports {i[32]}]
set_input_delay -clock vclk  0  [get_ports {i[31]}]
set_input_delay -clock vclk  0  [get_ports {i[30]}]
set_input_delay -clock vclk  0  [get_ports {i[29]}]
set_input_delay -clock vclk  0  [get_ports {i[28]}]
set_input_delay -clock vclk  0  [get_ports {i[27]}]
set_input_delay -clock vclk  0  [get_ports {i[26]}]
set_input_delay -clock vclk  0  [get_ports {i[25]}]
set_input_delay -clock vclk  0  [get_ports {i[24]}]
set_input_delay -clock vclk  0  [get_ports {i[23]}]
set_input_delay -clock vclk  0  [get_ports {i[22]}]
set_input_delay -clock vclk  0  [get_ports {i[21]}]
set_input_delay -clock vclk  0  [get_ports {i[20]}]
set_input_delay -clock vclk  0  [get_ports {i[19]}]
set_input_delay -clock vclk  0  [get_ports {i[18]}]
set_input_delay -clock vclk  0  [get_ports {i[17]}]
set_input_delay -clock vclk  0  [get_ports {i[16]}]
set_input_delay -clock vclk  0  [get_ports {i[15]}]
set_input_delay -clock vclk  0  [get_ports {i[14]}]
set_input_delay -clock vclk  0  [get_ports {i[13]}]
set_input_delay -clock vclk  0  [get_ports {i[12]}]
set_input_delay -clock vclk  0  [get_ports {i[11]}]
set_input_delay -clock vclk  0  [get_ports {i[10]}]
set_input_delay -clock vclk  0  [get_ports {i[9]}]
set_input_delay -clock vclk  0  [get_ports {i[8]}]
set_input_delay -clock vclk  0  [get_ports {i[7]}]
set_input_delay -clock vclk  0  [get_ports {i[6]}]
set_input_delay -clock vclk  0  [get_ports {i[5]}]
set_input_delay -clock vclk  0  [get_ports {i[4]}]
set_input_delay -clock vclk  0  [get_ports {i[3]}]
set_input_delay -clock vclk  0  [get_ports {i[2]}]
set_input_delay -clock vclk  0  [get_ports {i[1]}]
set_input_delay -clock vclk  0  [get_ports {i[0]}]
set_output_delay -clock vclk  0  [get_ports {addr_o[6]}]
set_output_delay -clock vclk  0  [get_ports {addr_o[5]}]
set_output_delay -clock vclk  0  [get_ports {addr_o[4]}]
set_output_delay -clock vclk  0  [get_ports {addr_o[3]}]
set_output_delay -clock vclk  0  [get_ports {addr_o[2]}]
set_output_delay -clock vclk  0  [get_ports {addr_o[1]}]
set_output_delay -clock vclk  0  [get_ports {addr_o[0]}]
set_output_delay -clock vclk  0  [get_ports v_o]
