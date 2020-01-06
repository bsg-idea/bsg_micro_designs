create_clock -period [expr $::env(FO4_VAL)*50] -name L_clk [get_ports L_clk_i]
create_clock -period [expr $::env(FO4_VAL)*60] -name R_clk [get_ports R_clk_i]
set_clock_uncertainty 0 [get_clock L_clk]
set_clock_uncertainty 0 [get_clock R_clk]
set_input_delay 0 -clock L_clk [get_ports L_*_i]
set_input_delay 0 -clock R_clk [get_ports R_*_i]
set_load [load_of [get_lib_pin */$::env(LOAD)]] [all_outputs]
set_output_delay 0 -clock L_clk [get_ports L_*_o]
set_output_delay 0 -clock R_clk [get_ports R_*_o]
source $::env(BSG_DIR)/bsg_micro_designs/common/constraints/bsg_async/bsg_async.constraints.tcl
bsg_async