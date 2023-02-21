###################################################################

# Created by write_sdc on Tue Feb 14 11:27:25 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports ready_o]
set_load -pin_load 1 [get_ports opA_sel_o]
set_load -pin_load 1 [get_ports opA_ld_o]
set_load -pin_load 1 [get_ports opA_inv_o]
set_load -pin_load 1 [get_ports opA_clr_l_o]
set_load -pin_load 1 [get_ports {opB_sel_o[2]}]
set_load -pin_load 1 [get_ports {opB_sel_o[1]}]
set_load -pin_load 1 [get_ports {opB_sel_o[0]}]
set_load -pin_load 1 [get_ports opB_ld_o]
set_load -pin_load 1 [get_ports opB_inv_o]
set_load -pin_load 1 [get_ports opB_clr_l_o]
set_load -pin_load 1 [get_ports {opC_sel_o[2]}]
set_load -pin_load 1 [get_ports {opC_sel_o[1]}]
set_load -pin_load 1 [get_ports {opC_sel_o[0]}]
set_load -pin_load 1 [get_ports opC_ld_o]
set_load -pin_load 1 [get_ports latch_inputs_o]
set_load -pin_load 1 [get_ports adder_cin_o]
set_load -pin_load 1 [get_ports v_o]
create_clock [get_ports clk_i]  -name clk  -period 80  -waveform {0 40}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk_i]
set_input_delay -clock clk  0  [get_ports reset_i]
set_input_delay -clock clk  0  [get_ports v_i]
set_input_delay -clock clk  0  [get_ports zero_divisor_i]
set_input_delay -clock clk  0  [get_ports signed_div_r_i]
set_input_delay -clock clk  0  [get_ports adder_result_is_neg_i]
set_input_delay -clock clk  0  [get_ports opA_is_neg_i]
set_input_delay -clock clk  0  [get_ports opC_is_neg_i]
set_input_delay -clock clk  0  [get_ports yumi_i]
set_output_delay -clock clk  0  [get_ports ready_o]
set_output_delay -clock clk  0  [get_ports opA_sel_o]
set_output_delay -clock clk  0  [get_ports opA_ld_o]
set_output_delay -clock clk  0  [get_ports opA_inv_o]
set_output_delay -clock clk  0  [get_ports opA_clr_l_o]
set_output_delay -clock clk  0  [get_ports {opB_sel_o[2]}]
set_output_delay -clock clk  0  [get_ports {opB_sel_o[1]}]
set_output_delay -clock clk  0  [get_ports {opB_sel_o[0]}]
set_output_delay -clock clk  0  [get_ports opB_ld_o]
set_output_delay -clock clk  0  [get_ports opB_inv_o]
set_output_delay -clock clk  0  [get_ports opB_clr_l_o]
set_output_delay -clock clk  0  [get_ports {opC_sel_o[2]}]
set_output_delay -clock clk  0  [get_ports {opC_sel_o[1]}]
set_output_delay -clock clk  0  [get_ports {opC_sel_o[0]}]
set_output_delay -clock clk  0  [get_ports opC_ld_o]
set_output_delay -clock clk  0  [get_ports latch_inputs_o]
set_output_delay -clock clk  0  [get_ports adder_cin_o]
set_output_delay -clock clk  0  [get_ports v_o]