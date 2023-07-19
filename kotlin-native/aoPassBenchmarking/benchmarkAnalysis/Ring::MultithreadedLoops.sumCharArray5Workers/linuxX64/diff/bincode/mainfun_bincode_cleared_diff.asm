--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumCharArray5Workers/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:49:38.750611314 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumCharArray5Workers/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:01:22.690390784 +0200

@@ -5,213 +5,217 @@
@@@[(6, 7), (8, 9), (10, 22), (28, 34), (53, 55), (57, 59), (61, 62), (63, 72), (73, 78), (82, 88), (91, 98), (102, 109), (114, 116), (119, 132), (141, 145), (146, 156), (157, 163), (164, 171), (173, 187), (188, 192), (196, 204), (206, 215), (230, 236), (239, 241), (243, 247), (266, 276), (280, 282), (284, 286), (288, 290), (303, 307), (308, 314), (315, 323), (325, 326), (327, 328)]@@@
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
-               	je	0x42185b <kfun:#main(){}+0x7b>
-               	callq	0x426390 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	296(%r14), %rdi
+               	je	0x421a7b <kfun:#main(){}+0x7b>
+               	callq	0x426a50 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
+               	js	0x422afc <kfun:#main(){}+0x10fc>
+               	movq	%rbx, 40(%rsp)
+               	movq	296(%rbx), %rdi
+               	leaq	31(,%r14,8), %rsi
+               	andq	$-8, %rsi
@@@@
-               	movl	$64, %esi
-               	callq	0x429980 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r15
+               	callq	0x42a210 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %r12
@@@@
-               	leaq	232992(%rip), %rax      # 0x45a750 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rax, 16(%r15)
-               	movl	$5, 24(%r15)
+               	leaq	234343(%rip), %rax      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rax, 16(%r12)
+               	movl	%r14d, 24(%r12)
@@@@
-               	leaq	233102(%rip), %r12      # 0x45a7e0 <ktypeglobal:kotlin.CharArray#internal>
-               	movq	%r14, 48(%rsp)
-               	cmpq	$5, %rbx
-               	je	0x421a2c <kfun:#main(){}+0x24c>
-               	nopw	%cs:(%rax,%rax)
+               	cmpq	%r14, %rbx
+               	je	0x421c58 <kfun:#main(){}+0x258>
@@@@
-               	je	0x42197f <kfun:#main(){}+0x19f>
-               	callq	0x426390 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	296(%r14), %rdi
+               	je	0x421b9f <kfun:#main(){}+0x19f>
+               	callq	0x426a50 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
-               	je	0x421a03 <kfun:#main(){}+0x223>
+               	leaq	234378(%rip), %rax      # 0x45af60 <ktypeglobal:kotlin.CharArray#internal>
+               	movq	%rax, 16(%rbp)
+               	movl	$10000, 24(%rbp)        # imm = 0x2710
+               	movq	%r15, 184(%rsp)
+               	xorl	%r13d, %r13d
+               	cmpq	$10000, %r13            # imm = 0x2710
+               	je	0x421c33 <kfun:#main(){}+0x233>
@@@@
-               	cmpq	%rax, %r14
-               	jae	0x42273f <kfun:#main(){}+0xf5f>
+               	cmpq	%rax, %r13
+               	jae	0x4229c7 <kfun:#main(){}+0xfc7>
@@@@
-               	movw	%r14w, 32(%rbp,%r14,2)
-               	addq	$1, %r14
-               	cmpq	$10000, %r14            # imm = 0x2710
-               	jne	0x4219d0 <kfun:#main(){}+0x1f0>
-               	movl	24(%r15), %eax
+               	movw	%r13w, 32(%rbp,%r13,2)
+               	addq	$1, %r13
+               	cmpq	$10000, %r13            # imm = 0x2710
+               	jne	0x421c00 <kfun:#main(){}+0x200>
+               	movl	24(%r12), %eax
@@@@
-               	jae	0x42273f <kfun:#main(){}+0xf5f>
-               	movq	16(%r15), %rax
-               	movq	%r13, 32(%r15,%rbx,8)
+               	jae	0x4229c7 <kfun:#main(){}+0xfc7>
+               	movq	16(%r12), %rax
+               	movq	%r15, 32(%r12,%rbx,8)
@@@@
-               	movq	48(%rsp), %r14
-               	cmpq	$5, %rbx
-               	jne	0x421970 <kfun:#main(){}+0x190>
-               	movq	104(%rsp), %rax
+               	cmpq	%r14, %rbx
+               	jne	0x421b90 <kfun:#main(){}+0x190>
+               	movq	112(%rsp), %rax
@@@@
-               	movl	40(%rax), %r13d
-               	testl	%r13d, %r13d
-               	js	0x422874 <kfun:#main(){}+0x1094>
-               	movq	296(%r14), %rdi
-               	leaq	31(,%r13,8), %rsi
-               	andq	$-8, %rsi
+               	movl	40(%rax), %r14d
+               	testl	%r14d, %r14d
+               	js	0x422b05 <kfun:#main(){}+0x1105>
+               	movq	40(%rsp), %r15
+               	movq	296(%r15), %rdi
+               	leaq	31(,%r14,8), %rsi
+               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
+               	andq	%rax, %rsi
@@@@
-               	callq	0x429980 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r15
+               	callq	0x42a210 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %rbp
@@@@
-               	leaq	232656(%rip), %rax      # 0x45a750 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rax, 16(%r15)
-               	movl	%r13d, 24(%r15)
-               	movq	%rcx, 56(%rsp)
+               	leaq	234006(%rip), %rax      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rax, 16(%rbp)
+               	movl	%r14d, 24(%rbp)
+               	movq	%rcx, 120(%rsp)
@@@@
-               	cmpq	%r12, %r13
-               	je	0x421c04 <kfun:#main(){}+0x424>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax,%rax)
-               	movzbl	283329(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%r14, 56(%rsp)
+               	cmpq	%r12, %r14
+               	je	0x421e33 <kfun:#main(){}+0x433>
+               	movzbl	284697(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x421b60 <kfun:#main(){}+0x380>
-               	movq	%rax, %rbp
-               	movq	40(%rsp), %rax
+               	je	0x421d90 <kfun:#main(){}+0x390>
+               	movq	%rax, %r13
+               	movq	48(%rsp), %rax
@@@@
-               	movq	%rbp, %rdi
+               	movq	%r13, %rdi
@@@@
-               	leaq	107086(%rip), %rdx      # 0x43bd60 <(anonymous namespace)::workerRoutine(void*)>
-               	movq	%rbp, %rcx
+               	leaq	110062(%rip), %rdx      # 0x43cb30 <(anonymous namespace)::workerRoutine(void*)>
+               	movq	%r13, %rcx
@@@@
-               	callq	0x4261c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movl	(%rbp), %ebx
-               	movq	48(%rsp), %r14
-               	jmp	0x421b65 <kfun:#main(){}+0x385>
-               	nopl	(%rax)
+               	callq	0x426860 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movl	(%r13), %ebx
+               	movq	40(%rsp), %r15
+               	movq	56(%rsp), %r14
+               	jmp	0x421d95 <kfun:#main(){}+0x395>
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
-               	jae	0x42273f <kfun:#main(){}+0xf5f>
-               	movq	16(%r15), %rax
-               	movq	%rcx, 32(%r15,%r12,8)
+               	jae	0x4229c7 <kfun:#main(){}+0xfc7>
+               	movq	16(%rbp), %rax
+               	movq	%rcx, 32(%rbp,%r12,8)
@@@@
-               	cmpq	%r12, %r13
-               	jne	0x421ab0 <kfun:#main(){}+0x2d0>
-               	movq	104(%rsp), %rcx
-               	movq	56(%rsp), %rax
+               	cmpq	%r12, %r14
+               	jne	0x421ce0 <kfun:#main(){}+0x2e0>
+               	movq	112(%rsp), %rcx
+               	movq	120(%rsp), %rax
@@@@
+               	movq	%rax, 288(%r15)
@@@@
-               	movaps	%xmm0, 144(%rsp)

@@ -219,281 +223,283 @@
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
-               	js	0x4228aa <kfun:#main(){}+0x10ca>
-               	movq	296(%r14), %rdi
-               	leaq	31(,%rbx,8), %rsi
+               	movl	40(%rcx), %r14d
+               	testl	%r14d, %r14d
+               	js	0x422b40 <kfun:#main(){}+0x1140>
+               	movq	296(%r15), %rdi
+               	leaq	31(,%r14,8), %rsi
@@@@
-               	callq	0x429980 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r12
+               	callq	0x42a210 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %rbx
@@@@
-               	movups	%xmm0, 8(%r12)
-               	movq	$0, 24(%r12)
-               	leaq	232046(%rip), %rcx      # 0x45a750 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rcx, 16(%r12)
-               	movl	%ebx, 24(%r12)
+               	movups	%xmm0, 8(%rbx)
+               	movq	$0, 24(%rbx)
+               	leaq	233394(%rip), %rcx      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rcx, 16(%rbx)
+               	movl	%r14d, 24(%rbx)
@@@@
-               	xorl	%r13d, %r13d
-               	movq	%r12, 136(%rsp)
-               	movq	%rbx, 336(%rsp)
-               	cmpq	%rbx, %r13
-               	je	0x42240a <kfun:#main(){}+0xc2a>
-               	movb	282722(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	xorl	%ebp, %ebp
+               	movq	%rbx, 56(%rsp)
+               	movq	%r14, 352(%rsp)
+               	cmpq	%r14, %rbp
+               	je	0x422682 <kfun:#main(){}+0xc82>
+               	nopw	%cs:(%rax,%rax)
+               	movb	284074(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	cmpq	%rcx, %r13
-               	jae	0x42273f <kfun:#main(){}+0xf5f>
-               	movq	16(%rax,%r13,8), %rax
+               	cmpq	%rcx, %rbp
+               	jae	0x4229c7 <kfun:#main(){}+0xfc7>
+               	movq	16(%rax,%rbp,8), %rax
@@@@
-               	movslq	8(%rax), %r15
-               	movl	277941(%rip), %eax      # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
+               	movl	8(%rax), %r13d
+               	movl	279285(%rip), %eax      # 0x466280 <state_global$kotlin.native.concurrent.TransferMode>
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
-               	callq	0x426a10 <CreateStablePointer>
-               	movq	%rax, 120(%rsp)
-               	movq	$0, 304(%rsp)
-               	callq	0x439760 <(anonymous namespace)::theState()>
+               	leaq	288(%rsp), %rax
+               	movq	%rax, 288(%r15)
+               	movabsq	$17179869184, %rax      # imm = 0x400000000
+               	movq	%rax, 304(%rsp)
+               	leaq	312(%rsp), %rsi
+               	callq	0x4190e0 <WorkerLaunchpad>
+               	movslq	%r13d, %r12
+               	movq	312(%rsp), %rdi
+               	callq	0x427120 <CreateStablePointer>
+               	movq	%rax, 128(%rsp)
+               	movq	$0, 312(%rsp)
+               	callq	0x43a480 <(anonymous namespace)::theState()>
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
-               	je	0x421e80 <kfun:#main(){}+0x6a0>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x421e80 <kfun:#main(){}+0x6a0>
+               	testq	%rbx, %rbx
+               	je	0x4220d0 <kfun:#main(){}+0x6d0>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x4220d0 <kfun:#main(){}+0x6d0>
@@@@
-               	je	0x421e80 <kfun:#main(){}+0x6a0>
-               	movq	%rbp, %rdi
-               	callq	0x4261c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x4220d0 <kfun:#main(){}+0x6d0>
+               	movq	%rbx, %rdi
+               	callq	0x426860 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	%r15, %rax
+               	movq	%r12, %rax
@@@@
-               	je	0x421ec0 <kfun:#main(){}+0x6e0>
-               	movq	%r15, %rax
+               	je	0x422110 <kfun:#main(){}+0x710>
+               	movq	%r12, %rax
@@@@
-               	movl	%r15d, %eax
+               	movl	%r13d, %eax
@@@@
-               	cmpl	%r15d, 8(%rbp)
-               	jne	0x421f04 <kfun:#main(){}+0x724>
+               	cmpl	%r13d, 8(%rbp)
+               	jne	0x422154 <kfun:#main(){}+0x754>
@@@@
-               	jne	0x421fe0 <kfun:#main(){}+0x800>
-               	cmpl	%r15d, %esi
-               	je	0x421f36 <kfun:#main(){}+0x756>
+               	jne	0x422230 <kfun:#main(){}+0x830>
+               	cmpl	%r13d, %esi
+               	je	0x422185 <kfun:#main(){}+0x785>
@@@@
-               	je	0x421fe0 <kfun:#main(){}+0x800>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x421ef0 <kfun:#main(){}+0x710>
-               	movq	%rsi, %rax
+               	je	0x422230 <kfun:#main(){}+0x830>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x422140 <kfun:#main(){}+0x740>
@@@@
-               	je	0x421fe0 <kfun:#main(){}+0x800>
-               	movq	16(%rbp), %rax
-               	movq	%rax, 328(%rsp)
+               	je	0x422230 <kfun:#main(){}+0x830>
+               	movq	16(%rbp), %r15
@@@@
-               	je	0x421fe8 <kfun:#main(){}+0x808>
-               	movq	%rax, %r15
+               	je	0x422238 <kfun:#main(){}+0x838>
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
-               	callq	0x4261c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x421feb <kfun:#main(){}+0x80b>
-               	nop
-               	xorl	%r15d, %r15d
-               	jmp	0x4222e7 <kfun:#main(){}+0xb07>
-               	xorl	%r15d, %r15d
-               	movl	4(%r15), %r8d
-               	movslq	%r8d, %rax
+               	callq	0x426860 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	jmp	0x42223b <kfun:#main(){}+0x83b>
+               	xorl	%r12d, %r12d
+               	jmp	0x42255d <kfun:#main(){}+0xb5d>
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
-               	jne	0x422037 <kfun:#main(){}+0x857>
-               	jmp	0x422098 <kfun:#main(){}+0x8b8>
-               	movl	%r8d, %eax
+               	jne	0x42228b <kfun:#main(){}+0x88b>
+               	jmp	0x4222f7 <kfun:#main(){}+0x8f7>
+               	movl	%r13d, %eax
@@@@
-               	movl	%edx, %ebp
+               	movl	%edx, %ebx
@@@@
-               	movq	(%rax,%rbp,8), %rax
+               	movq	(%rax,%rbx,8), %rax
@@@@
-               	je	0x422098 <kfun:#main(){}+0x8b8>
-               	movq	(%rax), %rbx
-               	cmpl	8(%rbx), %r8d
-               	jne	0x422060 <kfun:#main(){}+0x880>
-               	testq	%rbx, %rbx
-               	jne	0x42208f <kfun:#main(){}+0x8af>
-               	jmp	0x422098 <kfun:#main(){}+0x8b8>
+               	je	0x4222f7 <kfun:#main(){}+0x8f7>
+               	movq	(%rax), %rbp
+               	cmpl	8(%rbp), %r13d
+               	jne	0x4222b0 <kfun:#main(){}+0x8b0>
+               	testq	%rbp, %rbp
+               	jne	0x4222df <kfun:#main(){}+0x8df>
+               	jmp	0x4222f7 <kfun:#main(){}+0x8f7>
@@@@
-               	cmpq	%rbp, %rdx
-               	jne	0x422098 <kfun:#main(){}+0x8b8>
-               	cmpl	%ecx, %r8d
-               	je	0x42208a <kfun:#main(){}+0x8aa>
-               	movq	%rbx, %rsi
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x422098 <kfun:#main(){}+0x8b8>
-               	movslq	8(%rbx), %rcx
-               	movq	%rcx, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x422050 <kfun:#main(){}+0x870>
-               	movq	%rcx, %rax
+               	cmpq	%rbx, %rdx
+               	jne	0x4222f7 <kfun:#main(){}+0x8f7>
+               	cmpl	%ecx, %r13d
+               	je	0x4222da <kfun:#main(){}+0x8da>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x4222f7 <kfun:#main(){}+0x8f7>
+               	movl	8(%rbp), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x4222a0 <kfun:#main(){}+0x8a0>
@@@@
-               	cmpq	%rbp, %rdx
-               	je	0x42205b <kfun:#main(){}+0x87b>
-               	jmp	0x422098 <kfun:#main(){}+0x8b8>
+               	cmpq	%rbx, %rdx
+               	je	0x4222ab <kfun:#main(){}+0x8ab>
+               	jmp	0x4222f7 <kfun:#main(){}+0x8f7>
@@@@
-               	je	0x422098 <kfun:#main(){}+0x8b8>
-               	addq	$8, %rbx
-               	jmp	0x42228e <kfun:#main(){}+0xaae>
-               	movl	%r8d, %ebx
-               	movq	%r15, 320(%rsp)
+               	je	0x4222f7 <kfun:#main(){}+0x8f7>
+               	addq	$8, %rbp
+               	movl	136(%rsp), %ecx
+               	movq	128(%rsp), %rdx
+               	jmp	0x422512 <kfun:#main(){}+0xb12>
+               	movq	%r15, 344(%rsp)
@@@@
-               	movl	%ebx, 132(%rsp)
-               	movq	%rax, 112(%rsp)
-               	movl	%ebx, 8(%rax)
+               	movq	%rax, 336(%rsp)
+               	movl	%r13d, 8(%rax)
@@@@
-               	jne	0x4220ec <kfun:#main(){}+0x90c>
+               	movq	%r12, 328(%rsp)
+               	jne	0x422345 <kfun:#main(){}+0x945>
@@@@
-               	movq	112(%rsp), %rdi
-               	movq	%rbp, %rsi
-               	jmp	0x422218 <kfun:#main(){}+0xa38>
+               	jmp	0x422475 <kfun:#main(){}+0xa75>

@@ -502,381 +508,392 @@
@@@[(3, 5), (6, 19), (26, 28), (29, 48), (50, 53), (57, 75), (77, 79), (80, 84), (102, 108), (110, 120), (126, 138), (139, 144), (145, 156), (157, 160), (161, 165), (166, 170), (171, 183), (187, 195), (201, 207), (230, 247), (250, 252), (254, 256), (258, 260), (273, 298), (299, 312), (313, 320), (321, 323), (326, 328), (330, 332), (337, 348), (349, 353), (357, 365), (367, 381), (387, 395), (396, 398), (400, 405), (408, 413), (418, 420), (421, 435), (439, 465), (468, 478), (479, 489), (490, 504), (510, 516), (517, 529), (530, 544), (550, 559), (585, 596), (598, 600), (603, 612), (613, 626)]@@@
-               	movq	104(%r14), %rbx
+               	movq	104(%r14), %rbp
@@@@
-               	testq	%rbx, %rbx
-               	je	0x4221ca <kfun:#main(){}+0x9ea>
-               	leaq	104(%r14), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x422166 <kfun:#main(){}+0x986>
-               	nopl	(%rax,%rax)
+               	testq	%rbp, %rbp
+               	je	0x422430 <kfun:#main(){}+0xa30>
+               	leaq	104(%r14), %rdi
+               	xorl	%ebx, %ebx
+               	jmp	0x4223c6 <kfun:#main(){}+0x9c6>
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
-               	je	0x4221ca <kfun:#main(){}+0x9ea>
-               	movq	%rbx, %rcx
-               	movq	(%rbx), %rbx
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rsi, (%rax)
+               	movq	%rbx, %rdx
+               	movq	%rdx, %rbx
+               	testq	%rbp, %rbp
+               	je	0x422430 <kfun:#main(){}+0xa30>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x422140 <kfun:#main(){}+0x960>
+               	je	0x4223a0 <kfun:#main(){}+0x9a0>
+               	movq	%rcx, %rax
@@@@
-               	jne	0x42214e <kfun:#main(){}+0x96e>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%r12,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x42215e <kfun:#main(){}+0x97e>
-               	movq	%rcx, (%r12,%rdi,8)
-               	jmp	0x42215e <kfun:#main(){}+0x97e>
+               	jne	0x4223ae <kfun:#main(){}+0x9ae>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r12,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x4223be <kfun:#main(){}+0x9be>
+               	movq	%rsi, (%r12,%rbx,8)
+               	jmp	0x4223be <kfun:#main(){}+0x9be>
@@@@
-               	movq	104(%r14), %rbx
+               	movq	104(%r14), %rbp
@@@@
-               	testq	%rbx, %rbx
-               	jne	0x422130 <kfun:#main(){}+0x950>
+               	testq	%rbp, %rbp
+               	jne	0x422389 <kfun:#main(){}+0x989>
@@@@
-               	movq	%rdx, %rsi
-               	jmp	0x422213 <kfun:#main(){}+0xa33>
-               	movl	132(%rsp), %eax
+               	movq	%rdx, %rbx
+               	jmp	0x422475 <kfun:#main(){}+0xa75>
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
-               	jmp	0x422281 <kfun:#main(){}+0xaa1>
-               	movq	%r14, %rcx
-               	addq	$104, %rcx
+               	movq	%rax, (%rsi)
+               	movq	(%r12,%rbx,8), %rax
+               	movq	%rsi, (%rax)
+               	jmp	0x4224ef <kfun:#main(){}+0xaef>
+               	movq	%r14, %rdi
+               	addq	$104, %rdi
@@@@
-               	movq	%rax, (%rdi)
-               	movq	%rdi, 104(%r14)
+               	movq	%rax, (%rsi)
+               	movq	%rsi, 104(%r14)
+               	movq	(%rsi), %rax
@@@@
-               	je	0x42227d <kfun:#main(){}+0xa9d>
-               	movq	96(%r14), %rbp
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%rbp, %rdx
+               	je	0x4224eb <kfun:#main(){}+0xaeb>
+               	movq	96(%r14), %r8
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%r8, %rdx
@@@@
-               	je	0x422271 <kfun:#main(){}+0xa91>
+               	je	0x4224de <kfun:#main(){}+0xade>
+               	movq	%rcx, %rax
@@@@
-               	divq	%rbp
-               	jmp	0x422275 <kfun:#main(){}+0xa95>
+               	divq	%r8
+               	jmp	0x4224e3 <kfun:#main(){}+0xae3>
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
-               	callq	0x439a60 <Worker::putJob((anonymous namespace)::Job, bool)>
-               	movq	40(%rsp), %rax
+               	movq	%r15, %rdi
+               	callq	0x43a780 <Worker::putJob((anonymous namespace)::Job, bool)>
+               	movq	48(%rsp), %rax
@@@@
-               	callq	0x4261c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
-               	testq	%r15, %r15
-               	movq	48(%rsp), %r14
-               	je	0x42286f <kfun:#main(){}+0x108f>
-               	movl	4(%r15), %ebx
-               	movq	288(%rsp), %rax
-               	movq	%rax, 288(%r14)
+               	callq	0x426860 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
+               	testq	%r12, %r12
+               	movq	40(%rsp), %r15
+               	movq	352(%rsp), %r14
+               	je	0x422af7 <kfun:#main(){}+0x10f7>
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
-               	jae	0x42273f <kfun:#main(){}+0xf5f>
-               	movq	16(%r12), %rax
-               	movq	%rcx, 32(%r12,%r13,8)
-               	addq	$1, %r13
-               	movq	336(%rsp), %rbx
-               	cmpq	%rbx, %r13
-               	jne	0x421d10 <kfun:#main(){}+0x530>
-               	movl	24(%r12), %eax
-               	xorl	%r15d, %r15d
+               	movq	%rax, 288(%r15)
+               	movq	56(%rsp), %rbx
+               	movl	24(%rbx), %eax
+               	movq	120(%rsp), %rbp
+               	cmpq	%rax, %rbp
+               	jae	0x4229c7 <kfun:#main(){}+0xfc7>
+               	movq	16(%rbx), %rax
+               	movq	%rcx, 32(%rbx,%rbp,8)
+               	addq	$1, %rbp
+               	cmpq	%r14, %rbp
+               	jne	0x421f50 <kfun:#main(){}+0x550>
+               	movl	24(%rbx), %eax
+               	xorl	%ebp, %ebp
@@@@
-               	cmovsl	%r15d, %eax
-               	movq	%rax, 120(%rsp)
-               	cmpq	120(%rsp), %r15
-               	je	0x42271e <kfun:#main(){}+0xf3e>
-               	nopl	(%rax,%rax)
-               	movb	280898(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	cmovsl	%ebp, %eax
+               	movq	%rax, 128(%rsp)
+               	cmpq	128(%rsp), %rbp
+               	je	0x4229a6 <kfun:#main(){}+0xfa6>
+               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)
+               	movb	282186(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x42243f <kfun:#main(){}+0xc5f>
-               	callq	0x426390 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	32(%r12,%r15,8), %rax
+               	je	0x4226bf <kfun:#main(){}+0xcbf>
+               	callq	0x426a50 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
-               	je	0x4224a2 <kfun:#main(){}+0xcc2>
-               	leaq	276062(%rip), %rdi      # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
-               	leaq	-39789(%rip), %rsi      # 0x418930 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
-               	callq	0x43bb60 <CallInitGlobalPossiblyLock>
-               	movq	275959(%rip), %rdi      # 0x465aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
+               	je	0x422727 <kfun:#main(){}+0xd27>
+               	leaq	277337(%rip), %rdi      # 0x466274 <state_global$kotlin.native.concurrent.FutureState>
+               	leaq	-40114(%rip), %rsi      # 0x418a70 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
+               	callq	0x43c930 <CallInitGlobalPossiblyLock>
+               	movslq	%r13d, %r15
+               	movq	277231(%rip), %rdi      # 0x466220 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
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
-               	je	0x422510 <kfun:#main(){}+0xd30>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x422510 <kfun:#main(){}+0xd30>
+               	testq	%rbp, %rbp
+               	je	0x4227a0 <kfun:#main(){}+0xda0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x4227a0 <kfun:#main(){}+0xda0>
@@@@
-               	je	0x422510 <kfun:#main(){}+0xd30>
-               	movq	%rbx, %rdi
-               	callq	0x4261c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	je	0x4227a0 <kfun:#main(){}+0xda0>
+               	movq	%rbp, %rdi
+               	callq	0x426860 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
@@@@
-               	movq	%r12, %rax
+               	movq	%r15, %rax
@@@@
-               	movq	%r15, 56(%rsp)
-               	je	0x422540 <kfun:#main(){}+0xd60>
-               	movq	%r12, %rax
+               	je	0x4227c0 <kfun:#main(){}+0xdc0>
+               	movq	%r15, %rax
@@@@
-               	jmp	0x422549 <kfun:#main(){}+0xd69>
-               	nopl	(%rax)
-               	movl	%r12d, %eax
+               	jmp	0x4227c9 <kfun:#main(){}+0xdc9>
+               	movl	%r13d, %eax
@@@@
-               	xorl	%r15d, %r15d
+               	xorl	%r12d, %r12d
@@@@
-               	je	0x422670 <kfun:#main(){}+0xe90>
-               	movq	(%rax), %rbx
-               	cmpl	%r12d, 8(%rbx)
-               	jne	0x422584 <kfun:#main(){}+0xda4>
-               	testq	%rbx, %rbx
-               	jne	0x4225be <kfun:#main(){}+0xdde>
-               	jmp	0x422670 <kfun:#main(){}+0xe90>
+               	je	0x4228f0 <kfun:#main(){}+0xef0>
+               	movq	(%rax), %rbp
+               	cmpl	%r13d, 8(%rbp)
+               	jne	0x422804 <kfun:#main(){}+0xe04>
+               	testq	%rbp, %rbp
+               	jne	0x42283e <kfun:#main(){}+0xe3e>
+               	jmp	0x4228f0 <kfun:#main(){}+0xef0>
@@@@
-               	jne	0x422670 <kfun:#main(){}+0xe90>
-               	cmpl	%r12d, %esi
-               	je	0x4225b5 <kfun:#main(){}+0xdd5>
-               	movq	%rbx, %rbp
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x422670 <kfun:#main(){}+0xe90>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x422570 <kfun:#main(){}+0xd90>
-               	movq	%rsi, %rax
+               	jne	0x4228f0 <kfun:#main(){}+0xef0>
+               	cmpl	%r13d, %esi
+               	je	0x422835 <kfun:#main(){}+0xe35>
+               	movq	%rbp, %rbx
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x4228f0 <kfun:#main(){}+0xef0>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x4227f0 <kfun:#main(){}+0xdf0>
@@@@
-               	je	0x42257f <kfun:#main(){}+0xd9f>
-               	jmp	0x422670 <kfun:#main(){}+0xe90>
-               	testq	%rbp, %rbp
-               	je	0x422670 <kfun:#main(){}+0xe90>
-               	movq	16(%rbx), %r15
+               	je	0x4227ff <kfun:#main(){}+0xdff>
+               	jmp	0x4228f0 <kfun:#main(){}+0xef0>
+               	testq	%rbx, %rbx
+               	je	0x4228f0 <kfun:#main(){}+0xef0>
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
-               	je	0x422620 <kfun:#main(){}+0xe40>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x422620 <kfun:#main(){}+0xe40>
+               	testq	%rbp, %rbp
+               	je	0x4228a0 <kfun:#main(){}+0xea0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x4228a0 <kfun:#main(){}+0xea0>
@@@@
-               	je	0x422620 <kfun:#main(){}+0xe40>
-               	movq	%rbx, %rdi
-               	callq	0x4261c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x4228a0 <kfun:#main(){}+0xea0>
+               	movq	%rbp, %rdi
+               	callq	0x426860 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
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
-               	je	0x422670 <kfun:#main(){}+0xe90>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x422670 <kfun:#main(){}+0xe90>
+               	testq	%rbp, %rbp
+               	je	0x4228f0 <kfun:#main(){}+0xef0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x4228f0 <kfun:#main(){}+0xef0>
@@@@
-               	je	0x422670 <kfun:#main(){}+0xe90>
-               	movq	%rbx, %rdi
-               	callq	0x4261c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
-               	movq	40(%rsp), %rax
+               	je	0x4228f0 <kfun:#main(){}+0xef0>
+               	movq	%rbp, %rdi
+               	callq	0x426860 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	48(%rsp), %rax
@@@@
-               	cmpl	%r15d, 8(%r13)
-               	movq	48(%rsp), %r14
-               	jbe	0x42273f <kfun:#main(){}+0xf5f>
-               	movslq	%r15d, %rax
-               	movq	16(%r13,%rax,8), %rax
+               	movq	136(%rsp), %rcx
+               	cmpl	%r12d, 8(%rcx)
+               	movq	40(%rsp), %r15
+               	jbe	0x4229c7 <kfun:#main(){}+0xfc7>
+               	movslq	%r12d, %rax
+               	movq	16(%rcx,%rax,8), %rax
@@@@
-               	movq	%rcx, 288(%r14)
+               	movq	%rcx, 288(%r15)
@@@@
-               	jae	0x422744 <kfun:#main(){}+0xf64>
-               	movq	56(%rsp), %r15
-               	addq	$1, %r15
-               	movl	%r12d, %edi
+               	movq	56(%rsp), %rbx
+               	jae	0x4229cc <kfun:#main(){}+0xfcc>
+               	movq	120(%rsp), %rbp
+               	addq	$1, %rbp
+               	movl	%r13d, %edi
@@@@
-               	callq	0x43cf70 <Kotlin_Worker_consumeFuture>
-               	movq	136(%rsp), %r12
-               	cmpq	120(%rsp), %r15
-               	jne	0x422430 <kfun:#main(){}+0xc50>
-               	movq	360(%rsp), %rax
-               	movq	%rax, 288(%r14)
-               	addq	$392, %rsp              # imm = 0x188
+               	callq	0x43ddc0 <Kotlin_Worker_consumeFuture>
+               	cmpq	128(%rsp), %rbp
+               	jne	0x4226b0 <kfun:#main(){}+0xcb0>
+               	movq	376(%rsp), %rax
+               	movq	%rax, 288(%r15)
+               	addq	$408, %rsp              # imm = 0x198

@@ -884,2408 +901,2411 @@
@@@[(15, 21), (62, 68), (85, 96), (106, 110), (168, 170)]@@@
-               	movl	%r12d, %edi
-               	callq	0x43cf70 <Kotlin_Worker_consumeFuture>
-               	movq	48(%rsp), %rax
+               	movl	%r13d, %edi
+               	callq	0x43ddc0 <Kotlin_Worker_consumeFuture>
+               	movq	40(%rsp), %rax
@@@@
-               	movl	%r12d, %edi
-               	callq	0x43cf70 <Kotlin_Worker_consumeFuture>
-               	movq	48(%rsp), %rax
+               	movl	%r13d, %edi
+               	callq	0x43ddc0 <Kotlin_Worker_consumeFuture>
+               	movq	40(%rsp), %rax
@@@@
-               	callq	0x43bd40 <ThrowException>
-               	callq	0x41b3e0 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
-               	callq	0x418df0 <ThrowWorkerAlreadyTerminated>
-               	movq	296(%r14), %rdi
+               	callq	0x43cb10 <ThrowException>
+               	callq	0x41b580 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
+               	callq	0x418f40 <ThrowWorkerAlreadyTerminated>
+               	movq	296(%rbx), %rdi
+               	jmp	0x422b47 <kfun:#main(){}+0x1147>
+               	movq	40(%rsp), %rax
+               	movq	296(%rax), %rdi
@@@@
-               	jmp	0x4228de <kfun:#main(){}+0x10fe>
-               	movq	296(%r14), %rdi
+               	jmp	0x422b74 <kfun:#main(){}+0x1174>
+               	movq	296(%r15), %rdi
@@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)
