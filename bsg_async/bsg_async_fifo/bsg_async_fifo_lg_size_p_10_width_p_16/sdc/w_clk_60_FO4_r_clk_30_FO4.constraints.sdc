###################################################################

# Created by write_sdc on Sun Jan 19 22:35:47 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports w_full_o]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[15]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[14]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[13]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[12]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[11]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[10]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[9]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[8]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[7]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[6]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[5]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[4]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {r_data_o[0]}]
set_load -pin_load ${PIN_LOAD} [get_ports r_valid_o]
create_clock [get_ports r_clk_i]  -name r_clk  -period ${FO4_30} -waveform {0 ${FO4_30_DIV_2}}
set_clock_uncertainty 0  [get_clocks r_clk]
create_clock [get_ports w_clk_i]  -name w_clk  -period ${FO4_60} -waveform {0 ${FO4_60_DIV_2}}
set_clock_uncertainty 0  [get_clocks w_clk]
set_max_delay 15 -from [get_clocks r_clk] -to [get_clocks w_clk] -ignore_clock_latency
set_min_delay 0 -from [get_clocks r_clk] -to [get_clocks w_clk] -ignore_clock_latency
set_max_delay 15 -from [get_clocks w_clk] -to [get_clocks r_clk] -ignore_clock_latency
set_min_delay 0 -from [get_clocks w_clk] -to [get_clocks r_clk] -ignore_clock_latency
