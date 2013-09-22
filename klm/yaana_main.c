#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/slab.h>
#include <linux/fs.h>
#include <linux/errno.h>

#include <yaana_dev.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Siddharth Manu");
MODULE_DESCRIPTION("Yana - Kernel based IPC");

/* must return int */
static int yaana_init(void);
static void yaana_exit(void);

/* Kernel Modules must define */ 
module_init(yaana_init);
module_exit(yaana_exit);


static int 
yaana_init(void)
{
	printk("<1> Initializing Yana Kernel Module\n");
	yaana_print_hello();
	return 0;
}

static void
yaana_exit(void)
{
	printk("<1> Exiting Yana Kernel Module\n"); 
}
