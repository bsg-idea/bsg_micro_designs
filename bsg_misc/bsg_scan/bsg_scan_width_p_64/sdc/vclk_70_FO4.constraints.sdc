###################################################################

# Created by write_sdc on Sun Jan 19 21:51:32 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports {o[63]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[62]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[61]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[60]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[59]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[58]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[57]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[56]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[55]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[54]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[53]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[52]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[51]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[50]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[49]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[48]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[47]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[46]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[45]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[44]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[43]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[42]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[41]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[40]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[39]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[38]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[37]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[36]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[35]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[34]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[33]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[32]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[31]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[30]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[29]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[28]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[27]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[26]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[25]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[24]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[23]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[22]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[21]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[20]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[19]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[18]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[17]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[16]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[15]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[14]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[13]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[12]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[11]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[10]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[9]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[8]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[7]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[6]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[5]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[4]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[0]}]
create_clock -name vclk  -period ${FO4_70} -waveform {0 ${FO4_70_DIV_2}}
set_clock_uncertainty 0  [get_clocks vclk]
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
set_output_delay -clock vclk  0  [get_ports {o[63]}]
set_output_delay -clock vclk  0  [get_ports {o[62]}]
set_output_delay -clock vclk  0  [get_ports {o[61]}]
set_output_delay -clock vclk  0  [get_ports {o[60]}]
set_output_delay -clock vclk  0  [get_ports {o[59]}]
set_output_delay -clock vclk  0  [get_ports {o[58]}]
set_output_delay -clock vclk  0  [get_ports {o[57]}]
set_output_delay -clock vclk  0  [get_ports {o[56]}]
set_output_delay -clock vclk  0  [get_ports {o[55]}]
set_output_delay -clock vclk  0  [get_ports {o[54]}]
set_output_delay -clock vclk  0  [get_ports {o[53]}]
set_output_delay -clock vclk  0  [get_ports {o[52]}]
set_output_delay -clock vclk  0  [get_ports {o[51]}]
set_output_delay -clock vclk  0  [get_ports {o[50]}]
set_output_delay -clock vclk  0  [get_ports {o[49]}]
set_output_delay -clock vclk  0  [get_ports {o[48]}]
set_output_delay -clock vclk  0  [get_ports {o[47]}]
set_output_delay -clock vclk  0  [get_ports {o[46]}]
set_output_delay -clock vclk  0  [get_ports {o[45]}]
set_output_delay -clock vclk  0  [get_ports {o[44]}]
set_output_delay -clock vclk  0  [get_ports {o[43]}]
set_output_delay -clock vclk  0  [get_ports {o[42]}]
set_output_delay -clock vclk  0  [get_ports {o[41]}]
set_output_delay -clock vclk  0  [get_ports {o[40]}]
set_output_delay -clock vclk  0  [get_ports {o[39]}]
set_output_delay -clock vclk  0  [get_ports {o[38]}]
set_output_delay -clock vclk  0  [get_ports {o[37]}]
set_output_delay -clock vclk  0  [get_ports {o[36]}]
set_output_delay -clock vclk  0  [get_ports {o[35]}]
set_output_delay -clock vclk  0  [get_ports {o[34]}]
set_output_delay -clock vclk  0  [get_ports {o[33]}]
set_output_delay -clock vclk  0  [get_ports {o[32]}]
set_output_delay -clock vclk  0  [get_ports {o[31]}]
set_output_delay -clock vclk  0  [get_ports {o[30]}]
set_output_delay -clock vclk  0  [get_ports {o[29]}]
set_output_delay -clock vclk  0  [get_ports {o[28]}]
set_output_delay -clock vclk  0  [get_ports {o[27]}]
set_output_delay -clock vclk  0  [get_ports {o[26]}]
set_output_delay -clock vclk  0  [get_ports {o[25]}]
set_output_delay -clock vclk  0  [get_ports {o[24]}]
set_output_delay -clock vclk  0  [get_ports {o[23]}]
set_output_delay -clock vclk  0  [get_ports {o[22]}]
set_output_delay -clock vclk  0  [get_ports {o[21]}]
set_output_delay -clock vclk  0  [get_ports {o[20]}]
set_output_delay -clock vclk  0  [get_ports {o[19]}]
set_output_delay -clock vclk  0  [get_ports {o[18]}]
set_output_delay -clock vclk  0  [get_ports {o[17]}]
set_output_delay -clock vclk  0  [get_ports {o[16]}]
set_output_delay -clock vclk  0  [get_ports {o[15]}]
set_output_delay -clock vclk  0  [get_ports {o[14]}]
set_output_delay -clock vclk  0  [get_ports {o[13]}]
set_output_delay -clock vclk  0  [get_ports {o[12]}]
set_output_delay -clock vclk  0  [get_ports {o[11]}]
set_output_delay -clock vclk  0  [get_ports {o[10]}]
set_output_delay -clock vclk  0  [get_ports {o[9]}]
set_output_delay -clock vclk  0  [get_ports {o[8]}]
set_output_delay -clock vclk  0  [get_ports {o[7]}]
set_output_delay -clock vclk  0  [get_ports {o[6]}]
set_output_delay -clock vclk  0  [get_ports {o[5]}]
set_output_delay -clock vclk  0  [get_ports {o[4]}]
set_output_delay -clock vclk  0  [get_ports {o[3]}]
set_output_delay -clock vclk  0  [get_ports {o[2]}]
set_output_delay -clock vclk  0  [get_ports {o[1]}]
set_output_delay -clock vclk  0  [get_ports {o[0]}]
