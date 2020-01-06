create_clock -period [expr $::env(FO4_VAL)*40] -name io_clk [get_ports io_clk_i]
create_clock -period [expr $::env(FO4_VAL)*50] -name core_clk [get_ports core_clk_i]
set_clock_uncertainty 0 [get_clock core_clk]
set_clock_uncertainty 0 [get_clock io_clk]
set_input_delay 0 -clock core_clk [get_ports core_*_i]
set_input_delay 0 -clock io_clk [get_ports io_*_i]
set_load [load_of [get_lib_pin */$::env(LOAD)]] [all_outputs]
set_output_delay 0 -clock core_clk [get_ports core_*_o]
source $::env(BSG_DIR)/bsg_micro_designs/common/constraints/bsg_async/bsg_async.constraints.tcl
bsg_async