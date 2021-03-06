###################################################################

# Created by write_sdc on Sun Jan 19 21:52:37 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports strobe_r_o]
create_clock [get_ports clk_i]  -name clk  -period ${FO4_40} -waveform {0 ${FO4_40_DIV_2}}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk_i]
set_input_delay -clock clk  0  [get_ports reset_r_i]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[63]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[62]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[61]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[60]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[59]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[58]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[57]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[56]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[55]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[54]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[53]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[52]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[51]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[50]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[49]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[48]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[47]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[46]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[45]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[44]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[43]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[42]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[41]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[40]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[39]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[38]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[37]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[36]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[35]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[34]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[33]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[32]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[31]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[30]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[29]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[28]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[27]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[26]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[25]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[24]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[23]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[22]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[21]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[20]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[19]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[18]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[17]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[16]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[15]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[14]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[13]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[12]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[11]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[10]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[9]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[8]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[7]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[6]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[5]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[4]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[3]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[2]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[1]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[0]}]
set_output_delay -clock clk  0  [get_ports strobe_r_o]
