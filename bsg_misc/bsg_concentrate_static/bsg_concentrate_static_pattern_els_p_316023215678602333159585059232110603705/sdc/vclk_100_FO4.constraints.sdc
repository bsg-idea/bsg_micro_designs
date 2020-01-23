###################################################################

# Created by write_sdc on Sun Jan 19 20:00:41 2020

###################################################################
set sdc_version 2.1

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
create_clock -name vclk  -period ${FO4_100} -waveform {0 ${FO4_100_DIV_2}}
set_clock_uncertainty 0  [get_clocks vclk]
