###################################################################

# Created by write_sdc on Wed Apr 8 02:49:36 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports {data_o[7]}]
set_load -pin_load ${PIN_LOAD} [get_ports {data_o[6]}]
set_load -pin_load ${PIN_LOAD} [get_ports {data_o[5]}]
set_load -pin_load ${PIN_LOAD} [get_ports {data_o[4]}]
set_load -pin_load ${PIN_LOAD} [get_ports {data_o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {data_o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {data_o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {data_o[0]}]
set_load -pin_load ${PIN_LOAD} [get_ports k_o]
set_load -pin_load ${PIN_LOAD} [get_ports rd_o]
set_load -pin_load ${PIN_LOAD} [get_ports data_err_o]
set_load -pin_load ${PIN_LOAD} [get_ports rd_err_o]
create_clock -name vclk  -period ${FO4_60}  -waveform {0 ${FO4_60_DIV_2}}
set_clock_uncertainty 0  [get_clocks vclk]
set_input_delay -clock vclk  0  [get_ports {data_i[9]}]
set_input_delay -clock vclk  0  [get_ports {data_i[8]}]
set_input_delay -clock vclk  0  [get_ports {data_i[7]}]
set_input_delay -clock vclk  0  [get_ports {data_i[6]}]
set_input_delay -clock vclk  0  [get_ports {data_i[5]}]
set_input_delay -clock vclk  0  [get_ports {data_i[4]}]
set_input_delay -clock vclk  0  [get_ports {data_i[3]}]
set_input_delay -clock vclk  0  [get_ports {data_i[2]}]
set_input_delay -clock vclk  0  [get_ports {data_i[1]}]
set_input_delay -clock vclk  0  [get_ports {data_i[0]}]
set_input_delay -clock vclk  0  [get_ports rd_i]
set_output_delay -clock vclk  0  [get_ports {data_o[7]}]
set_output_delay -clock vclk  0  [get_ports {data_o[6]}]
set_output_delay -clock vclk  0  [get_ports {data_o[5]}]
set_output_delay -clock vclk  0  [get_ports {data_o[4]}]
set_output_delay -clock vclk  0  [get_ports {data_o[3]}]
set_output_delay -clock vclk  0  [get_ports {data_o[2]}]
set_output_delay -clock vclk  0  [get_ports {data_o[1]}]
set_output_delay -clock vclk  0  [get_ports {data_o[0]}]
set_output_delay -clock vclk  0  [get_ports k_o]
set_output_delay -clock vclk  0  [get_ports rd_o]
set_output_delay -clock vclk  0  [get_ports data_err_o]
set_output_delay -clock vclk  0  [get_ports rd_err_o]
