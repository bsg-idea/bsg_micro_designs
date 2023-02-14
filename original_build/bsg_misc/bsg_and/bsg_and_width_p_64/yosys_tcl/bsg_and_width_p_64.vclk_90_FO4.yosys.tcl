yosys -import

set design_name top
set lib_file /gro/cad/pdk/saed90/synopsys/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/models/saed90nm_typ.lib
set clock_period 90
set run_dir /mnt/users/ssd1/homes/tanglingshu/bsg_micro_designs/tools/yosys
set in_v_file /mnt/users/ssd1/homes/tanglingshu/bsg_micro_designs/bsg_misc/bsg_and/bsg_and_width_p_64/top.v
set in_sdc_file /mnt/users/ssd1/homes/tanglingshu/bsg_micro_designs/bsg_misc/bsg_and/bsg_and_width_p_64/sdc/vclk_90_FO4.constraints.sdc
set out_v_file bsg_and_width_p_64.vclk_90_FO4.yosys.v

read_verilog $in_v_file
hierarchy -check -top $design_name
synth -top $design_name -flatten
opt -purge
techmap
dfflibmap -liberty $lib_file
opt
abc -D $clock_period -constr $in_sdc_file -liberty $lib_file -showtmp
stat -liberty $lib_file
write_verilog -noattr -noexpr -nohex -nodec /mnt/users/ssd1/homes/tanglingshu/bsg_micro_designs/results/bsg_and/bsg_and_width_p_64/$out_v_file
