###################################################################

# Created by write_sdc on Sun Jan 19 20:13:34 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports {count_o[23]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[22]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[21]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[20]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[19]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[18]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[17]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[16]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[15]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[14]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[13]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[12]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[11]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[10]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[9]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[8]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[7]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[6]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[5]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[4]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {count_o[0]}]
create_clock [get_ports clk_i]  -name clk  -period ${FO4_90} -waveform {0 ${FO4_90_DIV_2}}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk_i]
set_input_delay -clock clk  0  [get_ports reset_i]
set_input_delay -clock clk  0  [get_ports {up_i[2]}]
set_input_delay -clock clk  0  [get_ports {up_i[1]}]
set_input_delay -clock clk  0  [get_ports {up_i[0]}]
set_input_delay -clock clk  0  [get_ports {down_i[2]}]
set_input_delay -clock clk  0  [get_ports {down_i[1]}]
set_input_delay -clock clk  0  [get_ports {down_i[0]}]
set_output_delay -clock clk  0  [get_ports {count_o[23]}]
set_output_delay -clock clk  0  [get_ports {count_o[22]}]
set_output_delay -clock clk  0  [get_ports {count_o[21]}]
set_output_delay -clock clk  0  [get_ports {count_o[20]}]
set_output_delay -clock clk  0  [get_ports {count_o[19]}]
set_output_delay -clock clk  0  [get_ports {count_o[18]}]
set_output_delay -clock clk  0  [get_ports {count_o[17]}]
set_output_delay -clock clk  0  [get_ports {count_o[16]}]
set_output_delay -clock clk  0  [get_ports {count_o[15]}]
set_output_delay -clock clk  0  [get_ports {count_o[14]}]
set_output_delay -clock clk  0  [get_ports {count_o[13]}]
set_output_delay -clock clk  0  [get_ports {count_o[12]}]
set_output_delay -clock clk  0  [get_ports {count_o[11]}]
set_output_delay -clock clk  0  [get_ports {count_o[10]}]
set_output_delay -clock clk  0  [get_ports {count_o[9]}]
set_output_delay -clock clk  0  [get_ports {count_o[8]}]
set_output_delay -clock clk  0  [get_ports {count_o[7]}]
set_output_delay -clock clk  0  [get_ports {count_o[6]}]
set_output_delay -clock clk  0  [get_ports {count_o[5]}]
set_output_delay -clock clk  0  [get_ports {count_o[4]}]
set_output_delay -clock clk  0  [get_ports {count_o[3]}]
set_output_delay -clock clk  0  [get_ports {count_o[2]}]
set_output_delay -clock clk  0  [get_ports {count_o[1]}]
set_output_delay -clock clk  0  [get_ports {count_o[0]}]
