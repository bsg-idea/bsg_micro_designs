create_clock -period [expr 1.0*100] -name oclk [get_ports oclk_i]
set_clock_uncertainty 0 [get_clock oclk]
set_input_delay 0 -clock oclk [get_ports iclk_data_i]
set_load 1.0 [all_outputs]
set_output_delay 0 -clock oclk [get_ports oclk_data_o]
source ~/bsg_micro_designs/common/constraints/bsg_async/bsg_async.constraints.tcl
bsg_async