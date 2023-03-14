create_clock -period [expr 1.0*100] -name vclk
set_clock_uncertainty 0 [get_clock vclk]
set_input_delay 0 -clock vclk [all_inputs]
set_load 1.0 [all_outputs]
set_output_delay 0 -clock vclk [all_outputs]
source ~/bsg_micro_designs/common/constraints/bsg_async/bsg_async.constraints.tcl
bsg_async