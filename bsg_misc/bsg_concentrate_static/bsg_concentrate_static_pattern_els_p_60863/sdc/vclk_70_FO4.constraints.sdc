###################################################################

# Created by write_sdc on Sun Jan 19 19:59:43 2020

###################################################################
set sdc_version 2.1

set_load -pin_load 1.5 [get_ports {o[12]}]
set_load -pin_load 1.5 [get_ports {o[11]}]
set_load -pin_load 1.5 [get_ports {o[10]}]
set_load -pin_load 1.5 [get_ports {o[9]}]
set_load -pin_load 1.5 [get_ports {o[8]}]
set_load -pin_load 1.5 [get_ports {o[7]}]
set_load -pin_load 1.5 [get_ports {o[6]}]
set_load -pin_load 1.5 [get_ports {o[5]}]
set_load -pin_load 1.5 [get_ports {o[4]}]
set_load -pin_load 1.5 [get_ports {o[3]}]
set_load -pin_load 1.5 [get_ports {o[2]}]
set_load -pin_load 1.5 [get_ports {o[1]}]
set_load -pin_load 1.5 [get_ports {o[0]}]
create_clock -name vclk  -period 70  -waveform {0 35}
set_clock_uncertainty 0  [get_clocks vclk]
