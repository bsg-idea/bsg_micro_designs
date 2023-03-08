###################################################################

# Created by write_sdc on Tue Mar 7 11:44:48 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports w_full_o]
set_load -pin_load 1 [get_ports {r_data_o[31]}]
set_load -pin_load 1 [get_ports {r_data_o[30]}]
set_load -pin_load 1 [get_ports {r_data_o[29]}]
set_load -pin_load 1 [get_ports {r_data_o[28]}]
set_load -pin_load 1 [get_ports {r_data_o[27]}]
set_load -pin_load 1 [get_ports {r_data_o[26]}]
set_load -pin_load 1 [get_ports {r_data_o[25]}]
set_load -pin_load 1 [get_ports {r_data_o[24]}]
set_load -pin_load 1 [get_ports {r_data_o[23]}]
set_load -pin_load 1 [get_ports {r_data_o[22]}]
set_load -pin_load 1 [get_ports {r_data_o[21]}]
set_load -pin_load 1 [get_ports {r_data_o[20]}]
set_load -pin_load 1 [get_ports {r_data_o[19]}]
set_load -pin_load 1 [get_ports {r_data_o[18]}]
set_load -pin_load 1 [get_ports {r_data_o[17]}]
set_load -pin_load 1 [get_ports {r_data_o[16]}]
set_load -pin_load 1 [get_ports {r_data_o[15]}]
set_load -pin_load 1 [get_ports {r_data_o[14]}]
set_load -pin_load 1 [get_ports {r_data_o[13]}]
set_load -pin_load 1 [get_ports {r_data_o[12]}]
set_load -pin_load 1 [get_ports {r_data_o[11]}]
set_load -pin_load 1 [get_ports {r_data_o[10]}]
set_load -pin_load 1 [get_ports {r_data_o[9]}]
set_load -pin_load 1 [get_ports {r_data_o[8]}]
set_load -pin_load 1 [get_ports {r_data_o[7]}]
set_load -pin_load 1 [get_ports {r_data_o[6]}]
set_load -pin_load 1 [get_ports {r_data_o[5]}]
set_load -pin_load 1 [get_ports {r_data_o[4]}]
set_load -pin_load 1 [get_ports {r_data_o[3]}]
set_load -pin_load 1 [get_ports {r_data_o[2]}]
set_load -pin_load 1 [get_ports {r_data_o[1]}]
set_load -pin_load 1 [get_ports {r_data_o[0]}]
set_load -pin_load 1 [get_ports r_valid_o]
create_clock [get_ports r_clk_i]  -name r_clk  -period 30  -waveform {0 15}
set_clock_uncertainty 0  [get_clocks r_clk]
create_clock [get_ports w_clk_i]  -name w_clk  -period 30  -waveform {0 15}
set_clock_uncertainty 0  [get_clocks w_clk]
