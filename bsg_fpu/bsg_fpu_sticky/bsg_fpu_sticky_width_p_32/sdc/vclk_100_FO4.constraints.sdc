###################################################################

# Created by write_sdc on Mon Jan 20 00:08:44 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports sticky_o]
create_clock -name vclk  -period ${FO4_100} -waveform {0 ${FO4_100_DIV_2}}
set_clock_uncertainty 0  [get_clocks vclk]
set_input_delay -clock vclk  0  [get_ports {i[31]}]
set_input_delay -clock vclk  0  [get_ports {i[30]}]
set_input_delay -clock vclk  0  [get_ports {i[29]}]
set_input_delay -clock vclk  0  [get_ports {i[28]}]
set_input_delay -clock vclk  0  [get_ports {i[27]}]
set_input_delay -clock vclk  0  [get_ports {i[26]}]
set_input_delay -clock vclk  0  [get_ports {i[25]}]
set_input_delay -clock vclk  0  [get_ports {i[24]}]
set_input_delay -clock vclk  0  [get_ports {i[23]}]
set_input_delay -clock vclk  0  [get_ports {i[22]}]
set_input_delay -clock vclk  0  [get_ports {i[21]}]
set_input_delay -clock vclk  0  [get_ports {i[20]}]
set_input_delay -clock vclk  0  [get_ports {i[19]}]
set_input_delay -clock vclk  0  [get_ports {i[18]}]
set_input_delay -clock vclk  0  [get_ports {i[17]}]
set_input_delay -clock vclk  0  [get_ports {i[16]}]
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
set_input_delay -clock vclk  0  [get_ports {shamt_i[5]}]
set_input_delay -clock vclk  0  [get_ports {shamt_i[4]}]
set_input_delay -clock vclk  0  [get_ports {shamt_i[3]}]
set_input_delay -clock vclk  0  [get_ports {shamt_i[2]}]
set_input_delay -clock vclk  0  [get_ports {shamt_i[1]}]
set_input_delay -clock vclk  0  [get_ports {shamt_i[0]}]
set_output_delay -clock vclk  0  [get_ports sticky_o]