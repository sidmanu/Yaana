###########################################
# Makefile
###########################################

WARN := -W -Wall -Wstrict-prototypes 
KERNEL_BUILD_PATH := /lib/modules/$(shell uname -r)/build

##final yana.ko to be built
obj-m += yana.o 

##comprises of
yana-y := \
	yana_main.o \
	yana_dev.o

##include local header files
ccflags-y := -I$(src)
		
all:
	make -C $(KERNEL_BUILD_PATH) M=$(PWD) modules

clean:
	make -C $(KERNEL_BUILD_PATH) M=$(PWD) clean 

