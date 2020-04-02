###################################################################

# Created by write_sdc on Sun Jan 19 23:59:04 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports {num_zero_o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {num_zero_o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {num_zero_o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {num_zero_o[0]}]
create_clock -name vclk  -period ${FO4_80} -waveform {0 ${FO4_80_DIV_2}}
set_clock_uncertainty 0  [get_clocks vclk]
set_input_delay -clock vclk  0  [get_ports {i[15]}]
set_input_delay -clock vclk  0  [get_ports {i[14]}]
set_input_delay -clock vclk  0  [get_ports {i[13]}]
set_input_delay -clock vclk  0  [get_ports {i[12]}]
set_input_delay -clock vclk  0  [get_ports {i[11]}]
set_input_delay -clock vclk  0  [get_ports {i[10]}]
set_input_delay -clock vclk  0  [get_ports {i[9]}]
set_input_delay -clock vclk  0  [get_ports {i[8]}]
set_input_delay -clock vclk  0  [get_ports {i[7]}]
set_input_delay -clock vclk  0  [get_ports {i[6]}]
set_input_delay -clock vclk  0  [get_ports {i[5]}]
set_input_delay -clock vclk  0  [get_ports {i[4]}]
set_input_delay -clock vclk  0  [get_ports {i[3]}]
set_input_delay -clock vclk  0  [get_ports {i[2]}]
set_input_delay -clock vclk  0  [get_ports {i[1]}]
set_input_delay -clock vclk  0  [get_ports {i[0]}]
set_output_delay -clock vclk  0  [get_ports {num_zero_o[3]}]
set_output_delay -clock vclk  0  [get_ports {num_zero_o[2]}]
set_output_delay -clock vclk  0  [get_ports {num_zero_o[1]}]
set_output_delay -clock vclk  0  [get_ports {num_zero_o[0]}]