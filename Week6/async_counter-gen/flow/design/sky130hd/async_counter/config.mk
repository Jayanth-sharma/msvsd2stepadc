export DESIGN_NICKNAME = async_counter
export DESIGN_NAME = async_counter

export PLATFORM    = sky130hd

export VERILOG_FILES 		= $(sort $(wildcard ./design/src/$(DESIGN_NICKNAME)/*.v)) 
#../blocks/$(PLATFORM)/tempsenseInst.blackbox.v
export SDC_FILE    		= ./design/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export DIE_AREA   	 	= 0 0 300 300
export CORE_AREA   		= 15 15 250 250

# area of the smaller voltage domain
#export VD1_AREA                 = 50 50 100 150

# power delivery network config file
export PDN_TCL 			= ../blocks/$(PLATFORM)/pdn.tcl

export ADDITIONAL_LEFS  	= ../blocks/$(PLATFORM)/lef/COMPARATOR.lef \
                        	  ../blocks/$(PLATFORM)/lef/RING_OSCILLATOR.lef

export ADDITIONAL_GDS_FILES 	= ../blocks/$(PLATFORM)/gds/COMPARATOR.gds \
			      	  				../blocks/$(PLATFORM)/gds/RING_OSCILLATOR.gds

# informs what cells should be placed in the smaller voltage domain
export DOMAIN_INSTS_LIST 	= ../blocks/$(PLATFORM)/async_counter_domain_insts.txt

# configuration for placement

# don't run global place w/o IOs
#export HAS_IO_CONSTRAINTS = 1
# don't run non-random IO placement (step 3_2)
export PLACE_PINS_ARGS = -random

export GPL_ROUTABILITY_DRIVEN = 1

# DPO optimization currently fails on the tempsense
export ENABLE_DPO = 0

#export CELL_PAD_IN_SITES_GLOBAL_PLACEMENT = 4
#export CELL_PAD_IN_SITES_DETAIL_PLACEMENT = 2

# configuration for routing

#export PRE_GLOBAL_ROUTE = $(SCRIPTS_DIR)/openfasoc/pre_global_route.tcl

# informs any short circuits that should be forced during routing
export CUSTOM_CONNECTION 	= ../blocks/$(PLATFORM)/async_counter_custom_net.txt

# indicates with how many connections the VIN route from the HEADER cells connects to the VIN power ring
#export VIN_ROUTE_CONNECTION_POINTS = 3
