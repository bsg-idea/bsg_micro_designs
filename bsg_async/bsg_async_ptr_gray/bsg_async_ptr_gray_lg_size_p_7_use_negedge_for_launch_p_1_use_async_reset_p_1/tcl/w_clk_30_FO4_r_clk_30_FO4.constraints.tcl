create_clock -period [expr $::env(FO4_VAL)*30] -name r_clk [get_ports r_clk_i]
create_clock -period [expr $::env(FO4_VAL)*30] -name w_clk [get_ports w_clk_i]
set_clock_uncertainty 0 [get_clock r_clk]
set_clock_uncertainty 0 [get_clock w_clk]
set_input_delay 0 -clock wclk [get_ports w_inc_i]
set_input_delay 0 -clock wclk [get_ports w_reset_i]
set_load [load_of [get_lib_pin */$::env(LOAD)]] [all_outputs]
set_output_delay 0 -clock rclk [get_ports w_ptr_gray_r_rsync_o]
set_output_delay 0 -clock wclk [get_ports w_ptr_binary_r_o]
set_output_delay 0 -clock wclk [get_ports w_ptr_gray_r_o]
source $::env(BSG_DIR)/bsg_micro_designs/common/constraints/bsg_async/bsg_async.constraints.tcl
bsg_async