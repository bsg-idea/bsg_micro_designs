###################################################################

# Created by write_sdc on Tue Feb 14 11:52:34 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports {o[15]}]
set_load -pin_load 1 [get_ports {o[14]}]
set_load -pin_load 1 [get_ports {o[13]}]
set_load -pin_load 1 [get_ports {o[12]}]
set_load -pin_load 1 [get_ports {o[11]}]
set_load -pin_load 1 [get_ports {o[10]}]
set_load -pin_load 1 [get_ports {o[9]}]
set_load -pin_load 1 [get_ports {o[8]}]
set_load -pin_load 1 [get_ports {o[7]}]
set_load -pin_load 1 [get_ports {o[6]}]
set_load -pin_load 1 [get_ports {o[5]}]
set_load -pin_load 1 [get_ports {o[4]}]
set_load -pin_load 1 [get_ports {o[3]}]
set_load -pin_load 1 [get_ports {o[2]}]
set_load -pin_load 1 [get_ports {o[1]}]
set_load -pin_load 1 [get_ports {o[0]}]
create_clock -name vclk  -period 60  -waveform {0 30}
set_clock_uncertainty 0  [get_clocks vclk]
set_output_delay -clock vclk  0  [get_ports {o[15]}]
set_output_delay -clock vclk  0  [get_ports {o[14]}]
set_output_delay -clock vclk  0  [get_ports {o[13]}]
set_output_delay -clock vclk  0  [get_ports {o[12]}]
set_output_delay -clock vclk  0  [get_ports {o[11]}]
set_output_delay -clock vclk  0  [get_ports {o[10]}]
set_output_delay -clock vclk  0  [get_ports {o[9]}]
set_output_delay -clock vclk  0  [get_ports {o[8]}]
set_output_delay -clock vclk  0  [get_ports {o[7]}]
set_output_delay -clock vclk  0  [get_ports {o[6]}]
set_output_delay -clock vclk  0  [get_ports {o[5]}]
set_output_delay -clock vclk  0  [get_ports {o[4]}]
set_output_delay -clock vclk  0  [get_ports {o[3]}]
set_output_delay -clock vclk  0  [get_ports {o[2]}]
set_output_delay -clock vclk  0  [get_ports {o[1]}]
set_output_delay -clock vclk  0  [get_ports {o[0]}]
