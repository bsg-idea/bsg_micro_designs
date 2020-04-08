###################################################################

# Created by write_sdc on Wed Apr 8 02:50:21 2020

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
set_load -pin_load ${PIN_LOAD} [get_ports v_o]
set_load -pin_load ${PIN_LOAD} [get_ports frame_align_o]
create_clock [get_ports clk_i]  -name clk  -period ${FO4_70}  -waveform {0 ${FO4_70_DIV_2}}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk_i]
set_input_delay -clock clk  0  [get_ports data_i]
set_output_delay -clock clk  0  [get_ports {data_o[7]}]
set_output_delay -clock clk  0  [get_ports {data_o[6]}]
set_output_delay -clock clk  0  [get_ports {data_o[5]}]
set_output_delay -clock clk  0  [get_ports {data_o[4]}]
set_output_delay -clock clk  0  [get_ports {data_o[3]}]
set_output_delay -clock clk  0  [get_ports {data_o[2]}]
set_output_delay -clock clk  0  [get_ports {data_o[1]}]
set_output_delay -clock clk  0  [get_ports {data_o[0]}]
set_output_delay -clock clk  0  [get_ports k_o]
set_output_delay -clock clk  0  [get_ports v_o]
set_output_delay -clock clk  0  [get_ports frame_align_o]
