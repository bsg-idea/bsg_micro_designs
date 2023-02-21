create_clock -period [expr 1.0*70] -name clk [get_ports clk]
set_clock_uncertainty 0 [get_clock clk]
set_input_delay 0 -clock clk [all_inputs]
set_load 1.0 [all_outputs]
set_output_delay 0 -clock clk [all_outputs]
source ~/bsg_micro_designs/common/constraints/bsg_async/bsg_async.constraints.tcl
bsg_async