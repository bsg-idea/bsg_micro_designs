###################################################################

# Created by write_sdc on Sun Jan 19 20:04:28 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports clk_r_o]
create_clock [get_ports clk_i]  -name clk  -period ${FO4_80} -waveform {0 ${FO4_80_DIV_2}}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk_i]
set_input_delay -clock clk  0  [get_ports reset_i]
set_input_delay -clock clk  0  [get_ports {val_i[31]}]
set_input_delay -clock clk  0  [get_ports {val_i[30]}]
set_input_delay -clock clk  0  [get_ports {val_i[29]}]
set_input_delay -clock clk  0  [get_ports {val_i[28]}]
set_input_delay -clock clk  0  [get_ports {val_i[27]}]
set_input_delay -clock clk  0  [get_ports {val_i[26]}]
set_input_delay -clock clk  0  [get_ports {val_i[25]}]
set_input_delay -clock clk  0  [get_ports {val_i[24]}]
set_input_delay -clock clk  0  [get_ports {val_i[23]}]
set_input_delay -clock clk  0  [get_ports {val_i[22]}]
set_input_delay -clock clk  0  [get_ports {val_i[21]}]
set_input_delay -clock clk  0  [get_ports {val_i[20]}]
set_input_delay -clock clk  0  [get_ports {val_i[19]}]
set_input_delay -clock clk  0  [get_ports {val_i[18]}]
set_input_delay -clock clk  0  [get_ports {val_i[17]}]
set_input_delay -clock clk  0  [get_ports {val_i[16]}]
set_input_delay -clock clk  0  [get_ports {val_i[15]}]
set_input_delay -clock clk  0  [get_ports {val_i[14]}]
set_input_delay -clock clk  0  [get_ports {val_i[13]}]
set_input_delay -clock clk  0  [get_ports {val_i[12]}]
set_input_delay -clock clk  0  [get_ports {val_i[11]}]
set_input_delay -clock clk  0  [get_ports {val_i[10]}]
set_input_delay -clock clk  0  [get_ports {val_i[9]}]
set_input_delay -clock clk  0  [get_ports {val_i[8]}]
set_input_delay -clock clk  0  [get_ports {val_i[7]}]
set_input_delay -clock clk  0  [get_ports {val_i[6]}]
set_input_delay -clock clk  0  [get_ports {val_i[5]}]
set_input_delay -clock clk  0  [get_ports {val_i[4]}]
set_input_delay -clock clk  0  [get_ports {val_i[3]}]
set_input_delay -clock clk  0  [get_ports {val_i[2]}]
set_input_delay -clock clk  0  [get_ports {val_i[1]}]
set_input_delay -clock clk  0  [get_ports {val_i[0]}]
set_output_delay -clock clk  0  [get_ports clk_r_o]