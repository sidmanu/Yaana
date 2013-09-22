#!/bin/bash

######################
# Run this file on linux
# to build uspace library 
# and to build the kernel
######################

cd klm
make clean
make

KERNEL_PATH=/lib/modules/`uname -r`

# Link to linux module directory and update modules
echo $PWD
rm $KERNEL_PATH/yaana.ko
ln -s $PWD/yaana.ko $KERNEL_PATH/yaana.ko 
depmod -a

# Search for module and load it
modprobe yaana

