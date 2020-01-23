###################################################################

# Created by write_sdc on Sun Jan 19 21:52:22 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports strobe_r_o]
create_clock [get_ports clk_i]  -name clk  -period ${FO4_60} -waveform {0 ${FO4_60_DIV_2}}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk_i]
set_input_delay -clock clk  0  [get_ports reset_r_i]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[15]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[14]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[13]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[12]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[11]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[10]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[9]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[8]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[7]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[6]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[5]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[4]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[3]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[2]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[1]}]
set_input_delay -clock clk  0  [get_ports {init_val_r_i[0]}]
set_output_delay -clock clk  0  [get_ports strobe_r_o]
