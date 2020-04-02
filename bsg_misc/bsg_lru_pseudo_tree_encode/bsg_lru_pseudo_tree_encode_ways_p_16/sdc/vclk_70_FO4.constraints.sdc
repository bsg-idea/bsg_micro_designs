###################################################################

# Created by write_sdc on Sun Jan 19 21:14:58 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports {way_id_o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {way_id_o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {way_id_o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {way_id_o[0]}]
create_clock -name vclk  -period ${FO4_70} -waveform {0 ${FO4_70_DIV_2}}
set_clock_uncertainty 0  [get_clocks vclk]
set_input_delay -clock vclk  0  [get_ports {lru_i[14]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[13]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[12]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[11]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[10]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[9]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[8]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[7]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[6]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[5]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[4]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[3]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[2]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[1]}]
set_input_delay -clock vclk  0  [get_ports {lru_i[0]}]
set_output_delay -clock vclk  0  [get_ports {way_id_o[3]}]
set_output_delay -clock vclk  0  [get_ports {way_id_o[2]}]
set_output_delay -clock vclk  0  [get_ports {way_id_o[1]}]
set_output_delay -clock vclk  0  [get_ports {way_id_o[0]}]
