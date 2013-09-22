#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/slab.h>
#include <linux/fs.h>
#include <linux/errno.h>

#include <yana_dev.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Siddharth Manu");
MODULE_DESCRIPTION("Yana - Kernel based IPC");

/* must return int */
static int yana_init(void);
static void yana_exit(void);

/* Kernel Modules must define */ 
module_init(yana_init);
module_exit(yana_exit);


static int 
yana_init(void)
{
	printk("<1> Initializing Yana Kernel Module\n");
	yana_print_hello();
	return 0;
}

static void
yana_exit(void)
{
	printk("<1> Exiting Yana Kernel Module\n"); 
}
