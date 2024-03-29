###################################################################

# Created by write_sdc on Mon Mar 13 21:03:18 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports {data_o[31]}]
set_load -pin_load 1 [get_ports {data_o[30]}]
set_load -pin_load 1 [get_ports {data_o[29]}]
set_load -pin_load 1 [get_ports {data_o[28]}]
set_load -pin_load 1 [get_ports {data_o[27]}]
set_load -pin_load 1 [get_ports {data_o[26]}]
set_load -pin_load 1 [get_ports {data_o[25]}]
set_load -pin_load 1 [get_ports {data_o[24]}]
set_load -pin_load 1 [get_ports {data_o[23]}]
set_load -pin_load 1 [get_ports {data_o[22]}]
set_load -pin_load 1 [get_ports {data_o[21]}]
set_load -pin_load 1 [get_ports {data_o[20]}]
set_load -pin_load 1 [get_ports {data_o[19]}]
set_load -pin_load 1 [get_ports {data_o[18]}]
set_load -pin_load 1 [get_ports {data_o[17]}]
set_load -pin_load 1 [get_ports {data_o[16]}]
set_load -pin_load 1 [get_ports {data_o[15]}]
set_load -pin_load 1 [get_ports {data_o[14]}]
set_load -pin_load 1 [get_ports {data_o[13]}]
set_load -pin_load 1 [get_ports {data_o[12]}]
set_load -pin_load 1 [get_ports {data_o[11]}]
set_load -pin_load 1 [get_ports {data_o[10]}]
set_load -pin_load 1 [get_ports {data_o[9]}]
set_load -pin_load 1 [get_ports {data_o[8]}]
set_load -pin_load 1 [get_ports {data_o[7]}]
set_load -pin_load 1 [get_ports {data_o[6]}]
set_load -pin_load 1 [get_ports {data_o[5]}]
set_load -pin_load 1 [get_ports {data_o[4]}]
set_load -pin_load 1 [get_ports {data_o[3]}]
set_load -pin_load 1 [get_ports {data_o[2]}]
set_load -pin_load 1 [get_ports {data_o[1]}]
set_load -pin_load 1 [get_ports {data_o[0]}]
create_clock -name vclk  -period 80  -waveform {0 40}
set_clock_uncertainty 0  [get_clocks vclk]
set_input_delay -clock vclk  0  [get_ports {data0_i[31]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[30]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[29]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[28]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[27]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[26]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[25]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[24]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[23]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[22]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[21]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[20]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[19]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[18]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[17]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[16]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[15]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[14]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[13]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[12]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[11]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[10]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[9]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[8]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[7]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[6]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[5]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[4]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[3]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[2]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[1]}]
set_input_delay -clock vclk  0  [get_ports {data0_i[0]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[31]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[30]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[29]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[28]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[27]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[26]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[25]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[24]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[23]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[22]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[21]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[20]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[19]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[18]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[17]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[16]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[15]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[14]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[13]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[12]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[11]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[10]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[9]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[8]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[7]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[6]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[5]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[4]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[3]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[2]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[1]}]
set_input_delay -clock vclk  0  [get_ports {data1_i[0]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[31]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[30]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[29]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[28]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[27]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[26]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[25]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[24]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[23]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[22]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[21]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[20]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[19]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[18]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[17]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[16]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[15]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[14]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[13]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[12]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[11]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[10]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[9]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[8]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[7]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[6]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[5]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[4]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[3]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[2]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[1]}]
set_input_delay -clock vclk  0  [get_ports {sel_i[0]}]
set_output_delay -clock vclk  0  [get_ports {data_o[31]}]
set_output_delay -clock vclk  0  [get_ports {data_o[30]}]
set_output_delay -clock vclk  0  [get_ports {data_o[29]}]
set_output_delay -clock vclk  0  [get_ports {data_o[28]}]
set_output_delay -clock vclk  0  [get_ports {data_o[27]}]
set_output_delay -clock vclk  0  [get_ports {data_o[26]}]
set_output_delay -clock vclk  0  [get_ports {data_o[25]}]
set_output_delay -clock vclk  0  [get_ports {data_o[24]}]
set_output_delay -clock vclk  0  [get_ports {data_o[23]}]
set_output_delay -clock vclk  0  [get_ports {data_o[22]}]
set_output_delay -clock vclk  0  [get_ports {data_o[21]}]
set_output_delay -clock vclk  0  [get_ports {data_o[20]}]
set_output_delay -clock vclk  0  [get_ports {data_o[19]}]
set_output_delay -clock vclk  0  [get_ports {data_o[18]}]
set_output_delay -clock vclk  0  [get_ports {data_o[17]}]
set_output_delay -clock vclk  0  [get_ports {data_o[16]}]
set_output_delay -clock vclk  0  [get_ports {data_o[15]}]
set_output_delay -clock vclk  0  [get_ports {data_o[14]}]
set_output_delay -clock vclk  0  [get_ports {data_o[13]}]
set_output_delay -clock vclk  0  [get_ports {data_o[12]}]
set_output_delay -clock vclk  0  [get_ports {data_o[11]}]
set_output_delay -clock vclk  0  [get_ports {data_o[10]}]
set_output_delay -clock vclk  0  [get_ports {data_o[9]}]
set_output_delay -clock vclk  0  [get_ports {data_o[8]}]
set_output_delay -clock vclk  0  [get_ports {data_o[7]}]
set_output_delay -clock vclk  0  [get_ports {data_o[6]}]
set_output_delay -clock vclk  0  [get_ports {data_o[5]}]
set_output_delay -clock vclk  0  [get_ports {data_o[4]}]
set_output_delay -clock vclk  0  [get_ports {data_o[3]}]
set_output_delay -clock vclk  0  [get_ports {data_o[2]}]
set_output_delay -clock vclk  0  [get_ports {data_o[1]}]
set_output_delay -clock vclk  0  [get_ports {data_o[0]}]
