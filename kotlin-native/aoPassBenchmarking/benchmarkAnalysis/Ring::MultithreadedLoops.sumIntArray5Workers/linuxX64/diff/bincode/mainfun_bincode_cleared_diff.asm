--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumIntArray5Workers/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:51:45.430571091 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumIntArray5Workers/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:03:20.810355740 +0200

@@ -5,211 +5,218 @@
@@@[(6, 7), (8, 9), (10, 22), (28, 34), (53, 55), (57, 59), (61, 62), (63, 72), (73, 78), (82, 88), (91, 98), (102, 109), (114, 116), (119, 132), (141, 145), (146, 156), (157, 163), (164, 171), (173, 187), (188, 192), (196, 204), (206, 214), (229, 235), (238, 240), (242, 246), (265, 275), (279, 281), (283, 285), (287, 289), (302, 306), (307, 313), (314, 322), (324, 325), (326, 327)]@@@
+               	movaps	%xmm0, 384(%rsp)
@@@@
-               	movaps	%xmm0, 352(%rsp)
@@@@
-               	movq	%rax, 40(%rsp)
-               	movq	-64(%rax), %r14
-               	movq	288(%r14), %rax
-               	movq	%rax, 360(%rsp)
-               	leaq	352(%rsp), %rax
-               	movq	%rax, 288(%r14)
+               	movq	%rax, 48(%rsp)
+               	movq	-64(%rax), %rbx
+               	movq	288(%rbx), %rax
+               	movq	%rax, 376(%rsp)
+               	leaq	368(%rsp), %rax
+               	movq	%rax, 288(%rbx)
@@@@
-               	je	0x42184b <kfun:#main(){}+0x7b>
-               	callq	0x426370 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	296(%r14), %rdi
+               	je	0x421a6b <kfun:#main(){}+0x7b>
+               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	296(%rbx), %rdi
@@@@
-               	movq	288(%r14), %rcx
+               	movq	288(%rbx), %rcx
@@@@
-               	movq	%rcx, 288(%r14)
+               	movq	%rcx, 288(%rbx)
@@@@
-               	movq	%rax, 104(%rsp)
@@@@
-               	movq	296(%r14), %rdi
+               	movq	%rax, 112(%rsp)
+               	movl	40(%rax), %r14d
+               	testl	%r14d, %r14d
+               	js	0x422aec <kfun:#main(){}+0x10fc>
+               	movq	%rbx, 40(%rsp)
+               	movq	296(%rbx), %rdi
+               	leaq	31(,%r14,8), %rsi
+               	andq	$-8, %rsi
@@@@
-               	movl	$64, %esi
-               	callq	0x429960 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r15
+               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %r12
@@@@
-               	leaq	233072(%rip), %rax      # 0x45a790 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rax, 16(%r15)
-               	movl	$5, 24(%r15)
+               	leaq	234359(%rip), %rax      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rax, 16(%r12)
+               	movl	%r14d, 24(%r12)
@@@@
-               	leaq	233326(%rip), %r12      # 0x45a8b0 <ktypeglobal:kotlin.IntArray#internal>
-               	movq	%r14, 48(%rsp)
-               	cmpq	$5, %rbx
-               	je	0x421a1b <kfun:#main(){}+0x24b>
-               	nopw	%cs:(%rax,%rax)
+               	cmpq	%r14, %rbx
+               	je	0x421c47 <kfun:#main(){}+0x257>
@@@@
-               	je	0x42196f <kfun:#main(){}+0x19f>
-               	callq	0x426370 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	296(%r14), %rdi
+               	je	0x421b8f <kfun:#main(){}+0x19f>
+               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	40(%rsp), %rax
+               	movq	296(%rax), %rdi
@@@@
-               	leaq	16(%rax), %r13
+               	leaq	16(%rax), %r15
@@@@
-               	movq	%r12, 16(%rax)
-               	movl	$10000, 24(%rax)        # imm = 0x2710
-               	movq	%r13, 184(%rsp)
-               	xorl	%r14d, %r14d
-               	cmpq	$10000, %r14            # imm = 0x2710
-               	je	0x4219f2 <kfun:#main(){}+0x222>
+               	leaq	234538(%rip), %rax      # 0x45aff0 <ktypeglobal:kotlin.IntArray#internal>
+               	movq	%rax, 16(%rbp)
+               	movl	$10000, 24(%rbp)        # imm = 0x2710
+               	movq	%r15, 184(%rsp)
+               	xorl	%r13d, %r13d
+               	cmpq	$10000, %r13            # imm = 0x2710
+               	je	0x421c22 <kfun:#main(){}+0x232>
@@@@
-               	cmpq	%rax, %r14
-               	jae	0x42271f <kfun:#main(){}+0xf4f>
+               	cmpq	%rax, %r13
+               	jae	0x4229b7 <kfun:#main(){}+0xfc7>
@@@@
-               	movl	%r14d, 32(%rbp,%r14,4)
-               	addq	$1, %r14
-               	cmpq	$10000, %r14            # imm = 0x2710
-               	jne	0x4219c0 <kfun:#main(){}+0x1f0>
-               	movl	24(%r15), %eax
+               	movl	%r13d, 32(%rbp,%r13,4)
+               	addq	$1, %r13
+               	cmpq	$10000, %r13            # imm = 0x2710
+               	jne	0x421bf0 <kfun:#main(){}+0x200>
+               	movl	24(%r12), %eax
@@@@
-               	jae	0x42271f <kfun:#main(){}+0xf4f>
-               	movq	16(%r15), %rax
-               	movq	%r13, 32(%r15,%rbx,8)
+               	jae	0x4229b7 <kfun:#main(){}+0xfc7>
+               	movq	16(%r12), %rax
+               	movq	%r15, 32(%r12,%rbx,8)
@@@@
-               	movq	48(%rsp), %r14
-               	cmpq	$5, %rbx
-               	jne	0x421960 <kfun:#main(){}+0x190>
-               	movq	104(%rsp), %rax
+               	cmpq	%r14, %rbx
+               	jne	0x421b80 <kfun:#main(){}+0x190>
+               	movq	112(%rsp), %rax
@@@@
-               	movl	40(%rax), %r13d
-               	testl	%r13d, %r13d
-               	js	0x422854 <kfun:#main(){}+0x1084>
-               	movq	296(%r14), %rdi
-               	leaq	31(,%r13,8), %rsi
-               	andq	$-8, %rsi
+               	movl	40(%rax), %r14d
+               	testl	%r14d, %r14d
+               	js	0x422af5 <kfun:#main(){}+0x1105>
+               	movq	40(%rsp), %r15
+               	movq	296(%r15), %rdi
+               	leaq	31(,%r14,8), %rsi
+               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
+               	andq	%rax, %rsi
@@@@
-               	callq	0x429960 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r15
+               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %rbp
@@@@
-               	leaq	232737(%rip), %rax      # 0x45a790 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rax, 16(%r15)
-               	movl	%r13d, 24(%r15)
-               	movq	%rcx, 56(%rsp)
+               	leaq	234023(%rip), %rax      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rax, 16(%rbp)
+               	movl	%r14d, 24(%rbp)
+               	movq	%rcx, 120(%rsp)
@@@@
-               	cmpq	%r12, %r13
-               	je	0x421be4 <kfun:#main(){}+0x414>
-               	movzbl	283361(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%r14, 56(%rsp)
+               	cmpq	%r12, %r14
+               	je	0x421e23 <kfun:#main(){}+0x433>
+               	nop
+               	movzbl	284713(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x421b40 <kfun:#main(){}+0x370>
-               	movq	%rax, %rbp
-               	movq	40(%rsp), %rax
+               	je	0x421d80 <kfun:#main(){}+0x390>
+               	movq	%rax, %r13
+               	movq	48(%rsp), %rax
@@@@
-               	movq	%rbp, %rdi
+               	movq	%r13, %rdi
@@@@
-               	leaq	107086(%rip), %rdx      # 0x43bd40 <(anonymous namespace)::workerRoutine(void*)>
-               	movq	%rbp, %rcx
+               	leaq	110062(%rip), %rdx      # 0x43cb20 <(anonymous namespace)::workerRoutine(void*)>
+               	movq	%r13, %rcx
@@@@
-               	callq	0x4261a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movl	(%rbp), %ebx
-               	movq	48(%rsp), %r14
-               	jmp	0x421b45 <kfun:#main(){}+0x375>
-               	nopl	(%rax)
+               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movl	(%r13), %ebx
+               	movq	40(%rsp), %r15
+               	movq	56(%rsp), %r14
+               	jmp	0x421d85 <kfun:#main(){}+0x395>
@@@@
-               	movq	288(%r14), %rax
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%r14)
+               	movq	%rax, 288(%r15)
@@@@
-               	movq	296(%r14), %rdi
+               	movq	296(%r15), %rdi
@@@@
-               	movq	%rax, 288(%r14)
-               	movl	24(%r15), %eax
+               	movq	%rax, 288(%r15)
+               	movl	24(%rbp), %eax
@@@@
-               	jae	0x42271f <kfun:#main(){}+0xf4f>
-               	movq	16(%r15), %rax
-               	movq	%rcx, 32(%r15,%r12,8)
+               	jae	0x4229b7 <kfun:#main(){}+0xfc7>
+               	movq	16(%rbp), %rax
+               	movq	%rcx, 32(%rbp,%r12,8)
@@@@
-               	cmpq	%r12, %r13
-               	jne	0x421a90 <kfun:#main(){}+0x2c0>
-               	movq	104(%rsp), %rcx
-               	movq	56(%rsp), %rax
+               	cmpq	%r12, %r14
+               	jne	0x421cd0 <kfun:#main(){}+0x2e0>
+               	movq	112(%rsp), %rcx
+               	movq	120(%rsp), %rax
@@@@
+               	movq	%rax, 288(%r15)
@@@@
-               	movaps	%xmm0, 144(%rsp)

@@ -217,281 +224,283 @@
@@@[(3, 4), (5, 6), (8, 10), (12, 22), (25, 29), (31, 41), (42, 55), (64, 70), (71, 75), (88, 90), (103, 106), (107, 117), (118, 137), (138, 146), (148, 162), (168, 174), (176, 178), (180, 184), (195, 197), (206, 210), (219, 225), (228, 242), (250, 255), (259, 263), (266, 272), (275, 277), (279, 281), (302, 317), (327, 329), (330, 332), (333, 339), (341, 343), (344, 346), (347, 361), (365, 393), (395, 401), (402, 413), (416, 421), (428, 431), (432, 436)]@@@
+               	movaps	%xmm0, 144(%rsp)
@@@@
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%r14)
+               	movq	%rax, 288(%r15)
@@@@
-               	movl	40(%rcx), %ebx
-               	testl	%ebx, %ebx
-               	js	0x42288a <kfun:#main(){}+0x10ba>
-               	movq	296(%r14), %rdi
-               	leaq	31(,%rbx,8), %rsi
+               	movl	40(%rcx), %r14d
+               	testl	%r14d, %r14d
+               	js	0x422b30 <kfun:#main(){}+0x1140>
+               	movq	296(%r15), %rdi
+               	leaq	31(,%r14,8), %rsi
@@@@
-               	callq	0x429960 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r12
+               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %rbx
@@@@
-               	movups	%xmm0, 8(%r12)
-               	movq	$0, 24(%r12)
-               	leaq	232142(%rip), %rcx      # 0x45a790 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rcx, 16(%r12)
-               	movl	%ebx, 24(%r12)
+               	movups	%xmm0, 8(%rbx)
+               	movq	$0, 24(%rbx)
+               	leaq	233410(%rip), %rcx      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rcx, 16(%rbx)
+               	movl	%r14d, 24(%rbx)
@@@@
-               	xorl	%r13d, %r13d
-               	movq	%r12, 136(%rsp)
-               	movq	%rbx, 336(%rsp)
-               	cmpq	%rbx, %r13
-               	je	0x4223ea <kfun:#main(){}+0xc1a>
-               	movb	282754(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	xorl	%ebp, %ebp
+               	movq	%rbx, 56(%rsp)
+               	movq	%r14, 352(%rsp)
+               	cmpq	%r14, %rbp
+               	je	0x422672 <kfun:#main(){}+0xc82>
+               	nopw	%cs:(%rax,%rax)
+               	movb	284090(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	cmpq	%rcx, %r13
-               	jae	0x42271f <kfun:#main(){}+0xf4f>
-               	movq	16(%rax,%r13,8), %rax
+               	cmpq	%rcx, %rbp
+               	jae	0x4229b7 <kfun:#main(){}+0xfc7>
+               	movq	16(%rax,%rbp,8), %rax
@@@@
-               	movslq	8(%rax), %r15
-               	movl	277973(%rip), %eax      # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
+               	movl	8(%rax), %r13d
+               	movl	279301(%rip), %eax      # 0x466280 <state_global$kotlin.native.concurrent.TransferMode>
@@@@
-               	movq	296(%r14), %rdi
+               	movq	296(%r15), %rdi
@@@@
-               	movl	%r13d, 32(%rax)
+               	movq	%rbp, 120(%rsp)
+               	movl	%ebp, 32(%rax)
@@@@
-               	movl	%eax, 56(%rsp)
-               	movq	$0, 304(%rsp)
-               	movq	288(%r14), %rax
-               	movq	%rax, 288(%rsp)
-               	leaq	280(%rsp), %rax
-               	movq	%rax, 288(%r14)
-               	movabsq	$17179869184, %rax      # imm = 0x400000000
+               	movl	%eax, 136(%rsp)
+               	movq	$0, 312(%rsp)
+               	movq	288(%r15), %rax
@@@@
-               	leaq	304(%rsp), %rsi
-               	callq	0x418f90 <WorkerLaunchpad>
-               	movq	304(%rsp), %rdi
-               	callq	0x4269f0 <CreateStablePointer>
-               	movq	%rax, 120(%rsp)
-               	movq	$0, 304(%rsp)
-               	callq	0x439740 <(anonymous namespace)::theState()>
+               	leaq	288(%rsp), %rax
+               	movq	%rax, 288(%r15)
+               	movabsq	$17179869184, %rax      # imm = 0x400000000
+               	movq	%rax, 304(%rsp)
+               	leaq	312(%rsp), %rsi
+               	callq	0x4190e0 <WorkerLaunchpad>
+               	movslq	%r13d, %r12
+               	movq	312(%rsp), %rdi
+               	callq	0x427110 <CreateStablePointer>
+               	movq	%rax, 128(%rsp)
+               	movq	$0, 312(%rsp)
+               	callq	0x43a470 <(anonymous namespace)::theState()>
@@@@
-               	movq	40(%rsp), %rax
-               	movq	-64(%rax), %rbp
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%rbp)
+               	movq	48(%rsp), %rax
+               	movq	-64(%rax), %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%rbx)
@@@@
-               	testq	%rbp, %rbp
-               	je	0x421e60 <kfun:#main(){}+0x690>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x421e60 <kfun:#main(){}+0x690>
+               	testq	%rbx, %rbx
+               	je	0x4220c0 <kfun:#main(){}+0x6d0>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x4220c0 <kfun:#main(){}+0x6d0>
@@@@
-               	je	0x421e60 <kfun:#main(){}+0x690>
-               	movq	%rbp, %rdi
-               	callq	0x4261a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x4220c0 <kfun:#main(){}+0x6d0>
+               	movq	%rbx, %rdi
+               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	%r15, %rax
+               	movq	%r12, %rax
@@@@
-               	je	0x421ea0 <kfun:#main(){}+0x6d0>
-               	movq	%r15, %rax
+               	je	0x422100 <kfun:#main(){}+0x710>
+               	movq	%r12, %rax
@@@@
-               	movl	%r15d, %eax
+               	movl	%r13d, %eax
@@@@
-               	cmpl	%r15d, 8(%rbp)
-               	jne	0x421ee4 <kfun:#main(){}+0x714>
+               	cmpl	%r13d, 8(%rbp)
+               	jne	0x422144 <kfun:#main(){}+0x754>
@@@@
-               	jne	0x421fc0 <kfun:#main(){}+0x7f0>
-               	cmpl	%r15d, %esi
-               	je	0x421f16 <kfun:#main(){}+0x746>
+               	jne	0x422220 <kfun:#main(){}+0x830>
+               	cmpl	%r13d, %esi
+               	je	0x422175 <kfun:#main(){}+0x785>
@@@@
-               	je	0x421fc0 <kfun:#main(){}+0x7f0>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x421ed0 <kfun:#main(){}+0x700>
-               	movq	%rsi, %rax
+               	je	0x422220 <kfun:#main(){}+0x830>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x422130 <kfun:#main(){}+0x740>
@@@@
-               	je	0x421fc0 <kfun:#main(){}+0x7f0>
-               	movq	16(%rbp), %rax
-               	movq	%rax, 328(%rsp)
+               	je	0x422220 <kfun:#main(){}+0x830>
+               	movq	16(%rbp), %r15
@@@@
-               	je	0x421fc8 <kfun:#main(){}+0x7f8>
-               	movq	%rax, %r15
+               	je	0x422228 <kfun:#main(){}+0x838>
+               	movq	%rax, %r12
@@@@
-               	movl	$1, (%r15)
-               	movl	%eax, 4(%r15)
-               	movq	40(%rsp), %rax
+               	movl	$1, (%r12)
+               	movl	%eax, 4(%r12)
+               	movq	48(%rsp), %rax
@@@@
-               	leaq	16(%r15), %rdi
+               	leaq	16(%r12), %rdi
@@@@
-               	movq	%r15, %rdi
+               	movq	%r12, %rdi
@@@@
-               	callq	0x4261a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x421fcb <kfun:#main(){}+0x7fb>
-               	nop
-               	xorl	%r15d, %r15d
-               	jmp	0x4222c7 <kfun:#main(){}+0xaf7>
-               	xorl	%r15d, %r15d
-               	movl	4(%r15), %r8d
-               	movslq	%r8d, %rax
+               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	jmp	0x42222b <kfun:#main(){}+0x83b>
+               	xorl	%r12d, %r12d
+               	jmp	0x42254d <kfun:#main(){}+0xb5d>
+               	xorl	%r12d, %r12d
+               	movl	4(%r12), %r13d
+               	movslq	%r13d, %rax
@@@@
-               	movq	%rdx, %rbp
+               	movq	%rdx, %rbx
@@@@
-               	movq	(%rax,%rbp,8), %rax
+               	movq	(%rax,%rbx,8), %rax
@@@@
-               	jne	0x422017 <kfun:#main(){}+0x847>
-               	jmp	0x422078 <kfun:#main(){}+0x8a8>
-               	movl	%r8d, %eax
+               	jne	0x42227b <kfun:#main(){}+0x88b>
+               	jmp	0x4222e7 <kfun:#main(){}+0x8f7>
+               	movl	%r13d, %eax
@@@@
-               	movl	%edx, %ebp
+               	movl	%edx, %ebx
@@@@
-               	movq	(%rax,%rbp,8), %rax
+               	movq	(%rax,%rbx,8), %rax
@@@@
-               	je	0x422078 <kfun:#main(){}+0x8a8>
-               	movq	(%rax), %rbx
-               	cmpl	8(%rbx), %r8d
-               	jne	0x422040 <kfun:#main(){}+0x870>
-               	testq	%rbx, %rbx
-               	jne	0x42206f <kfun:#main(){}+0x89f>
-               	jmp	0x422078 <kfun:#main(){}+0x8a8>
+               	je	0x4222e7 <kfun:#main(){}+0x8f7>
+               	movq	(%rax), %rbp
+               	cmpl	8(%rbp), %r13d
+               	jne	0x4222a0 <kfun:#main(){}+0x8b0>
+               	testq	%rbp, %rbp
+               	jne	0x4222cf <kfun:#main(){}+0x8df>
+               	jmp	0x4222e7 <kfun:#main(){}+0x8f7>
@@@@
-               	cmpq	%rbp, %rdx
-               	jne	0x422078 <kfun:#main(){}+0x8a8>
-               	cmpl	%ecx, %r8d
-               	je	0x42206a <kfun:#main(){}+0x89a>
-               	movq	%rbx, %rsi
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x422078 <kfun:#main(){}+0x8a8>
-               	movslq	8(%rbx), %rcx
-               	movq	%rcx, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x422030 <kfun:#main(){}+0x860>
-               	movq	%rcx, %rax
+               	cmpq	%rbx, %rdx
+               	jne	0x4222e7 <kfun:#main(){}+0x8f7>
+               	cmpl	%ecx, %r13d
+               	je	0x4222ca <kfun:#main(){}+0x8da>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x4222e7 <kfun:#main(){}+0x8f7>
+               	movl	8(%rbp), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x422290 <kfun:#main(){}+0x8a0>
@@@@
-               	cmpq	%rbp, %rdx
-               	je	0x42203b <kfun:#main(){}+0x86b>
-               	jmp	0x422078 <kfun:#main(){}+0x8a8>
+               	cmpq	%rbx, %rdx
+               	je	0x42229b <kfun:#main(){}+0x8ab>
+               	jmp	0x4222e7 <kfun:#main(){}+0x8f7>
@@@@
-               	je	0x422078 <kfun:#main(){}+0x8a8>
-               	addq	$8, %rbx
-               	jmp	0x42226e <kfun:#main(){}+0xa9e>
-               	movl	%r8d, %ebx
-               	movq	%r15, 320(%rsp)
+               	je	0x4222e7 <kfun:#main(){}+0x8f7>
+               	addq	$8, %rbp
+               	movl	136(%rsp), %ecx
+               	movq	128(%rsp), %rdx
+               	jmp	0x422502 <kfun:#main(){}+0xb12>
+               	movq	%r15, 344(%rsp)
@@@@
-               	movl	%ebx, 132(%rsp)
-               	movq	%rax, 112(%rsp)
-               	movl	%ebx, 8(%rax)
+               	movq	%rax, 336(%rsp)
+               	movl	%r13d, 8(%rax)
@@@@
-               	jne	0x4220cc <kfun:#main(){}+0x8fc>
+               	movq	%r12, 328(%rsp)
+               	jne	0x422335 <kfun:#main(){}+0x945>
@@@@
-               	movq	112(%rsp), %rdi
-               	movq	%rbp, %rsi
-               	jmp	0x4221f8 <kfun:#main(){}+0xa28>
+               	jmp	0x422465 <kfun:#main(){}+0xa75>

