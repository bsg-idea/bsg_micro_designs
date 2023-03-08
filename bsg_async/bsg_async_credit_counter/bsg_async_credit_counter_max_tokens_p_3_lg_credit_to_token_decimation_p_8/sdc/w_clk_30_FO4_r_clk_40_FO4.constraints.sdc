###################################################################

# Created by write_sdc on Tue Mar 7 11:39:03 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports r_credits_avail_o]
create_clock [get_ports w_clk_i]  -name w_clk  -period 30  -waveform {0 15}
set_clock_uncertainty 0  [get_clocks w_clk]
create_clock [get_ports r_clk_i]  -name r_clk  -period 40  -waveform {0 20}
set_clock_uncertainty 0  [get_clocks r_clk]
