cmd_drivers/autotst/mipi_dsih_api.o := /home/devnull/Lemon_S8/ndk/toolchains/arm-linux-androideabi-4.8/bin/arm-linux-androideabi-gcc -Wp,-MD,drivers/autotst/.mipi_dsih_api.o.d  -nostdinc -isystem /home/devnull/Lemon_S8/ndk/toolchains/arm-linux-androideabi-4.8/bin/../lib/gcc/arm-linux-androideabi/4.8/include -I/home/devnull/Lemon_S8/kernel/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/home/devnull/Lemon_S8/kernel/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/home/devnull/Lemon_S8/kernel/include/uapi -Iinclude/generated/uapi -include /home/devnull/Lemon_S8/kernel/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-sc/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -Wno-maybe-uninitialized -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(mipi_dsih_api)"  -D"KBUILD_MODNAME=KBUILD_STR(autotst)" -c -o drivers/autotst/.tmp_mipi_dsih_api.o drivers/autotst/mipi_dsih_api.c

source_drivers/autotst/mipi_dsih_api.o := drivers/autotst/mipi_dsih_api.c

deps_drivers/autotst/mipi_dsih_api.o := \
    $(wildcard include/config/fb/scx35.h) \
    $(wildcard include/config/fb/lcd/ssd2075/mipi.h) \
  drivers/autotst/mipi_dsih_api.h \
  drivers/autotst/mipi_dsih_local.h \
    $(wildcard include/config/fb/dynamic/freq/scaling.h) \
  include/linux/kernel.h \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /home/devnull/Lemon_S8/ndk/toolchains/arm-linux-androideabi-4.8/lib/gcc/arm-linux-androideabi/4.8/include/stdarg.h \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/asm/linkage.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  arch/arm/include/generated/asm/types.h \
  /home/devnull/Lemon_S8/kernel/include/uapi/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  /home/devnull/Lemon_S8/kernel/include/uapi/linux/posix_types.h \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/uapi/asm/posix_types.h \
  /home/devnull/Lemon_S8/kernel/include/uapi/asm-generic/posix_types.h \
  include/linux/bitops.h \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  include/linux/typecheck.h \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/asm/irqflags.h \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/asm/hwcap.h \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/uapi/asm/hwcap.h \
  include/asm-generic/bitops/non-atomic.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/arch_hweight.h \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/lock.h \
  include/asm-generic/bitops/le.h \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/uapi/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/uapi/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  include/uapi/linux/swab.h \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/asm/swab.h \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/uapi/asm/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/ext2-atomic-setbit.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/printk.h \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  include/linux/kern_levels.h \
  include/linux/dynamic_debug.h \
  include/uapi/linux/kernel.h \
  /home/devnull/Lemon_S8/kernel/include/uapi/linux/sysinfo.h \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/asm/div64.h \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/asm/compiler.h \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  drivers/autotst/mipi_dsih_hal.h \
  drivers/autotst/mipi_dsih_dphy.h \
  include/linux/delay.h \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/asm/delay.h \
  /home/devnull/Lemon_S8/kernel/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /home/devnull/Lemon_S8/kernel/include/uapi/linux/const.h \
  include/linux/sizes.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  arch/arm/include/generated/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  include/uapi/asm-generic/param.h \

drivers/autotst/mipi_dsih_api.o: $(deps_drivers/autotst/mipi_dsih_api.o)

$(deps_drivers/autotst/mipi_dsih_api.o):
