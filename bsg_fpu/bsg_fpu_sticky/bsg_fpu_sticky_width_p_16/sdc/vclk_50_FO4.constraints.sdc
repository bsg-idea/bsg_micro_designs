###################################################################

# Created by write_sdc on Mon Mar 13 20:17:40 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports sticky_o]
create_clock -name vclk  -period 50  -waveform {0 25}
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
set_input_delay -clock vclk  0  [get_ports {shamt_i[4]}]
set_input_delay -clock vclk  0  [get_ports {shamt_i[3]}]
set_input_delay -clock vclk  0  [get_ports {shamt_i[2]}]
set_input_delay -clock vclk  0  [get_ports {shamt_i[1]}]
set_input_delay -clock vclk  0  [get_ports {shamt_i[0]}]
set_output_delay -clock vclk  0  [get_ports sticky_o]
