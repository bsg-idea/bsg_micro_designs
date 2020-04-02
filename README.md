# BSG Micro Designs Overview
In an effort to support the open source hardware development, the bsg_micro_designs repository contains the Verilog version of basejump_stl designs (https://github.com/bespoke-silicon-group/basejump_stl). The designs in this repository were translated from Systemverilog to verilog, through bsg_sv2v (https://github.com/bespoke-silicon-group/bsg_sv2v), to be complient with most of the open source CAD tools. Furthermore, you can synthesize the RTL designs in this repository through Yosys (https://github.com/YosysHQ/yosys) to obtain performance and area metrics. 

## Structure
Each top level folder is similar to the structure of basejump_stl. Within each specific design folders there are four more folders based on the parameters. Within each of the four parameter based folders, you'll see a "top.v" and a sdc folder that contains the constraints.sdc file. See image below:
```
|-- bsg_misc
|   |-- bsg_abs
|   |   |-- bsg_abs_width_p_128
|   |   |   |-- sdc
|   |   |   |   |-- vclk_100_FO4.constraints.sdc
|   |   |   |   |-- vclk_30_FO4.constraints.sdc
:   :   :   :   :
:   :   :   :   :
|   |   |   |-- top.v
|   |   |-- bsg_abs_width_p_16
|   |   |   |-- sdc
|   |   |   |   |-- vclk_100_FO4.constraints.sdc
|   |   |   |   |-- vclk_30_FO4.constraints.sdc
|   |   |   |   |-- vclk_40_FO4.constraints.sdc
:   :   :   :   :
:   :   :   |-- top.v
```
The top.v file contains the actual Verilog version of the original design plus a wrapper called top that wraps the overall design. The key is that all designs, regardless of their names or parameters, will be called top.

The constraints.sdc file contains the standard timing constraints for a design. It will also source an async script which will help define the additional constraints needed for an async design. Below is a snippet of a constraints.sdc file:

```
set_load -pin_load ${PIN_LOAD} [get_ports {data_mem_data_o[1]}]
set_load -pin_load ${PIN_LOAD} [get_ports {data_mem_data_o[0]}]
set_load -pin_load ${PIN_LOAD} [get_ports dma_evict_o]
create_clock [get_ports clk_i]  -name clk  -period ${FO4_30} -waveform {0 ${FO4_30_DIV_2}}
set_clock_uncertainty 0  [get_clocks clk]
set_input_delay -clock clk  0  [get_ports clk_i]
set_input_delay -clock clk  0  [get_ports reset_i]
set_input_delay -clock clk  0  [get_ports {dma_cmd_i[3]}]
set_output_delay -clock clk  0  [get_ports {data_mem_data_o[1]}]
set_output_delay -clock clk  0  [get_ports {data_mem_data_o[0]}]
set_output_delay -clock clk  0  [get_ports dma_evict_o]
```

## Yosys Example and How to run
Prerequisites:
1) Necessary library files for Yosys
2) Necessary library files for bsg_sv2v
3) Python 3.x
4) Synopsys Design Compiler

### Steps to run:
Either run
```
make
```
or you can run the following command but set the values in <>
```
make FO4_VAL=<value> PIN_LOAD=<value> DESIGN_NAME=<name> LIB_FILE=<path-to-liberty>
```
For a more meaningful result, please fill in the following variables
1) FO4_VAL: the FO4 value of your process node
2) PIN_LOAD: used for output loads
3) DESIGN_NAME: name of your design
4) LIB_FILE: liberty file path

