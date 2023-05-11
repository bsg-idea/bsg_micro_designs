###################################################################

# Created by write_sdc on Thu May 11 13:38:53 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports w_full_o]
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
create_clock [get_ports w_clk_i]  -name w_clk  -period 50  -waveform {0 25}
set_clock_uncertainty 0  [get_clocks w_clk]
create_clock [get_ports r_clk_i]  -name r_clk  -period 60  -waveform {0 30}
set_clock_uncertainty 0  [get_clocks r_clk]
set_input_delay -clock r_clk  0  [get_ports r_deq_i]
set_input_delay -clock r_clk  0  [get_ports r_reset_i]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[15]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[14]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[13]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[12]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[11]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[10]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[9]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[8]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[7]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[6]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[5]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[4]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[3]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[2]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[1]}]
set_input_delay -clock w_clk  0  [get_ports {w_data_i[0]}]
set_input_delay -clock w_clk  0  [get_ports w_enq_i]
set_input_delay -clock w_clk  0  [get_ports w_reset_i]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[15]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[14]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[13]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[12]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[11]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[10]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[9]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[8]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[7]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[6]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[5]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[4]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[3]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[2]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[1]}]
set_output_delay -clock r_clk  0  [get_ports {r_data_o[0]}]
set_output_delay -clock r_clk  0  [get_ports r_valid_o]
set_output_delay -clock w_clk  0  [get_ports w_full_o]
