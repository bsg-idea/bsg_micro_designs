###################################################################

# Created by write_sdc on Mon Mar 13 20:20:20 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports {o[31]}]
set_load -pin_load 1 [get_ports {o[30]}]
set_load -pin_load 1 [get_ports {o[29]}]
set_load -pin_load 1 [get_ports {o[28]}]
set_load -pin_load 1 [get_ports {o[27]}]
set_load -pin_load 1 [get_ports {o[26]}]
set_load -pin_load 1 [get_ports {o[25]}]
set_load -pin_load 1 [get_ports {o[24]}]
set_load -pin_load 1 [get_ports {o[23]}]
set_load -pin_load 1 [get_ports {o[22]}]
set_load -pin_load 1 [get_ports {o[21]}]
set_load -pin_load 1 [get_ports {o[20]}]
set_load -pin_load 1 [get_ports {o[19]}]
set_load -pin_load 1 [get_ports {o[18]}]
set_load -pin_load 1 [get_ports {o[17]}]
set_load -pin_load 1 [get_ports {o[16]}]
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
create_clock -name vclk  -period 90  -waveform {0 45}
set_clock_uncertainty 0  [get_clocks vclk]
set_input_delay -clock vclk  0  [get_ports {a_i[31]}]
set_input_delay -clock vclk  0  [get_ports {a_i[30]}]
set_input_delay -clock vclk  0  [get_ports {a_i[29]}]
set_input_delay -clock vclk  0  [get_ports {a_i[28]}]
set_input_delay -clock vclk  0  [get_ports {a_i[27]}]
set_input_delay -clock vclk  0  [get_ports {a_i[26]}]
set_input_delay -clock vclk  0  [get_ports {a_i[25]}]
set_input_delay -clock vclk  0  [get_ports {a_i[24]}]
set_input_delay -clock vclk  0  [get_ports {a_i[23]}]
set_input_delay -clock vclk  0  [get_ports {a_i[22]}]
set_input_delay -clock vclk  0  [get_ports {a_i[21]}]
set_input_delay -clock vclk  0  [get_ports {a_i[20]}]
set_input_delay -clock vclk  0  [get_ports {a_i[19]}]
set_input_delay -clock vclk  0  [get_ports {a_i[18]}]
set_input_delay -clock vclk  0  [get_ports {a_i[17]}]
set_input_delay -clock vclk  0  [get_ports {a_i[16]}]
set_input_delay -clock vclk  0  [get_ports {a_i[15]}]
set_input_delay -clock vclk  0  [get_ports {a_i[14]}]
set_input_delay -clock vclk  0  [get_ports {a_i[13]}]
set_input_delay -clock vclk  0  [get_ports {a_i[12]}]
set_input_delay -clock vclk  0  [get_ports {a_i[11]}]
set_input_delay -clock vclk  0  [get_ports {a_i[10]}]
set_input_delay -clock vclk  0  [get_ports {a_i[9]}]
set_input_delay -clock vclk  0  [get_ports {a_i[8]}]
set_input_delay -clock vclk  0  [get_ports {a_i[7]}]
set_input_delay -clock vclk  0  [get_ports {a_i[6]}]
set_input_delay -clock vclk  0  [get_ports {a_i[5]}]
set_input_delay -clock vclk  0  [get_ports {a_i[4]}]
set_input_delay -clock vclk  0  [get_ports {a_i[3]}]
set_input_delay -clock vclk  0  [get_ports {a_i[2]}]
set_input_delay -clock vclk  0  [get_ports {a_i[1]}]
set_input_delay -clock vclk  0  [get_ports {a_i[0]}]
set_output_delay -clock vclk  0  [get_ports {o[31]}]
set_output_delay -clock vclk  0  [get_ports {o[30]}]
set_output_delay -clock vclk  0  [get_ports {o[29]}]
set_output_delay -clock vclk  0  [get_ports {o[28]}]
set_output_delay -clock vclk  0  [get_ports {o[27]}]
set_output_delay -clock vclk  0  [get_ports {o[26]}]
set_output_delay -clock vclk  0  [get_ports {o[25]}]
set_output_delay -clock vclk  0  [get_ports {o[24]}]
set_output_delay -clock vclk  0  [get_ports {o[23]}]
set_output_delay -clock vclk  0  [get_ports {o[22]}]
set_output_delay -clock vclk  0  [get_ports {o[21]}]
set_output_delay -clock vclk  0  [get_ports {o[20]}]
set_output_delay -clock vclk  0  [get_ports {o[19]}]
set_output_delay -clock vclk  0  [get_ports {o[18]}]
set_output_delay -clock vclk  0  [get_ports {o[17]}]
set_output_delay -clock vclk  0  [get_ports {o[16]}]
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
