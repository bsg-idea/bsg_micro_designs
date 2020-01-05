export TOP_DIR:=$(shell git rev-parse --show-toplevel)


export OUTPUT_DIR	?=$(CURDIR)/results

# License file
export LM_LICENSE_FILE ?=
#
# # DesignCompiler dc_shell binary
export DC_SHELL ?=

# values used to replace the environment variables in the constraint.tcl file
export FO4_VALUE	?=35
export LOAD_VALUE	?=1.5

# tools directory definition
SV2V_BUILD_DIR	:=$(TOP_DIR)/tools/bsg_sv2v
YOSYS_BUILD_DIR	:=$(TOP_DIR)/tools/yosys


all: tools tcl_to_sdc yosys_run data_dump

# making tools
tools: $(SV2V_BUILD_DIR) $(YOSYS_BUILD_DIR)

$(SV2V_BUILD_DIR):
	mkdir -p $(@D)
	git clone git@github.com:bespoke-silicon-group/bsg_sv2v.git $@
	cd $@; make tools

$(YOSYS_BUILD_DIR):
	mkdir -p $(@D)
	git clone git@github.com:YosysHQ/yosys.git $@
	cd $@; make

# convert existing tcl files to sdc using bsg_sv2v
tcl_to_sdc: 
	mkdir -p $(OUTPUT_DIR)
	python3 $(TOP_DIR)/scripts/py/tcl_to_sdc.py $(TOP_DIR)/cfg/design_list.txt > $(OUTPUT_DIR)/tcl_to_sdc.log

# push micro_designs + SDC files through yosys
yosys_run:
	python3 $(TOP_DIR)/scripts/py/yosys_run.py $(TOP_DIR)/cfg/design_list.txt
# dump out the data in a csv file
data_dump:
	python3 $(TOP_DIR)/scripts/py/data_dump.py

# cleaning up
clean_tools: 
	rm -rf ./tools

clean:
	rm -rf $(OUTPUT_DIR)

deep_clean: clean_tools clean
