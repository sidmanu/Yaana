###########################################
# Makefile
###########################################

WARN := -W -Wall -Wstrict-prototypes 
KERNEL_BUILD_PATH := /lib/modules/$(shell uname -r)/build

##final yaana.ko to be built
obj-m += yaana.o 

##comprises of
yaana-y := \
	yaana_main.o \
	yaana_proc.o \
	yaana_dev.o

##include local header files
ccflags-y := -I$(src)
		
all:
	make -C $(KERNEL_BUILD_PATH) M=$(PWD) modules

clean:
	make -C $(KERNEL_BUILD_PATH) M=$(PWD) clean 

