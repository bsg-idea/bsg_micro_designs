###################################################################

# Created by write_sdc on Sun Jan 19 21:37:58 2020

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
create_clock -name vclk  -period ${FO4_50} -waveform {0 ${FO4_50_DIV_2}}
set_clock_uncertainty 0  [get_clocks vclk]
set_input_delay -clock vclk  0  [get_ports {i0[63]}]
set_input_delay -clock vclk  0  [get_ports {i0[62]}]
set_input_delay -clock vclk  0  [get_ports {i0[61]}]
set_input_delay -clock vclk  0  [get_ports {i0[60]}]
set_input_delay -clock vclk  0  [get_ports {i0[59]}]
set_input_delay -clock vclk  0  [get_ports {i0[58]}]
set_input_delay -clock vclk  0  [get_ports {i0[57]}]
set_input_delay -clock vclk  0  [get_ports {i0[56]}]
set_input_delay -clock vclk  0  [get_ports {i0[55]}]
set_input_delay -clock vclk  0  [get_ports {i0[54]}]
set_input_delay -clock vclk  0  [get_ports {i0[53]}]
set_input_delay -clock vclk  0  [get_ports {i0[52]}]
set_input_delay -clock vclk  0  [get_ports {i0[51]}]
set_input_delay -clock vclk  0  [get_ports {i0[50]}]
set_input_delay -clock vclk  0  [get_ports {i0[49]}]
set_input_delay -clock vclk  0  [get_ports {i0[48]}]
set_input_delay -clock vclk  0  [get_ports {i0[47]}]
set_input_delay -clock vclk  0  [get_ports {i0[46]}]
set_input_delay -clock vclk  0  [get_ports {i0[45]}]
set_input_delay -clock vclk  0  [get_ports {i0[44]}]
set_input_delay -clock vclk  0  [get_ports {i0[43]}]
set_input_delay -clock vclk  0  [get_ports {i0[42]}]
set_input_delay -clock vclk  0  [get_ports {i0[41]}]
set_input_delay -clock vclk  0  [get_ports {i0[40]}]
set_input_delay -clock vclk  0  [get_ports {i0[39]}]
set_input_delay -clock vclk  0  [get_ports {i0[38]}]
set_input_delay -clock vclk  0  [get_ports {i0[37]}]
set_input_delay -clock vclk  0  [get_ports {i0[36]}]
set_input_delay -clock vclk  0  [get_ports {i0[35]}]
set_input_delay -clock vclk  0  [get_ports {i0[34]}]
set_input_delay -clock vclk  0  [get_ports {i0[33]}]
set_input_delay -clock vclk  0  [get_ports {i0[32]}]
set_input_delay -clock vclk  0  [get_ports {i0[31]}]
set_input_delay -clock vclk  0  [get_ports {i0[30]}]
set_input_delay -clock vclk  0  [get_ports {i0[29]}]
set_input_delay -clock vclk  0  [get_ports {i0[28]}]
set_input_delay -clock vclk  0  [get_ports {i0[27]}]
set_input_delay -clock vclk  0  [get_ports {i0[26]}]
set_input_delay -clock vclk  0  [get_ports {i0[25]}]
set_input_delay -clock vclk  0  [get_ports {i0[24]}]
set_input_delay -clock vclk  0  [get_ports {i0[23]}]
set_input_delay -clock vclk  0  [get_ports {i0[22]}]
set_input_delay -clock vclk  0  [get_ports {i0[21]}]
set_input_delay -clock vclk  0  [get_ports {i0[20]}]
set_input_delay -clock vclk  0  [get_ports {i0[19]}]
set_input_delay -clock vclk  0  [get_ports {i0[18]}]
set_input_delay -clock vclk  0  [get_ports {i0[17]}]
set_input_delay -clock vclk  0  [get_ports {i0[16]}]
set_input_delay -clock vclk  0  [get_ports {i0[15]}]
set_input_delay -clock vclk  0  [get_ports {i0[14]}]
set_input_delay -clock vclk  0  [get_ports {i0[13]}]
set_input_delay -clock vclk  0  [get_ports {i0[12]}]
set_input_delay -clock vclk  0  [get_ports {i0[11]}]
set_input_delay -clock vclk  0  [get_ports {i0[10]}]
set_input_delay -clock vclk  0  [get_ports {i0[9]}]
set_input_delay -clock vclk  0  [get_ports {i0[8]}]
set_input_delay -clock vclk  0  [get_ports {i0[7]}]
set_input_delay -clock vclk  0  [get_ports {i0[6]}]
set_input_delay -clock vclk  0  [get_ports {i0[5]}]
set_input_delay -clock vclk  0  [get_ports {i0[4]}]
set_input_delay -clock vclk  0  [get_ports {i0[3]}]
set_input_delay -clock vclk  0  [get_ports {i0[2]}]
set_input_delay -clock vclk  0  [get_ports {i0[1]}]
set_input_delay -clock vclk  0  [get_ports {i0[0]}]
set_input_delay -clock vclk  0  [get_ports {i1[63]}]
set_input_delay -clock vclk  0  [get_ports {i1[62]}]
set_input_delay -clock vclk  0  [get_ports {i1[61]}]
set_input_delay -clock vclk  0  [get_ports {i1[60]}]
set_input_delay -clock vclk  0  [get_ports {i1[59]}]
set_input_delay -clock vclk  0  [get_ports {i1[58]}]
set_input_delay -clock vclk  0  [get_ports {i1[57]}]
set_input_delay -clock vclk  0  [get_ports {i1[56]}]
set_input_delay -clock vclk  0  [get_ports {i1[55]}]
set_input_delay -clock vclk  0  [get_ports {i1[54]}]
set_input_delay -clock vclk  0  [get_ports {i1[53]}]
set_input_delay -clock vclk  0  [get_ports {i1[52]}]
set_input_delay -clock vclk  0  [get_ports {i1[51]}]
set_input_delay -clock vclk  0  [get_ports {i1[50]}]
set_input_delay -clock vclk  0  [get_ports {i1[49]}]
set_input_delay -clock vclk  0  [get_ports {i1[48]}]
set_input_delay -clock vclk  0  [get_ports {i1[47]}]
set_input_delay -clock vclk  0  [get_ports {i1[46]}]
set_input_delay -clock vclk  0  [get_ports {i1[45]}]
set_input_delay -clock vclk  0  [get_ports {i1[44]}]
set_input_delay -clock vclk  0  [get_ports {i1[43]}]
set_input_delay -clock vclk  0  [get_ports {i1[42]}]
set_input_delay -clock vclk  0  [get_ports {i1[41]}]
set_input_delay -clock vclk  0  [get_ports {i1[40]}]
set_input_delay -clock vclk  0  [get_ports {i1[39]}]
set_input_delay -clock vclk  0  [get_ports {i1[38]}]
set_input_delay -clock vclk  0  [get_ports {i1[37]}]
set_input_delay -clock vclk  0  [get_ports {i1[36]}]
set_input_delay -clock vclk  0  [get_ports {i1[35]}]
set_input_delay -clock vclk  0  [get_ports {i1[34]}]
set_input_delay -clock vclk  0  [get_ports {i1[33]}]
set_input_delay -clock vclk  0  [get_ports {i1[32]}]
set_input_delay -clock vclk  0  [get_ports {i1[31]}]
set_input_delay -clock vclk  0  [get_ports {i1[30]}]
set_input_delay -clock vclk  0  [get_ports {i1[29]}]
set_input_delay -clock vclk  0  [get_ports {i1[28]}]
set_input_delay -clock vclk  0  [get_ports {i1[27]}]
set_input_delay -clock vclk  0  [get_ports {i1[26]}]
set_input_delay -clock vclk  0  [get_ports {i1[25]}]
set_input_delay -clock vclk  0  [get_ports {i1[24]}]
set_input_delay -clock vclk  0  [get_ports {i1[23]}]
set_input_delay -clock vclk  0  [get_ports {i1[22]}]
set_input_delay -clock vclk  0  [get_ports {i1[21]}]
set_input_delay -clock vclk  0  [get_ports {i1[20]}]
set_input_delay -clock vclk  0  [get_ports {i1[19]}]
set_input_delay -clock vclk  0  [get_ports {i1[18]}]
set_input_delay -clock vclk  0  [get_ports {i1[17]}]
set_input_delay -clock vclk  0  [get_ports {i1[16]}]
set_input_delay -clock vclk  0  [get_ports {i1[15]}]
set_input_delay -clock vclk  0  [get_ports {i1[14]}]
set_input_delay -clock vclk  0  [get_ports {i1[13]}]
set_input_delay -clock vclk  0  [get_ports {i1[12]}]
set_input_delay -clock vclk  0  [get_ports {i1[11]}]
set_input_delay -clock vclk  0  [get_ports {i1[10]}]
set_input_delay -clock vclk  0  [get_ports {i1[9]}]
set_input_delay -clock vclk  0  [get_ports {i1[8]}]
set_input_delay -clock vclk  0  [get_ports {i1[7]}]
set_input_delay -clock vclk  0  [get_ports {i1[6]}]
set_input_delay -clock vclk  0  [get_ports {i1[5]}]
set_input_delay -clock vclk  0  [get_ports {i1[4]}]
set_input_delay -clock vclk  0  [get_ports {i1[3]}]
set_input_delay -clock vclk  0  [get_ports {i1[2]}]
set_input_delay -clock vclk  0  [get_ports {i1[1]}]
set_input_delay -clock vclk  0  [get_ports {i1[0]}]
set_input_delay -clock vclk  0  [get_ports {i2[63]}]
set_input_delay -clock vclk  0  [get_ports {i2[62]}]
set_input_delay -clock vclk  0  [get_ports {i2[61]}]
set_input_delay -clock vclk  0  [get_ports {i2[60]}]
set_input_delay -clock vclk  0  [get_ports {i2[59]}]
set_input_delay -clock vclk  0  [get_ports {i2[58]}]
set_input_delay -clock vclk  0  [get_ports {i2[57]}]
set_input_delay -clock vclk  0  [get_ports {i2[56]}]
set_input_delay -clock vclk  0  [get_ports {i2[55]}]
set_input_delay -clock vclk  0  [get_ports {i2[54]}]
set_input_delay -clock vclk  0  [get_ports {i2[53]}]
set_input_delay -clock vclk  0  [get_ports {i2[52]}]
set_input_delay -clock vclk  0  [get_ports {i2[51]}]
set_input_delay -clock vclk  0  [get_ports {i2[50]}]
set_input_delay -clock vclk  0  [get_ports {i2[49]}]
set_input_delay -clock vclk  0  [get_ports {i2[48]}]
set_input_delay -clock vclk  0  [get_ports {i2[47]}]
set_input_delay -clock vclk  0  [get_ports {i2[46]}]
set_input_delay -clock vclk  0  [get_ports {i2[45]}]
set_input_delay -clock vclk  0  [get_ports {i2[44]}]
set_input_delay -clock vclk  0  [get_ports {i2[43]}]
set_input_delay -clock vclk  0  [get_ports {i2[42]}]
set_input_delay -clock vclk  0  [get_ports {i2[41]}]
set_input_delay -clock vclk  0  [get_ports {i2[40]}]
set_input_delay -clock vclk  0  [get_ports {i2[39]}]
set_input_delay -clock vclk  0  [get_ports {i2[38]}]
set_input_delay -clock vclk  0  [get_ports {i2[37]}]
set_input_delay -clock vclk  0  [get_ports {i2[36]}]
set_input_delay -clock vclk  0  [get_ports {i2[35]}]
set_input_delay -clock vclk  0  [get_ports {i2[34]}]
set_input_delay -clock vclk  0  [get_ports {i2[33]}]
set_input_delay -clock vclk  0  [get_ports {i2[32]}]
set_input_delay -clock vclk  0  [get_ports {i2[31]}]
set_input_delay -clock vclk  0  [get_ports {i2[30]}]
set_input_delay -clock vclk  0  [get_ports {i2[29]}]
set_input_delay -clock vclk  0  [get_ports {i2[28]}]
set_input_delay -clock vclk  0  [get_ports {i2[27]}]
set_input_delay -clock vclk  0  [get_ports {i2[26]}]
set_input_delay -clock vclk  0  [get_ports {i2[25]}]
set_input_delay -clock vclk  0  [get_ports {i2[24]}]
set_input_delay -clock vclk  0  [get_ports {i2[23]}]
set_input_delay -clock vclk  0  [get_ports {i2[22]}]
set_input_delay -clock vclk  0  [get_ports {i2[21]}]
set_input_delay -clock vclk  0  [get_ports {i2[20]}]
set_input_delay -clock vclk  0  [get_ports {i2[19]}]
set_input_delay -clock vclk  0  [get_ports {i2[18]}]
set_input_delay -clock vclk  0  [get_ports {i2[17]}]
set_input_delay -clock vclk  0  [get_ports {i2[16]}]
set_input_delay -clock vclk  0  [get_ports {i2[15]}]
set_input_delay -clock vclk  0  [get_ports {i2[14]}]
set_input_delay -clock vclk  0  [get_ports {i2[13]}]
set_input_delay -clock vclk  0  [get_ports {i2[12]}]
set_input_delay -clock vclk  0  [get_ports {i2[11]}]
set_input_delay -clock vclk  0  [get_ports {i2[10]}]
set_input_delay -clock vclk  0  [get_ports {i2[9]}]
set_input_delay -clock vclk  0  [get_ports {i2[8]}]
set_input_delay -clock vclk  0  [get_ports {i2[7]}]
set_input_delay -clock vclk  0  [get_ports {i2[6]}]
set_input_delay -clock vclk  0  [get_ports {i2[5]}]
set_input_delay -clock vclk  0  [get_ports {i2[4]}]
set_input_delay -clock vclk  0  [get_ports {i2[3]}]
set_input_delay -clock vclk  0  [get_ports {i2[2]}]
set_input_delay -clock vclk  0  [get_ports {i2[1]}]
set_input_delay -clock vclk  0  [get_ports {i2[0]}]
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
