###################################################################

# Created by write_sdc on Sun Jan 19 23:51:42 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_binary_r_o[5]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_binary_r_o[4]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_binary_r_o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_binary_r_o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_binary_r_o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_binary_r_o[0]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_gray_r_o[5]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_gray_r_o[4]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_gray_r_o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_gray_r_o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_gray_r_o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_gray_r_o[0]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_gray_r_rsync_o[5]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_gray_r_rsync_o[4]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_gray_r_rsync_o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_gray_r_rsync_o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_gray_r_rsync_o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {w_ptr_gray_r_rsync_o[0]}]
create_clock [get_ports w_clk_i]  -name w_clk  -period ${FO4_30} -waveform {0 ${FO4_30_DIV_2}}
set_clock_uncertainty 0  [get_clocks w_clk]
create_clock [get_ports r_clk_i]  -name r_clk  -period ${FO4_60} -waveform {0 ${FO4_60_DIV_2}}
set_clock_uncertainty 0  [get_clocks r_clk]
set_max_delay 15 -from [get_clocks w_clk] -to [get_clocks r_clk] -ignore_clock_latency
set_min_delay 0 -from [get_clocks w_clk] -to [get_clocks r_clk] -ignore_clock_latency
set_max_delay 15 -from [get_clocks r_clk] -to [get_clocks w_clk] -ignore_clock_latency
set_min_delay 0 -from [get_clocks r_clk] -to [get_clocks w_clk] -ignore_clock_latency
