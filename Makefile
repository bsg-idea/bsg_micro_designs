export TOP_DIR:=$(shell git rev-parse --show-toplevel)

export OUTPUT_DIR	?=$(CURDIR)/results

# License file
export LM_LICENSE_FILE 	?=
# DesignCompiler dc_shell binary
export DC_SHELL 	?=
# Liberty File Path
export LIB_FILE		?=

# Ask users for the following values
export FO4_VAL			:=
export PIN_LOAD			:=
export DESIGN_NAME		:=
export SYNTH_YOSYS_IN_V		:=
export SYNTH_YOSYS_OUT_v	:=

# Exporting the following environment variables for substitution later
# FO4 set
export FO4_30 = $(shell echo $$(($(FO4_VAL)*30)))
export FO4_40 = $(shell echo $$(($(FO4_VAL)*40)))
export FO4_50 = $(shell echo $$(($(FO4_VAL)*50)))
export FO4_60 = $(shell echo $$(($(FO4_VAL)*60)))
export FO4_70 = $(shell echo $$(($(FO4_VAL)*70)))
export FO4_80 = $(shell echo $$(($(FO4_VAL)*80)))
export FO4_90 = $(shell echo $$(($(FO4_VAL)*90)))
export FO4_100 = $(shell echo $$(($(FO4_VAL)*100)))

# Waveform set
export FO4_30_DIV_2 = $(shell echo $$(($(FO4_30)/2)))
export FO4_40_DIV_2 = $(shell echo $$(($(FO4_40)/2)))
export FO4_50_DIV_2 = $(shell echo $$(($(FO4_50)/2)))
export FO4_60_DIV_2 = $(shell echo $$(($(FO4_60)/2)))
export FO4_70_DIV_2 = $(shell echo $$(($(FO4_70)/2)))
export FO4_80_DIV_2 = $(shell echo $$(($(FO4_80)/2)))
export FO4_90_DIV_2 = $(shell echo $$(($(FO4_90)/2)))
export FO4_100_DIV_2 = $(shell echo $$(($(FO4_100)/2)))

# pre-defined variables
export FILES		:= $(shell find $(TOP_DIR)/$(DESIGN_NAME) -type f -name '*.sdc')
export SYNTH_RUN_DIR	:= $(OUTPUT_DIR) 

#tools directory definition
SV2V_BUILD_DIR	:=$(TOP_DIR)/tools/bsg_sv2v
YOSYS_BUILD_DIR	:=$(TOP_DIR)/tools/yosys

# to run all
all: tools yosys_run data_dump

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

# push micro_designs + SDC files through yosys
yosys_run: $(FILES)
	@for file in $^; do \
		$(eval export CLOCK_PERIOD :=$(shell cat $$file | grep "^create_clock" | cut -d " " -f 6)); \
		$(eval export SYNTH_YOSYS_IN_SDC := $$file); \
		envsubst < $$file > $(OUTPUT_DIR)/temp.txt && mv $(OUTPUT_DIR)/temp.txt $$file; \
		cd $(YOSYS_BUILD_DIR) && \
			(yosys -c $(TOP_DIR)/cfg/yosys.tcl) 2>&1 | tee -i logs/$@.log; \
	done

# dump out the data in a csv file
data_dump:
	python3 $(TOP_DIR)/scripts/py/data_dump.py

# cleaning up
clean_tools: 
	rm -rf ./tools

clean:
	rm -rf $(OUTPUT_DIR)

deep_clean: clean_tools clean
