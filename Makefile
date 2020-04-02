export TOP_DIR:=$(shell git rev-parse --show-toplevel)

export OUTPUT_DIR	?=$(CURDIR)/results

# Liberty File Path
export LIB_FILE		?= 

# Ask users for the following values
export FO4_VAL			:=
export PIN_LOAD			:=
export DESIGN_NAME		:=

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
export FILES			:= $(shell find $(TOP_DIR)/*/$(DESIGN_NAME) -name '*.sdc')
export SYNTH_RUN_DIR	:= $(OUTPUT_DIR)
DESIGN_SIZE_DUP 		:= $(foreach p, $(FILES), $(shell echo $p | rev | cut -d/ -f3 | rev))
export DESIGN_SIZE 		:= $(sort $(DESIGN_SIZE_DUP))

# tools directory definition
YOSYS_BUILD_DIR	:=$(TOP_DIR)/tools/yosys


# to run all
all: tools yosys_run data_dump

# making tools
tools: $(YOSYS_BUILD_DIR)

$(YOSYS_BUILD_DIR):
	mkdir -p $(@D)
	git clone git@github.com:YosysHQ/yosys.git $@
	cd $@; make

# running the design with yosys and logging into a .log file
yosys_run: envsub_sdc result_folder
	@$(foreach p, $(FILES), export CLOCK_PERIOD=$(shell cat $p | grep "^create_clock" | cut -d " " -f 6) \
	&& export SYNTH_YOSYS_IN_SDC=$p \
	&& export SYNTH_YOSYS_IN_V=$(dir $p)../top.v \
	&& export SYNTH_YOSYS_OUT_V=$(OUTPUT_DIR)/yosys_out_v/$(DESIGN_NAME)/$(basename $(notdir $p)).yosys.v \
	&& $(YOSYS_BUILD_DIR)/yosys -c $(TOP_DIR)/cfg/yosys.tcl 2>&1 | tee -i $(OUTPUT_DIR)/logs/$(DESIGN_NAME)/$(shell echo $p | rev | cut -d/ -f3 | rev)/$(notdir $p).log;) 

# envsub selected sdc files
envsub_sdc:
	mkdir -p $(OUTPUT_DIR)
	@echo "========================================="
	@echo "RUNNING ENVIRONMENT VARIABLE SUBSTITUTION"
	@echo "========================================="
	@$(foreach p, $(FILES), envsubst < $p > $(OUTPUT_DIR)/temp.txt && mv $(OUTPUT_DIR)/temp.txt $p;) 

# generating the result folder first
result_folder:
	mkdir -p $(OUTPUT_DIR)/reports
	mkdir -p $(OUTPUT_DIR)/yosys_out_v/$(DESIGN_NAME)
	@$(foreach ds, $(DESIGN_SIZE), mkdir -p $(OUTPUT_DIR)/logs/$(DESIGN_NAME)/$(ds);)
	
# dump out the data in a csv file
data_dump:
	python3 $(TOP_DIR)/scripts/py/data_dump.py

# cleaning up
clean_tools: 
	rm -rf ./tools

clean:
	rm -rf $(OUTPUT_DIR)

deep_clean: clean_tools clean
