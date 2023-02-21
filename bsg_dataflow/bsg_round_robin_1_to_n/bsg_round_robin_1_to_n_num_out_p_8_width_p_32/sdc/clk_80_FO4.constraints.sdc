###################################################################

# Created by write_sdc on Tue Feb 14 11:07:22 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports ready_o]
set_load -pin_load 1 [get_ports {valid_o[7]}]
set_load -pin_load 1 [get_ports {valid_o[6]}]
set_load -pin_load 1 [get_ports {valid_o[5]}]
set_load -pin_load 1 [get_ports {valid_o[4]}]
set_load -pin_load 1 [get_ports {valid_o[3]}]
set_load -pin_load 1 [get_ports {valid_o[2]}]
set_load -pin_load 1 [get_ports {valid_o[1]}]
set_load -pin_load 1 [get_ports {valid_o[0]}]
create_clock [get_ports clk_i]  -name clk  -period 80  -waveform {0 40}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk_i]
set_input_delay -clock clk  0  [get_ports reset_i]
set_input_delay -clock clk  0  [get_ports valid_i]
set_input_delay -clock clk  0  [get_ports {ready_i[7]}]
set_input_delay -clock clk  0  [get_ports {ready_i[6]}]
set_input_delay -clock clk  0  [get_ports {ready_i[5]}]
set_input_delay -clock clk  0  [get_ports {ready_i[4]}]
set_input_delay -clock clk  0  [get_ports {ready_i[3]}]
set_input_delay -clock clk  0  [get_ports {ready_i[2]}]
set_input_delay -clock clk  0  [get_ports {ready_i[1]}]
set_input_delay -clock clk  0  [get_ports {ready_i[0]}]
set_output_delay -clock clk  0  [get_ports ready_o]
set_output_delay -clock clk  0  [get_ports {valid_o[7]}]
set_output_delay -clock clk  0  [get_ports {valid_o[6]}]
set_output_delay -clock clk  0  [get_ports {valid_o[5]}]
set_output_delay -clock clk  0  [get_ports {valid_o[4]}]
set_output_delay -clock clk  0  [get_ports {valid_o[3]}]
set_output_delay -clock clk  0  [get_ports {valid_o[2]}]
set_output_delay -clock clk  0  [get_ports {valid_o[1]}]
set_output_delay -clock clk  0  [get_ports {valid_o[0]}]
