###################################################################

# Created by write_sdc on Sun Jan 19 21:07:29 2020

###################################################################
set sdc_version 2.1

set_load -pin_load 1.5 [get_ports o]
create_clock -name vclk  -period 100  -waveform {0 50}
set_clock_uncertainty 0  [get_clocks vclk]
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
set_input_delay -clock vclk  0  [get_ports {b_i[15]}]
set_input_delay -clock vclk  0  [get_ports {b_i[14]}]
set_input_delay -clock vclk  0  [get_ports {b_i[13]}]
set_input_delay -clock vclk  0  [get_ports {b_i[12]}]
set_input_delay -clock vclk  0  [get_ports {b_i[11]}]
set_input_delay -clock vclk  0  [get_ports {b_i[10]}]
set_input_delay -clock vclk  0  [get_ports {b_i[9]}]
set_input_delay -clock vclk  0  [get_ports {b_i[8]}]
set_input_delay -clock vclk  0  [get_ports {b_i[7]}]
set_input_delay -clock vclk  0  [get_ports {b_i[6]}]
set_input_delay -clock vclk  0  [get_ports {b_i[5]}]
set_input_delay -clock vclk  0  [get_ports {b_i[4]}]
set_input_delay -clock vclk  0  [get_ports {b_i[3]}]
set_input_delay -clock vclk  0  [get_ports {b_i[2]}]
set_input_delay -clock vclk  0  [get_ports {b_i[1]}]
set_input_delay -clock vclk  0  [get_ports {b_i[0]}]
set_output_delay -clock vclk  0  [get_ports o]
