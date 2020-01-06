create_clock -period [expr $::env(FO4_VAL)*40] -name clk [get_ports w_clk_i]
set_clock_uncertainty 0 [get_clock clk]
set_input_delay 0 -clock clk [all_inputs]
set_load [load_of [get_lib_pin */$::env(LOAD)]] [all_outputs]
set_output_delay 0 -clock clk [all_outputs]
source $::env(BSG_DIR)/bsg_micro_designs/common/constraints/bsg_async/bsg_async.constraints.tcl
bsg_async