###################################################################

# Created by write_sdc on Tue Mar 7 15:14:43 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports o]
create_clock -name vclk  -period 80  -waveform {0 40}
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
set_output_delay -clock vclk  0  [get_ports o]
