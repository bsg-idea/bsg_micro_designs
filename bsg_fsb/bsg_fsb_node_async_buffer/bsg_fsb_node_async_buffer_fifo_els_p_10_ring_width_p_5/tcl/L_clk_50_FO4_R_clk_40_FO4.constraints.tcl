create_clock -period [expr 1.0*40] -name R_clk [get_ports R_clk_i]
create_clock -period [expr 1.0*50] -name L_clk [get_ports L_clk_i]
set_clock_uncertainty 0 [get_clock L_clk]
set_clock_uncertainty 0 [get_clock R_clk]
set_input_delay 0 -clock L_clk [get_ports L_*_i]
set_input_delay 0 -clock R_clk [get_ports R_*_i]
set_load 1.0 [all_outputs]
set_output_delay 0 -clock L_clk [get_ports L_*_o]
set_output_delay 0 -clock R_clk [get_ports R_*_o]
source ~/bsg_micro_designs/common/constraints/bsg_async/bsg_async.constraints.tcl
bsg_async