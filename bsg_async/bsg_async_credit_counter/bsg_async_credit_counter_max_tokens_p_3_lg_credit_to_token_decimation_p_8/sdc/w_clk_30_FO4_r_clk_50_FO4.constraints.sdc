###################################################################

# Created by write_sdc on Mon Mar 13 19:10:57 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports r_credits_avail_o]
create_clock [get_ports w_clk_i]  -name w_clk  -period 30  -waveform {0 15}
set_clock_uncertainty 0  [get_clocks w_clk]
create_clock [get_ports r_clk_i]  -name r_clk  -period 50  -waveform {0 25}
set_clock_uncertainty 0  [get_clocks r_clk]
