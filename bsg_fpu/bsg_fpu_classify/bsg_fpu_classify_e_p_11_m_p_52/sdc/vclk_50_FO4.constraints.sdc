###################################################################

# Created by write_sdc on Sun Jan 19 23:58:00 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports {class_o[63]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[62]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[61]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[60]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[59]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[58]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[57]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[56]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[55]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[54]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[53]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[52]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[51]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[50]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[49]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[48]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[47]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[46]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[45]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[44]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[43]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[42]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[41]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[40]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[39]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[38]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[37]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[36]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[35]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[34]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[33]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[32]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[31]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[30]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[29]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[28]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[27]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[26]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[25]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[24]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[23]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[22]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[21]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[20]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[19]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[18]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[17]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[16]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[15]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[14]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[13]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[12]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[11]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[10]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[9]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[8]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[7]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[6]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[5]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[4]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {class_o[0]}]
create_clock -name vclk  -period ${FO4_50} -waveform {0 ${FO4_50_DIV_2}}
set_clock_uncertainty 0  [get_clocks vclk]
set_input_delay -clock vclk  0  [get_ports {a_i[63]}]
set_input_delay -clock vclk  0  [get_ports {a_i[62]}]
set_input_delay -clock vclk  0  [get_ports {a_i[61]}]
set_input_delay -clock vclk  0  [get_ports {a_i[60]}]
set_input_delay -clock vclk  0  [get_ports {a_i[59]}]
set_input_delay -clock vclk  0  [get_ports {a_i[58]}]
set_input_delay -clock vclk  0  [get_ports {a_i[57]}]
set_input_delay -clock vclk  0  [get_ports {a_i[56]}]
set_input_delay -clock vclk  0  [get_ports {a_i[55]}]
set_input_delay -clock vclk  0  [get_ports {a_i[54]}]
set_input_delay -clock vclk  0  [get_ports {a_i[53]}]
set_input_delay -clock vclk  0  [get_ports {a_i[52]}]
set_input_delay -clock vclk  0  [get_ports {a_i[51]}]
set_input_delay -clock vclk  0  [get_ports {a_i[50]}]
set_input_delay -clock vclk  0  [get_ports {a_i[49]}]
set_input_delay -clock vclk  0  [get_ports {a_i[48]}]
set_input_delay -clock vclk  0  [get_ports {a_i[47]}]
set_input_delay -clock vclk  0  [get_ports {a_i[46]}]
set_input_delay -clock vclk  0  [get_ports {a_i[45]}]
set_input_delay -clock vclk  0  [get_ports {a_i[44]}]
set_input_delay -clock vclk  0  [get_ports {a_i[43]}]
set_input_delay -clock vclk  0  [get_ports {a_i[42]}]
set_input_delay -clock vclk  0  [get_ports {a_i[41]}]
set_input_delay -clock vclk  0  [get_ports {a_i[40]}]
set_input_delay -clock vclk  0  [get_ports {a_i[39]}]
set_input_delay -clock vclk  0  [get_ports {a_i[38]}]
set_input_delay -clock vclk  0  [get_ports {a_i[37]}]
set_input_delay -clock vclk  0  [get_ports {a_i[36]}]
set_input_delay -clock vclk  0  [get_ports {a_i[35]}]
set_input_delay -clock vclk  0  [get_ports {a_i[34]}]
set_input_delay -clock vclk  0  [get_ports {a_i[33]}]
set_input_delay -clock vclk  0  [get_ports {a_i[32]}]
set_input_delay -clock vclk  0  [get_ports {a_i[31]}]
set_input_delay -clock vclk  0  [get_ports {a_i[30]}]
set_input_delay -clock vclk  0  [get_ports {a_i[29]}]
set_input_delay -clock vclk  0  [get_ports {a_i[28]}]
set_input_delay -clock vclk  0  [get_ports {a_i[27]}]
set_input_delay -clock vclk  0  [get_ports {a_i[26]}]
set_input_delay -clock vclk  0  [get_ports {a_i[25]}]
set_input_delay -clock vclk  0  [get_ports {a_i[24]}]
set_input_delay -clock vclk  0  [get_ports {a_i[23]}]
set_input_delay -clock vclk  0  [get_ports {a_i[22]}]
set_input_delay -clock vclk  0  [get_ports {a_i[21]}]
set_input_delay -clock vclk  0  [get_ports {a_i[20]}]
set_input_delay -clock vclk  0  [get_ports {a_i[19]}]
set_input_delay -clock vclk  0  [get_ports {a_i[18]}]
set_input_delay -clock vclk  0  [get_ports {a_i[17]}]
set_input_delay -clock vclk  0  [get_ports {a_i[16]}]
set_input_delay -clock vclk  0  [get_ports {a_i[15]}]
set_input_delay -clock vclk  0  [get_ports {a_i[14]}]
set_input_delay -clock vclk  0  [get_ports {a_i[13]}]
set_input_delay -clock vclk  0  [get_ports {a_i[12]}]
set_input_delay -clock vclk  0  [get_ports {a_i[11]}]
set_input_delay -clock vclk  0  [get_ports {a_i[10]}]
set_input_delay -clock vclk  0  [get_ports {a_i[9]}]
set_input_delay -clock vclk  0  [get_ports {a_i[8]}]
set_input_delay -clock vclk  0  [get_ports {a_i[7]}]
set_input_delay -clock vclk  0  [get_ports {a_i[6]}]
set_input_delay -clock vclk  0  [get_ports {a_i[5]}]
set_input_delay -clock vclk  0  [get_ports {a_i[4]}]
set_input_delay -clock vclk  0  [get_ports {a_i[3]}]
set_input_delay -clock vclk  0  [get_ports {a_i[2]}]
set_input_delay -clock vclk  0  [get_ports {a_i[1]}]
set_input_delay -clock vclk  0  [get_ports {a_i[0]}]
set_output_delay -clock vclk  0  [get_ports {class_o[63]}]
set_output_delay -clock vclk  0  [get_ports {class_o[62]}]
set_output_delay -clock vclk  0  [get_ports {class_o[61]}]
set_output_delay -clock vclk  0  [get_ports {class_o[60]}]
set_output_delay -clock vclk  0  [get_ports {class_o[59]}]
set_output_delay -clock vclk  0  [get_ports {class_o[58]}]
set_output_delay -clock vclk  0  [get_ports {class_o[57]}]
set_output_delay -clock vclk  0  [get_ports {class_o[56]}]
set_output_delay -clock vclk  0  [get_ports {class_o[55]}]
set_output_delay -clock vclk  0  [get_ports {class_o[54]}]
set_output_delay -clock vclk  0  [get_ports {class_o[53]}]
set_output_delay -clock vclk  0  [get_ports {class_o[52]}]
set_output_delay -clock vclk  0  [get_ports {class_o[51]}]
set_output_delay -clock vclk  0  [get_ports {class_o[50]}]
set_output_delay -clock vclk  0  [get_ports {class_o[49]}]
set_output_delay -clock vclk  0  [get_ports {class_o[48]}]
set_output_delay -clock vclk  0  [get_ports {class_o[47]}]
set_output_delay -clock vclk  0  [get_ports {class_o[46]}]
set_output_delay -clock vclk  0  [get_ports {class_o[45]}]
set_output_delay -clock vclk  0  [get_ports {class_o[44]}]
set_output_delay -clock vclk  0  [get_ports {class_o[43]}]
set_output_delay -clock vclk  0  [get_ports {class_o[42]}]
set_output_delay -clock vclk  0  [get_ports {class_o[41]}]
set_output_delay -clock vclk  0  [get_ports {class_o[40]}]
set_output_delay -clock vclk  0  [get_ports {class_o[39]}]
set_output_delay -clock vclk  0  [get_ports {class_o[38]}]
set_output_delay -clock vclk  0  [get_ports {class_o[37]}]
set_output_delay -clock vclk  0  [get_ports {class_o[36]}]
set_output_delay -clock vclk  0  [get_ports {class_o[35]}]
set_output_delay -clock vclk  0  [get_ports {class_o[34]}]
set_output_delay -clock vclk  0  [get_ports {class_o[33]}]
set_output_delay -clock vclk  0  [get_ports {class_o[32]}]
set_output_delay -clock vclk  0  [get_ports {class_o[31]}]
set_output_delay -clock vclk  0  [get_ports {class_o[30]}]
set_output_delay -clock vclk  0  [get_ports {class_o[29]}]
set_output_delay -clock vclk  0  [get_ports {class_o[28]}]
set_output_delay -clock vclk  0  [get_ports {class_o[27]}]
set_output_delay -clock vclk  0  [get_ports {class_o[26]}]
set_output_delay -clock vclk  0  [get_ports {class_o[25]}]
set_output_delay -clock vclk  0  [get_ports {class_o[24]}]
set_output_delay -clock vclk  0  [get_ports {class_o[23]}]
set_output_delay -clock vclk  0  [get_ports {class_o[22]}]
set_output_delay -clock vclk  0  [get_ports {class_o[21]}]
set_output_delay -clock vclk  0  [get_ports {class_o[20]}]
set_output_delay -clock vclk  0  [get_ports {class_o[19]}]
set_output_delay -clock vclk  0  [get_ports {class_o[18]}]
set_output_delay -clock vclk  0  [get_ports {class_o[17]}]
set_output_delay -clock vclk  0  [get_ports {class_o[16]}]
set_output_delay -clock vclk  0  [get_ports {class_o[15]}]
set_output_delay -clock vclk  0  [get_ports {class_o[14]}]
set_output_delay -clock vclk  0  [get_ports {class_o[13]}]
set_output_delay -clock vclk  0  [get_ports {class_o[12]}]
set_output_delay -clock vclk  0  [get_ports {class_o[11]}]
set_output_delay -clock vclk  0  [get_ports {class_o[10]}]
set_output_delay -clock vclk  0  [get_ports {class_o[9]}]
set_output_delay -clock vclk  0  [get_ports {class_o[8]}]
set_output_delay -clock vclk  0  [get_ports {class_o[7]}]
set_output_delay -clock vclk  0  [get_ports {class_o[6]}]
set_output_delay -clock vclk  0  [get_ports {class_o[5]}]
set_output_delay -clock vclk  0  [get_ports {class_o[4]}]
set_output_delay -clock vclk  0  [get_ports {class_o[3]}]
set_output_delay -clock vclk  0  [get_ports {class_o[2]}]
set_output_delay -clock vclk  0  [get_ports {class_o[1]}]
set_output_delay -clock vclk  0  [get_ports {class_o[0]}]
