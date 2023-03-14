###################################################################

# Created by write_sdc on Mon Mar 13 20:56:31 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports {way_id_o[3]}]
set_load -pin_load 1 [get_ports {way_id_o[2]}]
set_load -pin_load 1 [get_ports {way_id_o[1]}]
set_load -pin_load 1 [get_ports {way_id_o[0]}]
create_clock -name vclk  -period 60  -waveform {0 30}
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
