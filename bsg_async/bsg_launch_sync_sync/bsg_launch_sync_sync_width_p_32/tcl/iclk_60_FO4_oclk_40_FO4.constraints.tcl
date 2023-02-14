create_clock -period [expr 1.0*40] -name oclk [get_ports oclk_i]
create_clock -period [expr 1.0*60] -name iclk [get_ports iclk_i]
set_clock_uncertainty 0 [get_clock iclk]
set_clock_uncertainty 0 [get_clock oclk]
set_input_delay 0 -clock iclk [get_ports iclk_data_i]
set_input_delay 0 -clock iclk [get_ports iclk_reset_i]
set_load 1.0 [all_outputs]
set_output_delay 0 -clock iclk [get_ports iclk_data_o]
set_output_delay 0 -clock oclk [get_ports oclk_data_o]
source ~/bsg_micro_designs/common/constraints/bsg_async/bsg_async.constraints.tcl
bsg_async