###################################################################

# Created by write_sdc on Tue Feb 14 04:23:14 2023

###################################################################
set sdc_version 2.1

set_load -pin_load 1 [get_ports {dma_cmd_o[3]}]
set_load -pin_load 1 [get_ports {dma_cmd_o[2]}]
set_load -pin_load 1 [get_ports {dma_cmd_o[1]}]
set_load -pin_load 1 [get_ports {dma_cmd_o[0]}]
set_load -pin_load 1 [get_ports {dma_way_o[0]}]
set_load -pin_load 1 [get_ports {dma_addr_o[27]}]
set_load -pin_load 1 [get_ports {dma_addr_o[26]}]
set_load -pin_load 1 [get_ports {dma_addr_o[25]}]
set_load -pin_load 1 [get_ports {dma_addr_o[24]}]
set_load -pin_load 1 [get_ports {dma_addr_o[23]}]
set_load -pin_load 1 [get_ports {dma_addr_o[22]}]
set_load -pin_load 1 [get_ports {dma_addr_o[21]}]
set_load -pin_load 1 [get_ports {dma_addr_o[20]}]
set_load -pin_load 1 [get_ports {dma_addr_o[19]}]
set_load -pin_load 1 [get_ports {dma_addr_o[18]}]
set_load -pin_load 1 [get_ports {dma_addr_o[17]}]
set_load -pin_load 1 [get_ports {dma_addr_o[16]}]
set_load -pin_load 1 [get_ports {dma_addr_o[15]}]
set_load -pin_load 1 [get_ports {dma_addr_o[14]}]
set_load -pin_load 1 [get_ports {dma_addr_o[13]}]
set_load -pin_load 1 [get_ports {dma_addr_o[12]}]
set_load -pin_load 1 [get_ports {dma_addr_o[11]}]
set_load -pin_load 1 [get_ports {dma_addr_o[10]}]
set_load -pin_load 1 [get_ports {dma_addr_o[9]}]
set_load -pin_load 1 [get_ports {dma_addr_o[8]}]
set_load -pin_load 1 [get_ports {dma_addr_o[7]}]
set_load -pin_load 1 [get_ports {dma_addr_o[6]}]
set_load -pin_load 1 [get_ports {dma_addr_o[5]}]
set_load -pin_load 1 [get_ports {dma_addr_o[4]}]
set_load -pin_load 1 [get_ports {dma_addr_o[3]}]
set_load -pin_load 1 [get_ports {dma_addr_o[2]}]
set_load -pin_load 1 [get_ports {dma_addr_o[1]}]
set_load -pin_load 1 [get_ports {dma_addr_o[0]}]
set_load -pin_load 1 [get_ports stat_mem_v_o]
set_load -pin_load 1 [get_ports stat_mem_w_o]
set_load -pin_load 1 [get_ports {stat_mem_addr_o[5]}]
set_load -pin_load 1 [get_ports {stat_mem_addr_o[4]}]
set_load -pin_load 1 [get_ports {stat_mem_addr_o[3]}]
set_load -pin_load 1 [get_ports {stat_mem_addr_o[2]}]
set_load -pin_load 1 [get_ports {stat_mem_addr_o[1]}]
set_load -pin_load 1 [get_ports {stat_mem_addr_o[0]}]
set_load -pin_load 1 [get_ports {stat_mem_data_o[2]}]
set_load -pin_load 1 [get_ports {stat_mem_data_o[1]}]
set_load -pin_load 1 [get_ports {stat_mem_data_o[0]}]
set_load -pin_load 1 [get_ports {stat_mem_w_mask_o[2]}]
set_load -pin_load 1 [get_ports {stat_mem_w_mask_o[1]}]
set_load -pin_load 1 [get_ports {stat_mem_w_mask_o[0]}]
set_load -pin_load 1 [get_ports tag_mem_v_o]
set_load -pin_load 1 [get_ports tag_mem_w_o]
set_load -pin_load 1 [get_ports {tag_mem_addr_o[5]}]
set_load -pin_load 1 [get_ports {tag_mem_addr_o[4]}]
set_load -pin_load 1 [get_ports {tag_mem_addr_o[3]}]
set_load -pin_load 1 [get_ports {tag_mem_addr_o[2]}]
set_load -pin_load 1 [get_ports {tag_mem_addr_o[1]}]
set_load -pin_load 1 [get_ports {tag_mem_addr_o[0]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[39]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[38]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[37]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[36]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[35]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[34]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[33]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[32]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[31]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[30]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[29]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[28]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[27]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[26]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[25]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[24]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[23]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[22]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[21]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[20]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[19]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[18]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[17]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[16]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[15]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[14]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[13]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[12]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[11]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[10]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[9]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[8]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[7]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[6]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[5]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[4]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[3]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[2]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[1]}]
set_load -pin_load 1 [get_ports {tag_mem_data_o[0]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[39]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[38]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[37]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[36]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[35]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[34]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[33]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[32]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[31]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[30]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[29]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[28]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[27]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[26]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[25]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[24]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[23]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[22]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[21]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[20]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[19]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[18]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[17]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[16]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[15]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[14]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[13]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[12]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[11]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[10]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[9]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[8]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[7]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[6]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[5]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[4]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[3]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[2]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[1]}]
set_load -pin_load 1 [get_ports {tag_mem_w_mask_o[0]}]
set_load -pin_load 1 [get_ports done_o]
set_load -pin_load 1 [get_ports recover_o]
set_load -pin_load 1 [get_ports {chosen_way_o[0]}]
create_clock [get_ports clk_i]  -name clk  -period 40  -waveform {0 20}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk_i]
set_input_delay -clock clk  0  [get_ports reset_i]
set_input_delay -clock clk  0  [get_ports miss_v_i]
set_input_delay -clock clk  0  [get_ports {decode_v_i[18]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[17]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[16]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[15]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[14]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[13]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[12]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[11]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[10]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[9]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[8]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[7]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[6]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[5]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[4]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[3]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[2]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[1]}]
set_input_delay -clock clk  0  [get_ports {decode_v_i[0]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[27]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[26]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[25]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[24]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[23]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[22]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[21]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[20]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[19]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[18]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[17]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[16]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[15]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[14]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[13]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[12]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[11]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[10]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[9]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[8]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[7]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[6]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[5]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[4]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[3]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[2]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[1]}]
set_input_delay -clock clk  0  [get_ports {addr_v_i[0]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[35]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[34]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[33]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[32]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[31]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[30]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[29]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[28]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[27]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[26]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[25]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[24]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[23]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[22]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[21]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[20]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[19]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[18]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[17]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[16]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[15]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[14]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[13]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[12]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[11]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[10]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[9]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[8]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[7]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[6]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[5]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[4]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[3]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[2]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[1]}]
set_input_delay -clock clk  0  [get_ports {tag_v_i[0]}]
set_input_delay -clock clk  0  [get_ports {valid_v_i[1]}]
set_input_delay -clock clk  0  [get_ports {valid_v_i[0]}]
set_input_delay -clock clk  0  [get_ports {lock_v_i[1]}]
set_input_delay -clock clk  0  [get_ports {lock_v_i[0]}]
set_input_delay -clock clk  0  [get_ports {tag_hit_way_id_i[0]}]
set_input_delay -clock clk  0  [get_ports tag_hit_found_i]
set_input_delay -clock clk  0  [get_ports sbuf_empty_i]
set_input_delay -clock clk  0  [get_ports dma_done_i]
set_input_delay -clock clk  0  [get_ports {stat_info_i[2]}]
set_input_delay -clock clk  0  [get_ports {stat_info_i[1]}]
set_input_delay -clock clk  0  [get_ports {stat_info_i[0]}]
set_input_delay -clock clk  0  [get_ports ack_i]
set_output_delay -clock clk  0  [get_ports {dma_cmd_o[3]}]
set_output_delay -clock clk  0  [get_ports {dma_cmd_o[2]}]
set_output_delay -clock clk  0  [get_ports {dma_cmd_o[1]}]
set_output_delay -clock clk  0  [get_ports {dma_cmd_o[0]}]
set_output_delay -clock clk  0  [get_ports {dma_way_o[0]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[27]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[26]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[25]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[24]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[23]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[22]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[21]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[20]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[19]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[18]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[17]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[16]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[15]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[14]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[13]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[12]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[11]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[10]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[9]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[8]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[7]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[6]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[5]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[4]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[3]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[2]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[1]}]
set_output_delay -clock clk  0  [get_ports {dma_addr_o[0]}]
set_output_delay -clock clk  0  [get_ports stat_mem_v_o]
set_output_delay -clock clk  0  [get_ports stat_mem_w_o]
set_output_delay -clock clk  0  [get_ports {stat_mem_addr_o[5]}]
set_output_delay -clock clk  0  [get_ports {stat_mem_addr_o[4]}]
set_output_delay -clock clk  0  [get_ports {stat_mem_addr_o[3]}]
set_output_delay -clock clk  0  [get_ports {stat_mem_addr_o[2]}]
set_output_delay -clock clk  0  [get_ports {stat_mem_addr_o[1]}]
set_output_delay -clock clk  0  [get_ports {stat_mem_addr_o[0]}]
set_output_delay -clock clk  0  [get_ports {stat_mem_data_o[2]}]
set_output_delay -clock clk  0  [get_ports {stat_mem_data_o[1]}]
set_output_delay -clock clk  0  [get_ports {stat_mem_data_o[0]}]
set_output_delay -clock clk  0  [get_ports {stat_mem_w_mask_o[2]}]
set_output_delay -clock clk  0  [get_ports {stat_mem_w_mask_o[1]}]
set_output_delay -clock clk  0  [get_ports {stat_mem_w_mask_o[0]}]
set_output_delay -clock clk  0  [get_ports tag_mem_v_o]
set_output_delay -clock clk  0  [get_ports tag_mem_w_o]
set_output_delay -clock clk  0  [get_ports {tag_mem_addr_o[5]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_addr_o[4]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_addr_o[3]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_addr_o[2]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_addr_o[1]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_addr_o[0]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[39]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[38]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[37]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[36]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[35]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[34]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[33]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[32]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[31]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[30]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[29]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[28]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[27]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[26]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[25]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[24]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[23]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[22]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[21]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[20]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[19]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[18]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[17]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[16]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[15]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[14]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[13]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[12]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[11]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[10]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[9]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[8]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[7]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[6]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[5]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[4]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[3]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[2]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[1]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_data_o[0]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[39]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[38]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[37]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[36]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[35]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[34]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[33]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[32]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[31]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[30]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[29]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[28]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[27]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[26]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[25]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[24]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[23]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[22]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[21]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[20]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[19]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[18]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[17]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[16]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[15]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[14]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[13]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[12]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[11]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[10]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[9]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[8]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[7]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[6]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[5]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[4]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[3]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[2]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[1]}]
set_output_delay -clock clk  0  [get_ports {tag_mem_w_mask_o[0]}]
set_output_delay -clock clk  0  [get_ports done_o]
set_output_delay -clock clk  0  [get_ports recover_o]
set_output_delay -clock clk  0  [get_ports {chosen_way_o[0]}]
