###################################################################

# Created by write_sdc on Sun Jan 19 22:31:48 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports r_credits_avail_o]
create_clock [get_ports r_clk_i]  -name r_clk  -period ${FO4_50} -waveform {0 ${FO4_50_DIV_2}}
set_clock_uncertainty 0  [get_clocks r_clk]
create_clock [get_ports w_clk_i]  -name w_clk  -period ${FO4_60} -waveform {0 ${FO4_60_DIV_2}}
set_clock_uncertainty 0  [get_clocks w_clk]
set_max_delay 25 -from [get_clocks r_clk] -to [get_clocks w_clk] -ignore_clock_latency
set_min_delay 0 -from [get_clocks r_clk] -to [get_clocks w_clk] -ignore_clock_latency
set_max_delay 25 -from [get_clocks w_clk] -to [get_clocks r_clk] -ignore_clock_latency
set_min_delay 0 -from [get_clocks w_clk] -to [get_clocks r_clk] -ignore_clock_latency
