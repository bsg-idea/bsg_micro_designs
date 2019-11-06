create_clock -period [expr $::env(FO4_VAL)*30] -name wh_clk [get_ports wh_clk_i]
create_clock -period [expr $::env(FO4_VAL)*40] -name ral_clk [get_ports ral_clk_i]
set_clock_uncertainty 0 [get_clock ral_clk]
set_clock_uncertainty 0 [get_clock wh_clk]
set_input_delay 0 -clock ral_clk [get_ports ral_*_i]
set_input_delay 0 -clock wh_clk [get_ports wh_*_i]
set_load [load_of [get_lib_pin */$::env(LOAD)]] [all_outputs]
set_output_delay 0 -clock ral_clk [get_ports ral_*_o]
set_output_delay 0 -clock wh_clk [get_ports wh_*_o]
source $::env(PATH)/<new_repo_name>/common/constraints/bsg_async/bsg_async.constraints.tcl
bsg_async