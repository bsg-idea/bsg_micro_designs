create_clock -period [expr $::env(FO4_VAL)*70] -name oclk [get_ports oclk_i]
set_clock_uncertainty 0 [get_clock oclk]
set_input_delay 0 -clock oclk [get_ports iclk_data_i]
set_load [load_of [get_lib_pin */$::env(LOAD)]] [all_outputs]
set_output_delay 0 -clock oclk [get_ports oclk_data_o]
source $::env(BSG_DIR)/bsg_micro_designs/common/constraints/bsg_async/bsg_async.constraints.tcl
bsg_async