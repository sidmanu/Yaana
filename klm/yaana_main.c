#include <linux/slab.h>
#include <linux/fs.h>
#include <linux/errno.h>

#include <yaana.h>
#include <yaana_proc.h>
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
	int ret_val = 0;
	printk("<1> Initializing Yana Kernel Module\n");
	ret_val = yaana_init_procfs();
	if (ret_val) {
		printk("<1> Unable to initialize procfs");
		return ret_val;
	}
	yaana_print_hello();
	return 0;
}

static void
yaana_exit(void)
{
	if (yaana_exit_procfs()) {
		printk("<1> Unable to cleanly exit procfs");
	}
	printk("<1> Exiting Yana Kernel Module\n"); 
}
