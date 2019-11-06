# BSG Micro Designs Overview
In an effort to support the open source hardware development, the bsg_micro_designs repository contains the Verilog version of basejump_stl designs (https://github.com/bespoke-silicon-group/basejump_stl). The designs in this repository were translated from Systemverilog to verilog, through bsg_sv2v (https://github.com/bespoke-silicon-group/bsg_sv2v), to be complient with most of the open source CAD tools. 

## Structure
Each top level folder is similar to the structure of basejump_stl. Within each specific design folders there are four more folders based on the parameters. Within each of the four parameter based folders, you'll see a "top.v" and a tcl folder that contains the constraints.tcl file. See image below:
```
|-- bsg_misc
|   |-- bsg_abs
|   |   |-- bsg_abs_width_p_128
|   |   |   |-- tcl
|   |   |   |   |-- vclk_100_FO4.constraints.tcl
|   |   |   |   |-- vclk_30_FO4.constraints.tcl
:   :   :   :   :
:   :   :   :   :
|   |   |   |-- top.v
|   |   |-- bsg_abs_width_p_16
|   |   |   |-- tcl
|   |   |   |   |-- vclk_100_FO4.constraints.tcl
|   |   |   |   |-- vclk_30_FO4.constraints.tcl
|   |   |   |   |-- vclk_40_FO4.constraints.tcl
:   :   :   :   :
:   :   :   |-- top.v
```
The top.v file contains the actual Verilog version of the original design plus a wrapper called top that wraps the overall design. The key is that all designs, regardless of their names or parameters, will be called top.

The constraints.tcl file contains the standard timing constraints for a design. It will also source an async script which will help define the additional constraints needed for an async design. Below is a snippet of a constraints.tcl file:

```
create_clock -period [expr $::env(FO4_VAL)*30] -name vclk
set_clock_uncertainty 0 [get_clock vclk]
set_input_delay 0 -clock vclk [all_inputs]
set_load [load_of [get_lib_pin */$::env(LOAD)]] [all_outputs]
set_output_delay 0 -clock vclk [all_outputs]
source $::env(PATH)/bsg_micro_designs/common/constraints/bsg_async/bsg_async.constraints.tcl
bsg_async
```
Note that there are 3 environment variables that need to be set in order for the tcl file effective. 
FO4_VAL:the FO4 value of your process node
LOAD: used for output loads
PATH: your current directory path where the bsg_micro_designs reside
