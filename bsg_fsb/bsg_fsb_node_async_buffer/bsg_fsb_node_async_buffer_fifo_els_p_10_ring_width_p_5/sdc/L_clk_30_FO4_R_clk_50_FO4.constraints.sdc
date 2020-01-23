###################################################################

# Created by write_sdc on Wed Jan 22 15:55:02 2020

###################################################################
set sdc_version 2.1

set_load -pin_load ${PIN_LOAD} [get_ports L_en_o]
set_load -pin_load ${PIN_LOAD} [get_ports L_v_o]
set_load -pin_load ${PIN_LOAD} [get_ports {L_data_o[4]}]
set_load -pin_load ${PIN_LOAD} [get_ports {L_data_o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {L_data_o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {L_data_o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {L_data_o[0]}]
set_load -pin_load ${PIN_LOAD} [get_ports L_yumi_o]
set_load -pin_load ${PIN_LOAD} [get_ports R_ready_o]
set_load -pin_load ${PIN_LOAD} [get_ports R_v_o]
set_load -pin_load ${PIN_LOAD} [get_ports {R_data_o[4]}]
set_load -pin_load ${PIN_LOAD} [get_ports {R_data_o[3]}]
set_load -pin_load ${PIN_LOAD} [get_ports {R_data_o[2]}]
set_load -pin_load ${PIN_LOAD} [get_ports {R_data_o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {R_data_o[0]}]
create_clock [get_ports L_clk_i]  -name L_clk  -period ${FO4_30} -waveform {0 ${FO4_30_DIV_2}}
set_clock_uncertainty 0  [get_clocks L_clk]
create_clock [get_ports R_clk_i]  -name R_clk  -period ${FO4_50} -waveform {0 ${FO4_50_DIV_2}}
set_clock_uncertainty 0  [get_clocks R_clk]
set_max_delay 15 -from [get_clocks L_clk] -to [get_clocks R_clk] -ignore_clock_latency
set_min_delay 0 -from [get_clocks L_clk] -to [get_clocks R_clk] -ignore_clock_latency
set_max_delay 15 -from [get_clocks R_clk] -to [get_clocks L_clk] -ignore_clock_latency
set_min_delay 0 -from [get_clocks R_clk] -to [get_clocks L_clk] -ignore_clock_latency
set_input_delay -clock L_clk  0  [get_ports L_clk_i]
set_input_delay -clock R_clk  0  [get_ports R_clk_i]
set_input_delay -clock L_clk  0  [get_ports {L_data_i[4]}]
set_input_delay -clock L_clk  0  [get_ports {L_data_i[3]}]
set_input_delay -clock L_clk  0  [get_ports {L_data_i[2]}]
set_input_delay -clock L_clk  0  [get_ports {L_data_i[1]}]
set_input_delay -clock L_clk  0  [get_ports {L_data_i[0]}]
set_input_delay -clock L_clk  0  [get_ports L_reset_i]
set_input_delay -clock L_clk  0  [get_ports L_ready_i]
set_input_delay -clock L_clk  0  [get_ports L_v_i]
set_input_delay -clock R_clk  0  [get_ports {R_data_i[4]}]
set_input_delay -clock R_clk  0  [get_ports {R_data_i[3]}]
set_input_delay -clock R_clk  0  [get_ports {R_data_i[2]}]
set_input_delay -clock R_clk  0  [get_ports {R_data_i[1]}]
set_input_delay -clock R_clk  0  [get_ports {R_data_i[0]}]
set_input_delay -clock R_clk  0  [get_ports R_reset_i]
set_input_delay -clock R_clk  0  [get_ports R_en_i]
set_input_delay -clock R_clk  0  [get_ports R_v_i]
set_input_delay -clock R_clk  0  [get_ports R_yumi_i]
set_output_delay -clock L_clk  0  [get_ports {L_data_o[4]}]
set_output_delay -clock L_clk  0  [get_ports {L_data_o[3]}]
set_output_delay -clock L_clk  0  [get_ports {L_data_o[2]}]
set_output_delay -clock L_clk  0  [get_ports {L_data_o[1]}]
set_output_delay -clock L_clk  0  [get_ports {L_data_o[0]}]
set_output_delay -clock L_clk  0  [get_ports L_en_o]
set_output_delay -clock L_clk  0  [get_ports L_v_o]
set_output_delay -clock L_clk  0  [get_ports L_yumi_o]
set_output_delay -clock R_clk  0  [get_ports {R_data_o[4]}]
set_output_delay -clock R_clk  0  [get_ports {R_data_o[3]}]
set_output_delay -clock R_clk  0  [get_ports {R_data_o[2]}]
set_output_delay -clock R_clk  0  [get_ports {R_data_o[1]}]
set_output_delay -clock R_clk  0  [get_ports {R_data_o[0]}]
set_output_delay -clock R_clk  0  [get_ports R_ready_o]
set_output_delay -clock R_clk  0  [get_ports R_v_o]
