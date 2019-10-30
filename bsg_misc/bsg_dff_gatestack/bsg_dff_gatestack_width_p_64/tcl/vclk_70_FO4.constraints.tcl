create_clock -period [expr $::env(FO4_VAL)*70] -name vclk
set_clock_uncertainty 0 [get_clock vclk]
set_input_delay 0 -clock vclk [all_inputs]
set_load [load_of [get_lib_pin */$::env(LOAD)]] [all_outputs]
set_output_delay 0 -clock vclk [all_outputs]
source $::env(PATH)/bsg_micro_designs/common/constraints/bsg_async/bsg_async.constraints.tcl
bsg_async