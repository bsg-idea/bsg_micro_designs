###################################################################

# Created by write_sdc on Tue Feb 14 11:35:07 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports {a_o[15]}]
set_load -pin_load 1 [get_ports {a_o[14]}]
set_load -pin_load 1 [get_ports {a_o[13]}]
set_load -pin_load 1 [get_ports {a_o[12]}]
set_load -pin_load 1 [get_ports {a_o[11]}]
set_load -pin_load 1 [get_ports {a_o[10]}]
set_load -pin_load 1 [get_ports {a_o[9]}]
set_load -pin_load 1 [get_ports {a_o[8]}]
set_load -pin_load 1 [get_ports {a_o[7]}]
set_load -pin_load 1 [get_ports {a_o[6]}]
set_load -pin_load 1 [get_ports {a_o[5]}]
set_load -pin_load 1 [get_ports {a_o[4]}]
set_load -pin_load 1 [get_ports {a_o[3]}]
set_load -pin_load 1 [get_ports {a_o[2]}]
set_load -pin_load 1 [get_ports {a_o[1]}]
set_load -pin_load 1 [get_ports {a_o[0]}]
set_load -pin_load 1 [get_ports {b_o[15]}]
set_load -pin_load 1 [get_ports {b_o[14]}]
set_load -pin_load 1 [get_ports {b_o[13]}]
set_load -pin_load 1 [get_ports {b_o[12]}]
set_load -pin_load 1 [get_ports {b_o[11]}]
set_load -pin_load 1 [get_ports {b_o[10]}]
set_load -pin_load 1 [get_ports {b_o[9]}]
set_load -pin_load 1 [get_ports {b_o[8]}]
set_load -pin_load 1 [get_ports {b_o[7]}]
set_load -pin_load 1 [get_ports {b_o[6]}]
set_load -pin_load 1 [get_ports {b_o[5]}]
set_load -pin_load 1 [get_ports {b_o[4]}]
set_load -pin_load 1 [get_ports {b_o[3]}]
set_load -pin_load 1 [get_ports {b_o[2]}]
set_load -pin_load 1 [get_ports {b_o[1]}]
set_load -pin_load 1 [get_ports {b_o[0]}]
set_load -pin_load 1 [get_ports {s_o[15]}]
set_load -pin_load 1 [get_ports {s_o[14]}]
set_load -pin_load 1 [get_ports {s_o[13]}]
set_load -pin_load 1 [get_ports {s_o[12]}]
set_load -pin_load 1 [get_ports {s_o[11]}]
set_load -pin_load 1 [get_ports {s_o[10]}]
set_load -pin_load 1 [get_ports {s_o[9]}]
set_load -pin_load 1 [get_ports {s_o[8]}]
set_load -pin_load 1 [get_ports {s_o[7]}]
set_load -pin_load 1 [get_ports {s_o[6]}]
set_load -pin_load 1 [get_ports {s_o[5]}]
set_load -pin_load 1 [get_ports {s_o[4]}]
set_load -pin_load 1 [get_ports {s_o[3]}]
set_load -pin_load 1 [get_ports {s_o[2]}]
set_load -pin_load 1 [get_ports {s_o[1]}]
set_load -pin_load 1 [get_ports {s_o[0]}]
set_load -pin_load 1 [get_ports c_o]
set_load -pin_load 1 [get_ports {prod_accum_o[15]}]
set_load -pin_load 1 [get_ports {prod_accum_o[14]}]
set_load -pin_load 1 [get_ports {prod_accum_o[13]}]
set_load -pin_load 1 [get_ports {prod_accum_o[12]}]
set_load -pin_load 1 [get_ports {prod_accum_o[11]}]
set_load -pin_load 1 [get_ports {prod_accum_o[10]}]
set_load -pin_load 1 [get_ports {prod_accum_o[9]}]
set_load -pin_load 1 [get_ports {prod_accum_o[8]}]
set_load -pin_load 1 [get_ports {prod_accum_o[7]}]
set_load -pin_load 1 [get_ports {prod_accum_o[6]}]
set_load -pin_load 1 [get_ports {prod_accum_o[5]}]
set_load -pin_load 1 [get_ports {prod_accum_o[4]}]
set_load -pin_load 1 [get_ports {prod_accum_o[3]}]
set_load -pin_load 1 [get_ports {prod_accum_o[2]}]
set_load -pin_load 1 [get_ports {prod_accum_o[1]}]
set_load -pin_load 1 [get_ports {prod_accum_o[0]}]
create_clock [get_ports clk_i]  -name clk  -period 70  -waveform {0 35}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk_i]
set_input_delay -clock clk  0  [get_ports rst_i]
set_input_delay -clock clk  0  [get_ports v_i]
set_input_delay -clock clk  0  [get_ports {a_i[15]}]
set_input_delay -clock clk  0  [get_ports {a_i[14]}]
set_input_delay -clock clk  0  [get_ports {a_i[13]}]
set_input_delay -clock clk  0  [get_ports {a_i[12]}]
set_input_delay -clock clk  0  [get_ports {a_i[11]}]
set_input_delay -clock clk  0  [get_ports {a_i[10]}]
set_input_delay -clock clk  0  [get_ports {a_i[9]}]
set_input_delay -clock clk  0  [get_ports {a_i[8]}]
set_input_delay -clock clk  0  [get_ports {a_i[7]}]
set_input_delay -clock clk  0  [get_ports {a_i[6]}]
set_input_delay -clock clk  0  [get_ports {a_i[5]}]
set_input_delay -clock clk  0  [get_ports {a_i[4]}]
set_input_delay -clock clk  0  [get_ports {a_i[3]}]
set_input_delay -clock clk  0  [get_ports {a_i[2]}]
set_input_delay -clock clk  0  [get_ports {a_i[1]}]
set_input_delay -clock clk  0  [get_ports {a_i[0]}]
set_input_delay -clock clk  0  [get_ports {b_i[15]}]
set_input_delay -clock clk  0  [get_ports {b_i[14]}]
set_input_delay -clock clk  0  [get_ports {b_i[13]}]
set_input_delay -clock clk  0  [get_ports {b_i[12]}]
set_input_delay -clock clk  0  [get_ports {b_i[11]}]
set_input_delay -clock clk  0  [get_ports {b_i[10]}]
set_input_delay -clock clk  0  [get_ports {b_i[9]}]
set_input_delay -clock clk  0  [get_ports {b_i[8]}]
set_input_delay -clock clk  0  [get_ports {b_i[7]}]
set_input_delay -clock clk  0  [get_ports {b_i[6]}]
set_input_delay -clock clk  0  [get_ports {b_i[5]}]
set_input_delay -clock clk  0  [get_ports {b_i[4]}]
set_input_delay -clock clk  0  [get_ports {b_i[3]}]
set_input_delay -clock clk  0  [get_ports {b_i[2]}]
set_input_delay -clock clk  0  [get_ports {b_i[1]}]
set_input_delay -clock clk  0  [get_ports {b_i[0]}]
set_input_delay -clock clk  0  [get_ports {s_i[15]}]
set_input_delay -clock clk  0  [get_ports {s_i[14]}]
set_input_delay -clock clk  0  [get_ports {s_i[13]}]
set_input_delay -clock clk  0  [get_ports {s_i[12]}]
set_input_delay -clock clk  0  [get_ports {s_i[11]}]
set_input_delay -clock clk  0  [get_ports {s_i[10]}]
set_input_delay -clock clk  0  [get_ports {s_i[9]}]
set_input_delay -clock clk  0  [get_ports {s_i[8]}]
set_input_delay -clock clk  0  [get_ports {s_i[7]}]
set_input_delay -clock clk  0  [get_ports {s_i[6]}]
set_input_delay -clock clk  0  [get_ports {s_i[5]}]
set_input_delay -clock clk  0  [get_ports {s_i[4]}]
set_input_delay -clock clk  0  [get_ports {s_i[3]}]
set_input_delay -clock clk  0  [get_ports {s_i[2]}]
set_input_delay -clock clk  0  [get_ports {s_i[1]}]
set_input_delay -clock clk  0  [get_ports {s_i[0]}]
set_input_delay -clock clk  0  [get_ports c_i]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[14]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[13]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[12]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[11]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[10]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[9]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[8]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[7]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[6]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[5]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[4]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[3]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[2]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[1]}]
set_input_delay -clock clk  0  [get_ports {prod_accum_i[0]}]
set_output_delay -clock clk  0  [get_ports {a_o[15]}]
set_output_delay -clock clk  0  [get_ports {a_o[14]}]
set_output_delay -clock clk  0  [get_ports {a_o[13]}]
set_output_delay -clock clk  0  [get_ports {a_o[12]}]
set_output_delay -clock clk  0  [get_ports {a_o[11]}]
set_output_delay -clock clk  0  [get_ports {a_o[10]}]
set_output_delay -clock clk  0  [get_ports {a_o[9]}]
set_output_delay -clock clk  0  [get_ports {a_o[8]}]
set_output_delay -clock clk  0  [get_ports {a_o[7]}]
set_output_delay -clock clk  0  [get_ports {a_o[6]}]
set_output_delay -clock clk  0  [get_ports {a_o[5]}]
set_output_delay -clock clk  0  [get_ports {a_o[4]}]
set_output_delay -clock clk  0  [get_ports {a_o[3]}]
set_output_delay -clock clk  0  [get_ports {a_o[2]}]
set_output_delay -clock clk  0  [get_ports {a_o[1]}]
set_output_delay -clock clk  0  [get_ports {a_o[0]}]
set_output_delay -clock clk  0  [get_ports {b_o[15]}]
set_output_delay -clock clk  0  [get_ports {b_o[14]}]
set_output_delay -clock clk  0  [get_ports {b_o[13]}]
set_output_delay -clock clk  0  [get_ports {b_o[12]}]
set_output_delay -clock clk  0  [get_ports {b_o[11]}]
set_output_delay -clock clk  0  [get_ports {b_o[10]}]
set_output_delay -clock clk  0  [get_ports {b_o[9]}]
set_output_delay -clock clk  0  [get_ports {b_o[8]}]
set_output_delay -clock clk  0  [get_ports {b_o[7]}]
set_output_delay -clock clk  0  [get_ports {b_o[6]}]
set_output_delay -clock clk  0  [get_ports {b_o[5]}]
set_output_delay -clock clk  0  [get_ports {b_o[4]}]
set_output_delay -clock clk  0  [get_ports {b_o[3]}]
set_output_delay -clock clk  0  [get_ports {b_o[2]}]
set_output_delay -clock clk  0  [get_ports {b_o[1]}]
set_output_delay -clock clk  0  [get_ports {b_o[0]}]
set_output_delay -clock clk  0  [get_ports {s_o[15]}]
set_output_delay -clock clk  0  [get_ports {s_o[14]}]
set_output_delay -clock clk  0  [get_ports {s_o[13]}]
set_output_delay -clock clk  0  [get_ports {s_o[12]}]
set_output_delay -clock clk  0  [get_ports {s_o[11]}]
set_output_delay -clock clk  0  [get_ports {s_o[10]}]
set_output_delay -clock clk  0  [get_ports {s_o[9]}]
set_output_delay -clock clk  0  [get_ports {s_o[8]}]
set_output_delay -clock clk  0  [get_ports {s_o[7]}]
set_output_delay -clock clk  0  [get_ports {s_o[6]}]
set_output_delay -clock clk  0  [get_ports {s_o[5]}]
set_output_delay -clock clk  0  [get_ports {s_o[4]}]
set_output_delay -clock clk  0  [get_ports {s_o[3]}]
set_output_delay -clock clk  0  [get_ports {s_o[2]}]
set_output_delay -clock clk  0  [get_ports {s_o[1]}]
set_output_delay -clock clk  0  [get_ports {s_o[0]}]
set_output_delay -clock clk  0  [get_ports c_o]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[15]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[14]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[13]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[12]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[11]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[10]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[9]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[8]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[7]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[6]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[5]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[4]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[3]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[2]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[1]}]
set_output_delay -clock clk  0  [get_ports {prod_accum_o[0]}]
