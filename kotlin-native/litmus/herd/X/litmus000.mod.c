#include <linux/module.h>
#define INCLUDE_VERMAGIC
#include <linux/build-salt.h>
#include <linux/elfnote-lto.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;
BUILD_LTO_INFO;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0xf704969, "module_layout" },
	{ 0x51e08620, "param_ops_uint" },
	{ 0xf247fba3, "param_ops_int" },
	{ 0xdce9f68d, "param_ops_charp" },
	{ 0x359f0950, "single_release" },
	{ 0x3d9d351b, "seq_lseek" },
	{ 0xbe503d2d, "seq_read" },
	{ 0xdaef3116, "remove_proc_entry" },
	{ 0xd9a5ea54, "__init_waitqueue_head" },
	{ 0x17de3d5, "nr_cpu_ids" },
	{ 0xaa44a707, "cpumask_next" },
	{ 0x5a5a2271, "__cpu_online_mask" },
	{ 0xc60d0620, "__num_online_cpus" },
	{ 0x84644378, "proc_create" },
	{ 0xd0da656b, "__stack_chk_fail" },
	{ 0x41ed3709, "get_random_bytes" },
	{ 0x771d2911, "kthread_bind" },
	{ 0x92540fbf, "finish_wait" },
	{ 0x8c26d495, "prepare_to_wait_event" },
	{ 0x1000e51, "schedule" },
	{ 0xfe487975, "init_wait_entry" },
	{ 0x7c797b6, "kmem_cache_alloc_trace" },
	{ 0xd731cdd9, "kmalloc_caches" },
	{ 0x800473f, "__cond_resched" },
	{ 0xc5e7d3f3, "wake_up_process" },
	{ 0x519dd77a, "kthread_create_on_node" },
	{ 0xb43f9365, "ktime_get" },
	{ 0x4c236f6f, "__x86_indirect_thunk_r15" },
	{ 0x3eeb2322, "__wake_up" },
	{ 0xeb233a45, "__kmalloc" },
	{ 0xd78b86c9, "seq_printf" },
	{ 0x5d053422, "single_open" },
	{ 0x37a0cba, "kfree" },
	{ 0x5b8239ca, "__x86_return_thunk" },
	{ 0xbdfb6dbb, "__fentry__" },
};

MODULE_INFO(depends, "");


MODULE_INFO(srcversion, "196080B8FE5D591575688EA");
