###################################################################

# Created by write_sdc on Sun Jan 19 20:40:17 2020

###################################################################
set sdc_version 2.1

set_load -pin_load 1.5 [get_ports {ctr_r_o[15]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[14]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[13]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[12]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[11]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[10]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[9]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[8]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[7]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[6]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[5]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[4]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[3]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[2]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[1]}]
set_load -pin_load 1.5 [get_ports {ctr_r_o[0]}]
create_clock [get_ports clk_i]  -name clk  -period 60  -waveform {0 30}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk_i]
set_input_delay -clock clk  0  [get_ports reset_i]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[15]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[14]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[13]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[12]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[11]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[10]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[9]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[8]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[7]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[6]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[5]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[4]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[3]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[2]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[1]}]
set_output_delay -clock clk  0  [get_ports {ctr_r_o[0]}]
