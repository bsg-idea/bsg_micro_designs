###################################################################

# Created by write_sdc on Sun Jan 19 21:12:04 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports {o[31]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[30]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[29]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[28]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[27]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[26]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[25]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[24]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[23]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[22]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[21]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[20]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[19]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[18]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[17]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[16]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[15]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[14]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[13]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[12]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[11]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[10]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[9]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[8]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[7]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[6]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[5]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[4]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {o[0]}]
create_clock [get_ports clk]  -period ${FO4_100} -waveform {0 ${FO4_100_DIV_2}}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk]
set_input_delay -clock clk  0  [get_ports reset_i]
set_input_delay -clock clk  0  [get_ports yumi_i]
set_output_delay -clock clk  0  [get_ports {o[31]}]
set_output_delay -clock clk  0  [get_ports {o[30]}]
set_output_delay -clock clk  0  [get_ports {o[29]}]
set_output_delay -clock clk  0  [get_ports {o[28]}]
set_output_delay -clock clk  0  [get_ports {o[27]}]
set_output_delay -clock clk  0  [get_ports {o[26]}]
set_output_delay -clock clk  0  [get_ports {o[25]}]
set_output_delay -clock clk  0  [get_ports {o[24]}]
set_output_delay -clock clk  0  [get_ports {o[23]}]
set_output_delay -clock clk  0  [get_ports {o[22]}]
set_output_delay -clock clk  0  [get_ports {o[21]}]
set_output_delay -clock clk  0  [get_ports {o[20]}]
set_output_delay -clock clk  0  [get_ports {o[19]}]
set_output_delay -clock clk  0  [get_ports {o[18]}]
set_output_delay -clock clk  0  [get_ports {o[17]}]
set_output_delay -clock clk  0  [get_ports {o[16]}]
set_output_delay -clock clk  0  [get_ports {o[15]}]
set_output_delay -clock clk  0  [get_ports {o[14]}]
set_output_delay -clock clk  0  [get_ports {o[13]}]
set_output_delay -clock clk  0  [get_ports {o[12]}]
set_output_delay -clock clk  0  [get_ports {o[11]}]
set_output_delay -clock clk  0  [get_ports {o[10]}]
set_output_delay -clock clk  0  [get_ports {o[9]}]
set_output_delay -clock clk  0  [get_ports {o[8]}]
set_output_delay -clock clk  0  [get_ports {o[7]}]
set_output_delay -clock clk  0  [get_ports {o[6]}]
set_output_delay -clock clk  0  [get_ports {o[5]}]
set_output_delay -clock clk  0  [get_ports {o[4]}]
set_output_delay -clock clk  0  [get_ports {o[3]}]
set_output_delay -clock clk  0  [get_ports {o[2]}]
set_output_delay -clock clk  0  [get_ports {o[1]}]
set_output_delay -clock clk  0  [get_ports {o[0]}]