@@ -500,381 +509,392 @@
@@@[(3, 5), (6, 19), (26, 28), (29, 48), (50, 53), (57, 75), (77, 79), (80, 84), (102, 108), (110, 120), (126, 138), (139, 144), (145, 156), (157, 160), (161, 165), (166, 170), (171, 183), (187, 195), (201, 207), (230, 247), (250, 252), (254, 256), (258, 260), (273, 298), (299, 312), (313, 320), (321, 323), (326, 328), (330, 332), (337, 348), (349, 353), (357, 365), (367, 381), (387, 395), (396, 398), (400, 405), (408, 413), (418, 420), (421, 435), (439, 465), (468, 478), (479, 489), (490, 504), (510, 516), (517, 529), (530, 544), (550, 559), (585, 596), (598, 600), (603, 612), (613, 626)]@@@
-               	movq	104(%r14), %rbx
+               	movq	104(%r14), %rbp
@@@@
-               	testq	%rbx, %rbx
-               	je	0x4221aa <kfun:#main(){}+0x9da>
-               	leaq	104(%r14), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x422146 <kfun:#main(){}+0x976>
-               	nopl	(%rax,%rax)
+               	testq	%rbp, %rbp
+               	je	0x422420 <kfun:#main(){}+0xa30>
+               	leaq	104(%r14), %rdi
+               	xorl	%ebx, %ebx
+               	jmp	0x4223b6 <kfun:#main(){}+0x9c6>
+               	nopw	%cs:(%rax,%rax)
+               	nop
@@@@
-               	movq	%rax, (%rcx)
+               	movq	%rax, (%rsi)
@@@@
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbx, %rbx
-               	je	0x4221aa <kfun:#main(){}+0x9da>
-               	movq	%rbx, %rcx
-               	movq	(%rbx), %rbx
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rsi, (%rax)
+               	movq	%rbx, %rdx
+               	movq	%rdx, %rbx
+               	testq	%rbp, %rbp
+               	je	0x422420 <kfun:#main(){}+0xa30>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x422120 <kfun:#main(){}+0x950>
+               	je	0x422390 <kfun:#main(){}+0x9a0>
+               	movq	%rcx, %rax
@@@@
-               	jne	0x42212e <kfun:#main(){}+0x95e>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%r12,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x42213e <kfun:#main(){}+0x96e>
-               	movq	%rcx, (%r12,%rdi,8)
-               	jmp	0x42213e <kfun:#main(){}+0x96e>
+               	jne	0x42239e <kfun:#main(){}+0x9ae>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r12,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x4223ae <kfun:#main(){}+0x9be>
+               	movq	%rsi, (%r12,%rbx,8)
+               	jmp	0x4223ae <kfun:#main(){}+0x9be>
@@@@
-               	movq	104(%r14), %rbx
+               	movq	104(%r14), %rbp
@@@@
-               	testq	%rbx, %rbx
-               	jne	0x422110 <kfun:#main(){}+0x940>
+               	testq	%rbp, %rbp
+               	jne	0x422379 <kfun:#main(){}+0x989>
@@@@
-               	movq	%rdx, %rsi
-               	jmp	0x4221f3 <kfun:#main(){}+0xa23>
-               	movl	132(%rsp), %eax
+               	movq	%rdx, %rbx
+               	jmp	0x422465 <kfun:#main(){}+0xa75>
+               	movl	%r13d, %eax
@@@@
-               	movl	%edx, %esi
-               	movq	112(%rsp), %rdi
-               	movq	%rdi, %rbx
-               	addq	$8, %rbx
-               	movq	(%r12,%rsi,8), %rax
+               	movl	%edx, %ebx
+               	movq	336(%rsp), %rsi
+               	movq	%rsi, %rbp
+               	addq	$8, %rbp
+               	movq	(%r12,%rbx,8), %rax
@@@@
-               	movq	%rax, (%rdi)
-               	movq	(%r12,%rsi,8), %rax
-               	movq	%rdi, (%rax)
-               	jmp	0x422261 <kfun:#main(){}+0xa91>
-               	movq	%r14, %rcx
-               	addq	$104, %rcx
+               	movq	%rax, (%rsi)
+               	movq	(%r12,%rbx,8), %rax
+               	movq	%rsi, (%rax)
+               	jmp	0x4224df <kfun:#main(){}+0xaef>
+               	movq	%r14, %rdi
+               	addq	$104, %rdi
@@@@
-               	movq	%rax, (%rdi)
-               	movq	%rdi, 104(%r14)
+               	movq	%rax, (%rsi)
+               	movq	%rsi, 104(%r14)
+               	movq	(%rsi), %rax
@@@@
-               	je	0x42225d <kfun:#main(){}+0xa8d>
-               	movq	96(%r14), %rbp
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%rbp, %rdx
+               	je	0x4224db <kfun:#main(){}+0xaeb>
+               	movq	96(%r14), %r8
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%r8, %rdx
@@@@
-               	je	0x422251 <kfun:#main(){}+0xa81>
+               	je	0x4224ce <kfun:#main(){}+0xade>
+               	movq	%rcx, %rax
@@@@
-               	divq	%rbp
-               	jmp	0x422255 <kfun:#main(){}+0xa85>
+               	divq	%r8
+               	jmp	0x4224d3 <kfun:#main(){}+0xae3>
@@@@
-               	divl	%ebp
-               	movq	%rdi, (%r12,%rdx,8)
+               	divl	%r8d
+               	movq	%rsi, (%r12,%rdx,8)
@@@@
-               	movq	%rcx, (%r12,%rsi,8)
-               	addq	$1, 112(%r14)
-               	movq	136(%rsp), %r12
-               	movq	%r15, 8(%rbx)
+               	movq	%rdi, (%r12,%rbx,8)
+               	movq	112(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 112(%r14)
+               	movl	136(%rsp), %ecx
+               	movq	128(%rsp), %rdx
+               	movq	328(%rsp), %r12
+               	movq	%r12, 8(%rbp)
@@@@
-               	movq	120(%rsp), %rax
-               	movq	%rax, 80(%rsp)
-               	movq	%r15, 88(%rsp)
-               	movl	56(%rsp), %eax
-               	movl	%eax, 96(%rsp)
+               	movq	%rdx, 80(%rsp)
+               	movq	%r12, 88(%rsp)
+               	movl	%ecx, 96(%rsp)
@@@@
-               	movq	328(%rsp), %rdi
-               	callq	0x439a40 <Worker::putJob((anonymous namespace)::Job, bool)>
-               	movq	40(%rsp), %rax
+               	movq	%r15, %rdi
+               	callq	0x43a770 <Worker::putJob((anonymous namespace)::Job, bool)>
+               	movq	48(%rsp), %rax
@@@@
-               	callq	0x4261a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
-               	testq	%r15, %r15
-               	movq	48(%rsp), %r14
-               	je	0x42284f <kfun:#main(){}+0x107f>
-               	movl	4(%r15), %ebx
-               	movq	288(%rsp), %rax
-               	movq	%rax, 288(%r14)
+               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
+               	testq	%r12, %r12
+               	movq	40(%rsp), %r15
+               	movq	352(%rsp), %r14
+               	je	0x422ae7 <kfun:#main(){}+0x10f7>
+               	movl	4(%r12), %ebx
+               	movq	296(%rsp), %rax
+               	movq	%rax, 288(%r15)
@@@@
-               	movq	288(%r14), %rax
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%r14)
+               	movq	%rax, 288(%r15)
@@@@
-               	movq	296(%r14), %rdi
+               	movq	296(%r15), %rdi
@@@@
-               	movq	%rax, 288(%r14)
-               	movl	24(%r12), %eax
-               	cmpq	%rax, %r13
-               	jae	0x42271f <kfun:#main(){}+0xf4f>
-               	movq	16(%r12), %rax
-               	movq	%rcx, 32(%r12,%r13,8)
-               	addq	$1, %r13
-               	movq	336(%rsp), %rbx
-               	cmpq	%rbx, %r13
-               	jne	0x421cf0 <kfun:#main(){}+0x520>
-               	movl	24(%r12), %eax
-               	xorl	%r15d, %r15d
+               	movq	%rax, 288(%r15)
+               	movq	56(%rsp), %rbx
+               	movl	24(%rbx), %eax
+               	movq	120(%rsp), %rbp
+               	cmpq	%rax, %rbp
+               	jae	0x4229b7 <kfun:#main(){}+0xfc7>
+               	movq	16(%rbx), %rax
+               	movq	%rcx, 32(%rbx,%rbp,8)
+               	addq	$1, %rbp
+               	cmpq	%r14, %rbp
+               	jne	0x421f40 <kfun:#main(){}+0x550>
+               	movl	24(%rbx), %eax
+               	xorl	%ebp, %ebp
@@@@
-               	cmovsl	%r15d, %eax
-               	movq	%rax, 120(%rsp)
-               	cmpq	120(%rsp), %r15
-               	je	0x4226fe <kfun:#main(){}+0xf2e>
-               	nopl	(%rax,%rax)
-               	movb	280930(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	cmovsl	%ebp, %eax
+               	movq	%rax, 128(%rsp)
+               	cmpq	128(%rsp), %rbp
+               	je	0x422996 <kfun:#main(){}+0xfa6>
+               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)
+               	movb	282202(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x42241f <kfun:#main(){}+0xc4f>
-               	callq	0x426370 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	32(%r12,%r15,8), %rax
+               	je	0x4226af <kfun:#main(){}+0xcbf>
+               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	%rbp, 120(%rsp)
+               	movq	32(%rbx,%rbp,8), %rax
@@@@
-               	movslq	8(%rax), %r12
+               	movl	8(%rax), %r13d
@@@@
-               	movq	288(%r14), %rax
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%r14)
+               	movq	%rax, 288(%r15)
@@@@
-               	je	0x422482 <kfun:#main(){}+0xcb2>
-               	leaq	276094(%rip), %rdi      # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
-               	leaq	-39757(%rip), %rsi      # 0x418930 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
-               	callq	0x43bb40 <CallInitGlobalPossiblyLock>
-               	movq	275991(%rip), %rdi      # 0x465aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
+               	je	0x422717 <kfun:#main(){}+0xd27>
+               	leaq	277353(%rip), %rdi      # 0x466274 <state_global$kotlin.native.concurrent.FutureState>
+               	leaq	-40098(%rip), %rsi      # 0x418a70 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
+               	callq	0x43c920 <CallInitGlobalPossiblyLock>
+               	movslq	%r13d, %r15
+               	movq	277247(%rip), %rdi      # 0x466220 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
@@@@
-               	callq	0x41b480 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
-               	movq	%rax, %r13
+               	callq	0x41b620 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
+               	movq	%rax, 136(%rsp)
@@@@
-               	movq	40(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
+               	movq	48(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x4224f0 <kfun:#main(){}+0xd20>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x4224f0 <kfun:#main(){}+0xd20>
+               	testq	%rbp, %rbp
+               	je	0x422790 <kfun:#main(){}+0xda0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422790 <kfun:#main(){}+0xda0>
@@@@
-               	je	0x4224f0 <kfun:#main(){}+0xd20>
-               	movq	%rbx, %rdi
-               	callq	0x4261a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	je	0x422790 <kfun:#main(){}+0xda0>
+               	movq	%rbp, %rdi
+               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
@@@@
-               	movq	%r12, %rax
+               	movq	%r15, %rax
@@@@
-               	movq	%r15, 56(%rsp)
-               	je	0x422520 <kfun:#main(){}+0xd50>
-               	movq	%r12, %rax
+               	je	0x4227b0 <kfun:#main(){}+0xdc0>
+               	movq	%r15, %rax
@@@@
-               	jmp	0x422529 <kfun:#main(){}+0xd59>
-               	nopl	(%rax)
-               	movl	%r12d, %eax
+               	jmp	0x4227b9 <kfun:#main(){}+0xdc9>
+               	movl	%r13d, %eax
@@@@
-               	xorl	%r15d, %r15d
+               	xorl	%r12d, %r12d
@@@@
-               	je	0x422650 <kfun:#main(){}+0xe80>
-               	movq	(%rax), %rbx
-               	cmpl	%r12d, 8(%rbx)
-               	jne	0x422564 <kfun:#main(){}+0xd94>
-               	testq	%rbx, %rbx
-               	jne	0x42259e <kfun:#main(){}+0xdce>
-               	jmp	0x422650 <kfun:#main(){}+0xe80>
+               	je	0x4228e0 <kfun:#main(){}+0xef0>
+               	movq	(%rax), %rbp
+               	cmpl	%r13d, 8(%rbp)
+               	jne	0x4227f4 <kfun:#main(){}+0xe04>
+               	testq	%rbp, %rbp
+               	jne	0x42282e <kfun:#main(){}+0xe3e>
+               	jmp	0x4228e0 <kfun:#main(){}+0xef0>
@@@@
-               	jne	0x422650 <kfun:#main(){}+0xe80>
-               	cmpl	%r12d, %esi
-               	je	0x422595 <kfun:#main(){}+0xdc5>
-               	movq	%rbx, %rbp
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x422650 <kfun:#main(){}+0xe80>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x422550 <kfun:#main(){}+0xd80>
-               	movq	%rsi, %rax
+               	jne	0x4228e0 <kfun:#main(){}+0xef0>
+               	cmpl	%r13d, %esi
+               	je	0x422825 <kfun:#main(){}+0xe35>
+               	movq	%rbp, %rbx
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x4228e0 <kfun:#main(){}+0xef0>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x4227e0 <kfun:#main(){}+0xdf0>
@@@@
-               	je	0x42255f <kfun:#main(){}+0xd8f>
-               	jmp	0x422650 <kfun:#main(){}+0xe80>
-               	testq	%rbp, %rbp
-               	je	0x422650 <kfun:#main(){}+0xe80>
-               	movq	16(%rbx), %r15
+               	je	0x4227ef <kfun:#main(){}+0xdff>
+               	jmp	0x4228e0 <kfun:#main(){}+0xef0>
+               	testq	%rbx, %rbx
+               	je	0x4228e0 <kfun:#main(){}+0xef0>
+               	movq	16(%rbp), %r15
@@@@
-               	movq	40(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
-               	movq	%rdi, 104(%rsp)
+               	movq	48(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
+               	movq	%rdi, 112(%rsp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x422600 <kfun:#main(){}+0xe30>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x422600 <kfun:#main(){}+0xe30>
+               	testq	%rbp, %rbp
+               	je	0x422890 <kfun:#main(){}+0xea0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422890 <kfun:#main(){}+0xea0>
@@@@
-               	je	0x422600 <kfun:#main(){}+0xe30>
-               	movq	%rbx, %rdi
-               	callq	0x4261a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x422890 <kfun:#main(){}+0xea0>
+               	movq	%rbp, %rdi
+               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movl	(%r15), %r15d
-               	movq	40(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
-               	movq	104(%rsp), %rdi
+               	movl	(%r15), %r12d
+               	movq	48(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
+               	movq	112(%rsp), %rdi
@@@@
-               	testq	%rbx, %rbx
-               	je	0x422650 <kfun:#main(){}+0xe80>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x422650 <kfun:#main(){}+0xe80>
+               	testq	%rbp, %rbp
+               	je	0x4228e0 <kfun:#main(){}+0xef0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x4228e0 <kfun:#main(){}+0xef0>
@@@@
-               	je	0x422650 <kfun:#main(){}+0xe80>
-               	movq	%rbx, %rdi
-               	callq	0x4261a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
-               	movq	40(%rsp), %rax
+               	je	0x4228e0 <kfun:#main(){}+0xef0>
+               	movq	%rbp, %rdi
+               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	48(%rsp), %rax
@@@@
-               	cmpl	%r15d, 8(%r13)
-               	movq	48(%rsp), %r14
-               	jbe	0x42271f <kfun:#main(){}+0xf4f>
-               	movslq	%r15d, %rax
-               	movq	16(%r13,%rax,8), %rax
+               	movq	136(%rsp), %rcx
+               	cmpl	%r12d, 8(%rcx)
+               	movq	40(%rsp), %r15
+               	jbe	0x4229b7 <kfun:#main(){}+0xfc7>
+               	movslq	%r12d, %rax
+               	movq	16(%rcx,%rax,8), %rax
@@@@
-               	movq	%rcx, 288(%r14)
+               	movq	%rcx, 288(%r15)
@@@@
-               	jae	0x422724 <kfun:#main(){}+0xf54>
-               	movq	56(%rsp), %r15
-               	addq	$1, %r15
-               	movl	%r12d, %edi
+               	movq	56(%rsp), %rbx
+               	jae	0x4229bc <kfun:#main(){}+0xfcc>
+               	movq	120(%rsp), %rbp
+               	addq	$1, %rbp
+               	movl	%r13d, %edi
@@@@
-               	callq	0x43cf50 <Kotlin_Worker_consumeFuture>
-               	movq	136(%rsp), %r12
-               	cmpq	120(%rsp), %r15
-               	jne	0x422410 <kfun:#main(){}+0xc40>
-               	movq	360(%rsp), %rax
-               	movq	%rax, 288(%r14)
-               	addq	$392, %rsp              # imm = 0x188
+               	callq	0x43ddb0 <Kotlin_Worker_consumeFuture>
+               	cmpq	128(%rsp), %rbp
+               	jne	0x4226a0 <kfun:#main(){}+0xcb0>
+               	movq	376(%rsp), %rax
+               	movq	%rax, 288(%r15)
+               	addq	$408, %rsp              # imm = 0x198

@@ -882,2408 +902,2411 @@
@@@[(15, 21), (62, 68), (85, 96), (106, 110), (168, 170)]@@@
-               	movl	%r12d, %edi
-               	callq	0x43cf50 <Kotlin_Worker_consumeFuture>
-               	movq	48(%rsp), %rax
+               	movl	%r13d, %edi
+               	callq	0x43ddb0 <Kotlin_Worker_consumeFuture>
+               	movq	40(%rsp), %rax
@@@@
-               	movl	%r12d, %edi
-               	callq	0x43cf50 <Kotlin_Worker_consumeFuture>
-               	movq	48(%rsp), %rax
+               	movl	%r13d, %edi
+               	callq	0x43ddb0 <Kotlin_Worker_consumeFuture>
+               	movq	40(%rsp), %rax
@@@@
-               	callq	0x43bd20 <ThrowException>
-               	callq	0x41b3e0 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
-               	callq	0x418df0 <ThrowWorkerAlreadyTerminated>
-               	movq	296(%r14), %rdi
+               	callq	0x43cb00 <ThrowException>
+               	callq	0x41b580 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
+               	callq	0x418f40 <ThrowWorkerAlreadyTerminated>
+               	movq	296(%rbx), %rdi
+               	jmp	0x422b37 <kfun:#main(){}+0x1147>
+               	movq	40(%rsp), %rax
+               	movq	296(%rax), %rdi
@@@@
-               	jmp	0x4228be <kfun:#main(){}+0x10ee>
-               	movq	296(%r14), %rdi
+               	jmp	0x422b64 <kfun:#main(){}+0x1174>
+               	movq	296(%r15), %rdi
@@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)
