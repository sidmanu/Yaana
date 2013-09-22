######################
# Run this file on linux
# to build uspace library 
# and to build the kernel
######################


cd klm
make clean
make

KERNEL_PATH=/lib/modules/(uname -r)

# Link to linux module directory and update modules
ln -s $(PWD)/yana.ko $(KERNEL_PATH)/ -f
depmod -a

# Search for module and load it
modprobe yana

