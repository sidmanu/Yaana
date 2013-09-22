#include <linux/proc_fs.h>
#include <asm/uaccess.h>

#include <yaana.h>
#include <yaana_proc.h>

/*************************
 * PROCFS file entries 
 ************************/

/* directories*/
static struct proc_dir_entry *yn_main_dir,
		*yn_cfg_dir;

/* files */
static struct proc_dir_entry *yn_info,
		*yn_cfg_params;	


/***************************
 * Read/Write functions for PROC_FS
 ***************************/

int
write_info(struct file *file,
	const char __user *buf,
	unsigned long count,
	void *data)
{
	//TODO
	return 0;

}
	

int 
read_info(char *page,
	char **start,
	off_t off,
	int count,
	int *eof,
	void *data)
{
	//TODO
	return 0;
}
	

int 
yaana_init_procfs(void)
{
	int ret_val = 0;
	yn_main_dir = yn_cfg_dir = yn_info 
		= yn_cfg_params = NULL;
	
	yn_main_dir = proc_mkdir("yaana", NULL);
	if (yn_main_dir == NULL) {
		printk("<1> Unable to create proc_dir yaana");
		ret_val = -ENOMEM;
		goto cleanup;
	}	
	
	//yn_main_dir->owner = THIS_MODULE;	

	yn_cfg_dir = proc_mkdir("config", yn_main_dir);
	if (yn_cfg_dir == NULL) {
		printk("<1> Unable to create proc_dir yaana/config");
		ret_val = -ENOMEM;
		goto cleanup;
	}

	//yn_cfg_dir-> owner = THIS_MODULE;

	yn_info = create_proc_entry("info", 0644, yn_main_dir);
	if (yn_info == NULL) {
		printk("<1> Unable to create proc entry 'info'");
		goto cleanup;
	}

	//yn_info->owner = THIS_MODULE;
	yn_info->read_proc = read_info;
	yn_info->write_proc = write_info;
	yn_info->data = kmalloc(1024, GFP_KERNEL);
	
	//TODO create & add fns for yn_cfg_params 
	
	return ret_val;	

cleanup:
	if (yn_cfg_dir)
		remove_proc_entry("config", yn_main_dir);

	if (yn_main_dir) 
		remove_proc_entry("yaana", NULL);
	
	return ret_val;	
}

int 
yaana_exit_procfs(void)
{
	if (yn_info->data)
		kfree(yn_info->data);

	remove_proc_entry("info", yn_main_dir);
	remove_proc_entry("config", yn_main_dir);
	remove_proc_entry("yaana", NULL);

	return 0;
}

