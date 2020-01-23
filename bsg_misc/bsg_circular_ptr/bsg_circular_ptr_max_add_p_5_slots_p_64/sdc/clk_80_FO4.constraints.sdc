###################################################################

# Created by write_sdc on Sun Jan 19 19:57:43 2020

###################################################################
set sdc_version 2.1

set_load -pin_load 1.5 [get_ports {o[5]}]
set_load -pin_load 1.5 [get_ports {o[4]}]
set_load -pin_load 1.5 [get_ports {o[3]}]
set_load -pin_load 1.5 [get_ports {o[2]}]
set_load -pin_load 1.5 [get_ports {o[1]}]
set_load -pin_load 1.5 [get_ports {o[0]}]
set_load -pin_load 1.5 [get_ports {n_o[5]}]
set_load -pin_load 1.5 [get_ports {n_o[4]}]
set_load -pin_load 1.5 [get_ports {n_o[3]}]
set_load -pin_load 1.5 [get_ports {n_o[2]}]
set_load -pin_load 1.5 [get_ports {n_o[1]}]
set_load -pin_load 1.5 [get_ports {n_o[0]}]
create_clock [get_ports clk]  -period 80  -waveform {0 40}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk]
set_input_delay -clock clk  0  [get_ports reset_i]
set_input_delay -clock clk  0  [get_ports {add_i[2]}]
set_input_delay -clock clk  0  [get_ports {add_i[1]}]
set_input_delay -clock clk  0  [get_ports {add_i[0]}]
set_output_delay -clock clk  0  [get_ports {o[5]}]
set_output_delay -clock clk  0  [get_ports {o[4]}]
set_output_delay -clock clk  0  [get_ports {o[3]}]
set_output_delay -clock clk  0  [get_ports {o[2]}]
set_output_delay -clock clk  0  [get_ports {o[1]}]
set_output_delay -clock clk  0  [get_ports {o[0]}]
set_output_delay -clock clk  0  [get_ports {n_o[5]}]
set_output_delay -clock clk  0  [get_ports {n_o[4]}]
set_output_delay -clock clk  0  [get_ports {n_o[3]}]
set_output_delay -clock clk  0  [get_ports {n_o[2]}]
set_output_delay -clock clk  0  [get_ports {n_o[1]}]
set_output_delay -clock clk  0  [get_ports {n_o[0]}]
