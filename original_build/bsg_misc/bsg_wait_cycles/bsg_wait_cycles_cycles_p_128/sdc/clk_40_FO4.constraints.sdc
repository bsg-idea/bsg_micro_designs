###################################################################

# Created by write_sdc on Sun Jan 19 22:03:39 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports ready_r_o]
create_clock [get_ports clk_i]  -name clk  -period ${FO4_40} -waveform {0 ${FO4_40_DIV_2}}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk_i]
set_input_delay -clock clk  0  [get_ports reset_i]
set_input_delay -clock clk  0  [get_ports activate_i]
set_output_delay -clock clk  0  [get_ports ready_r_o]
