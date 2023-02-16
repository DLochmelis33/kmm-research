ccflags-y += -std=gnu99 -Wno-declaration-after-statement
ifneq ("$(wildcard /lib/modules/$(shell uname -r)/build/include/linux/proc_fs.h)","")
ifneq ($(shell grep proc_ops /lib/modules/$(shell uname -r)/build/include/linux/proc_fs.h | wc -l),0)
ccflags-y += -DKLITMUS_HAVE_STRUCT_PROC_OPS
endif
else
$(error kernel header include/linux/proc_fs.h for $(shell uname -r) not found)
endif
obj-m += litmus000.o

all:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) clean
