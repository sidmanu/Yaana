cmd_/ws/C/yana/klm/yana_dev.o :=  gcc-4.6 -Wp,-MD,/ws/C/yana/klm/.yana_dev.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/4.6/include -I/usr/src/linux-headers-3.2.0-4-common/arch/x86/include -Iarch/x86/include/generated -Iinclude  -I/usr/src/linux-headers-3.2.0-4-common/include -include /usr/src/linux-headers-3.2.0-4-common/include/linux/kconfig.h   -I/ws/C/yana/klm -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -m64 -mtune=generic -mno-red-zone -mcmodel=kernel -funit-at-a-time -maccumulate-outgoing-args -fstack-protector -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_FXSAVEQ=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -Wframe-larger-than=2048 -Wno-unused-but-set-variable -fomit-frame-pointer -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO   -I/ws/C/yana/klm  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(yana_dev)"  -D"KBUILD_MODNAME=KBUILD_STR(yana)" -c -o /ws/C/yana/klm/.tmp_yana_dev.o /ws/C/yana/klm/yana_dev.c

source_/ws/C/yana/klm/yana_dev.o := /ws/C/yana/klm/yana_dev.c

deps_/ws/C/yana/klm/yana_dev.o := \
  /ws/C/yana/klm/yana_dev.h \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/kernel.h \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/linkage.h \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/compiler-gcc4.h \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/32.h) \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/alignment/16.h) \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/stringify.h \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/stddef.h \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/types.h \
  /usr/src/linux-headers-3.2.0-4-common/include/asm-generic/types.h \
  /usr/src/linux-headers-3.2.0-4-common/include/asm-generic/int-ll64.h \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/bitsperlong.h \
  /usr/src/linux-headers-3.2.0-4-common/include/asm-generic/bitsperlong.h \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/posix_types.h \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/posix_types.h \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/posix_types_64.h \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/bitops.h \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/paravirt.h) \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/asm.h \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/cpufeature.h \
    $(wildcard include/config/x86/invlpg.h) \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/p6/nop.h) \
  /usr/src/linux-headers-3.2.0-4-common/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /usr/src/linux-headers-3.2.0-4-common/include/asm-generic/bitops/sched.h \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/arch_hweight.h \
  /usr/src/linux-headers-3.2.0-4-common/include/asm-generic/bitops/const_hweight.h \
  /usr/src/linux-headers-3.2.0-4-common/include/asm-generic/bitops/fls64.h \
  /usr/src/linux-headers-3.2.0-4-common/include/asm-generic/bitops/le.h \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/byteorder.h \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/byteorder/little_endian.h \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/swab.h \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/swab.h \
    $(wildcard include/config/x86/bswap.h) \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/byteorder/generic.h \
  /usr/src/linux-headers-3.2.0-4-common/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/typecheck.h \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/printk.h \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  /usr/src/linux-headers-3.2.0-4-common/include/linux/dynamic_debug.h \
  /usr/src/linux-headers-3.2.0-4-common/arch/x86/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  /usr/src/linux-headers-3.2.0-4-common/include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \

/ws/C/yana/klm/yana_dev.o: $(deps_/ws/C/yana/klm/yana_dev.o)

$(deps_/ws/C/yana/klm/yana_dev.o):
