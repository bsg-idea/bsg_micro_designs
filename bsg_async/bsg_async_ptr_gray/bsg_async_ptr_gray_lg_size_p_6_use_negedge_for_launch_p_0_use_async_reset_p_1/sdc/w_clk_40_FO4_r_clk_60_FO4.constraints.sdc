###################################################################

# Created by write_sdc on Tue Mar 7 11:54:04 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports {w_ptr_binary_r_o[5]}]
set_load -pin_load 1 [get_ports {w_ptr_binary_r_o[4]}]
set_load -pin_load 1 [get_ports {w_ptr_binary_r_o[3]}]
set_load -pin_load 1 [get_ports {w_ptr_binary_r_o[2]}]
set_load -pin_load 1 [get_ports {w_ptr_binary_r_o[1]}]
set_load -pin_load 1 [get_ports {w_ptr_binary_r_o[0]}]
set_load -pin_load 1 [get_ports {w_ptr_gray_r_o[5]}]
set_load -pin_load 1 [get_ports {w_ptr_gray_r_o[4]}]
set_load -pin_load 1 [get_ports {w_ptr_gray_r_o[3]}]
set_load -pin_load 1 [get_ports {w_ptr_gray_r_o[2]}]
set_load -pin_load 1 [get_ports {w_ptr_gray_r_o[1]}]
set_load -pin_load 1 [get_ports {w_ptr_gray_r_o[0]}]
set_load -pin_load 1 [get_ports {w_ptr_gray_r_rsync_o[5]}]
set_load -pin_load 1 [get_ports {w_ptr_gray_r_rsync_o[4]}]
set_load -pin_load 1 [get_ports {w_ptr_gray_r_rsync_o[3]}]
set_load -pin_load 1 [get_ports {w_ptr_gray_r_rsync_o[2]}]
set_load -pin_load 1 [get_ports {w_ptr_gray_r_rsync_o[1]}]
set_load -pin_load 1 [get_ports {w_ptr_gray_r_rsync_o[0]}]
create_clock [get_ports w_clk_i]  -name w_clk  -period 40  -waveform {0 20}
set_clock_uncertainty 0  [get_clocks w_clk]
create_clock [get_ports r_clk_i]  -name r_clk  -period 60  -waveform {0 30}
set_clock_uncertainty 0  [get_clocks r_clk]
