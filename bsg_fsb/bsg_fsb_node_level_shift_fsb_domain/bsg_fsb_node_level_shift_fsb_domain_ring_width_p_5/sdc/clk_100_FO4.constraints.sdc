###################################################################

# Created by write_sdc on Tue Feb 14 15:29:16 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports clk_o]
set_load -pin_load 1 [get_ports reset_o]
set_load -pin_load 1 [get_ports fsb_v_i_o]
set_load -pin_load 1 [get_ports {fsb_data_i_o[4]}]
set_load -pin_load 1 [get_ports {fsb_data_i_o[3]}]
set_load -pin_load 1 [get_ports {fsb_data_i_o[2]}]
set_load -pin_load 1 [get_ports {fsb_data_i_o[1]}]
set_load -pin_load 1 [get_ports {fsb_data_i_o[0]}]
set_load -pin_load 1 [get_ports fsb_ready_i_o]
set_load -pin_load 1 [get_ports node_v_i_o]
set_load -pin_load 1 [get_ports {node_data_i_o[4]}]
set_load -pin_load 1 [get_ports {node_data_i_o[3]}]
set_load -pin_load 1 [get_ports {node_data_i_o[2]}]
set_load -pin_load 1 [get_ports {node_data_i_o[1]}]
set_load -pin_load 1 [get_ports {node_data_i_o[0]}]
set_load -pin_load 1 [get_ports node_yumi_i_o]
create_clock [get_ports clk_i]  -name clk  -period 100  -waveform {0 50}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk_i]
set_input_delay -clock clk  0  [get_ports en_ls_i]
set_input_delay -clock clk  0  [get_ports reset_i]
set_input_delay -clock clk  0  [get_ports fsb_yumi_o_i]
set_input_delay -clock clk  0  [get_ports fsb_v_o_i]
set_input_delay -clock clk  0  [get_ports {fsb_data_o_i[4]}]
set_input_delay -clock clk  0  [get_ports {fsb_data_o_i[3]}]
set_input_delay -clock clk  0  [get_ports {fsb_data_o_i[2]}]
set_input_delay -clock clk  0  [get_ports {fsb_data_o_i[1]}]
set_input_delay -clock clk  0  [get_ports {fsb_data_o_i[0]}]
set_input_delay -clock clk  0  [get_ports node_ready_o_i]
set_input_delay -clock clk  0  [get_ports node_v_o_i]
set_input_delay -clock clk  0  [get_ports {node_data_o_i[4]}]
set_input_delay -clock clk  0  [get_ports {node_data_o_i[3]}]
set_input_delay -clock clk  0  [get_ports {node_data_o_i[2]}]
set_input_delay -clock clk  0  [get_ports {node_data_o_i[1]}]
set_input_delay -clock clk  0  [get_ports {node_data_o_i[0]}]
set_output_delay -clock clk  0  [get_ports clk_o]
set_output_delay -clock clk  0  [get_ports reset_o]
set_output_delay -clock clk  0  [get_ports fsb_v_i_o]
set_output_delay -clock clk  0  [get_ports {fsb_data_i_o[4]}]
set_output_delay -clock clk  0  [get_ports {fsb_data_i_o[3]}]
set_output_delay -clock clk  0  [get_ports {fsb_data_i_o[2]}]
set_output_delay -clock clk  0  [get_ports {fsb_data_i_o[1]}]
set_output_delay -clock clk  0  [get_ports {fsb_data_i_o[0]}]
set_output_delay -clock clk  0  [get_ports fsb_ready_i_o]
set_output_delay -clock clk  0  [get_ports node_v_i_o]
set_output_delay -clock clk  0  [get_ports {node_data_i_o[4]}]
set_output_delay -clock clk  0  [get_ports {node_data_i_o[3]}]
set_output_delay -clock clk  0  [get_ports {node_data_i_o[2]}]
set_output_delay -clock clk  0  [get_ports {node_data_i_o[1]}]
set_output_delay -clock clk  0  [get_ports {node_data_i_o[0]}]
set_output_delay -clock clk  0  [get_ports node_yumi_i_o]
